@interface PMLLogRegTrainingPlan
+ (id)planWithStore:(id)store tracker:(id)tracker sessionDescriptor:(id)descriptor arguments:(id)arguments;
- (NSString)description;
- (PMLLogRegTrainingPlan)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (PMLLogRegTrainingPlan)initWithStore:(id)store tracker:(id)tracker noiseStrategy:(id)strategy planId:(id)id sessionDescriptor:(id)descriptor maxSessionsLimit:(unint64_t)limit sessionsInBatch:(unint64_t)batch currentServerIteration:(unint64_t)self0 currentModelWeights:(id)self1 localLearningRate:(float)self2 stoppingThreshold:(float)self3 localMinimumIterations:(unint64_t)self4 localGradientIterations:(unint64_t)self5 useOnlyAppleInternalSessions:(BOOL)self6 skew:(double)self7 threshold:(double)self8 isMultiLabel:(BOOL)self9 intercept:(BOOL)intercept positiveLabel:(unint64_t)positiveLabel evaluationLevel:(unint64_t)level reportScale:(BOOL)scale;
- (id)evaluationMetricsForPredictions:(id)predictions objectives:(id)objectives predicate:(id)predicate start:(id)start;
- (id)normalizeRegressor:(id)regressor;
- (id)runWithError:(id *)error;
- (id)toPlistWithChunks:(id)chunks;
- (void)loadSessionsWithBlock:(id)block;
@end

@implementation PMLLogRegTrainingPlan

