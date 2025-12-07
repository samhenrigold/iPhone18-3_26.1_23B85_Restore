@interface NRPairedDevice
- (NRPairedDevice)initWithCoder:(id)coder;
- (NRPairedDevice)initWithDeviceIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NRPairedDevice

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  nrDeviceIdentifier = [(NRPairedDevice *)self nrDeviceIdentifier];
  v4NrDeviceIdentifier = [nrDeviceIdentifier nrDeviceIdentifier];
  v6 = [v3 initWithFormat:@"NRPairedDevice[%@", v4NrDeviceIdentifier];

  device = [(NRPairedDevice *)self device];

  if (device)
  {
    device2 = [(NRPairedDevice *)self device];
    [v6 appendFormat:@", %@", device2];
  }

  [v6 appendString:@"]"];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  device = [(NRPairedDevice *)self device];
  [coderCopy encodeObject:device forKey:@"device"];

  nrDeviceIdentifier = [(NRPairedDevice *)self nrDeviceIdentifier];
  [coderCopy encodeObject:nrDeviceIdentifier forKey:@"nrDeviceIdentifier"];
}

- (NRPairedDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nrDeviceIdentifier"];
  v6 = [(NRPairedDevice *)self initWithDeviceIdentifier:v5];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"device"];
    [(NRPairedDevice *)v6 setDevice:v7];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  nrDeviceIdentifier = [(NRPairedDevice *)self nrDeviceIdentifier];
  v6 = [nrDeviceIdentifier copy];
  v7 = [v4 initWithDeviceIdentifier:v6];

  device = [(NRPairedDevice *)self device];
  v9 = [device copy];
  [v7 setDevice:v9];

  return v7;
}

- (NRPairedDevice)initWithDeviceIdentifier:(id)identifier
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v25.receiver = self;
    v25.super_class = NRPairedDevice;
    v6 = [(NRPairedDevice *)&v25 init];
    if (v6)
    {
      v7 = v6;
      objc_storeStrong(&v6->_nrDeviceIdentifier, identifier);
      self = v7;
      selfCopy = self;
      goto LABEL_4;
    }

    v11 = nrCopyLogObj_1529();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v15 = v11;
      v16 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

      if (!v16)
      {
        goto LABEL_13;
      }
    }

    v17 = nrCopyLogObj_1529();
    _NRLogWithArgs(v17, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRPairedDevice initWithDeviceIdentifier:]"", 269);

LABEL_13:
    v18 = _os_log_pack_size();
    v20 = &v24 - ((MEMORY[0x28223BE20](v18, v19) + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = __error();
    v22 = _os_log_pack_fill(v20, v18, *v21, &dword_25B98C000, "%{public}s [super init] failed");
    *v22 = 136446210;
    *(v22 + 4) = "[NRPairedDevice initWithDeviceIdentifier:]";
    v23 = nrCopyLogObj_1529();
    _NRLogAbortWithPack(v23, v20);
  }

  v10 = nrCopyLogObj_1529();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v12 = v10;
    v13 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT);

    if (!v13)
    {
      selfCopy = 0;
      goto LABEL_4;
    }
  }

  v14 = nrCopyLogObj_1529();
  _NRLogWithArgs(v14, 17, "%s called with null nrDeviceIdentifier", "[NRPairedDevice initWithDeviceIdentifier:]");

  selfCopy = 0;
LABEL_4:

  return selfCopy;
}

@end