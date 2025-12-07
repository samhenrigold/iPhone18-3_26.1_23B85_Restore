@interface PPFeedbackStorage
+ (id)storeTypeDescription:(unsigned __int8)description;
+ (void)logFeedback:(id)feedback domain:(unsigned __int8)domain domainStatus:(unsigned __int8)status inBackground:(BOOL)background;
- (BOOL)deleteExpiredFeedbackWithShouldContinueBlock:(id)block;
- (BOOL)processPendingFeedbackWithShouldContinueBlock:(id)block error:(id *)error;
- (BOOL)storePendingFeedback:(id)feedback storeType:(unsigned __int8)type error:(id *)error;
- (PPFeedbackStorage)init;
- (id)locationStore;
- (id)mappedTopicsPendingFeedbackWithShouldContinueBlock:(id)block;
- (id)namedEntityStore;
- (id)pendingTopicFeedback;
- (id)topicStore;
@end

@implementation PPFeedbackStorage

- (id)pendingTopicFeedback
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__20136;
  v12 = __Block_byref_object_dispose__20137;
  v13 = 0;
  objc_autoreleasePoolPop(objc_autoreleasePoolPush());
  v3 = v9[5];
  v9[5] = MEMORY[0x277CBEBF8];

  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__PPFeedbackStorage_pendingTopicFeedback__block_invoke;
  v7[3] = &unk_278977088;
  v7[4] = &v8;
  [(_PASLock *)lock runWithLockAcquired:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __41__PPFeedbackStorage_pendingTopicFeedback__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 publisherFromStartTime:0.0];
  v4 = [v3 filterWithIsIncluded:&__block_literal_global_148_20138];
  v5 = [v4 mapWithTransform:&__block_literal_global_150_20139];
  v6 = [v5 collect];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__PPFeedbackStorage_pendingTopicFeedback__block_invoke_5;
  v8[3] = &unk_278978270;
  v8[4] = *(a1 + 32);
  v7 = [v6 sinkWithCompletion:&__block_literal_global_152 receiveInput:v8];
}

BOOL __41__PPFeedbackStorage_pendingTopicFeedback__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = [v2 storeType] == 2;

  return v3;
}

- (BOOL)processPendingFeedbackWithShouldContinueBlock:(id)block error:(id *)error
{
  blockCopy = block;
  if (self)
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__20136;
    v36 = __Block_byref_object_dispose__20137;
    v37 = 0;
    db = self->_db;
    v27 = MEMORY[0x277D85DD0];
    v28 = 3221225472;
    v29 = __44__PPFeedbackStorage__lastProcessedTimestamp__block_invoke;
    v30 = &unk_278977E98;
    v31 = &v32;
    [(PPSQLDatabase *)db readTransactionWithClient:7 block:&v27];
    v7 = v33[5];
    _Block_object_dispose(&v32, 8);
  }

  else
  {
    v7 = 0;
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__20136;
  v36 = __Block_byref_object_dispose__20137;
  v37 = 0;
  lock = self->_lock;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __73__PPFeedbackStorage_processPendingFeedbackWithShouldContinueBlock_error___block_invoke;
  v24[3] = &unk_2789770D0;
  v26 = &v32;
  v9 = v7;
  v25 = v9;
  if ([(_PASLock *)lock runWithLockAcquired:v24 shouldContinueBlock:blockCopy]== 1)
  {
    v10 = 0;
  }

  else
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v11 = objc_autoreleasePoolPush();
    v12 = v33[5];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __73__PPFeedbackStorage_processPendingFeedbackWithShouldContinueBlock_error___block_invoke_2;
    v22[3] = &unk_2789770F8;
    v23 = v9;
    v13 = [v12 filterWithIsIncluded:v22];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __73__PPFeedbackStorage_processPendingFeedbackWithShouldContinueBlock_error___block_invoke_3;
    v21[3] = &unk_278977120;
    v21[4] = &v27;
    v14 = [v13 mapWithTransform:v21];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __73__PPFeedbackStorage_processPendingFeedbackWithShouldContinueBlock_error___block_invoke_4;
    v20[3] = &unk_278977148;
    v20[4] = self;
    v20[5] = &v27;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __73__PPFeedbackStorage_processPendingFeedbackWithShouldContinueBlock_error___block_invoke_144;
    v18[3] = &unk_278977170;
    v18[4] = self;
    v15 = blockCopy;
    v19 = v15;
    v16 = [v14 sinkWithCompletion:v20 shouldContinue:v18];

    objc_autoreleasePoolPop(v11);
    v10 = v15[2](v15);
    _Block_object_dispose(&v27, 8);
  }

  _Block_object_dispose(&v32, 8);
  return v10;
}

void __73__PPFeedbackStorage_processPendingFeedbackWithShouldContinueBlock_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 doubleValue];
  v5 = [v4 publisherFromStartTime:?];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

BOOL __73__PPFeedbackStorage_processPendingFeedbackWithShouldContinueBlock_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 eventBody];
  v6 = [v5 build];
  v7 = [MEMORY[0x277D3A578] osBuild];
  if ([v6 isEqual:v7])
  {
    v8 = +[PPSettings sharedInstance];
    v9 = [v5 clientBundleId];
    if ([v8 bundleIdentifierIsEnabledForDonation:v9])
    {
      [v3 timestamp];
      v11 = v10;
      [*(a1 + 32) doubleValue];
      v13 = v11 > v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  objc_autoreleasePoolPop(v4);
  return v13;
}

id __73__PPFeedbackStorage_processPendingFeedbackWithShouldContinueBlock_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 timestamp];
  *(*(*(a1 + 32) + 8) + 24) = v4;
  v5 = [v3 eventBody];

  return v5;
}

