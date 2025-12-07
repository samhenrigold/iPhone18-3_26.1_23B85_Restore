@interface SpotlightReceiverConnection
- (BOOL)canRun;
- (BOOL)unresponsive;
- (BOOL)updateConfigsForClient:(int64_t)client configurationValues:(id)values;
- (SpotlightReceiverConnection)initWithServiceName:(id)name client:(int64_t)client configPath:(id)path;
- (void)addInteraction:(id)interaction intentClassName:(id)name bundleID:(id)d protectionClass:(id)class;
- (void)addUserActions:(id)actions bundleID:(id)d protectionClass:(id)class;
- (void)deleteAllInteractionsWithBundleID:(id)d protectionClass:(id)class;
- (void)deleteAllUserActivities:(id)activities;
- (void)deleteFromBundle:(id)bundle;
- (void)deleteFromBundle:(id)bundle contentType:(id)type identifiers:(id)identifiers;
- (void)deleteFromBundle:(id)bundle domainIdentifiers:(id)identifiers;
- (void)deleteFromBundle:(id)bundle encodedIdentifiers:(id)identifiers;
- (void)deleteFromBundle:(id)bundle sinceDate:(id)date;
- (void)deleteInteractionsWithGroupIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class;
- (void)deleteInteractionsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class;
- (void)deleteUserActivitiesWithPersistentIdentifiers:(id)identifiers bundleID:(id)d retainedData:(id)data;
- (void)deleteWithFd:(int)fd offset:(unint64_t)offset size:(unint64_t)size indexType:(unint64_t)type protectionClass:(id)class serialNumber:(unint64_t)number journalCookie:(id)cookie completionHandler:(id)self0;
- (void)dictionary:(id)dictionary setDecoderData:(id)data forKey:(const char *)key sizeKey:(const char *)sizeKey;
- (void)disableReceiver;
- (void)donateRelevantActions:(id)actions bundleID:(id)d;
- (void)enableReceiver;
- (void)handleError:(id)error;
- (void)indexFromBundle:(id)bundle protectionClass:(id)class items:(id)items itemsContent:(id)content;
- (void)indexWithFd:(int)fd offset:(unint64_t)offset size:(unint64_t)size indexType:(unint64_t)type bundleID:(id)d protectionClass:(id)class serialNumber:(unint64_t)number journalCookie:(id)self0 config:(id)self1 additionalAttributes:(id)self2 completionHandler:(id)self3;
- (void)invalidationHandler;
- (void)purgeFromBundle:(id)bundle identifiers:(id)identifiers;
- (void)receiverRequestComplete;
- (void)reset;
- (void)resume;
- (void)runOnSenderQueue:(id)queue;
- (void)setupComplete:(BOOL)complete;
- (void)startSetup;
- (void)startSetupForClient:(int64_t)client configurationValues:(id)values;
- (void)suspend;
@end

@implementation SpotlightReceiverConnection

- (BOOL)canRun
{
  if (self->_setupComplete)
  {
    goto LABEL_2;
  }

  [(SpotlightReceiverConnection *)self startSetup];
  setupSemaphore = [(SpotlightReceiverConnection *)self setupSemaphore];
  if (!setupSemaphore || (v6 = atomic_load(&self->_disabled), (v6 & 1) != 0))
  {
LABEL_11:

    v4 = 0;
    return v4 & 1;
  }

  if (sReceiverSetupTimeout)
  {
    v7 = -1;
  }

  else
  {
    v7 = dispatch_time(0, 10000000000);
  }

  dispatch_semaphore_wait(setupSemaphore, v7);
  if (!self->_setupComplete)
  {
    senderQueue = self->_senderQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__SpotlightReceiverConnection_canRun__block_invoke;
    block[3] = &unk_278934050;
    block[4] = self;
    dispatch_async(senderQueue, block);
    goto LABEL_11;
  }

LABEL_2:
  v3 = atomic_load(&self->_disabled);
  v4 = v3 ^ 1;
  return v4 & 1;
}

- (void)startSetup
{
  if (!self->_setupStarted)
  {
    senderQueue = self->_senderQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__SpotlightReceiverConnection_startSetup__block_invoke;
    block[3] = &unk_278934050;
    block[4] = self;
    v3 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_BACKGROUND, 0, block);
    dispatch_async(senderQueue, v3);
  }
}

- (BOOL)unresponsive
{
  v4 = atomic_load(&self->_disabled);
  if (v4)
  {
    return 1;
  }

  result = 0;
  v7 = atomic_load(&self->_requestCount);
  if (sReceiverRequestMax)
  {
    v8 = 0;
  }

  else
  {
    v8 = 32;
  }

  if (v7 && (sReceiverRequestMax & 1) == 0 && v7 > v8)
  {
    [(SpotlightReceiverConnection *)self disableReceiver:v2];
    return 1;
  }

  return result;
}

- (void)receiverRequestComplete
{
  add = atomic_fetch_add(&self->_requestCount, 0xFFFFFFFF);
  v3 = atomic_load(&self->_disabled);
  if (v3)
  {
    if (sReceiverRequestMax)
    {
      v4 = 0;
    }

    else
    {
      v4 = 16;
    }

    if (add <= v4)
    {
      [(SpotlightReceiverConnection *)self enableReceiver];
    }
  }
}

- (void)invalidationHandler
{
  serviceName = [self serviceName];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
}

- (void)setupComplete:(BOOL)complete
{
  if (!complete)
  {
    [(SpotlightReceiverConnection *)self disableReceiver];
  }

  self->_setupComplete = complete;
  setupSemaphore = [(SpotlightReceiverConnection *)self setupSemaphore];
  if (setupSemaphore)
  {
    v6 = setupSemaphore;
    dispatch_semaphore_signal(setupSemaphore);
    [(SpotlightReceiverConnection *)self setSetupSemaphore:0];
    setupSemaphore = v6;
  }
}

- (void)handleError:(id)error
{
  string = xpc_dictionary_get_string(error, *MEMORY[0x277D86400]);
  v6 = logForCSLogCategoryDefault(string);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(SpotlightReceiverConnection *)string handleError:?];
  }

  if (MEMORY[0x277D863F0] != MEMORY[0x277D863F8] && error == MEMORY[0x277D863F8])
  {
    [(SpotlightReceiverConnection *)self setupComplete:0];
  }
}

