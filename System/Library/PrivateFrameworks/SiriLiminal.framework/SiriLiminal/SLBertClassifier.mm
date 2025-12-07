@interface SLBertClassifier
- (BOOL)_isCharPunctuation:(unsigned __int16)punctuation;
- (SLBertClassifier)initWithConfig:(id)config error:(id *)error locale:(id)locale;
- (id)_createInputIdsAndRunModel:(id)model;
- (id)_normalizeText:(id)text;
- (id)_splitOnPunctuation:(id)punctuation;
- (id)_wordPieceTokenizer:(id)tokenizer;
- (id)processInputText:(id)text;
- (id)processSpeechPackage:(id)package;
- (void)_readVocabFromFile:(id)file;
@end

@implementation SLBertClassifier

- (id)_wordPieceTokenizer:(id)tokenizer
{
  v31 = *MEMORY[0x277D85DE8];
  tokenizerCopy = tokenizer;
  array = [MEMORY[0x277CBEB18] array];
  [array addObject:@"[CLS]"];
  if (self->_shouldAppendLeadingText)
  {
    [array addObject:@"empty"];
    [array addObject:@"[SEP]"];
  }

  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v21 = tokenizerCopy;
  v7 = [tokenizerCopy componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

  v8 = [(SLBertClassifier *)self _splitOnPunctuation:v7];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    v22 = *v27;
    v23 = array;
    do
    {
      v12 = 0;
      v24 = v10;
      do
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * v12);
        if ([v13 length] <= self->_maxInputCharsPerWord)
        {
          array2 = [MEMORY[0x277CBEB18] array];
          if ([v13 length])
          {
            v15 = 0;
            while (1)
            {
              v16 = [v13 length];
              if (v15 >= v16)
              {
                break;
              }

              v17 = v16;
              while (1)
              {
                v18 = [v13 substringWithRange:{v15, v17 - v15}];
                if (v15)
                {
                  v19 = [@"##" stringByAppendingString:v18];

                  v18 = v19;
                }

                if ([(NSArray *)self->_vocab containsObject:v18])
                {
                  break;
                }

                --v17;

                if (v15 >= v17)
                {
                  goto LABEL_22;
                }
              }

              if (!v18)
              {
                break;
              }

              [array2 addObject:v18];

              v15 = v17;
              if (v17 >= [v13 length])
              {
                goto LABEL_21;
              }
            }

LABEL_22:
            array = v23;
            [v23 addObject:self->_unkToken];
          }

          else
          {
LABEL_21:
            array = v23;
            [v23 addObjectsFromArray:array2];
          }

          v11 = v22;
          v10 = v24;
        }

        else
        {
          [array addObject:self->_unkToken];
        }

        ++v12;
      }

      while (v12 != v10);
      v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v10);
  }

  [array addObject:@"[SEP]"];

  return array;
}

- (id)_splitOnPunctuation:(id)punctuation
{
  v24 = *MEMORY[0x277D85DE8];
  punctuationCopy = punctuation;
  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = punctuationCopy;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        if ([v10 length])
        {
          v11 = 0;
          do
          {
            v12 = 0;
            while (1)
            {
              v13 = v11 + v12;
              if (-[SLBertClassifier _isCharPunctuation:](self, "_isCharPunctuation:", [v10 characterAtIndex:v11 + v12]))
              {
                break;
              }

              ++v12;
              if (v11 + v12 >= [v10 length])
              {
                if (v12)
                {
                  v16 = [v10 substringWithRange:{v11, v12}];
                  [array addObject:v16];
                }

                goto LABEL_18;
              }
            }

            v14 = [v10 substringWithRange:{v11, v12}];
            if (v14)
            {
              [array addObject:v14];
            }

            v15 = [v10 substringWithRange:{v13, 1}];
            [array addObject:v15];
            v11 = v13 + 1;
          }

          while (v13 + 1 < [v10 length]);
        }

LABEL_18:
        ;
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  return array;
}

- (BOOL)_isCharPunctuation:(unsigned __int16)punctuation
{
  result = 1;
  if ((punctuation - 33) >= 0xF && ((punctuation - 91) > 0x23 || ((1 << (punctuation - 91)) & 0xF0000003FLL) == 0))
  {
    return (punctuation - 58) < 7;
  }

  return result;
}

