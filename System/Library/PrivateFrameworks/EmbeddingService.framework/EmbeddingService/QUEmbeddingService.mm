@interface QUEmbeddingService
+ (BOOL)isUnitTested;
+ (id)log;
+ (id)signpostLog;
- (QUEmbeddingService)initWithLocale:(id)locale version:(id)version;
- (_NSRange)icuRangeOfString:(id)string range:(_NSRange)range query:(id)query;
- (_NSRange)rangeOfSubtoken:(id)subtoken range:(_NSRange)range query:(id)query;
- (void)dealloc;
- (void)getEmbeddingForQuery:(id)query completionHandler:(id)handler;
- (void)loadWithCompletionHandler:(id)handler;
@end

@implementation QUEmbeddingService

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__QUEmbeddingService_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken != -1)
  {
    dispatch_once(&log_onceToken, block);
  }

  v2 = log_log;

  return v2;
}

void __25__QUEmbeddingService_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.queryunderstanding", [v4 UTF8String]);
  v3 = log_log;
  log_log = v2;
}

+ (id)signpostLog
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__QUEmbeddingService_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signpostLog_onceToken != -1)
  {
    dispatch_once(&signpostLog_onceToken, block);
  }

  v2 = signpostLog_log;

  return v2;
}

void __33__QUEmbeddingService_signpostLog__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.spotlight.QueryParser", [v4 UTF8String]);
  v3 = signpostLog_log;
  signpostLog_log = v2;
}

+ (BOOL)isUnitTested
{
  if (isUnitTested_onceToken != -1)
  {
    +[QUEmbeddingService isUnitTested];
  }

  return isUnitTested_isUnitTested;
}

void __34__QUEmbeddingService_isUnitTested__block_invoke()
{
  v0 = NSClassFromString(&cfstr_Xctestprobe.isa);
  if (v0)
  {
    v1 = v0;
    v2 = NSSelectorFromString(&cfstr_Istesting.isa);
    v4 = [(objc_class *)v1 methodSignatureForSelector:v2];
    v3 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v4];
    [v3 setSelector:v2];
    [v3 invokeWithTarget:v1];
    [v3 getReturnValue:&isUnitTested_isUnitTested];
  }
}

- (QUEmbeddingService)initWithLocale:(id)locale version:(id)version
{
  localeCopy = locale;
  versionCopy = version;
  v21.receiver = self;
  v21.super_class = QUEmbeddingService;
  v9 = [(QUEmbeddingService *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_locale, locale);
    v11 = [versionCopy copy];
    version = v10->_version;
    v10->_version = v11;

    gotLoadHelper_x8__OBJC_CLASS___CDMClient(v13);
    v15 = objc_alloc_init(*(v14 + 2880));
    cdmClient = v10->_cdmClient;
    v10->_cdmClient = v15;

    v10->_icuCollator = 0;
    languageCode = [localeCopy languageCode];
    v18 = [languageCode isEqualToString:@"tr"];

    if (v18)
    {
      localeIdentifier = [localeCopy localeIdentifier];
      [localeIdentifier UTF8String];
      v10->_icuCollator = ucol_open();

      ucol_setAttribute();
      ucol_setAttribute();
      ucol_setAttribute();
    }
  }

  return v10;
}

- (void)dealloc
{
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_249FBC000, v3, OS_LOG_TYPE_DEFAULT, "[QPNLU] Deallocating QUEmbeddingService and releasing CDMClient", buf, 2u);
  }

  if (self->_icuCollator)
  {
    ucol_close();
  }

  free(self->_icuQueryBuffer);
  free(self->_icuPatternBuffer);
  v4.receiver = self;
  v4.super_class = QUEmbeddingService;
  [(QUEmbeddingService *)&v4 dealloc];
}

- (_NSRange)icuRangeOfString:(id)string range:(_NSRange)range query:(id)query
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  queryCopy = query;
  if (stringCopy && [stringCopy length] && self->_icuCollator)
  {
    self->_icuQueryBuffer = malloc_type_realloc(self->_icuQueryBuffer, 2 * [queryCopy length], 0x1000040BDFB0063uLL);
    v11 = malloc_type_realloc(self->_icuPatternBuffer, 2 * [stringCopy length], 0x1000040BDFB0063uLL);
    v12 = 0;
    self->_icuPatternBuffer = v11;
    icuQueryBuffer = self->_icuQueryBuffer;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    if (icuQueryBuffer)
    {
      if (v11)
      {
        [queryCopy getCharacters:icuQueryBuffer range:{0, objc_msgSend(queryCopy, "length")}];
        [stringCopy getCharacters:self->_icuPatternBuffer range:{0, objc_msgSend(stringCopy, "length")}];
        [stringCopy length];
        [queryCopy length];
        v15 = usearch_openFromCollator();
        usearch_setAttribute();
        v12 = 0;
        v14 = 0x7FFFFFFFFFFFFFFFLL;
        if (v15)
        {
          usearch_setOffset();
          v12 = 0;
          v16 = usearch_following();
          if (v16 != -1)
          {
            MatchedLength = usearch_getMatchedLength();
            if (MatchedLength + v16 <= location + length)
            {
              v14 = v16;
              v12 = MatchedLength;
            }

            else
            {
              v12 = 0;
            }
          }

          usearch_close();
        }
      }
    }
  }

  else
  {
    v12 = 0;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v18 = v14;
  v19 = v12;
  result.length = v19;
  result.location = v18;
  return result;
}

