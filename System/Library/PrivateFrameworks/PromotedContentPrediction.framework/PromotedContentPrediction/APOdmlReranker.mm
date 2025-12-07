@interface APOdmlReranker
+ (OS_dispatch_queue)rerankResponseTimeoutQueue;
+ (OS_dispatch_queue)rerankSerialQueue;
- (APOdmlReranker)initWithPersonalizedAdsEnabled:(BOOL)enabled assetManager:(id)manager placementType:(unint64_t)type;
- (APOdmlReranker)initWithPersonalizedAdsEnabled:(BOOL)enabled placementType:(unint64_t)type;
- (BOOL)sendRerankResponseIfAvailable:(id)available error:(id)error;
- (id)predictAndExplore:(id)explore;
- (void)_handleError:(int64_t)error;
- (void)getRerankedAdsWithTimeLimit:(double)limit completion:(id)completion;
- (void)setAndRerankAds:(id)ads;
@end

@implementation APOdmlReranker

- (APOdmlReranker)initWithPersonalizedAdsEnabled:(BOOL)enabled placementType:(unint64_t)type
{
  enabledCopy = enabled;
  v7 = +[APOdmlAssetManagerCoordinator sharedAssetManagerCoordinator];
  v8 = [v7 assetManagerForPlacementType:type assetManagerType:0];

  v9 = [(APOdmlReranker *)self initWithPersonalizedAdsEnabled:enabledCopy assetManager:v8 placementType:type];
  return v9;
}

- (APOdmlReranker)initWithPersonalizedAdsEnabled:(BOOL)enabled assetManager:(id)manager placementType:(unint64_t)type
{
  managerCopy = manager;
  v18.receiver = self;
  v18.super_class = APOdmlReranker;
  v10 = [(APOdmlReranker *)&v18 init];
  v11 = v10;
  if (v10)
  {
    v10->_isPersonalizedAdsEnabled = enabled;
    objc_storeStrong(&v10->_assetManager, manager);
    v12 = [[APOdmlUnfairLock alloc] initWithOptions:1];
    rerankResponseLock = v11->_rerankResponseLock;
    v11->_rerankResponseLock = v12;

    v14 = OdmlLogForCategory(5uLL);
    v11->_ident = os_signpost_id_generate(v14);

    v11->_placementType = type;
    v15 = dispatch_group_create();
    rerankDispatchGroup = v11->_rerankDispatchGroup;
    v11->_rerankDispatchGroup = v15;
  }

  return v11;
}

- (void)setAndRerankAds:(id)ads
{
  adsCopy = ads;
  v5 = OdmlLogForCategory(5uLL);
  ident = [(APOdmlReranker *)self ident];
  if (ident - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = ident;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_260ECB000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Head start", &unk_260EFF3C5, buf, 2u);
    }
  }

  v8 = OdmlLogForCategory(5uLL);
  ident2 = [(APOdmlReranker *)self ident];
  if (ident2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = ident2;
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_260ECB000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "GCD Overhead", &unk_260EFF3C5, buf, 2u);
    }
  }

  v11 = OdmlLogForCategory(5uLL);
  ident3 = [(APOdmlReranker *)self ident];
  if (ident3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = ident3;
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_260ECB000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v13, "Overall reranking", &unk_260EFF3C5, buf, 2u);
    }
  }

  rerankDispatchGroup = [(APOdmlReranker *)self rerankDispatchGroup];
  v15 = +[APOdmlReranker rerankSerialQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_260EF20E4;
  v17[3] = &unk_279AC6228;
  v17[4] = self;
  v18 = adsCopy;
  v16 = adsCopy;
  dispatch_group_async(rerankDispatchGroup, v15, v17);
}

