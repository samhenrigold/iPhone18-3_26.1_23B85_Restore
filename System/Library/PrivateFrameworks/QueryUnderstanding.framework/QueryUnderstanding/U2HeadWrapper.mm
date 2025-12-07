@interface U2HeadWrapper
+ (id)log;
+ (id)signpostLog;
- (NSDictionary)metadata;
- (U2HeadWrapper)initWithLocale:(id)locale;
- (id)argmaxWithIndex:(id)index;
- (id)assetURL;
- (id)getU2PredictionsForEmbedding:(id)embedding queryString:(id)string queryID:(int64_t)d spans:(id)spans tokens:(id)tokens tokenRanges:(id)ranges subtokenLenForTokens:(id)forTokens subtokens:(id)self0 intentHint:(id)self1 error:(id *)self2;
- (id)mapLogitsToLabels:(id)labels queryString:(id)string queryID:(int64_t)d intentHint:(id)hint tokens:(id)tokens subtokenLenForTokens:(id)forTokens subtokens:(id)subtokens;
- (vector<float,)getTokenScoresfromScoreTensor:(U2HeadWrapper *)self intentIndex:(SEL)index tokens:(id)tokens subtokenLenForTokens:(int)forTokens subtokens:(id)subtokens scoreFromSubtokenScores:(id)scores;
- (void)loadWithCompletionHandler:(id)handler;
@end

@implementation U2HeadWrapper

+ (id)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __20__U2HeadWrapper_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[U2HeadWrapper log]::onceToken != -1)
  {
    dispatch_once(&+[U2HeadWrapper log]::onceToken, block);
  }

  v2 = +[U2HeadWrapper log]::log;

  return v2;
}

void __20__U2HeadWrapper_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.queryunderstanding", [v3 UTF8String]);
  v2 = +[U2HeadWrapper log]::log;
  +[U2HeadWrapper log]::log = v1;
}

+ (id)signpostLog
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__U2HeadWrapper_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[U2HeadWrapper signpostLog]::onceToken != -1)
  {
    dispatch_once(&+[U2HeadWrapper signpostLog]::onceToken, block);
  }

  v2 = +[U2HeadWrapper signpostLog]::log;

  return v2;
}

void __28__U2HeadWrapper_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.spotlight.QueryParser", [v3 UTF8String]);
  v2 = +[U2HeadWrapper signpostLog]::log;
  +[U2HeadWrapper signpostLog]::log = v1;
}

- (U2HeadWrapper)initWithLocale:(id)locale
{
  localeCopy = locale;
  v9.receiver = self;
  v9.super_class = U2HeadWrapper;
  v6 = [(U2HeadWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_locale, locale);
  }

  return v7;
}

- (NSDictionary)metadata
{
  model = [(U2Head *)self->_u2Head model];
  modelDescription = [model modelDescription];
  metadata = [modelDescription metadata];

  return metadata;
}