- (BOOL)updateConfigsForClient:(int64_t)client configurationValues:(id)values
{
  v73 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = valuesCopy;
  v7 = [obj countByEnumeratingWithState:&v68 objects:v72 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0x278933000uLL;
    v10 = @"name";
    v11 = *v69;
    v64 = *v69;
    do
    {
      v12 = 0;
      v65 = v8;
      do
      {
        if (*v69 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v67 = v12;
        v13 = *(*(&v68 + 1) + 8 * v12);
        v14 = [objc_alloc(*(v9 + 1576)) initForClient:client];
        v15 = [v13 objectForKeyedSubscript:v10];
        [v14 setName:v15];

        v16 = [v13 objectForKeyedSubscript:@"versionName"];
        if (v16)
        {
          [v14 setVersionName:v16];
        }

        else
        {
          v17 = MEMORY[0x277CCACA8];
          name = [v14 name];
          [name capitalizedString];
          v19 = v10;
          v20 = v9;
          clientCopy = client;
          v23 = v22 = v6;
          v24 = [v17 stringWithFormat:@"_kMDItem%@Version", v23];
          [v14 setVersionName:v24];

          v11 = v64;
          v6 = v22;
          client = clientCopy;
          v9 = v20;
          v10 = v19;
          v8 = v65;
        }

        v25 = [v13 objectForKeyedSubscript:@"versionValue"];
        v26 = v25;
        if (v25)
        {
          v27 = v25;
        }

        else
        {
          v27 = &unk_2846C9578;
        }

        [v14 setVersionValue:v27];

        v28 = [v13 objectForKeyedSubscript:@"requirePriorityItems"];
        if (v28)
        {
          v29 = [v13 objectForKeyedSubscript:@"requirePriorityItems"];
          [v14 setRequirePriorityItems:{objc_msgSend(v29, "BOOLValue")}];
        }

        else
        {
          [v14 setRequirePriorityItems:0];
        }

        v30 = [v13 objectForKeyedSubscript:@"requireBacklogItems"];
        if (v30)
        {
          v31 = [v13 objectForKeyedSubscript:@"requireBacklogItems"];
          [v14 setRequireBacklogItems:{objc_msgSend(v31, "BOOLValue")}];
        }

        else
        {
          [v14 setRequireBacklogItems:0];
        }

        v32 = [v13 objectForKeyedSubscript:@"includeDeletedItems"];
        if (v32)
        {
          v33 = [v13 objectForKeyedSubscript:@"includeDeletedItems"];
          [v14 setIncludeDeletedItems:{objc_msgSend(v33, "BOOLValue")}];
        }

        else
        {
          [v14 setIncludeDeletedItems:0];
        }

        v34 = [v13 objectForKeyedSubscript:@"includeLanguage"];
        if (v34)
        {
          v35 = [v13 objectForKeyedSubscript:@"includeLanguage"];
          [v14 setIncludeLanguage:{objc_msgSend(v35, "BOOLValue")}];
        }

        else
        {
          [v14 setIncludeLanguage:0];
        }

        v36 = [v13 objectForKeyedSubscript:@"priority"];
        v37 = v36;
        if (v36)
        {
          v38 = v36;
        }

        else
        {
          v38 = @"background";
        }

        [v14 setPriority:v38];

        v39 = [v13 objectForKeyedSubscript:@"processes"];
        [v14 setProcesses:v39];

        v40 = [v13 objectForKeyedSubscript:@"donationAttributes"];
        [v14 setDonationAttributes:v40];

        v41 = [v13 objectForKeyedSubscript:@"requiredAttributes"];
        [v14 setRequiredAttributes:v41];

        v42 = [v13 objectForKeyedSubscript:@"optionalAttributes"];
        [v14 setOptionalAttributes:v42];

        v43 = [v13 objectForKeyedSubscript:@"excludeAttributes"];
        [v14 setExcludeAttributes:v43];

        v44 = [v13 objectForKeyedSubscript:@"supportedBundles"];
        [v14 setBundleIDs:v44];

        v45 = [v13 objectForKeyedSubscript:@"unsupportedBundles"];
        [v14 setDisableBundleIDs:v45];

        v46 = [v13 objectForKeyedSubscript:@"supportedDomains"];
        [v14 setDomainIDs:v46];

        v47 = [v13 objectForKeyedSubscript:@"unsupportedDomains"];
        [v14 setDisableDomainIDs:v47];

        v48 = [v13 objectForKeyedSubscript:@"supportedContentTypes"];
        [v14 setContentTypes:v48];

        v49 = [v13 objectForKeyedSubscript:@"unsupportedContentTypes"];
        [v14 setDisableContentTypes:v49];

        v50 = [v13 objectForKeyedSubscript:@"supportedQuery"];
        [v14 setSupportedQuery:v50];

        v51 = [v13 objectForKeyedSubscript:@"unsupportedQuery"];
        [v14 setUnsupportedQuery:v51];

        v52 = [v13 objectForKeyedSubscript:@"INIntentClassNames"];
        [v14 setINIntentClassNames:v52];

        v53 = [v13 objectForKeyedSubscript:@"requiresText"];
        if (v53)
        {
          v54 = [v13 objectForKeyedSubscript:@"requiresText"];
          [v14 setNeedsText:{objc_msgSend(v54, "BOOLValue")}];
        }

        else
        {
          [v14 setNeedsText:0];
        }

        v55 = [v13 objectForKeyedSubscript:@"requiresHTML"];
        if (v55)
        {
          v56 = [v13 objectForKeyedSubscript:@"requiresHTML"];
          [v14 setNeedsHTML:{objc_msgSend(v56, "BOOLValue")}];
        }

        else
        {
          [v14 setNeedsHTML:0];
        }

        if (([v14 needsText] & 1) == 0)
        {
          requiredAttributes = [v14 requiredAttributes];
          v58 = [requiredAttributes containsObject:@"kMDItemTextContent"];

          if (v58)
          {
            [v14 setNeedsText:1];
          }
        }

        if (([v14 needsHTML] & 1) == 0)
        {
          requiredAttributes2 = [v14 requiredAttributes];
          v60 = [requiredAttributes2 containsObject:@"kMDItemHTMLContentData"];

          if (v60)
          {
            [v14 setNeedsHTML:1];
          }
        }

        [v6 addObject:v14];

        v12 = v67 + 1;
      }

      while (v8 != v67 + 1);
      v8 = [obj countByEnumeratingWithState:&v68 objects:v72 count:16];
    }

    while (v8);
  }

  v61 = [v6 count];
  if (v61)
  {
    self->_supportedJobs |= 0xF8000u;
    objc_storeStrong(&self->_configs, v6);
  }

  return v61 != 0;
}

- (void)startSetupForClient:(int64_t)client configurationValues:(id)values
{
  valuesCopy = values;
  if (!self->_setupStarted && [(SpotlightReceiverConnection *)self updateConfigsForClient:client configurationValues:valuesCopy])
  {
    self->_setupStarted = 1;
    senderQueue = self->_senderQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__SpotlightReceiverConnection_startSetupForClient_configurationValues___block_invoke;
    block[3] = &unk_278934050;
    block[4] = self;
    v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_BACKGROUND, 0, block);
    dispatch_async(senderQueue, v8);
  }
}

uint64_t __71__SpotlightReceiverConnection_startSetupForClient_configurationValues___block_invoke(uint64_t a1)
{
  [*(a1 + 32) enableReceiver];
  v2 = *(a1 + 32);

  return [v2 setupComplete:1];
}

void __41__SpotlightReceiverConnection_startSetup__block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if ((*(v1 + 75) & 1) == 0)
  {
    *(v1 + 75) = 1;
    v3 = objc_alloc(MEMORY[0x277CBEBC0]);
    v4 = MEMORY[0x277CCACA8];
    v5 = NSHomeDirectory();
    v6 = [*(a1 + 32) serviceName];
    v7 = [v4 stringWithFormat:@"%@/%s/%@.plist", v5, "Library/Spotlight/CoreSpotlight", v6];
    v8 = [v3 initFileURLWithPath:v7];

    if (v8)
    {
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v8 error:0];
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = getSystemVersionString(v9);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v10 objectForKeyedSubscript:@"rcv"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 integerValue] == 2)
      {
        v13 = [v10 objectForKeyedSubscript:@"sv"];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v11 isEqualToString:v13])
        {

          v14 = [v10 objectForKeyedSubscript:@"jt"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v14 integerValue];

            if (!v15)
            {
              goto LABEL_15;
            }
          }

          else
          {

            v15 = 0;
          }

          v43 = v15;
          v16 = [v10 objectForKeyedSubscript:@"bids"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v16 count])
          {
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v22 = v16;
            v23 = [v22 countByEnumeratingWithState:&v60 objects:v68 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v61;
              while (2)
              {
                for (i = 0; i != v24; ++i)
                {
                  if (*v61 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {

                    goto LABEL_15;
                  }
                }

                v24 = [v22 countByEnumeratingWithState:&v60 objects:v68 count:16];
                if (v24)
                {
                  continue;
                }

                break;
              }
            }
          }

          v17 = [v10 objectForKeyedSubscript:@"cts"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v17 count])
          {
            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            obj = v17;
            v27 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v57;
              while (2)
              {
                for (j = 0; j != v28; ++j)
                {
                  if (*v57 != v29)
                  {
                    objc_enumerationMutation(obj);
                  }

                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {

                    goto LABEL_16;
                  }
                }

                v28 = [obj countByEnumeratingWithState:&v56 objects:v67 count:16];
                if (v28)
                {
                  continue;
                }

                break;
              }
            }
          }

          v21 = [v10 objectForKeyedSubscript:@"icls"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v21 count])
          {
            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            v44 = v21;
            v31 = [v44 countByEnumeratingWithState:&v52 objects:v66 count:16];
            if (v31)
            {
              v32 = v31;
              obja = *v53;
              while (2)
              {
                for (k = 0; k != v32; ++k)
                {
                  if (*v53 != obja)
                  {
                    objc_enumerationMutation(v44);
                  }

                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {

                    goto LABEL_17;
                  }
                }

                v32 = [v44 countByEnumeratingWithState:&v52 objects:v66 count:16];
                if (v32)
                {
                  continue;
                }

                break;
              }
            }
          }

          v34 = [*(*(a1 + 32) + 56) client];
          v35 = *(a1 + 32);
          v36 = [v10 objectForKeyedSubscript:@"jps"];
          LOBYTE(v34) = [v35 updateConfigsForClient:v34 configurationValues:v36];

          if ((v34 & 1) == 0)
          {
            *(*(a1 + 32) + 80) = v43;
          }

          v37 = [v16 copy];
          [*(*(a1 + 32) + 56) setBundleIDs:v37];

          v38 = [v17 copy];
          [*(*(a1 + 32) + 56) setContentTypes:v38];

          v39 = [v21 copy];
          [*(*(a1 + 32) + 56) setINIntentClassNames:v39];

          if ((*(*(a1 + 32) + 76) & 1) == 0)
          {
            v41 = logForCSLogCategoryDefault(v40);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
            {
              v42 = [*(a1 + 32) serviceName];
              *buf = 138412290;
              v65 = v42;
              _os_log_impl(&dword_231A35000, v41, OS_LOG_TYPE_INFO, "### RECEIVER %@ enable", buf, 0xCu);
            }

            [*(a1 + 32) enableReceiver];
            [*(a1 + 32) setupComplete:1];
          }

          goto LABEL_18;
        }
      }
    }

LABEL_15:
    v16 = 0;
LABEL_16:
    v17 = 0;
LABEL_17:
    Current = CFAbsoluteTimeGetCurrent();
    v19 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v19, "command", "s");
    v20 = *(a1 + 32);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __41__SpotlightReceiverConnection_startSetup__block_invoke_289;
    v47[3] = &unk_278934180;
    v47[4] = v20;
    v51 = Current;
    v48 = v8;
    v49 = v11;
    v50 = v10;
    [v20 sendMessageAsync:v19 completion:v47];

    v21 = 0;
LABEL_18:
  }
}

