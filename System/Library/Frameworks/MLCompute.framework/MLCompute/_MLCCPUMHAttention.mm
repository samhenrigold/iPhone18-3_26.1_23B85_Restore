@interface _MLCCPUMHAttention
+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor;
+ (BOOL)setOptimizerDataForDevice:(id)device deviceOps:(id)ops dataForWeights:(id)weights dataForBias:(id)bias;
+ (id)layerWithDevice:(id)device descriptor:(id)descriptor weights:(id)weights bias:(id)bias attnBias:(id)attnBias inferenceOnly:(BOOL)only;
- (_MLCCPUMHAttention)initWithDevice:(id)device descriptor:(id)descriptor weights:(id)weights bias:(id)bias attnBias:(id)attnBias inferenceOnly:(BOOL)only;
@end

@implementation _MLCCPUMHAttention

- (_MLCCPUMHAttention)initWithDevice:(id)device descriptor:(id)descriptor weights:(id)weights bias:(id)bias attnBias:(id)attnBias inferenceOnly:(BOOL)only
{
  onlyCopy = only;
  v192[3] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  descriptorCopy = descriptor;
  weightsCopy = weights;
  biasCopy = bias;
  attnBiasCopy = attnBias;
  v181 = [MEMORY[0x277CBEBF8] mutableCopy];
  bzero(v186, 0x9B0uLL);
  v180 = [MEMORY[0x277CBEA90] dataWithBytes:v186 length:2480];
  bytes = [v180 bytes];
  modelDimension = [descriptorCopy modelDimension];
  keyDimension = [descriptorCopy keyDimension];
  valueDimension = [descriptorCopy valueDimension];
  v183 = descriptorCopy;
  headCount = [descriptorCopy headCount];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:modelDimension];
  v192[0] = v17;
  v171 = modelDimension / headCount;
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v192[1] = v18;
  v172 = headCount;
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:headCount];
  v192[2] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v192 count:3];

  v21 = [weightsCopy objectAtIndexedSubscript:0];
  descriptor = [v21 descriptor];
  v23 = +[MLCTensor tensorWithShape:dataType:](MLCTensor, "tensorWithShape:dataType:", v20, [descriptor dataType]);

  descriptor2 = [v23 descriptor];
  shape = [descriptor2 shape];
  v175 = v23;
  descriptor3 = [v23 descriptor];
  stride = [descriptor3 stride];
  v28 = [weightsCopy objectAtIndexedSubscript:0];
  data = [v28 data];
  v184 = weightsCopy;
  v30 = [weightsCopy objectAtIndexedSubscript:0];
  descriptor4 = [v30 descriptor];
  v174 = bytes;
  LODWORD(bytes) = CPU_BuildBNNSNDArrayDescriptorColMajor(bytes + 176, shape, stride, data, [descriptor4 dataType], 3);

  if (bytes)
  {
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:keyDimension];
    v191[0] = v32;
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v171];
    v191[1] = v33;
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v172];
    v191[2] = v34;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v191 count:3];

    v36 = [v184 objectAtIndexedSubscript:1];
    descriptor5 = [v36 descriptor];
    v38 = +[MLCTensor tensorWithShape:dataType:](MLCTensor, "tensorWithShape:dataType:", v35, [descriptor5 dataType]);

    descriptor6 = [v38 descriptor];
    shape2 = [descriptor6 shape];
    v170 = v38;
    descriptor7 = [v38 descriptor];
    stride2 = [descriptor7 stride];
    v43 = [v184 objectAtIndexedSubscript:1];
    data2 = [v43 data];
    v45 = [v184 objectAtIndexedSubscript:1];
    descriptor8 = [v45 descriptor];
    v47 = CPU_BuildBNNSNDArrayDescriptorColMajor(v174 + 704, shape2, stride2, data2, [descriptor8 dataType], 3);

    if (!v47)
    {
      v142 = 0;
      selfCopy5 = self;
      v141 = deviceCopy;
      v73 = v183;
      v144 = attnBiasCopy;
LABEL_32:

      v20 = v35;
      goto LABEL_33;
    }

    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:valueDimension];
    v190[0] = v48;
    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v171];
    v190[1] = v49;
    v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v172];
    v190[2] = v50;
    v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v190 count:3];

    v52 = [v184 objectAtIndexedSubscript:2];
    descriptor9 = [v52 descriptor];
    v164 = v51;
    v54 = +[MLCTensor tensorWithShape:dataType:](MLCTensor, "tensorWithShape:dataType:", v51, [descriptor9 dataType]);

    descriptor10 = [v54 descriptor];
    shape3 = [descriptor10 shape];
    v168 = v54;
    descriptor11 = [v54 descriptor];
    stride3 = [descriptor11 stride];
    v58 = [v184 objectAtIndexedSubscript:2];
    data3 = [v58 data];
    v60 = [v184 objectAtIndexedSubscript:2];
    descriptor12 = [v60 descriptor];
    v62 = CPU_BuildBNNSNDArrayDescriptorColMajor(v174 + 1232, shape3, stride3, data3, [descriptor12 dataType], 3);

    if (!v62 || ([v184 objectAtIndexedSubscript:3], v162 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v162, "descriptor"), v63 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v63, "shape"), v64 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v184, "objectAtIndexedSubscript:", 3), v65 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v65, "descriptor"), v66 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v66, "stride"), v67 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v184, "objectAtIndexedSubscript:", 3), v68 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v68, "data"), v69 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v184, "objectAtIndexedSubscript:", 3), v70 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v70, "descriptor"), v71 = objc_claimAutoreleasedReturnValue(), v72 = CPU_BuildBNNSNDArrayDescriptorColMajor(v174 + 2120, v64, v67, v69, objc_msgSend(v71, "dataType"), 2), v71, v70, v69, v68, v67, v66, v65, v64, v63, v162, !v72))
    {
      v142 = 0;
      selfCopy5 = self;
      v141 = deviceCopy;
      v73 = v183;
      v144 = attnBiasCopy;
      v35 = v164;
LABEL_31:

      goto LABEL_32;
    }

    v73 = v183;
    v74 = v164;
    if ([v183 hasBiases])
    {
      v75 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v171];
      v189[0] = v75;
      v76 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v172];
      v189[1] = v76;
      v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v189 count:2];

      v78 = [biasCopy objectAtIndexedSubscript:0];
      descriptor13 = [v78 descriptor];
      v165 = v77;
      v80 = +[MLCTensor tensorWithShape:dataType:](MLCTensor, "tensorWithShape:dataType:", v77, [descriptor13 dataType]);

      descriptor14 = [v80 descriptor];
      shape4 = [descriptor14 shape];
      v163 = v80;
      descriptor15 = [v80 descriptor];
      stride4 = [descriptor15 stride];
      v85 = [biasCopy objectAtIndexedSubscript:0];
      data4 = [v85 data];
      v87 = [biasCopy objectAtIndexedSubscript:0];
      descriptor16 = [v87 descriptor];
      v89 = CPU_BuildBNNSNDArrayDescriptorColMajor(v174 + 352, shape4, stride4, data4, [descriptor16 dataType], 2);

      if (!v89)
      {
        goto LABEL_18;
      }

      descriptor17 = [v163 descriptor];
      shape5 = [descriptor17 shape];
      descriptor18 = [v163 descriptor];
      stride5 = [descriptor18 stride];
      v94 = [biasCopy objectAtIndexedSubscript:1];
      data5 = [v94 data];
      v96 = [biasCopy objectAtIndexedSubscript:1];
      descriptor19 = [v96 descriptor];
      v98 = CPU_BuildBNNSNDArrayDescriptorColMajor(v174 + 880, shape5, stride5, data5, [descriptor19 dataType], 2);

      if (!v98)
      {
        goto LABEL_18;
      }

      descriptor20 = [v163 descriptor];
      shape6 = [descriptor20 shape];
      descriptor21 = [v163 descriptor];
      stride6 = [descriptor21 stride];
      v103 = [biasCopy objectAtIndexedSubscript:2];
      data6 = [v103 data];
      v105 = [biasCopy objectAtIndexedSubscript:2];
      descriptor22 = [v105 descriptor];
      v107 = CPU_BuildBNNSNDArrayDescriptorColMajor(v174 + 1408, shape6, stride6, data6, [descriptor22 dataType], 2);

      if (!v107)
      {
        goto LABEL_18;
      }

      v160 = [biasCopy objectAtIndexedSubscript:3];
      descriptor23 = [v160 descriptor];
      shape7 = [descriptor23 shape];
      v110 = [biasCopy objectAtIndexedSubscript:3];
      descriptor24 = [v110 descriptor];
      stride7 = [descriptor24 stride];
      v113 = [biasCopy objectAtIndexedSubscript:3];
      data7 = [v113 data];
      v115 = [biasCopy objectAtIndexedSubscript:3];
      descriptor25 = [v115 descriptor];
      v117 = CPU_BuildBNNSNDArrayDescriptorColMajor(v174 + 2296, shape7, stride7, data7, [descriptor25 dataType], 1);

      if (!v117)
      {
        goto LABEL_34;
      }

      v74 = v165;
      v73 = v183;
    }

    if (![v73 hasAttentionBiases])
    {
      v165 = v74;
      v141 = deviceCopy;
      goto LABEL_20;
    }

    v118 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v171];
    v188[0] = v118;
    v119 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v172];
    v188[1] = v119;
    v120 = [MEMORY[0x277CBEA60] arrayWithObjects:v188 count:2];

    v121 = [attnBiasCopy objectAtIndexedSubscript:0];
    descriptor26 = [v121 descriptor];
    v165 = v120;
    v123 = +[MLCTensor tensorWithShape:dataType:](MLCTensor, "tensorWithShape:dataType:", v120, [descriptor26 dataType]);

    descriptor27 = [v123 descriptor];
    shape8 = [descriptor27 shape];
    v163 = v123;
    descriptor28 = [v123 descriptor];
    stride8 = [descriptor28 stride];
    v128 = [attnBiasCopy objectAtIndexedSubscript:0];
    data8 = [v128 data];
    v130 = [attnBiasCopy objectAtIndexedSubscript:0];
    descriptor29 = [v130 descriptor];
    v132 = CPU_BuildBNNSNDArrayDescriptorColMajor(v174 + 1592, shape8, stride8, data8, [descriptor29 dataType], 2);

    if (v132)
    {
      descriptor30 = [v163 descriptor];
      shape9 = [descriptor30 shape];
      descriptor31 = [v163 descriptor];
      stride9 = [descriptor31 stride];
      v136 = [attnBiasCopy objectAtIndexedSubscript:1];
      data9 = [v136 data];
      v138 = [attnBiasCopy objectAtIndexedSubscript:1];
      descriptor32 = [v138 descriptor];
      v140 = CPU_BuildBNNSNDArrayDescriptorColMajor(v174 + 1768, shape9, stride9, data9, [descriptor32 dataType], 2);

      if (v140)
      {
        v141 = deviceCopy;
        v73 = v183;
LABEL_20:
        v146 = onlyCopy;
        *(v174 + 1584) = [v73 addsZeroAttention];
        [v73 dropout];
        *(v174 + 2472) = v147;
        v148 = MEMORY[0x277CBEBF8];
        v145 = [MEMORY[0x277CBEBF8] mutableCopy];
        v149 = [v148 mutableCopy];
        v178 = [v148 mutableCopy];
        v150 = [v148 mutableCopy];
        v151 = [v148 mutableCopy];
        if (!onlyCopy)
        {
          v152 = 0;
          v187[0] = v174;
          v187[1] = v174 + 528;
          v187[2] = v174 + 1056;
          v187[3] = v174 + 1944;
          do
          {
            v153 = [MEMORY[0x277CBEA90] dataWithBytes:v187[v152] length:528];
            [v145 addObject:v153];

            ++v152;
          }

          while (v152 != 4);
          v154 = [v145 objectAtIndexedSubscript:3];
          [v149 addObject:v154];

          [v145 removeLastObject];
          v73 = v183;
          if ([v183 hasAttentionBiases])
          {
            v155 = [MEMORY[0x277CBEA90] dataWithBytes:v174 + 1592 length:176];
            [v151 addObject:v155];

            v156 = [MEMORY[0x277CBEA90] dataWithBytes:v174 + 1768 length:176];
            [v151 addObject:v156];
          }

          v146 = onlyCopy;
        }

        v157 = [MLCMHACPUDeviceOps deviceOpsWithType:44 params:v180 inDeltaData:v145 outDeltaData:v149 weightsDeltaData:0 biasDeltaData:0 weightsMomentumData:0 biasMomentumData:0];
        if (v157)
        {
          [v181 addObject:v157];
          [v157 setHasBias:{objc_msgSend(v73, "hasBiases")}];
          [v157 setHasAttnBias:{objc_msgSend(v73, "hasAttentionBiases")}];
          [v157 setHasKeyMask:{objc_msgSend(v73, "hasKeyPaddingMask")}];
          [v157 setHasAttnMask:{objc_msgSend(v73, "hasAttentionMask")}];
          [v157 setInferenceOnly:v146];
          [v157 setAttnBiasDeltaData:v151];
          [v157 setWeightsDeltaDataBytesArray:v178];
          [v157 setBiasDeltaDataBytesArray:v150];
        }

        v158 = [v181 copy];
        v185.receiver = self;
        v185.super_class = _MLCCPUMHAttention;
        selfCopy5 = [(_MLCCPULayer *)&v185 initWithDevice:v141 deviceOps:v158];

        v142 = selfCopy5;
        goto LABEL_29;
      }

LABEL_34:
      v142 = 0;
      v35 = v165;
      selfCopy5 = self;
      v141 = deviceCopy;
      v73 = v183;
      goto LABEL_30;
    }

