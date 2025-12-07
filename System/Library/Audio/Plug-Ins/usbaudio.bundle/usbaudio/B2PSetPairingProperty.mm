@interface B2PSetPairingProperty
- (BOOL)setPropertyWithQualifierSize:(unsigned int)size qualifierData:(void *)data dataSize:(unsigned int)dataSize andData:(void *)andData forClient:(int)client;
@end

@implementation B2PSetPairingProperty

- (BOOL)setPropertyWithQualifierSize:(unsigned int)size qualifierData:(void *)data dataSize:(unsigned int)dataSize andData:(void *)andData forClient:(int)client
{
  v9 = *&dataSize;
  v11 = *&size;
  selfCopy = self;
  LOBYTE(client) = sub_100083624(v11, data, v9, andData, client);

  return client & 1;
}

@end