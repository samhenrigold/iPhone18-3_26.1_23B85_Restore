@interface _MLCGPUConvolution
+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor;
+ (BOOL)setOptimizerDataForDevice:(id)device deviceOps:(id)ops weights:(id)weights bias:(id)bias;
+ (id)layerWithDevice:(id)device weights:(id)weights biasTerms:(id)terms descriptor:(id)descriptor neuronDescriptor:(id)neuronDescriptor;
+ (void)setGradientComputeWeightsAndBiasOnly:(id)only deviceOps:(id)ops;
- (_MLCGPUConvolution)initWithDevice:(id)device weights:(id)weights biasTerms:(id)terms descriptor:(id)descriptor neuronDescriptor:(id)neuronDescriptor;
@end

@implementation _MLCGPUConvolution

- (_MLCGPUConvolution)initWithDevice:(id)device weights:(id)weights biasTerms:(id)terms descriptor:(id)descriptor neuronDescriptor:(id)neuronDescriptor
{
  v168[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  weightsCopy = weights;
  termsCopy = terms;
  descriptorCopy = descriptor;
  neuronDescriptorCopy = neuronDescriptor;
  v157.receiver = self;
  v157.super_class = _MLCGPUConvolution;
  v16 = [(_MLCGPUConvolution *)&v157 init];
  v17 = v16;
  if (!v16)
  {
LABEL_89:
    v131 = v17;
    goto LABEL_90;
  }

  v135 = v16;
  v140 = [MEMORY[0x277CBEBF8] mutableCopy];
  v18 = 0x277CBE000;
  v139 = neuronDescriptorCopy;
  v148 = +[MLCPlatformInfo gpuUseMPSGraphConvolution];
  if (v148)
  {
    v136 = 0;
    v137 = 0;
    v141 = 1;
LABEL_25:
    deviceList = [deviceCopy deviceList];
    v38 = [deviceList count];

    if (v38)
    {
      v39 = 0;
      v149 = termsCopy;
      do
      {
        if (v148)
        {
          v40 = objc_opt_new();
          v146 = objc_opt_new();
          v41 = [MLCConvolutionGPUDeviceOps deviceOpsWithForwardMPSGraph:v40 gradientMPSGraph:?];
          [v41 setIsMPSGraph:1];
          paddingPolicy = [descriptorCopy paddingPolicy];
          v43 = paddingPolicy == 1;
          if (!paddingPolicy)
          {
            v43 = 2;
          }

          v142 = v43;
          v151 = v40;
          if ([descriptorCopy isConvolutionTranspose])
          {
            outputFeatureChannelCount = [descriptorCopy outputFeatureChannelCount];
          }

          else
          {
            outputFeatureChannelCount = [descriptorCopy inputFeatureChannelCount];
          }

          v49 = outputFeatureChannelCount;
          groupCount = [descriptorCopy groupCount];
          if ([descriptorCopy isConvolutionTranspose])
          {
            inputFeatureChannelCount = [descriptorCopy inputFeatureChannelCount];
          }

          else
          {
            inputFeatureChannelCount = [descriptorCopy outputFeatureChannelCount];
          }

          v60 = inputFeatureChannelCount;
          v150 = v39;
          if ([descriptorCopy usesDepthwiseConvolution])
          {
            v144 = [MEMORY[0x277CD7828] descriptorWithStrideInX:objc_msgSend(descriptorCopy strideInY:"strideInX") dilationRateInX:objc_msgSend(descriptorCopy dilationRateInY:"strideInY") paddingLeft:objc_msgSend(descriptorCopy paddingRight:"dilationRateInX") paddingTop:objc_msgSend(descriptorCopy paddingBottom:"dilationRateInY") paddingStyle:objc_msgSend(descriptorCopy dataLayout:"paddingSizeInX") weightsLayout:{objc_msgSend(descriptorCopy, "paddingSizeInX"), objc_msgSend(descriptorCopy, "paddingSizeInY"), objc_msgSend(descriptorCopy, "paddingSizeInY"), v142, 0, 3}];
            v61 = [MEMORY[0x277CD7828] descriptorWithStrideInX:objc_msgSend(descriptorCopy strideInY:"strideInX") dilationRateInX:objc_msgSend(descriptorCopy dilationRateInY:"strideInY") paddingLeft:objc_msgSend(descriptorCopy paddingRight:"dilationRateInX") paddingTop:objc_msgSend(descriptorCopy paddingBottom:"dilationRateInY") paddingStyle:objc_msgSend(descriptorCopy dataLayout:"paddingSizeInX") weightsLayout:{objc_msgSend(descriptorCopy, "paddingSizeInX"), objc_msgSend(descriptorCopy, "paddingSizeInY"), objc_msgSend(descriptorCopy, "paddingSizeInY"), v142, 1, 3}];
            v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(descriptorCopy, "kernelHeight")}];
            v167[0] = v62;
            v63 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(descriptorCopy, "kernelWidth")}];
            v167[1] = v63;
            v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(descriptorCopy, "inputFeatureChannelCount")}];
            v167[2] = v64;
            v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(descriptorCopy, "outputFeatureChannelCount") / objc_msgSend(descriptorCopy, "inputFeatureChannelCount")}];
            v167[3] = v65;
            v66 = [MEMORY[0x277CBEA60] arrayWithObjects:v167 count:4];
            descriptor = [weightsCopy descriptor];
            v68 = [v151 placeholderWithShape:v66 dataType:GPU_GetDataType(objc_msgSend(descriptor name:{"dataType")), 0}];

            [v41 setDepthWiseConvolution:1];
          }

          else
          {
            v138 = v49 / groupCount;
            v144 = [MEMORY[0x277CD7818] descriptorWithStrideInX:objc_msgSend(descriptorCopy strideInY:"strideInX") dilationRateInX:objc_msgSend(descriptorCopy dilationRateInY:"strideInY") groups:objc_msgSend(descriptorCopy paddingLeft:"dilationRateInX") paddingRight:objc_msgSend(descriptorCopy paddingTop:"dilationRateInY") paddingBottom:objc_msgSend(descriptorCopy paddingStyle:"groupCount") dataLayout:objc_msgSend(descriptorCopy weightsLayout:{"paddingSizeInX"), objc_msgSend(descriptorCopy, "paddingSizeInX"), objc_msgSend(descriptorCopy, "paddingSizeInY"), objc_msgSend(descriptorCopy, "paddingSizeInY"), v142, 0, 3}];
            v61 = [MEMORY[0x277CD7818] descriptorWithStrideInX:objc_msgSend(descriptorCopy strideInY:"strideInX") dilationRateInX:objc_msgSend(descriptorCopy dilationRateInY:"strideInY") groups:objc_msgSend(descriptorCopy paddingLeft:"dilationRateInX") paddingRight:objc_msgSend(descriptorCopy paddingTop:"dilationRateInY") paddingBottom:objc_msgSend(descriptorCopy paddingStyle:"groupCount") dataLayout:objc_msgSend(descriptorCopy weightsLayout:{"paddingSizeInX"), objc_msgSend(descriptorCopy, "paddingSizeInX"), objc_msgSend(descriptorCopy, "paddingSizeInY"), objc_msgSend(descriptorCopy, "paddingSizeInY"), v142, 1, 3}];
            [v41 setConvolutionTranspose:{objc_msgSend(descriptorCopy, "isConvolutionTranspose")}];
            v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(descriptorCopy, "kernelHeight")}];
            v166[0] = v69;
            v70 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(descriptorCopy, "kernelWidth")}];
            v166[1] = v70;
            v71 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v138];
            v166[2] = v71;
            v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v60];
            v166[3] = v72;
            v73 = [MEMORY[0x277CBEA60] arrayWithObjects:v166 count:4];
            descriptor2 = [weightsCopy descriptor];
            v68 = [v151 placeholderWithShape:v73 dataType:GPU_GetDataType(objc_msgSend(descriptor2 name:{"dataType")), 0}];
          }

          descriptorsForMPSGraph = [v41 descriptorsForMPSGraph];
          v46 = v144;
          [descriptorsForMPSGraph setObject:? atIndexedSubscript:?];

          descriptorsForMPSGraph2 = [v41 descriptorsForMPSGraph];
          v77 = v61;
          [descriptorsForMPSGraph2 setObject:v61 atIndexedSubscript:1];

          termsCopy = v149;
          if (v139)
          {
            descriptorsForMPSGraph3 = [v41 descriptorsForMPSGraph];
            [descriptorsForMPSGraph3 setObject:v139 atIndexedSubscript:2];
          }

          v165 = v68;
          v18 = 0x277CBE000uLL;
          v79 = [MEMORY[0x277CBEA60] arrayWithObjects:&v165 count:1];
          v80 = [v79 mutableCopy];
          [v41 setMpsGraphTensors:v80];

          if (v149)
          {
            [v41 setBiasChannelCount:{objc_msgSend(descriptorCopy, "outputFeatureChannelCount")}];
            v164[0] = &unk_284BA5738;
            v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v41, "biasChannelCount")}];
            v164[1] = v81;
            v164[2] = &unk_284BA5738;
            v164[3] = &unk_284BA5738;
            v82 = [MEMORY[0x277CBEA60] arrayWithObjects:v164 count:4];
            descriptor3 = [v149 descriptor];
            v84 = [v151 placeholderWithShape:v82 dataType:GPU_GetDataType(objc_msgSend(descriptor3 name:{"dataType")), 0}];

            mpsGraphTensors = [v41 mpsGraphTensors];
            [mpsGraphTensors addObject:v84];

            [v41 setHasBias:1];
            v18 = 0x277CBE000;
          }

          else
          {
            [v41 setHasBias:0];
          }

          v39 = v150;
          v59 = v146;

          v47 = v151;
        }

        else
        {
          deviceList2 = [deviceCopy deviceList];
          v46 = [deviceList2 objectAtIndexedSubscript:v39];

          if (v141)
          {
            if ([descriptorCopy isConvolutionTranspose])
            {
              v47 = [objc_alloc(MEMORY[0x277CD7640]) initWithDevice:v46 weights:v137];
              v48 = MEMORY[0x277CD7648];
            }

            else
            {
              v47 = [objc_alloc(MEMORY[0x277CD7618]) initWithDevice:v46 weights:v137];
              v48 = MEMORY[0x277CD7628];
            }

            v59 = [[v48 alloc] initWithDevice:v46 weights:v137];
          }

          else
          {
            childLayers = [weightsCopy childLayers];
            v53 = [childLayers objectAtIndexedSubscript:v136];
            deviceOps = [v53 deviceOps];
            v55 = [deviceOps objectAtIndexedSubscript:v39];

            [descriptorCopy isConvolutionTranspose];
            forwardKernel = [v55 forwardKernel];
            gradientKernel = [v55 gradientKernel];
            v47 = [forwardKernel copy];
            v58 = [gradientKernel copy];

            v59 = v58;
            termsCopy = v149;
          }

          v41 = 0;
          if (v47 && v59)
          {
            v41 = [MLCGPUDeviceOps deviceOpsWithForwardKernel:v47 gradientKernel:v59];
          }
        }

        if (!v41)
        {
          goto LABEL_87;
        }

        deviceList3 = [deviceCopy deviceList];
        v87 = [deviceList3 count];

        if (v87 >= 2)
        {
          if (termsCopy)
          {
            v162[0] = weightsCopy;
            v162[1] = termsCopy;
            v88 = *(v18 + 2656);
            v89 = v162;
            v90 = 2;
          }

          else
          {
            v163 = weightsCopy;
            v88 = *(v18 + 2656);
            v89 = &v163;
            v90 = 1;
          }

          v91 = [v88 arrayWithObjects:v89 count:v90];
          isMPSGraph = [v41 isMPSGraph];
          v93 = [MLCMultiGPUDeviceOps multiGPUDeviceOpsWithGPUDeviceOps:v41];
          if (isMPSGraph)
          {
            [v41 setConvolutionMultiGPUChildOps:v93];
            GPU_AllocateResourceForMultiGPUTraining(deviceCopy, v93, v91, v39);
          }

          else
          {

            GPU_AllocateResourceForMultiGPUTraining(deviceCopy, v93, v91, v39);
            v41 = v93;
          }
        }

        [v41 setLayer:objc_opt_class()];
        [v41 setSourceOfForwardNeededForGradient:1];
        [v41 setResultOfForwardNeededForGradient:0];
        if (![v41 isMPSGraph])
        {
          if ([descriptorCopy isConvolutionTranspose])
          {
            [v41 setLayer:objc_opt_class()];
          }

          goto LABEL_86;
        }

        if (v39)
        {
          if (!termsCopy)
          {
            goto LABEL_85;
          }
        }

        else
        {
          if ([deviceCopy needToAllocateDeviceMemoryForTensor:weightsCopy])
          {
            [deviceCopy allocateDeviceMemoryForTensor:weightsCopy];
          }

          deviceMemory = [weightsCopy deviceMemory];
          v95 = [deviceMemory objectAtIndexedSubscript:0];

          isConvolutionTranspose = [descriptorCopy isConvolutionTranspose];
          data = [weightsCopy data];
          bytes = [data bytes];
          contents = [v95 contents];
          kernelWidth = [descriptorCopy kernelWidth];
          kernelHeight = [descriptorCopy kernelHeight];
          inputFeatureChannelCount2 = [descriptorCopy inputFeatureChannelCount];
          if (isConvolutionTranspose)
          {
            outputFeatureChannelCount2 = [descriptorCopy outputFeatureChannelCount];
            v147 = outputFeatureChannelCount2 / [descriptorCopy groupCount];
            descriptor4 = [weightsCopy descriptor];
            LODWORD(v134) = [descriptor4 dataType];
            v104 = [MLCDataHelper convertSourceOIHW:bytes toResultHWOI:contents width:kernelWidth height:kernelHeight inputFeatureChannelCount:inputFeatureChannelCount2 outputFeatureChannelCount:v147 dataType:v134];
          }

          else
          {
            v143 = kernelHeight;
            v145 = kernelWidth;
            groupCount2 = [descriptorCopy groupCount];
            usesDepthwiseConvolution = [descriptorCopy usesDepthwiseConvolution];
            outputFeatureChannelCount3 = [descriptorCopy outputFeatureChannelCount];
            if (usesDepthwiseConvolution)
            {
              outputFeatureChannelCount3 /= [descriptorCopy inputFeatureChannelCount];
            }

            descriptor5 = [weightsCopy descriptor];
            LODWORD(v134) = [descriptor5 dataType];
            v104 = [MLCDataHelper convertSourceOIHW:bytes toResultHWIO:contents width:v145 height:v143 inputFeatureChannelCount:inputFeatureChannelCount2 / groupCount2 outputFeatureChannelCount:outputFeatureChannelCount3 dataType:v134];
          }

          termsCopy = v149;
          v39 = 0;
          v18 = 0x277CBE000uLL;
          if (!v104)
          {
            v109 = +[MLCLog framework];
            if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
            {
              [_MLCGPUConvolution initWithDevice:buf weights:&v161 biasTerms:v109 descriptor:? neuronDescriptor:?];
            }
          }

          +[MLCGPUHelper didModifyRange:buffer:](MLCGPUHelper, "didModifyRange:buffer:", 0, [v95 length], v95);

          if (!v149)
          {
LABEL_85:
            deviceMemory2 = [weightsCopy deviceMemory];
            v118 = [deviceMemory2 objectAtIndexedSubscript:v39];
            v158 = v118;
            v119 = [*(v18 + 2656) arrayWithObjects:&v158 count:1];
            v120 = termsCopy;
            v121 = v39;
            v122 = [v119 copy];
            [v41 setExportableState:v122];

            v39 = v121;
            termsCopy = v120;

            goto LABEL_86;
          }

          if ([deviceCopy needToAllocateDeviceMemoryForTensor:v149])
          {
            [deviceCopy allocateDeviceMemoryForTensor:v149];
          }

          [deviceCopy broadcastTensor:v149];
        }

        deviceMemory3 = [weightsCopy deviceMemory];
        v111 = [deviceMemory3 objectAtIndexedSubscript:v39];
        v159[0] = v111;
        deviceMemory4 = [termsCopy deviceMemory];
        [deviceMemory4 objectAtIndexedSubscript:v39];
        v114 = v113 = v39;
        v159[1] = v114;
        v115 = [*(v18 + 2656) arrayWithObjects:v159 count:2];
        v116 = [v115 copy];
        [v41 setExportableState:v116];

        v18 = 0x277CBE000;
        v39 = v113;
        termsCopy = v149;

