@interface EKRecurrenceGenerator(Deprecated)
@end

@implementation EKRecurrenceGenerator(Deprecated)

+ (void)_isLunarBirthdayRecurrenceRule:()Deprecated lunarCalendarString:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1A805E000, log, OS_LOG_TYPE_ERROR, "Lunar birthday without yearly frequency detected. recurrenceRule = %{public}@, lunarCalendar = %{public}@", &v3, 0x16u);
}

@end