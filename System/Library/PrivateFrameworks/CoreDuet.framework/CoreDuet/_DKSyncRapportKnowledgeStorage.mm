@interface _DKSyncRapportKnowledgeStorage
+ (id)sharedInstance;
- (id)changeSetForSyncWithEventsToInsert:(uint64_t)insert eventIDsToDeletes:(uint64_t)deletes error:(uint64_t)error;
- (id)changeSetFromCompressedData:(void *)data deviceIdentifier:(NSObject *)identifier sequenceNumber:;
- (id)dataFromChangeSet:(uint64_t)set didCompress:(uint64_t)compress;
- (void)fetchAdditionsHighWaterMarkWithPeer:(id)peer highPriority:(BOOL)priority completion:(id)completion;
- (void)fetchDeletedEventIDsFromPeer:(id)peer sinceDate:(id)date streamNames:(id)names limit:(unint64_t)limit highPriority:(BOOL)priority completion:(id)completion;
- (void)fetchDeletionsHighWaterMarkWithPeer:(id)peer highPriority:(BOOL)priority completion:(id)completion;
- (void)fetchEventsFromPeer:(id)peer windows:(id)windows streamNames:(id)names limit:(unint64_t)limit fetchOrder:(int64_t)order highPriority:(BOOL)priority completion:(id)completion;
- (void)handleFetchDeletedEventIDsWithRequest:(void *)request options:(void *)options responseHandler:;
- (void)handleFetchDeletedEventIDsWithResponse:(void *)response options:(void *)options error:(void *)error peer:(void *)peer plStartDate:(void *)date completion:;
- (void)handleFetchEventsWithRequest:(void *)request options:(void *)options responseHandler:;
- (void)handleFetchEventsWithResponse:(void *)response options:(void *)options error:(void *)error peer:(void *)peer plStartDate:(void *)date completion:;
- (void)handleUnexpectedRequest:fromPeer:;
- (void)handleUnexpectedResponse:fromPeer:;
- (void)prewarmFetchWithCompletion:(id)completion;
- (void)registerRequestIDsWithClient:(id)client;
- (void)setFetchDelegate:(id)delegate;
- (void)updateStorageWithAddedEvents:(id)events deletedEventIDs:(id)ds highPriority:(BOOL)priority completion:(id)completion;
@end

@implementation _DKSyncRapportKnowledgeStorage

