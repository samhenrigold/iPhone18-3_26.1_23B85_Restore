@interface REMLLinearModel
- (BOOL)_loadModelFromURL:(id)l error:(id *)error;
- (BOOL)_saveModelToURL:(id)l error:(id *)error;
- (REMLLinearModel)initWithFeatureSet:(id)set interactionDescriptors:(id)descriptors;
- (float)_getAveragePrediction;
- (float)_getNormalizedEntropy;
- (id)_predictWithFeatures:(id)features;
- (id)predictionSetWithFeatures:(id)features;
- (int64_t)_getNumberOfCoordinates;
- (unint64_t)_getTotalExampleCount;
- (unint64_t)_getTotalPositiveCount;
- (void)_clearCache;
- (void)_enumerateModelsForFeatureMap:(id)map usingBlock:(id)block;
- (void)setMetricsRecorder:(id)recorder;
- (void)trainWithFeatures:(id)features positiveEvent:(id)event interaction:(id)interaction;
@end

@implementation REMLLinearModel

- (REMLLinearModel)initWithFeatureSet:(id)set interactionDescriptors:(id)descriptors
{
  v28 = *MEMORY[0x277D85DE8];
  setCopy = set;
  descriptorsCopy = descriptors;
  v26.receiver = self;
  v26.super_class = REMLLinearModel;
  v8 = [(REMLModel *)&v26 initWithFeatureSet:setCopy priorMean:0.0 modelVarianceEpsilon:0.0];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(descriptorsCopy, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = descriptorsCopy;
    v10 = descriptorsCopy;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          v16 = [_REMLWeightedModel weightedModelWithDescriptor:v15 featureSet:setCopy];
          name = [v15 name];
          [v9 setObject:v16 forKeyedSubscript:name];
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v12);
    }

    v18 = [v9 copy];
    models = v8->_models;
    v8->_models = v18;

    descriptorsCopy = v21;
  }

  return v8;
}

- (void)trainWithFeatures:(id)features positiveEvent:(id)event interaction:(id)interaction
{
  v12.receiver = self;
  v12.super_class = REMLLinearModel;
  interactionCopy = interaction;
  eventCopy = event;
  featuresCopy = features;
  [(REMLModel *)&v12 trainWithFeatures:featuresCopy positiveEvent:eventCopy];
  v11 = [(NSDictionary *)self->_models objectForKeyedSubscript:interactionCopy, v12.receiver, v12.super_class];

  [v11 trainModelWithFeatureMap:featuresCopy positiveEvent:eventCopy];
}

- (void)_clearCache
{
  v14 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = REMLLinearModel;
  [(REMLModel *)&v12 _clearCache];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  allValues = [(NSDictionary *)self->_models allValues];
  v4 = [allValues countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v8 + 1) + 8 * v7++) enumerateModels:&__block_literal_global_54];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_enumerateModelsForFeatureMap:(id)map usingBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  blockCopy = block;
  if (blockCopy)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = self->_models;
    v8 = [(NSDictionary *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      v15 = blockCopy + 16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [(NSDictionary *)self->_models objectForKeyedSubscript:v12, v15];
          selectionFeature = [v13 selectionFeature];
          if (!selectionFeature || [mapCopy hasValueForFeature:selectionFeature] && REBooleanValueForTaggedPointer(objc_msgSend(mapCopy, "valueForFeature:", selectionFeature)))
          {
            (*(blockCopy + 2))(blockCopy, v12, v13);
          }
        }

        v9 = [(NSDictionary *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }
  }
}

- (id)predictionSetWithFeatures:(id)features
{
  featuresCopy = features;
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[NSDictionary count](self->_models, "count")}];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __45__REMLLinearModel_predictionSetWithFeatures___block_invoke;
  v16 = &unk_2785FCFF8;
  v17 = v5;
  v18 = featuresCopy;
  v6 = featuresCopy;
  v7 = v5;
  [(REMLLinearModel *)self _enumerateModelsForFeatureMap:v6 usingBlock:&v13];
  v8 = [REMLPredictionSet alloc];
  v9 = [(REMLModel *)self predictWithFeatures:v6, v13, v14, v15, v16];
  v10 = [v7 copy];
  v11 = [(REMLPredictionSet *)v8 initWithPrediction:v9 predictionMap:v10];

  return v11;
}