- (PMLLogRegTrainingPlan)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  v94[1] = *MEMORY[0x277D85DE8];
  plistCopy = plist;
  chunksCopy = chunks;
  contextCopy = context;
  v12 = [contextCopy objectForKeyedSubscript:@"TRAINING_STORE"];

  if (!v12)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v56 = objc_opt_class();
    v57 = NSStringFromClass(v56);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLLogRegTrainingPlan.m" lineNumber:369 description:{@"Can't instantiate %@. Missing store dependency.", v57}];
  }

  v13 = [plistCopy objectForKeyedSubscript:@"PLAN_ID"];
  v14 = [PMLSessionDescriptor alloc];
  v15 = [plistCopy objectForKeyedSubscript:@"SESSIONS_MODEL_HANDLE"];
  v16 = [(PMLSessionDescriptor *)v14 initWithPlist:v15 chunks:chunksCopy context:contextCopy];

  if (v16)
  {
    v88 = a2;
    v17 = [plistCopy objectForKeyedSubscript:@"NOISE_STRATEGY_TYPE"];
    if (([MEMORY[0x277D42590] isInternalBuild] & 1) == 0 && (objc_msgSend(MEMORY[0x277D42590], "isBetaBuild") & 1) == 0 && objc_msgSend(@"PMLNoNoiseStrategy", "isEqualToString:", v17))
    {

      v17 = @"PMLDiffPrivacyNoiseStrategy";
    }

    if ([@"PMLSeparatedDPNoiseStrategy" isEqualToString:v17])
    {
      v18 = [contextCopy mutableCopy];
      [(PMLSessionDescriptor *)v16 name];
      v20 = v19 = v17;
      v21 = [PMLSeparatedDPNoiseStrategy getPFLIdentifier:v20];
      [v18 setObject:v21 forKey:@"PFL_ID"];

      v17 = v19;
      contextCopy = v18;
    }

    v22 = [contextCopy objectForKeyedSubscript:@"PLUGIN_SHOULD_ADD_NOISE_AND_ENCRYPT_RESULT"];
    v23 = v22;
    if (v22 && ([v22 BOOLValue] & 1) == 0)
    {
      v24 = PML_LogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_260D68000, v24, OS_LOG_TYPE_DEFAULT, "PMLLogRegTrainingPlan running with no noise strategy since pluginShouldAddNoiseAndEncryptResult set to false", buf, 2u);
      }

      v17 = @"PMLNoNoiseStrategy";
    }

    v25 = objc_alloc(NSClassFromString(&v17->isa));
    v26 = [plistCopy objectForKeyedSubscript:@"NOISE_STRATEGY"];
    v27 = [v25 initWithPlist:v26 chunks:chunksCopy context:contextCopy];

    v28 = v27;
    if (v27)
    {
      v91 = v27;
      v29 = [PMLModelWeights alloc];
      v30 = [plistCopy objectForKeyedSubscript:@"WEIGHTS"];
      v27 = [(PMLModelWeights *)v29 initWithPlist:v30 chunks:chunksCopy context:contextCopy];

      v31 = v27;
      if (v27)
      {
        v90 = v27;
        v84 = v23;
        v85 = v17;
        v86 = v16;
        v32 = [plistCopy objectForKeyedSubscript:@"TRACKER_TYPE"];
        v33 = NSClassFromString(v32);
        if (!v33)
        {
          currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
          v59 = objc_opt_class();
          v60 = NSStringFromClass(v59);
          [currentHandler2 handleFailureInMethod:v88 object:self file:@"PMLLogRegTrainingPlan.m" lineNumber:407 description:{@"Can't instantiate %@. Unknown tracker class: %@", v60, v32}];
        }

        v34 = [v33 alloc];
        v35 = [plistCopy objectForKeyedSubscript:@"TRACKER"];
        v93 = @"planId";
        v94[0] = v13;
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:&v93 count:1];
        v89 = [v34 initWithPlist:v35 chunks:chunksCopy context:v36];

        v87 = [contextCopy objectForKeyedSubscript:@"TRAINING_STORE"];
        v83 = [plistCopy objectForKeyedSubscript:@"SESSIONS_LIMIT"];
        unsignedIntegerValue = [v83 unsignedIntegerValue];
        v82 = [plistCopy objectForKeyedSubscript:@"SESSIONS_IN_BATCH"];
        unsignedIntegerValue2 = [v82 unsignedIntegerValue];
        v81 = [plistCopy objectForKeyedSubscript:@"SERVER_ITERATION"];
        unsignedIntegerValue3 = [v81 unsignedIntegerValue];
        v80 = [plistCopy objectForKeyedSubscript:@"LEARNING_RATE"];
        [v80 floatValue];
        v38 = v37;
        v79 = [plistCopy objectForKeyedSubscript:@"STOPPING_THRESHOLD"];
        [v79 floatValue];
        v40 = v39;
        v77 = [plistCopy objectForKeyedSubscript:@"MIN_ITERATIONS"];
        unsignedIntegerValue4 = [v77 unsignedIntegerValue];
        v76 = [plistCopy objectForKeyedSubscript:@"GRADIENT_ITERATIONS"];
        unsignedIntegerValue5 = [v76 unsignedIntegerValue];
        v74 = [plistCopy objectForKeyedSubscript:@"ONLY_INTERNAL_SESSIONS"];
        bOOLValue = [v74 BOOLValue];
        v72 = [plistCopy objectForKeyedSubscript:@"SKEW"];
        [v72 doubleValue];
        v42 = v41;
        v70 = [plistCopy objectForKeyedSubscript:@"THRESHOLD"];
        [v70 doubleValue];
        v44 = v43;
        v68 = [plistCopy objectForKeyedSubscript:@"IS_MULTI_LABEL"];
        selfCopy = self;
        HIDWORD(v63) = [v68 BOOLValue];
        v66 = [plistCopy objectForKeyedSubscript:@"INTERCEPT"];
        LOBYTE(v35) = [v66 BOOLValue];
        [plistCopy objectForKeyedSubscript:@"POSITIVE_LABEL"];
        v46 = v45 = v13;
        v47 = chunksCopy;
        unsignedIntegerValue6 = [v46 unsignedIntegerValue];
        [plistCopy objectForKeyedSubscript:@"EVALUATION_LEVEL"];
        v49 = v71 = v32;
        unsignedIntegerValue7 = [v49 unsignedIntegerValue];
        v51 = [plistCopy objectForKeyedSubscript:@"REPORT_SCALE"];
        LOBYTE(v63) = [v51 BOOLValue];
        v62 = unsignedIntegerValue6;
        chunksCopy = v47;
        BYTE2(v61) = v35;
        BYTE1(v61) = BYTE4(v63);
        LOBYTE(v61) = bOOLValue;
        LODWORD(v52) = v38;
        LODWORD(v53) = v40;
        v28 = v91;
        v27 = [PMLLogRegTrainingPlan initWithStore:selfCopy tracker:"initWithStore:tracker:noiseStrategy:planId:sessionDescriptor:maxSessionsLimit:sessionsInBatch:currentServerIteration:currentModelWeights:localLearningRate:stoppingThreshold:localMinimumIterations:localGradientIterations:useOnlyAppleInternalSessions:skew:threshold:isMultiLabel:intercept:positiveLabel:evaluationLevel:reportScale:" noiseStrategy:v87 planId:v89 sessionDescriptor:v91 maxSessionsLimit:v45 sessionsInBatch:v86 currentServerIteration:unsignedIntegerValue currentModelWeights:v52 localLearningRate:v53 stoppingThreshold:v42 localMinimumIterations:v44 localGradientIterations:unsignedIntegerValue2 useOnlyAppleInternalSessions:unsignedIntegerValue3 skew:v90 threshold:unsignedIntegerValue4 isMultiLabel:unsignedIntegerValue5 intercept:v61 positiveLabel:v62 evaluationLevel:unsignedIntegerValue7 reportScale:v63];

        v16 = v86;
        v13 = v45;

        v31 = v90;
        self = v27;
        v23 = v84;
        v17 = v85;
      }

      else
      {
        v28 = v91;
      }
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)toPlistWithChunks:(id)chunks
{
  v35[24] = *MEMORY[0x277D85DE8];
  planId = self->_planId;
  v34[0] = @"PLAN_ID";
  v34[1] = @"IS_SYNCHRONOUS";
  v35[0] = planId;
  v35[1] = MEMORY[0x277CBEC38];
  v34[2] = @"SESSIONS_MODEL_HANDLE";
  sessionDescriptor = self->_sessionDescriptor;
  chunksCopy = chunks;
  v33 = [(PMLSessionDescriptor *)sessionDescriptor toPlistWithChunks:chunksCopy];
  v35[2] = v33;
  v34[3] = @"SESSIONS_LIMIT";
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_maxSessionsLimit];
  v35[3] = v32;
  v34[4] = @"SESSIONS_IN_BATCH";
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_sessionsInBatch];
  v35[4] = v31;
  v34[5] = @"WEIGHTS";
  v30 = [(PMLModelWeights *)self->_currentModelWeights toPlistWithChunks:chunksCopy];
  v35[5] = v30;
  v34[6] = @"LEARNING_RATE";
  *&v7 = self->_localLearningRate;
  v29 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v35[6] = v29;
  v34[7] = @"STOPPING_THRESHOLD";
  *&v8 = self->_stoppingThreshold;
  v28 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v35[7] = v28;
  v34[8] = @"MIN_ITERATIONS";
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_localMinimumIterations];
  v35[8] = v27;
  v34[9] = @"GRADIENT_ITERATIONS";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_localGradientIterations];
  v35[9] = v26;
  v34[10] = @"SERVER_ITERATION";
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentServerIteration];
  v35[10] = v25;
  v34[11] = @"IS_MULTI_LABEL";
  v24 = [MEMORY[0x277CCABB0] numberWithBool:self->_isMultiLabel];
  v35[11] = v24;
  v34[12] = @"POSITIVE_LABEL";
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_positiveLabel];
  v35[12] = v23;
  v34[13] = @"NOISE_STRATEGY_TYPE";
  v9 = objc_opt_class();
  v22 = NSStringFromClass(v9);
  v35[13] = v22;
  v34[14] = @"NOISE_STRATEGY";
  v21 = [(PMLNoiseStrategy *)self->_noiseStrategy toPlistWithChunks:chunksCopy];
  v35[14] = v21;
  v34[15] = @"ONLY_INTERNAL_SESSIONS";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_useOnlyAppleInternalSessions];
  v35[15] = v10;
  v34[16] = @"INTERCEPT";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_intercept];
  v35[16] = v11;
  v34[17] = @"TRACKER";
  v12 = [(PMLLogRegTrackerProtocol *)self->_tracker toPlistWithChunks:chunksCopy];

  v35[17] = v12;
  v34[18] = @"TRACKER_TYPE";
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v35[18] = v14;
  v34[19] = @"SKEW";
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:self->_skew];
  v35[19] = v15;
  v34[20] = @"THRESHOLD";
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:self->_threshold];
  v35[20] = v16;
  v34[21] = @"EVALUATION_LEVEL";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_evaluationLevel];
  v35[21] = v17;
  v34[22] = @"REPORT_SCALE";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:self->_reportScale];
  v34[23] = @"BEFORE_NOISE_SCALING";
  v35[22] = v18;
  v35[23] = &unk_287357EC0;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:24];

  return v19;
}

