@interface TCGameController
@end

@implementation TCGameController

void __47___TCGameController_setValue_forButtonElement___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = getTCLogger(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) debugName];
    v4 = *(a1 + 40);
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_23AADD000, v2, OS_LOG_TYPE_DEFAULT, "%@ changed: %@", &v8, 0x16u);
  }

  v5 = [*(a1 + 32) physicalInputProfile];
  v6 = [v5 valueChangedHandler];

  if (v6)
  {
    v7 = [*(a1 + 32) physicalInputProfile];
    (v6)[2](v6, v7, *(a1 + 40));
  }
}

void __56___TCGameController_setPosition_forDirectionPadElement___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = getTCLogger(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) debugName];
    v4 = *(a1 + 40);
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_23AADD000, v2, OS_LOG_TYPE_DEFAULT, "%@ changed: %@", &v8, 0x16u);
  }

  v5 = [*(a1 + 32) physicalInputProfile];
  v6 = [v5 valueChangedHandler];

  if (v6)
  {
    v7 = [*(a1 + 32) physicalInputProfile];
    (v6)[2](v6, v7, *(a1 + 40));
  }
}

@end