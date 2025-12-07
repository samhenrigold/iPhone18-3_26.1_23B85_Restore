@interface NRDevicePairingProperties
- (NRDevicePairingProperties)initWithCoder:(id)coder;
- (NSData)awdlAddressData;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setAwdlAddressData:(id)data;
@end

@implementation NRDevicePairingProperties

- (NSData)awdlAddressData
{
  v2 = [(NSDictionary *)self->_peerEndpointDictionary objectForKeyedSubscript:&unk_286D2D058];
  addressData = [v2 addressData];

  return addressData;
}

- (void)setAwdlAddressData:(id)data
{
  dataCopy = data;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (self->_peerEndpointDictionary)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:self->_peerEndpointDictionary];

    v4 = v5;
  }

  v6 = [MEMORY[0x277CD91B8] endpointWithAddress:{objc_msgSend(dataCopy, "bytes")}];
  [(NSDictionary *)v4 setObject:v6 forKeyedSubscript:&unk_286D2D058];

  peerEndpointDictionary = self->_peerEndpointDictionary;
  self->_peerEndpointDictionary = v4;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"[NRDevicePairProp pairProtVers=%llu/nr:%u", -[NRDeviceProperties pairingProtocolVersion](self, "pairingProtocolVersion"), -[NRDeviceProperties peerNetworkRelayVersion](self, "peerNetworkRelayVersion")];
  outOfBandKey = [(NRDevicePairingProperties *)self outOfBandKey];

  if (outOfBandKey)
  {
    outOfBandKey2 = [(NRDevicePairingProperties *)self outOfBandKey];
    LogString = _NRKeyCreateLogString(outOfBandKey2);
    [v3 appendFormat:@", oobk %@", LogString];
  }

  if ([(NRDevicePairingProperties *)self wasInitiallySetupUsingIDSPairing])
  {
    [v3 appendString:{@", IDS"}];
  }

  if ([(NRDevicePairingProperties *)self pairWithSPPLink])
  {
    [v3 appendString:{@", SPP"}];
  }

  if ([(NRDevicePairingProperties *)self isAltAccountPairing])
  {
    [v3 appendString:{@", ALT-ACC"}];
  }

  if ([(NRDevicePairingProperties *)self isExternalPairing])
  {
    [v3 appendString:{@", EXTERNAL"}];
  }

  if ([(NRDevicePairingProperties *)self psm])
  {
    [v3 appendFormat:@", psm %u", -[NRDevicePairingProperties psm](self, "psm")];
  }

  bluetoothMACAddress = [(NRDevicePairingProperties *)self bluetoothMACAddress];

  if (bluetoothMACAddress)
  {
    bluetoothMACAddress2 = [(NRDevicePairingProperties *)self bluetoothMACAddress];
    v9 = _NRCreateMACAddressString(bluetoothMACAddress2);
    [v3 appendFormat:@", btMAC %@", v9];
  }

  peerEndpointDictionary = [(NRDevicePairingProperties *)self peerEndpointDictionary];

  if (peerEndpointDictionary)
  {
    peerEndpointDictionary2 = [(NRDevicePairingProperties *)self peerEndpointDictionary];
    [v3 appendFormat:@", peerIP %@", peerEndpointDictionary2];
  }

  candidateService = [(NRDevicePairingProperties *)self candidateService];

  if (candidateService)
  {
    candidateService2 = [(NRDevicePairingProperties *)self candidateService];
    [v3 appendFormat:@", cndSvc %@", candidateService2];
  }

  [v3 appendString:@"]"];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = NRDevicePairingProperties;
  coderCopy = coder;
  [(NRDeviceProperties *)&v9 encodeWithCoder:coderCopy];
  v5 = [(NRDevicePairingProperties *)self outOfBandKey:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"outOfBandKey"];

  [coderCopy encodeBool:-[NRDevicePairingProperties wasInitiallySetupUsingIDSPairing](self forKey:{"wasInitiallySetupUsingIDSPairing"), @"wasInitiallySetupUsingIDSPairing"}];
  [coderCopy encodeBool:-[NRDevicePairingProperties pairWithSPPLink](self forKey:{"pairWithSPPLink"), @"pairWithSPPLink"}];
  [coderCopy encodeBool:-[NRDevicePairingProperties isAltAccountPairing](self forKey:{"isAltAccountPairing"), @"isAltAccountPairing"}];
  [coderCopy encodeBool:-[NRDevicePairingProperties isExternalPairing](self forKey:{"isExternalPairing"), @"isExternalPairing"}];
  [coderCopy encodeInt32:-[NRDevicePairingProperties psm](self forKey:{"psm"), @"psm"}];
  bluetoothMACAddress = [(NRDevicePairingProperties *)self bluetoothMACAddress];
  [coderCopy encodeObject:bluetoothMACAddress forKey:@"bluetoothMACAddress"];

  peerEndpointDictionary = [(NRDevicePairingProperties *)self peerEndpointDictionary];
  [coderCopy encodeObject:peerEndpointDictionary forKey:@"peerEndpointDictionary"];

  candidateService = [(NRDevicePairingProperties *)self candidateService];
  [coderCopy encodeObject:candidateService forKey:@"candidateService"];
}

