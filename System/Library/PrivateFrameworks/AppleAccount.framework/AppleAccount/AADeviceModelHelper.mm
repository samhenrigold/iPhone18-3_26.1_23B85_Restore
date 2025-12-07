@interface AADeviceModelHelper
+ (BOOL)isDeviceEqualTo:(id)to;
@end

@implementation AADeviceModelHelper

+ (BOOL)isDeviceEqualTo:(id)to
{
  toCopy = to;
  v4 = toCopy;
  if (isDeviceEqualTo__onceToken != -1)
  {
    +[AADeviceModelHelper isDeviceEqualTo:];
  }

  v5 = _AALogSystem(toCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AADeviceModelHelper isDeviceEqualTo:v5];
  }

  v6 = [isDeviceEqualTo__deviceModel isEqualToString:v4];
  return v6;
}

uint64_t __39__AADeviceModelHelper_isDeviceEqualTo___block_invoke()
{
  isDeviceEqualTo__deviceModel = MGCopyAnswer();

  return MEMORY[0x1EEE66BB8]();
}

+ (void)isDeviceEqualTo:(os_log_t)log .cold.2(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138412290;
  v2 = isDeviceEqualTo__deviceModel;
  _os_log_debug_impl(&dword_1B6F6A000, log, OS_LOG_TYPE_DEBUG, "Current device model: %@", &v1, 0xCu);
}

@end