LABEL_18:
    v142 = 0;
    selfCopy5 = self;
    v141 = deviceCopy;
    v73 = v183;
    v145 = v163;
LABEL_29:

    v35 = v165;
LABEL_30:
    v144 = attnBiasCopy;
    goto LABEL_31;
  }

  v142 = 0;
  selfCopy5 = self;
  v141 = deviceCopy;
  v73 = v183;
  v144 = attnBiasCopy;
LABEL_33:

  return v142;
}

+ (id)layerWithDevice:(id)device descriptor:(id)descriptor weights:(id)weights bias:(id)bias attnBias:(id)attnBias inferenceOnly:(BOOL)only
{
  onlyCopy = only;
  attnBiasCopy = attnBias;
  biasCopy = bias;
  weightsCopy = weights;
  descriptorCopy = descriptor;
  deviceCopy = device;
  v19 = [[self alloc] initWithDevice:deviceCopy descriptor:descriptorCopy weights:weightsCopy bias:biasCopy attnBias:attnBiasCopy inferenceOnly:onlyCopy];

  return v19;
}

+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor
{
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v199 = [ops objectAtIndexedSubscript:0];
  params = [v199 params];
  bytes = [params bytes];
  v194 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor = [v194 descriptor];
  shape = [descriptor shape];
  v12 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor2 = [v12 descriptor];
  stride = [descriptor2 stride];
  v200 = tensorsCopy;
  v15 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor3 = [v15 descriptor];
  dataType = [descriptor3 dataType];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v193 = bytes;
  LODWORD(dataType) = CPU_BuildBNNSNDArrayDescriptorRowMajor(bytes, shape, stride, 0, dataType, 2, v17);

  if (!dataType)
  {
    goto LABEL_28;
  }

  v19 = [v200 objectAtIndexedSubscript:1];
  descriptor4 = [v19 descriptor];
  shape2 = [descriptor4 shape];
  v22 = [v200 objectAtIndexedSubscript:1];
  descriptor5 = [v22 descriptor];
  stride2 = [descriptor5 stride];
  v25 = [v200 objectAtIndexedSubscript:1];
  descriptor6 = [v25 descriptor];
  dataType2 = [descriptor6 dataType];
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  LODWORD(dataType2) = CPU_BuildBNNSNDArrayDescriptorRowMajor((v193 + 33), shape2, stride2, 0, dataType2, 2, v28);

  if (!dataType2 || ([v200 objectAtIndexedSubscript:2], v195 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v195, "descriptor"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "shape"), v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v200, "objectAtIndexedSubscript:", 2), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "descriptor"), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v32, "stride"), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v200, "objectAtIndexedSubscript:", 2), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "descriptor"), v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v35, "dataType"), objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", 0), v37 = objc_claimAutoreleasedReturnValue(), LODWORD(v36) = CPU_BuildBNNSNDArrayDescriptorRowMajor((v193 + 66), v30, v33, 0, v36, 2, v37), v37, v35, v34, v33, v32, v31, v30, v29, v195, !v36))
  {
LABEL_27:
    LOBYTE(dataType) = 0;
LABEL_28:
    v87 = v200;
    v38 = tensorCopy;
    goto LABEL_29;
  }

  v38 = tensorCopy;
  descriptor7 = [tensorCopy descriptor];
  shape3 = [descriptor7 shape];
  descriptor8 = [tensorCopy descriptor];
  stride3 = [descriptor8 stride];
  descriptor9 = [tensorCopy descriptor];
  dataType3 = [descriptor9 dataType];
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  LODWORD(dataType3) = CPU_BuildBNNSNDArrayDescriptorRowMajor(v193 + 1944, shape3, stride3, 0, dataType3, 2, v45);

  v46 = 0x277CCA000;
  if (!dataType3)
  {
    LOBYTE(dataType) = 0;
    v87 = v200;
    goto LABEL_29;
  }

  v47 = v193;
  memset(v212, 0, 32);
  LODWORD(v212[0]) = 1;
  v48 = MEMORY[0x23EE75C90](v193, v212);
  v49 = v199;
  if (v48)
  {
    v189 = [v200 objectAtIndexedSubscript:0];
    descriptor10 = [v189 descriptor];
    stride4 = [descriptor10 stride];
    v51 = [stride4 objectAtIndexedSubscript:0];
    unsignedIntegerValue = [v51 unsignedIntegerValue];
    v53 = [v200 objectAtIndexedSubscript:0];
    descriptor11 = [v53 descriptor];
    [descriptor11 stride];
    v55 = v192 = v48;
    v56 = [v200 objectAtIndexedSubscript:0];
    descriptor12 = [v56 descriptor];
    v58 = [v55 objectAtIndexedSubscript:{objc_msgSend(descriptor12, "dimensionCount") - 1}];
    [v199 setSourceStride:{unsignedIntegerValue / objc_msgSend(v58, "unsignedIntegerValue")}];

    v190 = [v200 objectAtIndexedSubscript:1];
    descriptor13 = [v190 descriptor];
    stride5 = [descriptor13 stride];
    v60 = [stride5 objectAtIndexedSubscript:0];
    unsignedIntegerValue2 = [v60 unsignedIntegerValue];
    v62 = [v200 objectAtIndexedSubscript:1];
    descriptor14 = [v62 descriptor];
    stride6 = [descriptor14 stride];
    v65 = [v200 objectAtIndexedSubscript:1];
    descriptor15 = [v65 descriptor];
    v67 = [stride6 objectAtIndexedSubscript:{objc_msgSend(descriptor15, "dimensionCount") - 1}];
    [v199 setSourceStrideSecondary:{unsignedIntegerValue2 / objc_msgSend(v67, "unsignedIntegerValue")}];

    v191 = [v200 objectAtIndexedSubscript:2];
    descriptor16 = [v191 descriptor];
    stride7 = [descriptor16 stride];
    v69 = [stride7 objectAtIndexedSubscript:0];
    unsignedIntegerValue3 = [v69 unsignedIntegerValue];
    v71 = [v200 objectAtIndexedSubscript:2];
    descriptor17 = [v71 descriptor];
    stride8 = [descriptor17 stride];
    v74 = [v200 objectAtIndexedSubscript:2];
    descriptor18 = [v74 descriptor];
    v76 = [stride8 objectAtIndexedSubscript:{objc_msgSend(descriptor18, "dimensionCount") - 1}];
    [v199 setSourceStrideTertiary:{unsignedIntegerValue3 / objc_msgSend(v76, "unsignedIntegerValue")}];

    v49 = v199;
    v38 = tensorCopy;

    descriptor19 = [tensorCopy descriptor];
    stride9 = [descriptor19 stride];
    v79 = [stride9 objectAtIndexedSubscript:0];
    unsignedIntegerValue4 = [v79 unsignedIntegerValue];
    descriptor20 = [tensorCopy descriptor];
    stride10 = [descriptor20 stride];
    descriptor21 = [tensorCopy descriptor];
    v84 = [stride10 objectAtIndexedSubscript:{objc_msgSend(descriptor21, "dimensionCount") - 1}];
    [v199 setResultStride:{unsignedIntegerValue4 / objc_msgSend(v84, "unsignedIntegerValue")}];

    v48 = v192;
    v47 = v193;

    v46 = 0x277CCA000;
  }

  objc_opt_class();
  v85 = objc_opt_new();
  [v49 setLayer:v85];

  layer = [v49 layer];
  [layer setFilter:v48];

  v87 = v200;
  v88 = v49;
  if (([v49 inferenceOnly] & 1) == 0)
  {
    inDeltaData = [v49 inDeltaData];
    v90 = [inDeltaData objectAtIndexedSubscript:0];
    bytes2 = [v90 bytes];

    v92 = *v47;
    v93 = v47[2];
    *(bytes2 + 16) = v47[1];
    *(bytes2 + 32) = v93;
    *bytes2 = v92;
    v94 = v47[3];
    v95 = v47[4];
    v96 = v47[6];
    *(bytes2 + 80) = v47[5];
    *(bytes2 + 96) = v96;
    *(bytes2 + 48) = v94;
    *(bytes2 + 64) = v95;
    v97 = v47[7];
    v98 = v47[8];
    v99 = v47[10];
    *(bytes2 + 144) = v47[9];
    *(bytes2 + 160) = v99;
    *(bytes2 + 112) = v97;
    *(bytes2 + 128) = v98;
    *(bytes2 + 88) = [v49 sourceStride];
    inDeltaData2 = [v49 inDeltaData];
    v101 = [inDeltaData2 objectAtIndexedSubscript:1];
    bytes3 = [v101 bytes];

    v103 = v47[33];
    v104 = v47[35];
    *(bytes3 + 16) = v47[34];
    *(bytes3 + 32) = v104;
    *bytes3 = v103;
    v105 = v47[36];
    v106 = v47[37];
    v107 = v47[39];
    *(bytes3 + 80) = v47[38];
    *(bytes3 + 96) = v107;
    *(bytes3 + 48) = v105;
    *(bytes3 + 64) = v106;
    v108 = v47[40];
    v109 = v47[41];
    v110 = v47[43];
    *(bytes3 + 144) = v47[42];
    *(bytes3 + 160) = v110;
    *(bytes3 + 112) = v108;
    *(bytes3 + 128) = v109;
    *(bytes3 + 88) = [v49 sourceStrideSecondary];
    inDeltaData3 = [v49 inDeltaData];
    v112 = [inDeltaData3 objectAtIndexedSubscript:2];
    bytes4 = [v112 bytes];

    v114 = v193[66];
    v115 = v193[68];
    *(bytes4 + 16) = v193[67];
    *(bytes4 + 32) = v115;
    *bytes4 = v114;
    v116 = v193[69];
    v117 = v193[70];
    v118 = v193[72];
    *(bytes4 + 80) = v193[71];
    *(bytes4 + 96) = v118;
    *(bytes4 + 48) = v116;
    *(bytes4 + 64) = v117;
    v119 = v193[73];
    v120 = v193[74];
    v121 = v193[76];
    *(bytes4 + 144) = v193[75];
    *(bytes4 + 160) = v121;
    *(bytes4 + 112) = v119;
    *(bytes4 + 128) = v120;
    *(bytes4 + 88) = [v49 sourceStrideTertiary];
    outDeltaData = [v49 outDeltaData];
    v123 = [outDeltaData objectAtIndexedSubscript:0];
    bytes5 = [v123 bytes];

    v125 = *(v193 + 1944);
    v126 = *(v193 + 1976);
    *(bytes5 + 16) = *(v193 + 1960);
    *(bytes5 + 32) = v126;
    *bytes5 = v125;
    v127 = *(v193 + 1992);
    v128 = *(v193 + 2008);
    v129 = *(v193 + 2040);
    *(bytes5 + 80) = *(v193 + 2024);
    *(bytes5 + 96) = v129;
    *(bytes5 + 48) = v127;
    *(bytes5 + 64) = v128;
    v130 = *(v193 + 2056);
    v131 = *(v193 + 2072);
    v132 = *(v193 + 2104);
    *(bytes5 + 144) = *(v193 + 2088);
    *(bytes5 + 160) = v132;
    *(bytes5 + 112) = v130;
    *(bytes5 + 128) = v131;
    *(bytes5 + 88) = [v49 resultStride];
    v46 = 0x277CCA000;
  }

  if ([v49 hasKeyMask])
  {
    v210 = 0u;
    v211 = 0u;
    v208 = 0u;
    v209 = 0u;
    v206 = 0u;
    v207 = 0u;
    v204 = 0u;
    v205 = 0u;
    v202 = 0u;
    v203 = 0u;
    v201 = 0u;
    dataType = [MEMORY[0x277CBEA90] dataWithBytes:&v201 length:176];
    bytes6 = [dataType bytes];
    v134 = [v200 objectAtIndexedSubscript:3];
    descriptor22 = [v134 descriptor];
    shape4 = [descriptor22 shape];
    v137 = [v200 objectAtIndexedSubscript:3];
    descriptor23 = [v137 descriptor];
    stride11 = [descriptor23 stride];
    LODWORD(bytes6) = CPU_BuildBNNSNDArrayDescriptorRowMajor(bytes6, shape4, stride11, 0, 4, 1, &unk_284BA59F0);

    if (bytes6)
    {
      v140 = [v200 objectAtIndexedSubscript:3];
      descriptor24 = [v140 descriptor];
      dimensionCount = [descriptor24 dimensionCount];

      v143 = [v200 objectAtIndexedSubscript:3];
      descriptor25 = [v143 descriptor];
      shape5 = [descriptor25 shape];
      v146 = [shape5 objectAtIndexedSubscript:dimensionCount - 1];
      v88 = v199;
      [v199 setKeyMaskStride:{objc_msgSend(v146, "unsignedIntegerValue")}];

      [v199 setKeyMask:dataType];
      v87 = v200;
      v46 = 0x277CCA000uLL;
      goto LABEL_12;
    }

    LOBYTE(dataType) = 0;
    v87 = v200;
LABEL_29:
    v88 = v199;
    goto LABEL_30;
  }