- (id)runWithError:(id *)error
{
  v43[2] = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    date = [MEMORY[0x277CBEAA8] date];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__697;
    v40 = __Block_byref_object_dispose__698;
    v41 = objc_opt_new();
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x2020000000;
    v34[3] = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__697;
    v32 = __Block_byref_object_dispose__698;
    v33 = 0;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __38__PMLLogRegTrainingPlan_runWithError___block_invoke;
    v23[3] = &unk_279ABFAE0;
    v23[4] = self;
    v25 = &v28;
    v26 = v34;
    v6 = date;
    v24 = v6;
    p_buf = &buf;
    [(PMLLogRegTrainingPlan *)self loadSessionsWithBlock:v23];
    if (error && (v7 = v29[5]) != 0)
    {
      v8 = 0;
      *error = v7;
    }

    else
    {
      v9 = [PMLPlanDescriptor descriptorFromPlanId:self->_planId];
      v35[0] = @"name";
      name = [v9 name];
      v36[0] = name;
      v35[1] = @"version";
      version = [v9 version];
      v36[1] = version;
      v35[2] = @"locale";
      locale = [v9 locale];
      v36[2] = locale;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:3];
      [*(*(&buf + 1) + 40) setObject:v13 forKeyedSubscript:@"plan"];

      v8 = *(*(&buf + 1) + 40);
    }

    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(v34, 8);
    _Block_object_dispose(&buf, 8);

    goto LABEL_8;
  }

  v15 = PML_LogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v22;
    _os_log_error_impl(&dword_260D68000, v15, OS_LOG_TYPE_ERROR, "Attempted to use PMLSeparatedDPNoiseStrategy with non-Fides tracker: %@.", &buf, 0xCu);
  }

  if (error)
  {
    v16 = MEMORY[0x277CCA9B8];
    v42[0] = @"PlanClass";
    v17 = objc_opt_class();
    v6 = NSStringFromClass(v17);
    v42[1] = @"NoiseStrategy";
    v43[0] = v6;
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v43[1] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
    *error = [v16 errorWithDomain:@"ProactiveMLErrorDomain" code:6 userInfo:v20];

    v8 = MEMORY[0x277CBEC10];
LABEL_8:

    goto LABEL_9;
  }

  v8 = MEMORY[0x277CBEC10];
