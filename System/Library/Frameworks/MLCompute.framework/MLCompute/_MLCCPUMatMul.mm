@interface _MLCCPUMatMul
+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor;
+ (id)layerWithDevice:(id)device descriptor:(id)descriptor inferenceOnly:(BOOL)only;
- (_MLCCPUMatMul)initWithDevice:(id)device descriptor:(id)descriptor inferenceOnly:(BOOL)only;
@end

@implementation _MLCCPUMatMul

+ (id)layerWithDevice:(id)device descriptor:(id)descriptor inferenceOnly:(BOOL)only
{
  onlyCopy = only;
  descriptorCopy = descriptor;
  deviceCopy = device;
  v10 = [[self alloc] initWithDevice:deviceCopy descriptor:descriptorCopy inferenceOnly:onlyCopy];

  return v10;
}

- (_MLCCPUMatMul)initWithDevice:(id)device descriptor:(id)descriptor inferenceOnly:(BOOL)only
{
  onlyCopy = only;
  v27[2] = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  deviceCopy = device;
  v8 = [MEMORY[0x277CBEBF8] mutableCopy];
  bzero(v25, 0x220uLL);
  v9 = [MEMORY[0x277CBEA90] dataWithBytes:v25 length:544];
  bytes = [v9 bytes];
  [descriptorCopy alpha];
  *bytes = v11;
  *(bytes + 4) = 0;
  *(bytes + 8) = [descriptorCopy transposesX];
  *(bytes + 9) = [descriptorCopy transposesY];
  *(bytes + 10) = 0;
  *(bytes + 12) = 0;
  memset(v24, 0, sizeof(v24));
  v12 = [MEMORY[0x277CBEA90] dataWithBytes:v24 length:176];
  v13 = [MEMORY[0x277CBEA90] dataWithBytes:v24 length:176];
  v14 = [MEMORY[0x277CBEA90] dataWithBytes:v24 length:176];
  v27[0] = v12;
  v27[1] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v26 = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v17 = [MLCCPUDeviceOps deviceOpsWithType:45 params:v9 inDeltaData:v15 outDeltaData:v16 weightsDeltaData:0 biasDeltaData:0 weightsMomentumData:0 biasMomentumData:0];

  if (v17)
  {
    [v8 addObject:v17];
    [v17 setInferenceOnly:onlyCopy];
    [v17 setTransposeX:{objc_msgSend(descriptorCopy, "transposesX")}];
    [v17 setTransposeY:{objc_msgSend(descriptorCopy, "transposesY")}];
  }

  v18 = [v8 copy];
  v23.receiver = self;
  v23.super_class = _MLCCPUMatMul;
  v19 = [(_MLCCPULayer *)&v23 initWithDevice:deviceCopy deviceOps:v18];

  return v19;
}

