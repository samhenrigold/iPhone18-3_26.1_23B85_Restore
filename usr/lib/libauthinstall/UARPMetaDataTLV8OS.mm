@interface UARPMetaDataTLV8OS
- (UARPMetaDataTLV8OS)init;
- (id)generateTLV:(unsigned int)v tlvValue:(unsigned __int8)value;
- (id)tlvValue:(unsigned __int8)value;
@end

@implementation UARPMetaDataTLV8OS

- (UARPMetaDataTLV8OS)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLV8OS;
  return [(UARPMetaDataTLVOS *)&v3 init];
}

- (id)generateTLV:(unsigned int)v tlvValue:(unsigned __int8)value
{
  valueCopy = value;
  v7 = objc_alloc_init(MEMORY[0x29EDB8DF8]);
  v12 = uarpHtonl(v);
  [v7 appendBytes:&v12 length:4];
  v11 = uarpHtonl(1u);
  [v7 appendBytes:&v11 length:4];
  v8 = [(UARPMetaDataTLV8OS *)self tlvValue:valueCopy];
  [v7 appendData:v8];
  v9 = [MEMORY[0x29EDB8DA0] dataWithData:v7];

  return v9;
}

- (id)tlvValue:(unsigned __int8)value
{
  valueCopy = value;
  v3 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithBytes:&valueCopy length:1];

  return v3;
}

@end