void __45__REMLLinearModel_predictionSetWithFeatures___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [a3 predictWithFeatures:v5];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (id)_predictWithFeatures:(id)features
{
  v57 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v5 = REMLExplanationsEnabled();
  v6 = v5;
  if (v5)
  {
    v7 = [MEMORY[0x277CBEB58] set];
  }

  else
  {
    v7 = 0;
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __40__REMLLinearModel__predictWithFeatures___block_invoke;
  v27[3] = &unk_2785FD020;
  v8 = featuresCopy;
  v28 = v8;
  v35 = v6;
  v9 = v7;
  v29 = v9;
  v30 = &v36;
  v31 = &v52;
  v32 = &v48;
  v33 = &v44;
  v34 = &v40;
  [(REMLLinearModel *)self _enumerateModelsForFeatureMap:v8 usingBlock:v27];
  v10 = v37;
  v11 = v53;
  v53[6] = v53[6] / v37[6];
  v12 = v49;
  v49[6] = v49[6] / v10[6];
  v13 = v45;
  v45[6] = v45[6] / v10[6];
  v41[6] = v41[6] / v10[6];
  *&v14 = v13[6];
  *&v15 = v11[6];
  *&v16 = v12[6];
  v17 = [REMLPrediction predictionWithProbability:v14 mean:v15 variance:v16 pessimistic:?];
  if (REMLExplanationsEnabled())
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v18 = v9;
    v19 = [v18 countByEnumeratingWithState:&v23 objects:v56 count:16];
    if (v19)
    {
      v20 = *v24;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v24 != v20)
          {
            objc_enumerationMutation(v18);
          }

          [v17 addExplanation:{*(*(&v23 + 1) + 8 * i), v23}];
        }

        v19 = [v18 countByEnumeratingWithState:&v23 objects:v56 count:16];
      }

      while (v19);
    }
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v52, 8);

  return v17;
}

void __40__REMLLinearModel__predictWithFeatures___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = a3;
  v4 = [v18 predictWithFeatures:*(a1 + 32)];
  v5 = v4;
  if (*(a1 + 88) == 1)
  {
    v6 = *(a1 + 40);
    v7 = [v4 explanations];
    [v6 unionSet:v7];
  }

  [v18 weight];
  v9 = v8;
  *(*(*(a1 + 48) + 8) + 24) = v8 + *(*(*(a1 + 48) + 8) + 24);
  [v5 probability];
  v11 = v10;
  [v5 bias];
  *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24) + (v9 * (v11 + v12));
  [v5 variance];
  *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24) + (v9 * v13);
  [v5 probability];
  v15 = v14;
  [v5 bias];
  *(*(*(a1 + 72) + 8) + 24) = *(*(*(a1 + 72) + 8) + 24) + (v9 * (v15 + v16));
  [v5 pessimistic];
  *(*(*(a1 + 80) + 8) + 24) = *(*(*(a1 + 80) + 8) + 24) + (v9 * v17);
}