void __73__PPFeedbackStorage_processPendingFeedbackWithShouldContinueBlock_error___block_invoke_4(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 state] == 1)
  {
    v4 = pp_default_log_handle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = [v3 error];
      LODWORD(v10) = 138412290;
      *(&v10 + 4) = v9;
      _os_log_error_impl(&dword_23224A000, v4, OS_LOG_TYPE_ERROR, "PPFeedbackStorage: error processing pending feedback: %@", &v10, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(*(*(a1 + 40) + 8) + 24)];
  v7 = v6;
  if (v5)
  {
    v8 = *(v5 + 8);
    *&v10 = MEMORY[0x277D85DD0];
    *(&v10 + 1) = 3221225472;
    v11 = __49__PPFeedbackStorage__saveLastProcessedTimestamp___block_invoke;
    v12 = &unk_278978B68;
    v13 = v6;
    [v8 writeTransactionWithClient:7 block:&v10];
  }
}

uint64_t __73__PPFeedbackStorage_processPendingFeedbackWithShouldContinueBlock_error___block_invoke_144(uint64_t a1, void *a2)
{
  v229 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v154 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = [v3 storeType];
  v155 = a1;
  v6 = *(a1 + 40);
  v173 = v3;
  v171 = v4;
  v172 = v6;
  if (v4)
  {
    v206 = 0u;
    v207 = 0u;
    v204 = 0u;
    v205 = 0u;
    obj = [v173 feedbackItems];
    v7 = [obj countByEnumeratingWithState:&v204 objects:v215 count:16];
    if (!v7)
    {
      goto LABEL_42;
    }

    v8 = v7;
    v170 = v172 + 2;
    v174 = *v205;
    v9 = @"clientId";
    v161 = v5;
    while (1)
    {
      v10 = 0;
      v165 = v8;
      do
      {
        if (*v205 != v174)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v204 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        if (v5 != 3)
        {
          if (v5 == 2)
          {
            v175 = v12;
            v176 = v10;
            v37 = [v11 itemString];
            v38 = [v11 itemFeedbackType];
            v178 = v37;
            v39 = v173;
            v167 = v172;
            v40 = [(PPFeedbackStorage *)v171 topicStore];
            if (v172)
            {
              v162 = v40;
              v41 = [v39 mappingId];
              if (v41)
              {
                v42 = v41;
                v43 = v39;
                v44 = objc_autoreleasePoolPush();
                v158 = v42;
                v45 = [v162 unmapMappedTopicIdentifier:v178 mappingIdentifier:v42 error:0];
                v46 = [v45 allKeys];
                v47 = [v46 _pas_mappedArrayWithTransform:&__block_literal_global_215];

                objc_autoreleasePoolPop(v44);
                v48 = objc_opt_new();
                v157 = v47;
                v49 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v47];
                [v48 setMatchingTopicIds:v49];

                v50 = [v43 timestamp];
                [v48 setToDate:v50];

                v51 = [v43 timestamp];
                [v48 setScoringDate:v51];

                v52 = [v43 clientBundleId];
                v53 = [PPFeedbackExclusionProvider excludedBundleIdsForClientBundleId:v52 domain:1];
                [v48 setExcludingSourceBundleIds:v53];

                v54 = objc_opt_new();
                v201[0] = MEMORY[0x277D85DD0];
                v201[1] = 3221225472;
                v201[2] = __101__PPFeedbackStorage__performAttributionForMappedTopic_baseFeedback_feedbackType_shouldContinueBlock___block_invoke_2;
                v201[3] = &unk_2789771B8;
                v203 = v167;
                v55 = v54;
                v202 = v55;
                v156 = v48;
                [v162 iterTopicRecordsWithQuery:v48 error:0 block:v201];
                v159 = v43;
                v56 = [v43 clientIdentifier];
                v57 = [v56 _pas_stringBackedByUTF8CString];

                v58 = objc_autoreleasePoolPush();
                [v55 allValues];
                v60 = v59 = v9;
                v61 = [v60 mutableCopy];

                objc_autoreleasePoolPop(v58);
                v62 = [v61 lastObject];
                v63 = 0x27896F000uLL;
                if (v62)
                {
                  v64 = v62;
                  v183 = v61;
                  v186 = v57;
                  v180 = v38;
                  do
                  {
                    contexta = objc_autoreleasePoolPush();
                    [v61 removeLastObject];
                    *&v225 = @"algorithm";
                    v196 = [MEMORY[0x277D3A548] describeAlgorithm:{objc_msgSend(v64, "algorithm")}];
                    *&buf = v196;
                    *(&v225 + 1) = @"algorithmEnum";
                    v192 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v64, "algorithm")}];
                    *(&buf + 1) = v192;
                    *&v226 = @"source";
                    v65 = *(v63 + 2808);
                    v189 = [v64 source];
                    v66 = [v189 bundleId];
                    v67 = [v65 filterBundleId:v66];
                    v209 = v67;
                    v210 = v57;
                    *(&v226 + 1) = v59;
                    *&v227 = @"domain";
                    v68 = [*(v63 + 2808) stringifyDomain:0];
                    v211 = v68;
                    *(&v227 + 1) = @"feedbackType";
                    v69 = [*(v63 + 2808) stringifyFeedbackType:v38];
                    v212 = v69;
                    *&v228 = @"isRemote";
                    v70 = v59;
                    v71 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v64, "isLocal") ^ 1}];
                    v213 = v71;
                    *(&v228 + 1) = @"feedbackTypeEnum";
                    v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v38];
                    v214 = v72;
                    [MEMORY[0x277CBEAC0] dictionaryWithObjects:&buf forKeys:&v225 count:8];
                    v74 = v73 = v63;

                    v59 = v70;
                    v57 = v186;

                    v61 = v183;
                    [PPMetricsDispatcher logPayloadForEvent:@"com.apple.proactive.PersonalizationPortrait.FeedbackAttributed" payload:v74 inBackground:1];

                    v63 = v73;
                    v38 = v180;
                    objc_autoreleasePoolPop(contexta);
                    v75 = [v183 lastObject];

                    v64 = v75;
                  }

                  while (v75);
                }

                v5 = v161;
                v8 = v165;
                v9 = v59;
                v41 = v158;
                v39 = v159;
              }

              v40 = v162;
            }

            v76 = v178;
            goto LABEL_39;
          }

          if (v5 != 1)
          {
            goto LABEL_40;
          }

          v175 = v12;
          v176 = v10;
          v13 = [v11 itemString];
          v14 = [v11 itemFeedbackType];
          v15 = v13;
          v16 = v173;
          v17 = v172;
          v18 = [(PPFeedbackStorage *)v171 namedEntityStore];
          v19 = objc_opt_new();
          v20 = objc_autoreleasePoolPush();
          v177 = v15;
          v21 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v15, 0}];
          objc_autoreleasePoolPop(v20);
          [v19 setMatchingNames:v21];

          [v19 setLimit:1];
          v22 = [v16 timestamp];
          [v19 setToDate:v22];

          [v19 setOrderByAscendingDate:1];
          v23 = [v16 clientBundleId];
          v24 = [PPFeedbackExclusionProvider excludedBundleIdsForClientBundleId:v23 domain:1];
          [v19 setExcludingSourceBundleIds:v24];

          if (v172[2](v17))
          {
            v25 = [v18 namedEntityRecordsWithQuery:v19 error:0];
            v26 = [v25 firstObject];

            if (v26)
            {
              if ((*v170)(v17))
              {
                v195 = v14;
                v27 = MEMORY[0x277D3A420];
                v28 = [v26 entity];
                v29 = [v27 describeCategory:{objc_msgSend(v28, "category")}];

                v30 = [v26 entity];
                v31 = [v30 dynamicCategory];

                if (v31)
                {
                  v32 = objc_autoreleasePoolPush();
                  v33 = objc_alloc(MEMORY[0x277CCACA8]);
                  v34 = [v26 entity];
                  v35 = [v34 dynamicCategory];
                  v36 = [v33 initWithFormat:@"%@:%@", v29, v35];

                  objc_autoreleasePoolPop(v32);
                  context = v36;
                }

                else
                {
                  context = v29;
                }

                v194 = objc_autoreleasePoolPush();
                *&v225 = @"algorithm";
                v191 = [MEMORY[0x277D3A438] describeAlgorithm:{objc_msgSend(v26, "algorithm")}];
                *&buf = v191;
                *(&v225 + 1) = @"algorithmEnum";
                v188 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v26, "algorithm")}];
                *(&buf + 1) = v188;
                *&v226 = @"source";
                v185 = [v26 source];
                v182 = [v185 bundleId];
                v169 = [PPMetricsUtils filterBundleId:v182];
                v209 = v169;
                *(&v226 + 1) = @"clientId";
                v164 = [v16 clientIdentifier];
                v160 = [v164 _pas_stringBackedByUTF8CString];
                v210 = v160;
                *&v227 = @"domain";
                v96 = [PPMetricsUtils stringifyDomain:1];
                v211 = v96;
                *(&v227 + 1) = @"category";
                v97 = [context _pas_stringBackedByUTF8CString];
                v212 = v97;
                *&v228 = @"feedbackType";
                v98 = [PPMetricsUtils stringifyFeedbackType:v195];
                v213 = v98;
                *(&v228 + 1) = @"feedbackTypeEnum";
                v99 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v195];
                v214 = v99;
                v100 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&buf forKeys:&v225 count:8];

                objc_autoreleasePoolPop(v194);
                [PPMetricsDispatcher logPayloadForEvent:@"com.apple.proactive.PersonalizationPortrait.FeedbackAttributed" payload:v100 inBackground:1];

                v8 = v165;
                v95 = context;
                goto LABEL_36;
              }
            }

            else
            {
              v95 = pp_default_log_handle();
              if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
              {
                LODWORD(buf) = 138739971;
                *(&buf + 4) = v177;
                _os_log_debug_impl(&dword_23224A000, v95, OS_LOG_TYPE_DEBUG, "PPFeedbackStorage: unable to attribute feedback for named entity: %{sensitive}@", &buf, 0xCu);
              }

LABEL_36:
            }

            v5 = v161;
          }

          v76 = v177;
          v9 = @"clientId";
          goto LABEL_39;
        }

        v175 = v12;
        v176 = v10;
        v77 = [v11 itemString];
        v78 = [v11 itemFeedbackType];
        v79 = v77;
        v80 = v173;
        v81 = v172;
        v82 = [(PPFeedbackStorage *)v171 locationStore];
        v83 = objc_opt_new();
        v179 = v79;
        [v83 setFuzzyMatchingString:v79];
        v84 = [v80 timestamp];
        [v83 setToDate:v84];

        [v83 setLimit:1];
        [v83 setOrderByAscendingDate:1];
        v85 = [v80 clientBundleId];
        v86 = [PPFeedbackExclusionProvider excludedBundleIdsForClientBundleId:v85 domain:2];
        [v83 setExcludingSourceBundleIds:v86];

        v9 = @"clientId";
        v8 = v165;
        if (v172[2](v81))
        {
          v87 = [v82 locationRecordsWithQuery:v83 error:0];
          v88 = [v87 firstObject];

          if (v88)
          {
            if ((*v170)(v81))
            {
              contextb = objc_autoreleasePoolPush();
              *&v225 = @"algorithm";
              v197 = [MEMORY[0x277D3A3F0] describeAlgorithm:{objc_msgSend(v88, "algorithm")}];
              *&buf = v197;
              *(&v225 + 1) = @"algorithmEnum";
              v193 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v88, "algorithm")}];
              *(&buf + 1) = v193;
              *&v226 = @"source";
              v190 = [v88 source];
              v187 = [v190 bundleId];
              v184 = [PPMetricsUtils filterBundleId:v187];
              v209 = v184;
              *(&v226 + 1) = @"clientId";
              v181 = [v80 clientIdentifier];
              v168 = [v181 _pas_stringBackedByUTF8CString];
              v210 = v168;
              *&v227 = @"domain";
              v163 = [PPMetricsUtils stringifyDomain:2];
              v211 = v163;
              *(&v227 + 1) = @"category";
              v89 = MEMORY[0x277D3A3D8];
              v90 = [v88 location];
              v91 = [v89 describeCategory:{objc_msgSend(v90, "category")}];
              v212 = v91;
              *&v228 = @"feedbackType";
              v92 = [PPMetricsUtils stringifyFeedbackType:v78];
              v213 = v92;
              *(&v228 + 1) = @"feedbackTypeEnum";
              v93 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v78];
              v214 = v93;
              v94 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&buf forKeys:&v225 count:8];

              v9 = @"clientId";
              v8 = v165;

              objc_autoreleasePoolPop(contextb);
              [PPMetricsDispatcher logPayloadForEvent:@"com.apple.proactive.PersonalizationPortrait.FeedbackAttributed" payload:v94 inBackground:1];
              goto LABEL_29;
            }
          }

          else
          {
            v94 = pp_default_log_handle();
            if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(buf) = 138739971;
              *(&buf + 4) = v179;
              _os_log_debug_impl(&dword_23224A000, v94, OS_LOG_TYPE_DEBUG, "PPFeedbackStorage: unable to attribute feedback for location: %{sensitive}@", &buf, 0xCu);
            }

