@interface _GCGamepadEventHID
- (BOOL)hasValidValueForElement:(int64_t)element;
- (_GCGamepadEventHID)initWithHIDEvent:(__IOHIDEvent *)event;
- (float)floatValueForElement:(int64_t)element;
- (void)dealloc;
@end

@implementation _GCGamepadEventHID

- (_GCGamepadEventHID)initWithHIDEvent:(__IOHIDEvent *)event
{
  v20 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = _GCGamepadEventHID;
  v4 = [(_GCGamepadEventHID *)&v18 init];
  if (v4)
  {
    v4->_event = CFRetain(event);
    if (IOHIDEventGetType() == 35)
    {
      IOHIDEventGetChildren();
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v5 = v17 = 0u;
      v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v15;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v15 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v14 + 1) + 8 * i);
            IntegerValue = IOHIDEventGetIntegerValue();
            v12 = IOHIDEventGetIntegerValue();
            if (IntegerValue == 65280 && v12 == 67)
            {
              v4->_extendedEvent = v10;
              goto LABEL_14;
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }
  }

  return v4;
}

- (void)dealloc
{
  self->_extendedEvent = 0;
  CFRelease(self->_event);
  self->_event = 0;
  v3.receiver = self;
  v3.super_class = _GCGamepadEventHID;
  [(_GCGamepadEventHID *)&v3 dealloc];
}

- (BOOL)hasValidValueForElement:(int64_t)element
{
  if (self->_extendedEvent)
  {
    LOBYTE(v3) = 1;
  }

  else if (element >= 0x2F)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_GCGamepadEventImpl.m" lineNumber:342 description:@"Unknown element"];

    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = 0x7E00003FFFFFuLL >> element;
  }

  return v3 & 1;
}

- (float)floatValueForElement:(int64_t)element
{
  if (self->_extendedEvent)
  {
    DataValue = IOHIDEventGetDataValue();
    if (element > 46)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_GCGamepadEventImpl.m" lineNumber:376 description:@"Unknown element"];

      return 0.0;
    }

    else
    {
      return *(DataValue + 4 * element + 8);
    }
  }

  else
  {
    v7 = 0.0;
    switch(element)
    {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 18:
      case 19:
      case 20:
      case 21:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
        IOHIDEventGetFloatValue();
        return v14;
      case 10:
      case 11:
        IOHIDEventGetFloatValue();
        v9 = v8;
        if (element == 10)
        {
          goto LABEL_9;
        }

        goto LABEL_11;
      case 12:
      case 13:
        IOHIDEventGetFloatValue();
        v9 = v12;
        if (element != 13)
        {
          goto LABEL_11;
        }

        goto LABEL_9;
      case 14:
      case 15:
        IOHIDEventGetFloatValue();
        v9 = v13;
        if (element != 14)
        {
          goto LABEL_11;
        }

        goto LABEL_9;
      case 16:
      case 17:
        IOHIDEventGetFloatValue();
        v9 = v11;
        if (element == 17)
        {
LABEL_9:
          v7 = fmaxf(v9, 0.0);
        }

        else
        {
LABEL_11:
          if (v9 >= 0.0)
          {
            v7 = 0.0;
          }

          else
          {
            v7 = -v9;
          }
        }

        break;
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
        return v7;
      default:
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"_GCGamepadEventImpl.m" lineNumber:491 description:@"Unknown element"];

        break;
    }
  }

  return v7;
}

@end