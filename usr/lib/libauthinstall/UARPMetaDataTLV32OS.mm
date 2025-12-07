@interface UARPMetaDataTLV32OS
- (UARPMetaDataTLV32OS)init;
- (id)generateTLV:(unsigned int)v tlvValue:(unsigned int)value;
- (id)tlvValue:(unsigned int)value;
@end

@implementation UARPMetaDataTLV32OS

- (UARPMetaDataTLV32OS)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLV32OS;
  return [(UARPMetaDataTLVOS *)&v3 init];
}

- (id)generateTLV:(unsigned int)v tlvValue:(unsigned int)value
{
  v4 = *&value;
  v7 = objc_alloc_init(MEMORY[0x29EDB8DF8]);
  v12 = uarpHtonl(v);
  [v7 appendBytes:&v12 length:4];
  v11 = uarpHtonl(4u);
  [v7 appendBytes:&v11 length:4];
  v8 = [(UARPMetaDataTLV32OS *)self tlvValue:v4];
  [v7 appendData:v8];
  v9 = [MEMORY[0x29EDB8DA0] dataWithData:v7];

  return v9;
}

- (id)tlvValue:(unsigned int)value
{
  v5 = uarpHtonl(value);
  v3 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithBytes:&v5 length:4];

  return v3;
}

@end