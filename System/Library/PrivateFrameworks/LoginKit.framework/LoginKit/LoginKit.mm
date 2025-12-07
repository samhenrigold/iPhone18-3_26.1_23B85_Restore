void sub_256191798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void LKAnalyticsSendLoginEvent(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277D77BF8] sharedManager];
  v4 = [v3 currentUser];

  v5 = [v4 lastLoginDate];
  [v2 timeIntervalSinceDate:v5];

  [v4 inFirstLoginSession];
  [v4 isTransientUser];
  AnalyticsSendEventLazy();
}

id __LKAnalyticsSendLoginEvent_block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = @"duration";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  v8[0] = v2;
  v7[1] = @"isFirstTimeLogin";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v8[1] = v3;
  v7[2] = @"isGuestUser";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 41)];
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

void LKRegisterLoginKitLogging(uint64_t result, uint64_t a2)
{
  if (LKRegisterLoginKitLogging_onceToken != -1)
  {
    LKRegisterLoginKitLogging_cold_1();
  }
}

uint64_t __LKRegisterLoginKitLogging_block_invoke()
{
  v0 = os_log_create(LKLogSubsystem, "Default");
  v1 = LKLogDefault;
  LKLogDefault = v0;

  v2 = os_log_create(LKLogSubsystem, "Parsing");
  v3 = LKLogParsing;
  LKLogParsing = v2;

  LKLogRegression = os_log_create(LKLogSubsystem, "Regression");

  return MEMORY[0x2821F96F8]();
}

void sub_25619425C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t isMultiUser()
{
  v0 = [MEMORY[0x277D77BF8] sharedManager];
  v1 = [v0 isMultiUser];

  return v1;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v5, OS_LOG_TYPE_DEBUG, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}