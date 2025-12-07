@interface PMLMultiLabelRegressionEvaluationPlan
- (PMLMultiLabelRegressionEvaluationPlan)initWithPlanId:(id)id store:(id)store sessionDescriptor:(id)descriptor maxSessionsLimit:(unint64_t)limit sessionsInBatch:(unint64_t)batch labelAndWeights:(id)weights modelClassName:(id)name intercept:(BOOL)self0 evaluationPoints:(id)self1 tracker:(id)self2 evaluationLevel:(unint64_t)self3;
- (PMLMultiLabelRegressionEvaluationPlan)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (id)_precisionAtEvaluationPointsForSessions:(id)sessions;
- (id)_rankedLabelsForSession:(id)session;
- (id)runWithError:(id *)error;
- (id)toPlistWithChunks:(id)chunks;
@end

@implementation PMLMultiLabelRegressionEvaluationPlan

- (PMLMultiLabelRegressionEvaluationPlan)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  v66[1] = *MEMORY[0x277D85DE8];
  plistCopy = plist;
  chunksCopy = chunks;
  contextCopy = context;
  v11 = [contextCopy objectForKeyedSubscript:@"TRAINING_STORE"];

  if (!v11)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v43 = objc_opt_class();
    v44 = NSStringFromClass(v43);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLMultiLabelRegressionEvaluationPlan.m" lineNumber:211 description:{@"Can't instantiate %@. Missing store dependency.", v44}];
  }

  v60 = [plistCopy objectForKeyedSubscript:@"PLAN_ID"];
  v59 = [contextCopy objectForKeyedSubscript:@"TRAINING_STORE"];
  v12 = [PMLSessionDescriptor alloc];
  v13 = [plistCopy objectForKeyedSubscript:@"SESSIONS_MODEL_HANDLE"];
  v14 = [(PMLSessionDescriptor *)v12 initWithPlist:v13 chunks:chunksCopy context:contextCopy];

  if (v14)
  {
    v15 = a2;
    v16 = [plistCopy objectForKeyedSubscript:@"SESSIONS_LIMIT"];
    unsignedIntegerValue = [v16 unsignedIntegerValue];

    v17 = [plistCopy objectForKeyedSubscript:@"SESSIONS_IN_BATCH"];
    unsignedIntegerValue2 = [v17 unsignedIntegerValue];

    v18 = [plistCopy objectForKeyedSubscript:@"POSITIVE_LABELS"];
    v19 = [plistCopy objectForKeyedSubscript:@"WEIGHTS_ARRAY"];
    v20 = objc_opt_new();
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __70__PMLMultiLabelRegressionEvaluationPlan_initWithPlist_chunks_context___block_invoke;
    v62[3] = &unk_279ABFAB8;
    v56 = chunksCopy;
    v21 = chunksCopy;
    v63 = v21;
    v22 = v20;
    v64 = v22;
    v54 = v19;
    [v19 enumerateObjectsUsingBlock:v62];
    v51 = v22;
    v55 = v18;
    v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v18];
    v52 = [plistCopy objectForKeyedSubscript:@"MULTI_LABEL_REGRESSION_MODEL_TYPE"];
    v23 = [plistCopy objectForKeyedSubscript:@"INTERCEPT"];
    bOOLValue = [v23 BOOLValue];

    v25 = [plistCopy objectForKeyedSubscript:@"EVALUATION_POINTS"];
    v26 = [plistCopy objectForKeyedSubscript:@"TRACKER_TYPE"];
    v27 = NSClassFromString(v26);
    if (!v27)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v46 = objc_opt_class();
      v58 = NSStringFromClass(v46);
      [currentHandler2 handleFailureInMethod:v15 object:self file:@"PMLMultiLabelRegressionEvaluationPlan.m" lineNumber:248 description:{@"Can't instantiate %@. Unknown tracker class: %@", v58, v26}];
    }

    v57 = v14;
    v28 = [v27 alloc];
    v29 = [plistCopy objectForKeyedSubscript:@"TRACKER"];
    v30 = v60;
    v65 = @"planId";
    v66[0] = v60;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:&v65 count:1];
    v32 = [v28 initWithPlist:v29 chunks:v21 context:v31];

    if (v32)
    {
      v33 = [plistCopy objectForKeyedSubscript:@"EVALUATION_LEVEL"];
      unsignedIntegerValue3 = [v33 unsignedIntegerValue];

      v48 = v25;
      LOBYTE(v47) = bOOLValue;
      v35 = v52;
      v36 = v59;
      v37 = v25;
      v38 = v53;
      selfCopy2 = [(PMLMultiLabelRegressionEvaluationPlan *)self initWithPlanId:v60 store:v59 sessionDescriptor:v57 maxSessionsLimit:unsignedIntegerValue sessionsInBatch:unsignedIntegerValue2 labelAndWeights:v53 modelClassName:v52 intercept:v47 evaluationPoints:v48 tracker:v32 evaluationLevel:unsignedIntegerValue3];
      v40 = selfCopy2;
    }

    else
    {
      v40 = 0;
      selfCopy2 = self;
      v36 = v59;
      v37 = v25;
      v35 = v52;
      v38 = v53;
    }

    chunksCopy = v56;
    v14 = v57;
  }

  else
  {
    v40 = 0;
    v30 = v60;
    selfCopy2 = self;
    v36 = v59;
  }

  return v40;
}

