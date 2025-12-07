@interface DAEventDeviceBluetoothPairingRequest
- (DAEventDeviceBluetoothPairingRequest)initWithEventType:(int64_t)type pairingInfo:(id)info;
- (DAEventDeviceBluetoothPairingRequest)initWithXPCObject:(id)object error:(id *)error;
- (id)descriptionWithLevel:(int)level;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation DAEventDeviceBluetoothPairingRequest

- (DAEventDeviceBluetoothPairingRequest)initWithEventType:(int64_t)type pairingInfo:(id)info
{
  infoCopy = info;
  v7 = [(DAEvent *)self initWithEventType:55];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_pairingInfo, info);
    v9 = v8;
  }

  return v8;
}

- (void)encodeWithXPCObject:(id)object
{
  v4.receiver = self;
  v4.super_class = DAEventDeviceBluetoothPairingRequest;
  objectCopy = object;
  [(DAEvent *)&v4 encodeWithXPCObject:objectCopy];
  CUXPCEncodeObject();
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

  v14 = v4;
  if ((level & 0x8000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v13 = 0;
    v5 = objc_opt_class();
    CUAppendF(&v13, &v14, "%@", v5);
    v6 = v13;
  }

  pairingInfo = self->_pairingInfo;
  v12 = v6;
  CUAppendF(&v12, &v14, "pairingInfo %@", pairingInfo);
  v7 = v12;

  v8 = &stru_285B4C350;
  if (v7)
  {
    v8 = v7;
  }

  v9 = v8;

  return v9;
}

- (DAEventDeviceBluetoothPairingRequest)initWithXPCObject:(id)object error:(id *)error
{
  v5 = OUTLINED_FUNCTION_4_0(self, a2, object);
  v15.receiver = v4;
  v15.super_class = DAEventDeviceBluetoothPairingRequest;
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

@end