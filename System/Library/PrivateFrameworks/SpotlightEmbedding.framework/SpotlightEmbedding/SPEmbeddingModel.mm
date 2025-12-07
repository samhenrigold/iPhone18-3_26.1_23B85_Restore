@interface SPEmbeddingModel
+ (id)log;
+ (id)sharedInstance;
+ (unint64_t)version;
- (BOOL)deviceCanGenerateEmbeddings;
- (SPEmbeddingModel)init;
- (id)_processAttributedString:(id)string;
- (id)_processText:(id)text;
- (id)_processTextInputs:(id)inputs error:(id *)error;
- (id)_processTokenIDs:(id)ds;
- (id)generateEmbeddingForTextInputs:(id)inputs extendedContextLength:(BOOL)length bundleID:(id)d queryID:(int64_t)iD clientBundleID:(id)bundleID timeout:(int64_t)timeout useCLIPSafety:(BOOL)safety computeThreshold:(BOOL)self0 workCost:(int64_t *)self1 error:(id *)self2;
- (id)generateEmbeddingForTextInputs:(id)inputs extendedContextLength:(BOOL)length queryID:(int64_t)d clientBundleID:(id)iD timeout:(int64_t)timeout useCLIPSafety:(BOOL)safety workCost:(int64_t *)cost error:(id *)self0;
- (void)_initModel;
- (void)cancelQueryID:(int64_t)d;
- (void)cancelRequestID:(int)d;
- (void)clear;
- (void)clearQueryID:(int64_t)d requestID:(int)iD;
- (void)preheatWithCompletionHandler:(id)handler;
@end

@implementation SPEmbeddingModel

- (BOOL)deviceCanGenerateEmbeddings
{
  mEMORY[0x277CC3410] = [MEMORY[0x277CC3410] sharedInstance];
  isSemanticSearchAvailable = [mEMORY[0x277CC3410] isSemanticSearchAvailable];

  return isSemanticSearchAvailable;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[SPEmbeddingModel sharedInstance];
  }

  v3 = sharedInstance_sSharedInstance;

  return v3;
}

+ (unint64_t)version
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = getVCPMediaAnalyzerClass_softClass;
  v9 = getVCPMediaAnalyzerClass_softClass;
  if (!getVCPMediaAnalyzerClass_softClass)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __getVCPMediaAnalyzerClass_block_invoke;
    v5[3] = &unk_279D01BB8;
    v5[4] = &v6;
    __getVCPMediaAnalyzerClass_block_invoke(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  return [v2 getUnifiedEmbeddingVersion];
}

uint64_t __34__SPEmbeddingModel_sharedInstance__block_invoke()
{
  sharedInstance_sSharedInstance = objc_alloc_init(SPEmbeddingModel);

  return MEMORY[0x2821F96F8]();
}

- (SPEmbeddingModel)init
{
  v12.receiver = self;
  v12.super_class = SPEmbeddingModel;
  v2 = [(SPEmbeddingModel *)&v12 init];
  v3 = v2;
  if (v2)
  {
    service = v2->_service;
    v2->_service = 0;

    requestIDs = v3->_requestIDs;
    v3->_requestIDs = 0;

    queryIDs = v3->_queryIDs;
    v3->_queryIDs = 0;

    v3->_warmedUp = 0;
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_BACKGROUND, 0);
    v9 = dispatch_queue_create("com.apple.SpotlightEmbedding.queue", v8);
    queue = v3->_queue;
    v3->_queue = v9;
  }

  return v3;
}

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__SPEmbeddingModel_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_0 != -1)
  {
    dispatch_once(&log_onceToken_0, block);
  }

  v2 = log_log_0;

  return v2;
}

void __23__SPEmbeddingModel_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.spotlightembedding", [v4 UTF8String]);
  v3 = log_log_0;
  log_log_0 = v2;
}

- (void)_initModel
{
  if (!self->_service)
  {
    service = [MEMORY[0x277D26888] service];
    service = self->_service;
    self->_service = service;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    requestIDs = self->_requestIDs;
    self->_requestIDs = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    queryIDs = self->_queryIDs;
    self->_queryIDs = v7;

    self->_warmedUp = 0;
  }
}

- (void)clear
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__SPEmbeddingModel_clear__block_invoke;
  block[3] = &unk_279D01A20;
  block[4] = self;
  dispatch_async(queue, block);
}

void *__25__SPEmbeddingModel_clear__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  if (result)
  {
    [result cancelAllRequests];
    [*(*(a1 + 32) + 16) removeAllObjects];
    v3 = *(*(a1 + 32) + 24);

    return [v3 removeAllObjects];
  }

  return result;
}

