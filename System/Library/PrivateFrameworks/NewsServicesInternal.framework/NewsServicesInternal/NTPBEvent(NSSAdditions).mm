@interface NTPBEvent(NSSAdditions)
+ (id)nss_eventWithIdentifier;
- (uint64_t)nss_setStartDate:()NSSAdditions;
- (void)nss_setEndDate:()NSSAdditions;
- (void)nss_setStartDate:()NSSAdditions endDate:;
@end

@implementation NTPBEvent(NSSAdditions)

+ (id)nss_eventWithIdentifier
{
  v1 = objc_opt_new();
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [v1 setAppAnalyticsEventIdentifier:uUIDString];

  return v1;
}

- (uint64_t)nss_setStartDate:()NSSAdditions
{
  v4 = NTPBEventDateToTimestamp(a3);

  return [self setStartTimestamp:v4];
}

- (void)nss_setStartDate:()NSSAdditions endDate:
{
  v6 = a4;
  [self nss_setStartDate:a3];
  [self nss_setEndDate:v6];
}

- (void)nss_setEndDate:()NSSAdditions
{
  v4 = a3;
  if (([self hasStartTimestamp] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTPBEvent(NSSAdditions) nss_setEndDate:];
  }

  [self setDuration:{NTPBEventDateToTimestamp(v4) - objc_msgSend(self, "startTimestamp")}];
}

- (void)nss_setEndDate:()NSSAdditions .cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unable to calculate the duration of an event without setting the startTimestamp"];
  v1 = 136315906;
  v2 = "[NTPBEvent(NSSAdditions) nss_setEndDate:]";
  v3 = 2080;
  v4 = "NTPBNewsAnalytics+NSSAdditions.m";
  v5 = 1024;
  v6 = 37;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&dword_25BF0A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v1, 0x26u);
}

@end