- (void)getRerankedAdsWithTimeLimit:(double)limit completion:(id)completion
{
  completionCopy = completion;
  v7 = OdmlLogForCategory(5uLL);
  ident = [(APOdmlReranker *)self ident];
  if (ident - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = ident;
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_260ECB000, v7, OS_SIGNPOST_INTERVAL_END, v9, "Head start", &unk_260EFF3C5, buf, 2u);
    }
  }

  rerankResponseLock = [(APOdmlReranker *)self rerankResponseLock];
  [rerankResponseLock lock];
  [(APOdmlReranker *)self setRerankResponse:completionCopy];

  [rerankResponseLock unlock];
  rerankDispatchGroup = [(APOdmlReranker *)self rerankDispatchGroup];
  v12 = +[APOdmlReranker rerankSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_260EF2620;
  block[3] = &unk_279AC6188;
  block[4] = self;
  dispatch_group_async(rerankDispatchGroup, v12, block);

  v13 = +[APOdmlReranker rerankResponseTimeoutQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_260EF28B0;
  v14[3] = &unk_279AC69E8;
  v14[4] = self;
  *&v14[5] = limit;
  dispatch_async(v13, v14);
}

- (id)predictAndExplore:(id)explore
{
  v41 = *MEMORY[0x277D85DE8];
  exploreCopy = explore;
  v5 = OdmlLogForCategory(5uLL);
  ident = [(APOdmlReranker *)self ident];
  if (ident - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = ident;
    if (os_signpost_enabled(v5))
    {
      v35 = 134283521;
      v36 = [exploreCopy count];
      _os_signpost_emit_with_name_impl(&dword_260ECB000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Aggregated PTTR Prediction", "%{private}lu", &v35, 0xCu);
    }
  }

  v8 = [APOdmlPredictor alloc];
  assetManager = [(APOdmlReranker *)self assetManager];
  assetManager2 = [(APOdmlReranker *)self assetManager];
  currentMLModel = [assetManager2 currentMLModel];
  v12 = [(APOdmlPredictor *)v8 initWithResponses:exploreCopy assetManager:assetManager model:currentMLModel];

  predictTapThroughRate = [(APOdmlPredictor *)v12 predictTapThroughRate];
  v14 = predictTapThroughRate;
  if (!predictTapThroughRate)
  {
    v26 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = objc_opt_class();
      v35 = 138412546;
      v36 = v27;
      v37 = 2112;
      v38 = 0;
      v28 = v27;
      _os_log_impl(&dword_260ECB000, v26, OS_LOG_TYPE_ERROR, "[%@] Reranking Error: pttrArray %@ is empty or nil.", &v35, 0x16u);
    }

    v29 = &kAPOdmlRerankingPttrArrayNil;
    goto LABEL_16;
  }

  v15 = [predictTapThroughRate count];
  v16 = [exploreCopy count];
  v17 = OdmlLogForCategory(5uLL);
  v18 = v17;
  if (v15 != v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v30 = objc_opt_class();
      v31 = v30;
      v32 = [v14 count];
      v33 = [exploreCopy count];
      v35 = 138412802;
      v36 = v30;
      v37 = 2048;
      v38 = v32;
      v39 = 2048;
      v40 = v33;
      _os_log_impl(&dword_260ECB000, v18, OS_LOG_TYPE_ERROR, "[%@] Reranking Error: pttrArray count %lu does not match rankableObjects count %lu.", &v35, 0x20u);
    }

    v29 = &kAPOdmlRerankingPttrArrayCountMismatch;
LABEL_16:
    [(APOdmlReranker *)self _handleError:*v29];
    explore = 0;
    goto LABEL_17;
  }

  ident2 = [(APOdmlReranker *)self ident];
  if (ident2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v20 = ident2;
    if (os_signpost_enabled(v18))
    {
      v21 = [exploreCopy count];
      v35 = 134283521;
      v36 = v21;
      _os_signpost_emit_with_name_impl(&dword_260ECB000, v18, OS_SIGNPOST_INTERVAL_END, v20, "Aggregated PTTR Prediction", "%{private}lu", &v35, 0xCu);
    }
  }

  v22 = [APOdmlExplorer alloc];
  assetManager3 = [(APOdmlReranker *)self assetManager];
  v24 = [(APOdmlExplorer *)v22 initWithRankableObjects:exploreCopy pttrArray:v14 assetManager:assetManager3];

  explore = [(APOdmlExplorer *)v24 explore];

LABEL_17:

  return explore;
}