- (void)preheatWithCompletionHandler:(id)handler
{
  v13[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if ([(SPEmbeddingModel *)self deviceCanGenerateEmbeddings])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__SPEmbeddingModel_preheatWithCompletionHandler___block_invoke;
    block[3] = &unk_279D01A78;
    block[4] = self;
    v11 = handlerCopy;
    v6 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(queue, v6);
  }

  else
  {
    v7 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA450];
    v13[0] = @"Device does not support embeddings";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [v7 errorWithDomain:@"com.apple.SpotlightEmbedding.EmbeddingModelError" code:-8003 userInfo:v8];

    (*(handlerCopy + 2))(handlerCopy, v9);
  }
}

void __49__SPEmbeddingModel_preheatWithCompletionHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v11 = qos_class_self();
    _os_log_impl(&dword_26B793000, v2, OS_LOG_TYPE_INFO, "preheat request as QOS (%d)", buf, 8u);
  }

  v3 = objc_alloc_init(MEMORY[0x277D26890]);
  [v3 setExtendedContextLength:1];
  [*(a1 + 32) _initModel];
  v4 = *(*(a1 + 32) + 8);
  v9 = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SPEmbeddingModel_preheatWithCompletionHandler___block_invoke_207;
  v7[3] = &unk_279D01A50;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v4 prewarmTextRequests:v5 completionHandler:v7];
}

void __49__SPEmbeddingModel_preheatWithCompletionHandler___block_invoke_207(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v6 = MEMORY[0x277CCACA8];
    v7 = [v3 description];
    v8 = [v6 stringWithFormat:@"Text embedding model preheat failed, error: %@", v7];
    v14[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v10 = [v5 errorWithDomain:@"com.apple.SpotlightEmbedding.EmbeddingModelError" code:-8003 userInfo:v9];

    v11 = *(a1 + 40);
    if (v11)
    {
      (*(v11 + 16))(v11, v10);
    }
  }

  else
  {
    *(*(a1 + 32) + 40) = 1;
    v12 = *(a1 + 40);
    if (v12)
    {
      (*(v12 + 16))(v12, 0);
    }
  }
}

- (void)clearQueryID:(int64_t)d requestID:(int)iD
{
  if ([(SPEmbeddingModel *)self deviceCanGenerateEmbeddings]&& iD != -1 && (d & 0x7FFFFFFFFFFFFFFFLL) != 0x7FFFFFFFFFFFFFFFLL)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__SPEmbeddingModel_clearQueryID_requestID___block_invoke;
    block[3] = &unk_279D01AA0;
    iDCopy = iD;
    block[4] = self;
    block[5] = d;
    dispatch_async(queue, block);
  }
}

void __43__SPEmbeddingModel_clearQueryID_requestID___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 8))
  {
    v3 = *(v1 + 16);
    v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
    [v3 removeObjectForKey:v4];

    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 24);
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
    [v6 removeObjectForKey:v7];
  }
}

- (void)cancelQueryID:(int64_t)d
{
  v11 = *MEMORY[0x277D85DE8];
  deviceCanGenerateEmbeddings = [(SPEmbeddingModel *)self deviceCanGenerateEmbeddings];
  if ((~d & 0x7FFFFFFFFFFFFFFFLL) != 0 && deviceCanGenerateEmbeddings)
  {
    v6 = [objc_opt_class() log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      dCopy = d;
      _os_log_impl(&dword_26B793000, v6, OS_LOG_TYPE_INFO, "[qid=%ld] cancelQueryID", buf, 0xCu);
    }

    queue = self->_queue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __34__SPEmbeddingModel_cancelQueryID___block_invoke;
    v8[3] = &unk_279D01AC8;
    v8[4] = self;
    v8[5] = d;
    dispatch_async(queue, v8);
  }
}

void __34__SPEmbeddingModel_cancelQueryID___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 8))
  {
    v3 = *(v1 + 24);
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
    v5 = [v3 objectForKey:v4];

    if (v5)
    {
      v6 = [objc_opt_class() log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 40);
        v11 = 134218240;
        v12 = v7;
        v13 = 1024;
        v14 = [v5 intValue];
        _os_log_impl(&dword_26B793000, v6, OS_LOG_TYPE_INFO, "[qid=%ld] cancelQueryID, requestID: %d", &v11, 0x12u);
      }

      [*(*(a1 + 32) + 8) cancelRequestID:{objc_msgSend(v5, "intValue")}];
      [*(*(a1 + 32) + 16) removeObjectForKey:v5];
      v8 = *(a1 + 40);
      v9 = *(*(a1 + 32) + 24);
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
      [v9 removeObjectForKey:v10];
    }
  }
}

