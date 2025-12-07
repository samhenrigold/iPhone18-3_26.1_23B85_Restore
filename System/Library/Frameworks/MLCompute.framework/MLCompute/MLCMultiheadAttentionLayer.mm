@interface MLCMultiheadAttentionLayer
+ (MLCMultiheadAttentionLayer)layerWithDescriptor:(MLCMultiheadAttentionDescriptor *)descriptor weights:(NSArray *)weights biases:(NSArray *)biases attentionBiases:(NSArray *)attentionBiases;
- (BOOL)allocateDataForOptimizer:(id)optimizer;
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor;
- (BOOL)isSupportedShapeForTensorSources:(id)sources;
- (MLCMultiheadAttentionLayer)initWithDescriptor:(id)descriptor weights:(id)weights bias:(id)bias attentionBias:(id)attentionBias;
- (id)description;
- (id)resultTensorFromSources:(id)sources;
- (id)summarizedDOTDescription;
- (unint64_t)allocatedDataSizeForTraining:(BOOL)training optimizer:(id)optimizer;
- (unint64_t)parametersCount;
- (void)allocateGradientsForParameters;
- (void)linkAssociatedTensors;
- (void)unlinkAssociatedTensors;
@end

@implementation MLCMultiheadAttentionLayer

+ (MLCMultiheadAttentionLayer)layerWithDescriptor:(MLCMultiheadAttentionDescriptor *)descriptor weights:(NSArray *)weights biases:(NSArray *)biases attentionBiases:(NSArray *)attentionBiases
{
  v10 = attentionBiases;
  v11 = biases;
  v12 = weights;
  v13 = descriptor;
  v14 = [[self alloc] initWithDescriptor:v13 weights:v12 bias:v11 attentionBias:v10];

  return v14;
}