LABEL_86:
        [v140 addObject:v41];

LABEL_87:
        ++v39;
        deviceList4 = [deviceCopy deviceList];
        v124 = [deviceList4 count];
      }

      while (v39 < v124);
    }

    v125 = [v140 copy];
    v156.receiver = v135;
    v156.super_class = _MLCGPUConvolution;
    [(_MLCGPULayer *)&v156 setDeviceOps:v125];

    v155.receiver = v135;
    v155.super_class = _MLCGPUConvolution;
    deviceOps2 = [(_MLCGPULayer *)&v155 deviceOps];
    paddingPolicy2 = [descriptorCopy paddingPolicy];
    paddingSizeInX = [descriptorCopy paddingSizeInX];
    paddingSizeInY = [descriptorCopy paddingSizeInY];
    v130 = paddingPolicy2;
    v17 = v135;
    GPU_SetPaddingPolicyForLayer(deviceCopy, deviceOps2, v130, paddingSizeInX, paddingSizeInY);

    neuronDescriptorCopy = v139;
    goto LABEL_89;
  }

  childLayers2 = [weightsCopy childLayers];
  v20 = [childLayers2 count];

  if (v20)
  {
    v21 = 0;
    while (1)
    {
      childLayers3 = [weightsCopy childLayers];
      v23 = [childLayers3 objectAtIndexedSubscript:v21];
      deviceOps3 = [v23 deviceOps];
      v25 = v21;
      v26 = [deviceOps3 count];

      v141 = v26 == 0;
      if (v26)
      {
        break;
      }

      childLayers4 = [weightsCopy childLayers];
      v28 = [childLayers4 count];

      v21 = v25 + 1;
      if (v25 + 1 >= v28)
      {
        v136 = 0;
        goto LABEL_11;
      }
    }

    v136 = v25;
LABEL_11:
    neuronDescriptorCopy = v139;
    v18 = 0x277CBE000uLL;
  }

  else
  {
    v136 = 0;
    v141 = 1;
  }

  v168[0] = weightsCopy;
  v29 = [*(v18 + 2656) arrayWithObjects:v168 count:1];
  v30 = [v29 mutableCopy];

  if (termsCopy)
  {
    [v30 addObject:termsCopy];
  }

  v31 = GPU_GetDataSourceFromTensors(v30);
  v32 = v31;
  if (v31)
  {
    neuronDesc = [v31 neuronDesc];
    v34 = neuronDesc != 0;

    v35 = (v139 != 0) ^ v34;
    neuronDescriptorCopy = v139;
    if ((v35 & 1) == 0)
    {
      v137 = v32;
LABEL_24:

      goto LABEL_25;
    }
  }

  else if (!v141)
  {
    v137 = 0;
    goto LABEL_24;
  }

  if (neuronDescriptorCopy)
  {
    [_MLCGPUWeightsConvolution weightWithDescriptor:descriptorCopy biasTerms:termsCopy weights:weightsCopy neuronDescriptor:neuronDescriptorCopy];
  }

  else
  {
    [_MLCGPUWeightsConvolution weightWithDescriptor:descriptorCopy biasTerms:termsCopy weights:weightsCopy];
  }
  v36 = ;

  if (v36)
  {
    v137 = v36;
    GPU_AssociateDataSourceToTensors(v36, v30);
    goto LABEL_24;
  }

  v133 = +[MLCLog framework];
  if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
  {
    [_MLCGPUConvolution initWithDevice:a2 weights:v133 biasTerms:? descriptor:? neuronDescriptor:?];
  }

  v131 = 0;
  v17 = v135;
