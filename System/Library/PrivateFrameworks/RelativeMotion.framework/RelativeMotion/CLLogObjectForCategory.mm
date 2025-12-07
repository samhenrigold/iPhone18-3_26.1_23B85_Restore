@interface CLLogObjectForCategory
@end

@implementation CLLogObjectForCategory

uint64_t ___CLLogObjectForCategory_ConnectionClient_Default_block_invoke()
{
  v0 = os_log_create("com.apple.RelativeMotion", "ConnectionClient");
  v1 = logObject_ConnectionClient_Default;
  logObject_ConnectionClient_Default = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t ___CLLogObjectForCategory_RelativeMotionManager_Default_block_invoke()
{
  v0 = os_log_create("com.apple.RelativeMotion", "RelativeMotionManager");
  v1 = logObject_RelativeMotionManager_Default;
  logObject_RelativeMotionManager_Default = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t ___CLLogObjectForCategory_TempestDataManager_Default_block_invoke()
{
  v0 = os_log_create("com.apple.RelativeMotion", "TempestDataManager");
  v1 = logObject_TempestDataManager_Default;
  logObject_TempestDataManager_Default = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t ___CLLogObjectForCategory_TempestDataReceiver_Default_block_invoke()
{
  v0 = os_log_create("com.apple.RelativeMotion", "TempestDataReceiver");
  v1 = logObject_TempestDataReceiver_Default;
  logObject_TempestDataReceiver_Default = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t ___CLLogObjectForCategory_IPC_Default_block_invoke()
{
  v0 = os_log_create("com.apple.RelativeMotion", "IPC");
  v1 = logObject_IPC_Default;
  logObject_IPC_Default = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t ___CLLogObjectForCategory_ConnectionClient_Default_block_invoke_0()
{
  v0 = os_log_create("com.apple.RelativeMotion", "ConnectionClient");
  v1 = logObject_ConnectionClient_Default;
  logObject_ConnectionClient_Default = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t ___CLLogObjectForCategory_InternalService_Default_block_invoke()
{
  v0 = os_log_create("com.apple.RelativeMotion", "InternalService");
  v1 = logObject_InternalService_Default;
  logObject_InternalService_Default = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t ___CLLogObjectForCategory_TempestDataManager_Default_block_invoke_0()
{
  v0 = os_log_create("com.apple.RelativeMotion", "TempestDataManager");
  v1 = logObject_TempestDataManager_Default;
  logObject_TempestDataManager_Default = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t ___CLLogObjectForCategory_ConnectionClient_Default_block_invoke_1()
{
  v0 = os_log_create("com.apple.RelativeMotion", "ConnectionClient");
  v1 = logObject_ConnectionClient_Default;
  logObject_ConnectionClient_Default = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end