- (void)cancelRequestID:(int)d
{
  v12 = *MEMORY[0x277D85DE8];
  deviceCanGenerateEmbeddings = [(SPEmbeddingModel *)self deviceCanGenerateEmbeddings];
  if (d != -1 && deviceCanGenerateEmbeddings)
  {
    v6 = [objc_opt_class() log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      dCopy = d;
      _os_log_impl(&dword_26B793000, v6, OS_LOG_TYPE_INFO, "cancelRequestID, requestID: %d", buf, 8u);
    }

    queue = self->_queue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __36__SPEmbeddingModel_cancelRequestID___block_invoke;
    v8[3] = &unk_279D01AF0;
    v8[4] = self;
    dCopy2 = d;
    dispatch_async(queue, v8);
  }
}

void __36__SPEmbeddingModel_cancelRequestID___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    [v2 cancelRequestID:*(a1 + 40)];
    v3 = *(*(a1 + 32) + 16);
    v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
    v5 = [v3 objectForKey:v4];

    v6 = [objc_opt_class() log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v5 longValue];
      v8 = *(a1 + 40);
      v11 = 134218240;
      v12 = v7;
      v13 = 1024;
      v14 = v8;
      _os_log_impl(&dword_26B793000, v6, OS_LOG_TYPE_INFO, "[qid=%ld] cancelRequestID, requestID: %d", &v11, 0x12u);
    }

    if (v5)
    {
      [*(*(a1 + 32) + 24) removeObjectForKey:v5];
    }

    v9 = *(*(a1 + 32) + 16);
    v10 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
    [v9 removeObjectForKey:v10];
  }
}

- (id)_processTextInputs:(id)inputs error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  inputsCopy = inputs;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(inputsCopy, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = inputsCopy;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        type = [v13 type];
        switch(type)
        {
          case 3:
            attributedString = [v13 attributedString];
            v16 = [(SPEmbeddingModel *)self _processAttributedString:attributedString];
            break;
          case 2:
            attributedString = [v13 tokenIDs];
            v16 = [(SPEmbeddingModel *)self _processTokenIDs:attributedString];
            break;
          case 1:
            attributedString = [v13 text];
            v16 = [(SPEmbeddingModel *)self _processText:attributedString];
            break;
          default:
            if (error)
            {
              v22 = MEMORY[0x277CCA9B8];
              v31 = *MEMORY[0x277CCA450];
              v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid input format (%lu)", objc_msgSend(v13, "type")];
              v32 = v23;
              v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
              *error = [v22 errorWithDomain:@"com.apple.SpotlightEmbedding.EmbeddingModelError" code:-8004 userInfo:v24];
            }

            v20 = 0;
            goto LABEL_19;
        }

        v17 = v16;

        if (!v17)
        {
          if (error)
          {
            v18 = MEMORY[0x277CCA9B8];
            v29 = *MEMORY[0x277CCA450];
            v30 = @"Processing text input failed";
            v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
            *error = [v18 errorWithDomain:@"com.apple.SpotlightEmbedding.EmbeddingModelError" code:-8004 userInfo:v19];
          }

          goto LABEL_18;
        }

        [v7 addObject:v17];
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  v20 = [MEMORY[0x277CBEA60] arrayWithArray:v7];
LABEL_19:

  return v20;
}

