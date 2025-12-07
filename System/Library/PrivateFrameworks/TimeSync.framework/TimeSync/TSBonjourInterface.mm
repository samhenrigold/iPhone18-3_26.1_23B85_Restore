@interface TSBonjourInterface
- (BOOL)startAddressLookupWithError:(id *)error;
- (BOOL)startResolveWithError:(id *)error;
- (BOOL)stopAddressLookup;
- (BOOL)stopResolve;
- (TSBonjourInterface)init;
- (TSBonjourInterface)initWithServiceName:(id)name type:(id)type andDomain:(id)domain onInterfaceIndex:(unsigned int)index andName:(id)andName;
- (void)dealloc;
- (void)pokeIPv6Destination;
- (void)resolvedWithHostTarget:(const char *)target port:(unsigned __int16)port;
@end

@implementation TSBonjourInterface

- (TSBonjourInterface)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  [v3 raise:v4 format:?];

  return 0;
}

- (TSBonjourInterface)initWithServiceName:(id)name type:(id)type andDomain:(id)domain onInterfaceIndex:(unsigned int)index andName:(id)andName
{
  nameCopy = name;
  typeCopy = type;
  domainCopy = domain;
  andNameCopy = andName;
  v28.receiver = self;
  v28.super_class = TSBonjourInterface;
  v16 = [(TSBonjourInterface *)&v28 init];
  if (v16)
  {
    v17 = [nameCopy copy];
    name = v16->_name;
    v16->_name = v17;

    v19 = [typeCopy copy];
    type = v16->_type;
    v16->_type = v19;

    v21 = [domainCopy copy];
    domain = v16->_domain;
    v16->_domain = v21;

    v23 = [andNameCopy copy];
    interfaceName = v16->_interfaceName;
    v16->_interfaceName = v23;

    v16->_interfaceIndex = index;
    v25 = dispatch_queue_create("com.apple.timesync.address.resolve", 0);
    queue = v16->_queue;
    v16->_queue = v25;
  }

  return v16;
}

- (void)resolvedWithHostTarget:(const char *)target port:(unsigned __int16)port
{
  portCopy = port;
  v25 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    uTF8String = [(NSString *)self->_name UTF8String];
    uTF8String2 = [(NSString *)self->_type UTF8String];
    uTF8String3 = [(NSString *)self->_domain UTF8String];
    interfaceName = [(TSBonjourInterface *)self interfaceName];
    v13 = 136316418;
    v14 = uTF8String;
    v15 = 2080;
    v16 = uTF8String2;
    v17 = 2080;
    v18 = uTF8String3;
    v19 = 2080;
    uTF8String4 = [interfaceName UTF8String];
    v21 = 2080;
    targetCopy = target;
    v23 = 1024;
    v24 = portCopy;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Resolved service with name %s type %s domain %s on interface %s to host %s port %hu\n", &v13, 0x3Au);
  }

  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:?];
  hostTarget = self->_hostTarget;
  self->_hostTarget = v11;

  self->_port = portCopy;
  [(TSBonjourInterface *)self startAddressLookupWithError:?];
}

- (BOOL)startResolveWithError:(id *)error
{
  if (self->_resolveRef)
  {
    return 1;
  }

  v6 = DNSServiceResolve(&self->_resolveRef, 0x100000u, self->_interfaceIndex, [(NSString *)self->_name UTF8String], [(NSString *)self->_type UTF8String], [(NSString *)self->_domain UTF8String], TSBIResolvedServiceReply, self);
  if (error && v6)
  {
    v7 = TSBonjourErrorFromErrorCode(v6);
    v8 = v7;
    result = 0;
    *error = v7;
  }

  else
  {
    if (!v6)
    {
      DNSServiceSetDispatchQueue(self->_resolveRef, self->_queue);
      return 1;
    }

    return 0;
  }

  return result;
}

- (BOOL)stopResolve
{
  resolveRef = self->_resolveRef;
  if (resolveRef)
  {
    DNSServiceRefDeallocate(self->_resolveRef);
    self->_resolveRef = 0;
  }

  return resolveRef != 0;
}

- (BOOL)startAddressLookupWithError:(id *)error
{
  p_addressRef = &self->_addressRef;
  if (self->_addressRef)
  {
    return 1;
  }

  [(TSBonjourInterface *)self setIpv4Addresses:?];
  [(TSBonjourInterface *)self setIpv6Addresses:?];
  AddrInfo = DNSServiceGetAddrInfo(p_addressRef, 0x100000u, self->_interfaceIndex, 0, [(NSString *)self->_hostTarget UTF8String], TSBIGetAddrReply, self);
  if (error && AddrInfo)
  {
    v8 = TSBonjourErrorFromErrorCode(AddrInfo);
    v9 = v8;
    result = 0;
    *error = v8;
  }

  else
  {
    if (!AddrInfo)
    {
      DNSServiceSetDispatchQueue(self->_addressRef, self->_queue);
      return 1;
    }

    return 0;
  }

  return result;
}

- (BOOL)stopAddressLookup
{
  addressRef = self->_addressRef;
  if (addressRef)
  {
    DNSServiceRefDeallocate(addressRef);
    self->_addressRef = 0;
  }

  return 0;
}

- (void)pokeIPv6Destination
{
  ipv6Address = [(TSBonjourInterface *)self ipv6Address];
  [ipv6Address pokeDestinationAtPort:? onInterfaceIndex:?];
}

- (void)dealloc
{
  resolveRef = self->_resolveRef;
  if (resolveRef)
  {
    DNSServiceRefDeallocate(resolveRef);
  }

  addressRef = self->_addressRef;
  if (addressRef)
  {
    DNSServiceRefDeallocate(addressRef);
  }

  v5.receiver = self;
  v5.super_class = TSBonjourInterface;
  [(TSBonjourInterface *)&v5 dealloc];
}

@end