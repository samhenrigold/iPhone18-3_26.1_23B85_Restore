@interface GKPreferences(Restrictions)
@end

@implementation GKPreferences(Restrictions)

- (void)effectiveBoolValueForSetting:()Restrictions .cold.1(uint64_t a1, int a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = @"NoData";
  if (a2 == 2)
  {
    v3 = @"ExplicitNo";
  }

  if (a2 == 1)
  {
    v3 = @"ExplicitYes";
  }

  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_227904000, log, OS_LOG_TYPE_DEBUG, "GKPreferences (Restrictions) effectiveBoolValueForSetting:%@ -> %@", &v4, 0x16u);
}

@end