- (id)_createInputIdsAndRunModel:(id)model
{
  v60[2] = *MEMORY[0x277D85DE8];
  modelCopy = model;
  v60[0] = &unk_2878A77A0;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_maxNumTokens];
  v60[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:2];

  v53 = 0;
  v7 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:v6 dataType:65568 error:&v53];
  v8 = v53;
  v52 = v8;
  v9 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:v6 dataType:65568 error:&v52];
  v10 = v52;

  v51 = v10;
  v42 = v6;
  v11 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:v6 dataType:65568 error:&v51];
  v12 = v51;

  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __47__SLBertClassifier__createInputIdsAndRunModel___block_invoke;
  v46[3] = &unk_279C0E9E8;
  v46[4] = self;
  v13 = modelCopy;
  v47 = v13;
  v14 = v7;
  v48 = v14;
  v15 = v11;
  v49 = v15;
  v16 = v9;
  v50 = v16;
  [v13 enumerateObjectsUsingBlock:v46];
  v43 = v13;
  v17 = [v13 count];
  if (v17 < self->_maxNumTokens)
  {
    v18 = v17;
    do
    {
      v19 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
      [v14 setObject:v19 atIndexedSubscript:v18];

      v20 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
      [v15 setObject:v20 atIndexedSubscript:v18];

      v21 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
      [v16 setObject:v21 atIndexedSubscript:v18];

      ++v18;
    }

    while (v18 < self->_maxNumTokens);
  }

  v22 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v57 = "[SLBertClassifier _createInputIdsAndRunModel:]";
    v58 = 2112;
    v59 = v43;
    _os_log_impl(&dword_26754E000, v22, OS_LOG_TYPE_DEFAULT, "%s Tokens: %@", buf, 0x16u);
    v22 = SLLogContextFacilityCoreSpeech;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v57 = "[SLBertClassifier _createInputIdsAndRunModel:]";
    v58 = 2112;
    v59 = v14;
    _os_log_impl(&dword_26754E000, v22, OS_LOG_TYPE_DEFAULT, "%s inputIds: %@", buf, 0x16u);
    v22 = SLLogContextFacilityCoreSpeech;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v57 = "[SLBertClassifier _createInputIdsAndRunModel:]";
    v58 = 2112;
    v59 = v16;
    _os_log_impl(&dword_26754E000, v22, OS_LOG_TYPE_DEFAULT, "%s attnMask: %@", buf, 0x16u);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:v14 forKey:@"minibatch_input_ids"];
  [dictionary setObject:v16 forKey:@"minibatch_attention_mask"];
  [dictionary setObject:v15 forKey:@"minibatch_token_type_ids"];
  v45 = v12;
  v37 = dictionary;
  v24 = [objc_alloc(MEMORY[0x277CBFED0]) initWithDictionary:dictionary error:&v45];
  v25 = v45;

  bertModel = self->_bertModel;
  v44 = v25;
  v40 = v24;
  v27 = [(MLModel *)bertModel predictionFromFeatures:v24 error:&v44];
  v41 = v44;

  v39 = v27;
  v38 = [v27 featureValueForName:self->_outputNodeName];
  multiArrayValue = [v38 multiArrayValue];
  v29 = SLLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v57 = "[SLBertClassifier _createInputIdsAndRunModel:]";
    v58 = 2112;
    v59 = multiArrayValue;
    _os_log_impl(&dword_26754E000, v29, OS_LOG_TYPE_DEFAULT, "%s output: %@", buf, 0x16u);
  }

  convert1dMLMultiArrayToNSArray = [multiArrayValue convert1dMLMultiArrayToNSArray];
  convert1dMLMultiArrayToNSArray2 = [v16 convert1dMLMultiArrayToNSArray];
  convert1dMLMultiArrayToNSArray3 = [v14 convert1dMLMultiArrayToNSArray];
  convert1dMLMultiArrayToNSArray4 = [v15 convert1dMLMultiArrayToNSArray];
  v54[0] = @"outputTokens";
  v54[1] = @"attnMask";
  v55[0] = v43;
  v55[1] = convert1dMLMultiArrayToNSArray2;
  v54[2] = @"inputIds";
  v54[3] = @"tokenTypeIds";
  v55[2] = convert1dMLMultiArrayToNSArray3;
  v55[3] = convert1dMLMultiArrayToNSArray4;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:4];
  v35 = [[SLBertClassifierResult alloc] initWithScore:convert1dMLMultiArrayToNSArray assetVersion:self->_assetVersion extractedFeats:v34];

  return v35;
}