LABEL_90:

  return v131;
}

+ (BOOL)setOptimizerDataForDevice:(id)device deviceOps:(id)ops weights:(id)weights bias:(id)bias
{
  v72[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  opsCopy = ops;
  weightsCopy = weights;
  biasCopy = bias;
  v63 = deviceCopy;
  deviceList = [deviceCopy deviceList];
  v13 = [deviceList count];

  if (v13)
  {
    v14 = 0;
    while (1)
    {
      v15 = [opsCopy objectAtIndexedSubscript:v14];
      optimizerDeviceData = [weightsCopy optimizerDeviceData];
      v17 = [optimizerDeviceData objectAtIndexedSubscript:v14];
      momentumVectors = [v17 momentumVectors];

      optimizerDeviceData2 = [weightsCopy optimizerDeviceData];
      v20 = [optimizerDeviceData2 objectAtIndexedSubscript:v14];
      velocityVectors = [v20 velocityVectors];

      optimizerDeviceData3 = [weightsCopy optimizerDeviceData];
      v23 = [optimizerDeviceData3 objectAtIndexedSubscript:v14];
      centerWeightVectors = [v23 centerWeightVectors];

      if (biasCopy)
      {
        break;
      }

      optimizerData = [weightsCopy optimizerData];
      v52 = [optimizerData count];

      if (!v52)
      {
        goto LABEL_14;
      }

      v53 = [momentumVectors objectAtIndexedSubscript:0];
      v72[0] = v53;
      v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:1];
      [v15 setMomentumVectors:v54];

      optimizerData2 = [weightsCopy optimizerData];
      v56 = [optimizerData2 count];

      if (v56 < 2)
      {
        goto LABEL_14;
      }

      v57 = [velocityVectors objectAtIndexedSubscript:0];
      v71 = v57;
      v58 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
      [v15 setVelocityVectors:v58];

      optimizerData3 = [weightsCopy optimizerData];
      v60 = [optimizerData3 count];

      if (v60 < 3)
      {
        goto LABEL_14;
      }

      momentumVectors2 = [centerWeightVectors objectAtIndexedSubscript:0];
      v70 = momentumVectors2;
      velocityVectors2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
      [v15 setCenterWeightVectors:velocityVectors2];
LABEL_13:

LABEL_14:
      ++v14;
      deviceList2 = [v63 deviceList];
      v50 = [deviceList2 count];

      if (v14 >= v50)
      {
        goto LABEL_20;
      }
    }

    v64 = centerWeightVectors;
    v65 = velocityVectors;
    v66 = momentumVectors;
    optimizerDeviceData4 = [biasCopy optimizerDeviceData];
    v26 = [optimizerDeviceData4 objectAtIndexedSubscript:v14];
    momentumVectors2 = [v26 momentumVectors];

    optimizerDeviceData5 = [biasCopy optimizerDeviceData];
    v29 = [optimizerDeviceData5 objectAtIndexedSubscript:v14];
    velocityVectors2 = [v29 velocityVectors];

    optimizerDeviceData6 = [biasCopy optimizerDeviceData];
    v32 = [optimizerDeviceData6 objectAtIndexedSubscript:v14];
    centerWeightVectors2 = [v32 centerWeightVectors];

    optimizerData4 = [weightsCopy optimizerData];
    if (![optimizerData4 count])
    {
      goto LABEL_11;
    }

    optimizerData5 = [biasCopy optimizerData];
    v36 = [optimizerData5 count];

    if (v36)
    {
      v37 = [v66 objectAtIndexedSubscript:0];
      v69[0] = v37;
      v38 = [momentumVectors2 objectAtIndexedSubscript:0];
      v69[1] = v38;
      v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:2];
      [v15 setMomentumVectors:v39];

      optimizerData4 = [weightsCopy optimizerData];
      if ([optimizerData4 count] < 2)
      {
        goto LABEL_11;
      }

      optimizerData6 = [biasCopy optimizerData];
      v41 = [optimizerData6 count];

      if (v41 < 2)
      {
        goto LABEL_12;
      }

      v42 = [v65 objectAtIndexedSubscript:0];
      v68[0] = v42;
      v43 = [velocityVectors2 objectAtIndexedSubscript:0];
      v68[1] = v43;
      v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
      [v15 setVelocityVectors:v44];

      optimizerData4 = [weightsCopy optimizerData];
      if ([optimizerData4 count] < 3)
      {
LABEL_11:

        goto LABEL_12;
      }

      optimizerData7 = [biasCopy optimizerData];
      v46 = [optimizerData7 count];

      if (v46 >= 3)
      {
        optimizerData4 = [v64 objectAtIndexedSubscript:0];
        v67[0] = optimizerData4;
        v47 = [centerWeightVectors2 objectAtIndexedSubscript:0];
        v67[1] = v47;
        v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];
        [v15 setCenterWeightVectors:v48];

        goto LABEL_11;
      }
    }

