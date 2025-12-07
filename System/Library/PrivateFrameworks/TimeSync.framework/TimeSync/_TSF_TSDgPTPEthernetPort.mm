@interface _TSF_TSDgPTPEthernetPort
+ (id)diagnosticInfoForService:(id)service;
- (_TSF_TSDgPTPEthernetPort)initWithService:(id)service pid:(int)pid;
- (id)_sourceAddressString;
- (id)propertiesForXPC;
@end

@implementation _TSF_TSDgPTPEthernetPort

- (_TSF_TSDgPTPEthernetPort)initWithService:(id)service pid:(int)pid
{
  v5.receiver = self;
  v5.super_class = _TSF_TSDgPTPEthernetPort;
  return [(_TSF_TSDgPTPFDPtPPort *)&v5 initWithService:service pid:*&pid];
}

- (id)_sourceAddressString
{
  v9.receiver = self;
  v9.super_class = _TSF_TSDgPTPEthernetPort;
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

- (id)propertiesForXPC
{
  v7.receiver = self;
  v7.super_class = _TSF_TSDgPTPEthernetPort;
  propertiesForXPC = [(_TSF_TSDgPTPNetworkPort *)&v7 propertiesForXPC];
  service = [(_TSF_TSDgPTPPort *)self service];
  v5 = [service iodPropertyForKey:?];
  [propertiesForXPC setObject:? forKeyedSubscript:?];

  return propertiesForXPC;
}

+ (id)diagnosticInfoForService:(id)service
{
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS____TSF_TSDgPTPEthernetPort;
  serviceCopy = service;
  v4 = objc_msgSendSuper2(&v10, sel_diagnosticInfoForService_, serviceCopy);
  v5 = [MEMORY[0x277CCABB0] numberWithInt:?];
  [v4 setObject:? forKeyedSubscript:?];

  v6 = [serviceCopy iodPropertyForKey:?];

  if (v6)
  {
    bytes = [v6 bytes];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:*bytes, bytes[1], bytes[2], bytes[3], bytes[4], bytes[5], v10.receiver, v10.super_class];
    [v4 setObject:? forKeyedSubscript:?];
  }

  [v4 setObject:? forKeyedSubscript:?];

  return v4;
}

@end