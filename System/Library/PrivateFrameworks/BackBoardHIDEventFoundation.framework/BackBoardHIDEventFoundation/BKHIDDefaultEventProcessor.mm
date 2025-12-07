@interface BKHIDDefaultEventProcessor
- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher;
@end

@implementation BKHIDDefaultEventProcessor

- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher
{
  v20 = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  v8 = *event;
  v9 = [dispatcherCopy destinationsForEvent:v8 fromSender:sender];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [dispatcherCopy postEvent:v8 toDestination:*(*(&v15 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  return 1;
}

@end