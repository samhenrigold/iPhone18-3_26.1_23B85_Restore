@interface PCNeuralNetworkUtilities
+ (id)buildMutableArrayCopyOfSwiftBridgedArray:(id)array;
+ (id)calculateVisitValues:(double)values endTime:(float)time probs:(id)probs thresholdStartTime:(float)startTime loi:(int)loi probabilityCalculationMode:(int64_t)mode probabilityPercentile:(float)percentile startIdx:(int)self0;
+ (id)convertToTimestepDataset:(double)dataset currentTime:(double)time visitHistory:(id)history transitionHistory:(id)transitionHistory startTime:(double)startTime visitIndicies:(id)indicies;
+ (id)createPredictedContextFromPredSequence:(float)sequence timestepSize:(double)size currentTime:(double)time preds:(id)preds probabilityCalculationMode:(int64_t)mode probabilityPercentile:(float)percentile;
+ (id)generateClustersAndRemoveBias:(float)bias calcMode:(int64_t)mode currentTime:(double)time loiIdx:(int)idx percentile:(float)percentile predSample:(id)sample predictionArray:(id)array timestepSizeMinutes:(double)self0;
+ (id)removeBiasFromCluster:(id)cluster percentile:(float)percentile prediction:(id)prediction startIdx:(int)idx;
+ (id)sequenceDataMatrix:(id)matrix seqLength:(int)length;
+ (id)sortDictionaryByValues:(id)values;
+ (id)sortLocationHistory:(id)history;
+ (int)sequenceYlabels:(int)ylabels xTrain:(id *)train outData:(id)data seqDataMat:(id)mat yRows:(id *)rows;
+ (void)applySinCosTransform:(id)transform timeZone:(id)zone;
+ (void)removeBiasesWith:(id)with loiIdx:(int)idx mutablePreds:(id)preds;
@end

@implementation PCNeuralNetworkUtilities