LABEL_12:

    velocityVectors = v65;
    momentumVectors = v66;
    centerWeightVectors = v64;
    goto LABEL_13;
  }

LABEL_20:

  return 1;
}

+ (void)setGradientComputeWeightsAndBiasOnly:(id)only deviceOps:(id)ops
{
  onlyCopy = only;
  opsCopy = ops;
  deviceList = [onlyCopy deviceList];
  v7 = [deviceList count];

  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = [opsCopy objectAtIndexedSubscript:v8];
      [v9 setComputeWeightsAndBiasOnly:1];
      if (([v9 isMPSGraph] & 1) == 0)
      {
        gradientKernel = [v9 gradientKernel];
        [gradientKernel setGradientOption:2];
      }

      ++v8;
      deviceList2 = [onlyCopy deviceList];
      v12 = [deviceList2 count];
    }

    while (v8 < v12);
  }
}

+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v287[4] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  opsCopy = ops;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v254 = deviceCopy;
  deviceList = [deviceCopy deviceList];
  v14 = [deviceList count];

  if (v14)
  {
    v15 = 0;
    v228 = opsCopy;
    v267 = tensorCopy;
    v268 = tensorsCopy;
    while (1)
    {
      v16 = [opsCopy objectAtIndexedSubscript:v15];
      if ([v16 isMPSGraph])
      {
        v241 = v16;
        v17 = [opsCopy objectAtIndexedSubscript:v15];
        forwardMPSGraph = [v17 forwardMPSGraph];
        v269 = v17;
        gradientMPSGraph = [v17 gradientMPSGraph];
        v18 = [tensorsCopy objectAtIndexedSubscript:0];
        descriptor = [v18 descriptor];
        DataType = GPU_GetDataType([descriptor dataType]);

        v20 = [tensorsCopy objectAtIndexedSubscript:0];
        descriptor2 = [v20 descriptor];
        shape = [descriptor2 shape];
        v23 = [shape count];

        v252 = v15;
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            v262 = [tensorsCopy objectAtIndexedSubscript:0];
            descriptor3 = [v262 descriptor];
            shape2 = [descriptor3 shape];
            v67 = [shape2 objectAtIndexedSubscript:0];
            v283[0] = v67;
            v283[1] = &unk_284BA5738;
            v68 = [tensorsCopy objectAtIndexedSubscript:0];
            descriptor4 = [v68 descriptor];
            shape3 = [descriptor4 shape];
            v71 = [shape3 objectAtIndexedSubscript:2];
            v283[2] = v71;
            v72 = [v268 objectAtIndexedSubscript:0];
            descriptor5 = [v72 descriptor];
            shape4 = [descriptor5 shape];
            v75 = [shape4 objectAtIndexedSubscript:1];
            v283[3] = v75;
            shape17 = [MEMORY[0x277CBEA60] arrayWithObjects:v283 count:4];

            v32 = [v268 objectAtIndexedSubscript:0];
            descriptor6 = [v32 descriptor];
            shape5 = [descriptor6 shape];
            v263 = [shape5 objectAtIndexedSubscript:0];
            v282[0] = v263;
            v258 = [v268 objectAtIndexedSubscript:0];
            descriptor7 = [v258 descriptor];
            shape6 = [descriptor7 shape];
            v79 = [shape6 objectAtIndexedSubscript:1];
            v282[1] = v79;
            v282[2] = &unk_284BA5738;
            v80 = [v268 objectAtIndexedSubscript:0];
            descriptor8 = [v80 descriptor];
            shape7 = [descriptor8 shape];
            v83 = [shape7 objectAtIndexedSubscript:2];
            v282[3] = v83;
            shape12 = [MEMORY[0x277CBEA60] arrayWithObjects:v282 count:4];

            tensorsCopy = v268;
            v15 = v252;
          }

          else
          {
            if (v23 != 4)
            {
              goto LABEL_15;
            }

            v239 = [tensorsCopy objectAtIndexedSubscript:0];
            descriptor9 = [v239 descriptor];
            shape8 = [descriptor9 shape];
            v250 = [shape8 objectAtIndexedSubscript:0];
            v281[0] = v250;
            v246 = [tensorsCopy objectAtIndexedSubscript:0];
            descriptor10 = [v246 descriptor];
            shape9 = [descriptor10 shape];
            v49 = [shape9 objectAtIndexedSubscript:2];
            v281[1] = v49;
            v50 = [v268 objectAtIndexedSubscript:0];
            descriptor11 = [v50 descriptor];
            shape10 = [descriptor11 shape];
            v53 = [shape10 objectAtIndexedSubscript:3];
            v281[2] = v53;
            v54 = [v268 objectAtIndexedSubscript:0];
            descriptor12 = [v54 descriptor];
            shape11 = [descriptor12 shape];
            [shape11 objectAtIndexedSubscript:1];
            v58 = v57 = v15;
            v281[3] = v58;
            shape17 = [MEMORY[0x277CBEA60] arrayWithObjects:v281 count:4];

            v15 = v57;
            tensorsCopy = v268;

LABEL_16:
            v32 = [tensorsCopy objectAtIndexedSubscript:0];
            descriptor6 = [v32 descriptor];
            shape12 = [descriptor6 shape];
          }

LABEL_19:
          tensorCopy = v267;
        }

        else
        {
          if (v23 != 1)
          {
            if (v23 == 2)
            {
              v24 = [tensorsCopy objectAtIndexedSubscript:0];
              descriptor13 = [v24 descriptor];
              shape13 = [descriptor13 shape];
              v27 = [shape13 objectAtIndexedSubscript:0];
              v285[0] = v27;
              v285[1] = &unk_284BA5738;
              v285[2] = &unk_284BA5738;
              v28 = [tensorsCopy objectAtIndexedSubscript:0];
              descriptor14 = [v28 descriptor];
              shape14 = [descriptor14 shape];
              v31 = [shape14 objectAtIndexedSubscript:1];
              v285[3] = v31;
              shape17 = [MEMORY[0x277CBEA60] arrayWithObjects:v285 count:4];

              v32 = [v268 objectAtIndexedSubscript:0];
              descriptor6 = [v32 descriptor];
              shape15 = [descriptor6 shape];
              v35 = [shape15 objectAtIndexedSubscript:0];
              v284[0] = v35;
              v284[1] = &unk_284BA5738;
              v284[2] = &unk_284BA5738;
              v36 = [v268 objectAtIndexedSubscript:0];
              descriptor15 = [v36 descriptor];
              shape16 = [descriptor15 shape];
              v39 = [shape16 objectAtIndexedSubscript:1];
              v284[3] = v39;
              shape12 = [MEMORY[0x277CBEA60] arrayWithObjects:v284 count:4];

              tensorsCopy = v268;
              v15 = v252;

              goto LABEL_19;
            }

LABEL_15:
            v59 = [tensorsCopy objectAtIndexedSubscript:0];
            descriptor16 = [v59 descriptor];
            shape17 = [descriptor16 shape];

            goto LABEL_16;
          }

          v287[0] = &unk_284BA5738;
          v287[1] = &unk_284BA5738;
          v287[2] = &unk_284BA5738;
          v61 = [tensorsCopy objectAtIndexedSubscript:0];
          descriptor17 = [v61 descriptor];
          shape18 = [descriptor17 shape];
          v64 = [shape18 objectAtIndexedSubscript:0];
          v287[3] = v64;
          shape17 = [MEMORY[0x277CBEA60] arrayWithObjects:v287 count:4];

          v286[0] = &unk_284BA5738;
          v286[1] = &unk_284BA5738;
          v286[2] = &unk_284BA5738;
          v32 = [tensorsCopy objectAtIndexedSubscript:0];
          descriptor6 = [v32 descriptor];
          shape19 = [descriptor6 shape];
          v66 = [shape19 objectAtIndexedSubscript:0];
          v286[3] = v66;
          shape12 = [MEMORY[0x277CBEA60] arrayWithObjects:v286 count:4];
        }

        descriptor18 = [tensorCopy descriptor];
        shape20 = [descriptor18 shape];
        v86 = [shape20 count];

        if (v86 > 2)
        {
          if (v86 == 3)
          {
            descriptor19 = [tensorCopy descriptor];
            shape21 = [descriptor19 shape];
            v115 = [shape21 objectAtIndexedSubscript:0];
            v276[0] = v115;
            v276[1] = &unk_284BA5738;
            descriptor20 = [tensorCopy descriptor];
            shape22 = [descriptor20 shape];
            v118 = [shape22 objectAtIndexedSubscript:2];
            v276[2] = v118;
            descriptor21 = [tensorCopy descriptor];
            shape23 = [descriptor21 shape];
            v121 = [shape23 objectAtIndexedSubscript:1];
            v276[3] = v121;
            shape35 = [MEMORY[0x277CBEA60] arrayWithObjects:v276 count:4];

            descriptor22 = [v267 descriptor];
            shape24 = [descriptor22 shape];
            v95 = [shape24 objectAtIndexedSubscript:0];
            v275[0] = v95;
            descriptor23 = [v267 descriptor];
            shape25 = [descriptor23 shape];
            v123 = [shape25 objectAtIndexedSubscript:1];
            v275[1] = v123;
            v275[2] = &unk_284BA5738;
            descriptor24 = [v267 descriptor];
            shape26 = [descriptor24 shape];
            v126 = [shape26 objectAtIndexedSubscript:2];
            v275[3] = v126;
            shape31 = [MEMORY[0x277CBEA60] arrayWithObjects:v275 count:4];

            tensorsCopy = v268;
            v15 = v252;

LABEL_31:
            goto LABEL_32;
          }

          if (v86 != 4)
          {
            goto LABEL_27;
          }

          descriptor25 = [tensorCopy descriptor];
          shape27 = [descriptor25 shape];
          v247 = [shape27 objectAtIndexedSubscript:0];
          v274[0] = v247;
          descriptor26 = [tensorCopy descriptor];
          shape28 = [descriptor26 shape];
          v102 = [shape28 objectAtIndexedSubscript:2];
          v274[1] = v102;
          descriptor27 = [v267 descriptor];
          shape29 = [descriptor27 shape];
          v105 = [shape29 objectAtIndexedSubscript:3];
          v274[2] = v105;
          descriptor28 = [v267 descriptor];
          shape30 = [descriptor28 shape];
          v108 = [shape30 objectAtIndexedSubscript:1];
          v274[3] = v108;
          shape35 = [MEMORY[0x277CBEA60] arrayWithObjects:v274 count:4];

          tensorsCopy = v268;
          v15 = v252;

          tensorCopy = v267;
LABEL_28:
          descriptor22 = [tensorCopy descriptor];
          shape31 = [descriptor22 shape];
        }

        else
        {
          if (v86 != 1)
          {
            if (v86 == 2)
            {
              descriptor29 = [tensorCopy descriptor];
              shape32 = [descriptor29 shape];
              v89 = [shape32 objectAtIndexedSubscript:0];
              v278[0] = v89;
              v278[1] = &unk_284BA5738;
              v278[2] = &unk_284BA5738;
              descriptor30 = [tensorCopy descriptor];
              shape33 = [descriptor30 shape];
              v92 = [shape33 objectAtIndexedSubscript:1];
              v278[3] = v92;
              shape35 = [MEMORY[0x277CBEA60] arrayWithObjects:v278 count:4];

              descriptor22 = [tensorCopy descriptor];
              shape24 = [descriptor22 shape];
              v95 = [shape24 objectAtIndexedSubscript:0];
              v277[0] = v95;
              v277[1] = &unk_284BA5738;
              v277[2] = &unk_284BA5738;
              descriptor23 = [tensorCopy descriptor];
              shape34 = [descriptor23 shape];
              v98 = [shape34 objectAtIndexedSubscript:1];
              v277[3] = v98;
              shape31 = [MEMORY[0x277CBEA60] arrayWithObjects:v277 count:4];

              goto LABEL_31;
            }

LABEL_27:
            descriptor31 = [tensorCopy descriptor];
            shape35 = [descriptor31 shape];

            goto LABEL_28;
          }

          v280[0] = &unk_284BA5738;
          v280[1] = &unk_284BA5738;
          v280[2] = &unk_284BA5738;
          descriptor32 = [tensorCopy descriptor];
          shape36 = [descriptor32 shape];
          v112 = [shape36 objectAtIndexedSubscript:0];
          v280[3] = v112;
          shape35 = [MEMORY[0x277CBEA60] arrayWithObjects:v280 count:4];

          v279[0] = &unk_284BA5738;
          v279[1] = &unk_284BA5738;
          v279[2] = &unk_284BA5738;
          descriptor22 = [tensorCopy descriptor];
          shape24 = [descriptor22 shape];
          v95 = [shape24 objectAtIndexedSubscript:0];
          v279[3] = v95;
          shape31 = [MEMORY[0x277CBEA60] arrayWithObjects:v279 count:4];
LABEL_32:
        }

        deviceList2 = [v254 deviceList];
        v128 = [deviceList2 objectAtIndexedSubscript:v15];

        v129 = [tensorsCopy objectAtIndexedSubscript:0];
        descriptor33 = [v129 descriptor];
        shape37 = [descriptor33 shape];
        v132 = [shape37 count];

        gpuLibrary = [v254 gpuLibrary];
        v134 = [gpuLibrary objectAtIndexedSubscript:v15];
        v135 = v134;
        if (v132 == 3)
        {
          v136 = [v134 newFunctionWithName:@"transpose_three_dims"];

          v137 = [&unk_284BA5F60 copy];
          v138 = [shape17 objectAtIndexedSubscript:0];
          v273[0] = v138;
          v139 = [shape17 objectAtIndexedSubscript:2];
          v273[1] = v139;
          v140 = [shape17 objectAtIndexedSubscript:3];
          v273[2] = v140;
          v141 = [MEMORY[0x277CBEA60] arrayWithObjects:v273 count:3];

          v248 = [&unk_284BA5F78 copy];
          v142 = [shape35 objectAtIndexedSubscript:0];
          v272[0] = v142;
          v143 = [shape35 objectAtIndexedSubscript:2];
          v272[1] = v143;
          v144 = [shape35 objectAtIndexedSubscript:3];
          v272[2] = v144;
          v245 = [MEMORY[0x277CBEA60] arrayWithObjects:v272 count:3];
        }

        else
        {
          v136 = [v134 newFunctionWithName:@"transpose_four_dims"];

          v137 = [&unk_284BA5F90 copy];
          v141 = shape17;
          v248 = [&unk_284BA5FA8 copy];
          v245 = shape35;
        }

        v235 = v136;
        v236 = v128;
        v232 = [v128 newComputePipelineStateWithFunction:v136 error:0];
        v145 = [MLCGPUDeviceOps deviceOpsWithForwardKernel:?];
        v234 = v137;
        v146 = [v137 mutableCopy];
        [v145 setTransposeShape:v146];

        v147 = [v268 objectAtIndexedSubscript:0];
        descriptor34 = [v147 descriptor];
        v149 = +[MLCTensor tensorWithShape:dataType:](MLCTensor, "tensorWithShape:dataType:", v141, [descriptor34 dataType]);

        v150 = [v268 objectAtIndexedSubscript:0];
        descriptor35 = [v150 descriptor];
        v233 = v141;
        v152 = +[MLCTensor tensorWithShape:dataType:](MLCTensor, "tensorWithShape:dataType:", v141, [descriptor35 dataType]);

        v153 = [v248 mutableCopy];
        [v145 setTransposeGradientShape:v153];

        descriptor36 = [v267 descriptor];
        v155 = +[MLCTensor tensorWithShape:dataType:](MLCTensor, "tensorWithShape:dataType:", v245, [descriptor36 dataType]);

        v271[0] = v149;
        v271[1] = v155;
        v229 = v155;
        v230 = v152;
        v271[2] = v152;
        v156 = [MEMORY[0x277CBEA60] arrayWithObjects:v271 count:3];
        v157 = [v156 copy];
        v158 = v269;
        [v269 setTransposedTensors:v157];

        v231 = v145;
        [v269 setTransposeDeviceOps:v145];
        v159 = [forwardMPSGraph placeholderWithShape:shape12 dataType:DataType name:0];
        mpsGraphTensors = [v269 mpsGraphTensors];
        v161 = [mpsGraphTensors objectAtIndexedSubscript:0];

        descriptorsForMPSGraph = [v269 descriptorsForMPSGraph];
        v163 = [descriptorsForMPSGraph objectAtIndexedSubscript:0];

        descriptorsForMPSGraph2 = [v269 descriptorsForMPSGraph];
        v260 = [descriptorsForMPSGraph2 objectAtIndexedSubscript:1];

        v240 = v163;
        if ([v269 depthWiseConvolution])
        {
          v243 = [forwardMPSGraph depthwiseConvolution2DWithSourceTensor:v159 weightsTensor:v161 descriptor:v163 name:0];
          v165 = gradientMPSGraph;
        }

        else
        {
          v165 = gradientMPSGraph;
          if ([v269 convolutionTranspose])
          {
            [forwardMPSGraph convolutionTranspose2DWithSourceTensor:v159 weightsTensor:v161 outputShape:shape31 descriptor:v240 name:0];
          }

          else
          {
            [forwardMPSGraph convolution2DWithSourceTensor:v159 weightsTensor:v161 descriptor:v240 name:0];
          }
          v243 = ;
        }

        mpsGraphTensors2 = [v269 mpsGraphTensors];
        [mpsGraphTensors2 addObject:v159];

        hasBias = [v269 hasBias];
        mpsGraphTensors3 = [v269 mpsGraphTensors];
        v169 = mpsGraphTensors3;
        if (hasBias)
        {
          v170 = [mpsGraphTensors3 objectAtIndexedSubscript:1];

          v171 = [forwardMPSGraph additionWithPrimaryTensor:v243 secondaryTensor:v170 name:0];
          mpsGraphTensors4 = [v269 mpsGraphTensors];
          [mpsGraphTensors4 addObject:v171];

          v158 = v269;
          v169 = v170;
        }

        else
        {
          [mpsGraphTensors3 addObject:v243];
        }

        descriptorsForMPSGraph3 = [v158 descriptorsForMPSGraph];
        v174 = [descriptorsForMPSGraph3 count];

        if (v174 >= 3)
        {
          v227 = v161;
          v175 = v159;
          descriptorsForMPSGraph4 = [v158 descriptorsForMPSGraph];
          v177 = [descriptorsForMPSGraph4 objectAtIndexedSubscript:2];

          mpsGraphTensors5 = [v158 mpsGraphTensors];
          v179 = v158;
          v180 = mpsGraphTensors5;
          mpsGraphTensors6 = [v179 mpsGraphTensors];
          v182 = [v180 objectAtIndexedSubscript:{objc_msgSend(mpsGraphTensors6, "count") - 1}];

          v183 = v149;
          if ([v177 activationType] == 1)
          {
            v184 = [forwardMPSGraph reLUWithTensor:v182 name:0];
          }

          else if ([v177 activationType] == 3)
          {
            v184 = [forwardMPSGraph sigmoidWithTensor:v182 name:0];
          }

          else
          {
            v184 = v182;
          }

          v185 = v184;
          v158 = v269;
          mpsGraphTensors7 = [v269 mpsGraphTensors];
          mpsGraphTensors8 = [v269 mpsGraphTensors];
          [mpsGraphTensors7 setObject:v185 atIndexedSubscript:{objc_msgSend(mpsGraphTensors8, "count") - 1}];

          v165 = gradientMPSGraph;
          v149 = v183;
          v159 = v175;
          v161 = v227;
        }

        v188 = [v165 placeholderWithShape:shape35 dataType:DataType name:0];
        shape38 = [v161 shape];
        v190 = [v165 placeholderWithShape:shape38 dataType:DataType name:0];

        if ([v158 depthWiseConvolution])
        {
          v191 = shape17;
          v192 = [v165 depthwiseConvolution2DDataGradientWithIncomingGradientTensor:v188 weightsTensor:v190 outputShape:shape17 descriptor:v260 name:0];
        }

        else
        {
          v191 = shape17;
          if ([v158 convolutionTranspose])
          {
            [v165 convolutionTranspose2DDataGradientWithIncomingGradientTensor:v188 weightsTensor:v190 outputShape:shape17 forwardConvolutionDescriptor:v260 name:0];
          }

          else
          {
            [v165 convolution2DDataGradientWithIncomingGradientTensor:v188 weightsTensor:v190 outputShape:shape17 forwardConvolutionDescriptor:v260 name:0];
          }
          v192 = ;
        }

        v193 = v192;
        v194 = [v165 placeholderWithShape:v191 dataType:DataType name:0];
        if ([v158 depthWiseConvolution])
        {
          shape39 = [v161 shape];
          v196 = [v165 depthwiseConvolution2DWeightsGradientWithIncomingGradientTensor:v188 sourceTensor:v194 outputShape:shape39 descriptor:v260 name:0];
        }

        else
        {
          convolutionTranspose = [v158 convolutionTranspose];
          shape39 = [v161 shape];
          if (convolutionTranspose)
          {
            [v165 convolutionTranspose2DWeightsGradientWithIncomingGradientTensor:v188 sourceTensor:v194 outputShape:shape39 forwardConvolutionDescriptor:v260 name:0];
          }

          else
          {
            [v165 convolution2DWeightsGradientWithIncomingGradientTensor:v188 sourceTensor:v194 outputShape:shape39 forwardConvolutionDescriptor:v260 name:0];
          }
          v196 = ;
        }

        v198 = v196;

        mpsGraphTensors9 = [v269 mpsGraphTensors];
        [mpsGraphTensors9 addObject:v188];

        mpsGraphTensors10 = [v269 mpsGraphTensors];
        [mpsGraphTensors10 addObject:v190];

        mpsGraphTensors11 = [v269 mpsGraphTensors];
        [mpsGraphTensors11 addObject:v193];

        mpsGraphTensors12 = [v269 mpsGraphTensors];
        [mpsGraphTensors12 addObject:v194];

        mpsGraphTensors13 = [v269 mpsGraphTensors];
        [mpsGraphTensors13 addObject:v198];

        if ([v269 hasBias])
        {
          v204 = [gradientMPSGraph reductionSumWithTensor:v188 axes:&unk_284BA5FC0 name:0];
          mpsGraphTensors14 = [v269 mpsGraphTensors];
          [mpsGraphTensors14 addObject:v204];
        }

        opsCopy = v228;
        tensorCopy = v267;
        tensorsCopy = v268;
        v15 = v252;
        forwardKernel = v269;
        goto LABEL_67;
      }

      forwardKernel = [v16 forwardKernel];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_68;
      }

      padding = [forwardKernel padding];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        goto LABEL_68;
      }

      v270 = forwardKernel;
      v241 = v16;
      v43 = [tensorsCopy objectAtIndexedSubscript:0];
      descriptor37 = [v43 descriptor];
      shape40 = [descriptor37 shape];
      v46 = [shape40 count];

      if (v46 == 4)
      {
        break;
      }

      v208 = [tensorsCopy objectAtIndexedSubscript:0];
      descriptor38 = [v208 descriptor];
      shape41 = [descriptor38 shape];
      v211 = [shape41 count];

      if (v211 == 3)
      {
        v253 = v15;
        v48 = 0;
        v47 = 2;
        goto LABEL_72;
      }

