@interface LACAKSHelper
+ (BOOL)isOnenessAssertionActive;
+ (int64_t)deviceLockState;
+ (void)deviceLockState;
@end

@implementation LACAKSHelper

+ (BOOL)isOnenessAssertionActive
{
  extended_device_state = aks_get_extended_device_state(0);
  if (!extended_device_state)
  {
    return 0;
  }

  v3 = extended_device_state;
  v4 = LACLogABM(extended_device_state);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    +[(LACAKSHelper *)v3];
  }

  return 0;
}

+ (int64_t)deviceLockState
{
  device_state = aks_get_device_state(0);
  if (!device_state)
  {
    return 0;
  }

  v3 = device_state;
  v4 = LACLogABM(device_state);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    +[(LACAKSHelper *)v3];
  }

  return 0;
}

+ (void)deviceLockState
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = self;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "AKS get device state returned non-zero result: %d", v2, 8u);
}

@end