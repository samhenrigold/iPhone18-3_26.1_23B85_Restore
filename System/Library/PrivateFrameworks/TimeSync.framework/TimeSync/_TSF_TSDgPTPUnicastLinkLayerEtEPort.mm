@interface _TSF_TSDgPTPUnicastLinkLayerEtEPort
+ (id)diagnosticInfoForService:(id)service;
- (_TSF_TSDgPTPUnicastLinkLayerEtEPort)initWithService:(id)service pid:(int)pid;
- (id)_destinationAddressString;
- (id)_destinationMACAddress;
- (id)_sourceAddressString;
- (id)propertiesForXPC;
@end

@implementation _TSF_TSDgPTPUnicastLinkLayerEtEPort

- (_TSF_TSDgPTPUnicastLinkLayerEtEPort)initWithService:(id)service pid:(int)pid
{
  v9.receiver = self;
  v9.super_class = _TSF_TSDgPTPUnicastLinkLayerEtEPort;
  v4 = [(_TSF_TSDgPTPFDEtEPort *)&v9 initWithService:service pid:*&pid];
  v5 = v4;
  if (v4)
  {
    _destinationMACAddress = [(_TSF_TSDgPTPUnicastLinkLayerEtEPort *)v4 _destinationMACAddress];
    destinationMACAddress = v5->_destinationMACAddress;
    v5->_destinationMACAddress = _destinationMACAddress;
  }

  return v5;
}

- (id)_sourceAddressString
{
  v9.receiver = self;
  v9.super_class = _TSF_TSDgPTPUnicastLinkLayerEtEPort;
  _sourceAddressString = [(_TSF_TSDgPTPNetworkPort *)&v9 _sourceAddressString];
  service = [(_TSF_TSDgPTPPort *)self service];
  v5 = [service iodPropertyForKey:?];

  if (v5)
  {
    bytes = [v5 bytes];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:*bytes, bytes[1], bytes[2], bytes[3], bytes[4], bytes[5]];

    _sourceAddressString = v7;
  }

  return _sourceAddressString;
}

- (id)_destinationAddressString
{
  v9.receiver = self;
  v9.super_class = _TSF_TSDgPTPUnicastLinkLayerEtEPort;
  _destinationAddressString = [(_TSF_TSDgPTPNetworkPort *)&v9 _destinationAddressString];
  service = [(_TSF_TSDgPTPPort *)self service];
  v5 = [service iodPropertyForKey:?];

  if (v5)
  {
    bytes = [v5 bytes];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:*bytes, bytes[1], bytes[2], bytes[3], bytes[4], bytes[5]];

    _destinationAddressString = v7;
  }

  return _destinationAddressString;
}

- (id)_destinationMACAddress
{
  service = [(_TSF_TSDgPTPPort *)self service];
  v3 = [service iodPropertyForKey:?];

  return v3;
}

- (id)propertiesForXPC
{
  v9.receiver = self;
  v9.super_class = _TSF_TSDgPTPUnicastLinkLayerEtEPort;
  propertiesForXPC = [(_TSF_TSDgPTPNetworkPort *)&v9 propertiesForXPC];
  service = [(_TSF_TSDgPTPPort *)self service];
  v5 = [service iodPropertyForKey:?];
  [propertiesForXPC setObject:? forKeyedSubscript:?];

  service2 = [(_TSF_TSDgPTPPort *)self service];
  v7 = [service2 iodPropertyForKey:?];
  [propertiesForXPC setObject:? forKeyedSubscript:?];

  return propertiesForXPC;
}

+ (id)diagnosticInfoForService:(id)service
{
  serviceCopy = service;
  v15.receiver = self;
  v15.super_class = &OBJC_METACLASS____TSF_TSDgPTPUnicastLinkLayerEtEPort;
  v5 = objc_msgSendSuper2(&v15, sel_diagnosticInfoForService_, serviceCopy);
  v6 = [MEMORY[0x277CCABB0] numberWithInt:?];
  [v5 setObject:? forKeyedSubscript:?];

  v7 = [serviceCopy iodPropertyForKey:?];
  v8 = v7;
  if (v7)
  {
    bytes = [v7 bytes];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:*bytes, bytes[1], bytes[2], bytes[3], bytes[4], bytes[5]];
    [v5 setObject:? forKeyedSubscript:?];
  }

  v11 = [serviceCopy iodPropertyForKey:?];

  if (v11)
  {
    bytes2 = [v11 bytes];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:*bytes2, bytes2[1], bytes2[2], bytes2[3], bytes2[4], bytes2[5]];
    [v5 setObject:? forKeyedSubscript:?];
  }

  return v5;
}

@end