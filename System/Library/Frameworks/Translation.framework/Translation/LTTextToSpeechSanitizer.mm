@interface LTTextToSpeechSanitizer
@end

@implementation LTTextToSpeechSanitizer

void __46___LTTextToSpeechSanitizer__regularExpression__block_invoke()
{
  v6 = 0;
  v0 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"([\\p{L}']*[*]+[\\p{L}']*)+" options:1 error:&v6];
  v1 = v6;
  v2 = _regularExpression_regularExpression;
  _regularExpression_regularExpression = v0;

  if (v1)
  {
    v5 = _LTOSLogTTS(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __46___LTTextToSpeechSanitizer__regularExpression__block_invoke_cold_1(v1, v5);
    }
  }
}

void __46___LTTextToSpeechSanitizer__regularExpression__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_23AAF5000, a2, OS_LOG_TYPE_FAULT, "Failed to create regular expression to find censored speech: %@", &v2, 0xCu);
}

@end