- (id)_processText:(id)text
{
  v3 = MEMORY[0x277CCA900];
  textCopy = text;
  whitespaceCharacterSet = [v3 whitespaceCharacterSet];
  v6 = [textCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  if ([v6 length])
  {
    v7 = objc_alloc_init(MEMORY[0x277D268A0]);
    [v7 addText:v6];
  }

  else
  {
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_26B793000, v8, OS_LOG_TYPE_INFO, "**Warning** Skipping embedding generation as text is empty", v10, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)_processTokenIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    v4 = objc_alloc_init(MEMORY[0x277D268A0]);
    v5 = [MEMORY[0x277CBEB18] arrayWithArray:dsCopy];
    if ([v5 count])
    {
      v6 = [v5 objectAtIndexedSubscript:0];
      v7 = [v6 isEqualToNumber:&unk_287C3C940];

      if (v7)
      {
        [v5 removeObjectAtIndex:0];
      }
    }

    if ([v5 count])
    {
      lastObject = [v5 lastObject];
      v9 = [lastObject isEqualToNumber:&unk_287C3C940];

      if (v9)
      {
        [v5 removeLastObject];
      }
    }

    v10 = [MEMORY[0x277CBEA60] arrayWithArray:v5];
    [v4 addTokenIDs:v10];
  }

  else
  {
    v11 = [objc_opt_class() log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_26B793000, v11, OS_LOG_TYPE_INFO, "**Warning** Skipping embedding generation as token IDs are empty", v13, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (id)_processAttributedString:(id)string
{
  v53 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy)
  {
    *v45 = 0;
    v46 = v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy_;
    v49 = __Block_byref_object_dispose_;
    v50 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x3010000000;
    v43 = 0;
    v44 = 0;
    v42 = &unk_26B79B05E;
    v5 = [stringCopy length];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __45__SPEmbeddingModel__processAttributedString___block_invoke;
    v38[3] = &unk_279D01B40;
    v38[4] = v45;
    v38[5] = &v39;
    [v4 enumerateAttributesInRange:0 options:v5 usingBlock:{0, v38}];
    v6 = objc_alloc_init(MEMORY[0x277D268A0]);
    if (!*(v46 + 5))
    {
      string = [v4 string];
      [v6 addText:string];
    }

    v8 = v40[5];
    if (v8 == [v4 length])
    {
      v9 = [objc_opt_class() log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_26B793000, v9, OS_LOG_TYPE_INFO, "**Warning** Skipping embedding generation as query only contains person", buf, 2u);
      }

      v10 = 0;
      goto LABEL_30;
    }

    v12 = v40[4];
    if (!v12)
    {
LABEL_19:
      v22 = objc_alloc(MEMORY[0x277CCAD78]);
      v23 = [v22 initWithUUIDString:*(v46 + 5)];
      [v6 addEntityUUID:v23];

      v24 = [objc_opt_class() log];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_26B793000, v24, OS_LOG_TYPE_INFO, "Found person uuid from the query", buf, 2u);
      }

      v25 = [v4 length];
      v26 = v40[5] + v40[4];
      v27 = v25 - v26;
      if (v25 - v26 < 1)
      {
        goto LABEL_29;
      }

      string2 = [v4 string];
      v29 = [string2 substringWithRange:{v26, v27}];

      whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v31 = [v29 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

      if ([v31 length])
      {
        [v6 addText:v31];
        v32 = [objc_opt_class() log];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = [v29 length];
          *buf = 134217984;
          v52 = v33;
          v34 = "Found postString with %lu characters";
          v35 = v32;
          v36 = 12;
LABEL_27:
          _os_log_impl(&dword_26B793000, v35, OS_LOG_TYPE_INFO, v34, buf, v36);
        }
      }

      else
      {
        v32 = [objc_opt_class() log];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v34 = "**Warning** postString is empty";
          v35 = v32;
          v36 = 2;
          goto LABEL_27;
        }
      }

LABEL_29:
      v10 = v6;
LABEL_30:

      _Block_object_dispose(&v39, 8);
      _Block_object_dispose(v45, 8);

      goto LABEL_31;
    }

    string3 = [v4 string];
    v14 = [string3 substringWithRange:{0, v12}];

    whitespaceCharacterSet2 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v16 = [v14 stringByTrimmingCharactersInSet:whitespaceCharacterSet2];

    if ([v16 length])
    {
      [v6 addText:v16];
      v17 = [objc_opt_class() log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [v16 length];
        *buf = 134217984;
        v52 = v18;
        v19 = "Found preString with %lu characters";
        v20 = v17;
        v21 = 12;
LABEL_17:
        _os_log_impl(&dword_26B793000, v20, OS_LOG_TYPE_INFO, v19, buf, v21);
      }
    }

    else
    {
      v17 = [objc_opt_class() log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v19 = "**Warning** preString is empty";
        v20 = v17;
        v21 = 2;
        goto LABEL_17;
      }
    }

    goto LABEL_19;
  }

  v11 = [objc_opt_class() log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *v45 = 0;
    _os_log_impl(&dword_26B793000, v11, OS_LOG_TYPE_INFO, "**Warning** Skipping personalized embedding generation as attributed query is empty", v45, 2u);
  }

  v10 = 0;
LABEL_31:

  return v10;
}

uint64_t __45__SPEmbeddingModel__processAttributedString___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__SPEmbeddingModel__processAttributedString___block_invoke_2;
  v5[3] = &unk_279D01B18;
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a4;
  return [a2 enumerateKeysAndObjectsUsingBlock:v5];
}

void __45__SPEmbeddingModel__processAttributedString___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  if ([a2 isEqualToString:@"kMDItemPhotosPeoplePersonIdentifiers"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
      *(*(*(a1 + 40) + 8) + 32) = *(a1 + 48);
      *a4 = 1;
    }
  }
}