+ (id)sharedInstance
{
  if (sharedInstance_initialized_223 != -1)
  {
    +[_DKSyncRapportKnowledgeStorage sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_224;

  return v3;
}

- (void)registerRequestIDsWithClient:(id)client
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63___DKSyncRapportKnowledgeStorage_registerRequestIDsWithClient___block_invoke;
  v6[3] = &unk_1E736AC88;
  v6[4] = self;
  clientCopy = client;
  [clientCopy registerRequestID:@"com.apple.coreduet.fetch-events" options:0 handler:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63___DKSyncRapportKnowledgeStorage_registerRequestIDsWithClient___block_invoke_2;
  v5[3] = &unk_1E736AC88;
  v5[4] = self;
  [clientCopy registerRequestID:@"com.apple.coreduet.fetch-deleted-event-ids" options:0 handler:v5];
}

- (void)handleFetchEventsWithRequest:(void *)request options:(void *)options responseHandler:
{
  v200 = *MEMORY[0x1E69E9840];
  v161 = a2;
  requestCopy = request;
  optionsCopy = options;
  selfCopy = self;
  if (self)
  {
    v8 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v8);

    date = [MEMORY[0x1E695DF00] date];
    v9 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportKnowledgeStorage handleFetchEventsWithRequest:options:responseHandler:];
    }

    v10 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportKnowledgeStorage handleFetchEventsWithRequest:options:responseHandler:];
    }

    v154 = objc_opt_new();
    v150 = [v161 objectForKeyedSubscript:@"version"];
    integerValue = [v150 integerValue];
    v11 = [v161 objectForKeyedSubscript:@"compatibility"];
    v149 = [_DKCompatibility compatibilityFromSerializedCompatibility:v11];

    v151 = +[_DKSyncPeerStatusTracker sharedInstance];
    v148 = [requestCopy objectForKeyedSubscript:@"senderIDS"];
    v160 = [v151 existingPeerWithIDSDeviceIdentifier:?];
    if (v160)
    {
      version = [v160 version];
      v13 = [v150 isEqualToString:version];

      if ((v13 & 1) == 0)
      {
        [_DKSyncRapportKnowledgeStorage handleUnexpectedRequest:fromPeer:];
      }
    }

    if (*(self + 24))
    {
      v14 = [v161 objectForKeyedSubscript:@"queries"];
      v176 = [v161 objectForKeyedSubscript:@"limit"];
      if (integerValue >= 3)
      {
        v15 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [objc_opt_class() description];
          objc_claimAutoreleasedReturnValue();
          [_DKSyncRapportKnowledgeStorage handleFetchEventsWithRequest:options:responseHandler:];
        }
      }

      v173 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v14, "count")}];
      v183 = 0u;
      v184 = 0u;
      v181 = 0u;
      v182 = 0u;
      obj = v14;
      v16 = [obj countByEnumeratingWithState:&v181 objects:v199 count:16];
      allObjects3 = 0;
      if (v16)
      {
        v169 = 0;
        v165 = *v182;
        *&v17 = 138543618;
        v155 = v17;
LABEL_16:
        v163 = v16;
        v19 = 0;
        v20 = allObjects3;
        while (1)
        {
          v174 = v20;
          if (*v182 != v165)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v181 + 1) + 8 * v19);
          v22 = [v21 objectForKeyedSubscript:@"startDate"];
          v23 = [v21 objectForKeyedSubscript:@"endDate"];
          v24 = [v21 objectForKeyedSubscript:@"streamNames"];
          if (integerValue <= 2)
          {
            v25 = [v21 objectForKeyedSubscript:@"limit"];

            v176 = v25;
          }

          policy = [selfCopy policy];
          syncType = [selfCopy[3] syncType];
          v28 = [policy streamNamesToSyncWithSyncType:syncType transportType:{objc_msgSend(selfCopy, "transportType")}];

          v29 = [v28 arrayByAddingObjectsFromArray:&unk_1F05EF740];

          v30 = [v29 arrayByAddingObject:@"/device/isLocked"];

          v31 = [MEMORY[0x1E695DFA8] setWithArray:v24];
          v32 = [MEMORY[0x1E695DFD8] setWithArray:v30];
          [v31 intersectSet:v32];

          allObjects = [v31 allObjects];
          LOBYTE(syncType) = [allObjects isEqual:v24];

          if ((syncType & 1) == 0)
          {
            v34 = [MEMORY[0x1E695DFA8] setWithArray:v24];
            v35 = [MEMORY[0x1E695DFD8] setWithArray:v30];
            [v34 minusSet:v35];

            v36 = +[_CDLogging syncChannel];
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              model2 = [objc_opt_class() description];
              allObjects2 = [v34 allObjects];
              buf = v155;
              v188 = model2;
              v189 = 2112;
              v190 = allObjects2;
              _os_log_impl(&dword_191750000, v36, OS_LOG_TYPE_INFO, "%{public}@: Ignoring request for disabled streams: %@", &buf, 0x16u);
            }
          }

          allObjects3 = [v31 allObjects];

          v38 = !v22 || v23 == 0;
          v39 = v38 || v24 == 0;
          v40 = v39 || v176 == 0;
          v41 = !v40;
          if (v40)
          {

            +[_DKSyncErrors invalidRequest];
            v169 = v42 = v169;
            v173 = 0;
          }

          else
          {
            v42 = [_DKSyncWindow syncWindowWithStartDate:v22 endDate:v23];
            [v173 addObject:v42];
          }

          if (!v41)
          {
            break;
          }

          ++v19;
          v20 = allObjects3;
          if (v163 == v19)
          {
            v16 = [obj countByEnumeratingWithState:&v181 objects:v199 count:16];
            if (v16)
            {
              goto LABEL_16;
            }

            break;
          }
        }
      }

      else
      {
        v169 = 0;
      }

      if ([v173 count] && objc_msgSend(allObjects3, "count") && v176)
      {
        v44 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
        {
          v71 = [objc_opt_class() description];
          v72 = _DKSyncLoggingWindowsDescription(v173);
          v73 = _CDPrettyPrintCollection(allObjects3, 0, 0, 0);
          buf = 138544130;
          v188 = v71;
          v189 = 2112;
          v190 = v176;
          v191 = 2114;
          v192 = v72;
          v193 = 2114;
          v194 = v73;
          _os_log_debug_impl(&dword_191750000, v44, OS_LOG_TYPE_DEBUG, "%{public}@: Received fetch events request for up to %@ events in windows %{public}@ for streams %{public}@", &buf, 0x2Au);
        }

        unsignedIntegerValue = [v176 unsignedIntegerValue];
        v46 = unsignedIntegerValue;
        if (unsignedIntegerValue <= 1)
        {
          v47 = unsignedIntegerValue;
        }

        else
        {
          v47 = unsignedIntegerValue + 1;
        }

        v48 = selfCopy[3];
        v180 = v169;
        v49 = [v48 sortedEventsFromSyncWindows:v173 streamNames:allObjects3 compatibility:v149 limit:v47 fetchOrder:2 error:&v180];
        v50 = v180;

        if (v50)
        {
          v55 = MEMORY[0x1E696ABC0];
          domain = [v50 domain];
          v56 = [v55 errorWithDomain:domain code:objc_msgSend(v50 userInfo:{"code"), 0}];

          v175 = 1;
          v170 = v56;
        }

        else
        {
          if (v46 >= 2 && [v49 count] == v46 + 1)
          {
            if ([v49 count])
            {
              v57 = +[_CDLogging syncChannel];
              if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
              {
                v110 = [objc_opt_class() description];
                v111 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v49, "count")}];
                v112 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v49, "count") - 1}];
                buf = 138543874;
                v188 = v110;
                v189 = 2112;
                v190 = v111;
                v191 = 2112;
                v192 = v112;
                _os_log_debug_impl(&dword_191750000, v57, OS_LOG_TYPE_DEBUG, "%{public}@: Fetched %@ events but hit limit so using only %@ of those events", &buf, 0x20u);
              }

              v58 = [v49 subarrayWithRange:{0, objc_msgSend(v49, "count") - 1}];

              v59 = 1;
              v49 = v58;
            }

            else
            {
              v59 = 1;
            }
          }

          else
          {
            v59 = 0;
          }

          v179 = 0;
          v167 = [(_DKSyncRapportKnowledgeStorage *)selfCopy changeSetForSyncWithEventsToInsert:v49 eventIDsToDeletes:0 error:&v179, v51, v52, v53, v54, v117, v120, SWORD2(v120), SHIWORD(v120), v122, v124, v129, v133, v136, v139, v142, v145, v148, v149, v150, v151, optionsCopy, requestCopy, v154, v155, *(&v155 + 1)];
          v171 = v179;
          if (v171)
          {
            v60 = +[_CDLogging syncChannel];
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              v107 = [objc_opt_class() description];
              domain2 = [v171 domain];
              code = [v171 code];
              buf = 138544130;
              v188 = v107;
              v189 = 2114;
              v190 = domain2;
              v191 = 2048;
              v192 = code;
              v193 = 2112;
              v194 = v171;
              _os_log_error_impl(&dword_191750000, v60, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create change set: %{public}@:%lld (%@)", &buf, 0x2Au);
            }

            v61 = MEMORY[0x1E696ABC0];
            domain3 = [v171 domain];
            v63 = [v61 errorWithDomain:domain3 code:objc_msgSend(v171 userInfo:{"code"), 0}];

            v175 = 1;
            v170 = v63;
          }

          else
          {
            v178 = 0;
            eventsToAdd = [v167 eventsToAdd];
            v175 = [eventsToAdd count] == 0;

            if (v175)
            {
              v158 = objc_opt_new();
            }

            else
            {
              v158 = [(_DKSyncRapportKnowledgeStorage *)selfCopy dataFromChangeSet:v167 didCompress:&v178, v65, v66, v67, v68, v69, v118, v119, v121, v125, SWORD2(v125), SHIWORD(v125), v127, v130, v134, v137, v140, v143, v146, v148, v149, v150, v151, optionsCopy, requestCopy, v154, v156, v158];
            }

            v164 = v158;
            if (v158)
            {
              if (v178)
              {
                v74 = @"compressedEvents";
              }

              else
              {
                v74 = @"encodedEvents";
              }

              v172 = v74;
              if (integerValue > 2)
              {
                if (v59)
                {
                  v83 = [_DKSyncWindow completedWindowsWithSortedEvents:v49 windows:v173 fetchOrder:2 fillOrder:1 hitLimit:1];
                }

                else
                {
                  v83 = v173;
                }

                v76 = v83;
                [v154 setObject:v164 forKeyedSubscript:v172];
                v84 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v167, "sequenceNumber")}];
                [v154 setObject:v84 forKeyedSubscript:@"sequenceNumber"];
                v85 = [_DKSyncWindow dictionaryArrayFromWindows:v76];
                [v154 setObject:v85 forKeyedSubscript:@"completedWindows"];

                if (v59)
                {
                  v86 = MEMORY[0x1E695E118];
                }

                else
                {
                  v86 = MEMORY[0x1E695E110];
                }

                [v154 setObject:v86 forKeyedSubscript:@"didHitLimit"];
              }

              else
              {
                firstObject = [obj firstObject];
                v76 = firstObject;
                if (v59)
                {
                  v77 = +[_CDLogging syncChannel];
                  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
                  {
                    v113 = [objc_opt_class() description];
                    v114 = [v76 objectForKeyedSubscript:@"startDate"];
                    dk_localtimeString = [(NSDate *)v114 dk_localtimeString];
                    dk_localtimeString2 = [(NSDate *)0 dk_localtimeString];
                    buf = 138543874;
                    v188 = v113;
                    v189 = 2114;
                    v190 = dk_localtimeString;
                    v191 = 2114;
                    v192 = dk_localtimeString2;
                    _os_log_debug_impl(&dword_191750000, v77, OS_LOG_TYPE_DEBUG, "%{public}@: Shrinking window start date from %{public}@ to %{public}@ due to hit limit", &buf, 0x20u);
                  }

                  lastObject = [v49 lastObject];
                  creationDate = [lastObject creationDate];

                  v80 = [v76 objectForKeyedSubscript:@"endDate"];
                }

                else
                {
                  creationDate = [firstObject objectForKeyedSubscript:@"startDate"];
                  v80 = [v76 objectForKeyedSubscript:@"endDate"];
                }

                v85 = v80;
                v198[0] = v164;
                v197[0] = v172;
                v197[1] = @"sequenceNumber";
                v87 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v167, "sequenceNumber")}];
                v198[1] = v87;
                v198[2] = creationDate;
                v197[2] = @"windowStartDate";
                v197[3] = @"windowEndDate";
                v198[3] = v85;
                v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v198 forKeys:v197 count:4];
                [v154 setObject:v88 forKeyedSubscript:v76];
              }

              v89 = +[_CDLogging syncChannel];
              if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
              {
                v131 = [objc_opt_class() description];
                v90 = MEMORY[0x1E696AD98];
                v128 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v49, "count")}];
                v157 = +[_DKSyncPeerStatusTracker sharedInstance];
                v147 = [v161 objectForKeyedSubscript:@"client"];
                v144 = [v157 existingPeerWithSourceDeviceID:v147];
                v91 = [v144 me];
                v92 = @"pseudo ";
                if (!v91)
                {
                  v92 = &stru_1F05B9908;
                }

                v123 = v92;
                v141 = +[_DKSyncPeerStatusTracker sharedInstance];
                v138 = [v161 objectForKeyedSubscript:@"client"];
                v135 = [v141 existingPeerWithSourceDeviceID:v138];
                identifier = [v135 identifier];
                v132 = +[_DKSyncPeerStatusTracker sharedInstance];
                v93 = [v161 objectForKeyedSubscript:@"client"];
                v94 = [v132 existingPeerWithSourceDeviceID:v93];
                model = [v94 model];
                if (model)
                {
                  v96 = MEMORY[0x1E696AEC0];
                  *&v121 = +[_DKSyncPeerStatusTracker sharedInstance];
                  v90 = [v161 objectForKeyedSubscript:@"client"];
                  v85 = [v121 existingPeerWithSourceDeviceID:v90];
                  model2 = [v85 model];
                  v97 = [v96 stringWithFormat:@" (%@)", model2];
                }

                else
                {
                  v97 = &stru_1F05B9908;
                }

                buf = 138544386;
                v188 = v131;
                v189 = 2112;
                v190 = v128;
                v191 = 2114;
                v192 = v123;
                v193 = 2114;
                v194 = identifier;
                v195 = 2114;
                v196 = v97;
                _os_log_impl(&dword_191750000, v89, OS_LOG_TYPE_INFO, "%{public}@: Sending %@ events to %{public}@peer %{public}@%{public}@", &buf, 0x34u);
                if (model)
                {
                }
              }

              v170 = 0;
              v82 = v164;
            }

            else
            {
              v81 = +[_CDLogging syncChannel];
              if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
              {
                [objc_opt_class() description];
                objc_claimAutoreleasedReturnValue();
                [_DKSyncRapportKnowledgeStorage handleFetchEventsWithRequest:options:responseHandler:];
              }

              v170 = +[_DKSyncErrors internalFailure];
              v82 = 0;
            }
          }
        }
      }

      else
      {
        +[_DKSyncErrors invalidRequest];
        v175 = 1;
        v170 = v49 = v169;
      }
    }

    else
    {
      v43 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        [_DKSyncRapportKnowledgeStorage handleFetchEventsWithRequest:options:responseHandler:];
      }

      v170 = +[_DKSyncErrors internalFailure];
      v175 = 1;
    }

    myDeviceID = [selfCopy myDeviceID];
    v99 = myDeviceID;
    v100 = &stru_1F05B9908;
    if (myDeviceID)
    {
      v100 = myDeviceID;
    }

    v101 = v100;

    v185[0] = @"server";
    v185[1] = @"results";
    v186[0] = v101;
    v186[1] = v154;
    v185[2] = @"version";
    v102 = @"3.0";
    if (integerValue < 3)
    {
      v102 = @"1.0";
    }

    v186[2] = v102;
    v103 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v186 forKeys:v185 count:3];
    v104 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportKnowledgeStorage handleFetchEventsWithRequest:options:responseHandler:];
    }

    optionsCopy[2](optionsCopy, v103, 0);
    if (date)
    {
      date2 = [MEMORY[0x1E695DF00] date];
      syncType2 = [selfCopy[3] syncType];
      +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", syncType2, [selfCopy transportType], date, date2, v175);
    }
  }
}

