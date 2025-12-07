@interface _SFFeatureAvailability
+ (BOOL)_isEligibleForDomain:(unint64_t)domain;
@end

@implementation _SFFeatureAvailability

+ (BOOL)_isEligibleForDomain:(unint64_t)domain
{
  domain_answer = os_eligibility_get_domain_answer();
  v4 = domain_answer;
  v6 = WBS_LOG_CHANNEL_PREFIXViewService(domain_answer, v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (v7)
    {
      [(_SFFeatureAvailability *)v4 _isEligibleForDomain:v6];
LABEL_6:
      LOBYTE(v7) = 0;
    }
  }

  else if (v7)
  {
    [_SFFeatureAvailability _isEligibleForDomain:v6];
    goto LABEL_6;
  }

  return v7;
}

+ (void)_isEligibleForDomain:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1D4644000, a2, OS_LOG_TYPE_ERROR, "Error when determining eligibility, error (%d)", v2, 8u);
}

@end