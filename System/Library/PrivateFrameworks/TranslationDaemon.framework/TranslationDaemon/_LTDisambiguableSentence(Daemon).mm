@interface _LTDisambiguableSentence(Daemon)
+ (id)_sentenceWithSourceString:()Daemon targetPhrases:expectedNumberOfPhrases:;
+ (id)sentenceFromFTSpeechResponse:()Daemon sourceText:censorSpeech:;
+ (id)sentenceFromOspreyBatchSentence:()Daemon;
+ (id)sentenceFromOspreyResponse:()Daemon;
@end

@implementation _LTDisambiguableSentence(Daemon)

+ (id)_sentenceWithSourceString:()Daemon targetPhrases:expectedNumberOfPhrases:
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  isGenderDisambiguationEnabled = [MEMORY[0x277CE1AE0] isGenderDisambiguationEnabled];
  if (isGenderDisambiguationEnabled)
  {
    if (!v8)
    {
      v17 = _LTOSLogDisambiguation(isGenderDisambiguationEnabled, v11);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        +[_LTDisambiguableSentence(Daemon) _sentenceWithSourceString:targetPhrases:expectedNumberOfPhrases:];
      }

      goto LABEL_15;
    }

    v12 = [v9 count];
    if (v12 != a5)
    {
      v18 = _LTOSLogDisambiguation(v12, v13);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = v18;
        v21 = 134218240;
        v22 = [v9 count];
        v23 = 2048;
        v24 = a5;
        _os_log_impl(&dword_232E53000, v19, OS_LOG_TYPE_INFO, "Not creating disambiguation sentence because only %zu out of %zu candidates could create disambiguation nodes", &v21, 0x16u);
      }

      goto LABEL_15;
    }

    if (a5)
    {
      v14 = [[self alloc] initWithSourceText:v8 targetPhrases:v9 selectedPhraseIndex:0];
      goto LABEL_16;
    }

    v15 = _LTOSLogDisambiguation(v12, v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      v16 = "Not creating a disambiguation sentence as there are no phrases to construct a sentence from";
      goto LABEL_8;
    }
  }

  else
  {
    v15 = _LTOSLogDisambiguation(isGenderDisambiguationEnabled, v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(v21) = 0;
      v16 = "Not creating disambiguation sentence because the feature flag is off";
LABEL_8:
      _os_log_impl(&dword_232E53000, v15, OS_LOG_TYPE_INFO, v16, &v21, 2u);
    }
  }

LABEL_15:
  v14 = 0;
LABEL_16:

  return v14;
}

+ (id)sentenceFromFTSpeechResponse:()Daemon sourceText:censorSpeech:
{
  v8 = a3;
  v9 = a4;
  is_final = [v8 is_final];
  if (is_final)
  {
    n_best_translated_phrases = [v8 n_best_translated_phrases];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __89___LTDisambiguableSentence_Daemon__sentenceFromFTSpeechResponse_sourceText_censorSpeech___block_invoke;
    v18[3] = &unk_2789B5FB8;
    v19 = v8;
    v13 = v9;
    v20 = v13;
    v21 = a5;
    v14 = [n_best_translated_phrases _ltCompactMap:v18];
    v15 = [self _sentenceWithSourceString:v13 targetPhrases:v14 expectedNumberOfPhrases:{objc_msgSend(n_best_translated_phrases, "count")}];
  }

  else
  {
    v16 = _LTOSLogDisambiguation(is_final, v11);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      +[_LTDisambiguableSentence(Daemon) sentenceFromFTSpeechResponse:sourceText:censorSpeech:];
    }

    v15 = 0;
  }

  return v15;
}

+ (id)sentenceFromOspreyResponse:()Daemon
{
  v4 = a3;
  n_best_translated_phrases = [v4 n_best_translated_phrases];
  engine_input = [v4 engine_input];
  if (engine_input)
  {
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __63___LTDisambiguableSentence_Daemon__sentenceFromOspreyResponse___block_invoke;
    v16 = &unk_2789B5FE0;
    v17 = v4;
    v8 = engine_input;
    v18 = v8;
    v9 = [n_best_translated_phrases _ltCompactMap:&v13];
    v10 = [self _sentenceWithSourceString:v8 targetPhrases:v9 expectedNumberOfPhrases:{objc_msgSend(n_best_translated_phrases, "count", v13, v14, v15, v16)}];
  }

  else
  {
    v11 = _LTOSLogDisambiguation(0, v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[_LTDisambiguableSentence(Daemon) _sentenceWithSourceString:targetPhrases:expectedNumberOfPhrases:];
    }

    v10 = 0;
  }

  return v10;
}

+ (id)sentenceFromOspreyBatchSentence:()Daemon
{
  v4 = a3;
  engine_input = [v4 engine_input];
  if (engine_input)
  {
    n_best_choices = [v4 n_best_choices];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __68___LTDisambiguableSentence_Daemon__sentenceFromOspreyBatchSentence___block_invoke;
    v16 = &unk_2789B6008;
    v17 = v4;
    v8 = engine_input;
    v18 = v8;
    v9 = [n_best_choices _ltCompactMap:&v13];
    v10 = [self _sentenceWithSourceString:v8 targetPhrases:v9 expectedNumberOfPhrases:{objc_msgSend(n_best_choices, "count", v13, v14, v15, v16)}];
  }

  else
  {
    v11 = _LTOSLogDisambiguation(0, v5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[_LTDisambiguableSentence(Daemon) sentenceFromOspreyBatchSentence:];
    }

    v10 = 0;
  }

  return v10;
}

@end