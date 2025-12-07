@interface SDCoreSpotlightDiagnosticClient
+ (id)defaultClientWithBundleID:(id)d protectionClass:(id)class;
+ (id)privateClientWithBundleID:(id)d protectionClass:(id)class;
- (SDCoreSpotlightDiagnosticClient)initWithBundleID:(id)d protectionClass:(id)class path:(id)path private:(BOOL)private managed:(BOOL)managed;
- (id)debugDescription;
- (void)getStatus:(BOOL)status protectionClasses:(id)classes queue:(id)queue completionHandler:(id)handler;
- (void)issueDiagnose:(int)diagnose privacyLevel:(unint64_t)level completionHandler:(id)handler;
- (void)setActiveUser;
@end

@implementation SDCoreSpotlightDiagnosticClient

- (SDCoreSpotlightDiagnosticClient)initWithBundleID:(id)d protectionClass:(id)class path:(id)path private:(BOOL)private managed:(BOOL)managed
{
  dCopy = d;
  classCopy = class;
  pathCopy = path;
  v29.receiver = self;
  v29.super_class = SDCoreSpotlightDiagnosticClient;
  v15 = [(SDCoreSpotlightDiagnosticClient *)&v29 init];
  if (v15)
  {
    v16 = [dCopy copy];
    bundleID = v15->_bundleID;
    v15->_bundleID = v16;

    v18 = [classCopy copy];
    protectionClass = v15->_protectionClass;
    v15->_protectionClass = v18;

    v20 = [pathCopy copy];
    path = v15->_path;
    v15->_path = v20;

    v15->_private = private;
    v15->_managed = managed;
    if (v15->_private)
    {
      v22 = objc_alloc(MEMORY[0x29EDB94D0]);
      v23 = v15->_path;
      v24 = v15->_protectionClass;
      v25 = v15->_bundleID;
    }

    else
    {
      v22 = objc_alloc(MEMORY[0x29EDB94E8]);
      v24 = v15->_protectionClass;
      v25 = v15->_bundleID;
      v23 = &stru_2A2550518;
    }

    v26 = [v22 initWithName:v23 protectionClass:v24 bundleIdentifier:v25];
    index = v15->_index;
    v15->_index = v26;
  }

  return v15;
}

+ (id)defaultClientWithBundleID:(id)d protectionClass:(id)class
{
  classCopy = class;
  dCopy = d;
  v7 = [[SDCoreSpotlightDiagnosticClient alloc] initWithBundleID:dCopy protectionClass:classCopy path:0 private:0 managed:0];

  return v7;
}

+ (id)privateClientWithBundleID:(id)d protectionClass:(id)class
{
  classCopy = class;
  dCopy = d;
  v7 = [[SDCoreSpotlightDiagnosticClient alloc] initWithBundleID:dCopy protectionClass:classCopy path:0 private:1 managed:0];

  return v7;
}

- (void)setActiveUser
{
  active = SDGetActiveUID();

  [(SDCoreSpotlightDiagnosticClient *)self setUser:active];
}

- (id)debugDescription
{
  v3 = objc_alloc_init(MEMORY[0x29EDBA050]);
  [v3 appendFormat:@"< SDCoreSpotlightDiagnosticClient - p:%d, m:%d, bID:%@, path:%@, ", self->_private, self->_managed, self->_bundleID, self->_path];
  v4 = [(CSSearchableIndex *)self->_index debugDescription];
  [v3 appendFormat:@"_index = %@ >", v4];

  v5 = [v3 copy];

  return v5;
}

- (void)issueDiagnose:(int)diagnose privacyLevel:(unint64_t)level completionHandler:(id)handler
{
  v6 = *&diagnose;
  handlerCopy = handler;
  index = self->_index;
  if (index)
  {
    [(CSSearchableIndex *)index _issueDiagnose:v6 bundleID:self->_bundleID logQuery:level != 0 completionHandler:handlerCopy];
  }

  else
  {
    v10 = SDLogCategoryClient(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SDCoreSpotlightDiagnosticClient issueDiagnose:v10 privacyLevel:? completionHandler:?];
    }

    v11 = SDError(-5005, 0);
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0, v11);
    }
  }
}

