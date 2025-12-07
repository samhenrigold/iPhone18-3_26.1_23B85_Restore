@interface PPTextToTopicTransform
+ (PPTextToTopicTransform)sharedInstance;
- (BOOL)_updateFromAssetData;
- (float)threshold;
- (id)_init;
- (id)_initWithVocabulary:(id)vocabulary weights:(id)weights;
- (id)_payloadForTopic:(unsigned int)topic;
- (unint64_t)outputTopicCount;
- (void)dealloc;
- (void)iterateTopicsForText:(id)text block:(id)block;
@end

@implementation PPTextToTopicTransform

- (unint64_t)outputTopicCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__PPTextToTopicTransform_outputTopicCount__block_invoke;
  v5[3] = &unk_2789752A8;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__42__PPTextToTopicTransform_outputTopicCount__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a2 + 16) outputTopicCount];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (id)_payloadForTopic:(unsigned int)topic
{
  v3 = *&topic;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__14103;
  v13 = __Block_byref_object_dispose__14104;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__PPTextToTopicTransform__payloadForTopic___block_invoke;
  v8[3] = &unk_2789752A8;
  v8[4] = &v9;
  [(_PASLock *)lock runWithLockAcquired:v8];
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  v6 = [v5 payloadForTopic:v3];

  return v6;
}

- (void)iterateTopicsForText:(id)text block:(id)block
{
  textCopy = text;
  blockCopy = block;
  lock = self->_lock;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__PPTextToTopicTransform_iterateTopicsForText_block___block_invoke;
  v12[3] = &unk_2789752F8;
  v12[4] = self;
  v13 = textCopy;
  v14 = blockCopy;
  v15 = a2;
  v10 = blockCopy;
  v11 = textCopy;
  [(_PASLock *)lock runWithLockAcquired:v12];
}