LABEL_9:

  return v8;
}

void __38__PMLLogRegTrainingPlan_runWithError___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v72 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = PML_LogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1[4] + 32);
    *buf = 5.778e-34;
    v69 = v7;
    v70 = 2048;
    v71 = [v5 count];
    _os_log_impl(&dword_260D68000, v6, OS_LOG_TYPE_INFO, "Training model: %@ (available %lu sessions)", buf, 0x16u);
  }

  if ([v5 count])
  {
    v8 = [*(a1[4] + 64) length];
    v9 = [v5 covariates];
    v10 = [v9 numberOfColumns] + *(a1[4] + 145);

    if (v10 != v8)
    {
      v38 = objc_alloc(MEMORY[0x277CCACA8]);
      v39 = [v5 covariates];
      v15 = [v38 initWithFormat:@"Cannot train model with covariates of length %tu but model weights of length %d (planid = %@)", objc_msgSend(v39, "numberOfColumns"), objc_msgSend(*(a1[4] + 64), "length"), *(a1[4] + 152)];

      v40 = PML_LogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
        *buf = 5.7779e-34;
        v69 = v15;
        _os_log_fault_impl(&dword_260D68000, v40, OS_LOG_TYPE_FAULT, "%@", buf, 0xCu);
      }

      v41 = MEMORY[0x277CCA9B8];
      v66 = *MEMORY[0x277CCA450];
      v67 = v15;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
      v43 = [v41 errorWithDomain:@"ProactiveMLErrorDomain" code:100 userInfo:v42];
      v44 = *(a1[6] + 8);
      v45 = *(v44 + 40);
      *(v44 + 40) = v43;

      *a3 = 1;
      goto LABEL_33;
    }

    *(*(a1[7] + 8) + 24) += [v5 count];
    v11 = [*(a1[4] + 64) copy];
    v12 = a1[4];
    LODWORD(v13) = *(v12 + 80);
    LODWORD(v14) = *(v12 + 84);
    v15 = [PMLLogisticRegressionModel solverWithWeights:v11 andIntercept:*(v12 + 145) learningRate:*(v12 + 88) minIterations:v13 stoppingThreshold:v14];

    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __38__PMLLogRegTrainingPlan_runWithError___block_invoke_31;
    v65[3] = &unk_279AC07C0;
    v65[4] = a1[4];
    v16 = MEMORY[0x2666EE8E0](v65);
    v17 = [v5 covariates];
    [v15 setCovariates:v17];

    v18 = a1[4];
    v19 = [v5 outcomes];
    v20 = [v18 normalizeRegressor:v19];
    [v15 setObjective:v20];

    v21 = *(a1[4] + 56);
    v22 = [v5 covariates];
    v23 = [v15 batchPredict:v22];

    v24 = a1[4];
    v25 = [v5 outcomes];
    v26 = [v25 denseVector];
    v62 = v23;
    v63 = v16;
    v27 = [v24 evaluationMetricsForPredictions:v23 objectives:v26 predicate:v16 start:a1[5]];

    if (v21)
    {
      v61 = a3;
      v28 = [v15 computeAvgGradientWithIterations:*(a1[4] + 72)];
      v29 = [v28 gradient];
      v30 = [v28 loss];
      *buf = 1.0;
      v31 = [*(a1[4] + 24) scaleAndAddNoiseToDenseVector:v29 usingNorm:*(a1[4] + 144) scaleFactor:buf];
      if (v31)
      {
        v32 = a1[4];
        if (*(v32 + 144))
        {
          v33 = *buf;
        }

        else
        {
          v33 = 1.0;
        }

        v34 = *(v32 + 16);
        v35 = [v5 minibatchStatsForPositiveLabel:*(v32 + 128)];
        *&v36 = v33;
        v37 = [v34 trackGradient:v29 scaleFactor:v35 minibatchStats:v27 evaluationMetrics:*(a1[4] + 56) serverIteration:v36];

        if (v37)
        {
          [*(*(a1[8] + 8) + 40) setDictionary:v37];
          if (v30)
          {
            [*(*(a1[8] + 8) + 40) setObject:v30 forKeyedSubscript:@"loss"];
          }
        }
      }

      else
      {
        v54 = PML_LogHandle();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          *v64 = 0;
          _os_log_error_impl(&dword_260D68000, v54, OS_LOG_TYPE_ERROR, "scaleAndAddNoiseToDenseVector failed", v64, 2u);
        }

        v55 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ProactiveMLErrorDomain" code:7 userInfo:0];
        v56 = *(a1[6] + 8);
        v37 = *(v56 + 40);
        *(v56 + 40) = v55;
      }

      if (!v31)
      {
        goto LABEL_32;
      }
    }

    else
    {
      [v15 solve];
      v46 = [v15 weights];
      v47 = [v46 asMutableDenseVector];

      *buf = 1.0;
      if (([*(a1[4] + 24) scaleAndAddNoiseToDenseVector:v47 usingNorm:*(a1[4] + 144) scaleFactor:buf] & 1) == 0)
      {
        v57 = PML_LogHandle();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          *v64 = 0;
          _os_log_error_impl(&dword_260D68000, v57, OS_LOG_TYPE_ERROR, "scaleAndAddNoiseToDenseVector failed", v64, 2u);
        }

        v58 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ProactiveMLErrorDomain" code:7 userInfo:0];
        v59 = *(a1[6] + 8);
        v60 = *(v59 + 40);
        *(v59 + 40) = v58;

        goto LABEL_32;
      }

      v61 = a3;
      v48 = a1[4];
      if (*(v48 + 144))
      {
        v49 = *buf;
      }

      else
      {
        v49 = 1.0;
      }

      v50 = *(v48 + 16);
      v51 = [v5 minibatchStatsForPositiveLabel:*(v48 + 128)];
      *&v52 = v49;
      v53 = [v50 trackWeights:v47 scaleFactor:v51 minibatchStats:v27 evaluationMetrics:v52];

      if (v53)
      {
        [*(*(a1[8] + 8) + 40) setDictionary:v53];
      }
    }

    if (*(*(a1[7] + 8) + 24) >= *(a1[4] + 40))
    {
      *v61 = 1;
    }