void __70__PMLMultiLabelRegressionEvaluationPlan_initWithPlist_chunks_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PMLModelWeights alloc];
  v6 = [(PMLModelWeights *)v4 initWithPlist:v3 chunks:*(a1 + 32) context:MEMORY[0x277CBEC10]];

  v5 = v6;
  if (v6)
  {
    [*(a1 + 40) addObject:v6];
    v5 = v6;
  }
}

- (id)toPlistWithChunks:(id)chunks
{
  v28[12] = *MEMORY[0x277D85DE8];
  chunksCopy = chunks;
  v5 = objc_opt_new();
  weightsArray = self->_weightsArray;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __59__PMLMultiLabelRegressionEvaluationPlan_toPlistWithChunks___block_invoke;
  v24[3] = &unk_279ABFA90;
  v25 = v5;
  v26 = chunksCopy;
  v7 = chunksCopy;
  v23 = v5;
  [(NSArray *)weightsArray enumerateObjectsUsingBlock:v24];
  v28[0] = self->_planId;
  v27[0] = @"PLAN_ID";
  v27[1] = @"SESSIONS_MODEL_HANDLE";
  v8 = [(PMLSessionDescriptor *)self->_sessionDescriptor toPlistWithChunks:v7];
  v28[1] = v8;
  v27[2] = @"SESSIONS_LIMIT";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_maxSessionsLimit];
  v28[2] = v9;
  v27[3] = @"SESSIONS_IN_BATCH";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_sessionsInBatch];
  positiveLabels = self->_positiveLabels;
  v28[3] = v10;
  v28[4] = positiveLabels;
  v27[4] = @"POSITIVE_LABELS";
  v27[5] = @"WEIGHTS_ARRAY";
  v28[5] = v23;
  v27[6] = @"MULTI_LABEL_REGRESSION_MODEL_TYPE";
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v28[6] = v13;
  v27[7] = @"INTERCEPT";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_intercept];
  evaluationPoints = self->_evaluationPoints;
  tracker = self->_tracker;
  v28[7] = v14;
  v28[8] = evaluationPoints;
  v27[8] = @"EVALUATION_POINTS";
  v27[9] = @"TRACKER";
  v17 = [(PMLMultiLabelEvaluationTrackerProtocol *)tracker toPlistWithChunks:v7];
  v28[9] = v17;
  v27[10] = @"TRACKER_TYPE";
  v18 = objc_opt_class();
  v19 = NSStringFromClass(v18);
  v28[10] = v19;
  v27[11] = @"EVALUATION_LEVEL";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_evaluationLevel];
  v28[11] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:12];

  return v21;
}

void __59__PMLMultiLabelRegressionEvaluationPlan_toPlistWithChunks___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 toPlistWithChunks:*(a1 + 40)];
  [v2 addObject:v3];
}

- (id)runWithError:(id *)error
{
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__297;
  v15 = __Block_byref_object_dispose__298;
  v16 = 0;
  store = self->_store;
  sessionDescriptor = self->_sessionDescriptor;
  +[PMLTrainingStore lastUsedTimestampLimit];
  positiveLabels = self->_positiveLabels;
  sessionsInBatch = self->_sessionsInBatch;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__PMLMultiLabelRegressionEvaluationPlan_runWithError___block_invoke;
  v10[3] = &unk_279AC07E8;
  v10[4] = self;
  v10[5] = &v11;
  v10[6] = v17;
  [(PMLTrainingStore *)store loadSessionsForModel:sessionDescriptor privacyBudgetRefreshPeriod:positiveLabels labels:sessionsInBatch batchSize:v10 block:?];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(v17, 8);

  return v8;
}

