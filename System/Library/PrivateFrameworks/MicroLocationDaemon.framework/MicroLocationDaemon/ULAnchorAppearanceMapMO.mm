@interface ULAnchorAppearanceMapMO
+ (id)createFromDO:(const void *)o withLoiMO:(id)mO inManagedObjectContext:(id)context;
- (optional<ULAnchorAppearanceMapDO>)convertToDO;
@end

@implementation ULAnchorAppearanceMapMO

+ (id)createFromDO:(const void *)o withLoiMO:(id)mO inManagedObjectContext:(id)context
{
  mOCopy = mO;
  v8 = [[ULAnchorAppearanceMapMO alloc] initWithContext:context];
  [(ULAnchorAppearanceMapMO *)v8 setLoi:mOCopy];
  [(ULAnchorAppearanceMapMO *)v8 setTimestamp:*o];
  CLMicroLocationProto::AnchorAppearanceConfiguration::ByteSize((o + 24), v9);
  operator new[]();
}

- (optional<ULAnchorAppearanceMapDO>)convertToDO
{
  v21 = *MEMORY[0x277D85DE8];
  [(ULAnchorAppearanceMapMO *)self timestamp];
  v16 = v4;
  v5 = [(ULAnchorAppearanceMapMO *)self loi];
  loiId = [v5 loiId];
  v7 = loiId;
  if (loiId)
  {
    objc_msgSend_boostUUID(loiId);
  }

  else
  {
    v19 = 0uLL;
    v20 = 0;
  }

  if ((v20 & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULAnchorAppearanceMapMO convertToDO];
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_ERROR, "convertToDO: anchorAppearanceMap's loiId has no value", buf, 2u);
    }

    v19 = 0uLL;
    if ((v20 & 1) == 0)
    {
      v20 = 1;
    }
  }

  anchorAppearance = [(ULAnchorAppearanceMapMO *)self anchorAppearance];
  v10 = anchorAppearance;
  bytes = [anchorAppearance bytes];
  anchorAppearance2 = [(ULAnchorAppearanceMapMO *)self anchorAppearance];
  [anchorAppearance2 length];
  LOBYTE(bytes) = wireless_diagnostics::google::protobuf::MessageLite::ParseFromArray(v15, bytes);

  if (bytes)
  {
    if ((v20 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    ULAnchorAppearanceMapDO::ULAnchorAppearanceMapDO(buf, &v16, &v19, v15);
    ULAnchorAppearanceMapDO::ULAnchorAppearanceMapDO(retstr, buf);
    LOBYTE(retstr[1].var0.var3.var4[0]) = 1;
    CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration(&v18);
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      [ULAnchorAppearanceMapMO convertToDO];
    }

    v13 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_ERROR, "convertToDO: Failed to deserialize anchorAppearance protobuf from byte stream", buf, 2u);
    }

    retstr->var0.var0 = 0;
    LOBYTE(retstr[1].var0.var3.var4[0]) = 0;
  }

  CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration(v15);
  return result;
}

@end