- (id)generateEmbeddingForTextInputs:(id)inputs extendedContextLength:(BOOL)length queryID:(int64_t)d clientBundleID:(id)iD timeout:(int64_t)timeout useCLIPSafety:(BOOL)safety workCost:(int64_t *)cost error:(id *)self0
{
  BYTE1(v11) = 1;
  LOBYTE(v11) = safety;
  return [(SPEmbeddingModel *)self generateEmbeddingForTextInputs:inputs extendedContextLength:length bundleID:&stru_287C3C118 queryID:d clientBundleID:iD timeout:timeout useCLIPSafety:v11 computeThreshold:cost workCost:error error:?];
}

- (id)generateEmbeddingForTextInputs:(id)inputs extendedContextLength:(BOOL)length bundleID:(id)d queryID:(int64_t)iD clientBundleID:(id)bundleID timeout:(int64_t)timeout useCLIPSafety:(BOOL)safety computeThreshold:(BOOL)self0 workCost:(int64_t *)self1 error:(id *)self2
{
  v86[1] = *MEMORY[0x277D85DE8];
  inputsCopy = inputs;
  dCopy = d;
  bundleIDCopy = bundleID;
  v40 = inputsCopy;
  if (!-[SPEmbeddingModel deviceCanGenerateEmbeddings](self, "deviceCanGenerateEmbeddings") || (v19 = [inputsCopy count]) == 0)
  {
    v33 = 0;
    goto LABEL_26;
  }

  v20 = v19;
  v38 = [(SPEmbeddingModel *)self _processTextInputs:inputsCopy error:error];
  if ([v38 count] == v20)
  {
    if (![bundleIDCopy length])
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];

      bundleIDCopy = bundleIdentifier;
    }

    v79 = 0;
    v80 = &v79;
    v81 = 0x3032000000;
    v82 = __Block_byref_object_copy_;
    v83 = __Block_byref_object_dispose_;
    v84 = 0;
    v75 = 0;
    v76 = &v75;
    v77 = 0x2020000000;
    v78 = -1;
    v69 = 0;
    v70 = &v69;
    v71 = 0x3032000000;
    v72 = __Block_byref_object_copy_;
    v73 = __Block_byref_object_dispose_;
    v74 = 0;
    v63 = 0;
    v64 = &v63;
    v65 = 0x3032000000;
    v66 = __Block_byref_object_copy_;
    v67 = __Block_byref_object_dispose_;
    v68 = 0;
    v59 = 0;
    v60 = &v59;
    v61 = 0x2020000000;
    v62 = 0;
    v23 = dispatch_group_create();
    dispatch_group_enter(v23);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __159__SPEmbeddingModel_generateEmbeddingForTextInputs_extendedContextLength_bundleID_queryID_clientBundleID_timeout_useCLIPSafety_computeThreshold_workCost_error___block_invoke;
    block[3] = &unk_279D01B90;
    block[4] = self;
    iDCopy = iD;
    bundleIDCopy = bundleIDCopy;
    v43 = bundleIDCopy;
    thresholdCopy = threshold;
    safetyCopy = safety;
    lengthCopy = length;
    v24 = v23;
    v44 = v24;
    v45 = v38;
    v47 = &v59;
    v48 = &v69;
    v49 = &v63;
    v53 = v20;
    costCopy = cost;
    v50 = &v79;
    timeoutCopy = timeout;
    v46 = dCopy;
    v51 = &v75;
    v25 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
    dispatch_async(queue, v25);

    if (timeout)
    {
      v26 = dispatch_time(0, 1000000 * timeout);
      errorCopy2 = error;
      if (dispatch_group_wait(v24, v26))
      {
        v28 = atomic_load(v76 + 6);
        [(SPEmbeddingModel *)self cancelRequestID:v28];
        *(v60 + 24) = 1;
        if (error)
        {
          v29 = MEMORY[0x277CCA9B8];
          v85 = *MEMORY[0x277CCA450];
          timeout = [MEMORY[0x277CCACA8] stringWithFormat:@"Text embedding generation timeout (timeout=%lums)", timeout];
          v86[0] = timeout;
          v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:&v85 count:1];
          *error = [v29 errorWithDomain:@"com.apple.SpotlightEmbedding.EmbeddingModelError" code:-8007 userInfo:v31];
        }

        if ((~iD & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v32 = 2;
        }

        else
        {
          v32 = 1;
        }

        sendSpotlightEmbeddingAnalyticsEvent(1, v32, bundleIDCopy);
        goto LABEL_23;
      }
    }

    else
    {
      dispatch_group_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
      errorCopy2 = error;
    }

    v34 = atomic_load(v76 + 6);
    [(SPEmbeddingModel *)self clearQueryID:iD requestID:v34];
    v35 = v70[5];
    if (v35)
    {
      if (!errorCopy2)
      {
LABEL_23:
        v33 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      self->_warmedUp = 1;
      v35 = v64[5];
      if (!v35)
      {
        v33 = v80[5];
        goto LABEL_24;
      }

      if (!errorCopy2)
      {
        goto LABEL_23;
      }
    }

    v33 = 0;
    *error = v35;
LABEL_24:

    _Block_object_dispose(&v59, 8);
    _Block_object_dispose(&v63, 8);

    _Block_object_dispose(&v69, 8);
    _Block_object_dispose(&v75, 8);
    _Block_object_dispose(&v79, 8);

    goto LABEL_25;
  }

  v33 = 0;