void __41__SpotlightReceiverConnection_startSetup__block_invoke_289(uint64_t a1, void *a2)
{
  v69 = *MEMORY[0x277D85DE8];
  string = a2;
  v4 = string;
  if (!string)
  {
    v7 = 0;
    v6 = -1;
    goto LABEL_5;
  }

  int64 = xpc_dictionary_get_int64(string, "status");
  if (int64)
  {
    v6 = int64;
    string = xpc_dictionary_get_string(v4, "ed");
    v7 = string;
LABEL_5:
    v8 = logForCSLogCategoryDefault(string);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v57 = [*(a1 + 32) serviceName];
      *buf = 138412802;
      v64 = v57;
      v65 = 2048;
      *v66 = v6;
      *&v66[8] = 2080;
      *&v66[10] = v7;
      _os_log_error_impl(&dword_231A35000, v8, OS_LOG_TYPE_ERROR, "### RECEIVER %@ setup error %ld domain %s", buf, 0x20u);
    }

    [*(a1 + 32) setupComplete:0];
    goto LABEL_34;
  }

  *(*(a1 + 32) + 80) = xpc_dictionary_get_uint64(v4, "jt");
  v9 = MEMORY[0x277CC3510];
  v10 = xpc_dictionary_get_array(v4, "jps");
  v11 = [v9 copyNSStringOrDictArrayFromXPCArray:v10];

  v61 = v11;
  if (v11)
  {
    [*(a1 + 32) updateConfigsForClient:objc_msgSend(*(*(a1 + 32) + 56) configurationValues:{"client"), v11}];
  }

  v12 = MEMORY[0x277CC3510];
  v13 = xpc_dictionary_get_array(v4, "bids");
  v14 = [v12 copyNSStringSetFromXPCArray:v13];

  v15 = MEMORY[0x277CC3510];
  v16 = xpc_dictionary_get_array(v4, "cts");
  v17 = [v15 copyNSStringArrayFromXPCArray:v16];

  if ((*(*(a1 + 32) + 80) & 0x780) != 0)
  {
    v18 = MEMORY[0x277CC3510];
    v19 = xpc_dictionary_get_array(v4, "icls");
    v20 = [v18 copyNSStringSetFromXPCArray:v19];
  }

  else
  {
    v20 = 0;
  }

  v21 = [v14 allObjects];
  v22 = [v21 copy];
  [*(*(a1 + 32) + 56) setBundleIDs:v22];

  v23 = [v17 copy];
  [*(*(a1 + 32) + 56) setContentTypes:v23];

  v24 = [v20 copy];
  [*(*(a1 + 32) + 56) setINIntentClassNames:v24];

  v26 = logForCSLogCategoryDefault(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = [*(a1 + 32) serviceName];
    v28 = *(a1 + 32);
    v29 = v20;
    v30 = *(v28 + 80);
    v31 = [*(v28 + 56) bundleIDs];
    [*(*(a1 + 32) + 56) contentTypes];
    v32 = v59 = v14;
    [*(*(a1 + 32) + 56) INIntentClassNames];
    v33 = v58 = v17;
    *buf = 138413314;
    v64 = v27;
    v65 = 1024;
    *v66 = v30;
    v20 = v29;
    *&v66[4] = 2112;
    *&v66[6] = v31;
    *&v66[14] = 2112;
    *&v66[16] = v32;
    v67 = 2112;
    v68 = v33;
    _os_log_impl(&dword_231A35000, v26, OS_LOG_TYPE_INFO, "### RECEIVER client: %@, supportedJobTypes: 0x%x bundleIDs: %@, contentTypes: %@, INIntentClassNames:  %@", buf, 0x30u);

    v17 = v58;
    v14 = v59;
  }

  v35 = logForCSLogCategoryDefault(v34);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    [*(a1 + 32) serviceName];
    v36 = v20;
    v38 = v37 = v17;
    v39 = CFAbsoluteTimeGetCurrent() - *(a1 + 64);
    *buf = 138412546;
    v64 = v38;
    v65 = 2048;
    *v66 = v39;
    _os_log_impl(&dword_231A35000, v35, OS_LOG_TYPE_INFO, "### RECEIVER %@ setup time %f ####", buf, 0x16u);

    v17 = v37;
    v20 = v36;
  }

  if (*(a1 + 40) && *(a1 + 48))
  {
    v60 = v20;
    v40 = v17;
    v41 = objc_opt_new();
    [v41 setObject:*(a1 + 48) forKeyedSubscript:@"sv"];
    [v41 setObject:&unk_2846C9560 forKeyedSubscript:@"rcv"];
    v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*(a1 + 32) + 80)];
    [v41 setObject:v42 forKeyedSubscript:@"jt"];

    v43 = [*(*(a1 + 32) + 56) bundleIDs];

    if (v43)
    {
      v44 = [*(*(a1 + 32) + 56) bundleIDs];
      [v41 setObject:v44 forKeyedSubscript:@"bids"];
    }

    v45 = [*(*(a1 + 32) + 56) contentTypes];

    if (v45)
    {
      v46 = [*(*(a1 + 32) + 56) contentTypes];
      [v41 setObject:v46 forKeyedSubscript:@"cts"];
    }

    v47 = [*(*(a1 + 32) + 56) INIntentClassNames];

    if (v47)
    {
      v48 = [*(*(a1 + 32) + 56) INIntentClassNames];
      [v41 setObject:v48 forKeyedSubscript:@"icls"];
    }

    v49 = v14;
    if ([*(*(a1 + 32) + 64) count])
    {
      [v41 setObject:v61 forKeyedSubscript:@"jps"];
    }

    v50 = *(a1 + 40);
    v62 = 0;
    v51 = [v41 writeToURL:v50 error:&v62];
    v52 = v62;
    v53 = logForCSLogCategoryDefault(v52);
    v54 = v53;
    if (v51)
    {
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        v55 = [*(a1 + 32) serviceName];
        v56 = *(a1 + 56);
        *buf = 138412546;
        v64 = v55;
        v65 = 2112;
        *v66 = v56;
        _os_log_impl(&dword_231A35000, v54, OS_LOG_TYPE_INFO, "### RECEIVER %@ write %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      __41__SpotlightReceiverConnection_startSetup__block_invoke_289_cold_1((a1 + 40), v52, v54);
    }

    v14 = v49;
    v17 = v40;
    v20 = v60;
  }

  [*(a1 + 32) enableReceiver];
  [*(a1 + 32) setupComplete:1];

LABEL_34:
}

- (SpotlightReceiverConnection)initWithServiceName:(id)name client:(int64_t)client configPath:(id)path
{
  v35 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  pathCopy = path;
  v30.receiver = self;
  v30.super_class = SpotlightReceiverConnection;
  v10 = [(CSXPCConnection *)&v30 initWithMachServiceName:nameCopy];
  if (v10)
  {
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_UTILITY, 0);

    v13 = dispatch_queue_create([nameCopy UTF8String], v12);
    senderQueue = v10->_senderQueue;
    v10->_senderQueue = v13;

    v15 = [[SpotlightReceiverConfig alloc] initForClient:client];
    primaryConfig = v10->_primaryConfig;
    v10->_primaryConfig = v15;

    if (pathCopy)
    {
      v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];
      v18 = v17;
      if (v17)
      {
        v29 = 0;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v17 error:&v29];
        v17 = v29;
        v20 = v17;
        if (v19)
        {
          v17 = [v19 objectForKeyedSubscript:@"configs"];
          if (v17)
          {
            v21 = v17;
            v28 = v20;
            v22 = [v19 objectForKeyedSubscript:@"configs"];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v24 = logForCSLogCategoryDefault(v17);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                clientCopy2 = client;
                v33 = 2112;
                v34 = pathCopy;
                _os_log_impl(&dword_231A35000, v24, OS_LOG_TYPE_DEFAULT, "### RECEIVER: starting setup for client %ld from plist config %@ ", buf, 0x16u);
              }

              v25 = [v19 objectForKeyedSubscript:@"configs"];
              [(SpotlightReceiverConnection *)v10 startSetupForClient:client configurationValues:v25];

              v20 = v28;
LABEL_16:

              goto LABEL_17;
            }

            v20 = v28;
          }
        }
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }
    }

    else
    {
      v19 = 0;
      v20 = 0;
      v18 = 0;
    }

    v26 = logForCSLogCategoryDefault(v17);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      clientCopy2 = client;
      _os_log_impl(&dword_231A35000, v26, OS_LOG_TYPE_DEFAULT, "### RECEIVER: starting setup for client %ld", buf, 0xCu);
    }

    [(SpotlightReceiverConnection *)v10 startSetup];
    goto LABEL_16;
  }

LABEL_17:

  return v10;
}

- (void)disableReceiver
{
  serviceName = [self serviceName];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
}

- (void)enableReceiver
{
  serviceName = [self serviceName];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
}

_BYTE *__37__SpotlightReceiverConnection_canRun__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[76] & 1) == 0)
  {
    return [result disableReceiver];
  }

  return result;
}

- (void)runOnSenderQueue:(id)queue
{
  queueCopy = queue;
  senderQueue = self->_senderQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SpotlightReceiverConnection_runOnSenderQueue___block_invoke;
  block[3] = &unk_2789341A8;
  v9 = queueCopy;
  v6 = queueCopy;
  v7 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(senderQueue, v7);
}

- (void)dictionary:(id)dictionary setDecoderData:(id)data forKey:(const char *)key sizeKey:(const char *)sizeKey
{
  xdict = dictionary;
  dataCopy = data;
  backingStore = [dataCopy backingStore];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  xpcData = [backingStore xpcData];
  if (!xpcData)
  {
    goto LABEL_5;
  }

  v12 = xpcData;
  if (MEMORY[0x2383767F0]() != MEMORY[0x277D86458])
  {

LABEL_5:
    data = [dataCopy data];
    bytes = [data bytes];
    if (bytes)
    {
      v15 = bytes;
      v16 = [data length];
      if (v16)
      {
        xpc_dictionary_set_data(xdict, key, v15, v16);
      }
    }

    v12 = 0;
    goto LABEL_9;
  }

  dataSize = [backingStore dataSize];
  xpc_dictionary_set_value(xdict, key, v12);
  if (dataSize)
  {
    xpc_dictionary_set_uint64(xdict, sizeKey, dataSize);
  }

LABEL_9:
}

