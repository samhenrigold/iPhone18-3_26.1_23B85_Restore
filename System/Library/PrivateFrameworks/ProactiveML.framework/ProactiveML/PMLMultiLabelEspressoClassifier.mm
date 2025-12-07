@interface PMLMultiLabelEspressoClassifier
+ (id)classifierWithEspressoModelFile:(id)file;
+ (id)makeStringForShape:(unint64_t)shape[10];
+ (unint64_t)getNumParametersFromShape:(unint64_t)shape[10] rank:(unint64_t)rank;
- (PMLMultiLabelEspressoClassifier)initWithEspressoContext:(void *)context espressoPlan:(void *)plan espressoModel:(id)model inputNumParameters:(unint64_t)parameters outputNumReplyClasses:(unint64_t)classes;
- (id)predict:(id)predict;
- (void)dealloc;
@end

@implementation PMLMultiLabelEspressoClassifier

- (id)predict:(id)predict
{
  v29 = *MEMORY[0x277D85DE8];
  predictCopy = predict;
  v5 = objc_opt_new();
  v6 = objc_autoreleasePoolPush();
  [@"inputSequence" cStringUsingEncoding:4];
  v7 = espresso_network_bind_buffer();
  if (v7)
  {
    v8 = v7;
    v9 = PML_LogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      LODWORD(v27[0]) = 138412546;
      *(v27 + 4) = @"inputSequence";
      WORD6(v27[0]) = 1024;
      *(v27 + 14) = v8;
      v10 = "Could not bind the input buffer to layer %@ in espresso plan, status code %d";
      v11 = v27;
LABEL_7:
      v14 = v9;
      v15 = 18;
LABEL_8:
      _os_log_fault_impl(&dword_260D68000, v14, OS_LOG_TYPE_FAULT, v10, v11, v15);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  [predictCopy sparseVectorToDense:0 length:self->_inputNumParameters];
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  [@"outputLabels" cStringUsingEncoding:4];
  v12 = espresso_network_bind_buffer();
  if (v12)
  {
    v13 = v12;
    v9 = PML_LogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      v24 = @"outputLabels";
      v25 = 1024;
      v26 = v13;
      v10 = "Could not bind the output buffer to layer %@ in espresso plan, status code %d";
      v11 = buf;
      goto LABEL_7;
    }

LABEL_11:

    objc_autoreleasePoolPop(v6);
    v19 = 0;
    goto LABEL_12;
  }

  v16 = espresso_plan_execute_sync();
  if (v16)
  {
    v18 = v16;
    v9 = PML_LogHandle();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_11;
    }

    *buf = 67109120;
    LODWORD(v24) = v18;
    v10 = "Could not execute espresso plan, status code %d";
    v11 = buf;
    v14 = v9;
    v15 = 8;
    goto LABEL_8;
  }

  if (self->_outputNumReplyClasses)
  {
    v21 = 0;
    do
    {
      LODWORD(v17) = *(*&v27[0] + 4 * v21);
      v22 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
      [v5 addObject:v22];

      ++v21;
    }

    while (self->_outputNumReplyClasses > v21);
  }

  objc_autoreleasePoolPop(v6);
  v19 = v5;
LABEL_12:

  return v19;
}

- (PMLMultiLabelEspressoClassifier)initWithEspressoContext:(void *)context espressoPlan:(void *)plan espressoModel:(id)model inputNumParameters:(unint64_t)parameters outputNumReplyClasses:(unint64_t)classes
{
  v9 = *&model.var1;
  var0 = model.var0;
  v14.receiver = self;
  v14.super_class = PMLMultiLabelEspressoClassifier;
  result = [(PMLMultiLabelEspressoClassifier *)&v14 init];
  if (result)
  {
    result->_espressoPlan = plan;
    result->_espressoContext = context;
    result->_espressoModel.plan = var0;
    *&result->_espressoModel.network_index = v9;
    result->_outputNumReplyClasses = classes;
    result->_inputNumParameters = parameters;
  }

  return result;
}

- (void)dealloc
{
  espresso_plan_destroy();
  espresso_context_destroy();
  v3.receiver = self;
  v3.super_class = PMLMultiLabelEspressoClassifier;
  [(PMLMultiLabelEspressoClassifier *)&v3 dealloc];
}