void __54__PMLMultiLabelRegressionEvaluationPlan_runWithError___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = PML_LogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 96);
    v9 = *(v7 + 16);
    v15 = 138412802;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v19 = 2048;
    v20 = [v5 count];
    _os_log_impl(&dword_260D68000, v6, OS_LOG_TYPE_INFO, "Evaluating plan %@ (descriptor: %@, available %tu sessions)", &v15, 0x20u);
  }

  if ([v5 count])
  {
    v10 = [*(a1 + 32) _precisionAtEvaluationPointsForSessions:v5];
    if (v10)
    {
      v11 = [v5 minibatchStatsForPositiveLabels:*(*(a1 + 32) + 48)];
      v12 = [*(*(a1 + 32) + 80) trackPrecisionAtK:v10 minibatchStats:v11];
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      *(*(*(a1 + 48) + 8) + 24) += [v5 count];
      if (*(*(*(a1 + 48) + 8) + 24) >= *(*(a1 + 32) + 24))
      {
        *a3 = 1;
      }
    }
  }
}

- (id)_precisionAtEvaluationPointsForSessions:(id)sessions
{
  v83 = *MEMORY[0x277D85DE8];
  sessionsCopy = sessions;
  outcomes = [sessionsCopy outcomes];
  v6 = objc_opt_new();
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  selfCopy = self;
  v7 = self->_evaluationPoints;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v73 objects:v82 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v74;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v74 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 setObject:0 forKeyedSubscript:*(*(&v73 + 1) + 8 * i)];
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v73 objects:v82 count:16];
    }

    while (v9);
  }

  covariates = [sessionsCopy covariates];
  matrix = [covariates matrix];

  matrix_number_of_columns = sparse_get_matrix_number_of_columns(matrix);
  v51 = sessionsCopy;
  v15 = [sessionsCopy count];
  v58 = malloc_type_malloc(4 * matrix_number_of_columns, 0x100004052888210uLL);
  nz = matrix_number_of_columns;
  v57 = malloc_type_malloc(8 * matrix_number_of_columns, 0x100004000313F17uLL);
  if (v15 < 1)
  {
    v18 = v15;
    p_isa = &selfCopy->super.isa;
    goto LABEL_32;
  }

  v17 = 0;
  *&v16 = 134217984;
  v50 = v16;
  v18 = v15;
  p_isa = &selfCopy->super.isa;
  v53 = matrix;
  v54 = outcomes;
  v52 = v15;
  while (1)
  {
    v20 = MEMORY[0x277CCABB0];
    LODWORD(v21) = *([outcomes values] + 4 * v17);
    v22 = [v20 numberWithFloat:v21];
    if (([p_isa[6] containsObject:v22] & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v36 = p_isa[6];
        *column_end = 138412546;
        *&column_end[4] = v22;
        v80 = 2112;
        v81 = v36;
        _os_log_error_impl(&dword_260D68000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Label %@ not in sepcified list %@", column_end, 0x16u);
      }

      goto LABEL_27;
    }

    if (sparse_get_matrix_nonzero_count_for_row(matrix, v17))
    {
      break;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      *column_end = v50;
      *&column_end[4] = v17;
      _os_log_debug_impl(&dword_260D68000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Ignoring all zero row #%ld", column_end, 0xCu);
    }

LABEL_27:
    --v18;
LABEL_28:

    if (++v17 == v15)
    {
      goto LABEL_32;
    }
  }

  v64 = v22;
  *column_end = 0;
  sparse_extract_sparse_row_float(matrix, v17, 0, column_end, nz, v58, v57);
  v23 = [PMLDenseVector alloc];
  v24 = [(PMLDenseVector *)v23 initWithFloatsNoCopy:v58 count:*column_end freeWhenDone:0];
  v63 = [PMLSparseVector sparseVectorFromDense:v24];
  v25 = [p_isa _rankedLabelsForSession:?];
  if (v25)
  {
    v60 = v24;
    v61 = v17;
    v62 = v18;
    v59 = v25;
    v26 = [v25 indexOfObject:v64];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v27 = p_isa[9];
    v28 = [v27 countByEnumeratingWithState:&v69 objects:v78 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v70;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v70 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v69 + 1) + 8 * j);
          if (v26 < [v32 unsignedIntegerValue])
          {
            v33 = MEMORY[0x277CCABB0];
            v34 = [v6 objectForKeyedSubscript:v32];
            v35 = [v33 numberWithUnsignedInteger:{objc_msgSend(v34, "unsignedIntegerValue") + 1}];
            [v6 setObject:v35 forKeyedSubscript:v32];
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v69 objects:v78 count:16];
      }

      while (v29);
    }

    matrix = v53;
    outcomes = v54;
    p_isa = &selfCopy->super.isa;
    v17 = v61;
    v18 = v62;
    v15 = v52;
    v22 = v64;
    goto LABEL_28;
  }

  v6 = 0;
