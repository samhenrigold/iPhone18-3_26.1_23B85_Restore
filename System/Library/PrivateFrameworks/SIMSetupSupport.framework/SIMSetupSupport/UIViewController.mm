@interface UIViewController
@end

@implementation UIViewController

void __67__UIViewController_SimSetup__dismissSimSetupFlowFromViewController__block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = _TSLogDomain(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[UIViewController(SimSetup) dismissSimSetupFlowFromViewController]_block_invoke";
    _os_log_impl(&dword_262AA8000, v2, OS_LOG_TYPE_DEFAULT, "Modal presentation dismissed successfully @%s", &v3, 0xCu);
  }
}

@end