LABEL_25:

LABEL_26:

  return v33;
}

void __159__SPEmbeddingModel_generateEmbeddingForTextInputs_extendedContextLength_bundleID_queryID_clientBundleID_timeout_useCLIPSafety_computeThreshold_workCost_error___block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_class() log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 112);
    v4 = qos_class_self();
    v5 = *(a1 + 40);
    *buf = 134218498;
    v56 = v3;
    v57 = 1024;
    v58 = v4;
    v59 = 2112;
    v60 = v5;
    _os_log_impl(&dword_26B793000, v2, OS_LOG_TYPE_INFO, "[qid=%ld] MADRequest as QOS (%d) client:%@", buf, 0x1Cu);
  }

  v6 = objc_alloc_init(MEMORY[0x277D26890]);
  [v6 setVersion:{+[SPEmbeddingModel version](SPEmbeddingModel, "version")}];
  [v6 setComputeThreshold:*(a1 + 144)];
  [v6 setComputeSafety:*(a1 + 145)];
  [v6 setExtendedContextLength:*(a1 + 146)];
  if (*(a1 + 146) == 1 && (*(a1 + 112) | 0x8000000000000000) != 0xFFFFFFFFFFFFFFFFLL)
  {
    v7 = [objc_opt_class() log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 112);
      *buf = 134217984;
      v56 = v8;
      _os_log_impl(&dword_26B793000, v7, OS_LOG_TYPE_INFO, "[qid=%ld] Extended context length enabled", buf, 0xCu);
    }
  }

  v54 = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
  v10 = dispatch_time(0, 0);
  dispatch_group_enter(*(a1 + 48));
  [*(a1 + 32) _initModel];
  v11 = *(*(a1 + 32) + 8);
  v36 = MEMORY[0x277D85DD0];
  v37 = 3221225472;
  v38 = __159__SPEmbeddingModel_generateEmbeddingForTextInputs_extendedContextLength_bundleID_queryID_clientBundleID_timeout_useCLIPSafety_computeThreshold_workCost_error___block_invoke_235;
  v39 = &unk_279D01B68;
  v45 = *(a1 + 72);
  v12 = *(a1 + 56);
  v13 = *(a1 + 48);
  v14 = *(a1 + 120);
  v40 = v13;
  v48 = v14;
  v15 = v6;
  v16 = *(a1 + 80);
  v41 = v15;
  v46 = v16;
  v53 = *(a1 + 145);
  v17 = *(a1 + 40);
  v18 = *(a1 + 112);
  v19 = *(a1 + 32);
  v42 = v17;
  v43 = v19;
  v47 = *(a1 + 88);
  v49 = v18;
  v50 = v10;
  v20 = *(a1 + 136);
  v51 = *(a1 + 128);
  v52 = v20;
  v44 = *(a1 + 64);
  v21 = [v11 performRequests:v9 textInputs:v12 completionHandler:&v36];
  atomic_store(v21, (*(*(a1 + 104) + 8) + 24));
  v22 = *(a1 + 112);
  if (v22 != 0x7FFFFFFFFFFFFFFFLL && v22 != -1 && v21 != -1)
  {
    v23 = [objc_opt_class() log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(a1 + 112);
      v25 = atomic_load((*(*(a1 + 104) + 8) + 24));
      *buf = 134218240;
      v56 = v24;
      v57 = 1024;
      v58 = v25;
      _os_log_impl(&dword_26B793000, v23, OS_LOG_TYPE_INFO, "[qid=%ld] generateEmbeddingForTextInputs, requestID: %d", buf, 0x12u);
    }

    v26 = *(*(a1 + 32) + 24);
    v27 = MEMORY[0x277CCABB0];
    v28 = atomic_load((*(*(a1 + 104) + 8) + 24));
    v29 = [v27 numberWithInt:v28];
    v30 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 112)];
    [v26 setObject:v29 forKey:v30];

    v31 = *(*(a1 + 32) + 16);
    v32 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 112)];
    v33 = MEMORY[0x277CCABB0];
    v34 = atomic_load((*(*(a1 + 104) + 8) + 24));
    v35 = [v33 numberWithInt:v34];
    [v31 setObject:v32 forKey:v35];
  }

  dispatch_group_leave(*(a1 + 48));
}