- (void)handleFetchDeletedEventIDsWithRequest:(void *)request options:(void *)options responseHandler:
{
  v121 = *MEMORY[0x1E69E9840];
  v90 = a2;
  *(&v67 + 1) = request;
  *&v68 = options;
  selfCopy = self;
  if (self)
  {
    v7 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v7);

    *(&v68 + 1) = [MEMORY[0x1E695DF00] date];
    v8 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportKnowledgeStorage handleFetchDeletedEventIDsWithRequest:options:responseHandler:];
    }

    v9 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportKnowledgeStorage handleFetchDeletedEventIDsWithRequest:options:responseHandler:];
    }

    v77 = objc_opt_new();
    if (*(self + 24))
    {
      [v90 objectForKeyedSubscript:@"queries"];
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      obj = v102 = 0u;
      v10 = [obj countByEnumeratingWithState:&v101 objects:v120 count:16];
      v12 = 0;
      if (!v10)
      {
        BYTE4(v78) = 1;
        goto LABEL_56;
      }

      HIDWORD(v78) = 1;
      v95 = *v102;
      *&v11 = 138543618;
      v66 = v11;
      *&v11 = 138544386;
      v69 = v11;
      while (1)
      {
        v96 = v10;
        for (i = 0; i != v96; ++i)
        {
          if (*v102 != v95)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v101 + 1) + 8 * i);
          v15 = [v14 objectForKeyedSubscript:@"sinceDate"];
          v16 = [v14 objectForKeyedSubscript:@"streamNames"];
          v17 = [v14 objectForKeyedSubscript:@"limit"];
          v18 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v36 = [objc_opt_class() description];
            dk_localtimeString = [(NSDate *)v15 dk_localtimeString];
            v38 = _CDPrettyPrintCollection(v16, 0, 0, 0);
            *buf = 138544130;
            v111 = v36;
            v112 = 2112;
            v113 = v17;
            v114 = 2114;
            v115 = dk_localtimeString;
            v116 = 2114;
            v117 = v38;
            _os_log_debug_impl(&dword_191750000, v18, OS_LOG_TYPE_DEBUG, "%{public}@: Received fetch deleted event ids request for up to %@ deletions since %{public}@ for streams %{public}@", buf, 0x2Au);
          }

          if (!v15 || !v16)
          {
            +[_DKSyncErrors invalidRequest];
            v12 = v20 = v12;
            goto LABEL_49;
          }

          if (v17)
          {
            unsignedIntegerValue = [v17 unsignedIntegerValue];
          }

          else
          {
            unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
          }

          v21 = selfCopy[3];
          v99 = v12;
          v100 = 0;
          v97 = [v21 deletedEventIDsSinceDate:v15 streamNames:v16 limit:unsignedIntegerValue endDate:&v100 error:&v99];
          v20 = v100;
          v22 = v99;

          if (v22)
          {
            v12 = +[_DKSyncErrors internalFailure];
          }

          else
          {
            v98 = 0;
            v22 = [(_DKSyncRapportKnowledgeStorage *)selfCopy changeSetForSyncWithEventsToInsert:v97 eventIDsToDeletes:&v98 error:v23, v24, v25, v26, v65, v66, SWORD2(v66), SWORD3(v66), *(&v66 + 1), v67, v68, v69, *(&v69 + 1), v70, v71, model2, v73, v74, v75, v76, v77, v78, v79, v80, v81];
            v27 = v98;
            if (!v27)
            {
              v107[0] = 0;
              eventsToAdd = [v22 eventsToAdd];
              if ([eventsToAdd count])
              {

                goto LABEL_29;
              }

              eventIDsToDelete = [v22 eventIDsToDelete];
              v40 = [eventIDsToDelete count] == 0;

              if (v40)
              {
                v92 = objc_opt_new();
              }

              else
              {
LABEL_29:
                v92 = [(_DKSyncRapportKnowledgeStorage *)selfCopy dataFromChangeSet:v22 didCompress:v107, v31, v32, v33, v34, v35, v65, *(&v65 + 1), v66, v67, SWORD2(v67), SWORD3(v67), *(&v67 + 1), v68, v69, *(&v69 + 1), v70, v71, model2, v73, v74, v75, v76, v77, v78, v79, v80, v81];
                HIDWORD(v78) = 0;
              }

              if (v92)
              {
                log = +[_CDLogging syncChannel];
                if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
                {
                  v80 = [objc_opt_class() description];
                  v79 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v97, "count")}];
                  v89 = +[_DKSyncPeerStatusTracker sharedInstance];
                  v88 = [v90 objectForKeyedSubscript:@"client"];
                  v87 = [v89 existingPeerWithSourceDeviceID:v88];
                  v41 = [v87 me];
                  v42 = &stru_1F05B9908;
                  if (v41)
                  {
                    v42 = @"pseudo ";
                  }

                  v76 = v42;
                  v86 = +[_DKSyncPeerStatusTracker sharedInstance];
                  v85 = [v90 objectForKeyedSubscript:@"client"];
                  v84 = [v86 existingPeerWithSourceDeviceID:v85];
                  identifier = [v84 identifier];
                  v83 = +[_DKSyncPeerStatusTracker sharedInstance];
                  v82 = [v90 objectForKeyedSubscript:@"client"];
                  v81 = [v83 existingPeerWithSourceDeviceID:v82];
                  model = [v81 model];
                  if (model)
                  {
                    v45 = MEMORY[0x1E696AEC0];
                    v75 = +[_DKSyncPeerStatusTracker sharedInstance];
                    v74 = [v90 objectForKeyedSubscript:@"client"];
                    v73 = [v75 existingPeerWithSourceDeviceID:v74];
                    model2 = [v73 model];
                    *&v65 = model2;
                    v71 = [v45 stringWithFormat:@" (%@)"];
                    v46 = v71;
                  }

                  else
                  {
                    v46 = &stru_1F05B9908;
                  }

                  *buf = v69;
                  v111 = v80;
                  v112 = 2112;
                  v113 = v79;
                  v114 = 2114;
                  v115 = v76;
                  v116 = 2114;
                  v117 = identifier;
                  v118 = 2114;
                  v119 = v46;
                  _os_log_impl(&dword_191750000, log, OS_LOG_TYPE_INFO, "%{public}@: Sending %@ deletions to %{public}@peer %{public}@%{public}@", buf, 0x34u);
                  if (model)
                  {
                  }
                }

                v48 = @"encodedDeletedEventIDs";
                if (v107[0])
                {
                  v48 = @"compressedDeletedEventIDs";
                }

                v49 = v48;
                v109[0] = v92;
                v108[0] = v49;
                v108[1] = @"sequenceNumber";
                v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v22, "sequenceNumber")}];
                v109[1] = v50;
                v109[2] = v15;
                v108[2] = @"sinceDate";
                v108[3] = @"untilDate";
                v109[3] = v20;
                v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v109 forKeys:v108 count:4];
                [v77 setObject:v51 forKeyedSubscript:v14];

                v12 = 0;
              }

              else
              {
                v47 = +[_CDLogging syncChannel];
                if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                {
                  v55 = [objc_opt_class() description];
                  *buf = v66;
                  v111 = v55;
                  v112 = 2112;
                  v113 = v22;
                  _os_log_error_impl(&dword_191750000, v47, OS_LOG_TYPE_ERROR, "%{public}@: Failed to encode change set as protobuf: %@", buf, 0x16u);
                }

                v12 = +[_DKSyncErrors internalFailure];
              }

              goto LABEL_48;
            }

            v28 = v27;
            v29 = +[_CDLogging syncChannel];
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v52 = [objc_opt_class() description];
              domain = [v28 domain];
              code = [v28 code];
              *buf = 138544130;
              v111 = v52;
              v112 = 2114;
              v113 = domain;
              v114 = 2048;
              v115 = code;
              v116 = 2112;
              v117 = v28;
              _os_log_error_impl(&dword_191750000, v29, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create change set: %{public}@:%lld (%@)", buf, 0x2Au);
            }

            v12 = +[_DKSyncErrors internalFailure];
          }