LABEL_32:

LABEL_33:
  }
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ %@>", v5, self->_planId];

  return v6;
}

- (id)normalizeRegressor:(id)regressor
{
  regressorCopy = regressor;
  v5 = regressorCopy;
  if (self->_isMultiLabel)
  {
    v6 = -[PMLDenseVector initWithCount:]([PMLMutableDenseVector alloc], "initWithCount:", [regressorCopy count]);
    values = [v5 values];
    mutablePtr = [(PMLMutableDenseVector *)v6 mutablePtr];
    if ([v5 count])
    {
      v9 = 0;
      do
      {
        if (*(values + 4 * v9) == self->_positiveLabel)
        {
          v10 = 1.0;
        }

        else
        {
          v10 = 0.0;
        }

        *(mutablePtr + 4 * v9++) = v10;
      }

      while (v9 < [v5 count]);
    }

    v11 = [PMLModelRegressor modelRegressorFromFloats:v6];
  }

  else
  {
    v11 = regressorCopy;
  }

  return v11;
}

- (void)loadSessionsWithBlock:(id)block
{
  store = self->_store;
  sessionDescriptor = self->_sessionDescriptor;
  blockCopy = block;
  +[PMLTrainingStore lastUsedTimestampLimit];
  [PMLTrainingStore loadSessionsForModel:"loadSessionsForModel:excludeItemIdsUsedWithin:limit:onlyAppleInternal:positiveLabel:skew:block:" excludeItemIdsUsedWithin:sessionDescriptor limit:self->_sessionsInBatch onlyAppleInternal:self->_useOnlyAppleInternalSessions positiveLabel:self->_positiveLabel skew:blockCopy block:?];
}