- (void)indexFromBundle:(id)bundle protectionClass:(id)class items:(id)items itemsContent:(id)content
{
  bundleCopy = bundle;
  classCopy = class;
  itemsCopy = items;
  contentCopy = content;
  if (itemsCopy && (self->_supportedJobs & 1) != 0 && ![(SpotlightReceiverConnection *)self unresponsive])
  {
    primaryConfig = [(SpotlightReceiverConnection *)self primaryConfig];
    v15 = primaryConfig;
    if (primaryConfig && [primaryConfig wantsBundleID:bundleCopy])
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __82__SpotlightReceiverConnection_indexFromBundle_protectionClass_items_itemsContent___block_invoke;
      v16[3] = &unk_2789341F8;
      v17 = v15;
      selfCopy = self;
      v19 = itemsCopy;
      v20 = bundleCopy;
      v21 = classCopy;
      v22 = contentCopy;
      [(SpotlightReceiverConnection *)self runOnSenderQueue:v16];
    }
  }
}

void __82__SpotlightReceiverConnection_indexFromBundle_protectionClass_items_itemsContent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) contentTypes];
  v3 = [v2 count];

  if (!v3)
  {
    goto LABEL_26;
  }

  v5 = *(a1 + 48);
  v6 = *(*(a1 + 40) + 96) == 0.0;
  if (v5)
  {
    objc_msgSend_obj(v5);
  }

  else
  {
    v24 = 0uLL;
    v25 = 0;
  }

  Count = _MDPlistArrayGetCount();
  if (Count)
  {
    v8 = Count;
    v9 = 1;
    do
    {
      v24 = 0uLL;
      v25 = 0;
      v10 = *(a1 + 48);
      if (v10)
      {
        objc_msgSend_obj(v10);
      }

      else
      {
        v22 = 0uLL;
        v23 = 0;
      }

      _MDPlistArrayGetPlistObjectAtIndex();
      v22 = v24;
      v23 = v25;
      PlistObjectType = _MDPlistGetPlistObjectType();
      if (PlistObjectType != 240)
      {
        goto LABEL_19;
      }

      v22 = v24;
      v23 = v25;
      PlistObjectType = _MDPlistArrayGetCount();
      if (PlistObjectType < 3)
      {
        goto LABEL_19;
      }

      v22 = 0uLL;
      v23 = 0;
      _MDPlistArrayGetPlistObjectAtIndex();
      v20 = 0uLL;
      v21 = 0;
      PlistObjectType = _MDPlistGetPlistObjectType();
      if (PlistObjectType != 241)
      {
        goto LABEL_19;
      }

      v20 = 0uLL;
      v21 = 0;
      if (*(*(a1 + 40) + 77) == 1)
      {
        v18 = v22;
        v19 = v23;
        if (_MDPlistDictionaryGetPlistObjectForKey())
        {
          return;
        }
      }

      v18 = v22;
      v19 = v23;
      PlistObjectType = _MDPlistDictionaryGetPlistObjectForKey();
      if (PlistObjectType)
      {
        v18 = v20;
        v19 = v21;
        v11 = _MDPlistContainerCopyObject();
        v12 = [*(a1 + 32) wantsContentType:v11];
        if (!v6 && (v12 & 1) != 0)
        {
          v18 = v22;
          v19 = v23;
          if (_MDPlistDictionaryGetPlistObjectForKey())
          {
            v18 = v20;
            v19 = v21;
            _MDPlistDateGetValue();
            v6 = v13 >= *(*(a1 + 40) + 96);
            v12 = v6;
          }

          else
          {
            v6 = 1;
            v12 = 1;
          }
        }
      }

      else
      {
LABEL_19:
        v12 = 0;
      }

      if (v9 >= v8)
      {
        break;
      }

      ++v9;
    }

    while (!v12);
    if ((v12 & v6) == 1)
    {
LABEL_26:
      v14 = logForCSLogCategoryDefault(PlistObjectType);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __82__SpotlightReceiverConnection_indexFromBundle_protectionClass_items_itemsContent___block_invoke_cold_1(a1);
      }

      v15 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v15, "command", "j");
      xpc_dictionary_set_uint64(v15, "jt", 1uLL);
      xpc_dictionary_set_string(v15, "b", [*(a1 + 56) UTF8String]);
      if ([*(a1 + 64) length])
      {
        xpc_dictionary_set_string(v15, "pc", [*(a1 + 64) UTF8String]);
      }

      [*(a1 + 40) dictionary:v15 setDecoderData:*(a1 + 48) forKey:"i" sizeKey:"i-size"];
      [*(a1 + 40) dictionary:v15 setDecoderData:*(a1 + 72) forKey:"c" sizeKey:"c-size"];
      [*(a1 + 40) receiverRequestStart];
      v16 = *(a1 + 40);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __82__SpotlightReceiverConnection_indexFromBundle_protectionClass_items_itemsContent___block_invoke_319;
      v17[3] = &unk_2789341D0;
      v17[4] = v16;
      [v16 sendMessageAsync:v15 completion:v17];
    }
  }
}

- (void)indexWithFd:(int)fd offset:(unint64_t)offset size:(unint64_t)size indexType:(unint64_t)type bundleID:(id)d protectionClass:(id)class serialNumber:(unint64_t)number journalCookie:(id)self0 config:(id)self1 additionalAttributes:(id)self2 completionHandler:(id)self3
{
  dCopy = d;
  classCopy = class;
  cookieCopy = cookie;
  configCopy = config;
  attributesCopy = attributes;
  handlerCopy = handler;
  if ((self->_supportedJobs & 0x8000) != 0 && ![(SpotlightReceiverConnection *)self unresponsive])
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __163__SpotlightReceiverConnection_indexWithFd_offset_size_indexType_bundleID_protectionClass_serialNumber_journalCookie_config_additionalAttributes_completionHandler___block_invoke;
    v25[3] = &unk_278934248;
    v25[4] = self;
    v26 = configCopy;
    fdCopy = fd;
    v27 = cookieCopy;
    v28 = attributesCopy;
    v29 = dCopy;
    v30 = classCopy;
    sizeCopy = size;
    offsetCopy = offset;
    typeCopy = type;
    numberCopy = number;
    v31 = handlerCopy;
    [(SpotlightReceiverConnection *)self runOnSenderQueue:v25];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __163__SpotlightReceiverConnection_indexWithFd_offset_size_indexType_bundleID_protectionClass_serialNumber_journalCookie_config_additionalAttributes_completionHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) serviceName];
    v4 = [*(a1 + 40) name];
    v5 = [*(a1 + 40) priority];
    *buf = 138412802;
    v17 = v3;
    v18 = 2112;
    v19 = v4;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_INFO, "SpotlightScheduledSender: indexWithSerialNumber, client: %@, configName: %@, priority: %@", buf, 0x20u);
  }

  v6 = xpc_fd_create(*(a1 + 120));
  if (v6)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v7, "command", "j");
    xpc_dictionary_set_uint64(v7, "jt", 0x8000uLL);
    xpc_dictionary_set_string(v7, "j-cook", [*(a1 + 48) UTF8String]);
    v8 = [*(a1 + 40) identifier];
    xpc_dictionary_set_string(v7, "cnm", [v8 UTF8String]);

    v9 = MEMORY[0x277CC3510];
    v15 = *(a1 + 56);
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
    [v9 dictionary:v7 setStringOrDictionaryArray:v10 forKey:"aatrs"];

    if ([*(a1 + 64) length])
    {
      xpc_dictionary_set_string(v7, "b", [*(a1 + 64) UTF8String]);
    }

    if ([*(a1 + 72) length])
    {
      xpc_dictionary_set_string(v7, "pc", [*(a1 + 72) UTF8String]);
    }

    xpc_dictionary_set_value(v7, "fd", v6);
    xpc_dictionary_set_uint64(v7, "f-size", *(a1 + 88));
    xpc_dictionary_set_uint64(v7, "f-off", *(a1 + 96));
    xpc_dictionary_set_uint64(v7, "itype", *(a1 + 104));
    xpc_dictionary_set_uint64(v7, "s-num", *(a1 + 112));
    [*(a1 + 32) receiverRequestStart];
    v11 = *(a1 + 32);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __163__SpotlightReceiverConnection_indexWithFd_offset_size_indexType_bundleID_protectionClass_serialNumber_journalCookie_config_additionalAttributes_completionHandler___block_invoke_328;
    v13[3] = &unk_278934220;
    v13[4] = v11;
    v14 = *(a1 + 80);
    [v11 sendMessageAsync:v7 completion:v13];
  }

  else
  {
    v12 = logForCSLogCategoryDefault(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __163__SpotlightReceiverConnection_indexWithFd_offset_size_indexType_bundleID_protectionClass_serialNumber_journalCookie_config_additionalAttributes_completionHandler___block_invoke_cold_1((a1 + 120), v12);
    }

    (*(*(a1 + 80) + 16))();
  }
}

uint64_t __163__SpotlightReceiverConnection_indexWithFd_offset_size_indexType_bundleID_protectionClass_serialNumber_journalCookie_config_additionalAttributes_completionHandler___block_invoke_328(uint64_t a1, xpc_object_t xdict)
{
  v12 = *MEMORY[0x277D85DE8];
  int64 = xpc_dictionary_get_int64(xdict, "status");
  v4 = int64;
  if (int64 >= 1)
  {
    v5 = int64 << 32;
    v6 = logForCSLogCategoryDefault(int64);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v4;
      _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "SpotlightScheduledSender: spotlightReceiver status: %lld", &v10, 0xCu);
    }

    if (v5 == 0x200000000)
    {
      v8 = logForCSLogCategoryDefault(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "SpotlightScheduledSender: spotlightReceiver disabling messages for adds", &v10, 2u);
      }

      *(*(a1 + 32) + 80) &= ~0x8000u;
    }
  }

  [*(a1 + 32) receiverRequestComplete];
  return (*(*(a1 + 40) + 16))();
}

