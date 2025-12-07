@interface UICustomScheduleController
@end

@implementation UICustomScheduleController

void __53___UICustomScheduleController__updateTimeMonitoring___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = _UIUserInterfaceStyleArbiterLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = formatDate(*(a1 + 32));
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "CustomSchedule: Timer fired for %@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateWithDate:*(a1 + 32)];
}

@end