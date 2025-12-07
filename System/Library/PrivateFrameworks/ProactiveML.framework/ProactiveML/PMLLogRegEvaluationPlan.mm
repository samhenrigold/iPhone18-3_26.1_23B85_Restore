@interface PMLLogRegEvaluationPlan
- (NSString)description;
- (PMLLogRegEvaluationPlan)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (PMLLogRegEvaluationPlan)initWithStore:(id)store tracker:(id)tracker planId:(id)id sessionDescriptor:(id)descriptor maxSessionsLimit:(unint64_t)limit sessionsInBatch:(unint64_t)batch currentModelWeights:(id)weights intercept:(BOOL)self0 skew:(double)self1 threshold:(double)self2 isMultiLabel:(BOOL)self3 positiveLabel:(unint64_t)self4 evaluationLevel:(unint64_t)self5;
- (id)normalizeRegressor:(id)regressor;
- (id)runWithError:(id *)error;
- (id)toPlistWithChunks:(id)chunks;
- (void)loadSessionsWithBlock:(id)block;
@end

@implementation PMLLogRegEvaluationPlan

- (PMLLogRegEvaluationPlan)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  v64[1] = *MEMORY[0x277D85DE8];
  plistCopy = plist;
  chunksCopy = chunks;
  contextCopy = context;
  v12 = [contextCopy objectForKeyedSubscript:@"TRAINING_STORE"];

  if (!v12)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v43 = objc_opt_class();
    v44 = NSStringFromClass(v43);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLLogRegEvaluationPlan.m" lineNumber:182 description:{@"Can't instantiate %@. Missing store dependency.", v44}];
  }

  v13 = [plistCopy objectForKeyedSubscript:@"PLAN_ID"];
  v14 = [PMLSessionDescriptor alloc];
  v15 = [plistCopy objectForKeyedSubscript:@"SESSIONS_MODEL_HANDLE"];
  v16 = [(PMLSessionDescriptor *)v14 initWithPlist:v15 chunks:chunksCopy context:contextCopy];

  if (v16)
  {
    v17 = [PMLModelWeights alloc];
    v18 = [plistCopy objectForKeyedSubscript:@"WEIGHTS"];
    v19 = [(PMLModelWeights *)v17 initWithPlist:v18 chunks:chunksCopy context:contextCopy];

    if (v19)
    {
      selfCopy = self;
      v61 = [plistCopy objectForKeyedSubscript:@"TRACKER_TYPE"];
      v20 = NSClassFromString(v61);
      v57 = v19;
      if (!v20)
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        v46 = objc_opt_class();
        v47 = NSStringFromClass(v46);
        [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:@"PMLLogRegEvaluationPlan.m" lineNumber:196 description:{@"Can't instantiate %@. Unknown tracker class: %@", v47, v61}];
      }

      v21 = [v20 alloc];
      v22 = [plistCopy objectForKeyedSubscript:@"TRACKER"];
      v63 = @"planId";
      v64[0] = v13;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:&v63 count:1];
      v24 = [v21 initWithPlist:v22 chunks:chunksCopy context:v23];

      v25 = [contextCopy objectForKeyedSubscript:@"tracker"];

      v59 = v13;
      v60 = chunksCopy;
      v58 = v16;
      if (v25)
      {
        v26 = [contextCopy objectForKeyedSubscript:@"tracker"];

        v27 = contextCopy;
        v28 = v26;
      }

      else
      {
        v27 = contextCopy;
        v28 = v24;
      }

      v56 = v27;
      v49 = [v27 objectForKeyedSubscript:@"TRAINING_STORE"];
      v55 = [plistCopy objectForKeyedSubscript:@"SESSIONS_LIMIT"];
      unsignedIntegerValue = [v55 unsignedIntegerValue];
      v54 = [plistCopy objectForKeyedSubscript:@"SESSIONS_IN_BATCH"];
      unsignedIntegerValue2 = [v54 unsignedIntegerValue];
      v53 = [plistCopy objectForKeyedSubscript:@"INTERCEPT"];
      bOOLValue = [v53 BOOLValue];
      v51 = [plistCopy objectForKeyedSubscript:@"SKEW"];
      [v51 doubleValue];
      v32 = v31;
      v33 = [plistCopy objectForKeyedSubscript:@"THRESHOLD"];
      [v33 doubleValue];
      v35 = v34;
      v36 = [plistCopy objectForKeyedSubscript:@"IS_MULTI_LABEL"];
      bOOLValue2 = [v36 BOOLValue];
      v38 = [plistCopy objectForKeyedSubscript:@"POSITIVE_LABEL"];
      unsignedIntegerValue3 = [v38 unsignedIntegerValue];
      v40 = [plistCopy objectForKeyedSubscript:@"EVALUATION_LEVEL"];
      BYTE1(v48) = bOOLValue2;
      LOBYTE(v48) = bOOLValue;
      v19 = v57;
      self = -[PMLLogRegEvaluationPlan initWithStore:tracker:planId:sessionDescriptor:maxSessionsLimit:sessionsInBatch:currentModelWeights:intercept:skew:threshold:isMultiLabel:positiveLabel:evaluationLevel:](selfCopy, "initWithStore:tracker:planId:sessionDescriptor:maxSessionsLimit:sessionsInBatch:currentModelWeights:intercept:skew:threshold:isMultiLabel:positiveLabel:evaluationLevel:", v49, v28, v59, v58, unsignedIntegerValue, unsignedIntegerValue2, v32, v35, v57, v48, unsignedIntegerValue3, [v40 unsignedIntegerValue]);

      v13 = v59;
      v16 = v58;

      selfCopy2 = self;
      chunksCopy = v60;
      contextCopy = v56;
    }

    else
    {
      selfCopy2 = 0;
    }
  }

  else
  {
    selfCopy2 = 0;
  }

  return selfCopy2;
}