void __53__PPTextToTopicTransform_iterateTopicsForText_block___block_invoke(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v38 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:{4 * objc_msgSend(*(a1 + 32), "outputTopicCount")}];
  v4 = *(a1 + 40);
  v54.length = [(__CFString *)v4 length];
  v54.location = 0;
  v5 = CFStringTokenizerCreate(0, v4, v54, 0, 0);
  if (!v5)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    v32 = *(a1 + 56);
    v33 = *(a1 + 32);
    v34 = NSStringFromSelector(v32);
    [v31 handleFailureInMethod:v32 object:v33 file:@"PPTextToTopicTransform.m" lineNumber:161 description:{@"tokenizer was nil in %@", v34}];
  }

  v6 = objc_opt_new();
  bzero(chars, 0x3E8uLL);
  externalCharactersAllocator = *MEMORY[0x277CBED00];
  MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(0, chars, 0, 500, *MEMORY[0x277CBED00]);
  while (CFStringTokenizerAdvanceToNextToken(v5))
  {
    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v5);
    if (CurrentTokenRange.length <= 500)
    {
      CFStringGetCharacters(*(a1 + 40), CurrentTokenRange, chars);
      CFStringSetExternalCharactersNoCopy(MutableWithExternalCharactersNoCopy, chars, CurrentTokenRange.length, 500);
      CFStringFold(MutableWithExternalCharactersNoCopy, 0x181uLL, 0);
      CFStringNormalize(MutableWithExternalCharactersNoCopy, kCFStringNormalizationFormKC);
      if (CFStringGetCharactersPtr(MutableWithExternalCharactersNoCopy) == chars)
      {
        v9 = [v3[1] payloadForString:MutableWithExternalCharactersNoCopy];
        if (v9)
        {
          v10 = (v9 - 1);
          v11 = MEMORY[0x277CCABB0];
          v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v10];
          v13 = [v6 objectForKeyedSubscript:v12];
          v14 = [v11 numberWithInteger:{objc_msgSend(v13, "integerValue") + 1}];
          v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v10];
          [v6 setObject:v14 forKeyedSubscript:v15];
        }
      }

      else
      {
        CFRelease(MutableWithExternalCharactersNoCopy);
        MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(0, chars, 0, 500, externalCharactersAllocator);
      }
    }
  }

  CFRelease(MutableWithExternalCharactersNoCopy);
  CFRelease(v5);
  if ([v6 count])
  {
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    v16 = malloc_type_malloc(4 * [v6 count], 0x100004052888210uLL);
    if (!v16)
    {
      v35 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v35);
    }

    v49[3] = v16;
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    v17 = malloc_type_malloc(4 * [v6 count], 0x100004052888210uLL);
    if (!v17)
    {
      v36 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v36);
    }

    v45[3] = v17;
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __53__PPTextToTopicTransform_iterateTopicsForText_block___block_invoke_2;
    v39[3] = &unk_2789752D0;
    v39[4] = &v48;
    v39[5] = &v40;
    v39[6] = &v44;
    [v6 enumerateKeysAndObjectsUsingBlock:v39];
    [v3[2] applyFeatureSmoothing:v45[3] vectorLength:v41[6]];
    [v3[2] applyFeatureScaling:v45[3] vectorLength:v41[6]];
    [v3[2] applyFeatureNormalization:v45[3] vectorLength:v41[6]];
    v18 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:{2 * objc_msgSend(*(a1 + 32), "outputTopicCount")}];
    v19 = v38;
    v20 = [v38 mutableBytes];
    v21 = v18;
    v22 = [v18 mutableBytes];
    if (v41[6] >= 1)
    {
      v24 = 0;
      do
      {
        LODWORD(v23) = *(v45[3] + 4 * v24);
        [v3[2] addWeightedTopicScoreToBuffer:v20 countNonZeroComponentsInBuffer:v22 qid:*(v49[3] + 4 * v24++) score:v23];
      }

      while (v24 < v41[6]);
    }

    free(v49[3]);
    free(v45[3]);
    [v3[2] addBias:v20];
    [v3[2] applyOutputScaling:v20 vectorLength:{objc_msgSend(*(a1 + 32), "outputTopicCount")}];
    [v3[2] applyOutputActivation:v20];
    [v3[2] applyOutputAttenuation:v20 nonzeroCounts:v22];
    for (i = 0; ; i = v26 + 1)
    {
      v26 = i;
      if ([*(a1 + 32) outputTopicCount] <= i)
      {
        break;
      }

      v27 = objc_autoreleasePoolPush();
      v28 = *(v20 + 4 * i);
      [v3[2] threshold];
      if (v28 >= v29)
      {
        v30 = [*(a1 + 32) _payloadForTopic:i];
        (*(*(a1 + 48) + 16))(*(v20 + 4 * v26));
      }

      objc_autoreleasePoolPop(v27);
    }

    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(&v48, 8);
  }
}

void __53__PPTextToTopicTransform_iterateTopicsForText_block___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a3;
  *(*(*(a1[4] + 8) + 24) + 4 * *(*(a1[5] + 8) + 24)) = [a2 integerValue];
  [v5 floatValue];
  v7 = v6;

  *(*(*(a1[6] + 8) + 24) + 4 * (*(*(a1[5] + 8) + 24))++) = v7;
}

- (float)threshold
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__PPTextToTopicTransform_threshold__block_invoke;
  v5[3] = &unk_2789752A8;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__35__PPTextToTopicTransform_threshold__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a2 + 16) threshold];
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

- (void)dealloc
{
  v3 = +[PPTrialWrapper sharedInstance];
  [v3 removeUpdateHandlerForToken:self->_trialToken];

  v4.receiver = self;
  v4.super_class = PPTextToTopicTransform;
  [(PPTextToTopicTransform *)&v4 dealloc];
}

- (id)_initWithVocabulary:(id)vocabulary weights:(id)weights
{
  vocabularyCopy = vocabulary;
  weightsCopy = weights;
  v21.receiver = self;
  v21.super_class = PPTextToTopicTransform;
  v9 = [(PPTextToTopicTransform *)&v21 init];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277D425F8]);
    v11 = objc_opt_new();
    v12 = [v10 initWithGuardedData:v11];
    lock = v9->_lock;
    v9->_lock = v12;

    objc_storeStrong(&v9->_vocabularyPath, vocabulary);
    objc_storeStrong(&v9->_weightsPath, weights);
    mappingId = v9->_mappingId;
    v9->_mappingId = @"high-level-topics-extraction";

    objc_initWeak(&location, v9);
    v15 = +[PPTrialWrapper sharedInstance];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __54__PPTextToTopicTransform__initWithVocabulary_weights___block_invoke;
    v18[3] = &unk_2789797B8;
    objc_copyWeak(&v19, &location);
    v16 = [v15 addUpdateHandlerForNamespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS" block:v18];

    if (![(PPTextToTopicTransform *)v9 _updateFromAssetData])
    {

      v9 = 0;
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __54__PPTextToTopicTransform__initWithVocabulary_weights___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(PPTextToTopicTransform *)WeakRetained _updateFromAssetData];
}