+ (id)classifierWithEspressoModelFile:(id)file
{
  v73 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  context = espresso_create_context();
  if (!context)
  {
    v10 = PML_LogHandle();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v11 = "Could not create espresso context";
LABEL_24:
    v12 = v10;
    v13 = 2;
    goto LABEL_25;
  }

  v5 = context;
  plan = espresso_create_plan();
  if (!plan)
  {
    v10 = PML_LogHandle();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v11 = "Could not create espresso plan";
    goto LABEL_24;
  }

  v7 = plan;
  [fileCopy UTF8String];
  v8 = espresso_plan_add_network();
  if (v8)
  {
    v9 = v8;
    v10 = PML_LogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      *&buf[4] = fileCopy;
      *&buf[12] = 1024;
      *&buf[14] = 65568;
      *&buf[18] = 1024;
      *&buf[20] = v9;
      v11 = "Could not add espresso network from file %@ with storage type %05x, status code %d";
      v12 = v10;
      v13 = 24;
LABEL_25:
      _os_log_fault_impl(&dword_260D68000, v12, OS_LOG_TYPE_FAULT, v11, buf, v13);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  [@"inputSequence" cStringUsingEncoding:4];
  v16 = espresso_network_declare_input();
  if (v16)
  {
    v17 = v16;
    v18 = PML_LogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      *&buf[4] = @"inputSequence";
      *&buf[12] = 1024;
      *&buf[14] = v17;
      v19 = "Could not declare espresso network input %@, status code %d";
LABEL_35:
      _os_log_fault_impl(&dword_260D68000, v18, OS_LOG_TYPE_FAULT, v19, buf, 0x12u);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  [@"outputLabels" cStringUsingEncoding:4];
  v20 = espresso_network_declare_output();
  if (v20)
  {
    v21 = v20;
    v18 = PML_LogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      *&buf[4] = @"outputLabels";
      *&buf[12] = 1024;
      *&buf[14] = v21;
      v19 = "Could not declare espresso network output %@, status code %d";
      goto LABEL_35;
    }

LABEL_19:

    goto LABEL_10;
  }

  v22 = espresso_plan_build();
  if (v22)
  {
    v23 = v22;
    v10 = PML_LogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      *&buf[4] = v23;
      v11 = "Could not build espresso plan, status code %d";
      v12 = v10;
      v13 = 8;
      goto LABEL_25;
    }

LABEL_9:

LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v24 = objc_autoreleasePoolPush();
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  memset(buf, 0, sizeof(buf));
  [@"inputSequence" cStringUsingEncoding:4];
  v25 = espresso_network_bind_buffer();
  if (v25)
  {
    v26 = v25;
    v27 = PML_LogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      *v52 = 138412546;
      *&v52[4] = @"inputSequence";
      *&v52[12] = 1024;
      *&v52[14] = v26;
      v28 = "Could not bind the input buffer to layer %@ in espresso plan during initialization, status code %d";
LABEL_32:
      v31 = v52;
LABEL_33:
      _os_log_fault_impl(&dword_260D68000, v27, OS_LOG_TYPE_FAULT, v28, v31, 0x12u);
      goto LABEL_43;
    }

    goto LABEL_43;
  }

  memset(v62, 0, sizeof(v62));
  v29 = espresso_buffer_unpack_tensor_shape();
  if (v29)
  {
    v30 = v29;
    v27 = PML_LogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      *v52 = 138412546;
      *&v52[4] = @"inputSequence";
      *&v52[12] = 1024;
      *&v52[14] = v30;
      v28 = "Unable to get input shape to layer %@ in espresso plan during initialization, status code %d";
      goto LABEL_32;
    }

LABEL_43:

    objc_autoreleasePoolPop(v24);
    goto LABEL_10;
  }

  v32 = 0x279ABF000uLL;
  v33 = [PMLMultiLabelEspressoClassifier getNumParametersFromShape:v62 rank:0];
  v34 = PML_LogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    v41 = [PMLMultiLabelEspressoClassifier makeStringForShape:v62];
    *v52 = 138413058;
    *&v52[4] = @"inputSequence";
    *&v52[12] = 2048;
    *&v52[14] = 0;
    *&v52[22] = 2112;
    *&v52[24] = v41;
    LOWORD(v53) = 2048;
    *(&v53 + 2) = v33;
    _os_log_debug_impl(&dword_260D68000, v34, OS_LOG_TYPE_DEBUG, "Input layer %@ has rank %zu, shape %@, num parameters %tu", v52, 0x2Au);
  }

  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  memset(v52, 0, sizeof(v52));
  [@"outputLabels" cStringUsingEncoding:4];
  v35 = espresso_network_bind_buffer();
  if (v35)
  {
    v36 = v35;
    v27 = PML_LogHandle();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_43;
    }

    LODWORD(v51[0]) = 138412546;
    *(v51 + 4) = @"outputLabels";
    WORD6(v51[0]) = 1024;
    *(v51 + 14) = v36;
    v28 = "Could not bind the output buffer to layer %@ in espresso plan during initialization, status code %d";
    v31 = v51;
    goto LABEL_33;
  }

  memset(v51, 0, sizeof(v51));
  v37 = espresso_buffer_unpack_tensor_shape();
  if (v37)
  {
    v38 = v37;
    v27 = PML_LogHandle();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_43;
    }

    *v43 = 138412546;
    v44 = @"outputLabels";
    v45 = 1024;
    LODWORD(v46) = v38;
    v28 = "Unable to get output shape to layer %@ in espresso plan during initialization, status code %d";
    v31 = v43;
    goto LABEL_33;
  }

  v39 = [PMLMultiLabelEspressoClassifier getNumParametersFromShape:v51 rank:0];
  v40 = PML_LogHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    v42 = [PMLMultiLabelEspressoClassifier makeStringForShape:v51];
    *v43 = 138413058;
    v44 = @"outputLabels";
    v45 = 2048;
    v46 = 0;
    v47 = 2112;
    v48 = v42;
    v49 = 2048;
    v50 = v39;
    _os_log_debug_impl(&dword_260D68000, v40, OS_LOG_TYPE_DEBUG, "Output layer %@ has rank %zu, shape %@, num parameters %tu", v43, 0x2Au);

    v32 = 0x279ABF000;
  }

  objc_autoreleasePoolPop(v24);
  v14 = [objc_alloc(*(v32 + 1880)) initWithEspressoContext:v5 espressoPlan:v7 espressoModel:0 inputNumParameters:0 outputNumReplyClasses:{v33, v39}];
LABEL_11:

  return v14;
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