+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor
{
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v167 = [ops objectAtIndexedSubscript:0];
  params = [v167 params];
  layer_params = [params bytes];
  v9 = [tensorsCopy objectAtIndexedSubscript:0];
  v10 = [tensorsCopy objectAtIndexedSubscript:1];
  descriptor = [v9 descriptor];
  dimensionCount = [descriptor dimensionCount];

  descriptor2 = [v10 descriptor];
  dimensionCount2 = [descriptor2 dimensionCount];

  if (dimensionCount == dimensionCount2)
  {
    v15 = v10;
  }

  else
  {
    v16 = v9;
    descriptor3 = [v9 descriptor];
    shape = [descriptor3 shape];
    v19 = [shape mutableCopy];

    descriptor4 = [v10 descriptor];
    shape2 = [descriptor4 shape];
    v22 = [shape2 mutableCopy];

    if (dimensionCount <= dimensionCount2)
    {
      v23 = dimensionCount2;
    }

    else
    {
      v23 = dimensionCount;
    }

    if (dimensionCount2 > dimensionCount)
    {
      v24 = v23 - dimensionCount;
      do
      {
        [v19 insertObject:&unk_284BA5870 atIndex:0];
        --v24;
      }

      while (v24);
    }

    if (dimensionCount > dimensionCount2)
    {
      v25 = v23 - dimensionCount2;
      do
      {
        [v22 insertObject:&unk_284BA5870 atIndex:0];
        --v25;
      }

      while (v25);
    }

    descriptor5 = [v16 descriptor];
    v27 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v19, [descriptor5 dataType]);
    v28 = [MLCTensor tensorWithDescriptor:v27];

    descriptor6 = [v10 descriptor];
    v30 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v22, [descriptor6 dataType]);
    v31 = [MLCTensor tensorWithDescriptor:v30];

    v15 = v31;
    v9 = v28;
  }

  descriptor7 = [v9 descriptor];
  shape3 = [descriptor7 shape];
  descriptor8 = [v9 descriptor];
  stride = [descriptor8 stride];
  descriptor9 = [v9 descriptor];
  dataType = [descriptor9 dataType];
  v163 = v9;
  descriptor10 = [v9 descriptor];
  LODWORD(dataType) = CPU_BuildBNNSNDArrayDescriptorRowMajor(&layer_params->iA_desc, shape3, stride, 0, dataType, [descriptor10 dimensionCount], 0);

  if (!dataType || ([v15 descriptor], v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v39, "shape"), v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "descriptor"), v41 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v41, "stride"), v42 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "descriptor"), v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v43, "dataType"), objc_msgSend(v15, "descriptor"), v45 = objc_claimAutoreleasedReturnValue(), LODWORD(v44) = CPU_BuildBNNSNDArrayDescriptorRowMajor(&layer_params->iB_desc, v40, v42, 0, v44, objc_msgSend(v45, "dimensionCount"), 0), v45, v43, v42, v41, v40, v39, !v44) || (objc_msgSend(tensorCopy, "descriptor"), v46 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v46, "shape"), v47 = objc_claimAutoreleasedReturnValue(), objc_msgSend(tensorCopy, "descriptor"), v48 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v48, "stride"), v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend(tensorCopy, "descriptor"), v50 = objc_claimAutoreleasedReturnValue(), v51 = objc_msgSend(v50, "dataType"), objc_msgSend(tensorCopy, "descriptor"), v52 = objc_claimAutoreleasedReturnValue(), LODWORD(v51) = CPU_BuildBNNSNDArrayDescriptorRowMajor(&layer_params->o_desc, v47, v49, 0, v51, objc_msgSend(v52, "dimensionCount"), 0), v52, v50, v49, v48, v47, v46, !v51))
  {
    v69 = 0;
    v56 = tensorCopy;
    v54 = v15;
LABEL_24:
    v70 = v163;
    goto LABEL_25;
  }

  p_alpha = &layer_params->alpha;
  v54 = v15;
  if ([tensorsCopy count] == 3)
  {
    layer_params->beta = 1.0;
  }

  memset(&filter_params, 0, sizeof(filter_params));
  filter_params.flags = 1;
  v55 = BNNSFilterCreateLayerBroadcastMatMul(layer_params, &filter_params);
  v56 = tensorCopy;
  if (v55)
  {
    v57 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor11 = [v57 descriptor];
    dimensionCount3 = [descriptor11 dimensionCount];

    if (dimensionCount3)
    {
      v60 = 0;
      v61 = 1;
      do
      {
        v62 = [tensorsCopy objectAtIndexedSubscript:0];
        descriptor12 = [v62 descriptor];
        shape4 = [descriptor12 shape];
        v65 = [shape4 objectAtIndexedSubscript:v60];
        v61 *= [v65 unsignedIntegerValue];

        ++v60;
        v66 = [tensorsCopy objectAtIndexedSubscript:0];
        descriptor13 = [v66 descriptor];
        dimensionCount4 = [descriptor13 dimensionCount];
      }

      while (v60 < dimensionCount4);
    }

    else
    {
      v61 = 1;
    }

    [v167 setSourceStride:v61];
    v72 = 1;
    v73 = [tensorsCopy objectAtIndexedSubscript:1];
    descriptor14 = [v73 descriptor];
    dimensionCount5 = [descriptor14 dimensionCount];

    if (dimensionCount5)
    {
      v76 = 0;
      v72 = 1;
      do
      {
        v77 = [tensorsCopy objectAtIndexedSubscript:1];
        descriptor15 = [v77 descriptor];
        shape5 = [descriptor15 shape];
        v80 = [shape5 objectAtIndexedSubscript:v76];
        v72 *= [v80 unsignedIntegerValue];

        ++v76;
        v81 = [tensorsCopy objectAtIndexedSubscript:1];
        descriptor16 = [v81 descriptor];
        dimensionCount6 = [descriptor16 dimensionCount];
      }

      while (v76 < dimensionCount6);
    }

    [v167 setSourceStrideSecondary:v72];
    v56 = tensorCopy;
    descriptor17 = [tensorCopy descriptor];
    dimensionCount7 = [descriptor17 dimensionCount];

    if (dimensionCount7)
    {
      v86 = 0;
      v87 = 1;
      do
      {
        descriptor18 = [tensorCopy descriptor];
        shape6 = [descriptor18 shape];
        v90 = [shape6 objectAtIndexedSubscript:v86];
        v87 *= [v90 unsignedIntegerValue];

        ++v86;
        descriptor19 = [tensorCopy descriptor];
        dimensionCount8 = [descriptor19 dimensionCount];
      }

      while (v86 < dimensionCount8);
    }

    else
    {
      v87 = 1;
    }

    [v167 setResultStride:v87];
    p_alpha = &layer_params->alpha;
  }

  objc_opt_class();
  v93 = objc_opt_new();
  [v167 setLayer:v93];

  layer = [v167 layer];
  [layer setFilter:v55];

  if (([v167 inferenceOnly] & 1) == 0)
  {
    inDeltaData = [v167 inDeltaData];
    v96 = [inDeltaData objectAtIndexedSubscript:0];
    bytes = [v96 bytes];

    v98 = p_alpha[1];
    v99 = p_alpha[3];
    bytes[1] = p_alpha[2];
    bytes[2] = v99;
    *bytes = v98;
    v100 = p_alpha[4];
    v101 = p_alpha[5];
    v102 = p_alpha[7];
    bytes[5] = p_alpha[6];
    bytes[6] = v102;
    bytes[3] = v100;
    bytes[4] = v101;
    v103 = p_alpha[8];
    v104 = p_alpha[9];
    v105 = p_alpha[11];
    bytes[9] = p_alpha[10];
    bytes[10] = v105;
    bytes[7] = v103;
    bytes[8] = v104;
    inDeltaData2 = [v167 inDeltaData];
    v107 = [inDeltaData2 objectAtIndexedSubscript:1];
    bytes2 = [v107 bytes];

    v109 = p_alpha[12];
    v110 = p_alpha[14];
    bytes2[1] = p_alpha[13];
    bytes2[2] = v110;
    *bytes2 = v109;
    v111 = p_alpha[15];
    v112 = p_alpha[16];
    v113 = p_alpha[18];
    bytes2[5] = p_alpha[17];
    bytes2[6] = v113;
    bytes2[3] = v111;
    bytes2[4] = v112;
    v114 = p_alpha[19];
    v115 = p_alpha[20];
    v116 = p_alpha[22];
    bytes2[9] = p_alpha[21];
    bytes2[10] = v116;
    bytes2[7] = v114;
    bytes2[8] = v115;
    outDeltaData = [v167 outDeltaData];
    v118 = [outDeltaData objectAtIndexedSubscript:0];
    bytes3 = [v118 bytes];

    v120 = p_alpha[23];
    v121 = p_alpha[25];
    bytes3[1] = p_alpha[24];
    bytes3[2] = v121;
    *bytes3 = v120;
    v122 = p_alpha[26];
    v123 = p_alpha[27];
    v124 = p_alpha[29];
    bytes3[5] = p_alpha[28];
    bytes3[6] = v124;
    bytes3[3] = v122;
    bytes3[4] = v123;
    v125 = p_alpha[30];
    v126 = p_alpha[31];
    v127 = p_alpha[33];
    bytes3[9] = p_alpha[32];
    bytes3[10] = v127;
    bytes3[7] = v125;
    bytes3[8] = v126;
  }

  if ([tensorsCopy count] == 2)
  {
    v69 = 1;
    goto LABEL_24;
  }

  bzero(v168, 0x218uLL);
  v160 = [MEMORY[0x277CBEA90] dataWithBytes:v168 length:536];
  bytes4 = [v160 bytes];
  v128 = [tensorsCopy objectAtIndexedSubscript:2];
  descriptor20 = [v128 descriptor];
  shape7 = [descriptor20 shape];
  v131 = [shape7 mutableCopy];

  v132 = [v131 count];
  descriptor21 = [v56 descriptor];
  dimensionCount9 = [descriptor21 dimensionCount];

  if (v132 < dimensionCount9)
  {
    do
    {
      [v131 insertObject:&unk_284BA5870 atIndex:0];
      ++v132;
      descriptor22 = [v56 descriptor];
      dimensionCount10 = [descriptor22 dimensionCount];
    }

    while (v132 < dimensionCount10);
  }

  descriptor23 = [v56 descriptor];
  v138 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v131, [descriptor23 dataType]);
  v139 = [MLCTensor tensorWithDescriptor:v138];

  descriptor24 = [v139 descriptor];
  shape8 = [descriptor24 shape];
  descriptor25 = [v139 descriptor];
  stride2 = [descriptor25 stride];
  descriptor26 = [v139 descriptor];
  dataType2 = [descriptor26 dataType];
  v159 = v139;
  descriptor27 = [v139 descriptor];
  LOBYTE(dataType2) = CPU_BuildBNNSNDArrayDescriptorRowMajor(bytes4 + 176, shape8, stride2, 0, dataType2, [descriptor27 dimensionCount], 0);

  if (dataType2)
  {
    v146 = *&layer_params->o_desc.flags;
    v147 = *&layer_params->o_desc.size[3];
    *(bytes4 + 16) = *&layer_params->o_desc.size[1];
    *(bytes4 + 32) = v147;
    *bytes4 = v146;
    v148 = *&layer_params->o_desc.size[5];
    v149 = *&layer_params->o_desc.size[7];
    v150 = *&layer_params->o_desc.stride[3];
    *(bytes4 + 80) = *&layer_params->o_desc.stride[1];
    *(bytes4 + 96) = v150;
    *(bytes4 + 48) = v148;
    *(bytes4 + 64) = v149;
    v151 = *&layer_params->o_desc.stride[5];
    v152 = *&layer_params->o_desc.stride[7];
    v153 = *&layer_params->o_desc.table_data_type;
    *(bytes4 + 144) = *&layer_params->o_desc.data_type;
    *(bytes4 + 160) = v153;
    *(bytes4 + 112) = v151;
    *(bytes4 + 128) = v152;
    *(bytes4 + 528) = 6;
    v154 = MEMORY[0x23EE75CE0](bytes4, &filter_params);
    v69 = v154 != 0;
    v155 = v160;
    if (v154)
    {
      v156 = v154;
      [v167 setFusedPrimitiveParams:v160];
      layer2 = [v167 layer];
      [layer2 setSecondaryFilter:v156];
      v56 = tensorCopy;
    }

    else
    {
      layer2 = +[MLCLog framework];
      v56 = tensorCopy;
      if (os_log_type_enabled(layer2, OS_LOG_TYPE_ERROR))
      {
        [_MLCCPUMatMul compileWithDevice:a2 deviceOps:layer2 sourceTensors:? resultTensor:?];
      }
    }

    v70 = v163;
  }

  else
  {
    v69 = 0;
    v56 = tensorCopy;
    v70 = v163;
    v155 = v160;
  }

LABEL_25:
  return v69;
}

+ (void)compileWithDevice:(const char *)a1 deviceOps:(NSObject *)a2 sourceTensors:resultTensor:.cold.1(const char *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_238C1D000, a2, OS_LOG_TYPE_ERROR, "%@: failed to create reduction filter", &v4, 0xCu);
}

@end