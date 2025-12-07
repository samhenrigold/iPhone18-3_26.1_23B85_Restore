@interface NRDeviceProperties
+ (unsigned)getNetworkRelayVersion;
- (NRDeviceProperties)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NRDeviceProperties

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"[NRDeviceProp pairProtVers=%llu/nr:%u]", -[NRDeviceProperties pairingProtocolVersion](self, "pairingProtocolVersion"), -[NRDeviceProperties peerNetworkRelayVersion](self, "peerNetworkRelayVersion")];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[NRDeviceProperties pairingProtocolVersion](self forKey:{"pairingProtocolVersion"), @"pairingProtocolVersion"}];
  [coderCopy encodeInt32:-[NRDeviceProperties peerNetworkRelayVersion](self forKey:{"peerNetworkRelayVersion"), @"peerNetworkRelayVersion"}];
}

- (NRDeviceProperties)initWithCoder:(id)coder
{
  v20 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = NRDeviceProperties;
  v5 = [(NRDeviceProperties *)&v19 init];
  if (!v5)
  {
    v8 = nrCopyLogObj_1215();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v9 = v8;
      v10 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);

      if (!v10)
      {
        goto LABEL_7;
      }
    }

    v11 = nrCopyLogObj_1215();
    _NRLogWithArgs(v11, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRDeviceProperties initWithCoder:]"", 60);

LABEL_7:
    v12 = _os_log_pack_size();
    v14 = &v18 - ((MEMORY[0x28223BE20](v12, v13) + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = __error();
    v16 = _os_log_pack_fill(v14, v12, *v15, &dword_25B98C000, "%{public}s [super init] failed");
    *v16 = 136446210;
    *(v16 + 4) = "[NRDeviceProperties initWithCoder:]";
    v17 = nrCopyLogObj_1215();
    _NRLogAbortWithPack(v17, v14);
  }

  v6 = v5;
  -[NRDeviceProperties setPairingProtocolVersion:](v5, "setPairingProtocolVersion:", [coderCopy decodeInt64ForKey:@"pairingProtocolVersion"]);
  -[NRDeviceProperties setPeerNetworkRelayVersion:](v6, "setPeerNetworkRelayVersion:", [coderCopy decodeInt32ForKey:@"peerNetworkRelayVersion"]);

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setPairingProtocolVersion:{-[NRDeviceProperties pairingProtocolVersion](self, "pairingProtocolVersion")}];
  [v4 setPeerNetworkRelayVersion:{-[NRDeviceProperties peerNetworkRelayVersion](self, "peerNetworkRelayVersion")}];
  return v4;
}

+ (unsigned)getNetworkRelayVersion
{
  if (getNetworkRelayVersion_onceToken != -1)
  {
    dispatch_once(&getNetworkRelayVersion_onceToken, &__block_literal_global_1230);
  }

  return getNetworkRelayVersion_version;
}

uint64_t __44__NRDeviceProperties_getNetworkRelayVersion__block_invoke()
{
  result = nrXPCGetNetworkRelayVersion();
  getNetworkRelayVersion_version = result;
  return result;
}

@end