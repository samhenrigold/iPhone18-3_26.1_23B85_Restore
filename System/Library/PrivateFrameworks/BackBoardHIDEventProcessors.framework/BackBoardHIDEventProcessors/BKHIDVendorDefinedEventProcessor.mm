@interface BKHIDVendorDefinedEventProcessor
- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher;
@end

@implementation BKHIDVendorDefinedEventProcessor

- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher
{
  v29 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  dispatcherCopy = dispatcher;
  v9 = *event;
  IntegerValue = IOHIDEventGetIntegerValue();
  v11 = IOHIDEventGetIntegerValue();
  if (IntegerValue == 65292)
  {
    v12 = BKLogMotionEvents();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_5;
    }

    *buf = 134218240;
    v26 = 65292;
    v27 = 2048;
    v28 = v11;
    v13 = "Motion event usagePage:0x%lX usage:%ld ";
  }

  else
  {
    v12 = BKLogHID();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_5;
    }

    *buf = 134218240;
    v26 = IntegerValue;
    v27 = 2048;
    v28 = v11;
    v13 = "VendorDefinedEvent usagePage:0x%lX usage:%ld ";
  }

  _os_log_debug_impl(&dword_241980000, v12, OS_LOG_TYPE_DEBUG, v13, buf, 0x16u);
LABEL_5:

  v14 = [dispatcherCopy destinationsForEvent:v9 fromSender:senderCopy];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [dispatcherCopy postEvent:v9 toDestination:*(*(&v20 + 1) + 8 * i)];
      }

      v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v16);
  }

  return 1;
}

@end