- (MLCMultiheadAttentionLayer)initWithDescriptor:(id)descriptor weights:(id)weights bias:(id)bias attentionBias:(id)attentionBias
{
  v189[2] = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  weightsCopy = weights;
  biasCopy = bias;
  attentionBiasCopy = attentionBias;
  if ([weightsCopy count] != 4)
  {
    shape = +[MLCLog framework];
    if (os_log_type_enabled(shape, OS_LOG_TYPE_ERROR))
    {
      [MLCMultiheadAttentionLayer initWithDescriptor:a2 weights:? bias:? attentionBias:?];
    }

    goto LABEL_11;
  }

  if ([descriptorCopy hasBiases])
  {
    if (!biasCopy)
    {
      shape = +[MLCLog framework];
      if (os_log_type_enabled(shape, OS_LOG_TYPE_ERROR))
      {
        [MLCMultiheadAttentionLayer initWithDescriptor:a2 weights:? bias:? attentionBias:?];
      }

      goto LABEL_11;
    }

    if ([biasCopy count] != 4)
    {
      shape = +[MLCLog framework];
      if (os_log_type_enabled(shape, OS_LOG_TYPE_ERROR))
      {
        [MLCMultiheadAttentionLayer initWithDescriptor:a2 weights:? bias:? attentionBias:?];
      }

      goto LABEL_11;
    }
  }

  hasBiases = [descriptorCopy hasBiases];
  if (biasCopy && (hasBiases & 1) == 0)
  {
    shape = +[MLCLog framework];
    if (os_log_type_enabled(shape, OS_LOG_TYPE_ERROR))
    {
      [MLCMultiheadAttentionLayer initWithDescriptor:a2 weights:? bias:? attentionBias:?];
    }

LABEL_11:
    selfCopy2 = 0;
    goto LABEL_12;
  }

  if ([descriptorCopy hasAttentionBiases])
  {
    if (!attentionBiasCopy)
    {
      shape = +[MLCLog framework];
      if (os_log_type_enabled(shape, OS_LOG_TYPE_ERROR))
      {
        [MLCMultiheadAttentionLayer initWithDescriptor:a2 weights:? bias:? attentionBias:?];
      }

      goto LABEL_11;
    }

    if ([attentionBiasCopy count] != 2)
    {
      shape = +[MLCLog framework];
      if (os_log_type_enabled(shape, OS_LOG_TYPE_ERROR))
      {
        [MLCMultiheadAttentionLayer initWithDescriptor:a2 weights:? bias:? attentionBias:?];
      }

      goto LABEL_11;
    }
  }

  hasAttentionBiases = [descriptorCopy hasAttentionBiases];
  if (attentionBiasCopy && (hasAttentionBiases & 1) == 0)
  {
    shape = +[MLCLog framework];
    if (os_log_type_enabled(shape, OS_LOG_TYPE_ERROR))
    {
      [MLCMultiheadAttentionLayer initWithDescriptor:a2 weights:? bias:? attentionBias:?];
    }

    goto LABEL_11;
  }

  obj = weights;
  attentionBiasCopy2 = attentionBias;
  v145 = a2;
  selfCopy = self;
  v166 = biasCopy;
  modelDimension = [descriptorCopy modelDimension];
  keyDimension = [descriptorCopy keyDimension];
  valueDimension = [descriptorCopy valueDimension];
  headCount = [descriptorCopy headCount];
  v23 = [weightsCopy objectAtIndexedSubscript:0];
  descriptor = [v23 descriptor];
  shape = [descriptor shape];

  v155 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:modelDimension];
  v189[0] = v155;
  v167 = modelDimension;
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:modelDimension];
  v189[1] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v189 count:2];
  v163 = headCount;
  v165 = attentionBiasCopy;
  biasCopy2 = bias;
  if ([shape isEqualToArray:v26])
  {

    v27 = 0x277CCA000;
  }

  else
  {
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:modelDimension];
    v188[0] = v28;
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v167 / headCount];
    v30 = headCount;
    v31 = v29;
    v188[1] = v29;
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v30];
    v188[2] = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v188 count:3];
    v141 = [shape isEqualToArray:v33];

    attentionBiasCopy = v165;
    v27 = 0x277CCA000uLL;
    if ((v141 & 1) == 0)
    {
      v61 = +[MLCLog framework];
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        [MLCMultiheadAttentionLayer initWithDescriptor:v145 weights:? bias:? attentionBias:?];
      }

      goto LABEL_54;
    }
  }

  v34 = [weightsCopy objectAtIndexedSubscript:1];
  descriptor2 = [v34 descriptor];
  shape2 = [descriptor2 shape];

  v37 = v167;
  v156 = [*(v27 + 2992) numberWithUnsignedInteger:v167];
  v187[0] = v156;
  v38 = [*(v27 + 2992) numberWithUnsignedInteger:keyDimension];
  v187[1] = v38;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v187 count:2];
  v40 = v27;
  if ([shape2 isEqualToArray:v39])
  {
    v41 = shape2;

    v42 = v40;
  }

  else
  {
    v150 = [*(v27 + 2992) numberWithUnsignedInteger:v167];
    v186[0] = v150;
    v163 = [*(v27 + 2992) numberWithUnsignedInteger:v167 / v163];
    v186[1] = v163;
    v44 = [*(v27 + 2992) numberWithUnsignedInteger:v163];
    v186[2] = v44;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v186 count:3];
    v41 = shape2;
    v142 = [shape2 isEqualToArray:v45];

    attentionBiasCopy = v165;
    v37 = v167;

    v42 = 0x277CCA000uLL;
    if ((v142 & 1) == 0)
    {
      v73 = +[MLCLog framework];
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        [MLCMultiheadAttentionLayer initWithDescriptor:v145 weights:? bias:? attentionBias:?];
      }

      selfCopy2 = 0;
      shape = v41;
      goto LABEL_55;
    }
  }

  v46 = [weightsCopy objectAtIndexedSubscript:2];
  descriptor3 = [v46 descriptor];
  shape = [descriptor3 shape];

  v48 = [*(v42 + 2992) numberWithUnsignedInteger:v37];
  v185[0] = v48;
  v49 = [*(v42 + 2992) numberWithUnsignedInteger:valueDimension];
  v185[1] = v49;
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v185 count:2];
  if ([shape isEqualToArray:v50])
  {

    v51 = v42;
  }

  else
  {
    v151 = [*(v42 + 2992) numberWithUnsignedInteger:v37];
    v157 = v48;
    v184[0] = v151;
    v51 = v42;
    v1632 = [*(v42 + 2992) numberWithUnsignedInteger:v37 / v163];
    v184[1] = v1632;
    v53 = [*(v42 + 2992) numberWithUnsignedInteger:v163];
    v184[2] = v53;
    v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v184 count:3];
    v148 = [shape isEqualToArray:v54];

    v37 = v167;
    attentionBiasCopy = v165;

    if ((v148 & 1) == 0)
    {
      v61 = +[MLCLog framework];
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        [MLCMultiheadAttentionLayer initWithDescriptor:v145 weights:? bias:? attentionBias:?];
      }

      goto LABEL_54;
    }
  }

  v55 = [weightsCopy objectAtIndexedSubscript:3];
  descriptor4 = [v55 descriptor];
  shape3 = [descriptor4 shape];

  v152 = [*(v51 + 2992) numberWithUnsignedInteger:v37];
  v183[0] = v152;
  v58 = [*(v51 + 2992) numberWithUnsignedInteger:v37];
  v183[1] = v58;
  v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v183 count:2];
  v158 = shape3;
  if ([shape3 isEqualToArray:v59])
  {

    v60 = biasCopy2;
  }

  else
  {
    v62 = v51;
    v63 = [*(v51 + 2992) numberWithUnsignedInteger:v37];
    v182[0] = v63;
    v1633 = [*(v62 + 2992) numberWithUnsignedInteger:v37 / v163];
    v182[1] = v1633;
    v65 = [*(v62 + 2992) numberWithUnsignedInteger:v163];
    v182[2] = v65;
    v66 = [MEMORY[0x277CBEA60] arrayWithObjects:v182 count:3];
    v67 = [shape3 isEqualToArray:v66];

    attentionBiasCopy = v165;
    v60 = biasCopy2;
    if ((v67 & 1) == 0)
    {
      v79 = +[MLCLog framework];
      self = selfCopy;
      if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
      {
        [MLCMultiheadAttentionLayer initWithDescriptor:v145 weights:? bias:? attentionBias:?];
      }

      goto LABEL_59;
    }
  }

  if (![descriptorCopy hasBiases])
  {
    biasCopy = v166;
    v74 = selfCopy;
    goto LABEL_49;
  }

  v68 = [v166 objectAtIndexedSubscript:0];
  descriptor5 = [v68 descriptor];
  shape = [descriptor5 shape];

  v70 = v167;
  v71 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v167];
  v181 = v71;
  v72 = [MEMORY[0x277CBEA60] arrayWithObjects:&v181 count:1];
  if ([shape isEqualToArray:v72])
  {
  }

  else
  {
    v1634 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v167 / v163];
    v180[0] = v1634;
    v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v163];
    v180[1] = v81;
    v82 = [MEMORY[0x277CBEA60] arrayWithObjects:v180 count:2];
    v159 = [shape isEqualToArray:v82];

    v70 = v167;
    if ((v159 & 1) == 0)
    {
      v111 = +[MLCLog framework];
      if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
      {
        [MLCMultiheadAttentionLayer initWithDescriptor:v145 weights:? bias:? attentionBias:?];
      }

      selfCopy2 = 0;
      goto LABEL_98;
    }
  }

  v83 = [v166 objectAtIndexedSubscript:1];
  descriptor6 = [v83 descriptor];
  shape4 = [descriptor6 shape];

  v86 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v70];
  v179 = v86;
  v87 = [MEMORY[0x277CBEA60] arrayWithObjects:&v179 count:1];
  if ([shape4 isEqualToArray:v87])
  {

    goto LABEL_65;
  }

  v1635 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v70 / v163];
  v178[0] = v1635;
  v89 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v163];
  v178[1] = v89;
  v90 = [MEMORY[0x277CBEA60] arrayWithObjects:v178 count:2];
  v153 = [shape4 isEqualToArray:v90];

  v70 = v167;
  if ((v153 & 1) == 0)
  {
    v139 = +[MLCLog framework];
    if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
    {
      [MLCMultiheadAttentionLayer initWithDescriptor:v145 weights:? bias:? attentionBias:?];
    }

    selfCopy2 = 0;
    shape = shape4;
LABEL_98:
    attentionBiasCopy = v165;
    biasCopy = v166;
    goto LABEL_56;
  }