void __159__SPEmbeddingModel_generateEmbeddingForTextInputs_extendedContextLength_bundleID_queryID_clientBundleID_timeout_useCLIPSafety_computeThreshold_workCost_error___block_invoke_235(uint64_t a1, int a2, void *a3)
{
  v112[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    v90 = a2;
    if (a2 != -1 && !v5)
    {
      v7 = *(a1 + 104);
      v8 = [*(a1 + 40) embeddingResults];
      v9 = [v8 count];

      v10 = v7 == v9;
      v6 = 0;
      if (v10)
      {
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        obj = [*(a1 + 40) embeddingResults];
        v92 = [obj countByEnumeratingWithState:&v94 objects:v110 count:16];
        if (!v92)
        {
          goto LABEL_49;
        }

        v91 = *v95;
LABEL_8:
        v11 = 0;
        while (1)
        {
          if (*v95 != v91)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v94 + 1) + 8 * v11);
          if (!v12)
          {
            break;
          }

          v13 = [*(*(&v94 + 1) + 8 * v11) embedding];
          v14 = [v13 data];

          if (!v14)
          {
            break;
          }

          if (*(a1 + 144) == 1)
          {
            v15 = [v12 safetyScore];
            [v15 floatValue];
            v17 = v16;

            v18 = [MEMORY[0x277CBEAF8] currentLocale];
            v19 = [v18 languageCode];
            v20 = [v19 lowercaseString];
            v21 = v20;
            if (v20)
            {
              v22 = v20;
            }

            else
            {
              v22 = &stru_287C3C118;
            }

            v23 = v22;

            v24 = [v18 countryCode];
            v25 = [v24 lowercaseString];
            v26 = v25;
            if (v25)
            {
              v27 = v25;
            }

            else
            {
              v27 = &stru_287C3C118;
            }

            v28 = v27;

            v29 = v23;
            v30 = v29;
            if ([(__CFString *)v29 isEqualToString:@"zh"])
            {
              v31 = @"zh_tw";
              if (([(__CFString *)v28 isEqualToString:@"tw"]& 1) != 0 || (v31 = @"zh_hk", v30 = v29, [(__CFString *)v28 isEqualToString:@"hk"]))
              {

                v30 = v31;
              }
            }

            if ([*(a1 + 48) isEqualToString:@"com.apple.mobilemail"] & 1) != 0 || (objc_msgSend(*(a1 + 48), "hasPrefix:", @"com.apple.email"))
            {
              v32 = @"text";
              v33 = &unk_287C3CDA8;
            }

            else
            {
              v34 = [*(a1 + 48) isEqualToString:@"com.apple.MobileSMS"];
              if (v34)
              {
                v32 = @"text";
              }

              else
              {
                v32 = @"photo";
              }

              if (v34)
              {
                v33 = &unk_287C3CDA8;
              }

              else
              {
                v33 = &unk_287C3CDB8;
              }
            }

            v35 = [(X *)&unk_287C3CD80 objectForKey:v30];
            v36 = [v35 objectForKey:v32];
            v37 = v36;
            if (v36)
            {
              v38 = v36;
            }

            else
            {
              v38 = v33;
            }

            v39 = v38;

            v40 = [v12 isSafe];
            if ([v40 BOOLValue])
            {
            }

            else
            {
              [v39 floatValue];
              v42 = v41;

              if (v17 >= v42)
              {
                v81 = MEMORY[0x277CCA9B8];
                v106 = *MEMORY[0x277CCA450];
                v82 = MEMORY[0x277CCACA8];
                v83 = *(a1 + 112);
                [v39 floatValue];
                v85 = [v82 stringWithFormat:@"[qid=%ld] Result marked as unsafe by CLIP Safety Models with confidence score : %f (threshold:%f language:%@)", v83, v17, v84, v30];
                v107 = v85;
                v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
                v87 = [v81 errorWithDomain:@"com.apple.SpotlightEmbedding.EmbeddingModelError" code:-8008 userInfo:v86];
                v88 = *(*(a1 + 88) + 8);
                v89 = *(v88 + 40);
                *(v88 + 40) = v87;

                goto LABEL_58;
              }
            }

            v43 = [objc_opt_class() log];
            if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
            {
              v44 = *(a1 + 112);
              [v39 floatValue];
              *buf = 134218754;
              v99 = v44;
              v100 = 2048;
              v101 = v17;
              v102 = 2048;
              v103 = v45;
              v104 = 2112;
              v105 = v30;
              _os_log_impl(&dword_26B793000, v43, OS_LOG_TYPE_INFO, "[qid=%ld] Result marked as safe by CLIP Safety Model with confidence score : %f (threshold:%f language:%@)", buf, 0x2Au);
            }
          }

          v46 = [SPEmbeddingResult alloc];
          v47 = +[SPEmbeddingModel version];
          v48 = [v12 embedding];
          v49 = [v48 data];
          v50 = [v12 embedding];
          v51 = [v50 type];
          v52 = [v12 scale];
          [v52 floatValue];
          v54 = v53;
          v55 = [v12 bias];
          [v55 floatValue];
          LODWORD(v57) = v56;
          LODWORD(v58) = v54;
          v59 = [(SPEmbeddingResult *)v46 initWithVersion:v47 data:v49 type:v51 scale:v58 bias:v57];

          v60 = *(*(*(a1 + 96) + 8) + 40);
          if (!v60)
          {
            v61 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 104)];
            v62 = *(*(a1 + 96) + 8);
            v63 = *(v62 + 40);
            *(v62 + 40) = v61;

            v60 = *(*(*(a1 + 96) + 8) + 40);
          }

          [v60 addObject:v59];

          if (v92 == ++v11)
          {
            v92 = [obj countByEnumeratingWithState:&v94 objects:v110 count:16];
            if (v92)
            {
              goto LABEL_8;
            }

            v6 = 0;
            goto LABEL_49;
          }
        }

        v75 = MEMORY[0x277CCA9B8];
        v108 = *MEMORY[0x277CCA450];
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Text embedding generation result is empty"];
        v109 = v18;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
        v76 = [v75 errorWithDomain:@"com.apple.SpotlightEmbedding.EmbeddingModelError" code:-8006 userInfo:v29];
        v77 = *(*(a1 + 80) + 8);
        v28 = *(v77 + 40);
        *(v77 + 40) = v76;