- (id)toPlistWithChunks:(id)chunks
{
  v22[13] = *MEMORY[0x277D85DE8];
  v22[0] = self->_planId;
  v21[0] = @"PLAN_ID";
  v21[1] = @"SESSIONS_MODEL_HANDLE";
  sessionDescriptor = self->_sessionDescriptor;
  chunksCopy = chunks;
  v20 = [(PMLSessionDescriptor *)sessionDescriptor toPlistWithChunks:chunksCopy];
  v22[1] = v20;
  v21[2] = @"SESSIONS_LIMIT";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_maxSessionsLimit];
  v22[2] = v19;
  v21[3] = @"SESSIONS_IN_BATCH";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_sessionsInBatch];
  v22[3] = v18;
  v21[4] = @"WEIGHTS";
  v6 = [(PMLModelWeights *)self->_currentModelWeights toPlistWithChunks:chunksCopy];
  v22[4] = v6;
  v21[5] = @"INTERCEPT";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_intercept];
  v22[5] = v7;
  v21[6] = @"IS_MULTI_LABEL";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_isMultiLabel];
  v22[6] = v8;
  v21[7] = @"POSITIVE_LABEL";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_positiveLabel];
  v22[7] = v9;
  v21[8] = @"SKEW";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_skew];
  v22[8] = v10;
  v21[9] = @"TRACKER";
  v11 = [(PMLEvaluationTrackerProtocol *)self->_tracker toPlistWithChunks:chunksCopy];

  v22[9] = v11;
  v21[10] = @"THRESHOLD";
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_threshold];
  v22[10] = v12;
  v21[11] = @"TRACKER_TYPE";
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v22[11] = v14;
  v21[12] = @"EVALUATION_LEVEL";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_evaluationLevel];
  v22[12] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:13];

  return v16;
}

- (id)runWithError:(id *)error
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v12[3] = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__5896;
  v10 = __Block_byref_object_dispose__5897;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__PMLLogRegEvaluationPlan_runWithError___block_invoke;
  v5[3] = &unk_279AC07E8;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = v12;
  [(PMLLogRegEvaluationPlan *)self loadSessionsWithBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  _Block_object_dispose(v12, 8);

  return v3;
}

