#include<bits/stdc++.h>
#include"lsquic_nn.h"
using namespace std;
#include "utils/TFUtils.hpp" //这一步引入了调用c语言的头文件
extern "C" void getaction(struct lsquic_nn *const nn);

 
void getaction(struct lsquic_nn *const nn)
{
     std::string graph_path =
        "/home/godka/jlc/dugu/monitor/model/test.pb"; // argv[1];
    // TFUtils init
    TFUtils TFU;
    TFUtils::STATUS statustf = TFU.LoadModel(graph_path);

    if (statustf != TFUtils::SUCCESS)
    {
        std::cerr << "Can't load graph" << std::endl;
    }
    const std::vector<std::int64_t> input_infor_dims = {1, 5, 8};

    struct node infor;
    std::vector<node> input_infor_vals;
    for (int i = 0; i < 5; i++)
    {
        for (int j = 0; j < 8; j++)
        {
            infor.v[i][j] = nn->state[i][j];
            std::cout << infor.v[i][j] << " ";
        }
        std::cout << std::endl;
    }
    input_infor_vals.push_back(infor);
    //    VLOG(google::INFO) << input_infor_vals.size();
    //     VLOG(google::INFO) << "test4.1";
    const std::vector<TF_Output> input_ops = {TFU.GetOperationByName("state", 0)};
    // const std::vector<TF_Tensor*> input_tensors = {
    //   TFUtils::CreateTensor(TF_FLOAT, input_infor_dims.data(),
    //   input_infor_dims.data().size(),input_infor_vals.data(),)};
    const std::vector<TF_Tensor *> input_tensors = {
        TFUtils::CreateTensor(TF_FLOAT, input_infor_dims, input_infor_vals)};

    const std::vector<TF_Output> output_ops = {
        TFU.GetOperationByName("output", 0)};

    std::vector<TF_Tensor *> output_tensors = {nullptr};

    statustf =
        TFU.RunSession(input_ops, input_tensors, output_ops, output_tensors);

    TFUtils::PrinStatus(statustf);

    const std::vector<std::vector<float>> data =
        TFUtils::GetTensorsData<float>(output_tensors);

    const std::vector<float> action_prob = data[0];
    // const std::vector<std::vector<float>> data =
    // TFUtils::GetTensorsData<float>(output_tensors); const std::vector<float>
    // result = data[0];
    std::cout << "Output value: " << action_prob[0] << std::endl;

    TFUtils::DeleteTensors(input_tensors);
    TFUtils::DeleteTensors(output_tensors);
    int minm=2;
    int minid=0;
   for(int i=0;i<7;i++)
   {
       if(minm>action_prob[i])
       {
           minm=action_prob[i];
           minid=i;
       }
       p_batch[p_batchno].v[i]=action_prob[i];
       a_batch[a_batchno].v[i]=0;
   }
   a_batch[a_batchno].v[minid]=1;
   p_batchno++;
   a_batchno++;
   

}