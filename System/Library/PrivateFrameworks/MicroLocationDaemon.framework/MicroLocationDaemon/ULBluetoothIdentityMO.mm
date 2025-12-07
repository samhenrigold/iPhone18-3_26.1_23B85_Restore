@interface ULBluetoothIdentityMO
+ (id)createFromDO:(const void *)o inManagedObjectContext:(id)context;
- (optional<ULBluetoothIdentityDO>)convertToDO;
@end

@implementation ULBluetoothIdentityMO

+ (id)createFromDO:(const void *)o inManagedObjectContext:(id)context
{
  contextCopy = context;
  v6 = [[ULBluetoothIdentityMO alloc] initWithContext:contextCopy];
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:o];
  uUIDString = [v7 UUIDString];
  [(ULBluetoothIdentityMO *)v6 setBluetoothId:uUIDString];

  if (*(o + 39) >= 0)
  {
    v9 = o + 16;
  }

  else
  {
    v9 = *(o + 2);
  }

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
  [(ULBluetoothIdentityMO *)v6 setDeviceName:v10];

  if (*(o + 63) >= 0)
  {
    v11 = o + 40;
  }

  else
  {
    v11 = *(o + 5);
  }

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];
  [(ULBluetoothIdentityMO *)v6 setStableIdentifier:v12];

  [(ULBluetoothIdentityMO *)v6 setLastSeenTimeStamp:*(o + 8)];

  return v6;
}

- (optional<ULBluetoothIdentityDO>)convertToDO
{
  v2 = v1;
  v34 = *MEMORY[0x277D85DE8];
  bluetoothId = [v1 bluetoothId];
  v5 = bluetoothId;
  if (bluetoothId)
  {
    objc_msgSend_boostUUID(bluetoothId);
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
  }

  if ((v33 & 1) == 0)
  {
    v31 = 0;
    v32 = 0;
    v33 = 1;
  }

  deviceName = [v2 deviceName];
  v7 = deviceName;
  if (deviceName)
  {
    objc_msgSend_stdString(deviceName);
  }

  else
  {
    *v23 = 0u;
    v24 = 0u;
  }

  if (BYTE8(v24))
  {
    stableIdentifier = [v2 stableIdentifier];
    v9 = stableIdentifier;
    if (stableIdentifier)
    {
      objc_msgSend_stdString(stableIdentifier);
    }

    else
    {
      *v21 = 0u;
      v22 = 0u;
    }

    if (BYTE8(v22))
    {
      [v2 lastSeenTimeStamp];
      if (v33 != 1 || (BYTE8(v24) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v13 = v12;
      v14 = v31;
      v15 = v32;
      if (SBYTE7(v24) < 0)
      {
        std::string::__init_copy_ctor_external(&v20, v23[0], v23[1]);
      }

      else
      {
        *&v20.__r_.__value_.__l.__data_ = *v23;
        v20.__r_.__value_.__r.__words[2] = v24;
      }

      if ((BYTE8(v22) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      if (SBYTE7(v22) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v21[0], v21[1]);
      }

      else
      {
        *&__p.__r_.__value_.__l.__data_ = *v21;
        __p.__r_.__value_.__r.__words[2] = v22;
      }

      result = ULBluetoothIdentityDO::ULBluetoothIdentityDO(buf, v14, v15, &v20, &__p, v13);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      v17 = v26;
      *&retstr->var0.var0 = *buf;
      *retstr->var0.var1.var1.var0.var0.var0 = v17;
      *(&retstr->var0.var1.var1.var0.var1 + 2) = v27;
      *retstr->var1.var0.var0.var0 = v28;
      v18 = v30;
      *(&retstr->var1.var0.var1 + 2) = v29;
      *&retstr[1].var0.var0 = v18;
      retstr[1].var0.var1.var0.data[8] = 1;
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULBluetoothIdentityMO convertToDO];
      }

      v16 = logObject_MicroLocation_Default;
      result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_ERROR, "convertToDO: bluetoothIdentity's stableIdentifier has no value", buf, 2u);
      }

      retstr->var0.var0 = 0;
      retstr[1].var0.var1.var0.data[8] = 0;
    }

    if (BYTE8(v22) == 1 && SBYTE7(v22) < 0)
    {
      operator delete(v21[0]);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULBluetoothIdentityMO convertToDO];
    }

    v10 = logObject_MicroLocation_Default;
    result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_ERROR, "convertToDO: bluetoothIdentity's deviceName has no value", buf, 2u);
    }

    retstr->var0.var0 = 0;
    retstr[1].var0.var1.var0.data[8] = 0;
  }

  if (BYTE8(v24) == 1 && SBYTE7(v24) < 0)
  {
    operator delete(v23[0]);
  }

  return result;
}

@end