- (id)evaluationMetricsForPredictions:(id)predictions objectives:(id)objectives predicate:(id)predicate start:(id)start
{
  predictionsCopy = predictions;
  objectivesCopy = objectives;
  predicateCopy = predicate;
  startCopy = start;
  if (self->_evaluationLevel)
  {
    [PMLClassificationEvaluationMetrics f1Score:objectivesCopy predictions:predictionsCopy predicate:predicateCopy];
    [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:?];
    v16 = v15;
    *&v17 = [PMLClassificationEvaluationMetrics truePositives:objectivesCopy predictions:predictionsCopy predicate:predicateCopy];
    [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:v17];
    v19 = vcvtas_u32_f32(v18);
    *&v20 = [PMLClassificationEvaluationMetrics trueNegatives:objectivesCopy predictions:predictionsCopy predicate:predicateCopy];
    [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:v20];
    v22 = vcvtas_u32_f32(v21);
    *&v23 = [PMLClassificationEvaluationMetrics falsePositives:objectivesCopy predictions:predictionsCopy predicate:predicateCopy];
    [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:v23];
    v25 = vcvtas_u32_f32(v24);
    *&v26 = [PMLClassificationEvaluationMetrics falseNegatives:objectivesCopy predictions:predictionsCopy predicate:predicateCopy];
    [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:v26];
    v28 = vcvtas_u32_f32(v27);
  }

  else
  {
    v19 = 0;
    v22 = 0;
    v25 = 0;
    v28 = 0;
    v16 = 0;
  }

  LODWORD(v14) = v16;
  v29 = [AWDProactiveModelFittingEvalMetrics evalMetricsWithRmse:v19 f1:v22 truePositives:v25 trueNegatives:v28 falsePositives:0.0 falseNegatives:v14];
  if (self->_evaluationLevel >= 2)
  {
    [PMLClassificationEvaluationMetrics addScoresForOutcomes:objectivesCopy predictions:predictionsCopy predicate:predicateCopy metrics:v29];
  }

  [startCopy timeIntervalSinceNow];
  *&v30 = v30;
  *&v30 = fabsf(*&v30);
  [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:v30];
  [v29 setSecsToExecute:?];

  return v29;
}

