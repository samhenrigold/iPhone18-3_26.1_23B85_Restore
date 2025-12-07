@interface NRDevicePairingManagerInfo
- (BOOL)isEqual:(id)equal;
- (NRDevicePairingManagerInfo)init;
- (NRDevicePairingManagerInfo)initWithCoder:(id)coder;
- (NSString)fullDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NRDevicePairingManagerInfo

- (NRDevicePairingManagerInfo)init
{
  v18 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = NRDevicePairingManagerInfo;
  v2 = [(NRDevicePairingManagerInfo *)&v17 init];
  if (!v2)
  {
    v6 = nrCopyLogObj_1529();
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

    v9 = nrCopyLogObj_1529();
    _NRLogWithArgs(v9, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRDevicePairingManagerInfo init]"", 361);

LABEL_7:
    v10 = _os_log_pack_size();
    v12 = &v16 - ((MEMORY[0x28223BE20](v10, v11) + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = __error();
    v14 = _os_log_pack_fill(v12, v10, *v13, &dword_25B98C000, "%{public}s [super init] failed");
    *v14 = 136446210;
    *(v14 + 4) = "[NRDevicePairingManagerInfo init]";
    v15 = nrCopyLogObj_1529();
    _NRLogAbortWithPack(v15, v12);
  }

  v3 = v2;
  uUID = [MEMORY[0x277CCAD78] UUID];
  [(NRDevicePairingManagerInfo *)v3 setUuid:uUID];

  return v3;
}

- (NSString)fullDescription
{
  v3 = [(NRDevicePairingManagerInfo *)self description];
  v4 = [v3 mutableCopy];

  identifier = [(NRDevicePairingManagerInfo *)self identifier];

  if (identifier)
  {
    identifier2 = [(NRDevicePairingManagerInfo *)self identifier];
    [v4 appendFormat:@" Identifier %@", identifier2];
  }

  metadata = [(NRDevicePairingManagerInfo *)self metadata];

  if (metadata)
  {
    metadata2 = [(NRDevicePairingManagerInfo *)self metadata];
    [v4 appendFormat:@" Metadata %@", metadata2];
  }

  pairingCriteria = [(NRDevicePairingManagerInfo *)self pairingCriteria];
  [v4 appendFormat:@" Pairing Criteria %@", pairingCriteria];

  return v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  uuid = [(NRDevicePairingManagerInfo *)self uuid];
  v5 = [v3 initWithFormat:@"NRDevicePairingManager[%@]", uuid];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    uuid = [(NRDevicePairingManagerInfo *)self uuid];
    uuid2 = [v5 uuid];

    v8 = [uuid isEqual:uuid2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  uuid = [(NRDevicePairingManagerInfo *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(NRDevicePairingManagerInfo *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"uuid"];

  identifier = [(NRDevicePairingManagerInfo *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  pairingCriteria = [(NRDevicePairingManagerInfo *)self pairingCriteria];
  [coderCopy encodeObject:pairingCriteria forKey:@"pairingCriteria"];

  metadata = [(NRDevicePairingManagerInfo *)self metadata];
  [coderCopy encodeObject:metadata forKey:@"metadata"];
}

- (NRDevicePairingManagerInfo)initWithCoder:(id)coder
{
  v24 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = NRDevicePairingManagerInfo;
  v5 = [(NRDevicePairingManagerInfo *)&v23 init];
  if (!v5)
  {
    v12 = nrCopyLogObj_1529();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v13 = v12;
      v14 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

      if (!v14)
      {
        goto LABEL_7;
      }
    }

    v15 = nrCopyLogObj_1529();
    _NRLogWithArgs(v15, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRDevicePairingManagerInfo initWithCoder:]"", 378);

LABEL_7:
    v16 = _os_log_pack_size();
    v18 = &v22 - ((MEMORY[0x28223BE20](v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = __error();
    v20 = _os_log_pack_fill(v18, v16, *v19, &dword_25B98C000, "%{public}s [super init] failed");
    *v20 = 136446210;
    *(v20 + 4) = "[NRDevicePairingManagerInfo initWithCoder:]";
    v21 = nrCopyLogObj_1529();
    _NRLogAbortWithPack(v21, v18);
  }

  v6 = v5;
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  [(NRDevicePairingManagerInfo *)v6 setUuid:v7];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  [(NRDevicePairingManagerInfo *)v6 setIdentifier:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pairingCriteria"];
  [(NRDevicePairingManagerInfo *)v6 setPairingCriteria:v9];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
  [(NRDevicePairingManagerInfo *)v6 setMetadata:v10];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  uuid = [(NRDevicePairingManagerInfo *)self uuid];
  [v4 setUuid:uuid];

  identifier = [(NRDevicePairingManagerInfo *)self identifier];
  v7 = [identifier copy];
  [v4 setIdentifier:v7];

  pairingCriteria = [(NRDevicePairingManagerInfo *)self pairingCriteria];
  v9 = [pairingCriteria copy];
  [v4 setPairingCriteria:v9];

  metadata = [(NRDevicePairingManagerInfo *)self metadata];
  v11 = [metadata copy];
  [v4 setMetadata:v11];

  return v4;
}

@end