LABEL_32:
  free(v57);
  free(v58);
  if (v6)
  {
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v37 = p_isa[9];
    v38 = [v37 countByEnumeratingWithState:&v65 objects:v77 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v66;
      v41 = v18;
      do
      {
        for (k = 0; k != v39; ++k)
        {
          if (*v66 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v43 = *(*(&v65 + 1) + 8 * k);
          v44 = MEMORY[0x277CCABB0];
          v45 = [v6 objectForKeyedSubscript:{v43, v50}];
          [v45 floatValue];
          *&v47 = v46 / v41;
          v48 = [v44 numberWithFloat:v47];
          [v6 setObject:v48 forKeyedSubscript:v43];
        }

        v39 = [v37 countByEnumeratingWithState:&v65 objects:v77 count:16];
      }

      while (v39);
    }
  }

  return v6;
}

- (id)_rankedLabelsForSession:(id)session
{
  v17[1] = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = [(PMLMultiLabelClassifierModelProtocol *)self->_multiLabelRegressionModel predict:sessionCopy];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjects:v5 forKeys:self->_positiveLabels];
    v7 = MEMORY[0x277CCAC98];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __65__PMLMultiLabelRegressionEvaluationPlan__rankedLabelsForSession___block_invoke;
    v15[3] = &unk_279ABFA68;
    v8 = v6;
    v16 = v8;
    v9 = [v7 sortDescriptorWithKey:0 ascending:0 comparator:v15];
    v10 = objc_autoreleasePoolPush();
    allKeys = [v8 allKeys];
    v17[0] = v9;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v13 = [allKeys sortedArrayUsingDescriptors:v12];

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __65__PMLMultiLabelRegressionEvaluationPlan__rankedLabelsForSession___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  v9 = [v7 compare:v8];
  return v9;
}

- (PMLMultiLabelRegressionEvaluationPlan)initWithPlanId:(id)id store:(id)store sessionDescriptor:(id)descriptor maxSessionsLimit:(unint64_t)limit sessionsInBatch:(unint64_t)batch labelAndWeights:(id)weights modelClassName:(id)name intercept:(BOOL)self0 evaluationPoints:(id)self1 tracker:(id)self2 evaluationLevel:(unint64_t)self3
{
  idCopy = id;
  storeCopy = store;
  descriptorCopy = descriptor;
  weightsCopy = weights;
  nameCopy = name;
  v22 = idCopy;
  pointsCopy = points;
  trackerCopy = tracker;
  if (![PMLPlanDescriptor isValidPlanId:v22])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLMultiLabelRegressionEvaluationPlan.m" lineNumber:53 description:{@"Invalid planId. Must be <name>-<version>-<locale> but got %@", v22}];
  }

  v46.receiver = self;
  v46.super_class = PMLMultiLabelRegressionEvaluationPlan;
  v24 = [(PMLMultiLabelRegressionEvaluationPlan *)&v46 init];
  v25 = v24;
  if (v24)
  {
    v41 = pointsCopy;
    objc_storeStrong(&v24->_planId, id);
    objc_storeStrong(&v25->_store, store);
    objc_storeStrong(&v25->_sessionDescriptor, descriptor);
    v25->_maxSessionsLimit = limit;
    v25->_sessionsInBatch = batch;
    v25->_intercept = intercept;
    v26 = objc_autoreleasePoolPush();
    allKeys = [weightsCopy allKeys];
    objc_autoreleasePoolPop(v26);
    positiveLabels = v25->_positiveLabels;
    v25->_positiveLabels = allKeys;

    v29 = objc_autoreleasePoolPush();
    allValues = [weightsCopy allValues];
    objc_autoreleasePoolPop(v29);
    weightsArray = v25->_weightsArray;
    v25->_weightsArray = allValues;

    v32 = NSClassFromString(nameCopy);
    if (!v32)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      [currentHandler2 handleFailureInMethod:a2 object:v25 file:@"PMLMultiLabelRegressionEvaluationPlan.m" lineNumber:66 description:{@"Can't instantiate %@. Unknown model class: %@", v39, nameCopy}];
    }

    v33 = [[v32 alloc] initWithWeightsArray:v25->_weightsArray andIntercept:intercept];
    multiLabelRegressionModel = v25->_multiLabelRegressionModel;
    v25->_multiLabelRegressionModel = v33;

    objc_storeStrong(&v25->_evaluationPoints, points);
    objc_storeStrong(&v25->_tracker, tracker);
    pointsCopy = v41;
    v25->_evaluationLevel = level;
  }

  return v25;
}

@end