- (PMLLogRegTrainingPlan)initWithStore:(id)store tracker:(id)tracker noiseStrategy:(id)strategy planId:(id)id sessionDescriptor:(id)descriptor maxSessionsLimit:(unint64_t)limit sessionsInBatch:(unint64_t)batch currentServerIteration:(unint64_t)self0 currentModelWeights:(id)self1 localLearningRate:(float)self2 stoppingThreshold:(float)self3 localMinimumIterations:(unint64_t)self4 localGradientIterations:(unint64_t)self5 useOnlyAppleInternalSessions:(BOOL)self6 skew:(double)self7 threshold:(double)self8 isMultiLabel:(BOOL)self9 intercept:(BOOL)intercept positiveLabel:(unint64_t)positiveLabel evaluationLevel:(unint64_t)level reportScale:(BOOL)scale
{
  storeCopy = store;
  trackerCopy = tracker;
  strategyCopy = strategy;
  idCopy = id;
  descriptorCopy = descriptor;
  weightsCopy = weights;
  if (![PMLPlanDescriptor isValidPlanId:idCopy])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLLogRegTrainingPlan.m" lineNumber:94 description:{@"Invalid planId. Must be <name>-<version>-<locale> but got %@", idCopy}];
  }

  v49.receiver = self;
  v49.super_class = PMLLogRegTrainingPlan;
  v36 = [(PMLLogRegTrainingPlan *)&v49 init];
  v37 = v36;
  if (v36)
  {
    v42 = storeCopy;
    batchCopy = batch;
    objc_storeStrong(&v36->_store, store);
    objc_storeStrong(&v37->_tracker, tracker);
    objc_storeStrong(&v37->_noiseStrategy, strategy);
    objc_storeStrong(&v37->_planId, id);
    objc_storeStrong(&v37->_sessionDescriptor, descriptor);
    if (([MEMORY[0x277D42590] isInternalBuild] & 1) == 0)
    {
      isBetaBuild = [MEMORY[0x277D42590] isBetaBuild];
      if (batch <= 1)
      {
        batchCopy2 = 1;
      }

      else
      {
        batchCopy2 = batch;
      }

      if (!isBetaBuild)
      {
        batchCopy = batchCopy2;
      }
    }

    v37->_maxSessionsLimit = limit;
    v37->_sessionsInBatch = batchCopy;
    v37->_currentServerIteration = iteration;
    objc_storeStrong(&v37->_currentModelWeights, weights);
    v37->_localLearningRate = rate;
    v37->_stoppingThreshold = threshold;
    v37->_localMinimumIterations = iterations;
    v37->_localGradientIterations = gradientIterations;
    v37->_useOnlyAppleInternalSessions = sessions;
    v37->_isMultiLabel = label;
    v37->_skew = skew;
    v37->_threshold = a18;
    v37->_intercept = intercept;
    v37->_positiveLabel = positiveLabel;
    v37->_evaluationLevel = level;
    v37->_reportScale = scale;
    storeCopy = v42;
  }

  return v37;
}

