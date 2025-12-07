@interface SGMultiHeadEspressoModel
+ (id)classifierWithEspressoModelFile:(id)file inputName:(id)name headDimensionality:(id)dimensionality;
+ (id)makeStringForShape:(unint64_t)shape[10];
+ (unint64_t)getNumParametersFromShape:(unint64_t)shape[10] rank:(unint64_t)rank;
- (SGMultiHeadEspressoModel)initWithEspressoContext:(void *)context espressoPlan:(void *)plan espressoModel:(id)model inputName:(id)name inputNumParameters:(unint64_t)parameters headDimensionality:(id)dimensionality;
- (id)predict:(id)predict;
- (id)predict:(id)predict heads:(id)heads;
- (void)dealloc;
@end

@implementation SGMultiHeadEspressoModel

- (id)predict:(id)predict
{
  headDimensionality = self->_headDimensionality;
  predictCopy = predict;
  allKeys = [(NSDictionary *)headDimensionality allKeys];
  v7 = [(SGMultiHeadEspressoModel *)self predict:predictCopy heads:allKeys];

  return v7;
}

- (id)predict:(id)predict heads:(id)heads
{
  v74 = *MEMORY[0x277D85DE8];
  predictCopy = predict;
  headsCopy = heads;
  if (![headsCopy count])
  {
    v21 = MEMORY[0x277CBEC10];
    goto LABEL_45;
  }

  v58 = predictCopy;
  v8 = objc_opt_new();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v57 = headsCopy;
  v9 = headsCopy;
  v10 = [v9 countByEnumeratingWithState:&v61 objects:v73 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v62;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v62 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v61 + 1) + 8 * i);
        v15 = [(NSDictionary *)self->_headDimensionality objectForKeyedSubscript:v14];

        if (v15)
        {
          [v8 addObject:v14];
        }

        else
        {
          v16 = sgLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v70 = v14;
            _os_log_impl(&dword_24799E000, v16, OS_LOG_TYPE_INFO, "Could not validate existence of head %@ in model", buf, 0xCu);
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v61 objects:v73 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v17 = [v8 count];
    v18 = sgLogHandle();
    v19 = v18;
    if (v17 >= 9)
    {
      predictCopy = v58;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        v20 = [v8 componentsJoinedByString:{@", "}];
        *buf = 138412546;
        v70 = v20;
        v71 = 2048;
        v72 = 8;
        _os_log_fault_impl(&dword_24799E000, v19, OS_LOG_TYPE_FAULT, "Running inference on heads %@ but max heads for inference is %lu", buf, 0x16u);
      }

      goto LABEL_43;
    }

    predictCopy = v58;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v22 = [v8 componentsJoinedByString:{@", "}];
      *buf = 138412290;
      v70 = v22;
      _os_log_impl(&dword_24799E000, v19, OS_LOG_TYPE_INFO, "Running multi-head inference on heads %@", buf, 0xCu);
    }

    v19 = objc_opt_new();
    v23 = objc_autoreleasePoolPush();
    [(NSString *)self->_inputName cStringUsingEncoding:4];
    v24 = espresso_network_bind_buffer();
    if (v24)
    {
      v25 = v24;
      v26 = sgLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        inputName = self->_inputName;
        *buf = 138412546;
        v70 = inputName;
        v71 = 1024;
        LODWORD(v72) = v25;
        _os_log_fault_impl(&dword_24799E000, v26, OS_LOG_TYPE_FAULT, "Could not bind the input buffer to layer %@ in espresso plan, status code %d", buf, 0x12u);
      }

      goto LABEL_42;
    }

    [v58 sparseVectorToDense:0 length:self->_inputNumParameters];
    bzero(buf, 0x540uLL);
    if ([v8 count])
    {
      context = v23;
      v28 = 0;
      v29 = 0;
      v30 = buf;
      *&v27 = 138412546;
      v56 = v27;
      do
      {
        v31 = [v8 objectAtIndexedSubscript:{v29, v56}];
        [v31 cStringUsingEncoding:4];
        v32 = espresso_network_bind_buffer();
        if (v32)
        {
          v33 = v32;
          v34 = sgLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
          {
            *v65 = v56;
            v66 = v31;
            v67 = 1024;
            v68 = v33;
            _os_log_fault_impl(&dword_24799E000, v34, OS_LOG_TYPE_FAULT, "Could not bind the output buffer to layer %@ in espresso plan, status code %d", v65, 0x12u);
          }

          v28 = 1;
        }

        v35 = objc_alloc(MEMORY[0x277CBEB18]);
        v36 = [(NSDictionary *)self->_headDimensionality objectForKeyedSubscript:v31];
        v37 = [v35 initWithCapacity:{objc_msgSend(v36, "unsignedIntegerValue")}];
        [v19 setObject:v37 forKeyedSubscript:v31];

        ++v29;
        v30 += 168;
      }

      while (v29 < [v8 count]);
      v23 = context;
      if (v28)
      {
        v38 = sgLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
        {
          *v65 = 0;
          v39 = "Could not bind output buffer to network given output names";
          v40 = v38;
          v41 = 2;
LABEL_56:
          _os_log_fault_impl(&dword_24799E000, v40, OS_LOG_TYPE_FAULT, v39, v65, v41);
          goto LABEL_41;
        }

        goto LABEL_41;
      }
    }

    v42 = espresso_plan_execute_sync();
    if (v42)
    {
      v43 = v42;
      v38 = sgLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        *v65 = 67109120;
        LODWORD(v66) = v43;
        v39 = "Could not execute espresso plan, status code %d";
        v40 = v38;
        v41 = 8;
        goto LABEL_56;
      }