void __47__SLBertClassifier__createInputIdsAndRunModel___block_invoke(void *a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = [*(a1[4] + 16) indexOfObject:a2];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 136315138;
      v26 = "[SLBertClassifier _createInputIdsAndRunModel:]_block_invoke";
      _os_log_impl(&dword_26754E000, v9, OS_LOG_TYPE_DEFAULT, "%s Token not found, using unk token", &v25, 0xCu);
    }

    v7 = [*(a1[4] + 16) indexOfObject:*(a1[4] + 24)];
  }

  v10 = a1[4];
  v11 = 1.0;
  if (*(v10 + 8) == 1)
  {
    if (*(v10 + 64) <= a3)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = 0.0;
    }
  }

  if (*(v10 + 40) <= a3)
  {
    *a4 = 1;
    v20 = SLLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v21 = a1[5];
      v22 = v20;
      v23 = [v21 count];
      v24 = *(a1[4] + 40);
      v25 = 136315650;
      v26 = "[SLBertClassifier _createInputIdsAndRunModel:]_block_invoke";
      v27 = 2048;
      v28 = v23;
      v29 = 2048;
      v30 = v24;
      _os_log_impl(&dword_26754E000, v22, OS_LOG_TYPE_DEFAULT, "%s Num Tokens - %lu  exceeded model input length - %lu", &v25, 0x20u);
    }
  }

  else
  {
    v12 = a1[6];
    *&v8 = v7;
    v13 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
    [v12 setObject:v13 atIndexedSubscript:a3];

    v14 = a1[7];
    *&v15 = v11;
    v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
    [v14 setObject:v16 atIndexedSubscript:a3];

    v17 = a1[8];
    LODWORD(v18) = 1.0;
    v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
    [v17 setObject:v19 atIndexedSubscript:a3];
  }
}

- (id)_normalizeText:(id)text
{
  textCopy = text;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__531;
  v13 = __Block_byref_object_dispose__532;
  lowercaseString = [textCopy lowercaseString];
  truncationTokenList = self->_truncationTokenList;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__SLBertClassifier__normalizeText___block_invoke;
  v8[3] = &unk_279C0E9C0;
  v8[4] = self;
  v8[5] = &v9;
  [(NSArray *)truncationTokenList enumerateObjectsUsingBlock:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __35__SLBertClassifier__normalizeText___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v6 = [v12 length];
  if ([*(*(*(a1 + 40) + 8) + 40) length] > v6)
  {
    v7 = [*(*(*(a1 + 40) + 8) + 40) substringWithRange:{0, v6}];
    v8 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    if ((([v8 characterIsMember:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "characterAtIndex:", v6)}] & 1) != 0 || objc_msgSend(*(a1 + 32), "_isCharPunctuation:", objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "characterAtIndex:", v6))) && objc_msgSend(v7, "isEqualToString:", v12))
    {
      v9 = [*(*(*(a1 + 40) + 8) + 40) substringWithRange:{v6, objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "length") - v6}];
      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      *a4 = 1;
    }
  }
}

- (void)_readVocabFromFile:(id)file
{
  v11 = 0;
  v4 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:file encoding:4 error:&v11];
  v5 = v11;
  newlineCharacterSet = [MEMORY[0x277CCA900] newlineCharacterSet];
  v7 = [v4 componentsSeparatedByCharactersInSet:newlineCharacterSet];

  array = [MEMORY[0x277CBEA60] array];
  vocab = self->_vocab;
  self->_vocab = array;

  v10 = self->_vocab;
  self->_vocab = v7;
}

- (id)processInputText:(id)text
{
  v4 = [(SLBertClassifier *)self _normalizeText:text];
  v5 = [(SLBertClassifier *)self _wordPieceTokenizer:v4];
  v6 = [(SLBertClassifier *)self _createInputIdsAndRunModel:v5];

  return v6;
}

- (id)processSpeechPackage:(id)package
{
  v4 = [SLASRFeatureExtractor getBestSpeechRecognitionTextFromPackage:package];
  v5 = [(SLBertClassifier *)self processInputText:v4];

  return v5;
}