LABEL_29:
          }

          v5 = v161;
        }

        v76 = v179;
LABEL_39:
        v10 = v176;

        v12 = v175;
LABEL_40:
        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v204 objects:v215 count:16];
      if (!v8)
      {
LABEL_42:

        break;
      }
    }
  }

  v101 = [v173 feedbackItems];
  v102 = [v101 mutableCopy];

  v103 = v102;
  objc_opt_self();
  v104 = objc_opt_new();
  v225 = 0u;
  v226 = 0u;
  v227 = 0u;
  v228 = 0u;
  v105 = v103;
  v106 = [v105 countByEnumeratingWithState:&v225 objects:v215 count:16];
  if (v106)
  {
    v107 = v106;
    v108 = *v226;
    do
    {
      for (i = 0; i != v107; ++i)
      {
        if (*v226 != v108)
        {
          objc_enumerationMutation(v105);
        }

        v110 = *(*(&v225 + 1) + 8 * i);
        if ([v110 itemFeedbackType] == 5)
        {
          v111 = [v110 itemString];
          [v104 addObject:v111];
        }
      }

      v107 = [v105 countByEnumeratingWithState:&v225 objects:v215 count:16];
    }

    while (v107);
  }

  v112 = [v105 count];
  if (v112 - 1 >= 0)
  {
    v113 = v112;
    do
    {
      --v113;
      v114 = objc_autoreleasePoolPush();
      v115 = [v105 objectAtIndexedSubscript:v113];
      v116 = [v115 itemFeedbackType];
      if ((v116 - 1) >= 4)
      {
        if (v116 == 5)
        {
          [v105 removeObjectAtIndex:v113];
          goto LABEL_57;
        }

        v117 = pp_default_log_handle();
        if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
        {
          v118 = [v115 itemFeedbackType];
          LODWORD(buf) = 67109120;
          DWORD1(buf) = v118;
          _os_log_error_impl(&dword_23224A000, v117, OS_LOG_TYPE_ERROR, "invalid feedbackType: %u", &buf, 8u);
        }
      }

      else
      {
        v117 = [v115 itemString];
        [v104 removeObject:v117];
      }

LABEL_57:
      objc_autoreleasePoolPop(v114);
    }

    while (v113 > 0);
  }

  v206 = 0u;
  v207 = 0u;
  v204 = 0u;
  v205 = 0u;
  v119 = v104;
  v120 = [v119 countByEnumeratingWithState:&v204 objects:&buf count:16];
  if (v120)
  {
    v121 = v120;
    v122 = *v205;
    do
    {
      for (j = 0; j != v121; ++j)
      {
        if (*v205 != v122)
        {
          objc_enumerationMutation(v119);
        }

        v124 = [objc_alloc(MEMORY[0x277D3A3C0]) initWithItemString:*(*(&v204 + 1) + 8 * j) itemFeedbackType:4];
        [v105 addObject:v124];
      }

      v121 = [v119 countByEnumeratingWithState:&v204 objects:&buf count:16];
    }

    while (v121);
  }

  v125 = [PPInternalFeedback alloc];
  v126 = [v173 timestamp];
  v127 = [v173 clientIdentifier];
  v128 = [v173 clientBundleId];
  v129 = [v173 mappingId];
  v130 = [v173 storeType];
  v131 = [v173 build];
  v132 = [(PPInternalFeedback *)v125 initWithFeedbackItems:v105 timestamp:v126 clientIdentifier:v127 clientBundleId:v128 mappingId:v129 storeType:v130 build:v131];

  v133 = *(v155 + 32);
  v134 = v132;
  if (v133)
  {
    v135 = [objc_opt_class() storeTypeDescription:{-[PPInternalFeedback storeType](v134, "storeType")}];
    v136 = pp_default_log_handle();
    if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
    {
      v137 = [(PPBaseFeedback *)v134 feedbackItems];
      v138 = [v137 count];
      *v215 = 138412546;
      v216 = v135;
      v217 = 2048;
      v218 = v138;
      _os_log_impl(&dword_23224A000, v136, OS_LOG_TYPE_DEFAULT, "filterPendingFeedbackItems(%@): Filtering %tu pending items", v215, 0x16u);
    }

    v139 = pp_default_log_handle();
    if (os_log_type_enabled(v139, OS_LOG_TYPE_INFO))
    {
      v140 = [(PPBaseFeedback *)v134 timestamp];
      v141 = [(PPBaseFeedback *)v134 clientIdentifier];
      v142 = [(PPBaseFeedback *)v134 clientBundleId];
      v143 = [(PPBaseFeedback *)v134 mappingId];
      *v215 = 138413314;
      v216 = v135;
      v217 = 2112;
      v218 = v140;
      v219 = 2112;
      v220 = v141;
      v221 = 2112;
      v222 = v142;
      v223 = 2112;
      v224 = v143;
      _os_log_impl(&dword_23224A000, v139, OS_LOG_TYPE_INFO, "filterPendingFeedbackItems(%@): Filtering items for (%@, %@, %@, %@)", v215, 0x34u);
    }

    v144 = [(PPBaseFeedback *)v134 feedbackItems];
    v145 = [v144 count];

    if (!v145)
    {
      goto LABEL_100;
    }

    v146 = [(PPInternalFeedback *)v134 storeType];
    if (v146 <= 3)
    {
      switch(v146)
      {
        case 1:
          v148 = [(PPFeedbackStorage *)v133 namedEntityStore];
          goto LABEL_98;
        case 2:
          v148 = [(PPFeedbackStorage *)v133 topicStore];
          goto LABEL_98;
        case 3:
          v148 = [(PPFeedbackStorage *)v133 locationStore];
LABEL_98:
          v147 = v148;
          [v148 processFeedback:v134];
          goto LABEL_99;
      }
    }

    else
    {
      if (v146 <= 5)
      {
        if (v146 == 4)
        {
          v147 = pp_default_log_handle();
          if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
          {
LABEL_93:
            v151 = [objc_opt_class() storeTypeDescription:{-[PPInternalFeedback storeType](v134, "storeType")}];
            *v215 = 138412290;
            v216 = v151;
            _os_log_error_impl(&dword_23224A000, v147, OS_LOG_TYPE_ERROR, "found pending items for unsupported PPStoreType value of %@", v215, 0xCu);
          }
        }

        else
        {
          v147 = pp_default_log_handle();
          if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_93;
          }
        }

LABEL_99:

LABEL_100:
        goto LABEL_101;
      }

      if (v146 == 6)
      {
        v149 = *(v133 + 64);
        if (!v149)
        {
          v148 = +[PPLocalConnectionsStore defaultStore];
          goto LABEL_98;
        }

        goto LABEL_95;
      }

      if (v146 == 7)
      {
        v149 = *(v133 + 40);
        if (!v149)
        {
          v148 = +[PPLocalQuickTypeBroker sharedInstance];
          goto LABEL_98;
        }

LABEL_95:
        v148 = v149;
        goto LABEL_98;
      }
    }

    v147 = pp_default_log_handle();
    if (os_log_type_enabled(v147, OS_LOG_TYPE_FAULT))
    {
      v150 = [(PPInternalFeedback *)v134 storeType];
      *v215 = 67109120;
      LODWORD(v216) = v150;
      _os_log_fault_impl(&dword_23224A000, v147, OS_LOG_TYPE_FAULT, "found pending items for invalid PPStoreType value of %u", v215, 8u);
    }

    goto LABEL_99;
  }