+ (id)convertToTimestepDataset:(double)dataset currentTime:(double)time visitHistory:(id)history transitionHistory:(id)transitionHistory startTime:(double)startTime visitIndicies:(id)indicies
{
  v67 = *MEMORY[0x1E69E9840];
  historyCopy = history;
  transitionHistoryCopy = transitionHistory;
  indiciesCopy = indicies;
  v15 = objc_alloc_init(TimestepDataset);
  if (dataset <= 0.0)
  {
    goto LABEL_49;
  }

  v16 = dataset * 60.0;
  v57 = ((time - startTime) / (dataset * 60.0) + 1.0);
  v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v59 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v58 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = _plc_log_get_normal_handle(PCLogCategoryNeuralNetwork);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    timeCopy = time;
    v63 = 2048;
    startTimeCopy = startTime;
    v65 = 2048;
    v66 = time - startTime;
    _os_log_impl(&dword_1CEE74000, v17, OS_LOG_TYPE_DEFAULT, "current time: %f, start time: %f, window size: %f", buf, 0x20u);
  }

  v54 = v15;

  v18 = [historyCopy count];
  v19 = [transitionHistoryCopy count];
  if (v57 < 1)
  {
    v20 = 0;
    goto LABEL_46;
  }

  v20 = 0;
  v21 = 0;
  v56 = v19 - 1;
  v22 = v18 - 1;
  v23 = 0.0;
  do
  {
    v24 = time - v23 * v16;
    v25 = +[PCNeuralNetworkUtilities kUnknownString];
    v26 = objc_alloc_init(PCPLocation);
    if ((v22 & 0x80000000) != 0)
    {
      goto LABEL_26;
    }

    v27 = v22;
    while (1)
    {
      v28 = [historyCopy objectAtIndexedSubscript:v27];
      if (![v28 hasEntryTimeCFAbsolute] || !objc_msgSend(v28, "hasLocation"))
      {
        goto LABEL_16;
      }

      v29 = time + 0.001;
      if ([v28 hasExitTimeCFAbsolute])
      {
        [v28 exitTimeCFAbsolute];
        v29 = time + 0.001;
        if (v30 > 0.0)
        {
          [v28 exitTimeCFAbsolute];
          v29 = v31;
        }
      }

      [v28 entryTimeCFAbsolute];
      if (v24 > v32 && v24 <= v29)
      {
        break;
      }

      if (v24 > v29)
      {
        goto LABEL_25;
      }

LABEL_16:

      v47 = v27-- <= 0;
      if (v47)
      {
        goto LABEL_26;
      }
    }

    hasLoiIdentifier = [v28 hasLoiIdentifier];
    if (indiciesCopy && hasLoiIdentifier && ([v28 loiIdentifier], v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(indiciesCopy, "objectForKeyedSubscript:", v34), v35 = objc_claimAutoreleasedReturnValue(), v35, v34, v35))
    {
      loiIdentifier = [v28 loiIdentifier];
      v37 = [indiciesCopy objectForKeyedSubscript:loiIdentifier];

      v25 = loiIdentifier;
    }

    else
    {
      v37 = +[PCNeuralNetworkUtilities kInfrequentString];
    }

    location = [v28 location];

    v26 = location;
    v25 = v37;
    v22 = v27;
LABEL_25:

LABEL_26:
    v39 = +[PCNeuralNetworkUtilities kUnknownString];
    v40 = [v25 isEqual:v39];

    if (!v40 || (v56 & 0x80000000) != 0)
    {
      goto LABEL_43;
    }

    v41 = v56;
    while (2)
    {
      v42 = [transitionHistoryCopy objectAtIndexedSubscript:v41];
      if (![v42 hasStartTimeCFAbsolute])
      {
        goto LABEL_39;
      }

      v43 = time + 0.001;
      if ([v42 hasStopTimeCFAbsolute])
      {
        [v42 stopTimeCFAbsolute];
        v43 = time + 0.001;
        if (v44 > 0.0)
        {
          [v42 stopTimeCFAbsolute];
          v43 = v45;
        }
      }

      [v42 startTimeCFAbsolute];
      v47 = v24 <= v46 || v24 > v43;
      if (v47)
      {
        if (v24 > v43)
        {
          goto LABEL_42;
        }

LABEL_39:

        v47 = v41-- <= 0;
        if (v47)
        {
          goto LABEL_43;
        }

        continue;
      }

      break;
    }

    v48 = +[PCNeuralNetworkUtilities kTravelingString];

    v25 = v48;
    v56 = v41;
LABEL_42:

LABEL_43:
    v49 = +[PCNeuralNetworkUtilities kUnknownString];
    v50 = [v25 isEqual:v49];

    v20 += v50;
    [v60 insertObject:v25 atIndex:0];
    [v59 insertObject:v26 atIndex:0];
    v51 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:time - v23 * v16];
    [v58 insertObject:v51 atIndex:0];

    v23 = v23 + 1.0;
    ++v21;
  }

  while (v21 != v57);
LABEL_46:
  v15 = v54;
  [(TimestepDataset *)v54 setLoiAtTimestepArray:v60, v54];
  [(TimestepDataset *)v15 setLocationAtTimestepArray:v59];
  [(TimestepDataset *)v15 setTimestepCFAbsArray:v58];
  v52 = _plc_log_get_normal_handle(PCLogCategoryNeuralNetwork);
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(timeCopy) = v20;
    _os_log_impl(&dword_1CEE74000, v52, OS_LOG_TYPE_DEFAULT, "total number of timesteps with no associated transition or visit history data: %d", buf, 8u);
  }

LABEL_49:

  return v15;
}

