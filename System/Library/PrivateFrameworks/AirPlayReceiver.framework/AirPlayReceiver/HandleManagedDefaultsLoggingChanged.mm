@interface HandleManagedDefaultsLoggingChanged
@end

@implementation HandleManagedDefaultsLoggingChanged

uint64_t ___HandleManagedDefaultsLoggingChanged_block_invoke(uint64_t a1)
{
  v1 = IsAppleInternalBuild();
  result = LogControl();
  if (v1)
  {

    return LogControl();
  }

  return result;
}

@end