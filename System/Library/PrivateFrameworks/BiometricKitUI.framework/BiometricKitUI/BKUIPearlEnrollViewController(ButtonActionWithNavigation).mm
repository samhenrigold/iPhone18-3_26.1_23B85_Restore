@interface BKUIPearlEnrollViewController(ButtonActionWithNavigation)
@end

@implementation BKUIPearlEnrollViewController(ButtonActionWithNavigation)

- (void)updatePeriocularEnrollmentSettings:()ButtonActionWithNavigation .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 localizedDescription];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_241B0A000, a3, OS_LOG_TYPE_ERROR, "Update Periocular Enrollment Settings Error:%@ Context:%@", &v6, 0x16u);
}

@end