+ (void)applySinCosTransform:(id)transform timeZone:(id)zone
{
  transformCopy = transform;
  zoneCopy = zone;
  v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v39 = zoneCopy;
  [currentCalendar setTimeZone:zoneCopy];
  timestepCFAbsArray = [transformCopy timestepCFAbsArray];
  v12 = [timestepCFAbsArray count];

  if (v12)
  {
    v13 = 0;
    v40 = v8;
    v41 = v9;
    do
    {
      v14 = MEMORY[0x1E695DF00];
      timestepCFAbsArray2 = [transformCopy timestepCFAbsArray];
      v16 = [timestepCFAbsArray2 objectAtIndexedSubscript:v13];
      [v16 doubleValue];
      v43 = [v14 dateWithTimeIntervalSinceReferenceDate:?];

      v17 = [currentCalendar components:608 fromDate:v43];
      weekday = [v17 weekday];
      hour = [v17 hour];
      minute = [v17 minute];
      [MEMORY[0x1E696AD98] numberWithLong:weekday];
      v21 = currentCalendar;
      v22 = v7;
      v24 = v23 = v6;
      [v42 addObject:v24];

      v6 = v23;
      v7 = v22;
      currentCalendar = v21;
      v25 = (2 * weekday) * 3.14159265 / 7.0;
      v27 = __sincosf_stret(v25);
      *&v26 = v27.__sinval;
      v28 = [MEMORY[0x1E696AD98] numberWithFloat:v26];
      [v6 addObject:v28];

      *&v29 = v27.__cosval;
      v30 = [MEMORY[0x1E696AD98] numberWithFloat:v29];
      [v7 addObject:v30];

      v8 = v40;
      v9 = v41;
      v31 = (((minute / 60.0) + hour) + ((minute / 60.0) + hour)) * 3.14159265 / 24.0;
      v33 = __sincosf_stret(v31);
      *&v32 = v33.__sinval;
      v34 = [MEMORY[0x1E696AD98] numberWithFloat:v32];
      [v40 addObject:v34];

      *&v35 = v33.__cosval;
      v36 = [MEMORY[0x1E696AD98] numberWithFloat:v35];
      [v41 addObject:v36];

      ++v13;
      timestepCFAbsArray3 = [transformCopy timestepCFAbsArray];
      v38 = [timestepCFAbsArray3 count];
    }

    while (v38 > v13);
  }

  [transformCopy setDayOfWeekArray:v42];
  [transformCopy setDayOfWeekSinArray:v6];
  [transformCopy setDayOfWeekCosArray:v7];
  [transformCopy setTimeOfDaySinArray:v8];
  [transformCopy setTimeOfDayCosArray:v9];
}

+ (id)sequenceDataMatrix:(id)matrix seqLength:(int)length
{
  matrixCopy = matrix;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([matrixCopy count] >= length)
  {
    if ([matrixCopy count] + 1 > length)
    {
      v8 = 0;
      lengthCopy = length;
      do
      {
        v10 = [matrixCopy subarrayWithRange:{v8, length}];
        v11 = [v10 mutableCopy];
        [v6 addObject:v11];

        ++lengthCopy;
        ++v8;
      }

      while ([matrixCopy count] + 1 > lengthCopy);
    }
  }

  else
  {
    v7 = _plc_log_get_normal_handle(PCLogCategoryNeuralNetwork);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1CEE74000, v7, OS_LOG_TYPE_DEFAULT, "Error: feature matrix too small for sequence length", v13, 2u);
    }
  }

  return v6;
}

+ (int)sequenceYlabels:(int)ylabels xTrain:(id *)train outData:(id)data seqDataMat:(id)mat yRows:(id *)rows
{
  v31 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  matCopy = mat;
  if ([matCopy count] == ylabels)
  {
    v13 = _plc_log_get_normal_handle(PCLogCategoryNeuralNetwork);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 134218240;
      v28 = [matCopy count];
      v29 = 1024;
      ylabelsCopy3 = ylabels;
      _os_log_impl(&dword_1CEE74000, v13, OS_LOG_TYPE_DEFAULT, "Error: not enough data in data matrix to create training data. Data count: %lu, requested out steps: %d", &v27, 0x12u);
    }

LABEL_7:

    v18 = 1;
    goto LABEL_12;
  }

  ylabelsCopy2 = ylabels;
  ordinalLoiLabels = [dataCopy ordinalLoiLabels];
  v16 = [ordinalLoiLabels count];

  if (v16 == ylabels)
  {
    v13 = _plc_log_get_normal_handle(PCLogCategoryNeuralNetwork);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      ordinalLoiLabels2 = [dataCopy ordinalLoiLabels];
      v27 = 134218240;
      v28 = [ordinalLoiLabels2 count];
      v29 = 1024;
      ylabelsCopy3 = ylabels;
      _os_log_impl(&dword_1CEE74000, v13, OS_LOG_TYPE_DEFAULT, "Error: not enough data in y labels to create training data. Data count: %lu, requested out steps: %d", &v27, 0x12u);
    }

    goto LABEL_7;
  }

  *rows = objc_alloc_init(MEMORY[0x1E695DF70]);
  ordinalLoiLabels3 = [dataCopy ordinalLoiLabels];
  v20 = [ordinalLoiLabels3 count];

  if (v20 != ylabelsCopy2)
  {
    v21 = 0;
    do
    {
      ordinalLoiLabels4 = [dataCopy ordinalLoiLabels];
      v23 = [ordinalLoiLabels4 subarrayWithRange:{++v21, ylabelsCopy2}];

      [*rows addObject:v23];
      ordinalLoiLabels5 = [dataCopy ordinalLoiLabels];
      v25 = [ordinalLoiLabels5 count] - ylabelsCopy2;
    }

    while (v25 > v21);
  }

  [matCopy subarrayWithRange:{0, objc_msgSend(matCopy, "count") - ylabelsCopy2}];
  *train = v18 = 0;
