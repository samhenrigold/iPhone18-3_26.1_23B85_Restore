@interface GCMotionEventHIDAdapter
@end

@implementation GCMotionEventHIDAdapter

void __51___GCMotionEventHIDAdapter_initWithSource_service___block_invoke(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if ((!v3 || v3 == IOHIDEventGetSenderID() || IOHIDEventGetSenderID() == -1) && IOHIDEventGetType() == 1)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v5 = IOHIDEventGetIntegerValue();
    if (IntegerValue == 65280 && v5 == 59)
    {
      v6 = objc_opt_new();
      [v6 setTimestamp:IOHIDEventGetTimeStamp()];
      v7 = IOHIDEventGetChildren();
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v23;
        do
        {
          v11 = 0;
          do
          {
            if (*v23 != v10)
            {
              objc_enumerationMutation(v7);
            }

            Type = IOHIDEventGetType();
            switch(Type)
            {
              case 10:
                [v6 setHasAttitude:1];
                IOHIDEventGetFloatValue();
                [v6 setAttitudeX:?];
                IOHIDEventGetFloatValue();
                [v6 setAttitudeY:?];
                IOHIDEventGetFloatValue();
                [v6 setAttitudeZ:?];
                IOHIDEventGetFloatValue();
                [v6 setAttitudeW:?];
                break;
              case 13:
                [v6 setHasAccelerometer:1];
                IOHIDEventGetDoubleValue();
                [v6 setAccelerometerX:?];
                IOHIDEventGetDoubleValue();
                [v6 setAccelerometerY:?];
                IOHIDEventGetDoubleValue();
                [v6 setAccelerometerZ:?];
                break;
              case 20:
                [v6 setHasGyro:1];
                IOHIDEventGetDoubleValue();
                [v6 setGyroPitch:?];
                IOHIDEventGetDoubleValue();
                [v6 setGyroYaw:?];
                IOHIDEventGetDoubleValue();
                [v6 setGyroRoll:?];
                break;
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v9);
      }

      v13 = objc_getProperty(*(a1 + 40), sel_observers, 24, 1);
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v14 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v19;
        do
        {
          v17 = 0;
          do
          {
            if (*v19 != v16)
            {
              objc_enumerationMutation(v13);
            }

            (*(*(*(&v18 + 1) + 8 * v17++) + 16))();
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
        }

        while (v15);
      }
    }
  }
}

void __48___GCMotionEventHIDAdapter_observeMotionEvents___block_invoke(uint64_t a1)
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