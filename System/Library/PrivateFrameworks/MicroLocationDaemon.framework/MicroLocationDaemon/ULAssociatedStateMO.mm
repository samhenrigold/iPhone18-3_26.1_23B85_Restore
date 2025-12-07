@interface ULAssociatedStateMO
+ (id)createFromDO:(const void *)o withLoiMO:(id)mO inManagedObjectContext:(id)context;
- (optional<ULAssociatedStateDO>)convertToDO;
@end

@implementation ULAssociatedStateMO

+ (id)createFromDO:(const void *)o withLoiMO:(id)mO inManagedObjectContext:(id)context
{
  mOCopy = mO;
  contextCopy = context;
  v9 = [[ULAssociatedStateMO alloc] initWithContext:contextCopy];
  [(ULAssociatedStateMO *)v9 setLoi:mOCopy];
  [(ULAssociatedStateMO *)v9 setTimestamp:*(o + 5)];
  [(ULAssociatedStateMO *)v9 setIsAssociated:*(o + 48)];
  v10 = MEMORY[0x277CCACA8];
  CLMacAddress::str(__p, o + 7);
  if (v15 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  v12 = [v10 stringWithUTF8String:v11];
  [(ULAssociatedStateMO *)v9 setMacAddress:v12];

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  [(ULAssociatedStateMO *)v9 setBand:*(o + 16)];
  [(ULAssociatedStateMO *)v9 setChannel:*(o + 17)];

  return v9;
}

- (optional<ULAssociatedStateDO>)convertToDO
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = [(ULAssociatedStateMO *)self loi:*&a4];
  loiId = [v7 loiId];
  v9 = loiId;
  if (loiId)
  {
    objc_msgSend_boostUUID(loiId);
  }

  else
  {
    v31 = 0uLL;
    v32 = 0;
  }

  if ((v32 & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULAssociatedStateMO convertToDO];
    }

    v10 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *&buf.var0 = 0;
      _os_log_impl(&dword_258FE9000, v10, OS_LOG_TYPE_ERROR, "convertToDO: failed to get associatedState's LoiId", &buf, 2u);
    }

    v31 = 0uLL;
    if ((v32 & 1) == 0)
    {
      v32 = 1;
    }
  }

  v11 = [(ULAssociatedStateMO *)self loi];
  loiType = [v11 loiType];
  v13 = loiType;
  if (loiType)
  {
    objc_msgSend_stdString(loiType);
  }

  else
  {
    *__p = 0u;
    v26 = 0u;
  }

  if (BYTE8(v26))
  {
    [(ULAssociatedStateMO *)self timestamp];
    v24 = v14;
    macAddress = [(ULAssociatedStateMO *)self macAddress];
    v16 = macAddress;
    uTF8String = [macAddress UTF8String];
    v18 = strlen(uTF8String);
    if (v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v19 = v18;
    if (v18 >= 0x17)
    {
      operator new();
    }

    *(&buf.var1.var0.var0.var1 + 23) = v18;
    if (v18)
    {
      memmove(&buf, uTF8String, v18);
    }

    *(&buf.var0 + v19) = 0;
    v23 = CLMacAddress::newFromStr(&buf.var0);
    if (*(&buf.var1.var0.var0.var1 + 23) < 0)
    {
      operator delete(buf.var1.var0.var0.var1.var0);
    }

    band = [(ULAssociatedStateMO *)self band];
    if (BYTE8(v26) != 1 || (v32 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    ULAssociatedStateDO::ULAssociatedStateDO(&buf, __p, &v31, &v24, [(ULAssociatedStateMO *)self isAssociated], &v23, band, [(ULAssociatedStateMO *)self channel]);
    retstr->var0 = buf;
    retstr->var1 = v28;
    *&retstr[1].var0.var0 = v29;
    *(&retstr[1].var0.var1.var0.var0.var1 + 1) = v30;
    retstr[1].var1.data[8] = 1;
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULAssociatedStateMO convertToDO];
    }

    v20 = logObject_MicroLocation_Default;
    result = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *&buf.var0 = 0;
      _os_log_impl(&dword_258FE9000, v20, OS_LOG_TYPE_ERROR, "convertToDO: failed to get associatedState's LoiType", &buf, 2u);
    }

    retstr->var0.var0 = 0;
    retstr[1].var1.data[8] = 0;
  }

  if (BYTE8(v26) == 1 && SBYTE7(v26) < 0)
  {
    operator delete(__p[0]);
  }

  return result;
}

@end