#!/bin/sh

SERVERROOT=/usr/local/lsws
OPENLSWS_USER=nobody
OPENLSWS_GROUP=nobody
OPENLSWS_ADMIN=admin
OPENLSWS_PASSWORD=
OPENLSWS_EMAIL=root@localhost
OPENLSWS_ADMINSSL=yes
OPENLSWS_ADMINPORT=7080
USE_LSPHP7=yes
DEFAULT_TMP_DIR=/tmp/lshttpd
PID_FILE=/tmp/lshttpd/lshttpd.pid
OPENLSWS_EXAMPLEPORT=8088
CONFFILE=./ols.conf
    
#script start here
cd .

if [ -f ${CONFFILE} ] ; then
    . ${CONFFILE}
fi

cd dist

mkdir -p ${SERVERROOT} >/dev/null 2>&1


PASSWDFILEEXIST=no
if [ -f ${SERVERROOT}/admin/conf/htpasswd ] ; then
    PASSWDFILEEXIST=yes
else
    PASSWDFILEEXIST=no
    #Generate the random PASSWORD if not set in ols.conf
    if [ "x$OPENLSWS_PASSWORD" = "x" ] ; then
        OPENLSWS_PASSWORD=`openssl rand -base64 6`
        if [ "x$OPENLSWS_PASSWORD" = "x" ] ; then
            TEMPRANDSTR=`ls -l ..`
            TEMPRANDSTR=`echo "${TEMPRANDSTR}" |  md5sum | base64 | head -c 8`
            if [ $? = 0 ] ; then
                OPENLSWS_PASSWORD=${TEMPRANDSTR}
            else
                OPENLSWS_PASSWORD=123456
            fi
        fi
        echo OPENLSWS_PASSWORD=${OPENLSWS_PASSWORD} >> ./ols.conf
    fi

    echo "WebAdmin user/password is admin/${OPENLSWS_PASSWORD}" > $SERVERROOT/adminpasswd
    chmod 600 $SERVERROOT/adminpasswd
fi


#Change to nogroup for debain/ubuntu
if [ -f /etc/debian_version ] ; then
    if [ "${OPENLSWS_GROUP}" = "nobody" ] ; then
        OPENLSWS_GROUP=nogroup
    fi
fi 


ISRUNNING=no

if [ -f ${SERVERROOT}/bin/openlitespeed ] ; then 
    echo Openlitespeed web server exists, will upgrade.
    
    ${SERVERROOT}/bin/lswsctrl status | grep ERROR
    if [ $? != 0 ]; then
        ISRUNNING=yes
    fi
fi

./_in.sh "${SERVERROOT}" "${OPENLSWS_USER}" "${OPENLSWS_GROUP}" "${OPENLSWS_ADMIN}" "${OPENLSWS_PASSWORD}" "${OPENLSWS_EMAIL}" "${OPENLSWS_ADMINSSL}" "${OPENLSWS_ADMINPORT}" "${USE_LSPHP7}" "${DEFAULT_TMP_DIR}" "${PID_FILE}" "${OPENLSWS_EXAMPLEPORT}" no

cp -f modules/*.so ${SERVERROOT}/modules/
cp -f bin/openlitespeed ${SERVERROOT}/bin/

if [ "${PASSWDFILEEXIST}" = "no" ] ; then
    echo -e "\e[31mYour webAdmin password is ${OPENLSWS_PASSWORD}, written to file $SERVERROOT/adminpasswd.\e[39m"
else
    echo -e "\e[31mYour webAdmin password not changed.\e[39m"
fi
echo

    
if [ -f ../needreboot.txt ] ; then
    rm ../needreboot.txt
    echo -e "\e[31mYou must reboot the server to ensure the settings change take effect!\e[39m"
    echo
    exit 0
fi 

if [ "${ISRUNNING}" = "yes" ] ; then
    ${SERVERROOT}/bin/lswsctrl start
fi