- (BOOL)_saveModelToURL:(id)l error:(id *)error
{
  lCopy = l;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__24;
  v19 = __Block_byref_object_dispose__24;
  v20 = 0;
  models = self->_models;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__REMLLinearModel__saveModelToURL_error___block_invoke;
  v11[3] = &unk_2785FD048;
  v8 = lCopy;
  v12 = v8;
  v13 = &v15;
  v14 = &v21;
  [(NSDictionary *)models enumerateKeysAndObjectsUsingBlock:v11];
  if (error)
  {
    *error = v16[5];
  }

  v9 = *(v22 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __41__REMLLinearModel__saveModelToURL_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = [*(a1 + 32) URLByAppendingPathComponent:a2];
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [v8 path];
  v11 = *(*(a1 + 40) + 8);
  obj = *(v11 + 40);
  v12 = [v9 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:&obj];
  objc_storeStrong((v11 + 40), obj);

  if (!v12 || (v13 = *(*(a1 + 40) + 8), v14 = *(v13 + 40), *(v13 + 40) = 0, v14, v15 = *(*(a1 + 40) + 8), v17 = *(v15 + 40), v16 = [v7 saveModelToURL:v8 error:&v17], objc_storeStrong((v15 + 40), v17), (v16 & 1) == 0))
  {
    *a4 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

- (BOOL)_loadModelFromURL:(id)l error:(id *)error
{
  lCopy = l;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__24;
  v19 = __Block_byref_object_dispose__24;
  v20 = 0;
  models = self->_models;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__REMLLinearModel__loadModelFromURL_error___block_invoke;
  v11[3] = &unk_2785FD048;
  v8 = lCopy;
  v12 = v8;
  v13 = &v15;
  v14 = &v21;
  [(NSDictionary *)models enumerateKeysAndObjectsUsingBlock:v11];
  if (error)
  {
    *error = v16[5];
  }

  v9 = *(v22 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __43__REMLLinearModel__loadModelFromURL_error___block_invoke(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a1[4];
  v8 = a3;
  v9 = [v7 URLByAppendingPathComponent:a2];
  v10 = *(a1[5] + 8);
  obj = *(v10 + 40);
  v11 = [v8 loadModelFromURL:v9 error:&obj];

  objc_storeStrong((v10 + 40), obj);
  if ((v11 & 1) == 0)
  {
    *a4 = 1;
    *(*(a1[6] + 8) + 24) = 0;
  }
}

- (float)_getAveragePrediction
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  allValues = [(NSDictionary *)self->_models allValues];
  firstObject = [allValues firstObject];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__REMLLinearModel__getAveragePrediction__block_invoke;
  v6[3] = &unk_2785FD090;
  v6[4] = &v7;
  [firstObject enumerateModels:v6];

  v4 = v8[6];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void *__40__REMLLinearModel__getAveragePrediction__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 _getAveragePrediction];
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

- (float)_getNormalizedEntropy
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  allValues = [(NSDictionary *)self->_models allValues];
  firstObject = [allValues firstObject];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__REMLLinearModel__getNormalizedEntropy__block_invoke;
  v6[3] = &unk_2785FD090;
  v6[4] = &v7;
  [firstObject enumerateModels:v6];

  v4 = v8[6];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void *__40__REMLLinearModel__getNormalizedEntropy__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 _getNormalizedEntropy];
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

- (int64_t)_getNumberOfCoordinates
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  allValues = [(NSDictionary *)self->_models allValues];
  firstObject = [allValues firstObject];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__REMLLinearModel__getNumberOfCoordinates__block_invoke;
  v6[3] = &unk_2785FD090;
  v6[4] = &v7;
  [firstObject enumerateModels:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void *__42__REMLLinearModel__getNumberOfCoordinates__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 _getNumberOfCoordinates];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (unint64_t)_getTotalExampleCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  allValues = [(NSDictionary *)self->_models allValues];
  firstObject = [allValues firstObject];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__REMLLinearModel__getTotalExampleCount__block_invoke;
  v6[3] = &unk_2785FD090;
  v6[4] = &v7;
  [firstObject enumerateModels:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void *__40__REMLLinearModel__getTotalExampleCount__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 _getTotalExampleCount];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (unint64_t)_getTotalPositiveCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  allValues = [(NSDictionary *)self->_models allValues];
  firstObject = [allValues firstObject];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__REMLLinearModel__getTotalPositiveCount__block_invoke;
  v6[3] = &unk_2785FD090;
  v6[4] = &v7;
  [firstObject enumerateModels:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void *__41__REMLLinearModel__getTotalPositiveCount__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 _getTotalPositiveCount];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)setMetricsRecorder:(id)recorder
{
  recorderCopy = recorder;
  v9.receiver = self;
  v9.super_class = REMLLinearModel;
  [(REMLModel *)&v9 setMetricsRecorder:recorderCopy];
  models = self->_models;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__REMLLinearModel_setMetricsRecorder___block_invoke;
  v7[3] = &unk_2785FD0E0;
  v8 = recorderCopy;
  v6 = recorderCopy;
  [(NSDictionary *)models enumerateKeysAndObjectsUsingBlock:v7];
}

void __38__REMLLinearModel_setMetricsRecorder___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__REMLLinearModel_setMetricsRecorder___block_invoke_2;
  v4[3] = &unk_2785FD0B8;
  v5 = *(a1 + 32);
  [a3 enumerateModels:v4];
}

@end