LABEL_12:

  return v18;
}

+ (id)removeBiasFromCluster:(id)cluster percentile:(float)percentile prediction:(id)prediction startIdx:(int)idx
{
  v30 = *MEMORY[0x1E69E9840];
  clusterCopy = cluster;
  predictionCopy = prediction;
  v10 = [predictionCopy visitStartIdx] - idx;
  v11 = ([predictionCopy visitEndIdx] - idx);
  [clusterCopy subarrayWithRange:{v10, v11 - v10}];
  v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  [*&v12 valueForKeyPath:@"@min.self"];
  v13 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  v14 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138412290;
    v29 = v12;
    _os_log_impl(&dword_1CEE74000, v14, OS_LOG_TYPE_DEFAULT, "subarray: %@", &v28, 0xCu);
  }

  v15 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 138412290;
    v29 = v13;
    _os_log_impl(&dword_1CEE74000, v15, OS_LOG_TYPE_DEFAULT, "bias in cluster: %@", &v28, 0xCu);
  }

  v10 = v10;

  [predictionCopy visitProbability];
  v17 = v16;
  [*&v13 floatValue];
  v19 = v17 - v18;
  v20 = _plc_log_get_normal_handle(PCLogCategoryVisitHistoryPredictor);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 134217984;
    v29 = v19;
    _os_log_impl(&dword_1CEE74000, v20, OS_LOG_TYPE_DEFAULT, "bias diff from max probability: %f", &v28, 0xCu);
  }

  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([clusterCopy count])
  {
    v22 = 0;
    do
    {
      [v21 addObject:&unk_1F4BDE0E0];
      ++v22;
    }

    while ([clusterCopy count] > v22);
  }

  if (v10 <= v11)
  {
    if (v19 <= 0.5 || *&v13 == 0)
    {
      v24 = COERCE_DOUBLE(&unk_1F4BDE0E0);
    }

    else
    {
      v24 = v13;
    }

    v25 = (v10 << 32) + 0x100000000;
    do
    {
      [v21 setObject:*&v24 atIndexedSubscript:v10++];
      v26 = v11 < v25 >> 32;
      v25 += 0x100000000;
    }

    while (!v26);
  }

  return v21;
}

+ (id)calculateVisitValues:(double)values endTime:(float)time probs:(id)probs thresholdStartTime:(float)startTime loi:(int)loi probabilityCalculationMode:(int64_t)mode probabilityPercentile:(float)percentile startIdx:(int)self0
{
  v10 = *&idx;
  v73 = *MEMORY[0x1E69E9840];
  probsCopy = probs;
  v18 = [probsCopy count];
  v19 = 0.0;
  v20 = 0.0;
  if (v18)
  {
    v21 = v18;
    if (mode == 1)
    {
      v29 = [probsCopy sortedArrayUsingSelector:sel_compare_];
      v30 = v29;
      percentileCopy = percentile;
      if (percentile < 0.0)
      {
        percentileCopy = 0.0;
      }

      v32 = fmin(percentileCopy, 1.0);
      v33 = [v29 objectAtIndexedSubscript:vcvtas_u32_f32(v32 * (v21 - 1))];
      [v33 floatValue];
      v20 = v34;
    }

    else if (!mode)
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v22 = probsCopy;
      v23 = [v22 countByEnumeratingWithState:&v56 objects:v72 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v57;
        v26 = 0.0;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v57 != v25)
            {
              objc_enumerationMutation(v22);
            }

            [*(*(&v56 + 1) + 8 * i) floatValue];
            v26 = v26 + v28;
          }

          v24 = [v22 countByEnumeratingWithState:&v56 objects:v72 count:16];
        }

        while (v24);
      }

      else
      {
        v26 = 0.0;
      }

      v20 = v26 / v21;
    }
  }

  v35 = v20;
  if ([probsCopy count])
  {
    v36 = 0;
    v38 = v10;
    while (1)
    {
      v39 = [probsCopy objectAtIndexedSubscript:v36];
      [v39 floatValue];
      v37 = v35 * 0.8;
      v41 = v37 - v40;

      if (v41 < 0.1)
      {
        break;
      }

      ++v36;
      v38 = (v38 + 1);
      if ([probsCopy count] <= v36)
      {
        goto LABEL_21;
      }
    }

    v19 = startTime + (v36 + 1) * values * 60.0;
  }

  else
  {
LABEL_21:
    v38 = 0;
  }

  v42 = [probsCopy count];
  LODWORD(v10) = v10 + v42;
  v43 = v42 - 1;
  while (1)
  {
    v44 = __OFSUB__(v42--, 1);
    if (v42 < 0 != v44)
    {
      break;
    }

    v45 = [probsCopy objectAtIndexedSubscript:v43];
    [v45 doubleValue];
    v47 = v35 - v46;

    v10 = (v10 - 1);
    --v43;
    if (v47 < 0.100000001)
    {
      v48 = startTime + (v42 + 1) * values * 60.0;
      goto LABEL_28;
    }
  }

  v10 = 0;
  v48 = 0.0;
