@interface DABluetoothDeviceAccessInfo
- (DABluetoothDeviceAccessInfo)initWithXPCObject:(id)object error:(id *)error;
- (id)descriptionWithLevel:(int)level;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation DABluetoothDeviceAccessInfo

- (void)encodeWithXPCObject:(id)object
{
  v7 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  identifier = self->_identifier;
  if (identifier)
  {
    [(NSUUID *)identifier getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(objectCopy, "id", uuid);
  }
}

- (id)descriptionWithLevel:(int)level
{
  v22 = 0;
  v21 = 0;
  CUAppendF(&v21, &v22, "{");
  v4 = v21;
  v5 = v4;
  v22 = 8;
  identifier = self->_identifier;
  if (identifier)
  {
    v20 = v4;
    v7 = identifier;
    v8 = CUPrintNSObjectOneLine();
    CUAppendF(&v20, &v22, "Devices %@", v8);
    v9 = v20;

    v5 = v9;
  }

  bluetoothServices = self->_bluetoothServices;
  if (bluetoothServices)
  {
    v19 = v5;
    v11 = bluetoothServices;
    v12 = CUPrintNSObjectOneLine();
    CUAppendF(&v19, &v22, "Services %@", v12);
    v13 = v19;

    v5 = v13;
  }

  v22 = 0;
  v18 = v5;
  CUAppendF(&v18, &v22, "}");
  v14 = v18;

  v15 = &stru_285B4C350;
  if (v14)
  {
    v15 = v14;
  }

  v16 = v15;

  return v16;
}

- (DABluetoothDeviceAccessInfo)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = DABluetoothDeviceAccessInfo;
  v7 = [(DABluetoothDeviceAccessInfo *)&v11 init];
  if (!v7)
  {
    if (error)
    {
      v10 = objc_opt_class();
      DAErrorF(350001, "%@ super init failed", v10);
      *error = v8 = 0;
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_4;
  }

  if (!CUXPCDecodeNSUUID())
  {
    goto LABEL_7;
  }

  v8 = v7;
LABEL_4:

  return v8;
}

@end