- (id)assetURL
{
  v29[1] = *MEMORY[0x277D85DE8];
  if (gUseSpotlightResources == 1)
  {
    mEMORY[0x277D657E8] = [MEMORY[0x277D657E8] sharedResourcesManager];
    localeIdentifier = [(NSLocale *)self->_locale localeIdentifier];
    v5 = [localeIdentifier isEqualToString:@"en-IN"];

    if (v5)
    {
      v6 = @"QueryUnderstanding_IN";
      goto LABEL_12;
    }

    localeIdentifier2 = [(NSLocale *)self->_locale localeIdentifier];
    if ([localeIdentifier2 isEqualToString:@"zh-Hant-TW"])
    {
    }

    else
    {
      localeIdentifier3 = [(NSLocale *)self->_locale localeIdentifier];
      v14 = [localeIdentifier3 isEqualToString:@"zh-TW"];

      if ((v14 & 1) == 0)
      {
        localeIdentifier4 = [(NSLocale *)self->_locale localeIdentifier];
        if ([localeIdentifier4 isEqualToString:@"zh-Hant-HK"])
        {
        }

        else
        {
          localeIdentifier5 = [(NSLocale *)self->_locale localeIdentifier];
          v24 = [localeIdentifier5 isEqualToString:@"zh-HK"];

          if (!v24)
          {
            v6 = @"QueryUnderstanding";
            goto LABEL_12;
          }
        }

        v6 = @"QueryUnderstanding_HK";
LABEL_12:
        v28 = @"SRResourcesOwner";
        v29[0] = v6;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
        v16 = [mEMORY[0x277D657E8] resourcesForClient:@"Parser" locale:self->_locale options:v15];
        v25 = 0;
        v17 = [v16 filePathArrayForKey:v6 didFailWithError:&v25];
        v18 = v25;
        if (v18)
        {
          v19 = [objc_opt_class() log];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v27 = v18;
            _os_log_impl(&dword_2615A2000, v19, OS_LOG_TYPE_ERROR, "[QPNLU] Failed to find U2 Model in resource Error: %@", buf, 0xCu);
          }
        }

        firstObject = [v17 firstObject];
        if (firstObject)
        {
          v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:firstObject];
        }

        else
        {
          v9 = 0;
        }

        goto LABEL_20;
      }
    }

    v6 = @"QueryUnderstanding_TW";
    goto LABEL_12;
  }

  v7 = gU2HeadBundle;
  localeIdentifier6 = [(NSLocale *)self->_locale localeIdentifier];
  v9 = [v7 URLForResource:@"U2Head" withExtension:@"mlmodelc" subdirectory:0 localization:localeIdentifier6];

  if (v9)
  {
    goto LABEL_21;
  }

  v10 = [objc_opt_class() log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v27 = 0;
    _os_log_impl(&dword_2615A2000, v10, OS_LOG_TYPE_INFO, "[QPNLU] Couldnt find asset in %@", buf, 0xCu);
  }

  v11 = gU2HeadBundle;
  mEMORY[0x277D657E8] = [(NSLocale *)self->_locale languageCode];
  v9 = [v11 URLForResource:@"U2Head" withExtension:@"mlmodelc" subdirectory:0 localization:mEMORY[0x277D657E8]];
LABEL_20:

LABEL_21:

  return v9;
}

- (void)loadWithCompletionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  signpostLog = [objc_opt_class() signpostLog];
  signpostLog2 = [objc_opt_class() signpostLog];
  v7 = os_signpost_id_make_with_pointer(signpostLog2, self);

  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(signpostLog))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2615A2000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v7, "U2Head initialization", &unk_2615AA725, buf, 2u);
  }

  v8 = objc_alloc_init(MEMORY[0x277CBFF38]);
  [v8 setComputeUnits:0];
  [v8 setExperimentalMLE5EngineUsage:0];
  assetURL = [(U2HeadWrapper *)self assetURL];
  v10 = [objc_opt_class() log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    path = [assetURL path];
    *buf = 138412290;
    v16 = path;
    _os_log_impl(&dword_2615A2000, v10, OS_LOG_TYPE_DEFAULT, "[QPNLU] Loading U2Head from %@", buf, 0xCu);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __43__U2HeadWrapper_loadWithCompletionHandler___block_invoke;
  v13[3] = &unk_279ADA248;
  v13[4] = self;
  v12 = handlerCopy;
  v14 = v12;
  [U2Head loadContentsOfURL:assetURL configuration:v8 completionHandler:v13];
}

void __43__U2HeadWrapper_loadWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v22 = 138412290;
      v23 = v7;
      _os_log_impl(&dword_2615A2000, v8, OS_LOG_TYPE_ERROR, "[QPNLU] Failed to load U2 Model Error: %@", &v22, 0xCu);
    }
  }

  else
  {
    v9 = [v5 model];
    v10 = [v9 modelDescription];
    v8 = [v10 metadata];

    v11 = [v8 objectForKeyedSubscript:*MEMORY[0x277CBFEA8]];
    v12 = [v11 componentsSeparatedByString:@"."];
    v13 = [v12 firstObject];
    v14 = [v13 isEqualToString:@"5"];

    if (v14)
    {
      v15 = [objc_opt_class() log];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 138412290;
        v23 = v8;
        _os_log_impl(&dword_2615A2000, v15, OS_LOG_TYPE_DEFAULT, "[QPNLU] U2 Model Loaded with metadata: %@", &v22, 0xCu);
      }

      v16 = *(a1 + 32);
      v17 = v5;
      v7 = 0;
      v18 = *(v16 + 16);
      *(v16 + 16) = v17;
    }

    else
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.QueryParser.QUModelError" code:-9001 userInfo:0];
      v18 = [objc_opt_class() log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        v22 = 138412290;
        v23 = v8;
        _os_log_impl(&dword_2615A2000, v18, OS_LOG_TYPE_FAULT, "[QPNLU] Failed to load U2 Model incompatible version. %@", &v22, 0xCu);
      }
    }
  }

  (*(*(a1 + 40) + 16))();
  v19 = [objc_opt_class() signpostLog];
  v20 = [objc_opt_class() signpostLog];
  v21 = os_signpost_id_make_with_pointer(v20, *(a1 + 32));

  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    LOWORD(v22) = 0;
    _os_signpost_emit_with_name_impl(&dword_2615A2000, v19, OS_SIGNPOST_INTERVAL_END, v21, "U2Head initialization", &unk_2615AA725, &v22, 2u);
  }
}

