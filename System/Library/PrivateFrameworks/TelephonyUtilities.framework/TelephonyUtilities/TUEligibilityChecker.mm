@interface TUEligibilityChecker
+ (BOOL)isCallRecordingEligible;
+ (void)isCallRecordingEligible;
@end

@implementation TUEligibilityChecker

+ (BOOL)isCallRecordingEligible
{
  v9 = *MEMORY[0x1E69E9840];
  domain_answer = os_eligibility_get_domain_answer();
  v3 = domain_answer;
  v4 = TUDefaultLog(domain_answer);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[(TUEligibilityChecker *)v3];
    }

    return 0;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v8 = 0;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "os_eligibility for OS_ELIGIBILITY_DOMAIN_NICKEL: %llu", buf, 0xCu);
    }

    return 0;
  }
}

+ (void)isCallRecordingEligible
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = self;
  _os_log_error_impl(&dword_1956FD000, a2, OS_LOG_TYPE_ERROR, "os_eligibility_get_domain_answer failed with error %d", v2, 8u);
}

@end