LABEL_48:

LABEL_49:
        }

        v10 = [obj countByEnumeratingWithState:&v101 objects:v120 count:16];
        if (!v10)
        {
LABEL_56:

          goto LABEL_57;
        }
      }
    }

    v56 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportKnowledgeStorage handleFetchDeletedEventIDsWithRequest:options:responseHandler:];
    }

    v12 = +[_DKSyncErrors internalFailure];
    BYTE4(v78) = 1;
LABEL_57:
    myDeviceID = [selfCopy myDeviceID];
    v58 = myDeviceID;
    v59 = &stru_1F05B9908;
    if (myDeviceID)
    {
      v59 = myDeviceID;
    }

    v60 = v59;

    v105[0] = @"server";
    v105[1] = @"results";
    v106[0] = v60;
    v106[1] = v77;
    v105[2] = @"version";
    v106[2] = @"1.0";
    v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:v105 count:3];
    v62 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      [_DKSyncRapportKnowledgeStorage handleFetchDeletedEventIDsWithRequest:options:responseHandler:];
    }

    (*(v68 + 16))(v68, v61, 0, v12);
    if (*(&v68 + 1))
    {
      date = [MEMORY[0x1E695DF00] date];
      syncType = [selfCopy[3] syncType];
      +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", syncType, [selfCopy transportType], *(&v68 + 1), date, BYTE4(v78) & 1);
    }
  }
}

- (void)prewarmFetchWithCompletion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (void)fetchEventsFromPeer:(id)peer windows:(id)windows streamNames:(id)names limit:(unint64_t)limit fetchOrder:(int64_t)order highPriority:(BOOL)priority completion:(id)completion
{
  priorityCopy = priority;
  v99[1] = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  windowsCopy = windows;
  namesCopy = names;
  completionCopy = completion;
  v15 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v15);

  myDeviceID = [(_DKSyncRapportStorage *)self myDeviceID];
  version = [peerCopy version];
  integerValue = [version integerValue];

  if (-[_DKSyncRapportStorage isAvailable](self, "isAvailable") && ([peerCopy idsDeviceIdentifier], (v18 = objc_claimAutoreleasedReturnValue()) != 0) && (v19 = v18, v20 = -[_DKSyncRapportStorage isTransportActiveForPeer:](self, "isTransportActiveForPeer:", peerCopy), v19, v20))
  {
    [MEMORY[0x1E695DF00] date];
    v62 = myDeviceID;
    v63 = peerCopy;
    selfCopy = self;
    v59 = v61 = priorityCopy;
    v60 = completionCopy;
    if (integerValue <= 2)
    {
      if ([windowsCopy count] < 2)
      {
        v21 = windowsCopy;
      }

      else
      {
        lastObject = [windowsCopy lastObject];
        v99[0] = lastObject;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:1];

        v25 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v69 = [objc_opt_class() description];
          v50 = [v63 me];
          v51 = @"pseudo ";
          v52 = &stru_1F05B9908;
          if (!v50)
          {
            v51 = &stru_1F05B9908;
          }

          v67 = v51;
          identifier = [v63 identifier];
          model = [v63 model];
          if (model)
          {
            v55 = MEMORY[0x1E696AEC0];
            model2 = [v63 model];
            v52 = [v55 stringWithFormat:@" (%@)", model2];
          }

          firstObject = [v21 firstObject];
          v57 = [firstObject debugDescription];
          *buf = 138544386;
          v90 = v69;
          v91 = 2114;
          v92 = v67;
          v93 = 2114;
          v94 = identifier;
          v95 = 2114;
          v96 = v52;
          v97 = 2114;
          v98 = v57;
          _os_log_debug_impl(&dword_191750000, v25, OS_LOG_TYPE_DEBUG, "%{public}@: Only sending a single window to v1 %{public}@peer %{public}@%{public}@: window %{public}@", buf, 0x34u);

          if (model)
          {
          }
        }
      }
    }

    else
    {
      v21 = windowsCopy;
    }

    v68 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v21, "count")}];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v26 = v21;
    v27 = [v26 countByEnumeratingWithState:&v78 objects:v88 count:16];
    windowsCopy = v26;
    if (v27)
    {
      v28 = v27;
      v29 = *v79;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v79 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v78 + 1) + 8 * i);
          startDate = [(_DKSyncWindow *)v31 startDate];
          urgency = [(_DKSyncType *)v31 urgency];
          v34 = urgency;
          if (integerValue < 3)
          {
            v86[0] = @"startDate";
            v86[1] = @"endDate";
            v87[0] = startDate;
            v87[1] = urgency;
            v87[2] = namesCopy;
            v86[2] = @"streamNames";
            v86[3] = @"limit";
            v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:limit];
            v87[3] = v36;
            v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:v86 count:4];

            v26 = windowsCopy;
          }

          else
          {
            v84[0] = @"startDate";
            v84[1] = @"endDate";
            v85[0] = startDate;
            v85[1] = urgency;
            v84[2] = @"streamNames";
            v85[2] = namesCopy;
            v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v85 forKeys:v84 count:3];
          }

          [v68 addObject:v35];
        }

        v28 = [v26 countByEnumeratingWithState:&v78 objects:v88 count:16];
      }

      while (v28);
    }

    myDeviceID = v62;
    v37 = &stru_1F05B9908;
    if (v62)
    {
      v38 = v62;
    }

    else
    {
      v38 = &stru_1F05B9908;
    }

    v82[0] = @"client";
    v82[1] = @"queries";
    model4 = v68;
    v83[0] = v38;
    v83[1] = v68;
    v82[2] = @"limit";
    v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:limit];
    v83[2] = v39;
    v83[3] = @"3.0";
    v82[3] = @"version";
    v82[4] = @"compatibility";
    v40 = +[_DKCompatibility currentCompatibility];
    serialize = [v40 serialize];
    v83[4] = serialize;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:5];

    v42 = +[_CDLogging syncChannel];
    peerCopy = v63;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      v45 = [objc_opt_class() description];
      if ([v63 me])
      {
        v37 = @"pseudo ";
      }

      identifier2 = [v63 identifier];
      model3 = [v63 model];
      if (model3)
      {
        v49 = MEMORY[0x1E696AEC0];
        model4 = [v63 model];
        v48 = [v49 stringWithFormat:@" (%@)", model4];
      }

      else
      {
        v48 = &stru_1F05B9908;
      }

      *buf = 138544386;
      v90 = v45;
      v91 = 2114;
      v92 = v37;
      v93 = 2114;
      v94 = identifier2;
      v95 = 2114;
      v96 = v48;
      v97 = 2112;
      v98 = v23;
      _os_log_debug_impl(&dword_191750000, v42, OS_LOG_TYPE_DEBUG, "%{public}@: Sending fetch events request to %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
      if (model3)
      {
      }

      model4 = v68;
    }

    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __115___DKSyncRapportKnowledgeStorage_fetchEventsFromPeer_windows_streamNames_limit_fetchOrder_highPriority_completion___block_invoke;
    v74[3] = &unk_1E736AD00;
    v74[4] = selfCopy;
    v75 = v63;
    v76 = v59;
    v77 = v60;
    v43 = v60;
    v44 = v59;
    [(_DKSyncRapportStorage *)selfCopy sendRequestID:@"com.apple.coreduet.fetch-events" request:v23 peer:v75 highPriority:v61 options:0 responseHandler:v74];
  }

  else
  {
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __115___DKSyncRapportKnowledgeStorage_fetchEventsFromPeer_windows_streamNames_limit_fetchOrder_highPriority_completion___block_invoke_2;
    v72[3] = &unk_1E7367508;
    v73 = completionCopy;
    model4 = completionCopy;
    [(_DKSyncRapportStorage *)self handleAvailabilityFailureWithPeer:peerCopy completion:v72];
    v23 = v73;
  }
}