- (id)argmaxWithIndex:(id)index
{
  v15[2] = *MEMORY[0x277D85DE8];
  indexCopy = index;
  v4 = 0;
  v5 = 0;
  v6 = 0.0;
  while ([indexCopy count] > v4)
  {
    v7 = [indexCopy objectAtIndexedSubscript:v4];
    [v7 floatValue];
    v9 = v8;

    if (v9 <= v6)
    {
      v5 = v5;
    }

    else
    {
      v5 = v4;
    }

    if (v9 > v6)
    {
      v6 = v9;
    }

    ++v4;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  v15[0] = v10;
  *&v11 = v6;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v15[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

  return v13;
}

- (vector<float,)getTokenScoresfromScoreTensor:(U2HeadWrapper *)self intentIndex:(SEL)index tokens:(id)tokens subtokenLenForTokens:(int)forTokens subtokens:(id)subtokens scoreFromSubtokenScores:(id)scores
{
  tokensCopy = tokens;
  subtokensCopy = subtokens;
  scoresCopy = scores;
  v46 = a8;
  v15 = a9;
  v45 = subtokensCopy;
  v48 = tokensCopy;
  v44 = [subtokensCopy count];
  shape = [tokensCopy shape];
  v17 = [shape objectAtIndexedSubscript:3];
  LODWORD(tokensCopy) = [v17 intValue];

  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  v41 = tokensCopy;
  std::vector<float>::vector[abi:ne200100](retstr, v44 * tokensCopy);
  v56 = 0;
  v57 = 0;
  v58 = 0;
  LODWORD(v53) = 1065353216;
  std::vector<float>::vector[abi:ne200100](&v56, [v46 count], &v53);
  if (v44)
  {
    v18 = 0;
    v43 = 0;
    do
    {
      v19 = [scoresCopy objectAtIndexedSubscript:v18];
      intValue = [v19 intValue];

      if (intValue >= 2)
      {
        v21 = 0;
        v22 = v43;
        do
        {
          v23 = [v46 objectAtIndexedSubscript:v22];
          v24 = [v23 length];
          v25 = [v45 objectAtIndexedSubscript:v18];
          v26 = [v25 length];
          *(v56 + v22) = ((__PAIR128__(v24, v21) - 1) >> 64) / v26;

          --v21;
          ++v22;
        }

        while (-intValue != v21);
      }

      v43 += intValue;
      ++v18;
    }

    while (v18 != v44);
  }

  v53 = 0;
  v54 = 0;
  v55 = 0;
  std::vector<float>::vector[abi:ne200100](&v53, v44);
  if (v44)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    do
    {
      v30 = [scoresCopy objectAtIndexedSubscript:v28];
      intValue2 = [v30 intValue];

      if (v41 >= 1)
      {
        v32 = 0;
        v33 = v27;
        do
        {
          __p = 0;
          v51 = 0;
          v52 = 0;
          std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v56, v57, (v57 - v56) >> 2);
          v34 = v15[2](v15, v48, forTokens, v32, v29, intValue2, &__p);
          if (__p)
          {
            v51 = __p;
            operator delete(__p);
          }

          *(v53 + v28) = v34 + *(v53 + v28);
          *(retstr->var0 + v33) = v34;
          ++v32;
          v33 += 4;
        }

        while (v41 != v32);
      }

      v29 = (intValue2 + v29);
      ++v28;
      v27 += 4 * v41;
    }

    while (v28 != v44);
    v35 = 0;
    v36 = v53;
    var0 = retstr->var0;
    do
    {
      v38 = v41;
      v39 = var0;
      if (v41 >= 1)
      {
        do
        {
          *v39 = *v39 / v36[v35];
          ++v39;
          --v38;
        }

        while (v38);
      }

      ++v35;
      var0 += v41;
    }

    while (v35 != v44);
    if (v36)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v36 = v53;
    if (v53)
    {
LABEL_20:
      v54 = v36;
      operator delete(v36);
    }
  }

  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }

  return result;
}