LABEL_101:

  v152 = (*(*(v155 + 40) + 16))();
  objc_autoreleasePoolPop(v154);

  return v152;
}

- (id)namedEntityStore
{
  v1 = *(self + 16);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = +[PPLocalNamedEntityStore defaultStore];
  }

  return v2;
}

- (id)topicStore
{
  v1 = *(self + 24);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = +[PPLocalTopicStore defaultStore];
  }

  return v2;
}

- (id)locationStore
{
  v1 = *(self + 32);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = +[PPLocalLocationStore defaultStore];
  }

  return v2;
}

void __101__PPFeedbackStorage__performAttributionForMappedTopic_baseFeedback_feedbackType_shouldContinueBlock___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = a2;
  if ((v6(v5) & 1) == 0)
  {
    *a3 = 1;
  }

  v8 = *(a1 + 32);
  v10 = [v7 topic];
  v9 = [v10 topicIdentifier];
  [v8 setObject:v7 forKeyedSubscript:v9];
}

id __101__PPFeedbackStorage__performAttributionForMappedTopic_baseFeedback_feedbackType_shouldContinueBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 unsignedIntegerValue];

  v6 = [v4 initWithFormat:@"Q%tu", v5];

  return v6;
}

void *__49__PPFeedbackStorage__saveLastProcessedTimestamp___block_invoke(void *result, uint64_t a2)
{
  v2 = result[4];
  if (v2)
  {
    return [PPSQLKVStore setNumber:v2 forKey:@"pendingFeedbackProcessedDate" transaction:a2];
  }

  return result;
}