- (NRDevicePairingProperties)initWithCoder:(id)coder
{
  v24 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = NRDevicePairingProperties;
  v5 = [(NRDeviceProperties *)&v23 initWithCoder:coderCopy];
  if (!v5)
  {
    v12 = nrCopyLogObj_1215();
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

    v15 = nrCopyLogObj_1215();
    _NRLogWithArgs(v15, 16, "%s%.30s:%-4d ABORTING: [super initWithCoder:] failed", ", "[NRDevicePairingProperties initWithCoder:]"", 118);

LABEL_7:
    v16 = _os_log_pack_size();
    v18 = &v22 - ((MEMORY[0x28223BE20](v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = __error();
    v20 = _os_log_pack_fill(v18, v16, *v19, &dword_25B98C000, "%{public}s [super initWithCoder:] failed");
    *v20 = 136446210;
    *(v20 + 4) = "[NRDevicePairingProperties initWithCoder:]";
    v21 = nrCopyLogObj_1215();
    _NRLogAbortWithPack(v21, v18);
  }

  v6 = v5;
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"outOfBandKey"];
  [(NRDevicePairingProperties *)v6 setOutOfBandKey:v7];

  -[NRDevicePairingProperties setWasInitiallySetupUsingIDSPairing:](v6, "setWasInitiallySetupUsingIDSPairing:", [coderCopy decodeBoolForKey:@"wasInitiallySetupUsingIDSPairing"]);
  -[NRDevicePairingProperties setPairWithSPPLink:](v6, "setPairWithSPPLink:", [coderCopy decodeBoolForKey:@"pairWithSPPLink"]);
  -[NRDevicePairingProperties setIsAltAccountPairing:](v6, "setIsAltAccountPairing:", [coderCopy decodeBoolForKey:@"isAltAccountPairing"]);
  -[NRDevicePairingProperties setIsExternalPairing:](v6, "setIsExternalPairing:", [coderCopy decodeBoolForKey:@"isExternalPairing"]);
  -[NRDevicePairingProperties setPsm:](v6, "setPsm:", [coderCopy decodeInt32ForKey:@"psm"]);
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bluetoothMACAddress"];
  [(NRDevicePairingProperties *)v6 setBluetoothMACAddress:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerEndpointDictionary"];
  [(NRDevicePairingProperties *)v6 setPeerEndpointDictionary:v9];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"candidateService"];
  [(NRDevicePairingProperties *)v6 setCandidateService:v10];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = NRDevicePairingProperties;
  v4 = [(NRDeviceProperties *)&v14 copyWithZone:zone];
  outOfBandKey = [(NRDevicePairingProperties *)self outOfBandKey];
  v6 = [outOfBandKey copy];
  [v4 setOutOfBandKey:v6];

  [v4 setWasInitiallySetupUsingIDSPairing:{-[NRDevicePairingProperties wasInitiallySetupUsingIDSPairing](self, "wasInitiallySetupUsingIDSPairing")}];
  [v4 setPairWithSPPLink:{-[NRDevicePairingProperties pairWithSPPLink](self, "pairWithSPPLink")}];
  [v4 setIsAltAccountPairing:{-[NRDevicePairingProperties isAltAccountPairing](self, "isAltAccountPairing")}];
  [v4 setIsExternalPairing:{-[NRDevicePairingProperties isExternalPairing](self, "isExternalPairing")}];
  [v4 setPsm:{-[NRDevicePairingProperties psm](self, "psm")}];
  bluetoothMACAddress = [(NRDevicePairingProperties *)self bluetoothMACAddress];
  v8 = [bluetoothMACAddress copy];
  [v4 setBluetoothMACAddress:v8];

  peerEndpointDictionary = [(NRDevicePairingProperties *)self peerEndpointDictionary];
  v10 = [peerEndpointDictionary copy];
  [v4 setPeerEndpointDictionary:v10];

  candidateService = [(NRDevicePairingProperties *)self candidateService];
  v12 = [candidateService copy];
  [v4 setCandidateService:v12];

  return v4;
}

@end