- (void)deleteWithFd:(int)fd offset:(unint64_t)offset size:(unint64_t)size indexType:(unint64_t)type protectionClass:(id)class serialNumber:(unint64_t)number journalCookie:(id)cookie completionHandler:(id)self0
{
  classCopy = class;
  cookieCopy = cookie;
  handlerCopy = handler;
  if ((self->_supportedJobs & 0x10000) != 0 && ![(SpotlightReceiverConnection *)self unresponsive])
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __127__SpotlightReceiverConnection_deleteWithFd_offset_size_indexType_protectionClass_serialNumber_journalCookie_completionHandler___block_invoke;
    v19[3] = &unk_278934270;
    v19[4] = self;
    fdCopy = fd;
    v20 = cookieCopy;
    v21 = classCopy;
    sizeCopy = size;
    offsetCopy = offset;
    typeCopy = type;
    numberCopy = number;
    v22 = handlerCopy;
    [(SpotlightReceiverConnection *)self runOnSenderQueue:v19];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __127__SpotlightReceiverConnection_deleteWithFd_offset_size_indexType_protectionClass_serialNumber_journalCookie_completionHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) serviceName];
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_INFO, "SpotlightScheduledSender: deleteWithFd, client: %@", buf, 0xCu);
  }

  v4 = xpc_fd_create(*(a1 + 96));
  if (v4)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v5, "command", "j");
    xpc_dictionary_set_uint64(v5, "jt", 0x10000uLL);
    xpc_dictionary_set_string(v5, "j-cook", [*(a1 + 40) UTF8String]);
    if ([*(a1 + 48) length])
    {
      xpc_dictionary_set_string(v5, "pc", [*(a1 + 48) UTF8String]);
    }

    xpc_dictionary_set_value(v5, "fd", v4);
    xpc_dictionary_set_uint64(v5, "f-size", *(a1 + 64));
    xpc_dictionary_set_uint64(v5, "f-off", *(a1 + 72));
    xpc_dictionary_set_uint64(v5, "itype", *(a1 + 80));
    xpc_dictionary_set_uint64(v5, "s-num", *(a1 + 88));
    [*(a1 + 32) receiverRequestStart];
    v6 = *(a1 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __127__SpotlightReceiverConnection_deleteWithFd_offset_size_indexType_protectionClass_serialNumber_journalCookie_completionHandler___block_invoke_329;
    v8[3] = &unk_278934220;
    v8[4] = v6;
    v9 = *(a1 + 56);
    [v6 sendMessageAsync:v5 completion:v8];
  }

  else
  {
    v7 = logForCSLogCategoryDefault(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __163__SpotlightReceiverConnection_indexWithFd_offset_size_indexType_bundleID_protectionClass_serialNumber_journalCookie_config_additionalAttributes_completionHandler___block_invoke_cold_1((a1 + 96), v7);
    }

    (*(*(a1 + 56) + 16))();
  }
}

uint64_t __127__SpotlightReceiverConnection_deleteWithFd_offset_size_indexType_protectionClass_serialNumber_journalCookie_completionHandler___block_invoke_329(uint64_t a1, xpc_object_t xdict)
{
  v12 = *MEMORY[0x277D85DE8];
  int64 = xpc_dictionary_get_int64(xdict, "status");
  v4 = int64;
  if (int64 >= 1)
  {
    v5 = int64 << 32;
    v6 = logForCSLogCategoryDefault(int64);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v4;
      _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "SpotlightScheduledSender: spotlightReceiver status: %lld", &v10, 0xCu);
    }

    if (v5 == 0x200000000)
    {
      v8 = logForCSLogCategoryDefault(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "SpotlightScheduledSender: spotlightReceiver disabling messages for deletes", &v10, 2u);
      }

      *(*(a1 + 32) + 80) &= ~0x10000u;
    }
  }

  [*(a1 + 32) receiverRequestComplete];
  return (*(*(a1 + 40) + 16))();
}

- (void)suspend
{
  if ((self->_supportedJobs & 0x20000) != 0 && ![(SpotlightReceiverConnection *)self unresponsive])
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __38__SpotlightReceiverConnection_suspend__block_invoke;
    v3[3] = &unk_278934050;
    v3[4] = self;
    [(SpotlightReceiverConnection *)self runOnSenderQueue:v3];
  }
}

void __38__SpotlightReceiverConnection_suspend__block_invoke(uint64_t a1)
{
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __38__SpotlightReceiverConnection_suspend__block_invoke_cold_1(a1);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "command", "j");
  xpc_dictionary_set_uint64(v3, "jt", 0x20000uLL);
  [*(a1 + 32) receiverRequestStart];
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__SpotlightReceiverConnection_suspend__block_invoke_330;
  v5[3] = &unk_2789341D0;
  v5[4] = v4;
  [v4 sendMessageAsync:v3 completion:v5];
}

uint64_t __38__SpotlightReceiverConnection_suspend__block_invoke_330(uint64_t a1, xpc_object_t xdict)
{
  v12 = *MEMORY[0x277D85DE8];
  int64 = xpc_dictionary_get_int64(xdict, "status");
  v4 = int64;
  if (int64 >= 1)
  {
    v5 = int64 << 32;
    v6 = logForCSLogCategoryDefault(int64);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v4;
      _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "SpotlightScheduledSender: spotlightReceiver status: %lld", &v10, 0xCu);
    }

    if (v5 == 0x200000000)
    {
      v8 = logForCSLogCategoryDefault(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "SpotlightScheduledSender: spotlightReceiver disabling messages for suspend", &v10, 2u);
      }

      *(*(a1 + 32) + 80) &= ~0x20000u;
    }
  }

  return [*(a1 + 32) receiverRequestComplete];
}

- (void)resume
{
  if ((self->_supportedJobs & 0x40000) != 0 && ![(SpotlightReceiverConnection *)self unresponsive])
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __37__SpotlightReceiverConnection_resume__block_invoke;
    v3[3] = &unk_278934050;
    v3[4] = self;
    [(SpotlightReceiverConnection *)self runOnSenderQueue:v3];
  }
}

void __37__SpotlightReceiverConnection_resume__block_invoke(uint64_t a1)
{
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __38__SpotlightReceiverConnection_suspend__block_invoke_cold_1(a1);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "command", "j");
  xpc_dictionary_set_uint64(v3, "jt", 0x40000uLL);
  [*(a1 + 32) receiverRequestStart];
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__SpotlightReceiverConnection_resume__block_invoke_331;
  v5[3] = &unk_2789341D0;
  v5[4] = v4;
  [v4 sendMessageAsync:v3 completion:v5];
}

uint64_t __37__SpotlightReceiverConnection_resume__block_invoke_331(uint64_t a1, xpc_object_t xdict)
{
  v12 = *MEMORY[0x277D85DE8];
  int64 = xpc_dictionary_get_int64(xdict, "status");
  v4 = int64;
  if (int64 >= 1)
  {
    v5 = int64 << 32;
    v6 = logForCSLogCategoryDefault(int64);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v4;
      _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "SpotlightScheduledSender: spotlightReceiver status: %lld", &v10, 0xCu);
    }

    if (v5 == 0x200000000)
    {
      v8 = logForCSLogCategoryDefault(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "SpotlightScheduledSender: spotlightReceiver disabling messages for resume", &v10, 2u);
      }

      *(*(a1 + 32) + 80) &= ~0x40000u;
    }
  }

  return [*(a1 + 32) receiverRequestComplete];
}

- (void)reset
{
  if ((self->_supportedJobs & 0x80000) != 0 && ![(SpotlightReceiverConnection *)self unresponsive])
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __36__SpotlightReceiverConnection_reset__block_invoke;
    v3[3] = &unk_278934050;
    v3[4] = self;
    [(SpotlightReceiverConnection *)self runOnSenderQueue:v3];
  }
}

void __36__SpotlightReceiverConnection_reset__block_invoke(uint64_t a1)
{
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __38__SpotlightReceiverConnection_suspend__block_invoke_cold_1(a1);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "command", "j");
  xpc_dictionary_set_uint64(v3, "jt", 0x80000uLL);
  [*(a1 + 32) receiverRequestStart];
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__SpotlightReceiverConnection_reset__block_invoke_332;
  v5[3] = &unk_2789341D0;
  v5[4] = v4;
  [v4 sendMessageAsync:v3 completion:v5];
}

uint64_t __36__SpotlightReceiverConnection_reset__block_invoke_332(uint64_t a1, xpc_object_t xdict)
{
  v12 = *MEMORY[0x277D85DE8];
  int64 = xpc_dictionary_get_int64(xdict, "status");
  v4 = int64;
  if (int64 >= 1)
  {
    v5 = int64 << 32;
    v6 = logForCSLogCategoryDefault(int64);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134217984;
      v11 = v4;
      _os_log_impl(&dword_231A35000, v6, OS_LOG_TYPE_DEFAULT, "SpotlightScheduledSender: spotlightReceiver status: %lld", &v10, 0xCu);
    }

    if (v5 == 0x200000000)
    {
      v8 = logForCSLogCategoryDefault(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_231A35000, v8, OS_LOG_TYPE_DEFAULT, "SpotlightScheduledSender: spotlightReceiver disabling messages for reset", &v10, 2u);
      }

      *(*(a1 + 32) + 80) &= ~0x80000u;
    }
  }

  return [*(a1 + 32) receiverRequestComplete];
}

