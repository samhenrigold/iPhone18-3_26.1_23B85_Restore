@interface GKPreferences(AgeCategoryRestrictions)
- (void)localPlayerAgeCategory;
@end

@implementation GKPreferences(AgeCategoryRestrictions)

- (void)localPlayerAgeCategory
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCABB0];
  selfCopy = self;
  v3 = [v1 numberWithInt:3];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_227904000, selfCopy, OS_LOG_TYPE_DEBUG, "GKPreferences (AgeCategoryRestrictions) localPlayerAgeCategory: %@ (underage flag set)", &v4, 0xCu);
}

@end