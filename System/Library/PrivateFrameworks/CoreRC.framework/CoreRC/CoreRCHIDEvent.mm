@interface CoreRCHIDEvent
- (BOOL)getCECUserControl:(CECUserControl *)control pressed:(BOOL *)pressed;
- (BOOL)isEqualToRCHIDEvent:(id)event;
- (BOOL)isRepeat;
- (CoreRCHIDEvent)initWithCECAudioVolumeLevel:(unsigned __int8)level;
- (CoreRCHIDEvent)initWithCECDeckControlMode:(unsigned __int8)mode pressed:(BOOL)pressed;
- (CoreRCHIDEvent)initWithCECPlayMode:(unsigned __int8)mode pressed:(BOOL)pressed;
- (CoreRCHIDEvent)initWithCECUserControl:(CECUserControl)control pressed:(BOOL)pressed;
- (CoreRCHIDEvent)initWithCoder:(id)coder;
- (CoreRCHIDEvent)initWithCommand:(unint64_t)command pressed:(BOOL)pressed;
- (CoreRCHIDEvent)initWithCommand:(unint64_t)command pressed:(BOOL)pressed timestamp:(unint64_t)timestamp;
- (CoreRCHIDEvent)initWithIOHIDEvent:(__IOHIDEvent *)event;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)initKeyboardEventWithUsagePage:(unsigned int)page usageID:(unsigned int)d pressed:(BOOL)pressed timestamp:(unint64_t)timestamp;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)getCommand:(unint64_t *)command pressed:(BOOL *)pressed;
@end

@implementation CoreRCHIDEvent

- (void)dealloc
{
  event = self->_event;
  if (event)
  {
    CFRelease(event);
  }

  v4.receiver = self;
  v4.super_class = CoreRCHIDEvent;
  [(CoreRCHIDEvent *)&v4 dealloc];
}

- (CoreRCHIDEvent)initWithIOHIDEvent:(__IOHIDEvent *)event
{
  v7.receiver = self;
  v7.super_class = CoreRCHIDEvent;
  v4 = [(CoreRCHIDEvent *)&v7 init];
  v5 = v4;
  if (v4)
  {
    if (event)
    {
      v4->_event = event;
      CFRetain(event);
    }

    else
    {

      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"event must not be null"];
      return 0;
    }
  }

  return v5;
}

- (CoreRCHIDEvent)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CoreRCHIDEvent;
  v4 = [(CoreRCHIDEvent *)&v7 init];
  if (v4)
  {
    [coder decodeObjectOfClass:objc_opt_class() forKey:@"IOHIDEvent"];
    v5 = IOHIDEventCreateWithData();
    if (v5)
    {
      v4->_event = v5;
    }

    else
    {

      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"event must not be null"];
      return 0;
    }
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [(CoreRCHIDEvent *)self event];
  Data = IOHIDEventCreateData();
  [coder encodeObject:Data forKey:@"IOHIDEvent"];
}

- (id)initKeyboardEventWithUsagePage:(unsigned int)page usageID:(unsigned int)d pressed:(BOOL)pressed timestamp:(unint64_t)timestamp
{
  KeyboardEvent = IOHIDEventCreateKeyboardEvent();
  v8 = [(CoreRCHIDEvent *)self initWithIOHIDEvent:KeyboardEvent];
  if (KeyboardEvent)
  {
    CFRelease(KeyboardEvent);
  }

  return v8;
}

- (CoreRCHIDEvent)initWithCommand:(unint64_t)command pressed:(BOOL)pressed
{
  pressedCopy = pressed;
  v7 = mach_absolute_time();

  return [(CoreRCHIDEvent *)self initWithCommand:command pressed:pressedCopy timestamp:v7];
}

- (CoreRCHIDEvent)initWithCommand:(unint64_t)command pressed:(BOOL)pressed timestamp:(unint64_t)timestamp
{
  pressedCopy = pressed;
  v10 = 0;
  if (CoreRCCommandToHIDUsage(command, &v10 + 1, &v10))
  {
    return [(CoreRCHIDEvent *)self initKeyboardEventWithUsagePage:HIDWORD(v10) usageID:v10 pressed:pressedCopy timestamp:timestamp];
  }

  if (gLogCategory_CoreRCHID <= 60 && (gLogCategory_CoreRCHID != -1 || _LogCategory_Initialize()))
  {
    [CoreRCHIDEvent initWithCommand:command pressed:? timestamp:?];
  }

  return 0;
}

- (id)debugDescription
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{-[CoreRCHIDEvent description](self, "description")}];
  event = self->_event;
  if (event)
  {
    v5 = CFCopyDescription(event);
    [v3 appendFormat:@" IOHIDEvent:\n%@", v5];
  }

  return v3;
}

