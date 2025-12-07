@interface HDMCDailyAnalytics(Onboarding)
@end

@implementation HDMCDailyAnalytics(Onboarding)

+ (void)_setDiagnosticOnboardingFieldsInMetric:()Onboarding keyValueDomain:heartRateInputFeatureStatus:deviationDetectionFeatureStatus:wristTemperatureInputFeatureStatus:gregorianCalendar:error:.cold.1(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Failed to read first onboarding completed date with error: %{public}@", v7, v8, v9, v10);
}

+ (void)_setDiagnosticOnboardingFieldsInMetric:()Onboarding keyValueDomain:heartRateInputFeatureStatus:deviationDetectionFeatureStatus:wristTemperatureInputFeatureStatus:gregorianCalendar:error:.cold.2(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = objc_opt_class();
  v4 = OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_1(&dword_2293D1000, v5, v6, "[%{public}@] Failed to read onboarding completed with error: %{public}@", v7, v8, v9, v10);
}

@end