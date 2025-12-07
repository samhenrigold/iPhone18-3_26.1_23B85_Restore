@interface NRDevicePairingTarget
- (NRDevicePairingTarget)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NRDevicePairingTarget

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  authMethod = [(NRDevicePairingTarget *)self authMethod];
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  if (authMethod > 1)
  {
    if (authMethod == 2)
    {
      v6 = "PIN";
      goto LABEL_11;
    }

    if (authMethod == 3)
    {
      v6 = "PreviousPairing";
      goto LABEL_11;
    }

LABEL_8:
    v7 = [v5 initWithFormat:@"Unknown(%zu)", authMethod];
    goto LABEL_12;
  }

  if (!authMethod)
  {
    v6 = "Invalid";
    goto LABEL_11;
  }

  if (authMethod != 1)
  {
    goto LABEL_8;
  }

  v6 = "PreSharedKey";
LABEL_11:
  v7 = [v5 initWithUTF8String:v6];
LABEL_12:
  v8 = v7;
  v9 = [v3 initWithFormat:@"NRDevicePairingTarget[%@", v7];

  candidate = [(NRDevicePairingTarget *)self candidate];

  if (candidate)
  {
    candidate2 = [(NRDevicePairingTarget *)self candidate];
    [v9 appendFormat:@", %@", candidate2];
  }

  [v9 appendString:@"]"];

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  candidate = [(NRDevicePairingTarget *)self candidate];
  [coderCopy encodeObject:candidate forKey:@"candidate"];

  [coderCopy encodeInt64:-[NRDevicePairingTarget authMethod](self forKey:{"authMethod"), @"authMethod"}];
  authData = [(NRDevicePairingTarget *)self authData];
  [coderCopy encodeObject:authData forKey:@"authData"];

  properties = [(NRDevicePairingTarget *)self properties];
  [coderCopy encodeObject:properties forKey:@"properties"];

  operationalProperties = [(NRDevicePairingTarget *)self operationalProperties];
  [coderCopy encodeObject:operationalProperties forKey:@"operationalProperties"];
}

- (NRDevicePairingTarget)initWithCoder:(id)coder
{
  v24 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = NRDevicePairingTarget;
  v5 = [(NRDevicePairingTarget *)&v23 init];
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
    _NRLogWithArgs(v15, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRDevicePairingTarget initWithCoder:]"", 233);

LABEL_7:
    v16 = _os_log_pack_size();
    v18 = &v22 - ((MEMORY[0x28223BE20](v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = __error();
    v20 = _os_log_pack_fill(v18, v16, *v19, &dword_25B98C000, "%{public}s [super init] failed");
    *v20 = 136446210;
    *(v20 + 4) = "[NRDevicePairingTarget initWithCoder:]";
    v21 = nrCopyLogObj_1529();
    _NRLogAbortWithPack(v21, v18);
  }

  v6 = v5;
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"candidate"];
  [(NRDevicePairingTarget *)v6 setCandidate:v7];

  -[NRDevicePairingTarget setAuthMethod:](v6, "setAuthMethod:", [coderCopy decodeInt64ForKey:@"authMethod"]);
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authData"];
  [(NRDevicePairingTarget *)v6 setAuthData:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"properties"];
  [(NRDevicePairingTarget *)v6 setProperties:v9];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"operationalProperties"];
  [(NRDevicePairingTarget *)v6 setOperationalProperties:v10];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  candidate = [(NRDevicePairingTarget *)self candidate];
  v6 = [candidate copy];
  [v4 setCandidate:v6];

  [v4 setAuthMethod:{-[NRDevicePairingTarget authMethod](self, "authMethod")}];
  authData = [(NRDevicePairingTarget *)self authData];

  if (authData)
  {
    authData2 = [(NRDevicePairingTarget *)self authData];
    v9 = [MEMORY[0x277CBEA90] _newZeroingDataWithBytes:objc_msgSend(authData2 length:{"bytes"), objc_msgSend(authData2, "length")}];
    [v4 setAuthData:v9];
  }

  properties = [(NRDevicePairingTarget *)self properties];
  v11 = [properties copy];
  [v4 setProperties:v11];

  operationalProperties = [(NRDevicePairingTarget *)self operationalProperties];
  v13 = [operationalProperties copy];
  [v4 setOperationalProperties:v13];

  return v4;
}

@end