LABEL_28:
  v49 = (v19 - startTime) * 0.5;
  v50 = (time - v48) * 0.5;
  v51 = (v19 + startTime) * 0.5;
  v52 = (v48 + time) * 0.5;
  v53 = _plc_log_get_normal_handle(PCLogCategoryNeuralNetwork);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110400;
    loiCopy = loi;
    v62 = 2048;
    v63 = v35;
    v64 = 2048;
    v65 = v51;
    v66 = 2048;
    v67 = v52;
    v68 = 2048;
    v69 = v49;
    v70 = 2048;
    v71 = v50;
    _os_log_impl(&dword_1CEE74000, v53, OS_LOG_TYPE_DEFAULT, "Visit: %d, Prob: %f, Start Time: %f, End Time: %f , Entry Unc: %f, Exit Unc: %f", buf, 0x3Au);
  }

  v54 = objc_alloc_init(PredictionCluster);
  [(PredictionCluster *)v54 setVisitLoiIdx:loi];
  [(PredictionCluster *)v54 setVisitEntryTime:v51];
  [(PredictionCluster *)v54 setVisitExitTime:v52];
  [(PredictionCluster *)v54 setVisitProbability:v35];
  [(PredictionCluster *)v54 setVisitEntryUnc:v49];
  [(PredictionCluster *)v54 setVisitExitUnc:v50];
  [(PredictionCluster *)v54 setVisitStartIdx:v38];
  [(PredictionCluster *)v54 setVisitEndIdx:v10];

  return v54;
}