- (_NSRange)rangeOfSubtoken:(id)subtoken range:(_NSRange)range query:(id)query
{
  length = range.length;
  location = range.location;
  subtokenCopy = subtoken;
  queryCopy = query;
  v11 = [queryCopy rangeOfString:subtokenCopy options:129 range:location locale:{length, self->_locale}];
  v13 = v12;
  languageCode = [(NSLocale *)self->_locale languageCode];
  v15 = [languageCode isEqualToString:@"tr"];

  if (v15)
  {
    v16 = [queryCopy rangeOfString:subtokenCopy options:129 range:{location, length}];
    if (v16 < v11)
    {
      v13 = v17;
      v11 = v16;
    }

    queryCopy = [(QUEmbeddingService *)self icuRangeOfString:subtokenCopy range:location query:length, queryCopy];
    if (queryCopy < v11)
    {
      v13 = v19;
      v11 = queryCopy;
    }
  }

  v20 = v11;
  v21 = v13;
  result.length = v21;
  result.location = v20;
  return result;
}

- (void)loadWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = gTestEmbeddings;
  if (gTestEmbeddings)
  {
    localeIdentifier = [(NSLocale *)self->_locale localeIdentifier];
    v7 = [v5 objectForKeyedSubscript:localeIdentifier];

    v8 = dispatch_get_global_queue(0, 0);
    if (v7)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__QUEmbeddingService_loadWithCompletionHandler___block_invoke;
      block[3] = &unk_278FC0CA0;
      v23 = handlerCopy;
      dispatch_async(v8, block);

      v9 = v23;
    }

    else
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __48__QUEmbeddingService_loadWithCompletionHandler___block_invoke_2;
      v20[3] = &unk_278FC0CA0;
      v21 = handlerCopy;
      dispatch_async(v8, v20);

      v9 = v21;
    }
  }

  else
  {
    v10 = [objc_opt_class() log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_249FBC000, v10, OS_LOG_TYPE_INFO, "[QPNLU] Setting up CDMClient", buf, 2u);
    }

    signpostLog = [objc_opt_class() signpostLog];
    signpostLog2 = [objc_opt_class() signpostLog];
    v13 = os_signpost_id_make_with_pointer(signpostLog2, self);

    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(signpostLog))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_249FBC000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v13, "CDMClient setup", &unk_249FBF3B3, buf, 2u);
    }

    version = self->_version;
    cdmClient = self->_cdmClient;
    locale = self->_locale;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __48__QUEmbeddingService_loadWithCompletionHandler___block_invoke_99;
    v17[3] = &unk_278FC0CC8;
    v17[4] = self;
    v18 = handlerCopy;
    [(CDMClient *)cdmClient setupWithLocale:locale embeddingVersion:version completionHandler:v17];
    v9 = v18;
  }
}

void __48__QUEmbeddingService_loadWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"QUEmbeddingServiceTestError" code:-1 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void __48__QUEmbeddingService_loadWithCompletionHandler___block_invoke_99(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() signpostLog];
  v5 = [objc_opt_class() signpostLog];
  v6 = os_signpost_id_make_with_pointer(v5, *(a1 + 32));

  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_249FBC000, v4, OS_SIGNPOST_INTERVAL_END, v6, "CDMClient setup", &unk_249FBF3B3, v7, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)getEmbeddingForQuery:(id)query completionHandler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  handlerCopy = handler;
  if (gTestEmbeddings)
  {
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_249FBC000, v8, OS_LOG_TYPE_DEBUG, "Use embedding from test data", buf, 2u);
    }

    v9 = [gTestEmbeddings objectForKeyedSubscript:queryCopy];
    v10 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__QUEmbeddingService_getEmbeddingForQuery_completionHandler___block_invoke;
    block[3] = &unk_278FC0CF0;
    v11 = &v26;
    v12 = &v25;
    v25 = v9;
    v26 = handlerCopy;
    v13 = v9;
    v14 = handlerCopy;
    dispatch_async(v10, block);
  }

  else
  {
    v13 = self->_locale;
    signpostLog = [objc_opt_class() signpostLog];
    signpostLog2 = [objc_opt_class() signpostLog];
    v17 = os_signpost_id_make_with_pointer(signpostLog2, self);

    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(signpostLog))
    {
      *buf = 138412290;
      v28 = queryCopy;
      _os_signpost_emit_with_name_impl(&dword_249FBC000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v17, "CDMClient getEmbeddingForQuery", "Query = %@", buf, 0xCu);
    }

    cdmClient = self->_cdmClient;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __61__QUEmbeddingService_getEmbeddingForQuery_completionHandler___block_invoke_101;
    v21[3] = &unk_278FC0D18;
    v11 = &v23;
    v23 = handlerCopy;
    v12 = v22;
    v19 = queryCopy;
    v22[0] = v19;
    v22[1] = self;
    v20 = handlerCopy;
    [(CDMClient *)cdmClient processEmbeddingRequest:v19 completionHandler:v21];
  }
}