LABEL_65:
  v91 = [v166 objectAtIndexedSubscript:2];
  descriptor7 = [v91 descriptor];
  shape = [descriptor7 shape];

  v93 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v70];
  v177 = v93;
  v94 = [MEMORY[0x277CBEA60] arrayWithObjects:&v177 count:1];
  if ([shape isEqualToArray:v94])
  {

    v95 = v70;
  }

  else
  {
    v1636 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v70 / v163];
    v176[0] = v1636;
    [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v163];
    v104 = v95 = v70;
    v176[1] = v104;
    v105 = [MEMORY[0x277CBEA60] arrayWithObjects:v176 count:2];
    v154 = [shape isEqualToArray:v105];

    if ((v154 & 1) == 0)
    {
      v61 = +[MLCLog framework];
      attentionBiasCopy = v165;
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        [MLCMultiheadAttentionLayer initWithDescriptor:v145 weights:? bias:? attentionBias:?];
      }

      goto LABEL_54;
    }
  }

  v106 = [v166 objectAtIndexedSubscript:3];
  descriptor8 = [v106 descriptor];
  shape5 = [descriptor8 shape];

  v109 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v95];
  v175 = v109;
  v110 = [MEMORY[0x277CBEA60] arrayWithObjects:&v175 count:1];
  attentionBiasCopy = v165;
  v158 = shape5;
  if ([shape5 isEqualToArray:v110])
  {

    biasCopy = v166;
    v74 = selfCopy;
    v60 = biasCopy2;
    goto LABEL_49;
  }

  v174[0] = &unk_284BA5D08;
  v136 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v95];
  v174[1] = v136;
  v137 = [MEMORY[0x277CBEA60] arrayWithObjects:v174 count:2];
  v138 = [shape5 isEqualToArray:v137];

  if ((v138 & 1) == 0)
  {
    v79 = +[MLCLog framework];
    self = selfCopy;
    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      [MLCMultiheadAttentionLayer initWithDescriptor:v145 weights:? bias:? attentionBias:?];
    }

LABEL_59:

    selfCopy2 = 0;
    shape = v158;
    biasCopy = v166;
    goto LABEL_12;
  }

  biasCopy = v166;
  v74 = selfCopy;
  v60 = biasCopy2;
LABEL_49:
  if (![descriptorCopy hasAttentionBiases])
  {
    shape = v158;
LABEL_79:
    v169.receiver = v74;
    v169.super_class = MLCMultiheadAttentionLayer;
    v116 = [(MLCLayer *)&v169 initWithLabel:@"MultiheadAttention"];
    v117 = v116;
    if (v116)
    {
      objc_storeStrong(&v116->_descriptor, descriptor);
      objc_storeStrong(&v117->_weights, obj);
      objc_storeStrong(&v117->_biases, v60);
      objc_storeStrong(&v117->_attentionBiases, attentionBiasCopy2);
      v118 = MEMORY[0x277CBEBF8];
      v119 = [MEMORY[0x277CBEBF8] mutableCopy];
      v164 = [v118 mutableCopy];
      if ([weightsCopy count])
      {
        v120 = 0;
        do
        {
          v121 = [weightsCopy objectAtIndexedSubscript:v120];
          v122 = [MLCTensorParameter parameterWithTensor:v121];
          [v119 setObject:v122 atIndexedSubscript:v120];

          v123 = [(NSArray *)v117->_weights objectAtIndexedSubscript:v120];
          [v123 setIsLayerParameter:1];

          ++v120;
        }

        while (v120 < [weightsCopy count]);
      }

      v124 = [v119 copy];
      weightsParameters = v117->_weightsParameters;
      v117->_weightsParameters = v124;

      if ([descriptorCopy hasBiases] && objc_msgSend(v166, "count"))
      {
        v126 = 0;
        do
        {
          v127 = [v166 objectAtIndexedSubscript:v126];
          v128 = [MLCTensorParameter parameterWithTensor:v127];
          [v164 addObject:v128];

          v129 = [(NSArray *)v117->_biases objectAtIndexedSubscript:v126];
          [v129 setIsLayerParameter:1];

          ++v126;
        }

        while (v126 < [v166 count]);
      }

      if ([descriptorCopy hasAttentionBiases] && objc_msgSend(v165, "count"))
      {
        v130 = 0;
        do
        {
          v131 = [v165 objectAtIndexedSubscript:v130];
          v132 = [MLCTensorParameter parameterWithTensor:v131];
          [v164 addObject:v132];

          v133 = [(NSArray *)v117->_attentionBiases objectAtIndexedSubscript:v130];
          [v133 setIsLayerParameter:1];

          ++v130;
        }

        while (v130 < [v165 count]);
      }

      v134 = [v164 copy];
      biasesParameters = v117->_biasesParameters;
      v117->_biasesParameters = v134;

      v168.receiver = v117;
      v168.super_class = MLCMultiheadAttentionLayer;
      [(MLCLayer *)&v168 setIsUpdatable:1];

      biasCopy = v166;
      attentionBiasCopy = v165;
    }

    self = v117;
    selfCopy2 = self;
    goto LABEL_12;
  }

  v75 = [attentionBiasCopy objectAtIndexedSubscript:0];
  descriptor9 = [v75 descriptor];
  shape = [descriptor9 shape];

  v77 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v167];
  v173 = v77;
  v78 = [MEMORY[0x277CBEA60] arrayWithObjects:&v173 count:1];
  if ([shape isEqualToArray:v78])
  {

    goto LABEL_68;
  }

  v1637 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v167 / v163];
  v172[0] = v1637;
  v97 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v163];
  v172[1] = v97;
  v98 = [MEMORY[0x277CBEA60] arrayWithObjects:v172 count:2];
  v160 = [shape isEqualToArray:v98];

  attentionBiasCopy = v165;
  if ((v160 & 1) == 0)
  {
    v61 = +[MLCLog framework];
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      [MLCMultiheadAttentionLayer initWithDescriptor:v145 weights:? bias:? attentionBias:?];
    }