+ (id)generateClustersAndRemoveBias:(float)bias calcMode:(int64_t)mode currentTime:(double)time loiIdx:(int)idx percentile:(float)percentile predSample:(id)sample predictionArray:(id)array timestepSizeMinutes:(double)self0
{
  v12 = *&idx;
  sampleCopy = sample;
  arrayCopy = array;
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (![sampleCopy count])
  {
    goto LABEL_14;
  }

  v18 = 0;
  v19 = 0;
  v20 = v12;
  v21 = 0.0;
  v51 = v12;
  do
  {
    v22 = [sampleCopy objectAtIndexedSubscript:{v18, v51}];
    v23 = [v22 objectAtIndexedSubscript:v20];

    v24 = time + v18 * minutes * 60.0;
    [v23 floatValue];
    v26 = v25;
    v27 = v25 >= bias;
    if (v25 < bias)
    {
      if (v19)
      {
        v31 = v18 - [v16 count];
        *&v32 = v24;
        *&v33 = v21;
        *&v34 = percentile;
        v35 = [PCNeuralNetworkUtilities calculateVisitValues:v16 endTime:v12 probs:mode thresholdStartTime:v31 loi:minutes probabilityCalculationMode:v32 probabilityPercentile:v33 startIdx:v34];
        [arrayCopy addObject:v35];
        *&v36 = percentile;
        v37 = [PCNeuralNetworkUtilities removeBiasFromCluster:v16 percentile:v35 prediction:v31 startIdx:v36];
        [v17 addObjectsFromArray:v37];
        [v17 addObject:&unk_1F4BDE0E0];
        v38 = v17;
        v39 = v12;
        v40 = objc_alloc_init(MEMORY[0x1E695DF70]);

        v21 = 0.0;
        v16 = v40;
        v12 = v39;
        v17 = v38;
        v20 = v51;
        goto LABEL_11;
      }

      v29 = v17;
      v30 = &unk_1F4BDE0E0;
    }

    else
    {
      if (!v19)
      {
        v28 = v24 + -minutes * 60.0;
        v21 = v28;
      }

      v29 = v16;
      v30 = v23;
    }

    [v29 addObject:v30];
LABEL_11:

    ++v18;
    v19 = v27;
  }

  while ([sampleCopy count] > v18);
  if (v26 >= bias)
  {
    v41 = time + [sampleCopy count] * minutes * 60.0;
    v42 = [sampleCopy count];
    v43 = v42 - [v16 count];
    *&v44 = v41;
    *&v45 = v21;
    *&v46 = percentile;
    v47 = [PCNeuralNetworkUtilities calculateVisitValues:v16 endTime:v12 probs:mode thresholdStartTime:v43 loi:minutes probabilityCalculationMode:v44 probabilityPercentile:v45 startIdx:v46];
    [arrayCopy addObject:v47];
    *&v48 = percentile;
    v49 = [PCNeuralNetworkUtilities removeBiasFromCluster:v16 percentile:v47 prediction:v43 startIdx:v48];
    [v17 addObjectsFromArray:v49];
  }

LABEL_14:

  return v17;
}

+ (id)buildMutableArrayCopyOfSwiftBridgedArray:(id)array
{
  arrayCopy = array;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([arrayCopy count])
  {
    v5 = 0;
    do
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = [arrayCopy objectAtIndexedSubscript:0];
      v8 = [v7 count];

      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = [arrayCopy objectAtIndexedSubscript:v5];
          v11 = [v10 objectAtIndexedSubscript:v9];
          [v6 addObject:v11];

          ++v9;
          v12 = [arrayCopy objectAtIndexedSubscript:0];
          v13 = [v12 count];
        }

        while (v13 > v9);
      }

      [v4 addObject:v6];

      ++v5;
    }

    while ([arrayCopy count] > v5);
  }

  return v4;
}

+ (void)removeBiasesWith:(id)with loiIdx:(int)idx mutablePreds:(id)preds
{
  withCopy = with;
  predsCopy = preds;
  if ([predsCopy count])
  {
    v8 = 0;
    do
    {
      v9 = [predsCopy objectAtIndexedSubscript:v8];
      v10 = [v9 objectAtIndexedSubscript:idx];

      v11 = MEMORY[0x1E696AD98];
      [v10 floatValue];
      v13 = v12;
      v14 = [withCopy objectAtIndexedSubscript:v8];
      [v14 floatValue];
      *&v16 = v13 - v15;
      v17 = [v11 numberWithFloat:v16];

      v18 = [predsCopy objectAtIndexedSubscript:v8];
      [v18 setObject:v17 atIndexedSubscript:idx];

      ++v8;
    }

    while ([predsCopy count] > v8);
  }
}