- (void)handleFetchEventsWithResponse:(void *)response options:(void *)options error:(void *)error peer:(void *)peer plStartDate:(void *)date completion:
{
  v101 = *MEMORY[0x1E69E9840];
  v75 = a2;
  responseCopy = response;
  optionsCopy = options;
  errorCopy = error;
  peerCopy = peer;
  dateCopy = date;
  selfCopy = self;
  if (!self)
  {
    goto LABEL_70;
  }

  v13 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v13);

  v14 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    [_DKSyncRapportKnowledgeStorage handleFetchEventsWithResponse:options:error:peer:plStartDate:completion:];
  }

  v15 = optionsCopy;
  if (!optionsCopy)
  {
    v20 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v57 = [objc_opt_class() description];
      if ([errorCopy me])
      {
        v58 = @"pseudo ";
      }

      else
      {
        v58 = &stru_1F05B9908;
      }

      identifier = [errorCopy identifier];
      model = [errorCopy model];
      if (model)
      {
        v64 = MEMORY[0x1E696AEC0];
        response = [errorCopy model];
        response = [v64 stringWithFormat:@" (%@)", response];
      }

      else
      {
        response = &stru_1F05B9908;
      }

      *buf = 138544386;
      v92 = v57;
      v93 = 2114;
      v94 = v58;
      v95 = 2114;
      v96 = identifier;
      v97 = 2114;
      v98 = response;
      v99 = 2112;
      v100 = v75;
      _os_log_debug_impl(&dword_191750000, v20, OS_LOG_TYPE_DEBUG, "%{public}@: Received fetch events response from %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
      if (model)
      {
      }
    }

    v21 = +[_DKSyncErrors invalidResponse];
    optionsCopy = v21;
    v72 = [(__CFString *)v75 objectForKeyedSubscript:@"version"];
    [v72 floatValue];
    v23 = v22;
    v24 = [(__CFString *)v75 objectForKeyedSubscript:@"results"];
    v71 = v24;
    if ([v24 count] == 1 && v23 < 3.0)
    {
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v25 = v24;
      v26 = [v25 countByEnumeratingWithState:&v85 objects:v90 count:16];
      v27 = 0;
      v28 = 0;
      v29 = 0;
      if (v26)
      {
        v80 = *v86;
        v82 = 0;
        do
        {
          v83 = v26;
          v30 = 0;
          v31 = v27;
          v32 = v28;
          v33 = v29;
          do
          {
            if (*v86 != v80)
            {
              objc_enumerationMutation(v25);
            }

            v34 = [v25 objectForKeyedSubscript:*(*(&v85 + 1) + 8 * v30)];
            v29 = [v34 objectForKeyedSubscript:@"encodedEvents"];

            v28 = [v34 objectForKeyedSubscript:@"compressedEvents"];

            v27 = [v34 objectForKeyedSubscript:@"sequenceNumber"];

            v35 = [v34 objectForKeyedSubscript:@"windowStartDate"];
            v36 = [v34 objectForKeyedSubscript:@"windowEndDate"];
            v37 = v36;
            if (v29 | v28 && v27 && v35 && v36)
            {
              v38 = [_DKSyncWindow syncWindowWithStartDate:v35 endDate:v36];
              v89 = v38;
              v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v89 count:1];

              v82 = v39;
            }

            ++v30;
            v31 = v27;
            v32 = v28;
            v33 = v29;
          }

          while (v83 != v30);
          v26 = [v25 countByEnumeratingWithState:&v85 objects:v90 count:16];
        }

        while (v26);
      }

      else
      {
        v82 = 0;
      }
    }

    else
    {
      if ([v24 count] < 4 || v23 < 3.0)
      {
        v82 = 0;
        [_DKSyncRapportKnowledgeStorage handleUnexpectedResponse:fromPeer:];
        v27 = 0;
        v28 = 0;
        v29 = 0;
LABEL_34:
        if (v29 | v28)
        {
          sourceDeviceUUID = [errorCopy sourceDeviceUUID];
          unsignedIntegerValue = [v27 unsignedIntegerValue];
          if (v28)
          {
            v43 = [(_DKSyncRapportKnowledgeStorage *)selfCopy changeSetFromCompressedData:v28 deviceIdentifier:sourceDeviceUUID sequenceNumber:unsignedIntegerValue];
            eventsToAdd = [v43 eventsToAdd];
          }

          else if ([v29 length])
          {
            v43 = [_DKChangeSet createFromData:v29 deviceIdentifier:sourceDeviceUUID sequenceNumber:unsignedIntegerValue];
            eventsToAdd = [v43 eventsToAdd];
          }

          else
          {
            eventsToAdd = objc_opt_new();
            v43 = 0;
          }

          v18 = eventsToAdd;
          v84 = v43;
          v81 = sourceDeviceUUID;
          v19 = [eventsToAdd count] == 0;
          if (v18)
          {
            v45 = +[_CDLogging syncChannel];
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              v69 = [objc_opt_class() description];
              model3 = MEMORY[0x1E696AD98];
              v67 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v18, "count")}];
              v47 = [errorCopy me];
              v48 = &stru_1F05B9908;
              if (v47)
              {
                v48 = @"pseudo ";
              }

              v66 = v48;
              identifier2 = [errorCopy identifier];
              model2 = [errorCopy model];
              if (model2)
              {
                v51 = MEMORY[0x1E696AEC0];
                model3 = [errorCopy model];
                v52 = [v51 stringWithFormat:@" (%@)", model3];
              }

              else
              {
                v52 = &stru_1F05B9908;
              }

              *buf = 138544386;
              v92 = v69;
              v93 = 2112;
              v94 = v67;
              v95 = 2114;
              v96 = v66;
              v97 = 2114;
              v98 = identifier2;
              v99 = 2114;
              v100 = v52;
              _os_log_impl(&dword_191750000, v45, OS_LOG_TYPE_INFO, "%{public}@: Fetched %@ added events from %{public}@peer %{public}@%{public}@", buf, 0x34u);
              if (model2)
              {
              }
            }

            v53 = optionsCopy;
            optionsCopy = 0;
          }

          else
          {
            v53 = +[_CDLogging syncChannel];
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
            {
              v70 = [objc_opt_class() description];
              if ([errorCopy me])
              {
                v54 = @"pseudo ";
              }

              else
              {
                v54 = &stru_1F05B9908;
              }

              identifier3 = [errorCopy identifier];
              model4 = [errorCopy model];
              if (model4)
              {
                v65 = MEMORY[0x1E696AEC0];
                sourceDeviceUUID = [errorCopy model];
                v56 = [v65 stringWithFormat:@" (%@)", sourceDeviceUUID];
              }

              else
              {
                v56 = &stru_1F05B9908;
              }

              *buf = 138544130;
              v92 = v70;
              v93 = 2114;
              v94 = v54;
              v95 = 2114;
              v96 = identifier3;
              v97 = 2114;
              v98 = v56;
              _os_log_debug_impl(&dword_191750000, v53, OS_LOG_TYPE_DEBUG, "%{public}@: Unable to decode events from %{public}@peer %{public}@%{public}@", buf, 0x2Au);
              if (model4)
              {
              }
            }
          }

          v21 = v81;
        }

        else
        {
          +[_DKSyncErrors invalidResponse];
          v18 = 0;
          optionsCopy = v19 = 1;
        }

        v15 = v72;
        goto LABEL_65;
      }

      v29 = [v24 objectForKeyedSubscript:@"encodedEvents"];
      v28 = [v24 objectForKeyedSubscript:@"compressedEvents"];
      v27 = [v24 objectForKeyedSubscript:@"sequenceNumber"];
      v40 = [v24 objectForKeyedSubscript:@"completedWindows"];
      v25 = v40;
      v82 = 0;
      if (v29 | v28 && v27 && v40)
      {
        v82 = [_DKSyncWindow windowsFromDictionaryArray:v40];
      }
    }

    v21 = optionsCopy;
    goto LABEL_34;
  }

  if (-[NSObject code](optionsCopy, "code") == -6714 && (-[NSObject domain](optionsCopy, "domain"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 isEqualToString:*MEMORY[0x1E69C6BC8]], v16, v15 = optionsCopy, v17))
  {
    v15 = +[_DKSyncPeerStatusTracker sharedInstance];
    [v15 removeActiveTransports:objc_msgSend(self fromPeer:{"transportType"), errorCopy}];
    v82 = 0;
    v18 = 0;
    v19 = 1;
  }

  else
  {
    [self transformResponseError:v15];
    v82 = 0;
    v18 = 0;
    optionsCopy = v19 = 1;
  }

LABEL_65:

  if (peerCopy)
  {
    date = [MEMORY[0x1E695DF00] date];
    syncType = [selfCopy[3] syncType];
    +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", syncType, [selfCopy transportType], peerCopy, date, v19);
  }

  if (dateCopy)
  {
    dateCopy[2]();
  }

LABEL_70:
}