+ (id)planWithStore:(id)store tracker:(id)tracker sessionDescriptor:(id)descriptor arguments:(id)arguments
{
  argumentsCopy = arguments;
  descriptorCopy = descriptor;
  trackerCopy = tracker;
  storeCopy = store;
  v11 = [argumentsCopy objectForKeyedSubscript:@"noiseStrategy"];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = objc_opt_new();
  }

  v64 = v13;

  v14 = [argumentsCopy objectForKeyedSubscript:@"planId"];
  v15 = v14;
  v16 = @"FiM_logreg-1.0-en";
  if (v14)
  {
    v16 = v14;
  }

  v63 = v16;

  v17 = [argumentsCopy objectForKeyedSubscript:@"serverIteration"];
  if (v17)
  {
    v18 = [argumentsCopy objectForKeyedSubscript:@"serverIteration"];
    unsignedIntegerValue = [v18 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  v19 = [argumentsCopy objectForKeyedSubscript:@"intercept"];
  bOOLValue = [v19 BOOLValue];

  v20 = [argumentsCopy objectForKeyedSubscript:@"generateWeightsOfLength"];
  intValue = [v20 intValue];

  v61 = [PMLModelWeights modelWeightsOfLength:intValue rngSeed:1234567];
  v22 = [argumentsCopy objectForKeyedSubscript:@"localLearningRate"];
  if (v22)
  {
    v23 = [argumentsCopy objectForKeyedSubscript:@"localLearningRate"];
    [v23 floatValue];
    v25 = v24;
  }

  else
  {
    v25 = 1017370378;
  }

  v26 = [argumentsCopy objectForKeyedSubscript:@"stoppingThreshold"];
  if (v26)
  {
    v27 = [argumentsCopy objectForKeyedSubscript:@"stoppingThreshold"];
    [v27 floatValue];
    v29 = v28;
  }

  else
  {
    v29 = 953267991;
  }

  v30 = [argumentsCopy objectForKeyedSubscript:@"localMinimumIterations"];
  if (v30)
  {
    v31 = [argumentsCopy objectForKeyedSubscript:@"localMinimumIterations"];
    unsignedIntegerValue2 = [v31 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = 100;
  }

  v32 = [argumentsCopy objectForKeyedSubscript:@"localGradientIterations"];
  unsignedIntegerValue3 = [v32 unsignedIntegerValue];

  v34 = [argumentsCopy objectForKeyedSubscript:@"reportScale"];
  bOOLValue2 = [v34 BOOLValue];

  v35 = [argumentsCopy objectForKeyedSubscript:@"useOnlyAppleInternalSessions"];
  bOOLValue3 = [v35 BOOLValue];

  v37 = [argumentsCopy objectForKeyedSubscript:@"sessionsInBatch"];
  integerValue = [v37 integerValue];

  v39 = [argumentsCopy objectForKeyedSubscript:@"maxSessionsLimit"];
  unsignedIntegerValue4 = [v39 unsignedIntegerValue];

  v41 = [argumentsCopy objectForKeyedSubscript:@"positiveLabel"];

  if (v41)
  {
    [argumentsCopy objectForKeyedSubscript:@"positiveLabel"];
    v43 = v42 = unsignedIntegerValue3;
    unsignedIntegerValue5 = [v43 unsignedIntegerValue];

    unsignedIntegerValue3 = v42;
    v45 = unsignedIntegerValue5;
  }

  else
  {
    v45 = 1;
  }

  v46 = v41 != 0;
  if (!unsignedIntegerValue4)
  {
    unsignedIntegerValue4 = 100;
  }

  if (integerValue <= 1)
  {
    v47 = 1;
  }

  else
  {
    v47 = integerValue;
  }

  if (unsignedIntegerValue3 <= 1)
  {
    v48 = 1;
  }

  else
  {
    v48 = unsignedIntegerValue3;
  }

  v49 = [PMLLogRegTrainingPlan alloc];
  LOBYTE(v55) = bOOLValue2;
  BYTE2(v54) = bOOLValue;
  BYTE1(v54) = v46;
  LOBYTE(v54) = bOOLValue3;
  LODWORD(v50) = v25;
  LODWORD(v51) = v29;
  v52 = [PMLLogRegTrainingPlan initWithStore:v49 tracker:"initWithStore:tracker:noiseStrategy:planId:sessionDescriptor:maxSessionsLimit:sessionsInBatch:currentServerIteration:currentModelWeights:localLearningRate:stoppingThreshold:localMinimumIterations:localGradientIterations:useOnlyAppleInternalSessions:skew:threshold:isMultiLabel:intercept:positiveLabel:evaluationLevel:reportScale:" noiseStrategy:storeCopy planId:trackerCopy sessionDescriptor:v64 maxSessionsLimit:v63 sessionsInBatch:descriptorCopy currentServerIteration:unsignedIntegerValue4 currentModelWeights:v50 localLearningRate:v51 stoppingThreshold:0.5 localMinimumIterations:0.5 localGradientIterations:v47 useOnlyAppleInternalSessions:unsignedIntegerValue skew:v61 threshold:unsignedIntegerValue2 isMultiLabel:v48 intercept:v54 positiveLabel:v45 evaluationLevel:2 reportScale:v55];

  return v52;
}

@end