uint64_t __44__PPFeedbackStorage__lastProcessedTimestamp__block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [PPSQLKVStore numberForKey:@"pendingFeedbackProcessedDate" transaction:a2];

  return MEMORY[0x2821F96F8]();
}

- (id)mappedTopicsPendingFeedbackWithShouldContinueBlock:(id)block
{
  blockCopy = block;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__20136;
  v24 = __Block_byref_object_dispose__20137;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__20136;
  v18 = __Block_byref_object_dispose__20137;
  v19 = 0;
  lock = self->_lock;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__PPFeedbackStorage_mappedTopicsPendingFeedbackWithShouldContinueBlock___block_invoke;
  v13[3] = &unk_278977088;
  v13[4] = &v14;
  if ([(_PASLock *)lock runWithLockAcquired:v13 shouldContinueBlock:blockCopy]== 1)
  {
    v6 = 0;
  }

  else
  {
    v7 = [v15[5] filterWithIsIncluded:&__block_literal_global_124_20222];
    v8 = [v7 mapWithTransform:&__block_literal_global_127_20223];
    collect = [v8 collect];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __72__PPFeedbackStorage_mappedTopicsPendingFeedbackWithShouldContinueBlock___block_invoke_5;
    v12[3] = &unk_278978270;
    v12[4] = &v20;
    v10 = [collect sinkWithCompletion:&__block_literal_global_129_20224 receiveInput:v12];

    v6 = v21[5];
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v6;
}

uint64_t __72__PPFeedbackStorage_mappedTopicsPendingFeedbackWithShouldContinueBlock___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 publisherFromStartTime:0.0];

  return MEMORY[0x2821F96F8]();
}