- (void)deleteFromBundle:(id)bundle encodedIdentifiers:(id)identifiers
{
  bundleCopy = bundle;
  identifiersCopy = identifiers;
  if (identifiersCopy && (self->_supportedJobs & 2) != 0 && ![(SpotlightReceiverConnection *)self unresponsive])
  {
    primaryConfig = [(SpotlightReceiverConnection *)self primaryConfig];
    v9 = primaryConfig;
    if (primaryConfig && [primaryConfig wantsBundleID:bundleCopy])
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __67__SpotlightReceiverConnection_deleteFromBundle_encodedIdentifiers___block_invoke;
      v10[3] = &unk_278934130;
      v11 = bundleCopy;
      selfCopy = self;
      v13 = identifiersCopy;
      [(SpotlightReceiverConnection *)self runOnSenderQueue:v10];
    }
  }
}

void __67__SpotlightReceiverConnection_deleteFromBundle_encodedIdentifiers___block_invoke(uint64_t a1)
{
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __67__SpotlightReceiverConnection_deleteFromBundle_encodedIdentifiers___block_invoke_cold_1(a1);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "command", "j");
  xpc_dictionary_set_uint64(v3, "jt", 2uLL);
  xpc_dictionary_set_string(v3, "b", [*(a1 + 32) UTF8String]);
  [*(a1 + 40) dictionary:v3 setDecoderData:*(a1 + 48) forKey:"ids" sizeKey:"ids-size"];
  [*(a1 + 40) receiverRequestStart];
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__SpotlightReceiverConnection_deleteFromBundle_encodedIdentifiers___block_invoke_335;
  v5[3] = &unk_2789341D0;
  v5[4] = v4;
  [v4 sendMessageAsync:v3 completion:v5];
}

- (void)deleteFromBundle:(id)bundle contentType:(id)type identifiers:(id)identifiers
{
  bundleCopy = bundle;
  typeCopy = type;
  identifiersCopy = identifiers;
  if ([identifiersCopy count] && (self->_supportedJobs & 2) != 0 && !-[SpotlightReceiverConnection unresponsive](self, "unresponsive"))
  {
    primaryConfig = [(SpotlightReceiverConnection *)self primaryConfig];
    v12 = primaryConfig;
    if (primaryConfig && [primaryConfig wantsBundleID:bundleCopy] && objc_msgSend(v12, "wantsContentType:", typeCopy))
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __72__SpotlightReceiverConnection_deleteFromBundle_contentType_identifiers___block_invoke;
      v13[3] = &unk_278934298;
      v14 = identifiersCopy;
      v15 = bundleCopy;
      v16 = typeCopy;
      selfCopy = self;
      [(SpotlightReceiverConnection *)self runOnSenderQueue:v13];
    }
  }
}

void __72__SpotlightReceiverConnection_deleteFromBundle_contentType_identifiers___block_invoke(uint64_t a1)
{
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __72__SpotlightReceiverConnection_deleteFromBundle_contentType_identifiers___block_invoke_cold_1();
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "command", "j");
  xpc_dictionary_set_uint64(v3, "jt", 2uLL);
  xpc_dictionary_set_string(v3, "b", [*(a1 + 40) UTF8String]);
  v4 = objc_alloc_init(MEMORY[0x277CC33A0]);
  [v4 encodeObject:*(a1 + 32)];
  [MEMORY[0x277CC3510] dictionary:v3 setPlistContainer:objc_msgSend(v4 forKey:"plistContainer") sizeKey:{"ids", "ids-size"}];
  [*(a1 + 56) receiverRequestStart];
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__SpotlightReceiverConnection_deleteFromBundle_contentType_identifiers___block_invoke_337;
  v6[3] = &unk_2789341D0;
  v6[4] = v5;
  [v5 sendMessageAsync:v3 completion:v6];
}

- (void)deleteFromBundle:(id)bundle domainIdentifiers:(id)identifiers
{
  bundleCopy = bundle;
  identifiersCopy = identifiers;
  if ([identifiersCopy count] && (self->_supportedJobs & 4) != 0 && !-[SpotlightReceiverConnection unresponsive](self, "unresponsive"))
  {
    primaryConfig = [(SpotlightReceiverConnection *)self primaryConfig];
    v9 = primaryConfig;
    if (primaryConfig && [primaryConfig wantsBundleID:bundleCopy])
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __66__SpotlightReceiverConnection_deleteFromBundle_domainIdentifiers___block_invoke;
      v10[3] = &unk_278934130;
      v11 = identifiersCopy;
      v12 = bundleCopy;
      selfCopy = self;
      [(SpotlightReceiverConnection *)self runOnSenderQueue:v10];
    }
  }
}

void __66__SpotlightReceiverConnection_deleteFromBundle_domainIdentifiers___block_invoke(uint64_t a1)
{
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __66__SpotlightReceiverConnection_deleteFromBundle_domainIdentifiers___block_invoke_cold_1();
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "command", "j");
  xpc_dictionary_set_uint64(v3, "jt", 4uLL);
  xpc_dictionary_set_string(v3, "b", [*(a1 + 40) UTF8String]);
  v4 = objc_alloc_init(MEMORY[0x277CC33A0]);
  [v4 encodeObject:*(a1 + 32)];
  [MEMORY[0x277CC3510] dictionary:v3 setPlistContainer:objc_msgSend(v4 forKey:"plistContainer") sizeKey:{"ids", "ids-size"}];
  [*(a1 + 48) receiverRequestStart];
  v5 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__SpotlightReceiverConnection_deleteFromBundle_domainIdentifiers___block_invoke_338;
  v6[3] = &unk_2789341D0;
  v6[4] = v5;
  [v5 sendMessageAsync:v3 completion:v6];
}

- (void)purgeFromBundle:(id)bundle identifiers:(id)identifiers
{
  bundleCopy = bundle;
  identifiersCopy = identifiers;
  if ([identifiersCopy count] && (self->_supportedJobs & 0x20) != 0 && !-[SpotlightReceiverConnection unresponsive](self, "unresponsive"))
  {
    primaryConfig = [(SpotlightReceiverConnection *)self primaryConfig];
    v9 = primaryConfig;
    if (primaryConfig && [primaryConfig wantsBundleID:bundleCopy])
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __59__SpotlightReceiverConnection_purgeFromBundle_identifiers___block_invoke;
      v10[3] = &unk_278934130;
      v11 = identifiersCopy;
      v12 = bundleCopy;
      selfCopy = self;
      [(SpotlightReceiverConnection *)self runOnSenderQueue:v10];
    }
  }
}

void __59__SpotlightReceiverConnection_purgeFromBundle_identifiers___block_invoke(uint64_t a1)
{
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __59__SpotlightReceiverConnection_purgeFromBundle_identifiers___block_invoke_cold_1();
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "command", "j");
  xpc_dictionary_set_uint64(v3, "jt", 0x20uLL);
  xpc_dictionary_set_string(v3, "b", [*(a1 + 40) UTF8String]);
  v4 = objc_alloc_init(MEMORY[0x277CC33A0]);
  [v4 encodeObject:*(a1 + 32)];
  [MEMORY[0x277CC3510] dictionary:v3 setPlistContainer:objc_msgSend(v4 forKey:"plistContainer") sizeKey:{"ids", "ids-size"}];
  [*(a1 + 48) receiverRequestStart];
  v5 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__SpotlightReceiverConnection_purgeFromBundle_identifiers___block_invoke_339;
  v6[3] = &unk_2789341D0;
  v6[4] = v5;
  [v5 sendMessageAsync:v3 completion:v6];
}

- (void)addUserActions:(id)actions bundleID:(id)d protectionClass:(id)class
{
  actionsCopy = actions;
  dCopy = d;
  classCopy = class;
  if ((self->_supportedJobs & 0x40) != 0 && [actionsCopy count] && !-[SpotlightReceiverConnection unresponsive](self, "unresponsive"))
  {
    primaryConfig = [(SpotlightReceiverConnection *)self primaryConfig];
    v12 = primaryConfig;
    if (primaryConfig && [primaryConfig wantsBundleID:dCopy])
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __71__SpotlightReceiverConnection_addUserActions_bundleID_protectionClass___block_invoke;
      v13[3] = &unk_278934298;
      v14 = actionsCopy;
      v15 = dCopy;
      v16 = classCopy;
      selfCopy = self;
      [(SpotlightReceiverConnection *)self runOnSenderQueue:v13];
    }
  }
}

void __71__SpotlightReceiverConnection_addUserActions_bundleID_protectionClass___block_invoke(id *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __71__SpotlightReceiverConnection_addUserActions_bundleID_protectionClass___block_invoke_cold_1();
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "command", "j");
  xpc_dictionary_set_uint64(v3, "jt", 0x40uLL);
  xpc_dictionary_set_string(v3, "b", [a1[5] UTF8String]);
  if ([a1[6] length])
  {
    xpc_dictionary_set_string(v3, "pc", [a1[6] UTF8String]);
  }

  v4 = objc_alloc_init(MEMORY[0x277CC33A0]);
  [v4 beginArray];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = a1[4];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        [v4 beginArray];
        v11 = [v10 action];
        [v4 encodeObject:v11];

        v12 = [v10 item];
        v13 = [v12 attributeSet];
        [v4 encodeObject:v13];

        [v4 endArray];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  [v4 endArray];
  [MEMORY[0x277CC3510] dictionary:v3 setPlistContainer:objc_msgSend(v4 forKey:"plistContainer") sizeKey:{"a", "a-size"}];
  [a1[7] receiverRequestStart];
  v14 = a1[7];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__SpotlightReceiverConnection_addUserActions_bundleID_protectionClass___block_invoke_342;
  v15[3] = &unk_2789341D0;
  v15[4] = v14;
  [v14 sendMessageAsync:v3 completion:v15];
}

