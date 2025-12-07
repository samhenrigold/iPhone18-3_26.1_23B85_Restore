@interface BKHIDBiometricEventProcessor
- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher;
@end

@implementation BKHIDBiometricEventProcessor

- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher
{
  v24 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  dispatcherCopy = dispatcher;
  IntegerValue = IOHIDEventGetIntegerValue();
  if (IntegerValue > 3)
  {
    v10 = BKLogHID();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v22 = IntegerValue;
      _os_log_error_impl(&dword_241980000, v10, OS_LOG_TYPE_ERROR, "Dropping unknown biometric event type %d ", buf, 8u);
    }
  }

  else
  {
    Copy = IOHIDEventCreateCopy();
    v10 = [dispatcherCopy destinationsForEvent:Copy fromSender:senderCopy];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v17 + 1) + 8 * v14);
          [senderCopy eventSource];
          BKSHIDEventSetSimpleDeliveryInfo();
          [dispatcherCopy postEvent:Copy toDestination:v15];
          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v12);
    }

    CFRelease(Copy);
  }

  return 1;
}

@end