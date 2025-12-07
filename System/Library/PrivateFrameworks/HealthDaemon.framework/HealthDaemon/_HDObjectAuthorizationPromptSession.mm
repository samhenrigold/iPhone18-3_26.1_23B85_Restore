@interface _HDObjectAuthorizationPromptSession
- (void)endPromptTransactionWithSuccess:(void *)success error:;
@end

@implementation _HDObjectAuthorizationPromptSession

- (void)endPromptTransactionWithSuccess:(void *)success error:
{
  v115 = *MEMORY[0x277D85DE8];
  successCopy = success;
  if (self)
  {
    v6 = *(self + 40);
    if (v6)
    {
      v7 = _Block_copy(v6);
      v8 = *(self + 40);
      *(self + 40) = 0;

      v60 = v7;
      if (a2)
      {
        WeakRetained = objc_loadWeakRetained((self + 8));
        sourceManager = [WeakRetained sourceManager];
        v11 = *(self + 48);
        v83[0] = 0;
        v12 = [sourceManager localSourceForBundleIdentifier:v11 error:v83];
        v13 = v83[0];

        v72 = v12 != 0;
        if (!v12)
        {
          _HKInitializeLogging();
          v14 = HKLogAuthorization();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v114 = v13;
            _os_log_error_impl(&dword_228986000, v14, OS_LOG_TYPE_ERROR, "Failed to look up source entity: %{public}@", buf, 0xCu);
          }

          v15 = v13;
          successCopy = v15;
        }
      }

      else
      {
        v12 = 0;
        v72 = 0;
      }

      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      obj = *(self + 16);
      v16 = [obj countByEnumeratingWithState:&v79 objects:v111 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v80;
        v63 = v12;
        v64 = successCopy;
        v61 = *v80;
        selfCopy = self;
        do
        {
          v19 = 0;
          v65 = v17;
          do
          {
            if (*v80 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v79 + 1) + 8 * v19);
            if (v20)
            {
              v21 = *(v20 + 56);
            }

            else
            {
              v21 = 0;
            }

            v22 = v21;
            v23 = objc_loadWeakRetained((self + 8));
            v73 = v12;
            v24 = v22;
            v25 = v23;
            v26 = successCopy;
            if (v20)
            {
              v27 = *(v20 + 16);
              if (v27)
              {
                v71 = v25;
                v28 = _Block_copy(v27);
                v29 = *(v20 + 16);
                *(v20 + 16) = 0;

                if (v72)
                {
                  v69 = v28;
                  v70 = v24;
                  v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
                  v101 = 0u;
                  v102 = 0u;
                  v99 = 0u;
                  v100 = 0u;
                  v31 = *(v20 + 32);
                  v32 = [v31 countByEnumeratingWithState:&v99 objects:buf count:16];
                  if (v32)
                  {
                    v33 = v32;
                    v34 = *v100;
                    do
                    {
                      for (i = 0; i != v33; ++i)
                      {
                        if (*v100 != v34)
                        {
                          objc_enumerationMutation(v31);
                        }

                        v36 = *(*(&v99 + 1) + 8 * i);
                        uUID = [v36 UUID];
                        [v30 setObject:v36 forKeyedSubscript:uUID];
                      }

                      v33 = [v31 countByEnumeratingWithState:&v99 objects:buf count:16];
                    }

                    while (v33);
                  }

                  v38 = *(v20 + 32);
                  v98 = v26;
                  v39 = [HDObjectAuthorizationEntity authorizationRecordsForSamples:v38 sourceEntity:v73 sessionIdentifier:v70 profile:v71 error:&v98];
                  v40 = v98;

                  if (v39)
                  {
                    v67 = v40;
                    v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
                    v87 = 0u;
                    v88 = 0u;
                    v89 = 0u;
                    v90 = 0u;
                    v66 = v39;
                    v42 = v39;
                    v43 = [v42 countByEnumeratingWithState:&v87 objects:v112 count:16];
                    if (v43)
                    {
                      v44 = v43;
                      v45 = *v88;
                      do
                      {
                        for (j = 0; j != v44; ++j)
                        {
                          if (*v88 != v45)
                          {
                            objc_enumerationMutation(v42);
                          }

                          v47 = *(*(&v87 + 1) + 8 * j);
                          if ([v47 status] == 2)
                          {
                            objectUUID = [v47 objectUUID];
                            v49 = [v30 objectForKeyedSubscript:objectUUID];
                            [v41 addObject:v49];
                          }
                        }

                        v44 = [v42 countByEnumeratingWithState:&v87 objects:v112 count:16];
                      }

                      while (v44);
                    }

                    v83[1] = MEMORY[0x277D85DD0];
                    v83[2] = 3221225472;
                    v83[3] = __106___HDObjectAuthorizationRequest_invokeCompletionWithSuccess_sourceEntity_sessionIdentifier_profile_error___block_invoke_3;
                    v83[4] = &unk_278621C70;
                    v86 = v69;
                    v83[5] = v20;
                    v84 = v41;
                    v50 = v67;
                    v85 = v67;
                    v51 = v41;
                    HKDispatchAsyncOnGlobalConcurrentQueue();

                    v39 = v66;
                  }

                  else
                  {
                    v91 = MEMORY[0x277D85DD0];
                    v92 = 3221225472;
                    v93 = __106___HDObjectAuthorizationRequest_invokeCompletionWithSuccess_sourceEntity_sessionIdentifier_profile_error___block_invoke_2;
                    v94 = &unk_278616488;
                    v97 = v69;
                    v95 = v20;
                    v96 = v40;
                    HKDispatchAsyncOnGlobalConcurrentQueue();

                    v51 = v97;
                    v50 = v40;
                  }

                  v12 = v63;
                  successCopy = v64;
                  v18 = v61;
                  self = selfCopy;
                  v17 = v65;
                  v52 = v69;
                  v24 = v70;
                }

                else
                {
                  v103 = MEMORY[0x277D85DD0];
                  v104 = 3221225472;
                  v105 = __106___HDObjectAuthorizationRequest_invokeCompletionWithSuccess_sourceEntity_sessionIdentifier_profile_error___block_invoke;
                  v106 = &unk_278616488;
                  v109 = v28;
                  v107 = v20;
                  v50 = v26;
                  v108 = v50;
                  HKDispatchAsyncOnGlobalConcurrentQueue();

                  v52 = v28;
                  v30 = v109;
                }

                v26 = v50;
                v25 = v71;
              }
            }

            ++v19;
          }

          while (v19 != v17);
          v53 = [obj countByEnumeratingWithState:&v79 objects:v111 count:16];
          v17 = v53;
        }

        while (v53);
      }

      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v54 = *(self + 24);
      v55 = [v54 countByEnumeratingWithState:&v75 objects:v110 count:16];
      if (v55)
      {
        v56 = v55;
        v57 = *v76;
        do
        {
          for (k = 0; k != v56; ++k)
          {
            if (*v76 != v57)
            {
              objc_enumerationMutation(v54);
            }

            v74 = successCopy;
            HKDispatchAsyncOnGlobalConcurrentQueue();
          }

          v56 = [v54 countByEnumeratingWithState:&v75 objects:v110 count:16];
        }

        while (v56);
      }

      successCopy = successCopy;
      v59 = v60;
      HKDispatchAsyncOnGlobalConcurrentQueue();
    }
  }
}

@end