- (id)mapLogitsToLabels:(id)labels queryString:(id)string queryID:(int64_t)d intentHint:(id)hint tokens:(id)tokens subtokenLenForTokens:(id)forTokens subtokens:(id)subtokens
{
  v75 = *MEMORY[0x277D85DE8];
  labelsCopy = labels;
  stringCopy = string;
  hintCopy = hint;
  tokensCopy = tokens;
  forTokensCopy = forTokens;
  subtokensCopy = subtokens;
  v44 = labelsCopy;
  top_arg_ids = [labelsCopy top_arg_ids];
  intent_scores = [labelsCopy intent_scores];
  arg_conf_scores = [labelsCopy arg_conf_scores];
  safety_head_scores = [labelsCopy safety_head_scores];
  v16 = [objc_opt_class() log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    *&buf[4] = d;
    *&buf[12] = 2112;
    *&buf[14] = intent_scores;
    *&buf[22] = 2112;
    v72 = top_arg_ids;
    v73 = 2112;
    v74 = arg_conf_scores;
    _os_log_impl(&dword_2615A2000, v16, OS_LOG_TYPE_DEBUG, "[QPNLU][qid=%ld] got U2output-> intentScores: %@; topArgIds: %@; argConfidenceScores: %@", buf, 0x2Au);
  }

  v52 = [(U2HeadWrapper *)self argmaxWithIndex:intent_scores];
  if ([hintCopy intValue] == -1)
  {
    goto LABEL_9;
  }

  if ([hintCopy intValue] < -1 || objc_msgSend(hintCopy, "intValue") >= 25)
  {
    v17 = [objc_opt_class() log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = d;
      _os_log_impl(&dword_2615A2000, v17, OS_LOG_TYPE_ERROR, "[QPNLU][qid=%ld] the supplied intent hint value is out of range and doesnt represent a valid intent. Defaulting back to model predicted intent", buf, 0xCu);
    }

LABEL_9:
    v53 = [v52 objectAtIndexedSubscript:0];
    goto LABEL_10;
  }

  v42 = [objc_opt_class() log];
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    intValue = [hintCopy intValue];
    *buf = 134218240;
    *&buf[4] = d;
    *&buf[12] = 1024;
    *&buf[14] = intValue;
    _os_log_impl(&dword_2615A2000, v42, OS_LOG_TYPE_INFO, "[QPNLU][qid=%ld] Intent Hint Value was supplied as %d", buf, 0x12u);
  }

  v53 = hintCopy;
LABEL_10:
  v48 = [v52 objectAtIndexedSubscript:1];
  v68 = 0;
  v69 = 0;
  v70 = 0;
  [v53 intValue];
  objc_msgSend_getTokenScoresfromScoreTensor_intentIndex_tokens_subtokenLenForTokens_subtokens_scoreFromSubtokenScores_(self);
  v58 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(tokensCopy, "count")}];
  v57 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(tokensCopy, "count")}];
  shape = [arg_conf_scores shape];
  v19 = [shape objectAtIndexedSubscript:3];
  intValue2 = [v19 intValue];

  v60 = 0;
  v20 = 0;
  while ([tokensCopy count] > v20)
  {
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    v61 = v20;
    if (intValue2 < 1)
    {
      v24 = 0;
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v25 = v60;
      do
      {
        v26 = *(v68 + v25);
        if (v26 >= 0.02)
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          LOBYTE(v72) = 0;
          v62[0] = MEMORY[0x277D85DD0];
          v62[1] = 3221225472;
          v62[2] = __104__U2HeadWrapper_mapLogitsToLabels_queryString_queryID_intentHint_tokens_subtokenLenForTokens_subtokens___block_invoke;
          v62[3] = &unk_279ADA290;
          v66 = v26;
          v27 = array2;
          v63 = v27;
          v28 = array;
          v67 = v23;
          v64 = v28;
          v65 = buf;
          [v27 enumerateObjectsUsingBlock:v62];
          if ((*(*&buf[8] + 24) & 1) == 0)
          {
            *&v29 = v26;
            v30 = [MEMORY[0x277CCABB0] numberWithFloat:v29];
            [v27 addObject:v30];

            v31 = [MEMORY[0x277CCABB0] numberWithInt:v23];
            [v28 addObject:v31];
          }

          _Block_object_dispose(buf, 8);
        }

        else if (v26 > v68[v24 + v61 * intValue2])
        {
          v24 = v23;
        }

        ++v23;
        v25 += 4;
      }

      while (intValue2 != v23);
    }

    if (![array2 count])
    {
      v32 = [MEMORY[0x277CCABB0] numberWithInt:v24];
      [array addObject:v32];

      *&v33 = v68[v61 * intValue2 + v24];
      v34 = [MEMORY[0x277CCABB0] numberWithFloat:v33];
      [array2 addObject:v34];
    }

    v35 = [array copy];
    [v58 addObject:v35];

    v36 = [array2 copy];
    [v57 addObject:v36];

    v20 = v61 + 1;
    v60 += 4 * intValue2;
  }

  v37 = objc_alloc_init(U2Output);
  [(U2Output *)v37 setIntentId:v53];
  [(U2Output *)v37 setConfidenceScore:v48];
  [(U2Output *)v37 setTokens:tokensCopy];
  v38 = [safety_head_scores objectAtIndexedSubscript:0];
  [(U2Output *)v37 setSafetyScore:v38];

  v39 = [v58 copy];
  [(U2Output *)v37 setArgIdsForTokens:v39];

  v40 = [v57 copy];
  [(U2Output *)v37 setArgScoresForTokens:v40];

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  return v37;
}