LABEL_54:

    selfCopy2 = 0;
LABEL_55:
    biasCopy = v166;
LABEL_56:
    self = selfCopy;
    goto LABEL_12;
  }

LABEL_68:
  v99 = [attentionBiasCopy objectAtIndexedSubscript:1];
  descriptor10 = [v99 descriptor];
  shape6 = [descriptor10 shape];

  v102 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v167];
  v171 = v102;
  v103 = [MEMORY[0x277CBEA60] arrayWithObjects:&v171 count:1];
  if ([shape6 isEqualToArray:v103])
  {

    shape = shape6;
    biasCopy = v166;
LABEL_78:
    v74 = selfCopy;
    v60 = biasCopy2;
    goto LABEL_79;
  }

  v1638 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v167 / v163];
  v170[0] = v1638;
  v113 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v163];
  v170[1] = v113;
  v114 = [MEMORY[0x277CBEA60] arrayWithObjects:v170 count:2];
  v115 = [shape6 isEqualToArray:v114];

  if (v115)
  {
    shape = shape6;
    attentionBiasCopy = v165;
    biasCopy = v166;
    goto LABEL_78;
  }

  v140 = +[MLCLog framework];
  self = selfCopy;
  if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
  {
    [MLCMultiheadAttentionLayer initWithDescriptor:v145 weights:? bias:? attentionBias:?];
  }

  selfCopy2 = 0;
  shape = shape6;
  attentionBiasCopy = v165;
  biasCopy = v166;
