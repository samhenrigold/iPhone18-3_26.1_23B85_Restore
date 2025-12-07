@interface IKScriptsEvaluator
- (IKAppContext)appContext;
- (IKScriptsEvaluator)initWithScripts:(id)scripts withContext:(id)context callback:(id)callback jingleRequest:(BOOL)request;
- (void)_operation:(id)_operation finishedWithResult:(id)result error:(id)error;
- (void)_sendCallback:(id)callback inContext:(id)context success:(BOOL)success;
- (void)evaluate;
- (void)evaluateScripts;
- (void)handleScirptLoadFailure;
- (void)operation:(id)operation finishedWithOutput:(id)output;
- (void)parseScriptData:(id)data successPredicate:(id)predicate completion:(id)completion;
- (void)scriptDidLoadWithID:(id)d data:(id)data error:(id)error;
@end

@implementation IKScriptsEvaluator

- (IKScriptsEvaluator)initWithScripts:(id)scripts withContext:(id)context callback:(id)callback jingleRequest:(BOOL)request
{
  scriptsCopy = scripts;
  contextCopy = context;
  callbackCopy = callback;
  v27.receiver = self;
  v27.super_class = IKScriptsEvaluator;
  v14 = [(IKScriptsEvaluator *)&v27 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_scripts, scripts);
    objc_storeWeak(&v15->_appContext, contextCopy);
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    records = v15->_records;
    v15->_records = v16;

    v15->_isJingleRequest = request;
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v15->_identifier;
    v15->_identifier = uUIDString;

    objc_setAssociatedObject(contextCopy, v15->_identifier, v15, 0x301);
    if (callbackCopy)
    {
      v21 = [MEMORY[0x277CD4650] managedValueWithValue:callbackCopy];
      jsContext = [contextCopy jsContext];
      virtualMachine = [jsContext virtualMachine];
      jsContext2 = [contextCopy jsContext];
      v25 = [jsContext2 objectForKeyedSubscript:@"Device"];
      [virtualMachine addManagedReference:v21 withOwner:v25];

      [(IKScriptsEvaluator *)v15 setCallback:v21];
    }
  }

  return v15;
}

- (void)evaluate
{
  v56 = *MEMORY[0x277D85DE8];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  scripts = [(IKScriptsEvaluator *)self scripts];
  v4 = [scripts countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v4)
  {
    v5 = *v51;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v51 != v5)
        {
          objc_enumerationMutation(scripts);
        }

        v7 = *(*(&v50 + 1) + 8 * i);
        if ([v7 length])
        {
          v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];
          if (v8)
          {
            v9 = objc_alloc_init(IKLoadRecord);
            [(IKLoadRecord *)v9 setURL:v8];
            records = [(IKScriptsEvaluator *)self records];
            [records addObject:v9];
          }
        }
      }

      v4 = [scripts countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v4);
  }

  scripts2 = [(IKScriptsEvaluator *)self scripts];
  v12 = [scripts2 count];
  records2 = [(IKScriptsEvaluator *)self records];
  LOBYTE(v12) = v12 == [records2 count];

  if (v12)
  {
    v14 = +[IKPreference ignoreHTTPCache];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = [(IKScriptsEvaluator *)self records];
    v37 = [obj countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (!v37)
    {
      goto LABEL_31;
    }

    v38 = v14;
    v36 = *v46;
    v34 = v42;
    while (1)
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v46 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v45 + 1) + 8 * j);
        v17 = objc_opt_new();
        v18 = v17;
        if (v38)
        {
          [v17 setCachePolicy:{v38, v34}];
        }

        v19 = [v16 URL];
        [v18 setURL:v19];

        [v18 setAllowedRetryCount:0];
        [v18 setTimeoutInterval:30.0];
        appContext = [(IKScriptsEvaluator *)self appContext];
        delegate = [appContext delegate];
        if (objc_opt_respondsToSelector())
        {
          v22 = [delegate sourceApplicationBundleIdentifierForContext:appContext];
          [v18 setClientAuditBundleIdentifier:v22];
        }

        if (objc_opt_respondsToSelector())
        {
          v23 = [delegate sourceApplicationAuditTokenDataForContext:appContext];
          [v18 setClientAuditTokenData:v23];
        }

        if (self->_isJingleRequest)
        {
          [IKJSITunesStore setITunesStoreHeaders:v18];
          mEMORY[0x277CCAD30] = objc_alloc_init(MEMORY[0x277D7FD48]);
          [mEMORY[0x277CCAD30] setNeedsURLBag:0];
          [mEMORY[0x277CCAD30] setUrlKnownToBeTrusted:1];
LABEL_27:
          [mEMORY[0x277CCAD30] setDelegate:self];
          v27 = objc_opt_new();
          [mEMORY[0x277CCAD30] setDataProvider:v27];

          [mEMORY[0x277CCAD30] setRequestProperties:v18];
          objc_initWeak(&location, mEMORY[0x277CCAD30]);
          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v39[2] = __30__IKScriptsEvaluator_evaluate__block_invoke_3;
          v39[3] = &unk_279799920;
          v39[4] = self;
          objc_copyWeak(&v40, &location);
          [mEMORY[0x277CCAD30] setCompletionBlock:v39];
          [v16 setOpertaion:mEMORY[0x277CCAD30]];
          mainQueue = [MEMORY[0x277D7FD20] mainQueue];
          [mainQueue addOperation:mEMORY[0x277CCAD30]];

          objc_destroyWeak(&v40);
          objc_destroyWeak(&location);
          goto LABEL_29;
        }

        v25 = [appContext app];
        appIsTrusted = [v25 appIsTrusted];

        if (appIsTrusted)
        {
          mEMORY[0x277CCAD30] = objc_alloc_init(MEMORY[0x277D7FD60]);
          [mEMORY[0x277CCAD30] _setUsesPrivateCookieStore:0];
          goto LABEL_27;
        }

        uUID = [MEMORY[0x277CCAD78] UUID];
        [v16 setRequestID:uUID];

        mEMORY[0x277CCAD30] = [MEMORY[0x277CCAD30] sharedSession];
        objc_initWeak(&location, self);
        v30 = [v18 URL];
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v42[0] = __30__IKScriptsEvaluator_evaluate__block_invoke_2;
        v42[1] = &unk_2797998F8;
        objc_copyWeak(&v43, &location);
        v42[2] = v16;
        v31 = [mEMORY[0x277CCAD30] dataTaskWithURL:v30 completionHandler:v41];

        [v16 setDataTask:v31];
        [v31 resume];

        objc_destroyWeak(&v43);
        objc_destroyWeak(&location);