void __104__U2HeadWrapper_mapLogitsToLabels_queryString_queryID_intentHint_tokens_subtokenLenForTokens_subtokens___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 56);
  v14 = v7;
  [v7 floatValue];
  if (v8 > *&v9)
  {
    v10 = *(a1 + 32);
    LODWORD(v9) = *(a1 + 56);
    v11 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
    [v10 insertObject:v11 atIndex:a3];

    v12 = *(a1 + 40);
    v13 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 60)];
    [v12 insertObject:v13 atIndex:a3];

    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (id)getU2PredictionsForEmbedding:(id)embedding queryString:(id)string queryID:(int64_t)d spans:(id)spans tokens:(id)tokens tokenRanges:(id)ranges subtokenLenForTokens:(id)forTokens subtokens:(id)self0 intentHint:(id)self1 error:(id *)self2
{
  v84[3] = *MEMORY[0x277D85DE8];
  embeddingCopy = embedding;
  stringCopy = string;
  spansCopy = spans;
  tokensCopy = tokens;
  rangesCopy = ranges;
  forTokensCopy = forTokens;
  subtokensCopy = subtokens;
  hintCopy = hint;
  signpostLog = [objc_opt_class() signpostLog];
  signpostLog2 = [objc_opt_class() signpostLog];
  v19 = os_signpost_id_make_with_pointer(signpostLog2, self);

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(signpostLog))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2615A2000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v19, "U2Head prediction", &unk_2615AA725, buf, 2u);
  }

  v48 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(subtokensCopy, "count")}];
  v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(subtokensCopy, "count")}];
  *buf = 0;
  v76 = buf;
  v77 = 0x2020000000;
  v78 = 0;
  v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(tokensCopy, "count")}];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __139__U2HeadWrapper_getU2PredictionsForEmbedding_queryString_queryID_spans_tokens_tokenRanges_subtokenLenForTokens_subtokens_intentHint_error___block_invoke;
  v68[3] = &unk_279ADA2B8;
  v52 = v21;
  v69 = v52;
  v74 = buf;
  v51 = rangesCopy;
  v70 = v51;
  v50 = spansCopy;
  v71 = v50;
  v63 = v48;
  v72 = v63;
  v62 = v20;
  v73 = v62;
  [forTokensCopy enumerateObjectsUsingBlock:v68];
  v67 = 0;
  v64 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_2873DCE08 dataType:131104 error:&v67];
  v22 = v67;
  for (i = 0; i != 28; ++i)
  {
    if (i >= *(v76 + 6) + 2)
    {
      v24 = &unk_2873DCE38;
    }

    else
    {
      v24 = &unk_2873DCE50;
    }

    [v64 setObject:v24 atIndexedSubscript:i];
  }

  v66 = v22;
  v25 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_2873DCE20 dataType:131104 error:&v66];
  v53 = v66;

  for (j = 0; j != 28; ++j)
  {
    if (j)
    {
      if (j - 1 >= [v63 count])
      {
        bOOLValue = 0;
      }

      else
      {
        v27 = [v63 objectAtIndexedSubscript:j - 1];
        bOOLValue = [v27 BOOLValue];
      }

      if (j - 1 >= [v62 count])
      {
        bOOLValue2 = 0;
      }

      else
      {
        v30 = [v62 objectAtIndexedSubscript:j - 1];
        bOOLValue2 = [v30 BOOLValue];
      }
    }

    else
    {
      bOOLValue2 = 0;
      bOOLValue = 0;
    }

    v31 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
    v84[0] = &unk_2873DCE38;
    v32 = [MEMORY[0x277CCABB0] numberWithInteger:j];
    v84[1] = v32;
    v84[2] = &unk_2873DCE38;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:3];
    [v25 setObject:v31 forKeyedSubscript:v33];

    v34 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue2];
    v83[0] = &unk_2873DCE38;
    v35 = [MEMORY[0x277CCABB0] numberWithInteger:j];
    v83[1] = v35;
    v83[2] = &unk_2873DCE50;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:3];
    [v25 setObject:v34 forKeyedSubscript:v36];
  }

  v37 = [[U2HeadInput alloc] initWithInput_mask:v64 input_span_features:v25 sequence_output:embeddingCopy];
  u2Head = self->_u2Head;
  v65 = v53;
  v39 = [(U2Head *)u2Head predictionFromFeatures:v37 error:&v65];
  v40 = v65;

  if (v39)
  {
    v41 = [(U2HeadWrapper *)self mapLogitsToLabels:v39 queryString:stringCopy queryID:d intentHint:hintCopy tokens:tokensCopy subtokenLenForTokens:forTokensCopy subtokens:subtokensCopy];
    signpostLog3 = [objc_opt_class() signpostLog];
    signpostLog4 = [objc_opt_class() signpostLog];
    v44 = os_signpost_id_make_with_pointer(signpostLog4, self);

    if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(signpostLog3))
    {
      *v79 = 0;
      _os_signpost_emit_with_name_impl(&dword_2615A2000, signpostLog3, OS_SIGNPOST_INTERVAL_END, v44, "U2Head prediction", &unk_2615AA725, v79, 2u);
    }
  }

  else
  {
    v45 = [objc_opt_class() log];
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *v79 = 134218242;
      dCopy = d;
      v81 = 2112;
      v82 = v40;
      _os_log_impl(&dword_2615A2000, v45, OS_LOG_TYPE_ERROR, "[QPNLU][qid=%ld] U2Head prediction error: %@", v79, 0x16u);
    }

    if (error)
    {
      v46 = v40;
      v41 = 0;
      *error = v40;
    }

    else
    {
      v41 = 0;
    }
  }

  _Block_object_dispose(buf, 8);

  return v41;
}