- (void)getStatus:(BOOL)status protectionClasses:(id)classes queue:(id)queue completionHandler:(id)handler
{
  classesCopy = classes;
  queueCopy = queue;
  handlerCopy = handler;
  if (SDIsAppleInternalInstall(handlerCopy, v13))
  {
    v17[0] = MEMORY[0x29EDCA5F8];
    v17[1] = 3221225472;
    v17[2] = __87__SDCoreSpotlightDiagnosticClient_getStatus_protectionClasses_queue_completionHandler___block_invoke;
    v17[3] = &unk_29F385850;
    statusCopy = status;
    v18 = classesCopy;
    selfCopy = self;
    v20 = handlerCopy;
    v14 = MEMORY[0x29EDAC780](v17);
    v15 = v14;
    if (queueCopy)
    {
      dispatch_async(queueCopy, v14);
    }

    else
    {
      v14[2](v14);
    }
  }

  else
  {
    v16 = SDError(-5006, @"CoreSpotlight status command");
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, v16);
    }
  }
}

void __87__SDCoreSpotlightDiagnosticClient_getStatus_protectionClasses_queue_completionHandler___block_invoke(uint64_t a1)
{
  v57[1] = *MEMORY[0x29EDCA608];
  v2 = objc_alloc_init(MEMORY[0x29EDBA050]);
  if (*(a1 + 56))
  {
    v3 = @"{Status:[";
  }

  else
  {
    v3 = @"Status:\n";
  }

  v38 = v2;
  [v2 appendString:v3];
  v4 = [MEMORY[0x29EDB9F48] mainBundle];
  v37 = [v4 bundleIdentifier];

  v5 = objc_opt_new();
  v6 = dispatch_group_create();
  v33 = objc_opt_new();
  [v33 setProtectionClasses:*(a1 + 32)];
  [v33 setAttribute:1];
  v36 = *MEMORY[0x29EDB94B8];
  v57[0] = *MEMORY[0x29EDB94B8];
  v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v57 count:1];
  [v33 setFetchAttributes:v7];

  [v33 setClientBundleID:v37];
  if ([*(a1 + 40) isPrivate])
  {
    v8 = [objc_alloc(MEMORY[0x29EDB94C8]) initWithQueryString:@"*=*" queryContext:v33];
    [v8 setPrivateIndex:1];
    v9 = [*(a1 + 40) bundleID];
    [v8 setPrivateBundleID:v9];
    v32 = v8;
  }

  else
  {
    v32 = [objc_alloc(MEMORY[0x29EDB94D8]) initWithQueryString:@"*=*" queryContext:v33];
  }

  v50[0] = MEMORY[0x29EDCA5F8];
  v50[1] = 3221225472;
  v50[2] = __87__SDCoreSpotlightDiagnosticClient_getStatus_protectionClasses_queue_completionHandler___block_invoke_2;
  v50[3] = &unk_29F3857D8;
  v10 = v5;
  v51 = v10;
  [v32 setFoundAttributesHandler:v50];
  v48[0] = MEMORY[0x29EDCA5F8];
  v48[1] = 3221225472;
  v48[2] = __87__SDCoreSpotlightDiagnosticClient_getStatus_protectionClasses_queue_completionHandler___block_invoke_3;
  v48[3] = &unk_29F3857D8;
  v31 = v10;
  v49 = v31;
  [v32 setChangedAttributesHandler:v48];
  v46[0] = MEMORY[0x29EDCA5F8];
  v46[1] = 3221225472;
  v46[2] = __87__SDCoreSpotlightDiagnosticClient_getStatus_protectionClasses_queue_completionHandler___block_invoke_4;
  v46[3] = &unk_29F385800;
  v11 = v6;
  v47 = v11;
  [v32 setCompletionHandler:v46];
  dispatch_group_enter(v11);
  [v32 start];
  dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  v12 = [v31 allObjects];
  v13 = [v12 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v13;
  v14 = 0;
  v15 = [obj countByEnumeratingWithState:&v42 objects:v56 count:16];
  if (!v15)
  {
    v16 = @"*=*";
    goto LABEL_25;
  }

  v35 = *v43;
  v16 = @"*=*";
  do
  {
    v17 = 0;
    v18 = v16;
    do
    {
      if (*v43 != v35)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v42 + 1) + 8 * v17);
      v20 = objc_opt_new();
      [v20 setCounting:1];
      [v20 setClientBundleID:v37];
      [v20 setProtectionClasses:*(a1 + 32)];
      v16 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@=%@", v36, v19];

      if ([*(a1 + 40) isPrivate])
      {
        v21 = [objc_alloc(MEMORY[0x29EDB94C8]) initWithQueryString:v16 queryContext:v20];
        [v21 setPrivateIndex:1];
        v22 = [*(a1 + 40) bundleID];
        [v21 setPrivateBundleID:v22];
LABEL_16:

        goto LABEL_18;
      }

      if ([*(a1 + 40) isManaged])
      {
        v23 = objc_alloc(MEMORY[0x29EDB94C0]);
        v22 = [*(a1 + 40) indexPath];
        v21 = [v23 initWithPath:v22 queryString:v16 context:v20];
        goto LABEL_16;
      }

      v21 = [objc_alloc(MEMORY[0x29EDB94D8]) initWithQueryString:v16 queryContext:v20];
LABEL_18:
      v52 = 0;
      v53 = &v52;
      v54 = 0x2020000000;
      v55 = 0;
      v41[0] = MEMORY[0x29EDCA5F8];
      v41[1] = 3221225472;
      v41[2] = __87__SDCoreSpotlightDiagnosticClient_getStatus_protectionClasses_queue_completionHandler___block_invoke_5;
      v41[3] = &unk_29F385828;
      v41[4] = &v52;
      [v21 setCountChangedHandler:v41];
      v39[0] = MEMORY[0x29EDCA5F8];
      v39[1] = 3221225472;
      v39[2] = __87__SDCoreSpotlightDiagnosticClient_getStatus_protectionClasses_queue_completionHandler___block_invoke_6;
      v39[3] = &unk_29F385800;
      v24 = v11;
      v40 = v24;
      [v21 setCompletionHandler:v39];
      dispatch_group_enter(v24);
      [v21 start];
      dispatch_group_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
      LOBYTE(v24) = *(a1 + 56);
      v25 = v19;
      v26 = [v19 UTF8String];
      if (v24)
      {
        [v38 appendFormat:@"{Bundle:{name:%s, itemCount:%lu", v26, v53[3]];
        v27 = @"}},";
      }

      else
      {
        [v38 appendFormat:@"Bundle: %s, itemCount: %lu", v26, v53[3]];
        v27 = @"\n";
      }

      [v38 appendFormat:v27];
      v28 = v53[3];

      _Block_object_dispose(&v52, 8);
      v14 += v28;
      ++v17;
      v18 = v16;
    }

    while (v15 != v17);
    v15 = [obj countByEnumeratingWithState:&v42 objects:v56 count:16];
  }

  while (v15);
