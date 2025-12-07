@interface BKHIDScrollEventProcessor
- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher;
- (void)_dispatchEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher destinations:(id)destinations;
@end

@implementation BKHIDScrollEventProcessor

- (void)_dispatchEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher destinations:(id)destinations
{
  v22 = *MEMORY[0x277D85DE8];
  senderCopy = sender;
  dispatcherCopy = dispatcher;
  destinationsCopy = destinations;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [destinationsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(destinationsCopy);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        Copy = IOHIDEventCreateCopy();
        [senderCopy eventSource];
        BKSHIDEventSetSimpleDeliveryInfo();
        [dispatcherCopy postEvent:Copy toDestination:v15];
        CFRelease(Copy);
        ++v14;
      }

      while (v12 != v14);
      v12 = [destinationsCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }
}

- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher
{
  senderCopy = sender;
  dispatcherCopy = dispatcher;
  v10 = *event;
  if (IOHIDEventGetType() == 6)
  {
    v11 = [dispatcherCopy destinationsForEvent:v10 fromSender:senderCopy];
    [(BKHIDScrollEventProcessor *)self _dispatchEvent:v10 sender:senderCopy dispatcher:dispatcherCopy destinations:v11];

    displayUUID = [senderCopy displayUUID];
    _BKHIDNoteUserEventOccurredOnDisplay();

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end