void __40__PMLLogRegEvaluationPlan_runWithError___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = PML_LogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = a1[4];
    v8 = *(v7 + 104);
    v9 = *(v7 + 24);
    *buf = 138412802;
    v63 = v8;
    v64 = 2112;
    v65 = v9;
    v66 = 2048;
    v67 = [v5 count];
    _os_log_impl(&dword_260D68000, v6, OS_LOG_TYPE_INFO, "Evaluating plan %@ (descriptor: %@, available %lu sessions)", buf, 0x20u);
  }

  if ([v5 count])
  {
    v58 = a3;
    v10 = [PMLLogisticRegressionModel solverWithWeights:*(a1[4] + 48) andIntercept:*(a1[4] + 56)];
    v11 = [v5 covariates];
    [v10 setCovariates:v11];

    v12 = a1[4];
    v13 = [v5 outcomes];
    v14 = [v12 normalizeRegressor:v13];
    [v10 setObjective:v14];

    v15 = [v5 covariates];
    v60 = v10;
    v16 = [v10 batchPredict:v15];

    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __40__PMLLogRegEvaluationPlan_runWithError___block_invoke_19;
    v61[3] = &unk_279AC07C0;
    v61[4] = a1[4];
    v17 = MEMORY[0x2666EE8E0](v61);
    v18 = [v5 outcomes];
    [v18 denseVector];
    v19 = v59 = a1;
    [PMLClassificationEvaluationMetrics f1Score:v19 predictions:v16 predicate:v17];
    v21 = v20;

    LODWORD(v22) = v21;
    [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:v22];
    v24 = v23;
    v25 = [v5 outcomes];
    v26 = [v25 denseVector];
    v27 = [PMLClassificationEvaluationMetrics truePositives:v26 predictions:v16 predicate:v17];

    *&v28 = v27;
    [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:v28];
    v30 = vcvtas_u32_f32(v29);
    v31 = [v5 outcomes];
    v32 = [v31 denseVector];
    v33 = [PMLClassificationEvaluationMetrics trueNegatives:v32 predictions:v16 predicate:v17];

    *&v34 = v33;
    [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:v34];
    v36 = vcvtas_u32_f32(v35);
    v37 = [v5 outcomes];
    v38 = [v37 denseVector];
    v39 = [PMLClassificationEvaluationMetrics falsePositives:v38 predictions:v16 predicate:v17];

    *&v40 = v39;
    [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:v40];
    v42 = vcvtas_u32_f32(v41);
    v43 = [v5 outcomes];
    v44 = [v43 denseVector];
    v45 = [PMLClassificationEvaluationMetrics falseNegatives:v44 predictions:v16 predicate:v17];

    *&v46 = v45;
    [PMLClassificationEvaluationMetrics roundFloatToSigFigs:3 sigFigs:v46];
    LODWORD(v48) = v24;
    v49 = [AWDProactiveModelFittingEvalMetrics evalMetricsWithRmse:v30 f1:v36 truePositives:v42 trueNegatives:vcvtas_u32_f32(v47) falsePositives:0.0 falseNegatives:v48];
    v50 = v59[4];
    if (v50[12] >= 2uLL)
    {
      v51 = [v5 outcomes];
      v52 = [v51 denseVector];
      [PMLClassificationEvaluationMetrics addScoresForOutcomes:v52 predictions:v16 predicate:v17 metrics:v49];

      v50 = v59[4];
    }

    v53 = v50[2];
    v54 = [v5 minibatchStatsForPositiveLabel:v50[10]];
    v55 = [v53 trackEvaluationMetrics:v49 minibatchStats:v54];
    v56 = *(v59[5] + 8);
    v57 = *(v56 + 40);
    *(v56 + 40) = v55;

    *(*(v59[6] + 8) + 24) += [v5 count];
    if (*(*(v59[6] + 8) + 24) >= *(v59[4] + 32))
    {
      *v58 = 1;
    }
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
  [PMLTrainingStore loadSessionsForModel:"loadSessionsForModel:excludeItemIdsUsedWithin:limit:onlyAppleInternal:positiveLabel:skew:block:" excludeItemIdsUsedWithin:sessionDescriptor limit:self->_sessionsInBatch onlyAppleInternal:0 positiveLabel:self->_positiveLabel skew:blockCopy block:?];
}

- (PMLLogRegEvaluationPlan)initWithStore:(id)store tracker:(id)tracker planId:(id)id sessionDescriptor:(id)descriptor maxSessionsLimit:(unint64_t)limit sessionsInBatch:(unint64_t)batch currentModelWeights:(id)weights intercept:(BOOL)self0 skew:(double)self1 threshold:(double)self2 isMultiLabel:(BOOL)self3 positiveLabel:(unint64_t)self4 evaluationLevel:(unint64_t)self5
{
  storeCopy = store;
  trackerCopy = tracker;
  trackerCopy2 = tracker;
  idCopy = id;
  descriptorCopy = descriptor;
  weightsCopy = weights;
  if (![PMLPlanDescriptor isValidPlanId:idCopy])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLLogRegEvaluationPlan.m" lineNumber:59 description:{@"Invalid planId. Must be <name>-<version>-<locale> but got %@", idCopy}];
  }

  v35.receiver = self;
  v35.super_class = PMLLogRegEvaluationPlan;
  v27 = [(PMLLogRegEvaluationPlan *)&v35 init];
  v28 = v27;
  if (v27)
  {
    objc_storeStrong(&v27->_store, store);
    objc_storeStrong(&v28->_tracker, trackerCopy);
    objc_storeStrong(&v28->_planId, id);
    objc_storeStrong(&v28->_sessionDescriptor, descriptor);
    v28->_maxSessionsLimit = limit;
    v28->_sessionsInBatch = batch;
    objc_storeStrong(&v28->_currentModelWeights, weights);
    v28->_intercept = intercept;
    v28->_isMultiLabel = label;
    v28->_positiveLabel = positiveLabel;
    v28->_skew = skew;
    v28->_threshold = threshold;
    v28->_evaluationLevel = level;
  }

  return v28;
}

@end