- (void)fetchDeletedEventIDsFromPeer:(id)peer sinceDate:(id)date streamNames:(id)names limit:(unint64_t)limit highPriority:(BOOL)priority completion:(id)completion
{
  priorityCopy = priority;
  v63[1] = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  dateCopy = date;
  namesCopy = names;
  completionCopy = completion;
  v18 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v18);

  myDeviceID = [(_DKSyncRapportStorage *)self myDeviceID];
  if (-[_DKSyncRapportStorage isAvailable](self, "isAvailable") && ([peerCopy idsDeviceIdentifier], (v20 = objc_claimAutoreleasedReturnValue()) != 0) && (v21 = v20, v22 = -[_DKSyncRapportStorage isTransportActiveForPeer:](self, "isTransportActiveForPeer:", peerCopy), v21, v22))
  {
    v42 = priorityCopy;
    date = [MEMORY[0x1E695DF00] date];
    v61[0] = @"sinceDate";
    v61[1] = @"streamNames";
    v62[0] = dateCopy;
    v62[1] = namesCopy;
    v61[2] = @"limit";
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:limit];
    v62[2] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:3];
    v63[0] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:1];

    v27 = &stru_1F05B9908;
    if (myDeviceID)
    {
      v27 = myDeviceID;
    }

    v59[0] = @"client";
    v59[1] = @"queries";
    v60[0] = v27;
    v60[1] = v26;
    v59[2] = @"version";
    v60[2] = @"1.0";
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:3];
    v29 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v38 = date;
      v41 = [objc_opt_class() description];
      v32 = [peerCopy me];
      v33 = @"pseudo ";
      v34 = &stru_1F05B9908;
      if (!v32)
      {
        v33 = &stru_1F05B9908;
      }

      v37 = v33;
      identifier = [peerCopy identifier];
      model = [peerCopy model];
      if (model)
      {
        v35 = MEMORY[0x1E696AEC0];
        model2 = [peerCopy model];
        v34 = [v35 stringWithFormat:@" (%@)", model2];
      }

      *buf = 138544386;
      v50 = v41;
      v51 = 2114;
      v52 = v37;
      v53 = 2114;
      v54 = identifier;
      v55 = 2114;
      v56 = v34;
      v57 = 2112;
      v58 = v28;
      _os_log_debug_impl(&dword_191750000, v29, OS_LOG_TYPE_DEBUG, "%{public}@: Sending deleted event ids request to %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
      if (model)
      {
      }

      date = v38;
    }

    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __115___DKSyncRapportKnowledgeStorage_fetchDeletedEventIDsFromPeer_sinceDate_streamNames_limit_highPriority_completion___block_invoke;
    v45[3] = &unk_1E736AD00;
    v45[4] = self;
    v46 = peerCopy;
    v47 = date;
    v48 = completionCopy;
    v30 = completionCopy;
    v31 = date;
    [(_DKSyncRapportStorage *)self sendRequestID:@"com.apple.coreduet.fetch-deleted-event-ids" request:v28 peer:v46 highPriority:v42 options:0 responseHandler:v45];
  }

  else
  {
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __115___DKSyncRapportKnowledgeStorage_fetchDeletedEventIDsFromPeer_sinceDate_streamNames_limit_highPriority_completion___block_invoke_2;
    v43[3] = &unk_1E7367508;
    v44 = completionCopy;
    v26 = completionCopy;
    [(_DKSyncRapportStorage *)self handleAvailabilityFailureWithPeer:peerCopy completion:v43];
    v28 = v44;
  }
}

- (void)handleFetchDeletedEventIDsWithResponse:(void *)response options:(void *)options error:(void *)error peer:(void *)peer plStartDate:(void *)date completion:
{
  v94 = *MEMORY[0x1E69E9840];
  v61 = a2;
  responseCopy = response;
  optionsCopy = options;
  errorCopy = error;
  peerCopy = peer;
  dateCopy = date;
  selfCopy = self;
  if (!self)
  {
    goto LABEL_62;
  }

  v13 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v13);

  v14 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    [_DKSyncRapportKnowledgeStorage handleFetchDeletedEventIDsWithResponse:options:error:peer:plStartDate:completion:];
  }

  v15 = optionsCopy;
  if (!optionsCopy)
  {
    v19 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v51 = [objc_opt_class() description];
      if ([errorCopy me])
      {
        v52 = @"pseudo ";
      }

      else
      {
        v52 = &stru_1F05B9908;
      }

      identifier = [errorCopy identifier];
      model = [errorCopy model];
      if (model)
      {
        v56 = MEMORY[0x1E696AEC0];
        response = [errorCopy model];
        response = [v56 stringWithFormat:@" (%@)", response];
      }

      else
      {
        response = &stru_1F05B9908;
      }

      *buf = 138544386;
      v85 = v51;
      v86 = 2114;
      v87 = v52;
      v88 = 2114;
      v89 = identifier;
      v90 = 2114;
      v91 = response;
      v92 = 2112;
      v93 = v61;
      _os_log_debug_impl(&dword_191750000, v19, OS_LOG_TYPE_DEBUG, "%{public}@: Received fetch deleted event ids response from %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
      if (model)
      {
      }
    }

    v20 = +[_DKSyncErrors invalidResponse];
    v15 = [(__CFString *)v61 objectForKeyedSubscript:@"results"];
    if ([v15 count] != 1)
    {
      v77 = 0;
      v78 = 0;
      v18 = 0;
      v68 = 1;
      optionsCopy = v20;
      goto LABEL_57;
    }

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    obj = v15;
    v21 = [obj countByEnumeratingWithState:&v79 objects:v83 count:16];
    v57 = v15;
    if (!v21)
    {
      v77 = 0;
      v78 = 0;
      v22 = 0;
      v68 = 1;
      optionsCopy = v20;
      goto LABEL_56;
    }

    v77 = 0;
    v78 = 0;
    v22 = 0;
    v70 = *v80;
    v68 = 1;
    optionsCopy = v20;
    while (1)
    {
      v71 = v21;
      v23 = 0;
      v24 = v77;
      v25 = v78;
      do
      {
        if (*v80 != v70)
        {
          objc_enumerationMutation(obj);
        }

        v26 = [obj objectForKeyedSubscript:*(*(&v79 + 1) + 8 * v23)];
        v27 = [v26 objectForKeyedSubscript:@"encodedDeletedEventIDs"];
        v28 = [v26 objectForKeyedSubscript:@"compressedDeletedEventIDs"];
        v78 = [v26 objectForKeyedSubscript:@"sinceDate"];

        v77 = [v26 objectForKeyedSubscript:@"untilDate"];

        if (v27 | v28)
        {
          v29 = v78 == 0;
        }

        else
        {
          v29 = 1;
        }

        if (!v29 && v77 != 0)
        {
          sourceDeviceUUID = [errorCopy sourceDeviceUUID];
          v31 = [v26 objectForKeyedSubscript:@"sequenceNumber"];
          unsignedIntegerValue = [v31 unsignedIntegerValue];

          if (v28)
          {
            v73 = [(_DKSyncRapportKnowledgeStorage *)selfCopy changeSetFromCompressedData:v28 deviceIdentifier:sourceDeviceUUID sequenceNumber:unsignedIntegerValue];
            eventIDsToDelete = [v73 eventIDsToDelete];
            goto LABEL_27;
          }

          if ([v27 length])
          {
            v73 = [_DKChangeSet createFromData:v27 deviceIdentifier:sourceDeviceUUID sequenceNumber:unsignedIntegerValue];
            eventIDsToDelete = [v73 eventIDsToDelete];
LABEL_27:
            v76 = eventIDsToDelete;
          }

          else
          {
            v76 = objc_opt_new();
            v73 = 0;
          }

          v68 = [v76 count] == 0;
          if (v76)
          {
            v34 = +[_CDLogging syncChannel];
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              v66 = [objc_opt_class() description];
              v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v76, "count")}];
              if ([errorCopy me])
              {
                v36 = @"pseudo ";
              }

              else
              {
                v36 = &stru_1F05B9908;
              }

              identifier2 = [errorCopy identifier];
              model2 = [errorCopy model];
              if (model2)
              {
                v39 = MEMORY[0x1E696AEC0];
                model3 = [errorCopy model];
                v64 = [v39 stringWithFormat:@" (%@)", model3];
                v40 = v64;
              }

              else
              {
                v40 = &stru_1F05B9908;
              }

              *buf = 138544386;
              v85 = v66;
              v86 = 2112;
              v87 = v35;
              v88 = 2114;
              v89 = v36;
              v90 = 2114;
              v91 = identifier2;
              v92 = 2114;
              v93 = v40;
              _os_log_impl(&dword_191750000, v34, OS_LOG_TYPE_INFO, "%{public}@: Fetched %@ deleted event ids from %{public}@peer %{public}@%{public}@", buf, 0x34u);
              if (model2)
              {
              }
            }

            v41 = optionsCopy;
            optionsCopy = 0;
          }

          else
          {
            v41 = +[_CDLogging syncChannel];
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
            {
              v42 = [objc_opt_class() description];
              if ([errorCopy me])
              {
                v43 = @"pseudo ";
              }

              else
              {
                v43 = &stru_1F05B9908;
              }

              identifier3 = [errorCopy identifier];
              model4 = [errorCopy model];
              v46 = &stru_1F05B9908;
              if (model4)
              {
                v47 = MEMORY[0x1E696AEC0];
                model5 = [errorCopy model];
                v59 = [v47 stringWithFormat:@" (%@)", model5];
                v46 = v59;
              }

              *buf = 138544130;
              v85 = v42;
              v86 = 2114;
              v87 = v43;
              v88 = 2114;
              v89 = identifier3;
              v90 = 2114;
              v91 = v46;
              _os_log_debug_impl(&dword_191750000, v41, OS_LOG_TYPE_DEBUG, "%{public}@: Unable to decode deleted event ids from %{public}@peer %{public}@%{public}@", buf, 0x2Au);
              if (model4)
              {
              }
            }
          }

          v22 = v76;
        }

        ++v23;
        v24 = v77;
        v25 = v78;
      }

      while (v71 != v23);
      v21 = [obj countByEnumeratingWithState:&v79 objects:v83 count:16];
      if (!v21)
      {
LABEL_56:

        v18 = v22;
        v15 = v57;
        goto LABEL_57;
      }
    }
  }

  if (-[NSObject code](optionsCopy, "code") == -6714 && (-[NSObject domain](optionsCopy, "domain"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 isEqualToString:*MEMORY[0x1E69C6BC8]], v16, v15 = optionsCopy, v17))
  {
    v15 = +[_DKSyncPeerStatusTracker sharedInstance];
    [v15 removeActiveTransports:objc_msgSend(self fromPeer:{"transportType"), errorCopy}];
    v77 = 0;
    v78 = 0;
    v18 = 0;
    v68 = 1;
  }

  else
  {
    [self transformResponseError:v15];
    v77 = 0;
    v78 = 0;
    v18 = 0;
    optionsCopy = v68 = 1;
  }