LABEL_12:

  return selfCopy2;
}

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v162 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v9 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor = [v9 descriptor];
  dimensionCount = [descriptor dimensionCount];

  descriptor2 = [(MLCMultiheadAttentionLayer *)self descriptor];
  modelDimension = [descriptor2 modelDimension];
  v14 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor3 = [v14 descriptor];
  shape = [descriptor3 shape];
  v17 = dimensionCount - 1;
  v18 = [shape objectAtIndexedSubscript:dimensionCount - 1];
  unsignedIntegerValue = [v18 unsignedIntegerValue];

  if (modelDimension != unsignedIntegerValue)
  {
    v78 = +[MLCLog framework];
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      [MLCMultiheadAttentionLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    v79 = 0;
    v34 = tensorCopy;
    v43 = deviceCopy;
    goto LABEL_56;
  }

  descriptor4 = [(MLCMultiheadAttentionLayer *)self descriptor];
  keyDimension = [descriptor4 keyDimension];
  v22 = [tensorsCopy objectAtIndexedSubscript:1];
  descriptor5 = [v22 descriptor];
  shape2 = [descriptor5 shape];
  v25 = [shape2 objectAtIndexedSubscript:v17];
  unsignedIntegerValue2 = [v25 unsignedIntegerValue];

  if (keyDimension != unsignedIntegerValue2)
  {
    v78 = +[MLCLog framework];
    v34 = tensorCopy;
    v43 = deviceCopy;
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      [MLCMultiheadAttentionLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_55;
  }

  descriptor6 = [(MLCMultiheadAttentionLayer *)self descriptor];
  valueDimension = [descriptor6 valueDimension];
  v29 = [tensorsCopy objectAtIndexedSubscript:2];
  descriptor7 = [v29 descriptor];
  shape3 = [descriptor7 shape];
  v32 = [shape3 objectAtIndexedSubscript:v17];
  unsignedIntegerValue3 = [v32 unsignedIntegerValue];

  v34 = tensorCopy;
  if (valueDimension != unsignedIntegerValue3)
  {
    v78 = +[MLCLog framework];
    v43 = deviceCopy;
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      [MLCMultiheadAttentionLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_55;
  }

  descriptor8 = [tensorCopy descriptor];
  dimensionCount2 = [descriptor8 dimensionCount];

  descriptor9 = [(MLCMultiheadAttentionLayer *)self descriptor];
  modelDimension2 = [descriptor9 modelDimension];
  descriptor10 = [tensorCopy descriptor];
  shape4 = [descriptor10 shape];
  v41 = [shape4 objectAtIndexedSubscript:dimensionCount2 - 1];
  unsignedIntegerValue4 = [v41 unsignedIntegerValue];

  v43 = deviceCopy;
  if (modelDimension2 != unsignedIntegerValue4)
  {
    v78 = +[MLCLog framework];
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      [MLCMultiheadAttentionLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_55;
  }

  v44 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor11 = [v44 descriptor];
  dataType = [descriptor11 dataType];

  if (![(MLCLayer *)MLCMultiheadAttentionLayer supportsDataType:dataType onDevice:deviceCopy])
  {
    v78 = +[MLCLog framework];
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      v80 = NSStringFromSelector(a2);
      *buf = 138412802;
      v157 = v80;
      v158 = 1024;
      v159 = dataType;
      v160 = 2112;
      v161 = deviceCopy;
      _os_log_error_impl(&dword_238C1D000, v78, OS_LOG_TYPE_ERROR, "%@: MultiheadAttention layer with data type = %d is not supported on a device = %@", buf, 0x1Cu);
    }

    goto LABEL_55;
  }

  if ([tensorsCopy count] == 5)
  {
    v47 = [tensorsCopy objectAtIndexedSubscript:3];
    descriptor12 = [v47 descriptor];
    dimensionCount3 = [descriptor12 dimensionCount];

    if (dimensionCount3 == 2)
    {
      v50 = [tensorsCopy objectAtIndexedSubscript:1];
      descriptor13 = [v50 descriptor];
      shape5 = [descriptor13 shape];
      v146 = [tensorsCopy objectAtIndexedSubscript:1];
      descriptor14 = [v146 descriptor];
      v149 = shape5;
      v53 = [shape5 objectAtIndexedSubscript:{objc_msgSend(descriptor14, "dimensionCount") - 2}];
      unsignedIntegerValue5 = [v53 unsignedIntegerValue];
      v55 = [tensorsCopy objectAtIndexedSubscript:3];
      descriptor15 = [v55 descriptor];
      shape6 = [descriptor15 shape];
      v58 = [shape6 objectAtIndexedSubscript:1];
      if (unsignedIntegerValue5 == [v58 unsignedIntegerValue])
      {
        v59 = [tensorsCopy objectAtIndexedSubscript:3];
        [v59 descriptor];
        v60 = v138 = v50;
        dataType2 = [v60 dataType];

        v34 = tensorCopy;
        v43 = deviceCopy;
        if (dataType2 == 4)
        {
          descriptor16 = [(MLCMultiheadAttentionLayer *)self descriptor];
          [descriptor16 setHasKeyPaddingMask:1];

          v62 = [tensorsCopy objectAtIndexedSubscript:4];
          descriptor17 = [v62 descriptor];
          dimensionCount4 = [descriptor17 dimensionCount];

          if (dimensionCount4 != 3)
          {
            goto LABEL_53;
          }

          v65 = [tensorsCopy objectAtIndexedSubscript:1];
          descriptor18 = [v65 descriptor];
          shape7 = [descriptor18 shape];
          v68 = [tensorsCopy objectAtIndexedSubscript:1];
          descriptor19 = [v68 descriptor];
          v147 = [shape7 objectAtIndexedSubscript:{objc_msgSend(descriptor19, "dimensionCount") - 2}];
          unsignedIntegerValue6 = [v147 unsignedIntegerValue];
          v143 = [tensorsCopy objectAtIndexedSubscript:4];
          descriptor20 = [v143 descriptor];
          shape8 = [descriptor20 shape];
          v72 = [shape8 objectAtIndexedSubscript:2];
          if (unsignedIntegerValue6 != [v72 unsignedIntegerValue])
          {

            v34 = tensorCopy;
            v43 = deviceCopy;
            goto LABEL_53;
          }

          v135 = [tensorsCopy objectAtIndexedSubscript:0];
          descriptor21 = [v135 descriptor];
          shape9 = [descriptor21 shape];
          v122 = [tensorsCopy objectAtIndexedSubscript:0];
          descriptor22 = [v122 descriptor];
          [shape9 objectAtIndexedSubscript:{objc_msgSend(descriptor22, "dimensionCount") - 2}];
          v73 = v132 = v68;
          unsignedIntegerValue7 = [v73 unsignedIntegerValue];
          v74 = [tensorsCopy objectAtIndexedSubscript:4];
          [v74 descriptor];
          v75 = v130 = v65;
          [v75 shape];
          v76 = v126 = descriptor18;
          [v76 objectAtIndexedSubscript:1];
          v77 = v120 = shape7;
          unsignedIntegerValue8 = [v77 unsignedIntegerValue];

          v34 = tensorCopy;
          v43 = deviceCopy;
          if (unsignedIntegerValue7 != unsignedIntegerValue8)
          {
LABEL_53:
            v78 = +[MLCLog framework];
            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              [MLCMultiheadAttentionLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
            }

LABEL_55:
            v79 = 0;
            goto LABEL_56;
          }

          goto LABEL_36;
        }
      }

      else
      {

        v34 = tensorCopy;
        v43 = deviceCopy;
      }
    }

    v78 = +[MLCLog framework];
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      [MLCMultiheadAttentionLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_55;
  }

  if ([tensorsCopy count] == 4)
  {
    v81 = [tensorsCopy objectAtIndexedSubscript:3];
    descriptor23 = [v81 descriptor];
    dimensionCount5 = [descriptor23 dimensionCount];

    if (dimensionCount5 == 3)
    {
      v151 = [tensorsCopy objectAtIndexedSubscript:1];
      descriptor24 = [v151 descriptor];
      shape10 = [descriptor24 shape];
      v97 = [tensorsCopy objectAtIndexedSubscript:1];
      descriptor25 = [v97 descriptor];
      v148 = shape10;
      v98 = [shape10 objectAtIndexedSubscript:{objc_msgSend(descriptor25, "dimensionCount") - 2}];
      unsignedIntegerValue9 = [v98 unsignedIntegerValue];
      v100 = [tensorsCopy objectAtIndexedSubscript:3];
      descriptor26 = [v100 descriptor];
      shape11 = [descriptor26 shape];
      v92 = [shape11 objectAtIndexedSubscript:2];
      if (unsignedIntegerValue9 == [v92 unsignedIntegerValue])
      {
        v131 = [tensorsCopy objectAtIndexedSubscript:0];
        descriptor27 = [v131 descriptor];
        shape12 = [descriptor27 shape];
        v125 = [tensorsCopy objectAtIndexedSubscript:0];
        descriptor28 = [v125 descriptor];
        v117 = [shape12 objectAtIndexedSubscript:{objc_msgSend(descriptor28, "dimensionCount") - 2}];
        unsignedIntegerValue10 = [v117 unsignedIntegerValue];
        v101 = [tensorsCopy objectAtIndexedSubscript:3];
        [v101 descriptor];
        v102 = v137 = descriptor24;
        [v102 shape];
        v103 = v119 = descriptor26;
        [v103 objectAtIndexedSubscript:1];
        v104 = v145 = v97;
        unsignedIntegerValue11 = [v104 unsignedIntegerValue];

        v34 = tensorCopy;
        v43 = deviceCopy;
        if (unsignedIntegerValue10 == unsignedIntegerValue11)
        {
LABEL_36:
          descriptor29 = [(MLCMultiheadAttentionLayer *)self descriptor];
          [descriptor29 setHasAttentionMask:1];
          goto LABEL_37;
        }

LABEL_50:
        v78 = +[MLCLog framework];
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          [MLCMultiheadAttentionLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
        }

        goto LABEL_55;
      }

      v114 = v100;
      v87 = v98;
      descriptor30 = descriptor25;
    }

    else
    {
      if (dimensionCount5 != 2)
      {
        goto LABEL_50;
      }

      v151 = [tensorsCopy objectAtIndexedSubscript:1];
      descriptor24 = [v151 descriptor];
      shape13 = [descriptor24 shape];
      v144 = [tensorsCopy objectAtIndexedSubscript:1];
      descriptor30 = [v144 descriptor];
      v148 = shape13;
      v87 = [shape13 objectAtIndexedSubscript:{objc_msgSend(descriptor30, "dimensionCount") - 2}];
      unsignedIntegerValue12 = [v87 unsignedIntegerValue];
      v89 = [tensorsCopy objectAtIndexedSubscript:3];
      descriptor26 = [v89 descriptor];
      shape11 = [descriptor26 shape];
      v92 = [shape11 objectAtIndexedSubscript:1];
      if (unsignedIntegerValue12 == [v92 unsignedIntegerValue])
      {
        v93 = [tensorsCopy objectAtIndexedSubscript:3];
        [v93 descriptor];
        v94 = v136 = descriptor24;
        dataType3 = [v94 dataType];

        v34 = tensorCopy;
        v43 = deviceCopy;
        if (dataType3 == 4)
        {
          descriptor29 = [(MLCMultiheadAttentionLayer *)self descriptor];
          [descriptor29 setHasKeyPaddingMask:1];
LABEL_37:

          goto LABEL_38;
        }

        goto LABEL_50;
      }

      v114 = v89;
      v97 = v144;
    }

    v34 = tensorCopy;
    v43 = deviceCopy;
    goto LABEL_50;
  }

LABEL_38:
  if ([tensorsCopy count] >= 4)
  {
    v105 = 3;
    do
    {
      v106 = [tensorsCopy objectAtIndexedSubscript:v105];
      [v106 setComputeFlags:{objc_msgSend(v106, "computeFlags") | 8}];

      ++v105;
    }

    while (v105 < [tensorsCopy count]);
  }

  computeEngine = [v43 computeEngine];
  descriptor31 = [(MLCMultiheadAttentionLayer *)self descriptor];
  weights = [(MLCMultiheadAttentionLayer *)self weights];
  biases = [(MLCMultiheadAttentionLayer *)self biases];
  attentionBiases = [(MLCMultiheadAttentionLayer *)self attentionBiases];
  v78 = [computeEngine multiheadAttentionLayerWithDescriptor:descriptor31 weights:weights bias:biases attnBias:attentionBiases inferenceOnly:{-[MLCLayer compileForInferenceOnly](self, "compileForInferenceOnly")}];

  if (!v78 || ![v78 count])
  {
    v113 = +[MLCLog framework];
    if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
    {
      [MLCScatterLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_55;
  }

  computeEngine2 = [v43 computeEngine];
  v79 = [computeEngine2 compileLayerDeviceOps:v78 sourceTensors:tensorsCopy resultTensor:v34];

  v155.receiver = self;
  v155.super_class = MLCMultiheadAttentionLayer;
  [(MLCLayer *)&v155 bindDevice:v43 deviceOps:v78];
LABEL_56:

  return v79;
}

- (BOOL)allocateDataForOptimizer:(id)optimizer
{
  optimizerCopy = optimizer;
  biases = [(MLCMultiheadAttentionLayer *)self biases];
  v6 = [biases mutableCopy];

  descriptor = [(MLCMultiheadAttentionLayer *)self descriptor];
  hasAttentionBiases = [descriptor hasAttentionBiases];

  if (hasAttentionBiases)
  {
    if (!v6)
    {
      v6 = [MEMORY[0x277CBEBF8] mutableCopy];
    }

    attentionBiases = [(MLCMultiheadAttentionLayer *)self attentionBiases];
    [v6 addObjectsFromArray:attentionBiases];
  }

  weights = [(MLCMultiheadAttentionLayer *)self weights];
  v11 = [weights count];

  if (v11)
  {
    v12 = 0;
    do
    {
      weightsParameters = [(MLCMultiheadAttentionLayer *)self weightsParameters];
      v14 = [weightsParameters objectAtIndexedSubscript:v12];
      device = [(MLCLayer *)self device];
      [v14 allocateDataForOptimizer:optimizerCopy device:device isVector:0];

      ++v12;
      weights2 = [(MLCMultiheadAttentionLayer *)self weights];
      v17 = [weights2 count];
    }

    while (v12 < v17);
  }

  descriptor2 = [(MLCMultiheadAttentionLayer *)self descriptor];
  if ([descriptor2 hasBiases])
  {

    goto LABEL_11;
  }

  descriptor3 = [(MLCMultiheadAttentionLayer *)self descriptor];
  hasAttentionBiases2 = [descriptor3 hasAttentionBiases];

  if (hasAttentionBiases2)
  {
LABEL_11:
    for (i = 0; ; ++i)
    {
      biases2 = [(MLCMultiheadAttentionLayer *)self biases];
      v23 = [biases2 count];
      attentionBiases2 = [(MLCMultiheadAttentionLayer *)self attentionBiases];
      v25 = [attentionBiases2 count] + v23;

      if (i >= v25)
      {
        break;
      }

      biasesParameters = [(MLCMultiheadAttentionLayer *)self biasesParameters];
      v27 = [biasesParameters objectAtIndexedSubscript:i];
      device2 = [(MLCLayer *)self device];
      [v27 allocateDataForOptimizer:optimizerCopy device:device2 isVector:0];
    }
  }

  device3 = [(MLCLayer *)self device];
  computeEngine = [device3 computeEngine];
  deviceOps = [(MLCLayer *)self deviceOps];
  weights3 = [(MLCMultiheadAttentionLayer *)self weights];
  if ([v6 count])
  {
    v33 = v6;
  }

  else
  {
    v33 = 0;
  }

  [computeEngine setMHALayerOptimizerDataForDeviceOps:deviceOps optimizerDataForWeights:weights3 optimizerDataForBias:v33];

  return 1;
}

- (unint64_t)allocatedDataSizeForTraining:(BOOL)training optimizer:(id)optimizer
{
  trainingCopy = training;
  optimizerCopy = optimizer;
  weights = [(MLCMultiheadAttentionLayer *)self weights];
  v7 = [weights count];

  v8 = 0;
  if (v7)
  {
    v9 = 0;
    do
    {
      weights2 = [(MLCMultiheadAttentionLayer *)self weights];
      v11 = [weights2 objectAtIndexedSubscript:v9];
      descriptor = [v11 descriptor];
      v8 += [descriptor tensorAllocationSizeInBytes];

      if (trainingCopy)
      {
        weights3 = [(MLCMultiheadAttentionLayer *)self weights];
        v14 = [weights3 objectAtIndexedSubscript:v9];
        descriptor2 = [v14 descriptor];
        tensorAllocationSizeInBytes = [descriptor2 tensorAllocationSizeInBytes];
        v8 += [optimizerCopy numOptimizerDataBuffers] * tensorAllocationSizeInBytes;
      }

      ++v9;
      weights4 = [(MLCMultiheadAttentionLayer *)self weights];
      v18 = [weights4 count];
    }

    while (v9 < v18);
  }

  descriptor3 = [(MLCMultiheadAttentionLayer *)self descriptor];
  if ([descriptor3 hasBiases])
  {
  }

  else
  {
    descriptor4 = [(MLCMultiheadAttentionLayer *)self descriptor];
    hasAttentionBiases = [descriptor4 hasAttentionBiases];

    if (!hasAttentionBiases)
    {
      v22 = 0;
      goto LABEL_15;
    }
  }

  v22 = 0;
  for (i = 0; ; ++i)
  {
    biases = [(MLCMultiheadAttentionLayer *)self biases];
    v25 = [biases count];
    attentionBiases = [(MLCMultiheadAttentionLayer *)self attentionBiases];
    v27 = [attentionBiases count] + v25;

    if (i >= v27)
    {
      break;
    }

    biasesParameters = [(MLCMultiheadAttentionLayer *)self biasesParameters];
    v29 = [biasesParameters objectAtIndexedSubscript:i];
    tensor = [v29 tensor];
    descriptor5 = [tensor descriptor];
    tensorAllocationSizeInBytes2 = [descriptor5 tensorAllocationSizeInBytes];

    v22 += tensorAllocationSizeInBytes2;
    if (trainingCopy)
    {
      v22 += [optimizerCopy numOptimizerDataBuffers] * tensorAllocationSizeInBytes2;
    }
  }

LABEL_15:

  return v22 + v8;
}

- (id)resultTensorFromSources:(id)sources
{
  sourcesCopy = sources;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  for (i = 0; ; ++i)
  {
    v7 = [sourcesCopy objectAtIndexedSubscript:0];
    descriptor = [v7 descriptor];
    shape = [descriptor shape];
    v10 = [shape count];

    if (i >= v10)
    {
      break;
    }

    v11 = [sourcesCopy objectAtIndexedSubscript:0];
    descriptor2 = [v11 descriptor];
    shape2 = [descriptor2 shape];
    v14 = [shape2 objectAtIndexedSubscript:i];
    v15 = -[MLCLayer resultSizeFromSourceSize:dimension:](self, "resultSizeFromSourceSize:dimension:", [v14 unsignedIntegerValue], i);

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
    [v5 setObject:v16 atIndexedSubscript:i];
  }

  v17 = [v5 copy];
  v18 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor3 = [v18 descriptor];
  v20 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v17, [descriptor3 dataType]);

  v21 = [MLCTensor tensorWithDescriptor:v20];

  return v21;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  descriptor = [(MLCMultiheadAttentionLayer *)self descriptor];
  weights = [(MLCMultiheadAttentionLayer *)self weights];
  biases = [(MLCMultiheadAttentionLayer *)self biases];
  attentionBiases = [(MLCMultiheadAttentionLayer *)self attentionBiases];
  resultTensors = [(MLCLayer *)self resultTensors];
  v11 = [v3 stringWithFormat:@"%@: { descriptor=%@ : weights=%@ : biases=%@ : attentioBias=%@ : resultTensor=%@ }", v5, descriptor, weights, biases, attentionBiases, resultTensors];

  return v11;
}

- (id)summarizedDOTDescription
{
  v23 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v21 = NSStringFromClass(v3);
  layerID = [(MLCLayer *)self layerID];
  descriptor = [(MLCMultiheadAttentionLayer *)self descriptor];
  modelDimension = [descriptor modelDimension];
  descriptor2 = [(MLCMultiheadAttentionLayer *)self descriptor];
  keyDimension = [descriptor2 keyDimension];
  descriptor3 = [(MLCMultiheadAttentionLayer *)self descriptor];
  valueDimension = [descriptor3 valueDimension];
  descriptor4 = [(MLCMultiheadAttentionLayer *)self descriptor];
  headCount = [descriptor4 headCount];
  descriptor5 = [(MLCMultiheadAttentionLayer *)self descriptor];
  [descriptor5 dropout];
  v10 = v9;
  descriptor6 = [(MLCMultiheadAttentionLayer *)self descriptor];
  hasBiases = [descriptor6 hasBiases];
  descriptor7 = [(MLCMultiheadAttentionLayer *)self descriptor];
  hasAttentionBiases = [descriptor7 hasAttentionBiases];
  descriptor8 = [(MLCMultiheadAttentionLayer *)self descriptor];
  v16 = [v23 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Model Dimension: %lu    Key Dimension: %lu    Value Dimension: %lu<BR />Head Count: %lu          Dropout: %.03f           Has Biases: %hhd<BR />Has Attention Biases: %hhd    Adds Zero Attention: %hhd</FONT>>", v21, layerID, modelDimension, keyDimension, valueDimension, headCount, *&v10, hasBiases, hasAttentionBiases, objc_msgSend(descriptor8, "addsZeroAttention")];

  return v16;
}

- (BOOL)isSupportedShapeForTensorSources:(id)sources
{
  sourcesCopy = sources;
  if ([sourcesCopy count])
  {
    for (i = 0; i < [sourcesCopy count]; ++i)
    {
      v5 = [sourcesCopy objectAtIndexedSubscript:i];
      descriptor = [v5 descriptor];
      shape = [descriptor shape];
      v8 = [shape count];

      if (i > 2)
      {
        if (v8 < 2)
        {
LABEL_9:
          v9 = 0;
          goto LABEL_10;
        }
      }

      else if (v8 < 3)
      {
        goto LABEL_9;
      }
    }
  }

  v9 = 1;
LABEL_10:

  return v9;
}

- (void)linkAssociatedTensors
{
  weights = [(MLCMultiheadAttentionLayer *)self weights];
  v4 = [weights count];

  if (v4)
  {
    v5 = 0;
    do
    {
      weights2 = [(MLCMultiheadAttentionLayer *)self weights];
      v7 = [weights2 objectAtIndexedSubscript:v5];
      childLayers = [v7 childLayers];
      [childLayers addObject:self];

      ++v5;
      weights3 = [(MLCMultiheadAttentionLayer *)self weights];
      v10 = [weights3 count];
    }

    while (v5 < v10);
  }

  descriptor = [(MLCMultiheadAttentionLayer *)self descriptor];
  hasBiases = [descriptor hasBiases];

  if (hasBiases)
  {
    biases = [(MLCMultiheadAttentionLayer *)self biases];
    v14 = [biases count];

    if (v14)
    {
      v15 = 0;
      do
      {
        biases2 = [(MLCMultiheadAttentionLayer *)self biases];
        v17 = [biases2 objectAtIndexedSubscript:v15];
        childLayers2 = [v17 childLayers];
        [childLayers2 addObject:self];

        ++v15;
        biases3 = [(MLCMultiheadAttentionLayer *)self biases];
        v20 = [biases3 count];
      }

      while (v15 < v20);
    }
  }

  descriptor2 = [(MLCMultiheadAttentionLayer *)self descriptor];
  hasAttentionBiases = [descriptor2 hasAttentionBiases];

  if (hasAttentionBiases)
  {
    attentionBiases = [(MLCMultiheadAttentionLayer *)self attentionBiases];
    v24 = [attentionBiases count];

    if (v24)
    {
      v25 = 0;
      do
      {
        attentionBiases2 = [(MLCMultiheadAttentionLayer *)self attentionBiases];
        v27 = [attentionBiases2 objectAtIndexedSubscript:v25];
        childLayers3 = [v27 childLayers];
        [childLayers3 addObject:self];

        ++v25;
        attentionBiases3 = [(MLCMultiheadAttentionLayer *)self attentionBiases];
        v30 = [attentionBiases3 count];
      }

      while (v25 < v30);
    }
  }
}

- (void)unlinkAssociatedTensors
{
  weights = [(MLCMultiheadAttentionLayer *)self weights];
  v4 = [weights count];

  if (v4)
  {
    v5 = 0;
    do
    {
      weights2 = [(MLCMultiheadAttentionLayer *)self weights];
      v7 = [weights2 objectAtIndexedSubscript:v5];
      childLayers = [v7 childLayers];
      [childLayers removeObject:self];

      ++v5;
      weights3 = [(MLCMultiheadAttentionLayer *)self weights];
      v10 = [weights3 count];
    }

    while (v5 < v10);
  }

  descriptor = [(MLCMultiheadAttentionLayer *)self descriptor];
  hasBiases = [descriptor hasBiases];

  if (hasBiases)
  {
    biases = [(MLCMultiheadAttentionLayer *)self biases];
    v14 = [biases count];

    if (v14)
    {
      v15 = 0;
      do
      {
        biases2 = [(MLCMultiheadAttentionLayer *)self biases];
        v17 = [biases2 objectAtIndexedSubscript:v15];
        childLayers2 = [v17 childLayers];
        [childLayers2 removeObject:self];

        ++v15;
        biases3 = [(MLCMultiheadAttentionLayer *)self biases];
        v20 = [biases3 count];
      }

      while (v15 < v20);
    }
  }

  descriptor2 = [(MLCMultiheadAttentionLayer *)self descriptor];
  hasAttentionBiases = [descriptor2 hasAttentionBiases];

  if (hasAttentionBiases)
  {
    attentionBiases = [(MLCMultiheadAttentionLayer *)self attentionBiases];
    v24 = [attentionBiases count];

    if (v24)
    {
      v25 = 0;
      do
      {
        attentionBiases2 = [(MLCMultiheadAttentionLayer *)self attentionBiases];
        v27 = [attentionBiases2 objectAtIndexedSubscript:v25];
        childLayers3 = [v27 childLayers];
        [childLayers3 removeObject:self];

        ++v25;
        attentionBiases3 = [(MLCMultiheadAttentionLayer *)self attentionBiases];
        v30 = [attentionBiases3 count];
      }

      while (v25 < v30);
    }
  }
}

- (void)allocateGradientsForParameters
{
  weights = [(MLCMultiheadAttentionLayer *)self weights];
  v13 = [weights mutableCopy];

  descriptor = [(MLCMultiheadAttentionLayer *)self descriptor];
  hasBiases = [descriptor hasBiases];

  if (hasBiases)
  {
    biases = [(MLCMultiheadAttentionLayer *)self biases];
    [v13 addObjectsFromArray:biases];
  }

  descriptor2 = [(MLCMultiheadAttentionLayer *)self descriptor];
  hasAttentionBiases = [descriptor2 hasAttentionBiases];

  if (hasAttentionBiases)
  {
    attentionBiases = [(MLCMultiheadAttentionLayer *)self attentionBiases];
    [v13 addObjectsFromArray:attentionBiases];
  }

  device = [(MLCLayer *)self device];
  computeEngine = [device computeEngine];
  deviceOps = [(MLCLayer *)self deviceOps];
  [computeEngine allocateParameterGradientsForDeviceOps:deviceOps parameters:v13];
}

- (unint64_t)parametersCount
{
  weightsParameters = [(MLCMultiheadAttentionLayer *)self weightsParameters];
  v4 = [weightsParameters count];

  biasesParameters = [(MLCMultiheadAttentionLayer *)self biasesParameters];

  if (biasesParameters)
  {
    biasesParameters2 = [(MLCMultiheadAttentionLayer *)self biasesParameters];
    v4 += [biasesParameters2 count];
  }

  return v4;
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.2(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.3(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.4(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.5(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.6(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.7(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.8(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.9(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.10(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.11(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.12(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.13(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.14(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.15(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.16(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)initWithDescriptor:(const char *)a1 weights:bias:attentionBias:.cold.17(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.2(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.3(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.4(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.5(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.6(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.7(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end