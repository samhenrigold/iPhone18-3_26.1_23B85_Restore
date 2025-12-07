@interface HIDEvent(HIDFramework)
- (id)serialize:()HIDFramework error:;
- (uint64_t)initWithBytes:()HIDFramework length:;
- (uint64_t)initWithData:()HIDFramework;
- (uint64_t)isEqual:()HIDFramework;
- (void)initWithType:()HIDFramework timestamp:senderID:;
- (void)removeAllEvents;
@end

@implementation HIDEvent(HIDFramework)

- (void)initWithType:()HIDFramework timestamp:senderID:
{
  v6 = IOHIDEventCreate();

  if (v6)
  {
    IOHIDEventSetSenderID();
    v7 = v6;
  }

  return v6;
}

- (uint64_t)initWithData:()HIDFramework
{
  v4 = IOHIDEventCreateWithData();

  return v4;
}

- (uint64_t)initWithBytes:()HIDFramework length:
{
  v5 = IOHIDEventCreateWithBytes();

  return v5;
}

- (uint64_t)isEqual:()HIDFramework
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [self isEqualToHIDEvent:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)serialize:()HIDFramework error:
{
  if (a3)
  {
    Data = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    Data = IOHIDEventCreateData();
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (!Data)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithIOReturn:3758097084];
  }

LABEL_7:

  return Data;
}

- (void)removeAllEvents
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  children = [self children];
  v2 = [children countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(children);
        }

        IOHIDEventRemoveEvent();
        ++v5;
      }

      while (v3 != v5);
      v3 = [children countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

@end