BOOL __72__PPFeedbackStorage_mappedTopicsPendingFeedbackWithShouldContinueBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 eventBody];
  if ([v3 isMapped])
  {
    v4 = [v2 eventBody];
    v5 = [v4 storeType] == 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)deleteExpiredFeedbackWithShouldContinueBlock:(id)block
{
  blockCopy = block;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__PPFeedbackStorage_deleteExpiredFeedbackWithShouldContinueBlock___block_invoke;
  v8[3] = &unk_278977060;
  v6 = blockCopy;
  v9 = v6;
  v10 = &v11;
  [(_PASLock *)lock runWithLockAcquired:v8 shouldContinueBlock:v6];
  LOBYTE(lock) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return (lock & 1) == 0;
}

void __66__PPFeedbackStorage_deleteExpiredFeedbackWithShouldContinueBlock___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__PPFeedbackStorage_deleteExpiredFeedbackWithShouldContinueBlock___block_invoke_2;
  v4[3] = &unk_278977038;
  v5 = *(a1 + 32);
  [a2 pruneExpiredEventsWithBlock:v4];
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __66__PPFeedbackStorage_deleteExpiredFeedbackWithShouldContinueBlock___block_invoke_2(uint64_t a1, _BYTE *a2, double a3)
{
  v8 = *MEMORY[0x277D85DE8];
  if (((*(*(a1 + 32) + 16))() & 1) == 0)
  {
    *a2 = 1;
  }

  v5 = pp_default_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_debug_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEBUG, "PPFeedbackStorage: deleted feedback from %lf", &v6, 0xCu);
  }
}