LABEL_12:
  if ([v88 hasKeyMask])
  {
    v147 = 4;
  }

  else if ([v88 hasAttnMask])
  {
    v147 = 3;
  }

  else
  {
    v147 = 4;
  }

  if ([v88 hasAttnMask])
  {
    v148 = v46;
    v210 = 0u;
    v211 = 0u;
    v208 = 0u;
    v209 = 0u;
    v206 = 0u;
    v207 = 0u;
    v204 = 0u;
    v205 = 0u;
    v202 = 0u;
    v203 = 0u;
    v201 = 0u;
    v149 = [MEMORY[0x277CBEA90] dataWithBytes:&v201 length:176];
    v150 = [v87 objectAtIndexedSubscript:v147];
    descriptor26 = [v150 descriptor];
    shape6 = [descriptor26 shape];
    v153 = [shape6 objectAtIndexedSubscript:0];
    unsignedIntegerValue5 = [v153 unsignedIntegerValue];

    v155 = v200;
    v156 = [v200 objectAtIndexedSubscript:v147];
    descriptor27 = [v156 descriptor];
    shape7 = [descriptor27 shape];
    v159 = [shape7 mutableCopy];

    if (unsignedIntegerValue5 == 1)
    {
      v160 = 2;
    }

    else
    {
      v161 = [v200 objectAtIndexedSubscript:v147];
      descriptor28 = [v161 descriptor];
      shape8 = [descriptor28 shape];
      v164 = [shape8 objectAtIndexedSubscript:0];
      unsignedIntegerValue6 = [v164 unsignedIntegerValue];

      v166 = [v200 objectAtIndexedSubscript:0];
      descriptor29 = [v166 descriptor];
      shape9 = [descriptor29 shape];
      v169 = [shape9 objectAtIndexedSubscript:0];
      unsignedIntegerValue7 = [v169 unsignedIntegerValue];

      v155 = v200;
      [v159 removeObjectAtIndex:0];
      v170 = [*(v148 + 2992) numberWithUnsignedInteger:unsignedIntegerValue6 / unsignedIntegerValue7];
      [v159 insertObject:v170 atIndex:0];

      v172 = [*(v148 + 2992) numberWithUnsignedInteger:unsignedIntegerValue7];
      [v159 insertObject:v172 atIndex:0];

      v160 = 4;
    }

    v196 = v160;
    v173 = [v155 objectAtIndexedSubscript:v147];
    descriptor30 = [v173 descriptor];
    v175 = +[MLCTensor tensorWithShape:dataType:](MLCTensor, "tensorWithShape:dataType:", v159, [descriptor30 dataType]);

    bytes7 = [v149 bytes];
    [v175 descriptor];
    v177 = v159;
    v179 = v178 = v149;
    shape10 = [v179 shape];
    descriptor31 = [v175 descriptor];
    stride12 = [descriptor31 stride];
    v183 = [v155 objectAtIndexedSubscript:v147];
    descriptor32 = [v183 descriptor];
    LODWORD(bytes7) = CPU_BuildBNNSNDArrayDescriptorRowMajor(bytes7, shape10, stride12, 0, [descriptor32 dataType], v196, 0);

    if (bytes7)
    {
      [v199 setAttnMask:v178];

      v88 = v199;
      LOBYTE(dataType) = 1;
      v87 = v200;
      v38 = tensorCopy;
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  LOBYTE(dataType) = 1;
LABEL_30:

  return dataType;
}

+ (BOOL)setOptimizerDataForDevice:(id)device deviceOps:(id)ops dataForWeights:(id)weights dataForBias:(id)bias
{
  v73[4] = *MEMORY[0x277D85DE8];
  weightsCopy = weights;
  biasCopy = bias;
  v10 = [ops objectAtIndexedSubscript:0];
  if (([v10 inferenceOnly] & 1) == 0)
  {
    v69 = biasCopy;
    params = [v10 params];
    bytes = [params bytes];
    v12 = MEMORY[0x277CBEBF8];
    v66 = [MEMORY[0x277CBEBF8] mutableCopy];
    v65 = [v12 mutableCopy];
    v73[0] = bytes + 176;
    v73[1] = bytes + 704;
    v63 = bytes;
    v73[2] = bytes + 1232;
    v73[3] = bytes + 2120;
    v70 = v10;
    v71 = weightsCopy;
    if ([weightsCopy count])
    {
      v13 = 0;
      do
      {
        v67 = [MEMORY[0x277CBEBF8] mutableCopy];
        v14 = [weightsCopy objectAtIndexedSubscript:v13];
        optimizerData = [v14 optimizerData];
        v16 = [optimizerData count];

        if (v16)
        {
          v17 = 0;
          do
          {
            v18 = MEMORY[0x277CBEA90];
            v19 = [weightsCopy objectAtIndexedSubscript:v13];
            optimizerData2 = [v19 optimizerData];
            v21 = [optimizerData2 objectAtIndexedSubscript:v17];
            bytes2 = [v21 bytes];
            v23 = [v71 objectAtIndexedSubscript:v13];
            optimizerData3 = [v23 optimizerData];
            v25 = [optimizerData3 objectAtIndexedSubscript:v17];
            v26 = [v18 dataWithBytesNoCopy:bytes2 length:objc_msgSend(v25 freeWhenDone:{"length"), 0}];

            v10 = v70;
            weightsMomentumDataBytesArray = [v70 weightsMomentumDataBytesArray];
            v28 = [weightsMomentumDataBytesArray objectAtIndexedSubscript:v13];
            [v28 addObject:v26];

            v29 = [MEMORY[0x277CBEA90] dataWithBytes:v73[v13] length:176];
            v30 = [v71 objectAtIndexedSubscript:v13];
            optimizerData4 = [v30 optimizerData];
            v32 = [optimizerData4 objectAtIndexedSubscript:v17];
            bytes3 = [v32 bytes];
            *([v29 bytes] + 136) = bytes3;

            weightsCopy = v71;
            [v67 addObject:v29];

            ++v17;
            v34 = [v71 objectAtIndexedSubscript:v13];
            optimizerData5 = [v34 optimizerData];
            v36 = [optimizerData5 count];
          }

          while (v17 < v36);
        }

        [v66 addObject:v67];

        ++v13;
      }

      while (v13 < [weightsCopy count]);
    }

    biasCopy = v69;
    if (v69)
    {
      v72[0] = v63 + 352;
      v72[1] = v63 + 880;
      v72[2] = v63 + 1408;
      v72[3] = v63 + 2296;
      v72[4] = v63 + 1592;
      v72[5] = v63 + 1768;
      if ([v69 count])
      {
        v37 = 0;
        do
        {
          v38 = [MEMORY[0x277CBEBF8] mutableCopy];
          v39 = [biasCopy objectAtIndexedSubscript:v37];
          optimizerData6 = [v39 optimizerData];
          v41 = [optimizerData6 count];

          if (v41)
          {
            v42 = 0;
            v68 = v38;
            do
            {
              v43 = MEMORY[0x277CBEA90];
              v44 = [biasCopy objectAtIndexedSubscript:v37];
              optimizerData7 = [v44 optimizerData];
              v46 = [optimizerData7 objectAtIndexedSubscript:v42];
              bytes4 = [v46 bytes];
              v48 = [biasCopy objectAtIndexedSubscript:v37];
              optimizerData8 = [v48 optimizerData];
              v50 = [optimizerData8 objectAtIndexedSubscript:v42];
              v51 = [v43 dataWithBytesNoCopy:bytes4 length:objc_msgSend(v50 freeWhenDone:{"length"), 0}];

              v10 = v70;
              biasMomentumDataBytesArray = [v70 biasMomentumDataBytesArray];
              v53 = [biasMomentumDataBytesArray objectAtIndexedSubscript:v37];
              [v53 addObject:v51];

              v54 = [MEMORY[0x277CBEA90] dataWithBytes:v72[v37] length:176];
              v55 = [v69 objectAtIndexedSubscript:v37];
              optimizerData9 = [v55 optimizerData];
              v57 = [optimizerData9 objectAtIndexedSubscript:v42];
              bytes5 = [v57 bytes];
              *([v54 bytes] + 136) = bytes5;

              biasCopy = v69;
              v38 = v68;

              [v68 addObject:v54];
              ++v42;
              v59 = [v69 objectAtIndexedSubscript:v37];
              optimizerData10 = [v59 optimizerData];
              v61 = [optimizerData10 count];
            }

            while (v42 < v61);
          }

          [v65 addObject:v38];

          ++v37;
        }

        while (v37 < [biasCopy count]);
      }

      weightsCopy = v71;
    }

    [v10 setWeightsMomentumDeltaDataArray:v66];
    [v10 setBiasMomentumDeltaDataArray:v65];
  }

  return 1;
}

@end