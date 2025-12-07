@interface ATXActionPredictionsHelpers
+ (id)limitTheNumberOfPredictions:(id)predictions withLimit:(int)limit;
+ (id)processCandidateActionPredictions:(id)predictions limit:(int)limit predictionItemsToKeep:(void *)keep;
+ (id)sortedPredictions:(id)predictions;
+ (void)applyJointLogProbabilityToActionPredictions:(id)predictions withAppActionTypePredictionScore:(double)score;
+ (void)applyLogOfLinearProbabilityTransformationToPredictions:(id)predictions;
+ (void)applyLogSoftmaxToPredictions:(id)predictions;
+ (void)applyNormalizationToPredictions:(id)predictions;
+ (void)keepRandomPredictionItems:(id)items limit:(unint64_t)limit predictionItemsToKeep:(void *)keep;
@end

@implementation ATXActionPredictionsHelpers

+ (id)processCandidateActionPredictions:(id)predictions limit:(int)limit predictionItemsToKeep:(void *)keep
{
  v6 = *&limit;
  predictionsCopy = predictions;
  v8 = [ATXActionPredictionsHelpers sortedPredictions:predictionsCopy];

  [ATXActionPredictionsHelpers keepRandomPredictionItems:v8 limit:v6 predictionItemsToKeep:keep];
  v9 = [ATXActionPredictionsHelpers limitTheNumberOfPredictions:v8 withLimit:v6];

  [ATXActionPredictionsHelpers applyLogSoftmaxToPredictions:v9];
  [ATXSlotResolution setSlotLogProbabilityForCandidateActionPredictions:v9];

  return v9;
}

+ (void)keepRandomPredictionItems:(id)items limit:(unint64_t)limit predictionItemsToKeep:(void *)keep
{
  v35 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v8 = itemsCopy;
  if (keep)
  {
    limitCopy = limit;
    v31 = 0;
    v30 = 0;
    v32 = 0;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = itemsCopy;
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
    keepCopy = keep;
    if (v10)
    {
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          if (v13)
          {
            objc_msgSend_predictionItem(v13);
          }

          else
          {
            bzero(&v24, 0xD08uLL);
          }

          v14 = v31;
          if (v31 >= v32)
          {
            v17 = 0x13A524387AC82261 * ((v31 - v30) >> 3) + 1;
            if (v17 > 0x13A524387AC822)
            {
              std::vector<ATXPredictionItem>::__throw_length_error[abi:ne200100]();
            }

            if (0x274A4870F59044C2 * ((v32 - v30) >> 3) > v17)
            {
              v17 = 0x274A4870F59044C2 * ((v32 - v30) >> 3);
            }

            if ((0x13A524387AC82261 * ((v32 - v30) >> 3)) >= 0x9D2921C3D6411)
            {
              v18 = 0x13A524387AC822;
            }

            else
            {
              v18 = v17;
            }

            v33[4] = &v30;
            if (v18)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<ATXPredictionItem>>(&v30, v18);
            }

            v19 = (8 * ((v31 - v30) >> 3));
            v33[0] = 0;
            v33[1] = v19;
            v33[3] = 0;
            v20 = v24;
            v24 = 0;
            *v19 = v20;
            memcpy(v19 + 1, v25, 0xCFEuLL);
            v33[2] = v19 + 417;
            std::vector<ATXPredictionItem>::__swap_out_circular_buffer(&v30, v33);
            v16 = v31;
            std::__split_buffer<ATXPredictionItem>::~__split_buffer(v33);
          }

          else
          {
            v15 = v24;
            v24 = 0;
            *v31 = v15;
            memcpy(v14 + 1, v25, 0xCFEuLL);
            v16 = v14 + 417;
          }

          v31 = v16;
        }

        v10 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v10);
    }

    v21 = +[_ATXGlobals sharedInstance];
    ATXKeepRandomPredictionItemsBelowLimit(&v30, limitCopy, keepCopy, [v21 numberOfRandomSlotsToKeepForLogging]);

    v24 = &v30;
    std::vector<ATXPredictionItem>::__destroy_vector::operator()[abi:ne200100](&v24);
  }
}

