@interface HKKeyValueDomain(HKHeartRhythmAdditions)
@end

@implementation HKKeyValueDomain(HKHeartRhythmAdditions)

- (void)hkhr_electrocardiogramRecordingFirstOnboardingCompletedDateWithError:()HKHeartRhythmAdditions .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v6 = 138543618;
  v7 = objc_opt_class();
  v8 = 2114;
  v9 = a3;
  v5 = v7;
  _os_log_error_impl(&dword_19197B000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Error reading first ECG onboarding completion date: %{public}@", &v6, 0x16u);
}

@end