LABEL_41:

LABEL_42:
      objc_autoreleasePoolPop(v23);
LABEL_43:
      v21 = 0;
      goto LABEL_44;
    }

    contexta = v23;
    if ([v8 count])
    {
      v45 = 0;
      do
      {
        v46 = [v8 objectAtIndexedSubscript:v45];
        v47 = [(NSDictionary *)self->_headDimensionality objectForKeyedSubscript:v46];
        unsignedIntegerValue = [v47 unsignedIntegerValue];

        if (unsignedIntegerValue)
        {
          v50 = 0;
          do
          {
            LODWORD(v49) = *(*&buf[168 * v45] + 4 * v50);
            v51 = [MEMORY[0x277CCABB0] numberWithFloat:v49];
            v52 = [v19 objectForKeyedSubscript:v46];
            [v52 setObject:v51 atIndexedSubscript:v50];

            ++v50;
            v53 = [(NSDictionary *)self->_headDimensionality objectForKeyedSubscript:v46];
            unsignedIntegerValue2 = [v53 unsignedIntegerValue];
          }

          while (v50 < unsignedIntegerValue2);
        }

        ++v45;
      }

      while (v45 < [v8 count]);
    }

    objc_autoreleasePoolPop(contexta);
    v19 = v19;
    v21 = v19;
  }

  else
  {
    v19 = sgLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_24799E000, v19, OS_LOG_TYPE_FAULT, "No available heads were found for inference", buf, 2u);
    }

    v21 = 0;
  }

  predictCopy = v58;
LABEL_44:

  headsCopy = v57;
LABEL_45:

  return v21;
}