LABEL_75:
      [_MLCGPUConvolutionTransposePadding convolutionTransposeZeroPaddingWithTopAmount:"convolutionTransposeZeroPaddingWithTopAmount:bottomAmount:leftAmount:rightAmount:outputPaddingX:outputPaddingY:" bottomAmount:? leftAmount:? rightAmount:? outputPaddingX:? outputPaddingY:?];
      forwardMPSGraph = forwardKernel = v270;
      [v270 setPadding:?];
LABEL_67:

      v16 = v241;
LABEL_68:

      ++v15;
      deviceList3 = [v254 deviceList];
      v207 = [deviceList3 count];

      if (v15 >= v207)
      {
        goto LABEL_76;
      }
    }

    v253 = v15;
    v47 = 3;
    v48 = 2;
LABEL_72:
    v212 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor39 = [v212 descriptor];
    shape42 = [descriptor39 shape];
    v215 = [shape42 objectAtIndexedSubscript:v47];
    [v215 floatValue];
    [v270 strideInPixelsX];
    [v270 dilationRateX];
    [v270 kernelWidth];

    tensorCopy = v267;
    descriptor40 = [v267 descriptor];
    shape43 = [descriptor40 shape];
    v218 = [shape43 objectAtIndexedSubscript:v47];
    [v218 floatValue];

    if (v46 == 4)
    {
      v219 = [tensorsCopy objectAtIndexedSubscript:0];
      descriptor41 = [v219 descriptor];
      shape44 = [descriptor41 shape];
      v222 = [shape44 objectAtIndexedSubscript:v48];
      [v222 floatValue];
      [v270 strideInPixelsY];
      [v270 dilationRateY];
      [v270 kernelHeight];

      descriptor42 = [v267 descriptor];
      shape45 = [descriptor42 shape];
      v225 = [shape45 objectAtIndexedSubscript:v48];
      [v225 floatValue];
    }

    v15 = v253;
    goto LABEL_75;
  }

