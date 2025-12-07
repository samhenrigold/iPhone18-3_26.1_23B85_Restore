@interface _LTDisambiguableResult(Daemon)
+ (id)_resultWithSentence:()Daemon;
+ (id)_resultWithSentences:()Daemon;
+ (id)resultFromFTSpeechResponse:()Daemon sourceText:censorSpeech:;
+ (id)resultFromOspreyBatchResponse:()Daemon sourceText:;
+ (id)resultFromOspreyResponse:()Daemon;
@end

@implementation _LTDisambiguableResult(Daemon)

+ (id)_resultWithSentences:()Daemon
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  isGenderDisambiguationEnabled = [MEMORY[0x277CE1AE0] isGenderDisambiguationEnabled];
  if ((isGenderDisambiguationEnabled & 1) == 0)
  {
    v10 = _LTOSLogDisambiguation(isGenderDisambiguationEnabled, v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      v11 = "Not creating disambiguation result because the feature flag is off";
LABEL_9:
      _os_log_impl(&dword_232E53000, v10, OS_LOG_TYPE_INFO, v11, &v13, 2u);
    }

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  if (![v3 count])
  {
    v10 = _LTOSLogDisambiguation(0, v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      v11 = "Not creating disambiguation result because there's no valid sentences in the result";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v7 = [objc_alloc(MEMORY[0x277CE1AE0]) initWithSentences:v3 joinedWithString:@" "];
  v9 = _LTOSLogDisambiguation(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v13 = 138543362;
    v14 = v7;
    _os_log_impl(&dword_232E53000, v9, OS_LOG_TYPE_INFO, "Created disambiguableResult (from Online Engine): %{public}@", &v13, 0xCu);
  }

LABEL_11:

  return v7;
}

+ (id)_resultWithSentence:()Daemon
{
  v10 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v9 = a3;
    v4 = MEMORY[0x277CBEA60];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v9 count:1];
  }

  else
  {
    v6 = 0;
  }

  v7 = [self _resultWithSentences:{v6, v9, v10}];

  return v7;
}

+ (id)resultFromFTSpeechResponse:()Daemon sourceText:censorSpeech:
{
  v2 = [MEMORY[0x277CE1AE8] sentenceFromFTSpeechResponse:? sourceText:? censorSpeech:?];
  v3 = [self _resultWithSentence:v2];

  return v3;
}

+ (id)resultFromOspreyResponse:()Daemon
{
  v2 = [MEMORY[0x277CE1AE8] sentenceFromOspreyResponse:?];
  v3 = [self _resultWithSentence:v2];

  return v3;
}

+ (id)resultFromOspreyBatchResponse:()Daemon sourceText:
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  translated_sentences = [v6 translated_sentences];
  v9 = [translated_sentences _ltCompactMap:&__block_literal_global_8];
  if ([translated_sentences count])
  {
    v11 = [translated_sentences count];
    v12 = [v9 count];
    if (v11 == v12)
    {
LABEL_10:
      v27 = [self _resultWithSentences:v9];
      goto LABEL_14;
    }

    v14 = _LTOSLogDisambiguation(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      *buf = 134218240;
      v33 = [v9 count];
      v34 = 2048;
      v35 = [translated_sentences count];
    }
  }

  else
  {
    v16 = _LTOSLogDisambiguation(0, v10);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
    }
  }

  translated_text = [v6 translated_text];
  v18 = [v7 length];
  if (v18)
  {
    v18 = [translated_text length];
    if (v18)
    {
      v20 = objc_alloc(MEMORY[0x277CE1AF8]);
      translated_text_romanized = [v6 translated_text_romanized];
      v22 = [v20 initWithText:translated_text links:MEMORY[0x277CBEBF8] romanization:translated_text_romanized];

      v23 = objc_alloc(MEMORY[0x277CE1AE8]);
      v31 = v22;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
      v25 = [v23 initWithSourceText:v7 targetPhrases:v24 selectedPhraseIndex:0];

      v30 = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];

      v9 = v26;
      goto LABEL_10;
    }
  }

  v28 = _LTOSLogDisambiguation(v18, v19);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [(_LTDisambiguableResult(Daemon) *)v28 resultFromOspreyBatchResponse:v7 sourceText:translated_text];
  }

  v27 = 0;
LABEL_14:

  return v27;
}

+ (void)resultFromOspreyBatchResponse:()Daemon sourceText:.cold.1(void *a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = 134218240;
  v7 = [a2 length];
  v8 = 2048;
  v9 = [a3 length];
  _os_log_error_impl(&dword_232E53000, v5, OS_LOG_TYPE_ERROR, "Unable to create _LTDisambiguableResult from batch response since provided source or target text is empty; sourceText length: %zu; targetText length: %zu", &v6, 0x16u);
}

@end