LABEL_58:
        v6 = 0;
        goto LABEL_48;
      }
    }

    v64 = MEMORY[0x277CCA9B8];
    v111 = *MEMORY[0x277CCA450];
    v65 = MEMORY[0x277CCACA8];
    obj = [*(a1 + 40) embeddingResults];
    v18 = [v65 stringWithFormat:@"Text embedding generation failed (%lu results): %@", objc_msgSend(obj, "count"), v6];
    v112[0] = v18;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:&v111 count:1];
    v66 = [v64 errorWithDomain:@"com.apple.SpotlightEmbedding.EmbeddingModelError" code:-8005 userInfo:v29];
    v67 = *(*(a1 + 80) + 8);
    v28 = *(v67 + 40);
    *(v67 + 40) = v66;
LABEL_48:

LABEL_49:
    v68 = dispatch_time(0, 0);
    v69 = *(a1 + 128);
    *&v70 = v68 - *(a1 + 120);
    if (v69 && !*(a1 + 136))
    {
      *v69 += *&v70;
    }

    if (!*(*(*(a1 + 80) + 8) + 40) && [*(*(*(a1 + 96) + 8) + 40) count])
    {
      v71 = v6;
      if ((*(a1 + 112) | 0x8000000000000000) == 0xFFFFFFFFFFFFFFFFLL)
      {
        v72 = [objc_opt_class() log];
        v73 = 1;
        if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          v74 = [*(*(*(a1 + 96) + 8) + 40) count];
          *buf = 134218496;
          v99 = v74;
          v100 = 2048;
          v101 = v70;
          v102 = 1024;
          LODWORD(v103) = v90;
          _os_log_impl(&dword_26B793000, v72, OS_LOG_TYPE_INFO, "Successfully generated %lu text embeddings (time=%lldns), requestID: %d", buf, 0x1Cu);
        }
      }

      else
      {
        v72 = [objc_opt_class() log];
        if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
        {
          v78 = *(a1 + 112);
          *buf = 134218496;
          v99 = v78;
          v100 = 2048;
          v101 = v70;
          v102 = 1024;
          LODWORD(v103) = v90;
          _os_log_impl(&dword_26B793000, v72, OS_LOG_TYPE_INFO, "[qid=%ld] Successfully generated a text embedding (time=%lldns), requestID: %d", buf, 0x1Cu);
        }

        v73 = 2;
      }

      sendSpotlightEmbeddingAnalyticsEvent(0, v73, *(a1 + 48));
      v6 = v71;
    }

    if (*(a1 + 112) == 0x7FFFFFFFFFFFFFFFLL)
    {
      v79 = 6;
    }

    else
    {
      v79 = 10;
    }

    v80 = [MEMORY[0x277CC3468] sharedInstance];
    [v80 logWithBundleID:*(a1 + 64) indexOperation:v79 itemCount:1 code:0];
  }

  dispatch_group_leave(*(a1 + 32));
}

@end