LABEL_29:
      }

      v37 = [obj countByEnumeratingWithState:&v45 objects:v54 count:16];
      if (!v37)
      {
LABEL_31:

        return;
      }
    }
  }

  callback = [(IKScriptsEvaluator *)self callback];

  if (callback)
  {
    appContext2 = [(IKScriptsEvaluator *)self appContext];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __30__IKScriptsEvaluator_evaluate__block_invoke;
    v49[3] = &unk_2797998D0;
    v49[4] = self;
    [appContext2 addPostEvaluateBlock:v49];
  }
}

void __30__IKScriptsEvaluator_evaluate__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 callback];
  [v2 _sendCallback:v4 inContext:v3 success:0];
}

void __30__IKScriptsEvaluator_evaluate__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [*(a1 + 32) requestID];
  [WeakRetained scriptDidLoadWithID:v8 data:v7 error:v6];
}

void __30__IKScriptsEvaluator_evaluate__block_invoke_3(uint64_t a1)
{
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ITMLKitErrorDomain" code:101 userInfo:0];
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v2 _operation:WeakRetained finishedWithResult:0 error:v4];
}

- (void)parseScriptData:(id)data successPredicate:(id)predicate completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  predicateCopy = predicate;
  completionCopy = completion;
  obj = self;
  objc_sync_enter(obj);
  if ([dataCopy length])
  {
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:4];
  }

  else
  {
    v11 = 0;
  }

  if ([v11 length])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    records = [(IKScriptsEvaluator *)obj records];
    v13 = [records countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = *v22;
      v15 = 1;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(records);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          loadCompleted = [v17 loadCompleted];
          if (predicateCopy)
          {
            v19 = loadCompleted;
          }

          else
          {
            v19 = 1;
          }

          if (v19)
          {
            v15 &= loadCompleted;
          }

          else if (predicateCopy[2](predicateCopy, v17))
          {
            [v17 setLoadCompleted:1];
            [v17 setScriptStr:v11];
            if (completionCopy)
            {
              completionCopy[2](completionCopy, 1, v17);
            }
          }

          else
          {
            v15 = 0;
          }
        }

        v13 = [records countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);

      if ((v15 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
    }

    [(IKScriptsEvaluator *)obj evaluateScripts];
    goto LABEL_27;
  }

  [(IKScriptsEvaluator *)obj handleScirptLoadFailure];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, 0);
  }

LABEL_27:

  objc_sync_exit(obj);
}

- (void)scriptDidLoadWithID:(id)d data:(id)data error:(id)error
{
  dCopy = d;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__IKScriptsEvaluator_scriptDidLoadWithID_data_error___block_invoke;
  v10[3] = &unk_279799948;
  v11 = dCopy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__IKScriptsEvaluator_scriptDidLoadWithID_data_error___block_invoke_2;
  v9[3] = &unk_279799970;
  v9[4] = self;
  v8 = dCopy;
  [(IKScriptsEvaluator *)self parseScriptData:data successPredicate:v10 completion:v9];
}

uint64_t __53__IKScriptsEvaluator_scriptDidLoadWithID_data_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 requestID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __53__IKScriptsEvaluator_scriptDidLoadWithID_data_error___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2)
  {

    [a3 setDataTask:0];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = [*(a1 + 32) records];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v9 + 1) + 8 * i) dataTask];
          [v8 cancel];
        }

        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }
}

