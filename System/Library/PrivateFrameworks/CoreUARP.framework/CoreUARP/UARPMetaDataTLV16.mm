@interface UARPMetaDataTLV16
- (UARPMetaDataTLV16)init;
- (id)generateTLV:(unsigned int)v tlvValue:(unsigned __int16)value;
- (id)tlvValue:(unsigned __int16)value;
@end

@implementation UARPMetaDataTLV16

- (UARPMetaDataTLV16)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLV16;
  return [(UARPMetaDataTLV *)&v3 init];
}

- (id)generateTLV:(unsigned int)v tlvValue:(unsigned __int16)value
{
  valueCopy = value;
  v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v12 = uarpHtonl(v);
  [v7 appendBytes:&v12 length:4];
  v11 = uarpHtonl(2u);
  [v7 appendBytes:&v11 length:4];
  v8 = [(UARPMetaDataTLV16 *)self tlvValue:valueCopy];
  [v7 appendData:v8];
  v9 = [MEMORY[0x277CBEA90] dataWithData:v7];

  return v9;
}

- (id)tlvValue:(unsigned __int16)value
{
  v5 = uarpHtons(value);
  v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v5 length:2];

  return v3;
}

@end