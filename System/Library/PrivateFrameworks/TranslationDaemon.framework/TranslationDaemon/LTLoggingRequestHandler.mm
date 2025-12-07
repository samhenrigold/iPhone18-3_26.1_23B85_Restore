@interface LTLoggingRequestHandler
@end

@implementation LTLoggingRequestHandler

void __50___LTLoggingRequestHandler_startSpeechLIDRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = _LTOSLogTranslationEngine(v3, v4);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __50___LTLoggingRequestHandler_startSpeechLIDRequest___block_invoke_2_cold_1();
    }

    v7 = NSStringFromSelector(*(a1 + 32));
    _LTSendErrorEvent(v3, v7);
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Speech LID logging request finished", v8, 2u);
  }
}

void __60___LTLoggingRequestHandler_startSpeechSensesLoggingRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = _LTOSLogTranslationEngine(v3, v4);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __60___LTLoggingRequestHandler_startSpeechSensesLoggingRequest___block_invoke_2_cold_1();
    }

    v7 = NSStringFromSelector(*(a1 + 32));
    _LTSendErrorEvent(v3, v7);
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Speech senses logging request finished", v8, 2u);
  }
}

void __55___LTLoggingRequestHandler_startSafariFeedbackRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = _LTOSLogTranslationEngine(v3, v4);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __55___LTLoggingRequestHandler_startSafariFeedbackRequest___block_invoke_2_cold_1();
    }

    v7 = NSStringFromSelector(*(a1 + 32));
    _LTSendErrorEvent(v3, v7);
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Safari feedback request finished", v8, 2u);
  }
}

@end