uint64_t __47__ATXActionPredictionsHelpers_sortPredictions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 score];
  v7 = v6;
  [v5 score];
  if (v7 <= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v7 < v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

+ (id)sortedPredictions:(id)predictions
{
  v4 = [predictions mutableCopy];
  [self sortPredictions:v4];

  return v4;
}

+ (id)limitTheNumberOfPredictions:(id)predictions withLimit:(int)limit
{
  predictionsCopy = predictions;
  if (limit < 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATXActionPredictionsHelpers.mm" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"limit >= 0"}];
  }

  if ([predictionsCopy count] > limit)
  {
    v8 = [predictionsCopy subarrayWithRange:{0, limit}];
    v9 = [v8 copy];

    predictionsCopy = v9;
  }

  return predictionsCopy;
}

+ (void)applyJointLogProbabilityToActionPredictions:(id)predictions withAppActionTypePredictionScore:(double)score
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  predictionsCopy = predictions;
  v6 = [predictionsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(predictionsCopy);
        }

        scoredAction = [*(*(&v12 + 1) + 8 * v8) scoredAction];
        [scoredAction score];
        v11 = v10 + score;
        *&v11 = v11;
        [scoredAction setScore:v11];

        ++v8;
      }

      while (v6 != v8);
      v6 = [predictionsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

+ (void)applyNormalizationToPredictions:(id)predictions
{
  v46 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  if ([predictionsCopy count])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v4 = predictionsCopy;
    v5 = [v4 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v5)
    {
      v6 = *v40;
      v7 = 0.0;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v40 != v6)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v39 + 1) + 8 * i) score];
          v7 = v7 + v9;
        }

        v5 = [v4 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v5);
    }

    else
    {
      v7 = 0.0;
    }

    v10 = [v4 count];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v11 = v4;
    v12 = [v11 countByEnumeratingWithState:&v35 objects:v44 count:16];
    v13 = v7 / v10;
    if (v12)
    {
      v14 = *v36;
      v15 = 0.0;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v35 + 1) + 8 * j);
          [v17 score];
          v19 = v18;
          [v17 score];
          v15 = v15 + (v19 - v13) * (v20 - v13);
        }

        v12 = [v11 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v12);
    }

    else
    {
      v15 = 0.0;
    }

    v21 = [v11 count];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v22 = v11;
    v23 = [v22 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v23)
    {
      v24 = sqrt(v15 / v21);
      v25 = *v32;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v31 + 1) + 8 * k);
          if (v24 == 0.0)
          {
            [*(*(&v31 + 1) + 8 * k) score];
            v29 = v30 - v13;
          }

          else
          {
            [*(*(&v31 + 1) + 8 * k) score];
            v29 = (v28 - v13) / v24;
          }

          *&v29 = v29;
          [v27 setScore:{v29, v31}];
        }

        v23 = [v22 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v23);
    }
  }
}

+ (void)applyLogOfLinearProbabilityTransformationToPredictions:(id)predictions
{
  v36 = *MEMORY[0x277D85DE8];
  predictionsCopy = predictions;
  if (![predictionsCopy count])
  {
    goto LABEL_25;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = predictionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v7)
  {
    v8 = *v31;
    v9 = 0.0;
    v10 = INFINITY;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        [v12 score];
        v14 = v13;
        [v12 score];
        if (v10 > v15)
        {
          [v12 score];
          v10 = v16;
        }

        v9 = v9 + v14;
      }

      v7 = [v6 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v7);

    v17 = 0.0;
    if (v10 <= 0.0)
    {
      v17 = 1.0 - v10;
      v9 = v9 + (1.0 - v10) * [v6 count];
    }

    if (v9 > 0.0)
    {
      goto LABEL_17;
    }
  }

  else
  {

    v9 = 0.0;
    v17 = 0.0;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXActionPredictionsHelpers.mm" lineNumber:126 description:@"Error: Shifting sum is not greater than zero"];

LABEL_17:
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = v6;
  v20 = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v20)
  {
    v21 = *v27;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v23 = *(*(&v26 + 1) + 8 * j);
        [v23 score];
        v25 = log((v17 + v24) / v9);
        *&v25 = v25;
        [v23 setScore:v25];
      }

      v20 = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v20);
  }

LABEL_25:
}

+ (void)applyLogSoftmaxToPredictions:(id)predictions
{
  v40 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  predictionsCopy = predictions;
  v4 = [predictionsCopy countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v4)
  {
    v5 = *v34;
    v6 = -INFINITY;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v34 != v5)
        {
          objc_enumerationMutation(predictionsCopy);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        [v8 score];
        if (v6 < v9)
        {
          [v8 score];
          v6 = v10;
        }
      }

      v4 = [predictionsCopy countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = -INFINITY;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = predictionsCopy;
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v12)
  {
    v13 = *v30;
    v14 = 0.0;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v29 + 1) + 8 * j) score];
        v14 = v14 + exp(v16 - v6);
      }

      v12 = [v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v12);
  }

  else
  {
    v14 = 0.0;
  }

  v17 = log(v14);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = v11;
  v19 = [v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v19)
  {
    v20 = *v26;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v25 + 1) + 8 * k);
        [v22 score];
        v24 = v23 - v6 - v17;
        *&v24 = v24;
        [v22 setScore:v24];
      }

      v19 = [v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v19);
  }
}

@end