- (void)deleteAllUserActivities:(id)activities
{
  activitiesCopy = activities;
  if (activitiesCopy && (self->_supportedJobs & 0x1000) != 0 && ![(SpotlightReceiverConnection *)self unresponsive])
  {
    primaryConfig = [(SpotlightReceiverConnection *)self primaryConfig];
    v6 = primaryConfig;
    if (primaryConfig && [primaryConfig wantsBundleID:activitiesCopy])
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __55__SpotlightReceiverConnection_deleteAllUserActivities___block_invoke;
      v7[3] = &unk_2789342C0;
      v8 = activitiesCopy;
      selfCopy = self;
      [(SpotlightReceiverConnection *)self runOnSenderQueue:v7];
    }
  }
}

void __55__SpotlightReceiverConnection_deleteAllUserActivities___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) serviceName];
    *buf = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_INFO, "SpotlightSender: deleteAllUserActivities bundleID: %@, client: %@", buf, 0x16u);
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "command", "j");
  xpc_dictionary_set_uint64(v5, "jt", 0x1000uLL);
  xpc_dictionary_set_string(v5, "b", [*(a1 + 32) UTF8String]);
  [*(a1 + 40) receiverRequestStart];
  v6 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SpotlightReceiverConnection_deleteAllUserActivities___block_invoke_343;
  v7[3] = &unk_2789341D0;
  v7[4] = v6;
  [v6 sendMessageAsync:v5 completion:v7];
}

- (void)deleteUserActivitiesWithPersistentIdentifiers:(id)identifiers bundleID:(id)d retainedData:(id)data
{
  identifiersCopy = identifiers;
  dCopy = d;
  dataCopy = data;
  if (identifiersCopy && dCopy && (self->_supportedJobs & 0x2000) != 0 && ![(SpotlightReceiverConnection *)self unresponsive])
  {
    primaryConfig = [(SpotlightReceiverConnection *)self primaryConfig];
    v12 = primaryConfig;
    if (primaryConfig && [primaryConfig wantsBundleID:dCopy])
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __99__SpotlightReceiverConnection_deleteUserActivitiesWithPersistentIdentifiers_bundleID_retainedData___block_invoke;
      v13[3] = &unk_278934298;
      v14 = dCopy;
      selfCopy = self;
      v16 = identifiersCopy;
      v17 = dataCopy;
      [(SpotlightReceiverConnection *)self runOnSenderQueue:v13];
    }
  }
}

void __99__SpotlightReceiverConnection_deleteUserActivitiesWithPersistentIdentifiers_bundleID_retainedData___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) serviceName];
    *buf = 138412546;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_INFO, "SpotlightSender: deleteUserActivities bundleID: %@, client: %@", buf, 0x16u);
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v5, "command", "j");
  xpc_dictionary_set_uint64(v5, "jt", 0x2000uLL);
  xpc_dictionary_set_string(v5, "b", [*(a1 + 32) UTF8String]);
  [*(a1 + 40) dictionary:v5 setDecoderData:*(a1 + 48) forKey:"ids" sizeKey:"ids-size"];
  [*(a1 + 40) receiverRequestStart];
  v6 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __99__SpotlightReceiverConnection_deleteUserActivitiesWithPersistentIdentifiers_bundleID_retainedData___block_invoke_344;
  v7[3] = &unk_2789342E8;
  v7[4] = v6;
  v8 = *(a1 + 56);
  [v6 sendMessageAsync:v5 completion:v7];
}

- (void)deleteFromBundle:(id)bundle sinceDate:(id)date
{
  bundleCopy = bundle;
  dateCopy = date;
  if (dateCopy && (self->_supportedJobs & 0x10) != 0 && ![(SpotlightReceiverConnection *)self unresponsive])
  {
    primaryConfig = [(SpotlightReceiverConnection *)self primaryConfig];
    v9 = primaryConfig;
    if (primaryConfig && [primaryConfig wantsBundleID:bundleCopy])
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __58__SpotlightReceiverConnection_deleteFromBundle_sinceDate___block_invoke;
      v10[3] = &unk_278934130;
      v11 = dateCopy;
      v12 = bundleCopy;
      selfCopy = self;
      [(SpotlightReceiverConnection *)self runOnSenderQueue:v10];
    }
  }
}

void __58__SpotlightReceiverConnection_deleteFromBundle_sinceDate___block_invoke(id *a1)
{
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __58__SpotlightReceiverConnection_deleteFromBundle_sinceDate___block_invoke_cold_1(a1);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "command", "j");
  xpc_dictionary_set_uint64(v3, "jt", 0x10uLL);
  xpc_dictionary_set_string(v3, "b", [a1[5] UTF8String]);
  [a1[4] timeIntervalSince1970];
  xpc_dictionary_set_date(v3, "d", v4);
  [a1[6] receiverRequestStart];
  v5 = a1[6];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__SpotlightReceiverConnection_deleteFromBundle_sinceDate___block_invoke_346;
  v6[3] = &unk_2789341D0;
  v6[4] = v5;
  [v5 sendMessageAsync:v3 completion:v6];
}

- (void)deleteFromBundle:(id)bundle
{
  bundleCopy = bundle;
  if ((self->_supportedJobs & 8) != 0 && ![(SpotlightReceiverConnection *)self unresponsive])
  {
    primaryConfig = [(SpotlightReceiverConnection *)self primaryConfig];
    v6 = primaryConfig;
    if (primaryConfig && [primaryConfig wantsBundleID:bundleCopy])
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __48__SpotlightReceiverConnection_deleteFromBundle___block_invoke;
      v7[3] = &unk_2789342C0;
      v8 = bundleCopy;
      selfCopy = self;
      [(SpotlightReceiverConnection *)self runOnSenderQueue:v7];
    }
  }
}

void __48__SpotlightReceiverConnection_deleteFromBundle___block_invoke(uint64_t a1)
{
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __48__SpotlightReceiverConnection_deleteFromBundle___block_invoke_cold_1(a1);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "command", "j");
  xpc_dictionary_set_uint64(v3, "jt", 8uLL);
  xpc_dictionary_set_string(v3, "b", [*(a1 + 32) UTF8String]);
  [*(a1 + 40) receiverRequestStart];
  v4 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__SpotlightReceiverConnection_deleteFromBundle___block_invoke_347;
  v5[3] = &unk_2789341D0;
  v5[4] = v4;
  [v4 sendMessageAsync:v3 completion:v5];
}

- (void)addInteraction:(id)interaction intentClassName:(id)name bundleID:(id)d protectionClass:(id)class
{
  interactionCopy = interaction;
  nameCopy = name;
  dCopy = d;
  classCopy = class;
  if (nameCopy && (self->_supportedJobs & 0x80) != 0 && ![(SpotlightReceiverConnection *)self unresponsive])
  {
    primaryConfig = [(SpotlightReceiverConnection *)self primaryConfig];
    v15 = primaryConfig;
    if (primaryConfig && [primaryConfig wantsBundleID:dCopy] && objc_msgSend(v15, "wantsINIntentClassNames:", nameCopy))
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __87__SpotlightReceiverConnection_addInteraction_intentClassName_bundleID_protectionClass___block_invoke;
      v16[3] = &unk_278934310;
      v17 = interactionCopy;
      v18 = nameCopy;
      v19 = dCopy;
      v20 = classCopy;
      selfCopy = self;
      [(SpotlightReceiverConnection *)self runOnSenderQueue:v16];
    }
  }
}

void __87__SpotlightReceiverConnection_addInteraction_intentClassName_bundleID_protectionClass___block_invoke(id *a1)
{
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __87__SpotlightReceiverConnection_addInteraction_intentClassName_bundleID_protectionClass___block_invoke_cold_1(a1);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "command", "j");
  xpc_dictionary_set_uint64(v3, "jt", 0x80uLL);
  xpc_dictionary_set_string(v3, "b", [a1[6] UTF8String]);
  if ([a1[7] length])
  {
    xpc_dictionary_set_string(v3, "pc", [a1[7] UTF8String]);
  }

  xpc_dictionary_set_string(v3, "icl", [a1[5] UTF8String]);
  xpc_dictionary_set_data(v3, "ins", [a1[4] bytes], objc_msgSend(a1[4], "length"));
  [a1[8] receiverRequestStart];
  v4 = a1[8];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __87__SpotlightReceiverConnection_addInteraction_intentClassName_bundleID_protectionClass___block_invoke_350;
  v5[3] = &unk_2789341D0;
  v5[4] = v4;
  [v4 sendMessageAsync:v3 completion:v5];
}

- (void)deleteInteractionsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class
{
  identifiersCopy = identifiers;
  dCopy = d;
  classCopy = class;
  if ((self->_supportedJobs & 0x100) != 0 && ![(SpotlightReceiverConnection *)self unresponsive])
  {
    primaryConfig = [(SpotlightReceiverConnection *)self primaryConfig];
    v12 = primaryConfig;
    if (primaryConfig && [primaryConfig wantsBundleID:dCopy])
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __90__SpotlightReceiverConnection_deleteInteractionsWithIdentifiers_bundleID_protectionClass___block_invoke;
      v13[3] = &unk_278934298;
      v14 = dCopy;
      v15 = classCopy;
      selfCopy = self;
      v17 = identifiersCopy;
      [(SpotlightReceiverConnection *)self runOnSenderQueue:v13];
    }
  }
}