- (SGMultiHeadEspressoModel)initWithEspressoContext:(void *)context espressoPlan:(void *)plan espressoModel:(id)model inputName:(id)name inputNumParameters:(unint64_t)parameters headDimensionality:(id)dimensionality
{
  v10 = *&model.var1;
  var0 = model.var0;
  nameCopy = name;
  dimensionalityCopy = dimensionality;
  v20.receiver = self;
  v20.super_class = SGMultiHeadEspressoModel;
  v17 = [(SGMultiHeadEspressoModel *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_espressoPlan = plan;
    v17->_espressoContext = context;
    v17->_espressoModel.plan = var0;
    *&v17->_espressoModel.network_index = v10;
    objc_storeStrong(&v17->_inputName, name);
    v18->_inputNumParameters = parameters;
    objc_storeStrong(&v18->_headDimensionality, dimensionality);
  }

  return v18;
}

- (void)dealloc
{
  espresso_plan_destroy();
  espresso_context_destroy();
  v3.receiver = self;
  v3.super_class = SGMultiHeadEspressoModel;
  [(SGMultiHeadEspressoModel *)&v3 dealloc];
}

+ (id)classifierWithEspressoModelFile:(id)file inputName:(id)name headDimensionality:(id)dimensionality
{
  v125 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  nameCopy = name;
  dimensionalityCopy = dimensionality;
  v10 = espresso_create_context();
  if (!v10)
  {
    v16 = sgLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v17 = "Could not create espresso context";
LABEL_10:
    v18 = v16;
    v19 = 2;
    goto LABEL_11;
  }

  v11 = v10;
  plan = espresso_create_plan();
  if (!plan)
  {
    v16 = sgLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v17 = "Could not create espresso plan";
    goto LABEL_10;
  }

  v13 = plan;
  v88 = 0;
  v89 = 0;
  [fileCopy UTF8String];
  v14 = espresso_plan_add_network();
  if (v14)
  {
    v15 = v14;
    v16 = sgLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      *&buf[4] = fileCopy;
      *&buf[12] = 1024;
      *&buf[14] = 65568;
      *&buf[18] = 1024;
      *&buf[20] = v15;
      v17 = "Could not add espresso network from file %@ with storage type %05x, status code %d";
      v18 = v16;
      v19 = 24;
LABEL_11:
      _os_log_fault_impl(&dword_24799E000, v18, OS_LOG_TYPE_FAULT, v17, buf, v19);
    }

LABEL_32:

LABEL_33:
    v34 = 0;
    goto LABEL_34;
  }

  [nameCopy cStringUsingEncoding:4];
  v20 = espresso_network_declare_input();
  if (v20)
  {
    v21 = v20;
    v16 = sgLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_32;
    }

    *buf = 138412546;
    *&buf[4] = nameCopy;
    *&buf[12] = 1024;
    *&buf[14] = v21;
    v17 = "Could not declare espresso network input %@, status code %d";
    v18 = v16;
    v19 = 18;
    goto LABEL_11;
  }

  v72 = v11;
  v87 = 0u;
  v85 = 0u;
  v86 = 0u;
  v84 = 0u;
  v22 = dimensionalityCopy;
  v23 = [v22 countByEnumeratingWithState:&v84 objects:v124 count:16];
  if (v23)
  {
    v24 = v23;
    v74 = nameCopy;
    v76 = fileCopy;
    v25 = 0;
    v26 = *v85;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v85 != v26)
        {
          objc_enumerationMutation(v22);
        }

        v28 = *(*(&v84 + 1) + 8 * i);
        [v28 cStringUsingEncoding:4];
        v29 = espresso_network_declare_output();
        if (v29)
        {
          v30 = v29;
          v31 = sgLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412546;
            *&buf[4] = v28;
            *&buf[12] = 1024;
            *&buf[14] = v30;
            _os_log_fault_impl(&dword_24799E000, v31, OS_LOG_TYPE_FAULT, "Could not declare espresso network output %@, status code %d", buf, 0x12u);
          }

          v25 = 1;
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v84 objects:v124 count:16];
    }

    while (v24);

    nameCopy = v74;
    fileCopy = v76;
    if (v25)
    {
      v16 = sgLogHandle();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_32;
      }

      *buf = 0;
      v17 = "Espresso multi head model did not have all declared heads";
      goto LABEL_10;
    }
  }

  else
  {
  }

  v32 = espresso_plan_build();
  if (v32)
  {
    v33 = v32;
    v16 = sgLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_32;
    }

    *buf = 67109120;
    *&buf[4] = v33;
    v17 = "Could not build espresso plan, status code %d";
    v18 = v16;
    v19 = 8;
    goto LABEL_11;
  }

  context = objc_autoreleasePoolPush();
  v123 = 0;
  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  memset(buf, 0, sizeof(buf));
  [nameCopy cStringUsingEncoding:4];
  v36 = espresso_network_bind_buffer();
  if (v36)
  {
    v37 = v36;
    v38 = sgLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      *v102 = 138412546;
      *&v102[4] = nameCopy;
      *&v102[12] = 1024;
      *&v102[14] = v37;
      v39 = "Could not bind the input buffer to layer %@ in espresso plan during initialization, status code %d";
LABEL_76:
      _os_log_fault_impl(&dword_24799E000, v38, OS_LOG_TYPE_FAULT, v39, v102, 0x12u);
      goto LABEL_42;
    }

    goto LABEL_42;
  }

  v83 = 0;
  memset(v113, 0, sizeof(v113));
  v40 = espresso_buffer_unpack_tensor_shape();
  if (v40)
  {
    v41 = v40;
    v38 = sgLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      *v102 = 138412546;
      *&v102[4] = nameCopy;
      *&v102[12] = 1024;
      *&v102[14] = v41;
      v39 = "Unable to get input shape to layer %@ in espresso plan during initialization, status code %d";
      goto LABEL_76;
    }