LABEL_57:

  if (peerCopy)
  {
    date = [MEMORY[0x1E695DF00] date];
    syncType = [selfCopy[3] syncType];
    +[_DKSyncPowerlog recordWithSyncType:transportType:startDate:endDate:isEmpty:](_DKSyncPowerlog, "recordWithSyncType:transportType:startDate:endDate:isEmpty:", syncType, [selfCopy transportType], peerCopy, date, v68);
  }

  v50 = v77;
  if (dateCopy)
  {
    dateCopy[2]();
    v50 = v77;
  }

LABEL_62:
}

- (void)fetchDeletionsHighWaterMarkWithPeer:(id)peer highPriority:(BOOL)priority completion:(id)completion
{
  if (completion)
  {
    v6 = MEMORY[0x1E695DF00];
    completionCopy = completion;
    date = [v6 date];
    (*(completion + 2))(completionCopy, date, 0);
  }
}

- (void)fetchAdditionsHighWaterMarkWithPeer:(id)peer highPriority:(BOOL)priority completion:(id)completion
{
  if (completion)
  {
    v6 = MEMORY[0x1E695DF00];
    completionCopy = completion;
    date = [v6 date];
    (*(completion + 2))(completionCopy, date, 0);
  }
}

- (void)setFetchDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v5);

  delegate = self->_delegate;
  self->_delegate = delegateCopy;
  v7 = delegateCopy;

  deviceUUID = [(_DKSyncRemoteKnowledgeStorageFetchDelegate *)self->_delegate deviceUUID];

  uUIDString = [deviceUUID UUIDString];

  [(_DKSyncRapportStorage *)self setDeviceID:uUIDString];
}

- (void)updateStorageWithAddedEvents:(id)events deletedEventIDs:(id)ds highPriority:(BOOL)priority completion:(id)completion
{
  completionCopy = completion;
  v6 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v6);

  if (completionCopy)
  {
    v7 = +[_DKSyncErrors internalFailure];
    completionCopy[2](completionCopy, v7);
  }
}

- (void)handleUnexpectedRequest:fromPeer:
{
  OUTLINED_FUNCTION_70_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (v5)
  {
    [v3 objectForKeyedSubscript:@"version"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_29_3() version];
    objc_claimAutoreleasedReturnValue();
    v8 = [OUTLINED_FUNCTION_4_17() isEqualToString:?];

    if ((v8 & 1) == 0)
    {
      v9 = +[_CDLogging syncChannel];
      if (OUTLINED_FUNCTION_32_2(v9))
      {
        v10 = [objc_opt_class() description];
        [v7 me];
        v11 = &stru_1F05B9908;
        OUTLINED_FUNCTION_22_7();
        identifier = [v7 identifier];
        model = [v7 model];
        if (model)
        {
          v14 = MEMORY[0x1E696AEC0];
          [v7 model];
          objc_claimAutoreleasedReturnValue();
          OUTLINED_FUNCTION_21_9();
          v11 = [v14 stringWithFormat:@" (%@)"];
        }

        OUTLINED_FUNCTION_4_19();
        OUTLINED_FUNCTION_19_8();
        OUTLINED_FUNCTION_25_4();
        _os_log_error_impl(v15, v16, v17, v18, v19, 0x34u);
        if (model)
        {
        }
      }

      [v7 setVersion:0];
      [v5 handshakeWithDuetSyncPeer:v7 orError:0];
    }
  }

  OUTLINED_FUNCTION_72_0();
}

- (void)handleUnexpectedResponse:fromPeer:
{
  OUTLINED_FUNCTION_70_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  if (v5)
  {
    [v3 objectForKeyedSubscript:@"version"];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_29_3() version];
    objc_claimAutoreleasedReturnValue();
    v8 = [OUTLINED_FUNCTION_4_17() isEqualToString:?];

    if ((v8 & 1) == 0)
    {
      v9 = +[_CDLogging syncChannel];
      if (OUTLINED_FUNCTION_32_2(v9))
      {
        v10 = [objc_opt_class() description];
        [v7 me];
        v11 = &stru_1F05B9908;
        OUTLINED_FUNCTION_22_7();
        identifier = [v7 identifier];
        model = [v7 model];
        if (model)
        {
          v14 = MEMORY[0x1E696AEC0];
          [v7 model];
          objc_claimAutoreleasedReturnValue();
          OUTLINED_FUNCTION_21_9();
          v11 = [v14 stringWithFormat:@" (%@)"];
        }

        OUTLINED_FUNCTION_4_19();
        OUTLINED_FUNCTION_19_8();
        OUTLINED_FUNCTION_25_4();
        _os_log_error_impl(v15, v16, v17, v18, v19, 0x34u);
        if (model)
        {
        }
      }

      [v7 setVersion:0];
      [v5 handshakeWithDuetSyncPeer:v7 orError:0];
    }
  }

  OUTLINED_FUNCTION_72_0();
}

- (id)changeSetForSyncWithEventsToInsert:(uint64_t)insert eventIDsToDeletes:(uint64_t)deletes error:(uint64_t)error
{
  OUTLINED_FUNCTION_70_0();
  a28 = v29;
  a29 = v30;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  a17 = *MEMORY[0x1E69E9840];
  v38 = v37;
  v39 = v34;
  if (v36)
  {
    if (v32)
    {
      *v32 = 0;
    }

    v40 = *(v36 + 16) + 1;
    *(v36 + 16) = v40;
    v41 = [_DKChangeSet alloc];
    deviceUUID = [*(v36 + 24) deviceUUID];
    v43 = [(_DKChangeSet *)v41 initWithEventsToAdd:v38 eventIDsToDelete:v39 deviceIdentifier:deviceUUID sequenceNumber:v40];

    v44 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      v48 = [objc_opt_class() description];
      v49 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[_DKChangeSet sequenceNumber](v43, "sequenceNumber")}];
      deviceIdentifier = [(_DKChangeSet *)v43 deviceIdentifier];
      uUIDString = [deviceIdentifier UUIDString];
      v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v38, "count")}];
      v53 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v39, "count")}];
      LODWORD(a9) = 138544642;
      *(&a9 + 4) = v48;
      WORD6(a9) = 2114;
      *(&a9 + 14) = v49;
      a12 = 2114;
      a13 = uUIDString;
      LOWORD(a14) = 2112;
      *(&a14 + 2) = v52;
      WORD5(a14) = 2112;
      *(&a14 + 12) = v53;
      WORD2(a15) = 2112;
      *(&a15 + 6) = v43;
      _os_log_debug_impl(&dword_191750000, v44, OS_LOG_TYPE_DEBUG, "%{public}@: Created change set %{public}@ on device %{public}@ containing %@ added events and %@ event ids to delete: %@", &a9, 0x3Eu);
    }
  }

  OUTLINED_FUNCTION_72_0();

  return v45;
}

