@interface DAEventDevicesPresent
- (DAEventDevicesPresent)initWithMigration:(BOOL)migration;
- (DAEventDevicesPresent)initWithPresent:(BOOL)present;
- (DAEventDevicesPresent)initWithPresent:(BOOL)present devicesMigrated:(BOOL)migrated;
- (DAEventDevicesPresent)initWithXPCObject:(id)object error:(id *)error;
- (id)descriptionWithLevel:(int)level;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation DAEventDevicesPresent

- (DAEventDevicesPresent)initWithPresent:(BOOL)present
{
  v4 = [(DAEvent *)self initWithEventType:50];
  v5 = v4;
  if (v4)
  {
    v4->_devicesPresent = present;
    v6 = v4;
  }

  return v5;
}

- (DAEventDevicesPresent)initWithPresent:(BOOL)present devicesMigrated:(BOOL)migrated
{
  v5 = [(DAEventDevicesPresent *)self initWithPresent:present];
  v6 = v5;
  if (v5)
  {
    v5->_devicesMigrated = migrated;
    v7 = v5;
  }

  return v6;
}

- (DAEventDevicesPresent)initWithMigration:(BOOL)migration
{
  v4 = [(DAEvent *)self initWithEventType:15];
  v5 = v4;
  if (v4)
  {
    v4->_devicesMigrated = migration;
    v6 = v4;
  }

  return v5;
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  v5.receiver = self;
  v5.super_class = DAEventDevicesPresent;
  [(DAEvent *)&v5 encodeWithXPCObject:objectCopy];
  if (self->_devicesPresent)
  {
    xpc_dictionary_set_BOOL(objectCopy, "dvPr", 1);
  }

  if (self->_devicesMigrated)
  {
    xpc_dictionary_set_BOOL(objectCopy, "dvMg", 1);
  }

  CUXPCEncodeNSArrayOfObjects();
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

  v21 = v4;
  if ((level & 0x8000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v20 = 0;
    v5 = objc_opt_class();
    CUAppendF(&v20, &v21, "%@", v5);
    v6 = v20;
  }

  v19 = v6;
  if (self->_devicesPresent)
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  CUAppendF(&v19, &v21, "present %s", v7);
  v8 = v19;

  v18 = v8;
  if (self->_devicesMigrated)
  {
    v9 = "yes";
  }

  else
  {
    v9 = "no";
  }

  CUAppendF(&v18, &v21, "migrated %s", v9);
  v10 = v18;

  devices = self->_devices;
  if (devices)
  {
    v17 = v10;
    v12 = devices;
    CUAppendF(&v17, &v21, "devices: %@", v12);
    v13 = v17;

    v10 = v13;
  }

  v14 = &stru_285B4C350;
  if (v10)
  {
    v14 = v10;
  }

  v15 = v14;

  return v15;
}

- (DAEventDevicesPresent)initWithXPCObject:(id)object error:(id *)error
{
  v5 = OUTLINED_FUNCTION_4_0(self, a2, object);
  v15.receiver = v4;
  v15.super_class = DAEventDevicesPresent;
  v12 = OUTLINED_FUNCTION_1_1(v5, sel_initWithXPCObject_error_, v6, v7, v8, v9, v10, v11, v15);
  if (v12 && CUXPCDecodeBool() && CUXPCDecodeBool())
  {
    objc_opt_class();
    OUTLINED_FUNCTION_0_1();
    CUXPCDecodeNSArrayOfClass();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end