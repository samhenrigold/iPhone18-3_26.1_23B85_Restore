@interface UARPMetaDataTLV8
- (UARPMetaDataTLV8)init;
- (id)generateTLV:(unsigned int)v tlvValue:(unsigned __int8)value;
- (id)tlvValue:(unsigned __int8)value;
@end

@implementation UARPMetaDataTLV8

- (UARPMetaDataTLV8)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLV8;
  return [(UARPMetaDataTLV *)&v3 init];
}

- (id)generateTLV:(unsigned int)v tlvValue:(unsigned __int8)value
{
  valueCopy = value;
  v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v12 = uarpHtonl(v);
  [v7 appendBytes:&v12 length:4];
  v11 = uarpHtonl(1u);
  [v7 appendBytes:&v11 length:4];
  v8 = [(UARPMetaDataTLV8 *)self tlvValue:valueCopy];
  [v7 appendData:v8];
  v9 = [MEMORY[0x277CBEA90] dataWithData:v7];

  return v9;
}

- (id)tlvValue:(unsigned __int8)value
{
  valueCopy = value;
  v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&valueCopy length:1];

  return v3;
}

@end