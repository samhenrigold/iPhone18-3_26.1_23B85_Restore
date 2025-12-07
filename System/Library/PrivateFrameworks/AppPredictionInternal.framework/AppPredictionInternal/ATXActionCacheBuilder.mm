@interface ATXActionCacheBuilder
+ (id)serializedChunksFromActionPredictionResults:(id)results lockscreenPredictionIndices:(id)indices;
+ (id)serializedDataFromActionPredictionResults:(id)results lockscreenPredictionIndices:(id)indices;
@end

@implementation ATXActionCacheBuilder

+ (id)serializedDataFromActionPredictionResults:(id)results lockscreenPredictionIndices:(id)indices
{
  v4 = [ATXActionCacheBuilder serializedChunksFromActionPredictionResults:results lockscreenPredictionIndices:indices];
  v5 = ATXCacheFileJoinChunks();

  return v5;
}

+ (id)serializedChunksFromActionPredictionResults:(id)results lockscreenPredictionIndices:(id)indices
{
  v62 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  indicesCopy = indices;
  v5 = [MEMORY[0x277CEB2B8] abGroupForConsumerSubType:24];
  v6 = v5;
  if (v5)
  {
    abGroupNilString = v5;
  }

  else
  {
    abGroupNilString = [MEMORY[0x277CEB2B8] abGroupNilString];
  }

  v8 = abGroupNilString;

  v41 = v8;
  v9 = [MEMORY[0x277CEB2B8] abGroupForConsumerSubType:25];
  v10 = v9;
  if (v9)
  {
    abGroupNilString2 = v9;
  }

  else
  {
    abGroupNilString2 = [MEMORY[0x277CEB2B8] abGroupNilString];
  }

  v12 = abGroupNilString2;

  v42 = v12;
  v13 = [MEMORY[0x277CEB2B8] abGroupForConsumerSubType:27];
  v14 = v13;
  if (v13)
  {
    abGroupNilString3 = v13;
  }

  else
  {
    abGroupNilString3 = [MEMORY[0x277CEB2B8] abGroupNilString];
  }

  v16 = abGroupNilString3;

  v43 = v16;
  v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:%@", v8, v12, v16];
  version = [MEMORY[0x277CEB3C0] version];
  v51 = objc_opt_new();
  v50 = [objc_alloc(MEMORY[0x277CEB550]) initWithABGroup:v46 assetVersion:version];
  v47 = [objc_alloc(MEMORY[0x277CEB550]) initWithABGroup:v46 assetVersion:version];
  v59 = 0u;
  v58 = 0u;
  v57 = 0u;
  v56 = 0u;
  obj = resultsCopy;
  v18 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v18)
  {
    v19 = 0;
    v20 = *v57;
    v21.i32[1] = -1059153344;
    *v21.i32 = -31337.0;
    v49 = vdupq_lane_s32(v21, 0);
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v57 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v56 + 1) + 8 * i);
        v24 = objc_autoreleasePoolPush();
        scoredAction = [v23 scoredAction];
        if (scoredAction)
        {
          location = 0;
          *&v55[415] = -31337.0;
          v26 = 2;
          WORD2(v55[415]) = 0;
          do
          {
            *&v55[v26 - 1] = v49;
            v26 += 2;
          }

          while (v26 != 416);
          if (objc_msgSend_predictionItem(v23))
          {
            v27 = objc_msgSend_predictionItem(v23);
            objc_storeStrong(&location, *v27);
            memcpy(v55, v27 + 1, 0xCFEuLL);
          }

          predictedItem = [scoredAction predictedItem];
          [predictedItem setTitleForSerializationToCache];
          [predictedItem setSubtitleForSerializationToCache];
          [scoredAction score];
          [v51 recordPrediction:predictedItem score:?];
          v29 = [MEMORY[0x277CCABB0] numberWithInteger:v19];
          LODWORD(v30) = v55[415];
          [v50 recordPrediction:v29 actionHash:v55[0] totalScore:&v55[1] scoreInputs:BYTE4(v55[415]) isMediumConfidenceForBlendingLayer:BYTE5(v55[415]) isHighConfidenceForBlendingLayer:v30];

          ++v19;
        }

        else if (objc_msgSend_predictionItem(v23))
        {
          v31 = objc_msgSend_predictionItem(v23);
          LODWORD(v32) = *(v31 + 3328);
          [v47 recordPrediction:*v31 actionHash:*(v31 + 8) totalScore:v31 + 16 scoreInputs:*(v31 + 3332) isMediumConfidenceForBlendingLayer:*(v31 + 3333) isHighConfidenceForBlendingLayer:v32];
        }

        objc_autoreleasePoolPop(v24);
      }

      v18 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v18);
  }

  finish = [v51 finish];
  v34 = objc_opt_new();
  [indicesCopy count];
  ATXCacheAppendInteger();
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __97__ATXActionCacheBuilder_serializedChunksFromActionPredictionResults_lockscreenPredictionIndices___block_invoke;
  v52[3] = &unk_27859D418;
  v35 = v34;
  v53 = v35;
  [indicesCopy enumerateIndexesUsingBlock:v52];
  finish2 = [v50 finish];
  finish3 = [v47 finish];
  v60[0] = finish;
  v38 = [v35 copy];
  v60[1] = v38;
  v60[2] = finish2;
  v60[3] = finish3;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:4];

  return v39;
}

@end