- (void)handleScirptLoadFailure
{
  if (self->_callback)
  {
    objc_initWeak(&location, self);
    appContext = [(IKScriptsEvaluator *)self appContext];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __45__IKScriptsEvaluator_handleScirptLoadFailure__block_invoke;
    v4[3] = &unk_2797995A8;
    objc_copyWeak(&v5, &location);
    [appContext evaluate:v4 completionBlock:0];

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __45__IKScriptsEvaluator_handleScirptLoadFailure__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[4];
    if (v5)
    {
      [WeakRetained _sendCallback:v5 inContext:v6 success:0];
    }
  }
}

- (void)evaluateScripts
{
  v3 = MEMORY[0x277CBEB18];
  records = [(IKScriptsEvaluator *)self records];
  v5 = [v3 arrayWithArray:records];

  objc_initWeak(&location, self);
  appContext = [(IKScriptsEvaluator *)self appContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__IKScriptsEvaluator_evaluateScripts__block_invoke;
  v8[3] = &unk_279799998;
  v7 = v5;
  v9 = v7;
  objc_copyWeak(&v10, &location);
  [appContext evaluate:v8 completionBlock:0];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __37__IKScriptsEvaluator_evaluateScripts__block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v22 = a1;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    v8 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        v11 = [v3 JSGlobalContextRef];
        v12 = JSStringCreateWithCFString([v10 scriptStr]);
        if (v12)
        {
          v13 = v12;
          exception = 0;
          v14 = [v10 URL];
          v15 = JSStringCreateWithCFString([v14 absoluteString]);

          if (!JSEvaluateScript(v11, v13, 0, v15, 1, &exception))
          {
            v16 = [MEMORY[0x277CD4658] valueWithJSValueRef:exception inContext:v3];
            v17 = ITMLKitGetLogObject(0);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = [v16 toDictionary];
              *buf = 138412546;
              v29 = v16;
              v30 = 2112;
              v31 = v18;
              _os_log_error_impl(&dword_2549A4000, v17, OS_LOG_TYPE_ERROR, "Failed to evaluate Script: %@...%@", buf, 0x16u);
            }

            v8 = 0;
          }

          JSStringRelease(v15);
          JSStringRelease(v13);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 1;
  }

  WeakRetained = objc_loadWeakRetained((v22 + 40));
  v20 = WeakRetained;
  if (WeakRetained)
  {
    v21 = WeakRetained[4];
    if (v21)
    {
      [WeakRetained _sendCallback:v21 inContext:v3 success:v8 & 1];
    }
  }
}

- (void)operation:(id)operation finishedWithOutput:(id)output
{
  operationCopy = operation;
  outputCopy = output;
  if (!outputCopy)
  {
    outputCopy = [MEMORY[0x277CBEA90] data];
  }

  [(IKScriptsEvaluator *)self _operation:operationCopy finishedWithResult:outputCopy error:0];
}

- (void)_operation:(id)_operation finishedWithResult:(id)result error:(id)error
{
  _operationCopy = _operation;
  resultCopy = result;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    data = resultCopy;
  }

  else
  {
    data = [MEMORY[0x277CBEA90] data];
  }

  v10 = data;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __58__IKScriptsEvaluator__operation_finishedWithResult_error___block_invoke;
  v20 = &unk_279799948;
  v21 = _operationCopy;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __58__IKScriptsEvaluator__operation_finishedWithResult_error___block_invoke_2;
  v15 = &unk_279799970;
  selfCopy = self;
  v11 = _operationCopy;
  [(IKScriptsEvaluator *)self parseScriptData:v10 successPredicate:&v17 completion:&v12];
  [v11 setDelegate:{0, v12, v13, v14, v15, selfCopy, v17, v18, v19, v20}];
  [v11 setCompletionBlock:0];
}

BOOL __58__IKScriptsEvaluator__operation_finishedWithResult_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 opertaion];
  v4 = v3 == *(a1 + 32);

  return v4;
}

void __58__IKScriptsEvaluator__operation_finishedWithResult_error___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2)
  {

    [a3 setOpertaion:0];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [*(a1 + 32) records];
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          v9 = [v8 opertaion];
          [v9 setDelegate:0];

          v10 = [v8 opertaion];
          [v10 setCompletionBlock:0];

          v11 = [v8 opertaion];
          [v11 cancel];

          [v8 setOpertaion:0];
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }
  }
}

- (void)_sendCallback:(id)callback inContext:(id)context success:(BOOL)success
{
  successCopy = success;
  v18[1] = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  contextCopy = context;
  if (callbackCopy)
  {
    value = [callbackCopy value];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:successCopy];
    v18[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v13 = [value callWithArguments:v12];

    virtualMachine = [contextCopy virtualMachine];
    v15 = [contextCopy objectForKeyedSubscript:@"Device"];
    [virtualMachine removeManagedReference:callbackCopy withOwner:v15];
  }

  v16 = +[IKAppContext currentAppContext];
  if (v16)
  {
    identifier = [(IKScriptsEvaluator *)self identifier];
    objc_setAssociatedObject(v16, identifier, 0, 0x301);
  }
}

- (IKAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

@end