void __61__QUEmbeddingService_getEmbeddingForQuery_completionHandler___block_invoke_101(uint64_t a1, void *a2, void *a3)
{
  v89 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    (*(*(a1 + 48) + 16))();
    goto LABEL_67;
  }

  v8 = [MEMORY[0x277CBEB18] array];
  v69 = [MEMORY[0x277CBEB18] array];
  v68 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v69, "count")}];
  v67 = [MEMORY[0x277CBEB18] array];
  v9 = [v5 subwordTokenChain];
  v10 = [MEMORY[0x277CCAB68] string];
  v77 = [*(a1 + 32) length];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v11 = [v9 subwordTokens];
  v66 = v8;
  v76 = a1;
  v72 = [v11 countByEnumeratingWithState:&v80 objects:v88 count:16];
  if (!v72)
  {
    goto LABEL_47;
  }

  v63 = v9;
  v64 = v5;
  v73 = 0;
  v12 = 0;
  v65 = 0;
  v74 = 0;
  v13 = 0;
  obj = v11;
  v71 = *v81;
  v75 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    for (i = 0; i != v72; ++i)
    {
      if (*v81 != v71)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v80 + 1) + 8 * i);
      v16 = [v15 value];
      [v8 addObject:v16];

      if ([v15 tokenIndex] == v13)
      {
        ++v74;
      }

      else
      {
        if (v13 >= 1)
        {
          v17 = [v10 copy];
          [v69 addObject:v17];

          v18 = [MEMORY[0x277CCABB0] numberWithInt:v74];
          [v67 addObject:v18];

          v19 = [MEMORY[0x277CCAE60] valueWithRange:{v75, v73}];
          [v68 addObject:v19];
        }

        v20 = [MEMORY[0x277CCAB68] string];

        v13 = [v15 tokenIndex];
        v73 = 0;
        v74 = 1;
        v75 = 0x7FFFFFFFFFFFFFFFLL;
        v10 = v20;
      }

      v21 = [v15 value];
      v22 = [v21 characterAtIndex:0];
      if (v22 == 9601)
      {
        v23 = [v21 substringFromIndex:1];

        v21 = v23;
      }

      [v10 appendString:v21];
      v24 = [*(a1 + 40) rangeOfSubtoken:v21 range:v12 query:{v77 - v12, *(a1 + 32)}];
      if (v24 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v26 = v12;
        if ([v21 length] == 1)
        {
          v27 = [MEMORY[0x277CCA900] punctuationCharacterSet];
          v28 = [v27 characterIsMember:{objc_msgSend(v21, "characterAtIndex:", 0)}];

          v26 = v12;
          if (v28)
          {
            v26 = v12;
            if (v77 > v12)
            {
              v26 = v12;
              while (1)
              {
                v29 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
                v30 = [v29 characterIsMember:{objc_msgSend(*(v76 + 32), "characterAtIndex:", v26)}];

                if (!v30)
                {
                  break;
                }

                if (v77 == ++v26)
                {
                  v26 = v77;
                  goto LABEL_32;
                }
              }

              v33 = [MEMORY[0x277CCA900] punctuationCharacterSet];
              v34 = [v33 characterIsMember:{objc_msgSend(*(v76 + 32), "characterAtIndex:", v26)}];

              if (v34)
              {
                v25 = 1;
                v8 = v66;
                a1 = v76;
                goto LABEL_24;
              }

LABEL_32:
              v8 = v66;
            }
          }
        }

        if ([v21 isEqualToString:@"[CLS]"])
        {
          v12 = v26;
          a1 = v76;
        }

        else
        {
          a1 = v76;
          if (([v21 isEqualToString:@"[SEP]"] & 1) == 0 && (objc_msgSend(v21, "isEqualToString:", &stru_285D23990) & 1) == 0)
          {
            v35 = [objc_opt_class() log];
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v90.location = v12;
              v90.length = v77 - v12;
              v36 = NSStringFromRange(v90);
              *buf = 138412546;
              v85 = v21;
              v86 = 2112;
              v87 = v36;
              _os_log_impl(&dword_249FBC000, v35, OS_LOG_TYPE_DEFAULT, "[QPNLU] Could not find %@ with range %@", buf, 0x16u);

              a1 = v76;
            }

            v65 = 1;
          }

          v12 = v26;
        }
      }

      else
      {
        v26 = v24;
LABEL_24:
        v31 = v75;
        v32 = v75 == 0x7FFFFFFFFFFFFFFFLL || v22 == 9601;
        if (v32)
        {
          v31 = v26;
        }

        v12 = v26 + v25;
        v75 = v31;
        v73 = v26 + v25 - v31;
      }
    }

    v72 = [obj countByEnumeratingWithState:&v80 objects:v88 count:16];
  }

  while (v72);

  if (v65)
  {
    v11 = [objc_opt_class() log];
    v5 = v64;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_249FBC000, v11, OS_LOG_TYPE_FAULT, "[QPNLU] Could not find ranges of one or more tokens in the input query string.", buf, 2u);
    }

    v9 = v63;