- (SLBertClassifier)initWithConfig:(id)config error:(id *)error locale:(id)locale
{
  v73[1] = *MEMORY[0x277D85DE8];
  configCopy = config;
  localeCopy = locale;
  v61.receiver = self;
  v61.super_class = SLBertClassifier;
  v10 = [(SLBertClassifier *)&v61 init];
  if (!v10)
  {
    goto LABEL_42;
  }

  if (SLLogInitIfNeeded_once != -1)
  {
    dispatch_once(&SLLogInitIfNeeded_once, &__block_literal_global);
  }

  v11 = [MEMORY[0x277D01778] decodeJsonFromFile:configCopy];
  if (!v11)
  {
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing config for Bert Classifier %@", 0];
    v24 = MEMORY[0x277CCA9B8];
    v72 = @"reason";
    v73[0] = v23;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:&v72 count:1];
    v14 = [v24 errorWithDomain:@"com.apple.sl" code:108 userInfo:v25];

    if (v14)
    {
      if (error)
      {
        v26 = v14;
        *error = v14;
      }

      goto LABEL_15;
    }
  }

  if (([localeCopy containsString:@"en"] & 1) != 0 || (v12 = MEMORY[0x277CCA9B8], v70 = @"reason", v71 = @"Non en locales supported yet", objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v71, &v70, 1), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "errorWithDomain:code:userInfo:", @"com.apple.sl", 110, v13), v14 = objc_claimAutoreleasedReturnValue(), v13, !v14))
  {
    stringByDeletingLastPathComponent = [configCopy stringByDeletingLastPathComponent];
    v17 = [v11 objectForKeyedSubscript:@"vocabFile"];
    v18 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v17];

    v59 = v18;
    [(SLBertClassifier *)v10 _readVocabFromFile:v18];
    v19 = [v11 objectForKeyedSubscript:@"unkToken"];
    unkToken = v10->_unkToken;
    v10->_unkToken = v19;

    v21 = [v11 objectForKeyedSubscript:@"version"];
    if (v21)
    {
      v22 = [v11 objectForKeyedSubscript:@"version"];
    }

    else
    {
      v22 = @"default";
    }

    assetVersion = v10->_assetVersion;
    v10->_assetVersion = &v22->isa;

    v10->_numLeadingTokens = 1;
    v28 = [v11 objectForKeyedSubscript:@"leadingText"];
    if (v28)
    {
      v29 = [v11 objectForKeyedSubscript:@"leadingText"];
      v10->_shouldAppendLeadingText = [v29 BOOLValue];
      p_shouldAppendLeadingText = &v10->_shouldAppendLeadingText;
    }

    else
    {
      v10->_shouldAppendLeadingText = 1;
      p_shouldAppendLeadingText = &v10->_shouldAppendLeadingText;
    }

    if (*p_shouldAppendLeadingText)
    {
      v10->_numLeadingTokens = 3;
    }

    v31 = [v11 objectForKeyedSubscript:@"outputNodeName"];
    v32 = v31;
    if (v31)
    {
      v31 = [v11 objectForKeyedSubscript:@"outputNodeName"];
    }

    outputNodeName = v10->_outputNodeName;
    v10->_outputNodeName = v31;

    if (!v10->_outputNodeName)
    {
      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Missing output name for Bert Classifier %@", v11];
      v37 = MEMORY[0x277CCA9B8];
      v68 = @"reason";
      v69 = v36;
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
      v39 = [v37 errorWithDomain:@"com.apple.sl" code:108 userInfo:v38];

      if (v39)
      {
        if (error)
        {
          v40 = v39;
          *error = v39;
        }

        goto LABEL_31;
      }
    }

    *&v10->_maxInputCharsPerWord = xmmword_2675A8C90;
    v34 = [v11 objectForKeyedSubscript:@"truncationList"];
    if (v34)
    {
      v35 = [v11 objectForKeyedSubscript:@"truncationList"];
    }

    else
    {
      v35 = &unk_2878A77E8;
    }

    truncationTokenList = v10->_truncationTokenList;
    v10->_truncationTokenList = v35;

    v42 = [v11 objectForKeyedSubscript:@"modelFile"];
    v58 = stringByDeletingLastPathComponent;
    v43 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v42];

    v44 = [MEMORY[0x277CBEBC0] fileURLWithPath:v43];
    v45 = objc_alloc_init(MEMORY[0x277CBFF38]);
    [v45 setComputeUnits:0];
    v60 = 0;
    v46 = [MEMORY[0x277CBFF20] modelWithContentsOfURL:v44 configuration:v45 error:&v60];
    v47 = v60;
    bertModel = v10->_bertModel;
    v10->_bertModel = v46;

    if (v47)
    {
      if (error)
      {
        v49 = v47;
        *error = v47;
      }
    }

    else
    {
      v50 = SLLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(SLLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        vocab = v10->_vocab;
        v52 = v50;
        v53 = [(NSArray *)vocab count];
        v54 = v10->_unkToken;
        *buf = 136315650;
        v63 = "[SLBertClassifier initWithConfig:error:locale:]";
        v64 = 2048;
        v65 = v53;
        v66 = 2112;
        v67 = v54;
        _os_log_impl(&dword_26754E000, v52, OS_LOG_TYPE_DEFAULT, "%s VocabList size: %lu UnkToken %@", buf, 0x20u);

        v50 = SLLogContextFacilityCoreSpeech;
      }

      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v55 = v10->_truncationTokenList;
        *buf = 136315394;
        v63 = "[SLBertClassifier initWithConfig:error:locale:]";
        v64 = 2112;
        v65 = v55;
        _os_log_impl(&dword_26754E000, v50, OS_LOG_TYPE_DEFAULT, "%s Truncation list: %@", buf, 0x16u);
      }
    }

    if (v47)
    {
      goto LABEL_41;
    }

LABEL_42:
    v56 = v10;
    goto LABEL_43;
  }

  if (error)
  {
    v15 = v14;
    *error = v14;
  }

LABEL_15:

LABEL_31:
LABEL_41:
  v56 = 0;
LABEL_43:

  return v56;
}

@end