void __139__U2HeadWrapper_getU2PredictionsForEmbedding_queryString_queryID_spans_tokens_tokenRanges_subtokenLenForTokens_subtokens_intentHint_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCABB0] numberWithInt:*(*(*(a1 + 72) + 8) + 24)];
  [v6 addObject:v7];

  *(*(*(a1 + 72) + 8) + 24) += [v5 intValue];
  v8 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  v9 = [v8 rangeValue];
  v11 = v10;

  if (v11)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v12 = [*(a1 + 48) peopleNameRanges];
    v13 = [v12 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v13)
    {
      v14 = *v39;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v39 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = [*(*(&v38 + 1) + 8 * i) rangeValue];
          if (v16 <= v9 && v16 + v17 >= v9 + v11)
          {
            v13 = 1;
            goto LABEL_15;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v38 objects:v43 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v19 = [*(a1 + 48) locationNameRanges];
    v20 = [v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v20)
    {
      v21 = *v35;
      v22 = v9 + v11;
      while (2)
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v35 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v34 + 1) + 8 * j) rangeValue];
          if (v24 <= v9 && v24 + v25 >= v22)
          {
            v27 = 1;
            goto LABEL_28;
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v27 = 0;
LABEL_28:
  }

  else
  {
    v13 = 0;
    v27 = 0;
  }

  for (k = 0; k < [v5 intValue]; ++k)
  {
    v29 = *(a1 + 56);
    v30 = [MEMORY[0x277CCABB0] numberWithBool:v13];
    [v29 addObject:v30];
  }

  for (m = 0; m < [v5 intValue]; ++m)
  {
    v32 = *(a1 + 64);
    v33 = [MEMORY[0x277CCABB0] numberWithBool:v27];
    [v32 addObject:v33];
  }
}

@end