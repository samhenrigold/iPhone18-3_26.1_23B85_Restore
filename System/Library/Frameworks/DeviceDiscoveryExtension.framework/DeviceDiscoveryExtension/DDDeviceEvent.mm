@interface DDDeviceEvent
+ (id)allocInitWithXPCObject:(id)object error:(id *)error;
- (DDDeviceEvent)initWithCoder:(id)coder;
- (DDDeviceEvent)initWithEventType:(DDEventType)type device:(DDDevice *)device;
- (DDDeviceEvent)initWithXPCObject:(id)object error:(id *)error;
- (id)createDADeviceEvent;
- (id)descriptionWithLevel:(int)level;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation DDDeviceEvent

- (id)createDADeviceEvent
{
  eventType = [(DDDeviceEvent *)self eventType];
  device = [(DDDeviceEvent *)self device];
  createDADevice = [device createDADevice];

  v6 = [objc_alloc(MEMORY[0x277D04738]) initWithEventType:eventType device:createDADevice];

  return v6;
}

- (DDDeviceEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = coderCopy;
  if (self)
  {
    objc_opt_class();
    NSDecodeObjectIfPresent();
    v6 = v5;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v6;
    if ([v7 containsValueForKey:@"evTy"])
    {
      self->_eventType = [v7 decodeIntegerForKey:@"evTy"];
    }

    selfCopy = self;
  }

  else
  {
    [DDDeviceEvent initWithCoder:coderCopy];
  }

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  device = self->_device;
  v8 = coderCopy;
  if (device)
  {
    [coderCopy encodeObject:device forKey:@"devi"];
    coderCopy = v8;
  }

  error = self->_error;
  if (error)
  {
    [v8 encodeObject:error forKey:@"errr"];
    coderCopy = v8;
  }

  eventType = self->_eventType;
  if (eventType)
  {
    [v8 encodeInteger:eventType forKey:@"evTy"];
    coderCopy = v8;
  }
}

- (void)encodeWithXPCObject:(id)object
{
  xdict = object;
  CUXPCEncodeObject();
  CUXPCEncodeNSError();
  eventType = self->_eventType;
  if (eventType)
  {
    xpc_dictionary_set_int64(xdict, "evTy", eventType);
  }
}

- (DDDeviceEvent)initWithEventType:(DDEventType)type device:(DDDevice *)device
{
  v7 = device;
  v8 = [(DDDeviceEvent *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, device);
    v9->_eventType = type;
    v10 = v9;
  }

  return v9;
}

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v4 = 8;
  }

  else
  {
    v4 = 12;
  }

  v19 = v4;
  if ((level & 0x8000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v18 = 0;
    v5 = objc_opt_class();
    CUAppendF(&v18, &v19, "%@", v5);
    v6 = v18;
  }

  eventType = [(DDDeviceEvent *)self eventType];
  if (eventType)
  {
    v17 = v6;
    if ((eventType - 40) > 2)
    {
      v8 = @"?";
    }

    else
    {
      v8 = off_278A469F0[eventType - 40];
    }

    CUAppendF(&v17, &v19, "type %@", v8);
    v9 = v17;

    v6 = v9;
  }

  device = self->_device;
  if (device)
  {
    v16 = v6;
    v11 = device;
    CUAppendF(&v16, &v19, "device %@", v11);
    v12 = v16;

    v6 = v12;
  }

  v13 = &stru_284AE9D28;
  if (v6)
  {
    v13 = v6;
  }

  v14 = v13;

  return v14;
}

+ (id)allocInitWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  if (CUXPCDecodeSInt64RangedEx() != 5 && error)
  {
    *error = DDErrorF(350001, "DDEvent init bad type: %d", v6, v7, v8, v9, v10, v11, 0);
  }

  return 0;
}

- (DDDeviceEvent)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v18.receiver = self;
  v18.super_class = DDDeviceEvent;
  v7 = [(DDDeviceEvent *)&v18 init];
  if (!v7)
  {
    if (error)
    {
      v11 = objc_opt_class();
      DDErrorF(350001, "%@ super init failed", v12, v13, v14, v15, v16, v17, v11);
      *error = v9 = 0;
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (!CUXPCDecodeNSError())
  {
    goto LABEL_11;
  }

  v19 = 0;
  v8 = CUXPCDecodeSInt64RangedEx();
  if (v8 == 6)
  {
    v7->_eventType = v19;
    goto LABEL_6;
  }

  if (v8 == 5)
  {
LABEL_11:
    v9 = 0;
    goto LABEL_8;
  }

LABEL_6:
  objc_opt_class();
  if (!CUXPCDecodeObject())
  {
    goto LABEL_11;
  }

  v9 = v7;
LABEL_8:

  return v9;
}

- (void)initWithCoder:(void *)a1 .cold.1(void *a1)
{
  v2 = objc_opt_class();
  v9 = DDErrorF(350001, "%@ init failed", v3, v4, v5, v6, v7, v8, v2);
  [a1 failWithError:v9];
}

@end