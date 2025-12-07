@interface STBlueprint(Downtime)
@end

@implementation STBlueprint(Downtime)

+ (void)saveDowntimeForUser:()Downtime startTime:endTime:scheduleByWeekdayIndex:enabled:behaviorType:error:.cold.2(char a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = @"Enable";
  if ((a1 & 1) == 0)
  {
    v3 = @"Disable";
  }

  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_fault_impl(&dword_1B831F000, log, OS_LOG_TYPE_FAULT, "Failed to apply schedule state change: %@ - %@", &v4, 0x16u);
}

+ (void)_updatedDowntimeForUser:()Downtime startTime:endTime:scheduleByWeekdayIndex:enabled:behaviorType:error:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = @"Cannot create downtime without valid start/end time or schedule";
  OUTLINED_FUNCTION_4_0(&dword_1B831F000, a1, a3, "%{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_applyScheduleStateChange:()Downtime atDate:inCalendar:error:.cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = @"Enable";
  if (!a1)
  {
    v8 = @"Disable";
  }

  LODWORD(v9) = 138412290;
  HIDWORD(v9) = v8;
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, a2, a3, "Cannot apply schedule state change: %@ without schedule", a5, a6, a7, a8, v9, HIDWORD(v8));
}

@end