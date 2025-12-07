@interface U2OwlModel
+ (id)log;
- (NSDictionary)modelMetadata;
- (U2OwlModel)initWithLocale:(id)locale;
- (void)getUnderstandingForQueryString:(id)string queryID:(int64_t)d spans:(id)spans intentHint:(id)hint withCompletionHandler:(id)handler;
- (void)loadWithCompletionHandler:(id)handler;
@end

@implementation U2OwlModel

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __17__U2OwlModel_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_0 != -1)
  {
    dispatch_once(&log_onceToken_0, block);
  }

  v2 = log_log_0;

  return v2;
}

void __17__U2OwlModel_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.queryunderstanding", [v4 UTF8String]);
  v3 = log_log_0;
  log_log_0 = v2;
}

- (U2OwlModel)initWithLocale:(id)locale
{
  localeCopy = locale;
  v11.receiver = self;
  v11.super_class = U2OwlModel;
  v6 = [(U2OwlModel *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locale, locale);
    v8 = [[U2HeadWrapper alloc] initWithLocale:localeCopy];
    u2headWrapper = v7->_u2headWrapper;
    v7->_u2headWrapper = v8;
  }

  return v7;
}

- (void)loadWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [objc_opt_class() log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2615A2000, v5, OS_LOG_TYPE_DEBUG, "[QPNLU] Loading OWLBERT EmbeddingService", buf, 2u);
  }

  objc_initWeak(buf, self);
  v6 = [objc_opt_class() log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v12 = 0;
    _os_log_impl(&dword_2615A2000, v6, OS_LOG_TYPE_DEBUG, "[QPNLU] Loading U2Head", v12, 2u);
  }

  u2headWrapper = self->_u2headWrapper;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__U2OwlModel_loadWithCompletionHandler___block_invoke;
  v9[3] = &unk_279ADA848;
  objc_copyWeak(&v11, buf);
  v9[4] = self;
  v8 = handlerCopy;
  v10 = v8;
  [(U2HeadWrapper *)u2headWrapper loadWithCompletionHandler:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __40__U2OwlModel_loadWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = [objc_opt_class() log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v19 = v3;
      _os_log_impl(&dword_2615A2000, v6, OS_LOG_TYPE_DEBUG, "[QPNLU] Failed to load U2Head error: %@", buf, 0xCu);
    }

    v7 = *(a1 + 40);
    if (v7 && v5)
    {
      (*(v7 + 16))(v7, v5, v3);
    }
  }

  else
  {
    v8 = [*(WeakRetained + 2) metadata];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CBFE90]];
    v10 = [v9 objectForKeyedSubscript:@"nlx_embeddings_version"];

    v11 = [objc_alloc(MEMORY[0x277D072C8]) initWithLocale:v5[3] version:v10];
    v12 = v5[1];
    v5[1] = v11;

    v13 = v5[1];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __40__U2OwlModel_loadWithCompletionHandler___block_invoke_4;
    v15[3] = &unk_279ADA848;
    objc_copyWeak(&v17, (a1 + 48));
    v14 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v16 = v14;
    [v13 loadWithCompletionHandler:v15];

    objc_destroyWeak(&v17);
  }
}

void __40__U2OwlModel_loadWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (v3)
  {
    v5 = [objc_opt_class() log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_2615A2000, v5, OS_LOG_TYPE_ERROR, "[QPNLU] Failed to load EmbeddingService error: %@", &v8, 0xCu);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = WeakRetained == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    (*(v6 + 16))(v6, WeakRetained, v3);
  }
}

- (NSDictionary)modelMetadata
{
  metadata = [(U2HeadWrapper *)self->_u2headWrapper metadata];
  v3 = [metadata objectForKeyedSubscript:*MEMORY[0x277CBFE90]];

  return v3;
}

- (void)getUnderstandingForQueryString:(id)string queryID:(int64_t)d spans:(id)spans intentHint:(id)hint withCompletionHandler:(id)handler
{
  stringCopy = string;
  spansCopy = spans;
  hintCopy = hint;
  handlerCopy = handler;
  v16 = mach_absolute_time();
  embeddingService = self->_embeddingService;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __92__U2OwlModel_getUnderstandingForQueryString_queryID_spans_intentHint_withCompletionHandler___block_invoke;
  v22[3] = &unk_279ADA870;
  v26 = handlerCopy;
  v27 = v16;
  v22[4] = self;
  v23 = stringCopy;
  dCopy = d;
  v24 = spansCopy;
  v25 = hintCopy;
  v18 = hintCopy;
  v19 = spansCopy;
  v20 = stringCopy;
  v21 = handlerCopy;
  [(QUEmbeddingService *)embeddingService getEmbeddingForQuery:v20 completionHandler:v22];
}

void __92__U2OwlModel_getUnderstandingForQueryString_queryID_spans_intentHint_withCompletionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[9];
  v8 = mach_absolute_time();
  if (QPTimingNanosecondsSinceAbsoluteTime_onceToken == -1)
  {
    if (v6)
    {
LABEL_3:
      (*(a1[8] + 16))();
      goto LABEL_8;
    }
  }

  else
  {
    __92__U2OwlModel_getUnderstandingForQueryString_queryID_spans_intentHint_withCompletionHandler___block_invoke_cold_1();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  v9 = *(a1[4] + 16);
  v26 = (v8 - v7) * QPTimingNanosecondsSinceAbsoluteTime_sTimebaseInfo / *algn_280B233CC;
  v10 = [v5 embedding];
  v11 = a1[5];
  v24 = a1[6];
  v25 = a1[10];
  v12 = [v5 tokens];
  v13 = [v5 tokenRanges];
  v14 = [v5 subtokenLenForTokens];
  v15 = [v5 subtokens];
  v16 = a1[7];
  v27 = 0;
  v17 = v9;
  v18 = v10;
  v19 = [v17 getU2PredictionsForEmbedding:v10 queryString:v11 queryID:v25 spans:v24 tokens:v12 tokenRanges:v13 subtokenLenForTokens:v14 subtokens:v15 intentHint:v16 error:&v27];
  v20 = v27;

  v21 = [v5 tokenRanges];
  [v19 setTokenRanges:v21];

  [v19 setEmbeddingsTime:v26];
  v22 = a1[9];
  v23 = mach_absolute_time();
  if (QPTimingNanosecondsSinceAbsoluteTime_onceToken != -1)
  {
    __92__U2OwlModel_getUnderstandingForQueryString_queryID_spans_intentHint_withCompletionHandler___block_invoke_cold_2();
  }

  [v19 setPredictionTime:(v23 - v22) * QPTimingNanosecondsSinceAbsoluteTime_sTimebaseInfo / *algn_280B233CC];
  (*(a1[8] + 16))();

LABEL_8:
}

@end