- (BOOL)_updateFromAssetData
{
  v19 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return 0;
  }

  v2 = [objc_alloc(MEMORY[0x277D42558]) initWithPath:self[3]];
  if (v2)
  {
    v3 = [[PPTopicTransform alloc] initWithPath:self[4] mappingId:self[5]];
    v4 = v3 != 0;
    if (v3)
    {
      v5 = self[1];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __46__PPTextToTopicTransform__updateFromAssetData__block_invoke;
      v12[3] = &unk_278975280;
      v13 = v2;
      v14 = v3;
      [v5 runWithLockAcquired:v12];

      v6 = v13;
    }

    else
    {
      v6 = pp_topics_log_handle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v10 = self[4];
        v11 = NSStringFromSelector(sel__updateFromAssetData);
        *buf = 138412546;
        v16 = v10;
        v17 = 2112;
        v18 = v11;
        _os_log_error_impl(&dword_23224A000, v6, OS_LOG_TYPE_ERROR, "nil topicTransform loaded from %@ in %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v3 = pp_default_log_handle();
    if (os_log_type_enabled(&v3->super, OS_LOG_TYPE_ERROR))
    {
      v8 = self[3];
      v9 = NSStringFromSelector(sel__updateFromAssetData);
      *buf = 138412546;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      _os_log_error_impl(&dword_23224A000, &v3->super, OS_LOG_TYPE_ERROR, "nil vocabulary trie loaded from %@ in %@", buf, 0x16u);
    }

    v4 = 0;
  }

  return v4;
}

void __46__PPTextToTopicTransform__updateFromAssetData__block_invoke(uint64_t a1, id *a2)
{
  objc_storeStrong(a2 + 1, *(a1 + 32));
  v4 = a2;
  objc_storeStrong(v4 + 2, *(a1 + 40));
}

- (id)_init
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = +[PPTrialWrapper sharedInstance];
  v5 = [v4 filepathForFactor:@"highLevelTextTopics.trie" namespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS"];

  if (![v5 length])
  {
    v7 = pp_default_log_handle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v13 = 138412290;
      v14 = v9;
      _os_log_error_impl(&dword_23224A000, v7, OS_LOG_TYPE_ERROR, "trie path not found in %@", &v13, 0xCu);
    }

    goto LABEL_9;
  }

  v6 = +[PPTrialWrapper sharedInstance];
  v7 = [v6 filepathForFactor:@"highLevelTextTopics.dat" namespaceName:@"PERSONALIZATION_PORTRAIT_TOPICS"];

  if (![v7 length])
  {
    v10 = pp_default_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(a2);
      v13 = 138412290;
      v14 = v12;
      _os_log_error_impl(&dword_23224A000, v10, OS_LOG_TYPE_ERROR, "weights path not found in %@", &v13, 0xCu);
    }

LABEL_9:
    selfCopy = 0;
    goto LABEL_10;
  }

  self = [(PPTextToTopicTransform *)self _initWithVocabulary:v5 weights:v7];
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

+ (PPTextToTopicTransform)sharedInstance
{
  if (sharedInstance__pasOnceToken2_14148 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken2_14148, &__block_literal_global_14149);
  }

  v3 = sharedInstance__pasExprOnceResult_14150;

  return v3;
}

void __40__PPTextToTopicTransform_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [[PPTextToTopicTransform alloc] _init];
  v2 = sharedInstance__pasExprOnceResult_14150;
  sharedInstance__pasExprOnceResult_14150 = v1;

  objc_autoreleasePoolPop(v0);
}

@end