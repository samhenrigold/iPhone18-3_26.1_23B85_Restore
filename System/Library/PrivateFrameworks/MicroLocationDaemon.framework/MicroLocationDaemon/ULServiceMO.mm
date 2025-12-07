@interface ULServiceMO
+ (id)createFromDO:(const void *)o inManagedObjectContext:(id)context;
- (optional<ULServiceDO>)convertToDO;
@end

@implementation ULServiceMO

+ (id)createFromDO:(const void *)o inManagedObjectContext:(id)context
{
  contextCopy = context;
  v6 = [[ULServiceMO alloc] initWithContext:contextCopy];
  [(ULServiceMO *)v6 setServiceType:*o];
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:o + 8];
  uUIDString = [v7 UUIDString];
  [(ULServiceMO *)v6 setServiceUUID:uUIDString];

  [(ULServiceMO *)v6 setLastActiveTimestamp:*(o + 3)];
  if (*(o + 55) >= 0)
  {
    v9 = o + 32;
  }

  else
  {
    v9 = *(o + 4);
  }

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
  [(ULServiceMO *)v6 setClientId:v10];

  [(ULServiceMO *)v6 setLocationTypes:*(o + 7)];

  return v6;
}

- (optional<ULServiceDO>)convertToDO
{
  v31 = *MEMORY[0x277D85DE8];
  [(ULServiceMO *)self lastActiveTimestamp];
  v6 = v5;
  serviceUUID = [(ULServiceMO *)self serviceUUID];
  v8 = serviceUUID;
  if (serviceUUID)
  {
    objc_msgSend_boostUUID(serviceUUID);
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
  }

  if (v30)
  {
    clientId = [(ULServiceMO *)self clientId];
    v10 = clientId;
    if (clientId)
    {
      objc_msgSend_stdString(clientId);
    }

    else
    {
      *v19 = 0u;
      v20 = 0u;
    }

    if (BYTE8(v20))
    {
      if (v30 != 1 || (v13 = [(ULServiceMO *)self serviceType], (BYTE8(v20) & 1) == 0))
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v18 = 0;
      LOBYTE(__p) = 0;
      result = ULServiceDO::ULServiceDO(buf, v28, v29, v13, v19, [(ULServiceMO *)self locationTypes], &__p, v6);
      if (v18 < 0)
      {
        operator delete(__p);
      }

      v14 = v22;
      *&retstr->var0.var0 = *buf;
      *(&retstr->var0.var2.var0.var1 + 1) = v14;
      *&retstr[1].var0.var2.var0.var1.var1 = v23;
      v15 = v25;
      retstr[2].var0.var1.var0 = v24;
      retstr[2].var0.var2.var0.var1.var1 = v15;
      retstr[3].var0.var2.var0.var1.var1 = v27;
      *(&retstr[2].var0.var2.var0.var1 + 1) = v26;
      retstr[3].var0.var1.var1.data[8] = 1;
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULServiceMO convertToDO];
      }

      v16 = logObject_MicroLocation_Default;
      result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 0;
        _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_ERROR, "convertToDO: service's clientId has no value", buf, 2u);
      }

      retstr->var0.var0 = 0;
      retstr[3].var0.var1.var1.data[8] = 0;
    }

    if (BYTE8(v20) == 1 && SBYTE7(v20) < 0)
    {
      operator delete(v19[0]);
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULServiceMO convertToDO];
    }

    v11 = logObject_MicroLocation_Default;
    result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_ERROR, "convertToDO: service's serviceUUID has no value", buf, 2u);
    }

    retstr->var0.var0 = 0;
    retstr[3].var0.var1.var1.data[8] = 0;
  }

  return result;
}

@end