LABEL_25:

  if (*(a1 + 56) == 1)
  {
    [v38 appendFormat:@"{Totals:{bundleCount:%ld, itemCount:%ld", objc_msgSend(obj, "count"), v14];
    v29 = @"}}]}";
  }

  else
  {
    [v38 appendFormat:@"\nTotals: bundleCount: %ld, itemCount: %ld", objc_msgSend(obj, "count"), v14];
    v29 = @"\n\n";
  }

  [v38 appendFormat:v29];

  v30 = *(a1 + 48);
  if (v30)
  {
    (*(v30 + 16))(v30, v38, 0);
  }
}

void __87__SDCoreSpotlightDiagnosticClient_getStatus_protectionClasses_queue_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v5 = a3;
  if ([a2 isEqualToString:*MEMORY[0x29EDB94B8]])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(a1 + 32) addObject:{*(*(&v11 + 1) + 8 * v10++), v11}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

void __87__SDCoreSpotlightDiagnosticClient_getStatus_protectionClasses_queue_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v5 = a3;
  if ([a2 isEqualToString:*MEMORY[0x29EDB94B8]])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(a1 + 32) addObject:{*(*(&v11 + 1) + 8 * v10++), v11}];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

void __87__SDCoreSpotlightDiagnosticClient_getStatus_protectionClasses_queue_completionHandler___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_29EC15000, log, OS_LOG_TYPE_ERROR, "Exception raised: %@", buf, 0xCu);
}

@end