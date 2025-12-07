@interface BKSHIDEventClearRemoteTimestamp
@end

@implementation BKSHIDEventClearRemoteTimestamp

void *___BKSHIDEventClearRemoteTimestamp_block_invoke(uint64_t a1, uint64_t a2)
{
  Type = IOHIDEventGetType();
  IntegerValue = IOHIDEventGetIntegerValue();
  result = IOHIDEventGetIntegerValue();
  if (Type == 1)
  {
    v6 = IntegerValue == 65308 || IntegerValue == 65280;
    if (v6 && result == 258)
    {
      v7 = *(a1 + 32);

      return [v7 addObject:?];
    }
  }

  return result;
}

@end