- (id)dataFromChangeSet:(uint64_t)set didCompress:(uint64_t)compress
{
  OUTLINED_FUNCTION_70_0();
  a29 = v30;
  a30 = v31;
  v33 = v32;
  v35 = v34;
  a18 = *MEMORY[0x1E69E9840];
  v37 = v36;
  v38 = v37;
  if (v35)
  {
    asData = [v37 asData];
    if (!asData)
    {
      data = 0;
      if (!v33)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v40 = [_CDSizeMetricFamily sizeMetricFamilyWithName:?];
    v41 = [(_CDSizeMetricFamily *)v40 sizeMetricWithName:0 string:1024 scale:?];
    CDSizeMetricAddSize(v41, [asData length]);
    eventsToAdd = [v38 eventsToAdd];
    if ([eventsToAdd count] && objc_msgSend(asData, "length") >= 0x401)
    {
    }

    else
    {
      eventIDsToDelete = [v38 eventIDsToDelete];
      if (![eventIDsToDelete count])
      {

        goto LABEL_17;
      }

      v44 = [asData length];

      if (v44 < 0x801)
      {
LABEL_17:
        v54 = [(_CDSizeMetricFamily *)v40 sizeMetricWithName:0 string:1024 scale:?];
        CDSizeMetricAddSize(v54, [asData length]);

        data = 0;
        goto LABEL_18;
      }
    }

    v45 = [asData length];
    v46 = malloc_type_malloc(v45, 0x49D41D4AuLL);
    v47 = compression_encode_buffer(v46, v45, [asData bytes], objc_msgSend(asData, "length"), 0, COMPRESSION_LZFSE);
    if (v47 && (v48 = v47, v47 < [asData length]))
    {
      v49 = objc_alloc_init(_DKPRCompressedChangeSet);
      -[_DKPRCompressedChangeSet setUncompressedLength:](v49, [asData length]);
      v50 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v46 length:v48 freeWhenDone:1];
      [(_DKPRCompressedChangeSet *)v49 setCompressedData:v50];

      data = [(_DKPRCompressedChangeSet *)v49 data];

      if (data)
      {
        v52 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          v59 = [objc_opt_class() description];
          eventIDsToDelete2 = [v38 eventIDsToDelete];
          v60 = [eventIDsToDelete2 count];
          v61 = @"Deletion";
          if (!v60)
          {
            v61 = @"Addition";
          }

          v65 = v61;
          v62 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(data, "length")}];
          v63 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(asData, "length")}];
          LODWORD(a11) = 138544130;
          *(&a11 + 4) = v59;
          WORD6(a11) = 2112;
          *(&a11 + 14) = v65;
          a14 = 2112;
          a15 = v62;
          LOWORD(a16) = 2112;
          *(&a16 + 2) = v63;
          OUTLINED_FUNCTION_31_1(&dword_191750000, v52, v64, "%{public}@: %@ change set compressed to %@ (from %@)", &a11);
        }

        v53 = [(_CDSizeMetricFamily *)v40 sizeMetricWithName:0 string:1024 scale:?];
        CDSizeMetricAddSize(v53, [data length]);

LABEL_18:
        if (!v33)
        {
LABEL_20:
          if (data)
          {
            v55 = data;
          }

          else
          {
            v55 = asData;
          }

          v55;

          goto LABEL_24;
        }

LABEL_19:
        *v33 = data != 0;
        goto LABEL_20;
      }
    }

    else
    {
      free(v46);
    }

    goto LABEL_17;
  }

LABEL_24:

  OUTLINED_FUNCTION_72_0();

  return v56;
}

- (id)changeSetFromCompressedData:(void *)data deviceIdentifier:(NSObject *)identifier sequenceNumber:
{
  v35 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (self)
  {
    v8 = a2;
    v9 = [[_DKPRCompressedChangeSet alloc] initWithData:v8];

    if (-[_DKPRCompressedChangeSet uncompressedLength](v9) && (-[_DKPRCompressedChangeSet compressedData](v9), objc_claimAutoreleasedReturnValue()) && (v10 = OUTLINED_FUNCTION_28_4(), -[_DKPRCompressedChangeSet compressedData](v10), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 length], v11, _DKPRCompressedChangeSet, v12))
    {
      uncompressedLength = [(_DKPRCompressedChangeSet *)v9 uncompressedLength];
      malloc_type_malloc(uncompressedLength + 32, 0x429C8789uLL);
      v14 = OUTLINED_FUNCTION_28_4();
      compressedData = [(_DKPRCompressedChangeSet *)v14 compressedData];
      bytes = [compressedData bytes];
      compressedData2 = [(_DKPRCompressedChangeSet *)v9 compressedData];
      v18 = compression_decode_buffer(_DKPRCompressedChangeSet, uncompressedLength + 32, bytes, [compressedData2 length], 0, COMPRESSION_LZFSE);

      if (v18 == [(_DKPRCompressedChangeSet *)v9 uncompressedLength])
      {
        v19 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:_DKPRCompressedChangeSet length:v18 freeWhenDone:1];
        v20 = v19;
        if (v19)
        {
          v19 = [_DKChangeSet createFromData:v19 deviceIdentifier:dataCopy sequenceNumber:identifier];
        }

        goto LABEL_12;
      }

      v24 = +[_CDLogging syncChannel];
      if (OUTLINED_FUNCTION_32_2(v24))
      {
        v26 = [objc_opt_class() description];
        v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v18];
        v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:-[_DKPRCompressedChangeSet uncompressedLength](v9)];
        OUTLINED_FUNCTION_2_20();
        v32 = v27;
        v33 = v29;
        v34 = v30;
        _os_log_error_impl(&dword_191750000, identifier, OS_LOG_TYPE_ERROR, "%{public}@: Dropping change set, uncompressed size %@ does not match uncompressed length %@", v31, 0x20u);
      }

      free(_DKPRCompressedChangeSet);
    }

    else
    {
      v21 = +[_CDLogging syncChannel];
      if (OUTLINED_FUNCTION_32_2(v21))
      {
        v25 = [objc_opt_class() description];
        OUTLINED_FUNCTION_1();
        _os_log_error_impl(&dword_191750000, identifier, OS_LOG_TYPE_ERROR, "%{public}@: Dropping change set, unable to decode due to invalid data", v31, 0xCu);
      }
    }

    v20 = 0;
    v19 = 0;
LABEL_12:
    v22 = v19;

    goto LABEL_13;
  }

  v22 = 0;
LABEL_13:

  return v22;
}

- (void)handleFetchEventsWithRequest:options:responseHandler:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling fetch events request", v5);
}

- (void)handleFetchEventsWithRequest:options:responseHandler:.cold.2()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Received fetch events request: %@", v4, v5);
}

- (void)handleFetchEventsWithRequest:options:responseHandler:.cold.3()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Received fetch events request for up to %@ events", v4, v5);
}

- (void)handleFetchEventsWithRequest:options:responseHandler:.cold.4()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_12_6(&dword_191750000, "%{public}@: Failed to encode change set as protobuf: %@", v4, v5);
}

- (void)handleFetchEventsWithRequest:options:responseHandler:.cold.5()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_11_10(&dword_191750000, v3, v4, "%{public}@: Failed to fetch events, missing delegate", v5);
}

- (void)handleFetchEventsWithRequest:options:responseHandler:.cold.6()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Calling response handler with fetch events response: %@", v4, v5);
}

- (void)handleFetchDeletedEventIDsWithRequest:options:responseHandler:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling fetch deleted event ids request", v5);
}

- (void)handleFetchDeletedEventIDsWithRequest:options:responseHandler:.cold.2()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Received fetch deleted event ids request: %@", v4, v5);
}

- (void)handleFetchDeletedEventIDsWithRequest:options:responseHandler:.cold.3()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_11_10(&dword_191750000, v3, v4, "%{public}@: Failed to fetch deleted event ids, missing delegate", v5);
}

- (void)handleFetchDeletedEventIDsWithRequest:options:responseHandler:.cold.4()
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_0_36(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_5_15(&dword_191750000, "%{public}@: Calling response handler with fetch deleted event ids response: %@", v4, v5);
}

- (void)handleFetchEventsWithResponse:options:error:peer:plStartDate:completion:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling fetch events response", v5);
}

- (void)handleFetchDeletedEventIDsWithResponse:options:error:peer:plStartDate:completion:.cold.1()
{
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_52(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_32(&dword_191750000, v3, v4, "%{public}@: Handling fetch deleted event ids response", v5);
}

@end