- (id)description
{
  v14.receiver = self;
  v14.super_class = CoreRCHIDEvent;
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{-[CoreRCHIDEvent description](&v14, sel_description)}];
  if (self->_event)
  {
    v13 = 0;
    v12 = 0;
    [(CoreRCHIDEvent *)self getCommand:&v13 pressed:&v12];
    if (v13)
    {
      v4 = CoreRCCommandString(v13);
      if (v12)
      {
        v5 = "YES";
      }

      else
      {
        v5 = "NO";
      }

      [v3 appendFormat:@" command: %@; pressed: %s;", v4, v5, v11];
    }

    else if (self->_event && IOHIDEventGetType() == 3)
    {
      IntegerValue = IOHIDEventGetIntegerValue();
      v8 = IOHIDEventGetIntegerValue();
      v9 = IOHIDEventGetIntegerValue();
      v10 = "YES";
      if (!v9)
      {
        v10 = "NO";
      }

      [v3 appendFormat:@" usagePage: %u; usageID: %u; pressed: %s;", IntegerValue, v8, v10];
    }
  }

  return v3;
}

- (BOOL)isEqualToRCHIDEvent:(id)event
{
  event = [event event];
  if (self->_event)
  {
    v5 = event == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  Type = IOHIDEventGetType();
  if (Type != IOHIDEventGetType())
  {
    return 0;
  }

  if (IOHIDEventGetType() != 3)
  {
    return 0;
  }

  IntegerValue = IOHIDEventGetIntegerValue();
  if (IntegerValue != IOHIDEventGetIntegerValue())
  {
    return 0;
  }

  v8 = IOHIDEventGetIntegerValue();
  return v8 == IOHIDEventGetIntegerValue();
}

- (BOOL)isRepeat
{
  event = self->_event;
  if (event)
  {
    LOBYTE(event) = IOHIDEventGetType() == 3 && IOHIDEventGetIntegerValue() != 0;
  }

  return event;
}

- (void)getCommand:(unint64_t *)command pressed:(BOOL *)pressed
{
  if (self->_event && IOHIDEventGetType() == 3 && (IntegerValue = IOHIDEventGetIntegerValue(), v7 = IOHIDEventGetIntegerValue(), CoreRCCommandFromHIDUsage(command, IntegerValue, v7)))
  {
    *pressed = IOHIDEventGetIntegerValue() != 0;
  }

  else
  {
    *command = 0;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  event = [(CoreRCHIDEvent *)self event];

  return [v4 initWithIOHIDEvent:event];
}

- (BOOL)getCECUserControl:(CECUserControl *)control pressed:(BOOL *)pressed
{
  v6 = 0;
  [(CoreRCHIDEvent *)self getCommand:&v6 pressed:pressed];
  return CECUserControlForCoreRCCommand(control, v6);
}

- (CoreRCHIDEvent)initWithCECUserControl:(CECUserControl)control pressed:(BOOL)pressed
{
  pressedCopy = pressed;
  v8 = 0;
  if (CoreRCCommandForCECUserControl(&v8, *&control))
  {
    return [(CoreRCHIDEvent *)self initWithCommand:v8 pressed:pressedCopy];
  }

  if (gLogCategory_CoreRCHID <= 60 && (gLogCategory_CoreRCHID != -1 || _LogCategory_Initialize()))
  {
    [CoreRCHIDEvent(CEC) initWithCECUserControl:? pressed:?];
  }

  return 0;
}

- (CoreRCHIDEvent)initWithCECDeckControlMode:(unsigned __int8)mode pressed:(BOOL)pressed
{
  pressedCopy = pressed;
  v8 = 0;
  if (CoreRCCommandForCECDeckControlMode(&v8, mode))
  {
    return [(CoreRCHIDEvent *)self initWithCommand:v8 pressed:pressedCopy];
  }

  [CoreRCHIDEvent(CEC) initWithCECDeckControlMode:mode pressed:?];
  return 0;
}

- (CoreRCHIDEvent)initWithCECPlayMode:(unsigned __int8)mode pressed:(BOOL)pressed
{
  pressedCopy = pressed;
  v8 = 0;
  if (CoreRCCommandForCECPlayMode(&v8, mode))
  {
    return [(CoreRCHIDEvent *)self initWithCommand:v8 pressed:pressedCopy];
  }

  if (gLogCategory_CoreRCHID <= 60 && (gLogCategory_CoreRCHID != -1 || _LogCategory_Initialize()))
  {
    [CoreRCHIDEvent(CEC) initWithCECPlayMode:mode pressed:?];
  }

  return 0;
}

- (CoreRCHIDEvent)initWithCECAudioVolumeLevel:(unsigned __int8)level
{
  if (gLogCategory_CoreRCDevice <= 10)
  {
    levelCopy = level;
    if (gLogCategory_CoreRCDevice != -1 || _LogCategory_Initialize())
    {
      v5 = objc_opt_class();
      LogPrintF(&gLogCategory_CoreRCDevice, "[CoreRCHIDEvent(CEC) initWithCECAudioVolumeLevel:]", 10, "%@ initWithCECAudioVolumeLevel: %u  # self: %@\n", v5, levelCopy, self);
    }
  }

  mach_absolute_time();
  VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
  if (VendorDefinedEvent)
  {
    v7 = VendorDefinedEvent;
    self = [(CoreRCHIDEvent *)self initWithIOHIDEvent:VendorDefinedEvent];
    CFRelease(v7);
  }

  return self;
}

@end