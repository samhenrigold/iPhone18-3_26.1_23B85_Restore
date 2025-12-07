@interface HKInteractiveChartOverlaySleepViewController(HKSleepStageDayAxisDelegate)
@end

@implementation HKInteractiveChartOverlaySleepViewController(HKSleepStageDayAxisDelegate)

- (void)sleepDaySummaryForDate:()HKSleepStageDayAxisDelegate .cold.1(void *a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = objc_opt_class();
  v6 = [a3 description];
  OUTLINED_FUNCTION_0_13();
  _os_log_debug_impl(&dword_1C3942000, v4, OS_LOG_TYPE_DEBUG, "[%{public}@] Finding sleep day summary for date %{public}@", v7, 0x16u);
}

- (void)sleepDaySummaryForDate:()HKSleepStageDayAxisDelegate .cold.2(void *a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a1;
  v4 = 138543362;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_error_impl(&dword_1C3942000, v2, OS_LOG_TYPE_ERROR, "[%{public}@] Display type not interactive", &v4, 0xCu);
}

- (void)sleepDaySummaryForDate:()HKSleepStageDayAxisDelegate .cold.3(void *a1, uint64_t a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = objc_opt_class();
  v6 = [a3 description];
  OUTLINED_FUNCTION_0_13();
  _os_log_error_impl(&dword_1C3942000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] Cannot determine summary with series: %{public}@", v7, 0x16u);
}

- (void)sleepDaySummaryForDate:()HKSleepStageDayAxisDelegate .cold.4(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1C3942000, log, OS_LOG_TYPE_DEBUG, "[%{public}@] Returning summary for date %{public}@", buf, 0x16u);
}

@end