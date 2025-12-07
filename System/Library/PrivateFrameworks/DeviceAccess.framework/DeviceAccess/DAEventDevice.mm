@interface DAEventDevice
- (DAEventDevice)initWithCoder:(id)coder;
- (DAEventDevice)initWithEventType:(int64_t)type device:(id)device;
- (DAEventDevice)initWithEventType:(int64_t)type device:(id)device error:(id)error;
- (DAEventDevice)initWithXPCObject:(id)object error:(id *)error;
- (id)descriptionWithLevel:(int)level;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation DAEventDevice

- (DAEventDevice)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = DAEventDevice;
  coderCopy = coder;
  v4 = [(DAEvent *)&v7 initWithCoder:coderCopy];
  if (v4)
  {
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v5 = v4;
  }

  else
  {
    [DAEventDevice initWithCoder:coderCopy];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = DAEventDevice;
  [(DAEvent *)&v6 encodeWithCoder:coderCopy];
  device = self->_device;
  if (device)
  {
    [coderCopy encodeObject:device forKey:@"devi"];
  }
}

- (void)encodeWithXPCObject:(id)object
{
  v4.receiver = self;
  v4.super_class = DAEventDevice;
  objectCopy = object;
  [(DAEvent *)&v4 encodeWithXPCObject:objectCopy];
  CUXPCEncodeObject();
}

- (DAEventDevice)initWithEventType:(int64_t)type device:(id)device
{
  deviceCopy = device;
  v8 = [(DAEvent *)self initWithEventType:type];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, device);
    v10 = v9;
  }

  return v9;
}

- (DAEventDevice)initWithEventType:(int64_t)type device:(id)device error:(id)error
{
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = DAEventDevice;
  v10 = [(DAEvent *)&v14 initWithEventType:type error:error];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_device, device);
    v12 = v11;
  }

  return v11;
}

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v5 = 8;
  }

  else
  {
    v5 = 12;
  }

  v19 = v5;
  v18.receiver = self;
  v18.super_class = DAEventDevice;
  v6 = [(DAEvent *)&v18 descriptionWithLevel:?];
  v7 = [v6 mutableCopy];

  if ((level & 0x8000000) == 0)
  {
    v17 = v7;
    v8 = objc_opt_class();
    CUAppendF(&v17, &v19, "%@", v8);
    v9 = v17;

    v7 = v9;
  }

  device = self->_device;
  if (device)
  {
    v16 = v7;
    v11 = device;
    CUAppendF(&v16, &v19, "device %@", v11);
    v12 = v16;

    v7 = v12;
  }

  v13 = &stru_285B4C350;
  if (v7)
  {
    v13 = v7;
  }

  v14 = v13;

  return v14;
}

- (DAEventDevice)initWithXPCObject:(id)object error:(id *)error
{
  v5 = OUTLINED_FUNCTION_4_0(self, a2, object);
  v15.receiver = v4;
  v15.super_class = DAEventDevice;
  v12 = OUTLINED_FUNCTION_1_1(v5, sel_initWithXPCObject_error_, v6, v7, v8, v9, v10, v11, v15);
  if (v12 && (objc_opt_class(), OUTLINED_FUNCTION_0_1(), CUXPCDecodeObject()))
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)initWithCoder:(void *)a1 .cold.1(void *a1)
{
  v6 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_8();
  v5 = DAErrorF(v3, v4, v6);
  OUTLINED_FUNCTION_3_0(v5);
}

@end