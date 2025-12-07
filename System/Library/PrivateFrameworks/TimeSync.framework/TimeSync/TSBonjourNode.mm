@interface TSBonjourNode
- (TSBonjourNode)init;
- (TSBonjourNode)initWithServiceName:(id)name type:(id)type andDomain:(id)domain;
- (void)addedOnInterface:(unsigned int)interface named:(id)named;
- (void)removedFromInterface:(unsigned int)interface named:(id)named;
@end

@implementation TSBonjourNode

- (TSBonjourNode)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  [v3 raise:v4 format:?];

  return 0;
}

- (TSBonjourNode)initWithServiceName:(id)name type:(id)type andDomain:(id)domain
{
  nameCopy = name;
  typeCopy = type;
  domainCopy = domain;
  v21.receiver = self;
  v21.super_class = TSBonjourNode;
  v11 = [(TSBonjourNode *)&v21 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v12;

    v14 = [typeCopy copy];
    type = v11->_type;
    v11->_type = v14;

    v16 = [domainCopy copy];
    domain = v11->_domain;
    v11->_domain = v16;

    dictionary = [MEMORY[0x277CBEAC0] dictionary];
    interfaces = v11->_interfaces;
    v11->_interfaces = dictionary;
  }

  return v11;
}

- (void)addedOnInterface:(unsigned int)interface named:(id)named
{
  namedCopy = named;
  v5 = [TSBonjourInterface alloc];
  name = [(TSBonjourNode *)self name];
  type = [(TSBonjourNode *)self type];
  domain = [(TSBonjourNode *)self domain];
  v9 = [TSBonjourInterface initWithServiceName:v5 type:"initWithServiceName:type:andDomain:onInterfaceIndex:andName:" andDomain:? onInterfaceIndex:? andName:?];

  [(TSBonjourInterface *)v9 setNode:?];
  interfaces = [(TSBonjourNode *)self interfaces];

  v11 = MEMORY[0x277CBEB38];
  if (interfaces)
  {
    interfaces2 = [(TSBonjourNode *)self interfaces];
    dictionary = [v11 dictionaryWithDictionary:?];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  [dictionary setObject:? forKey:?];
  [(TSBonjourNode *)self setInterfaces:?];
}

- (void)removedFromInterface:(unsigned int)interface named:(id)named
{
  namedCopy = named;
  interfaces = [(TSBonjourNode *)self interfaces];

  v7 = MEMORY[0x277CBEB38];
  if (interfaces)
  {
    interfaces2 = [(TSBonjourNode *)self interfaces];
    dictionary = [v7 dictionaryWithDictionary:?];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  [dictionary removeObjectForKey:?];

  [(TSBonjourNode *)self setInterfaces:?];
}

@end