- (BOOL)storePendingFeedback:(id)feedback storeType:(unsigned __int8)type error:(id *)error
{
  typeCopy = type;
  feedbackCopy = feedback;
  clientBundleId = [feedbackCopy clientBundleId];

  if (clientBundleId)
  {
    [feedbackCopy setStoreType:typeCopy];
    clientIdentifier = [feedbackCopy clientIdentifier];
    v10 = [clientIdentifier isEqualToString:@"ICLex"];

    if (v10)
    {
      v11 = feedbackCopy;
      feedbackCopy = v11;
      if (self)
      {
        v32 = 0;
        v33 = &v32;
        v34 = 0x3032000000;
        v35 = __Block_byref_object_copy__20136;
        v36 = __Block_byref_object_dispose__20137;
        v37 = 0;
        lock = self->_lock;
        *buf = MEMORY[0x277D85DD0];
        v39 = 3221225472;
        v40 = __64__PPFeedbackStorage__existingSessionMatchingFeedback_storeType___block_invoke;
        v41 = &unk_278977010;
        feedbackCopy = v11;
        LOBYTE(v44) = typeCopy;
        v42 = feedbackCopy;
        v43 = &v32;
        [(_PASLock *)lock runWithLockAcquired:buf];
        v13 = v33[5];

        _Block_object_dispose(&v32, 8);
        if (v13)
        {
          v14 = v13;
          v32 = 0;
          v33 = &v32;
          v34 = 0x2020000000;
          LOBYTE(v35) = 1;
          Current = CFAbsoluteTimeGetCurrent();
          v16 = self->_lock;
          *buf = MEMORY[0x277D85DD0];
          v39 = 3221225472;
          v40 = __44__PPFeedbackStorage__removeExistingSession___block_invoke;
          v41 = &unk_278976F78;
          v44 = Current + -40.0;
          v13 = v14;
          v42 = v13;
          v43 = &v32;
          [(_PASLock *)v16 runWithLockAcquired:buf];
          LODWORD(v16) = *(v33 + 24);

          _Block_object_dispose(&v32, 8);
          if (v16 == 1)
          {
            feedbackItems = [v13 feedbackItems];
            v29 = [feedbackItems mutableCopy];

            feedbackItems2 = [feedbackCopy feedbackItems];
            [v29 addObjectsFromArray:feedbackItems2];

            v28 = [PPInternalFeedback alloc];
            timestamp = [v13 timestamp];
            clientIdentifier2 = [v13 clientIdentifier];
            clientBundleId2 = [v13 clientBundleId];
            mappingId = [v13 mappingId];
            build = [v13 build];
            v24 = [(PPInternalFeedback *)v28 initWithFeedbackItems:v29 timestamp:timestamp clientIdentifier:clientIdentifier2 clientBundleId:clientBundleId2 mappingId:mappingId storeType:typeCopy build:build];

            feedbackCopy = v24;
          }
        }
      }

      else
      {

        v13 = 0;
      }
    }

    v25 = self->_lock;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __58__PPFeedbackStorage_storePendingFeedback_storeType_error___block_invoke;
    v30[3] = &unk_278976F28;
    feedbackCopy = feedbackCopy;
    v31 = feedbackCopy;
    [(_PASLock *)v25 runWithLockAcquired:v30];
    v26 = v31;
  }

  else
  {
    v26 = pp_default_log_handle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23224A000, v26, OS_LOG_TYPE_ERROR, "nil clientBundleId in client feedback", buf, 2u);
    }
  }

  return clientBundleId != 0;
}

void __58__PPFeedbackStorage_storePendingFeedback_storeType_error___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v5 source];
  [v4 sendEvent:*(a1 + 32)];

  objc_autoreleasePoolPop(v3);
}

void __44__PPFeedbackStorage__removeExistingSession___block_invoke(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__PPFeedbackStorage__removeExistingSession___block_invoke_2;
  v6[3] = &unk_278976F50;
  v9 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [a2 pruneWithPredicateBlock:v6];
}

uint64_t __44__PPFeedbackStorage__removeExistingSession___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 timestamp];
  if (v4 >= *(a1 + 48))
  {
    v6 = [v3 eventBody];
    v5 = [v6 isEqual:*(a1 + 32)];

    *(*(*(a1 + 40) + 8) + 24) &= v5;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __64__PPFeedbackStorage__existingSessionMatchingFeedback_storeType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 publisherFromStartTime:CFAbsoluteTimeGetCurrent() + -30.0];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__PPFeedbackStorage__existingSessionMatchingFeedback_storeType___block_invoke_2;
  v8[3] = &unk_278976FA0;
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v5 = [v4 filterWithIsIncluded:v8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__PPFeedbackStorage__existingSessionMatchingFeedback_storeType___block_invoke_118;
  v7[3] = &unk_278976FE8;
  v7[4] = *(a1 + 40);
  v6 = [v5 sinkWithCompletion:&__block_literal_global_20233 receiveInput:v7];
}

uint64_t __64__PPFeedbackStorage__existingSessionMatchingFeedback_storeType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 mappingId];
  v6 = [*(a1 + 32) mappingId];
  if (v5 == v6)
  {
    v10 = 1;
  }

  else
  {
    v7 = [v3 eventBody];
    v8 = [v7 mappingId];
    v9 = [*(a1 + 32) mappingId];
    v10 = [v8 isEqual:v9];
  }

  v11 = [v3 eventBody];
  if ([v11 storeType] == *(a1 + 40))
  {
    v12 = [v3 eventBody];
    v13 = [v12 clientIdentifier];
    v14 = [*(a1 + 32) clientIdentifier];
    if ([v13 isEqual:v14])
    {
      v15 = [v3 eventBody];
      v16 = [v15 clientBundleId];
      v17 = [*(a1 + 32) clientBundleId];
      v18 = [v16 isEqual:v17] & v10;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t __64__PPFeedbackStorage__existingSessionMatchingFeedback_storeType___block_invoke_118(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 eventBody];

  return MEMORY[0x2821F96F8]();
}

void __64__PPFeedbackStorage__existingSessionMatchingFeedback_storeType___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 state] == 1)
  {
    v3 = pp_default_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [v2 error];
      v5 = 138412290;
      v6 = v4;
      _os_log_error_impl(&dword_23224A000, v3, OS_LOG_TYPE_ERROR, "PPFeedbackStorage: error processing sessions, starting a new one. %@", &v5, 0xCu);
    }
  }
}

