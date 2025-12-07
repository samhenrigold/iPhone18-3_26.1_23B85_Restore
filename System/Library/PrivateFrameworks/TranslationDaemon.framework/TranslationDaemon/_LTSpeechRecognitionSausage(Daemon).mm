@interface _LTSpeechRecognitionSausage(Daemon)
- (id)initWithRecognition:()Daemon wordConfidenceThreshold:;
@end

@implementation _LTSpeechRecognitionSausage(Daemon)

- (id)initWithRecognition:()Daemon wordConfidenceThreshold:
{
  v6 = a3;
  v27.receiver = self;
  v27.super_class = &off_28488F108;
  v7 = objc_msgSendSuper2(&v27, sel_init);
  if (v7)
  {
    array = [MEMORY[0x277CBEB18] array];
    interpretationIndices = [v6 interpretationIndices];
    firstObject = [interpretationIndices firstObject];

    tokenSausage = [v6 tokenSausage];
    v24 = v7;
    if ([tokenSausage count])
    {
      v12 = 0;
      while (1)
      {
        v13 = [firstObject count];

        if (v12 >= v13)
        {
          break;
        }

        tokenSausage2 = [v6 tokenSausage];
        v15 = [tokenSausage2 objectAtIndexedSubscript:v12];

        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __83___LTSpeechRecognitionSausage_Daemon__initWithRecognition_wordConfidenceThreshold___block_invoke;
        v26[3] = &__block_descriptor_40_e56____LTSpeechRecognitionTokensAlternative_16__0__NSArray_8l;
        v26[4] = a4;
        v16 = [v15 _ltCompactMap:v26];
        v17 = [firstObject objectAtIndexedSubscript:v12];
        v18 = objc_alloc_init(MEMORY[0x277CE1B88]);
        [v18 setBestAlternativeIndex:{objc_msgSend(v17, "unsignedIntegerValue")}];
        [v18 setAlternatives:v16];
        [array addObject:v18];

        ++v12;
        tokenSausage = [v6 tokenSausage];
        if (v12 >= [tokenSausage count])
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
    }

    v19 = [array _ltCompactMap:{&__block_literal_global_28, v24}];
    v21 = _LTOSLogSpeech(v19, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [_LTSpeechRecognitionSausage(Daemon) initWithRecognition:v21 wordConfidenceThreshold:v19];
    }

    v7 = v25;
    [v25 setBins:array];
    v22 = v25;
  }

  return v7;
}

- (void)initWithRecognition:()Daemon wordConfidenceThreshold:.cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 componentsJoinedByString:{@", "}];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&dword_232E53000, v3, OS_LOG_TYPE_DEBUG, "Sausage confidences: %@", &v5, 0xCu);
}

@end