LABEL_42:

    objc_autoreleasePoolPop(context);
    goto LABEL_33;
  }

  v73 = dimensionalityCopy;
  v77 = fileCopy;
  v42 = [SGMultiHeadEspressoModel getNumParametersFromShape:v113 rank:v83];
  v43 = sgLogHandle();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    v68 = [SGMultiHeadEspressoModel makeStringForShape:v113];
    *v102 = 138413058;
    *&v102[4] = nameCopy;
    *&v102[12] = 2048;
    *&v102[14] = v83;
    *&v102[22] = 2112;
    *&v102[24] = v68;
    LOWORD(v103) = 2048;
    *(&v103 + 2) = v42;
    _os_log_debug_impl(&dword_24799E000, v43, OS_LOG_TYPE_DEBUG, "Input layer %@ has rank %zu, shape %@, num parameters %tu", v102, 0x2Au);
  }

  v75 = nameCopy;

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v44 = v22;
  v45 = [v44 countByEnumeratingWithState:&v79 objects:v112 count:16];
  if (!v45)
  {

    goto LABEL_74;
  }

  v46 = v45;
  v70 = v42;
  v47 = 0;
  v48 = *v80;
  do
  {
    for (j = 0; j != v46; ++j)
    {
      if (*v80 != v48)
      {
        objc_enumerationMutation(v44);
      }

      v50 = *(*(&v79 + 1) + 8 * j);
      v51 = [v44 objectForKeyedSubscript:v50];
      v111 = 0;
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      memset(v102, 0, sizeof(v102));
      [v50 cStringUsingEncoding:4];
      v52 = espresso_network_bind_buffer();
      if (!v52)
      {
        v100 = 0u;
        v101 = 0u;
        v99 = 0u;
        memset(v98, 0, sizeof(v98));
        v55 = espresso_buffer_unpack_tensor_shape();
        if (v55)
        {
          v56 = v55;
          v57 = sgLogHandle();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
          {
            *v90 = 138412546;
            v91 = v50;
            v92 = 1024;
            LODWORD(v93) = v56;
            v58 = v57;
            v59 = "Unable to get output shape to layer %@ in espresso plan during initialization, status code %d";
            v60 = 18;
            goto LABEL_63;
          }

          goto LABEL_64;
        }

        v78 = v47;
        v61 = [SGMultiHeadEspressoModel getNumParametersFromShape:v98 rank:0];
        unsignedIntegerValue = [v51 unsignedIntegerValue];
        v63 = sgLogHandle();
        v57 = v63;
        if (unsignedIntegerValue == v61)
        {
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
          {
            v65 = [SGMultiHeadEspressoModel makeStringForShape:v98];
            *v90 = 138413058;
            v91 = v50;
            v92 = 2048;
            v93 = 0;
            v94 = 2112;
            v95 = v65;
            v96 = 2048;
            v97 = v61;
            _os_log_debug_impl(&dword_24799E000, v57, OS_LOG_TYPE_DEBUG, "Output layer %@ has rank %zu, shape %@, num parameters %tu", v90, 0x2Au);
          }

          v47 = v78;
        }

        else
        {
          if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
          {
            unsignedIntegerValue2 = [v51 unsignedIntegerValue];
            *v90 = 138412802;
            v91 = v50;
            v92 = 2048;
            v93 = unsignedIntegerValue2;
            v94 = 2048;
            v95 = v61;
            v58 = v57;
            v59 = "Output layer %@ has expected dimensionality %lu but has actual dimensionality %lu";
            v60 = 32;
LABEL_63:
            _os_log_fault_impl(&dword_24799E000, v58, OS_LOG_TYPE_FAULT, v59, v90, v60);
          }

LABEL_64:
          v47 = 1;
        }

        goto LABEL_66;
      }

      v53 = v52;
      v54 = sgLogHandle();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
      {
        *v98 = 138412546;
        *&v98[4] = v50;
        *&v98[12] = 1024;
        *&v98[14] = v53;
        _os_log_fault_impl(&dword_24799E000, v54, OS_LOG_TYPE_FAULT, "Could not bind the output buffer to layer %@ in espresso plan during initialization, status code %d", v98, 0x12u);
      }

      v47 = 1;
LABEL_66:
    }

    v46 = [v44 countByEnumeratingWithState:&v79 objects:v112 count:16];
  }

  while (v46);

  v42 = v70;
  if ((v47 & 1) == 0)
  {
LABEL_74:
    objc_autoreleasePoolPop(context);
    v67 = [SGMultiHeadEspressoModel alloc];
    v69 = v44;
    nameCopy = v75;
    v34 = [(SGMultiHeadEspressoModel *)v67 initWithEspressoContext:v72 espressoPlan:v13 espressoModel:v88 inputName:v89 inputNumParameters:v75 headDimensionality:v42, v69];
    fileCopy = v77;
    dimensionalityCopy = v73;
    goto LABEL_34;
  }

  v66 = sgLogHandle();
  fileCopy = v77;
  dimensionalityCopy = v73;
  if (os_log_type_enabled(v66, OS_LOG_TYPE_FAULT))
  {
    *v102 = 0;
    _os_log_fault_impl(&dword_24799E000, v66, OS_LOG_TYPE_FAULT, "Espresso multi head model output dimensionality did not match that expected", v102, 2u);
  }

  objc_autoreleasePoolPop(context);
  v34 = 0;
  nameCopy = v75;
LABEL_34:

  return v34;
}

+ (unint64_t)getNumParametersFromShape:(unint64_t)shape[10] rank:(unint64_t)rank
{
  if (!rank)
  {
    return 0;
  }

  rankCopy = 10;
  if (rank < 0xA)
  {
    rankCopy = rank;
  }

  result = 1;
  do
  {
    v6 = *shape++;
    result *= v6;
    --rankCopy;
  }

  while (rankCopy);
  return result;
}

+ (id)makeStringForShape:(unint64_t)shape[10]
{
  v4 = objc_opt_new();
  [v4 appendString:@"{"];
  for (i = 0; i != 10; ++i)
  {
    [v4 appendFormat:@" %zu", shape[i]];
  }

  [v4 appendString:@" }"];

  return v4;
}

@end