- (PPFeedbackStorage)init
{
  v3 = +[PPSQLDatabase sharedInstance];
  if (v3)
  {
    v4 = [PPPaths subdirectory:@"streams"];
    v5 = v3;
    v6 = v4;
    if (self)
    {
      v16.receiver = self;
      v16.super_class = PPFeedbackStorage;
      v7 = [(PPFeedbackStorage *)&v16 init];
      self = v7;
      if (v7)
      {
        objc_storeStrong(&v7->_db, v3);
        objc_storeStrong(&self->_namedEntityStoreOverride, 0);
        objc_storeStrong(&self->_topicStoreOverride, 0);
        objc_storeStrong(&self->_locationStoreOverride, 0);
        objc_storeStrong(&self->_quickTypeBrokerOverride, 0);
        objc_storeStrong(&self->_contactStoreOverride, 0);
        objc_storeStrong(&self->_eventStoreOverride, 0);
        objc_storeStrong(&self->_connectionsStoreOverride, 0);
        v8 = [objc_alloc(MEMORY[0x277CF17F8]) initWithStoreBasePath:v6 segmentSize:8 * NSPageSize()];
        v9 = [objc_alloc(MEMORY[0x277CF17E8]) initPruneOnAccess:1 filterByAgeOnRead:1 maxAge:51200 maxStreamSize:86400.0];
        [v8 setPruningPolicy:v9];
        v10 = [objc_alloc(MEMORY[0x277CF1B30]) initWithPrivateStreamIdentifier:@"portraitFeedback" storeConfig:v8];
        v11 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v10];
        lock = self->_lock;
        self->_lock = v11;
      }
    }

    self = self;
    selfCopy = self;
  }

  else
  {
    v14 = pp_default_log_handle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v16.receiver) = 0;
      _os_log_fault_impl(&dword_23224A000, v14, OS_LOG_TYPE_FAULT, "Failed to get db instance", &v16, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)storeTypeDescription:(unsigned __int8)description
{
  if (description >= 8u)
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"INVALID_VALUE_OF_%u", description];
  }

  else
  {
    v3 = off_2789771D8[description];
  }

  return v3;
}

+ (void)logFeedback:(id)feedback domain:(unsigned __int8)domain domainStatus:(unsigned __int8)status inBackground:(BOOL)background
{
  domainCopy = domain;
  backgroundCopy = background;
  statusCopy = status;
  v48 = *MEMORY[0x277D85DE8];
  feedbackCopy = feedback;
  clientIdentifier = [feedbackCopy clientIdentifier];
  v8 = [clientIdentifier isEqualToString:@"ICLex"];

  if (v8)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    feedbackItems = [feedbackCopy feedbackItems];
    context = [feedbackItems countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (context)
    {
      v32 = *v40;
      v33 = feedbackCopy;
      obj = feedbackItems;
      do
      {
        for (i = 0; i != context; i = i + 1)
        {
          if (*v40 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v39 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          v13 = objc_autoreleasePoolPush();
          v45[0] = @"clientId";
          clientIdentifier2 = [v33 clientIdentifier];
          _pas_stringBackedByUTF8CString = [clientIdentifier2 _pas_stringBackedByUTF8CString];
          v46[0] = _pas_stringBackedByUTF8CString;
          v45[1] = @"mappingId";
          mappingId = [v33 mappingId];
          v17 = mappingId;
          if (!mappingId)
          {
            v31 = objc_opt_new();
            v17 = v31;
          }

          v46[1] = v17;
          v45[2] = @"type";
          v18 = +[PPMetricsUtils stringifyFeedbackType:](PPMetricsUtils, "stringifyFeedbackType:", [v11 itemFeedbackType]);
          v46[2] = v18;
          v45[3] = @"feedbackDomainStatus";
          v19 = [PPMetricsUtils stringifyFeedbackDomainStatus:statusCopy];
          v46[3] = v19;
          v45[4] = @"domain";
          v20 = [PPMetricsUtils stringifyDomain:domainCopy];
          v46[4] = v20;
          v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:5];

          if (!mappingId)
          {
          }

          objc_autoreleasePoolPop(v13);
          [PPMetricsDispatcher logPayloadForEvent:@"com.apple.proactive.PersonalizationPortrait.FeedbackReceived" payload:v21 inBackground:backgroundCopy];

          objc_autoreleasePoolPop(v12);
        }

        feedbackItems = obj;
        context = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (context);
      feedbackCopy = v33;
    }
  }

  else
  {
    contexta = objc_autoreleasePoolPush();
    v43[0] = @"clientId";
    clientIdentifier3 = [feedbackCopy clientIdentifier];
    v44[0] = clientIdentifier3;
    v43[1] = @"mappingId";
    mappingId2 = [feedbackCopy mappingId];
    v24 = mappingId2;
    if (!mappingId2)
    {
      v24 = objc_opt_new();
    }

    v44[1] = v24;
    v43[2] = @"type";
    feedbackItems2 = [feedbackCopy feedbackItems];
    firstObject = [feedbackItems2 firstObject];
    v27 = +[PPMetricsUtils stringifyFeedbackType:](PPMetricsUtils, "stringifyFeedbackType:", [firstObject itemFeedbackType]);
    v44[2] = v27;
    v43[3] = @"feedbackDomainStatus";
    v28 = [PPMetricsUtils stringifyFeedbackDomainStatus:statusCopy];
    v44[3] = v28;
    v43[4] = @"domain";
    v29 = [PPMetricsUtils stringifyDomain:domainCopy];
    v44[4] = v29;
    feedbackItems = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:5];

    if (!mappingId2)
    {
    }

    objc_autoreleasePoolPop(contexta);
    [PPMetricsDispatcher logPayloadForEvent:@"com.apple.proactive.PersonalizationPortrait.FeedbackReceived" payload:feedbackItems inBackground:backgroundCopy];
  }
}

@end