- (BOOL)sendRerankResponseIfAvailable:(id)available error:(id)error
{
  v62 = *MEMORY[0x277D85DE8];
  availableCopy = available;
  errorCopy = error;
  v8 = OdmlLogForCategory(5uLL);
  ident = [(APOdmlReranker *)self ident];
  if (ident - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = ident;
    if (os_signpost_enabled(v8))
    {
      *buf = 134283521;
      v61 = COERCE_DOUBLE([availableCopy count]);
      _os_signpost_emit_with_name_impl(&dword_260ECB000, v8, OS_SIGNPOST_INTERVAL_END, v10, "Overall reranking", "%{private}lu", buf, 0xCu);
    }
  }

  rerankResponseLock = [(APOdmlReranker *)self rerankResponseLock];
  [rerankResponseLock lock];
  rerankResponse = [(APOdmlReranker *)self rerankResponse];

  if (rerankResponse)
  {
    v13 = [MEMORY[0x277CBEAA8] now];
    rerankingStartDate = [(APOdmlReranker *)self rerankingStartDate];
    [v13 timeIntervalSinceDate:rerankingStartDate];
    v16 = v15;

    rerankResponse2 = [(APOdmlReranker *)self rerankResponse];
    v48 = errorCopy;
    (rerankResponse2)[2](rerankResponse2, availableCopy, errorCopy);

    [(APOdmlReranker *)self setRerankResponse:0];
    v18 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260ECB000, v18, OS_LOG_TYPE_DEFAULT, "========== Reranking Summary ==========", buf, 2u);
    }

    v19 = MEMORY[0x277CBEB18];
    originalAds = [(APOdmlReranker *)self originalAds];
    v21 = [originalAds count];

    v49 = availableCopy;
    v22 = [availableCopy count];
    if (v21 <= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v21;
    }

    [v19 arrayWithCapacity:v23];
    v24 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    originalAds2 = [(APOdmlReranker *)self originalAds];
    v26 = [originalAds2 countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v55;
      do
      {
        v29 = 0;
        do
        {
          if (*v55 != v28)
          {
            objc_enumerationMutation(originalAds2);
          }

          v30 = MEMORY[0x277CCABB0];
          adamID = [*(*(&v54 + 1) + 8 * v29) adamID];
          v32 = [v30 numberWithInt:{objc_msgSend(adamID, "intValue")}];
          [*&v24 addObject:v32];

          ++v29;
        }

        while (v27 != v29);
        v27 = [originalAds2 countByEnumeratingWithState:&v54 objects:v59 count:16];
      }

      while (v27);
    }

    v33 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v61 = v24;
      _os_log_impl(&dword_260ECB000, v33, OS_LOG_TYPE_DEFAULT, "Original order: %@", buf, 0xCu);
    }

    [*&v24 removeAllObjects];
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v34 = v49;
    v35 = [v34 countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v51;
      do
      {
        v38 = 0;
        do
        {
          if (*v51 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = MEMORY[0x277CCABB0];
          adamID2 = [*(*(&v50 + 1) + 8 * v38) adamID];
          v41 = [v39 numberWithInt:{objc_msgSend(adamID2, "intValue")}];
          [*&v24 addObject:v41];

          ++v38;
        }

        while (v36 != v38);
        v36 = [v34 countByEnumeratingWithState:&v50 objects:v58 count:16];
      }

      while (v36);
    }

    v42 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v61 = v24;
      _os_log_impl(&dword_260ECB000, v42, OS_LOG_TYPE_DEFAULT, "Reranked order: %@", buf, 0xCu);
    }

    v43 = OdmlLogForCategory(5uLL);
    errorCopy = v48;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      [v48 description];
      v44 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412290;
      v61 = v44;
      _os_log_impl(&dword_260ECB000, v43, OS_LOG_TYPE_DEFAULT, "Reranking Error %@", buf, 0xCu);
    }

    v45 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v61 = v16 * 1000.0;
      _os_log_impl(&dword_260ECB000, v45, OS_LOG_TYPE_DEFAULT, "Reranking Duration %f ms", buf, 0xCu);
    }

    v46 = OdmlLogForCategory(5uLL);
    availableCopy = v49;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_260ECB000, v46, OS_LOG_TYPE_DEFAULT, "=======================================", buf, 2u);
    }
  }

  [rerankResponseLock unlock];

  return rerankResponse != 0;
}

- (void)_handleError:(int64_t)error
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"APOdmlRerankingErrorDomain" code:error userInfo:0];
  [(APOdmlReranker *)self setRerankerError:v5];

  rerankerError = [(APOdmlReranker *)self rerankerError];
  originalAds = [(APOdmlReranker *)self originalAds];
  v8 = [(APOdmlReranker *)self sendRerankResponseIfAvailable:originalAds error:rerankerError];

  if (v8)
  {
    v9 = OdmlLogForCategory(5uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412546;
      v14 = objc_opt_class();
      v15 = 2048;
      errorCopy = error;
      v10 = v14;
      _os_log_impl(&dword_260ECB000, v9, OS_LOG_TYPE_ERROR, "[%@] Reranking Error: %ld.", &v13, 0x16u);
    }

    rerankingStartDate = [(APOdmlReranker *)self rerankingStartDate];
    date = [MEMORY[0x277CBEAA8] date];
    [APOdmlAnalyticsReranking sendTimedEvent:rerankerError statusSuccess:0 additionalDetails:0 startDate:rerankingStartDate endDate:date];
  }
}

+ (OS_dispatch_queue)rerankSerialQueue
{
  if (qword_280CCF520 != -1)
  {
    sub_260EF812C();
  }

  v3 = qword_280CCF530;

  return v3;
}

+ (OS_dispatch_queue)rerankResponseTimeoutQueue
{
  if (qword_280CCF528 != -1)
  {
    sub_260EF8140();
  }

  v3 = qword_280CCF538;

  return v3;
}

@end