LABEL_47:

    goto LABEL_49;
  }

  v9 = v63;
  v5 = v64;
LABEL_49:
  v37 = [v5 subwordTokenEmbedding];
  v38 = [v37 embeddingTensor];
  v79 = 0;
  v39 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_285D23EF0 dataType:65568 error:&v79];
  v7 = v79;
  if ([v38 embeddingDim] == 192 && (v40 = objc_msgSend(v38, "numToken"), objc_msgSend(v9, "subwordTokens"), v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v41, "count") - 2, v41, v32 = v40 == v42, v8 = v66, v32))
  {
    for (j = 0; j != 5376; ++j)
    {
      [v39 setObject:&unk_285D23F08 atIndexedSubscript:j];
    }

    v44 = [v38 numToken];
    if ([v38 embeddingDim] * v44)
    {
      v45 = 0;
      do
      {
        v46 = MEMORY[0x277CCABB0];
        LODWORD(v47) = *([v38 values] + 4 * v45);
        v48 = [v46 numberWithFloat:v47];
        [v39 setObject:v48 atIndexedSubscript:v45 + 192];

        ++v45;
        v49 = [v38 numToken];
      }

      while ([v38 embeddingDim] * v49 > v45);
    }

    v78 = v10;
    v50 = objc_alloc_init(QUEmbeddingOutput);
    [(QUEmbeddingOutput *)v50 setEmbedding:v39];
    v51 = [v69 copy];
    [(QUEmbeddingOutput *)v50 setTokens:v51];

    v52 = [v68 copy];
    [(QUEmbeddingOutput *)v50 setTokenRanges:v52];

    v53 = [v67 copy];
    [(QUEmbeddingOutput *)v50 setSubtokenLenForTokens:v53];

    v54 = [v66 subarrayWithRange:{1, objc_msgSend(v66, "count") - 2}];
    [(QUEmbeddingOutput *)v50 setSubtokens:v54];

    v55 = [objc_opt_class() log];
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      v56 = [(QUEmbeddingOutput *)v50 tokens];
      v57 = [(QUEmbeddingOutput *)v50 tokenRanges];
      *buf = 138740227;
      v85 = v56;
      v86 = 2112;
      v87 = v57;
      _os_log_impl(&dword_249FBC000, v55, OS_LOG_TYPE_INFO, "[QPNLU] QUEmbeddingOutput: tokens: %{sensitive}@, tokenRanges: %@", buf, 0x16u);
    }

    v58 = [objc_opt_class() signpostLog];
    v59 = [objc_opt_class() signpostLog];
    v60 = os_signpost_id_make_with_pointer(v59, *(v76 + 40));

    if (v60 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_249FBC000, v58, OS_SIGNPOST_INTERVAL_END, v60, "CDMClient getEmbeddingForQuery", &unk_249FBF3B3, buf, 2u);
    }

    (*(*(v76 + 48) + 16))();
    v8 = v66;
    v10 = v78;
  }

  else
  {
    v61 = [objc_opt_class() log];
    if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
    {
      v62 = *(v76 + 32);
      *buf = 138412290;
      v85 = v62;
      _os_log_impl(&dword_249FBC000, v61, OS_LOG_TYPE_FAULT, "[QPNLU] Invalid embedding from query: %@", buf, 0xCu);
    }

    v50 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.QueryParser.QUEmbeddingServiceError" code:-1001 userInfo:0];
    (*(*(v76 + 48) + 16))();
  }

LABEL_67:
}

@end