+ (id)createPredictedContextFromPredSequence:(float)sequence timestepSize:(double)size currentTime:(double)time preds:(id)preds probabilityCalculationMode:(int64_t)mode probabilityPercentile:(float)percentile
{
  v97 = *MEMORY[0x1E69E9840];
  predsCopy = preds;
  v13 = [PCNeuralNetworkUtilities buildMutableArrayCopyOfSwiftBridgedArray:predsCopy];
  v75 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (predsCopy && [predsCopy count] && (objc_msgSend(predsCopy, "objectAtIndexedSubscript:", 0), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, v15))
  {
    v16 = [predsCopy objectAtIndexedSubscript:0];
    v17 = [v16 count];

    if (v17)
    {
      v18 = 0;
      v19 = 0x1E696A000uLL;
      v80 = v13;
      v74 = predsCopy;
      do
      {
        v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v81 = v18;
        while (1)
        {
          *&v21 = sequence;
          *&v22 = percentile;
          v23 = [PCNeuralNetworkUtilities generateClustersAndRemoveBias:mode calcMode:v18 currentTime:v13 loiIdx:v20 percentile:v21 predSample:time predictionArray:v22 timestepSizeMinutes:size, v74];
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v24 = v23;
          v25 = [v24 countByEnumeratingWithState:&v89 objects:v96 count:16];
          if (!v25)
          {
            break;
          }

          v26 = v25;
          v27 = *v90;
          v28 = 0.0;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v90 != v27)
              {
                objc_enumerationMutation(v24);
              }

              [*(*(&v89 + 1) + 8 * i) floatValue];
              v28 = v28 + v30;
            }

            v26 = [v24 countByEnumeratingWithState:&v89 objects:v96 count:16];
          }

          while (v26);

          if (v28 <= 0.01)
          {
            goto LABEL_52;
          }

          v31 = _plc_log_get_normal_handle(PCLogCategoryNeuralNetwork);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1CEE74000, v31, OS_LOG_TYPE_DEFAULT, "bias detected in cluster, rerunning clustering with bias removed", buf, 2u);
          }

          v32 = _plc_log_get_normal_handle(PCLogCategoryNeuralNetwork);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1CEE74000, v32, OS_LOG_TYPE_DEFAULT, "biases", buf, 2u);
          }

          if ([v13 count])
          {
            v33 = 0;
            do
            {
              v34 = _plc_log_get_normal_handle(PCLogCategoryNeuralNetwork);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                v35 = [v24 objectAtIndexedSubscript:v33];
                *buf = 138412290;
                *v94 = v35;
                _os_log_impl(&dword_1CEE74000, v34, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
              }

              ++v33;
            }

            while ([v13 count] > v33);
          }

          v36 = _plc_log_get_normal_handle(PCLogCategoryNeuralNetwork);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1CEE74000, v36, OS_LOG_TYPE_DEFAULT, "pred probs:", buf, 2u);
          }

          v84 = v24;
          if ([v13 count])
          {
            v37 = 0;
            do
            {
              v38 = _plc_log_get_normal_handle(PCLogCategoryNeuralNetwork);
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                v39 = [v13 objectAtIndexedSubscript:v37];
                v40 = [v39 objectAtIndexedSubscript:v18];
                *buf = 138412290;
                *v94 = v40;
                _os_log_impl(&dword_1CEE74000, v38, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);

                v24 = v84;
                v13 = v80;
                v18 = v81;
              }

              ++v37;
            }

            while ([v13 count] > v37);
          }

          v76 = objc_alloc_init(MEMORY[0x1E695DF70]);

          [PCNeuralNetworkUtilities removeBiasesWith:v24 loiIdx:v18 mutablePreds:v13];
          v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
          *&v42 = sequence;
          *&v43 = percentile;
          v44 = [PCNeuralNetworkUtilities generateClustersAndRemoveBias:mode calcMode:v18 currentTime:v13 loiIdx:v41 percentile:v42 predSample:time predictionArray:v43 timestepSizeMinutes:size];
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          obj = v41;
          v82 = [obj countByEnumeratingWithState:&v85 objects:v95 count:16];
          if (v82)
          {
            v79 = *v86;
            do
            {
              v45 = 0;
              do
              {
                if (*v86 != v79)
                {
                  objc_enumerationMutation(obj);
                }

                v83 = v45;
                v46 = *(*(&v85 + 1) + 8 * v45);
                v47 = _plc_log_get_normal_handle(PCLogCategoryNeuralNetwork);
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                {
                  visitStartIdx = [v46 visitStartIdx];
                  visitEndIdx = [v46 visitEndIdx];
                  *buf = 67109376;
                  *v94 = visitStartIdx;
                  *&v94[4] = 1024;
                  *&v94[6] = visitEndIdx;
                  _os_log_impl(&dword_1CEE74000, v47, OS_LOG_TYPE_DEFAULT, "restoring biases from index %d to %d", buf, 0xEu);
                }

                visitStartIdx2 = [v46 visitStartIdx];
                v51 = v84;
                if (visitStartIdx2 < [v46 visitEndIdx])
                {
                  v52 = visitStartIdx2;
                  do
                  {
                    v53 = v19;
                    v54 = *(v19 + 3480);
                    v55 = [v80 objectAtIndexedSubscript:v52];
                    v56 = [v55 objectAtIndexedSubscript:v81];
                    [v56 floatValue];
                    v58 = v57;
                    v59 = [v51 objectAtIndexedSubscript:v52];
                    [v59 floatValue];
                    *&v61 = v58 + v60;
                    v62 = [v54 numberWithFloat:v61];
                    [v80 objectAtIndexedSubscript:v52];
                    v64 = v63 = v46;
                    [v64 setObject:v62 atIndexedSubscript:v81];

                    v46 = v63;
                    v19 = v53;

                    v51 = v84;
                    ++v52;
                  }

                  while (v52 < [v63 visitEndIdx]);
                }

                v45 = v83 + 1;
              }

              while (v83 + 1 != v82);
              v82 = [obj countByEnumeratingWithState:&v85 objects:v95 count:16];
            }

            while (v82);
          }

          v65 = _plc_log_get_normal_handle(PCLogCategoryNeuralNetwork);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1CEE74000, v65, OS_LOG_TYPE_DEFAULT, "prediction probabilities after restoration", buf, 2u);
          }

          v13 = v80;
          v18 = v81;
          if ([v80 count])
          {
            v66 = 0;
            do
            {
              v67 = _plc_log_get_normal_handle(PCLogCategoryNeuralNetwork);
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
              {
                v68 = [v80 objectAtIndexedSubscript:v66];
                v69 = [v68 objectAtIndexedSubscript:v81];
                *buf = 138412290;
                *v94 = v69;
                _os_log_impl(&dword_1CEE74000, v67, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
              }

              ++v66;
            }

            while ([v80 count] > v66);
          }

          v20 = v76;
        }

