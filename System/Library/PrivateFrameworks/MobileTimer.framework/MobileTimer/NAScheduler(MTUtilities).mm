@interface NAScheduler(MTUtilities)
+ (id)mtSerialSchedulerForObject:()MTUtilities;
@end

@implementation NAScheduler(MTUtilities)

+ (id)mtSerialSchedulerForObject:()MTUtilities
{
  v3 = MEMORY[0x1E69B3790];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.%@.serial", objc_opt_class()];
  v5 = [v3 serialDispatchQueueSchedulerWithName:v4];

  return v5;
}

@end