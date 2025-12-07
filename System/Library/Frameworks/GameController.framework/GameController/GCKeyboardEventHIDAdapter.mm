@interface GCKeyboardEventHIDAdapter
@end

@implementation GCKeyboardEventHIDAdapter

void __53___GCKeyboardEventHIDAdapter_initWithSource_service___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (IOHIDEventGetType() == 3)
  {
    v3 = *(a1 + 32);
    if (!v3 || v3 == IOHIDEventGetSenderID() || IOHIDEventGetSenderID() == -1)
    {
      v4 = objc_opt_new();
      [v4 setTimestamp:IOHIDEventGetTimeStamp()];
      [v4 setUsagePage:IOHIDEventGetIntegerValue()];
      [v4 setUsage:IOHIDEventGetIntegerValue()];
      [v4 setDown:IOHIDEventGetIntegerValue()];
      [v4 setSender:IOHIDEventGetSenderID()];
      v5 = objc_getProperty(*(a1 + 40), sel_observers, 24, 1);
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v11;
        do
        {
          v9 = 0;
          do
          {
            if (*v11 != v8)
            {
              objc_enumerationMutation(v5);
            }

            (*(*(*(&v10 + 1) + 8 * v9++) + 16))();
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v7);
      }
    }
  }
}

void __52___GCKeyboardEventHIDAdapter_observeKeyboardEvents___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3 = _Block_copy(*(a1 + 40));
  v4 = [v2 containsObject:v3];

  if (v4)
  {
    do
    {
      v5 = [*(a1 + 32) observers];
      v6 = [v5 mutableCopy];

      v7 = _Block_copy(*(a1 + 40));
      [v6 removeObject:v7];

      [*(a1 + 32) setObservers:v6];
      v8 = [*(a1 + 32) observers];
      v9 = _Block_copy(*(a1 + 40));
      v10 = [v8 containsObject:v9];
    }

    while ((v10 & 1) != 0);
  }
}

@end