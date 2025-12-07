@interface NRLinkPreferences
+ (id)createFromEncodedXPCDict:(id)dict;
- (NRLinkPreferences)initWithLinkType:(unsigned __int8)type;
- (id)copyEncodedXPCDict;
- (id)copyLongDescription;
- (id)copyShortDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation NRLinkPreferences

- (id)copyShortDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  StringFromNRLinkType = createStringFromNRLinkType([(NRLinkPreferences *)self linkType]);
  stringFromNRLinkType = [v3 initWithFormat:@"LinkPref[%@]", StringFromNRLinkType];

  return stringFromNRLinkType;
}

- (id)copyLongDescription
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  StringFromNRLinkType = createStringFromNRLinkType([(NRLinkPreferences *)self linkType]);
  stringFromNRLinkType = [v3 initWithFormat:@"Link Type: %@", StringFromNRLinkType];

  return stringFromNRLinkType;
}

- (id)description
{
  copyShortDescription = [(NRLinkPreferences *)self copyShortDescription];

  return copyShortDescription;
}

- (id)copyEncodedXPCDict
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = xpc_dictionary_create(0, 0, 0);
  if (!v3)
  {
    v6 = nrCopyLogObj_461();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v7 = v6;
      v8 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

      if (!v8)
      {
        goto LABEL_7;
      }
    }

    v9 = nrCopyLogObj_461();
    _NRLogWithArgs(v9, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", ", "nr_xpc_dictionary_create"", 74, 0, 0, 0);

LABEL_7:
    v10 = _os_log_pack_size();
    v12 = v16 - ((MEMORY[0x28223BE20](v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = __error();
    v14 = _os_log_pack_fill(v12, v10, *v13, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v14, "nr_xpc_dictionary_create");
    v15 = nrCopyLogObj_461();
    _NRLogAbortWithPack(v15, v12);
  }

  v4 = v3;
  xpc_dictionary_set_uint64(v3, "LinkType", [(NRLinkPreferences *)self linkType]);
  return v4;
}

- (NRLinkPreferences)initWithLinkType:(unsigned __int8)type
{
  v17 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = NRLinkPreferences;
  result = [(NRLinkPreferences *)&v16 init];
  if (!result)
  {
    v5 = nrCopyLogObj_461();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v6 = v5;
      v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v8 = nrCopyLogObj_461();
    _NRLogWithArgs(v8, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRLinkPreferences initWithLinkType:]"", 50);

LABEL_7:
    v9 = _os_log_pack_size();
    v11 = &v15 - ((MEMORY[0x28223BE20](v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = __error();
    v13 = _os_log_pack_fill(v11, v9, *v12, &dword_25B98C000, "%{public}s [super init] failed");
    *v13 = 136446210;
    *(v13 + 4) = "[NRLinkPreferences initWithLinkType:]";
    v14 = nrCopyLogObj_461();
    _NRLogAbortWithPack(v14, v11);
  }

  result->_linkType = type;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  linkType = [(NRLinkPreferences *)self linkType];

  return [v4 initWithLinkType:linkType];
}

+ (id)createFromEncodedXPCDict:(id)dict
{
  dictCopy = dict;
  v4 = dictCopy;
  if (!dictCopy)
  {
    v9 = nrCopyLogObj_461();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v11 = v9;
      v12 = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);

      if (!v12)
      {
        goto LABEL_15;
      }
    }

    v8 = nrCopyLogObj_461();
    _NRLogWithArgs(v8, 17, "%s called with null encodedDict");
LABEL_14:
    v5 = 0;
    goto LABEL_5;
  }

  if (MEMORY[0x25F8746E0](dictCopy) != MEMORY[0x277D86468])
  {
    v10 = nrCopyLogObj_461();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v13 = v10;
      v14 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT);

      if (!v14)
      {
        goto LABEL_15;
      }
    }

    v8 = nrCopyLogObj_461();
    _NRLogWithArgs(v8, 17, "%s called with null xpc_get_type(encodedDict) == (&_xpc_type_dictionary)");
    goto LABEL_14;
  }

  if (xpc_dictionary_get_uint64(v4, "LinkType") != 1)
  {
LABEL_15:
    v5 = 0;
    goto LABEL_16;
  }

  v5 = objc_alloc_init(NRBluetoothLinkPreferences);
  v6 = NRLPCopyUInt64NSNumberFromXPCDict(v4, "InputBPS");
  [(NRBluetoothLinkPreferences *)v5 setInputBytesPerSecond:v6];

  v7 = NRLPCopyUInt64NSNumberFromXPCDict(v4, "OutputBPS");
  [(NRBluetoothLinkPreferences *)v5 setOutputBytesPerSecond:v7];

  v8 = NRLPCopyUInt64NSNumberFromXPCDict(v4, "PacketsPerSecond");
  [(NRBluetoothLinkPreferences *)v5 setPacketsPerSecond:v8];
LABEL_5:

LABEL_16:
  return v5;
}

@end