LABEL_52:
        [v75 addObjectsFromArray:v20];

        ++v18;
        predsCopy = v74;
        v70 = [v74 objectAtIndexedSubscript:0];
        v71 = [v70 count];
      }

      while (v71 > v18);
    }
  }

  else
  {
    v72 = _plc_log_get_normal_handle(PCLogCategoryNeuralNetwork);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1CEE74000, v72, OS_LOG_TYPE_DEFAULT, "predSample is nil or empty", buf, 2u);
    }
  }

  return v75;
}

uint64_t __45__PCNeuralNetworkUtilities_sortVisitHistory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 hasEntryTimeCFAbsolute] && objc_msgSend(v5, "hasEntryTimeCFAbsolute"))
  {
    [v4 entryTimeCFAbsolute];
    v7 = v6;
    [v5 entryTimeCFAbsolute];
    if (v7 >= v8)
    {
      [v4 entryTimeCFAbsolute];
      v12 = v11;
      [v5 entryTimeCFAbsolute];
      v9 = v12 > v13;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)sortDictionaryByValues:(id)values
{
  valuesCopy = values;
  allKeys = [valuesCopy allKeys];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__PCNeuralNetworkUtilities_sortDictionaryByValues___block_invoke;
  v8[3] = &unk_1E83B87C0;
  v9 = valuesCopy;
  v5 = valuesCopy;
  v6 = [allKeys sortedArrayUsingComparator:v8];

  return v6;
}

uint64_t __51__PCNeuralNetworkUtilities_sortDictionaryByValues___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  v8 = [*(a1 + 32) objectForKey:v6];

  v9 = [v7 integerValue];
  if (v9 >= [v8 integerValue])
  {
    v11 = [v7 integerValue];
    v10 = v11 > [v8 integerValue];
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

uint64_t __50__PCNeuralNetworkUtilities_sortTransitionHistory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 hasStartTimeCFAbsolute] && objc_msgSend(v5, "hasStartTimeCFAbsolute"))
  {
    [v4 startTimeCFAbsolute];
    v7 = v6;
    [v5 startTimeCFAbsolute];
    if (v7 >= v8)
    {
      [v4 startTimeCFAbsolute];
      v12 = v11;
      [v5 startTimeCFAbsolute];
      v9 = v12 > v13;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)sortLocationHistory:(id)history
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEB0];
  historyCopy = history;
  v5 = [[v3 alloc] initWithKey:@"timeCFAbsolute" ascending:1];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [historyCopy sortedArrayUsingDescriptors:v6];

  return v7;
}

@end