LABEL_76:

  return 1;
}

+ (id)layerWithDevice:(id)device weights:(id)weights biasTerms:(id)terms descriptor:(id)descriptor neuronDescriptor:(id)neuronDescriptor
{
  neuronDescriptorCopy = neuronDescriptor;
  descriptorCopy = descriptor;
  termsCopy = terms;
  weightsCopy = weights;
  deviceCopy = device;
  v17 = [[self alloc] initWithDevice:deviceCopy weights:weightsCopy biasTerms:termsCopy descriptor:descriptorCopy neuronDescriptor:neuronDescriptorCopy];

  return v17;
}

- (void)initWithDevice:(const char *)a1 weights:(NSObject *)a2 biasTerms:descriptor:neuronDescriptor:.cold.1(const char *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_238C1D000, a2, OS_LOG_TYPE_ERROR, "%@: mpsWeightsConvolution creation failed", &v4, 0xCu);
}

- (void)initWithDevice:(os_log_t)log weights:biasTerms:descriptor:neuronDescriptor:.cold.2(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[_MLCGPUConvolution initWithDevice:weights:biasTerms:descriptor:neuronDescriptor:]";
  _os_log_error_impl(&dword_238C1D000, log, OS_LOG_TYPE_ERROR, "%s: failed to convert weight layout for a convolution layer", buf, 0xCu);
}

@end