void __90__SpotlightReceiverConnection_deleteInteractionsWithIdentifiers_bundleID_protectionClass___block_invoke(id *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = [a1[6] serviceName];
    v6 = [a1[7] count];
    *buf = 138413058;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v5;
    v18 = 2048;
    v19 = v6;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "SpotlightSender: deleteInteractionsWithIdentifiers, bundleID: %@, protectionClass: %@, client: %@, identifiers number: %lu", buf, 0x2Au);
  }

  v8 = logForCSLogCategoryDefault(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __90__SpotlightReceiverConnection_deleteInteractionsWithIdentifiers_bundleID_protectionClass___block_invoke_cold_1(a1, v8);
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v9, "command", "j");
  xpc_dictionary_set_uint64(v9, "jt", 0x100uLL);
  xpc_dictionary_set_string(v9, "b", [a1[4] UTF8String]);
  if ([a1[5] length])
  {
    xpc_dictionary_set_string(v9, "pc", [a1[5] UTF8String]);
  }

  [MEMORY[0x277CC3510] dictionary:v9 setStringArray:a1[7] forKey:"ids"];
  [a1[6] receiverRequestStart];
  v10 = a1[6];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __90__SpotlightReceiverConnection_deleteInteractionsWithIdentifiers_bundleID_protectionClass___block_invoke_351;
  v11[3] = &unk_2789341D0;
  v11[4] = v10;
  [v10 sendMessageAsync:v9 completion:v11];
}

- (void)deleteInteractionsWithGroupIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class
{
  identifiersCopy = identifiers;
  dCopy = d;
  classCopy = class;
  if ((self->_supportedJobs & 0x200) != 0 && ![(SpotlightReceiverConnection *)self unresponsive])
  {
    primaryConfig = [(SpotlightReceiverConnection *)self primaryConfig];
    v12 = primaryConfig;
    if (primaryConfig && [primaryConfig wantsBundleID:dCopy])
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __95__SpotlightReceiverConnection_deleteInteractionsWithGroupIdentifiers_bundleID_protectionClass___block_invoke;
      v13[3] = &unk_278934298;
      v14 = dCopy;
      v15 = classCopy;
      selfCopy = self;
      v17 = identifiersCopy;
      [(SpotlightReceiverConnection *)self runOnSenderQueue:v13];
    }
  }
}

void __95__SpotlightReceiverConnection_deleteInteractionsWithGroupIdentifiers_bundleID_protectionClass___block_invoke(id *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = [a1[6] serviceName];
    v6 = [a1[7] count];
    *buf = 138413058;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v5;
    v18 = 2048;
    v19 = v6;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "SpotlightSender: deleteInteractionsWithGroupIdentifiers, bundleID: %@, protectionClass: %@, client: %@, identifiers number: %lu", buf, 0x2Au);
  }

  v8 = logForCSLogCategoryDefault(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __90__SpotlightReceiverConnection_deleteInteractionsWithIdentifiers_bundleID_protectionClass___block_invoke_cold_1(a1, v8);
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v9, "command", "j");
  xpc_dictionary_set_uint64(v9, "jt", 0x200uLL);
  xpc_dictionary_set_string(v9, "b", [a1[4] UTF8String]);
  if ([a1[5] length])
  {
    xpc_dictionary_set_string(v9, "pc", [a1[5] UTF8String]);
  }

  [MEMORY[0x277CC3510] dictionary:v9 setStringArray:a1[7] forKey:"ids"];
  [a1[6] receiverRequestStart];
  v10 = a1[6];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __95__SpotlightReceiverConnection_deleteInteractionsWithGroupIdentifiers_bundleID_protectionClass___block_invoke_352;
  v11[3] = &unk_2789341D0;
  v11[4] = v10;
  [v10 sendMessageAsync:v9 completion:v11];
}

- (void)deleteAllInteractionsWithBundleID:(id)d protectionClass:(id)class
{
  dCopy = d;
  classCopy = class;
  if ((self->_supportedJobs & 0x400) != 0 && ![(SpotlightReceiverConnection *)self unresponsive])
  {
    primaryConfig = [(SpotlightReceiverConnection *)self primaryConfig];
    v9 = primaryConfig;
    if (primaryConfig && [primaryConfig wantsBundleID:dCopy])
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __81__SpotlightReceiverConnection_deleteAllInteractionsWithBundleID_protectionClass___block_invoke;
      v10[3] = &unk_278934130;
      v11 = dCopy;
      v12 = classCopy;
      selfCopy = self;
      [(SpotlightReceiverConnection *)self runOnSenderQueue:v10];
    }
  }
}

void __81__SpotlightReceiverConnection_deleteAllInteractionsWithBundleID_protectionClass___block_invoke(id *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = [a1[6] serviceName];
    *buf = 138412802;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_231A35000, v2, OS_LOG_TYPE_DEFAULT, "SpotlightSender: deleteAllInteractionsWithBundleID, bundleID: %@, protectionClass: %@, client: %@", buf, 0x20u);
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v6, "command", "j");
  xpc_dictionary_set_uint64(v6, "jt", 0x400uLL);
  xpc_dictionary_set_string(v6, "b", [a1[4] UTF8String]);
  if ([a1[5] length])
  {
    xpc_dictionary_set_string(v6, "pc", [a1[5] UTF8String]);
  }

  [a1[6] receiverRequestStart];
  v7 = a1[6];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__SpotlightReceiverConnection_deleteAllInteractionsWithBundleID_protectionClass___block_invoke_353;
  v8[3] = &unk_2789341D0;
  v8[4] = v7;
  [v7 sendMessageAsync:v6 completion:v8];
}

- (void)donateRelevantActions:(id)actions bundleID:(id)d
{
  actionsCopy = actions;
  dCopy = d;
  supportedJobs = self->_supportedJobs;
  if ((supportedJobs & 0x800) != 0)
  {
    v9 = 2048;
  }

  else
  {
    if ((supportedJobs & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    v9 = 0x4000;
  }

  if (![(SpotlightReceiverConnection *)self unresponsive])
  {
    primaryConfig = [(SpotlightReceiverConnection *)self primaryConfig];
    v11 = primaryConfig;
    if (primaryConfig && [primaryConfig wantsBundleID:dCopy])
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __62__SpotlightReceiverConnection_donateRelevantActions_bundleID___block_invoke;
      v12[3] = &unk_278934338;
      v13 = actionsCopy;
      v14 = dCopy;
      selfCopy = self;
      v16 = v9;
      [(SpotlightReceiverConnection *)self runOnSenderQueue:v12];
    }
  }

LABEL_10:
}

void __62__SpotlightReceiverConnection_donateRelevantActions_bundleID___block_invoke(uint64_t a1)
{
  v2 = logForCSLogCategoryDefault(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __62__SpotlightReceiverConnection_donateRelevantActions_bundleID___block_invoke_cold_1(a1);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "command", "j");
  xpc_dictionary_set_uint64(v3, "jt", *(a1 + 56));
  xpc_dictionary_set_string(v3, "b", [*(a1 + 40) UTF8String]);
  xpc_dictionary_set_value(v3, "ra", *(a1 + 32));
  [*(a1 + 48) receiverRequestStart];
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__SpotlightReceiverConnection_donateRelevantActions_bundleID___block_invoke_355;
  v5[3] = &unk_2789341D0;
  v5[4] = v4;
  [v4 sendMessageAsync:v3 completion:v5];
}

- (void)handleError:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v6 = [a2 serviceName];
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
}

void __41__SpotlightReceiverConnection_startSetup__block_invoke_289_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_231A35000, log, OS_LOG_TYPE_ERROR, "### RECEIVER write to %@ error %@", &v4, 0x16u);
}

void __82__SpotlightReceiverConnection_indexFromBundle_protectionClass_items_itemsContent___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) serviceName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __163__SpotlightReceiverConnection_indexWithFd_offset_size_indexType_bundleID_protectionClass_serialNumber_journalCookie_config_additionalAttributes_completionHandler___block_invoke_cold_1(int *a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_231A35000, a2, OS_LOG_TYPE_ERROR, "SpotlightScheduledSender: spotlightReceiver failed to create FD! fd: %d", v3, 8u);
}

void __38__SpotlightReceiverConnection_suspend__block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) serviceName];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __67__SpotlightReceiverConnection_deleteFromBundle_encodedIdentifiers___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) serviceName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __72__SpotlightReceiverConnection_deleteFromBundle_contentType_identifiers___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7(v1);
  v2 = [*(v0 + 56) serviceName];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x26u);
}

void __66__SpotlightReceiverConnection_deleteFromBundle_domainIdentifiers___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7(v1);
  v2 = [*(v0 + 48) serviceName];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void __59__SpotlightReceiverConnection_purgeFromBundle_identifiers___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7(v1);
  v2 = [*(v0 + 48) serviceName];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x1Cu);
}

void __71__SpotlightReceiverConnection_addUserActions_bundleID_protectionClass___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7(v1);
  v2 = [*(v0 + 56) serviceName];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x26u);
}

void __58__SpotlightReceiverConnection_deleteFromBundle_sinceDate___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 48) serviceName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __48__SpotlightReceiverConnection_deleteFromBundle___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) serviceName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __87__SpotlightReceiverConnection_addInteraction_intentClassName_bundleID_protectionClass___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 64) serviceName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x34u);
}

void __90__SpotlightReceiverConnection_deleteInteractionsWithIdentifiers_bundleID_protectionClass___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_231A35000, a2, OS_LOG_TYPE_DEBUG, "SpotlightSender: identifiers: %@", &v3, 0xCu);
}

void __62__SpotlightReceiverConnection_donateRelevantActions_bundleID___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 48) serviceName];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

@end