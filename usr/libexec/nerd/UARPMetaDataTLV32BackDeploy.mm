@interface UARPMetaDataTLV32BackDeploy
- (UARPMetaDataTLV32BackDeploy)init;
- (id)generateTLV:(unsigned int)v tlvValue:(unsigned int)value;
- (id)tlvValue:(unsigned int)value;
@end

@implementation UARPMetaDataTLV32BackDeploy

- (UARPMetaDataTLV32BackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLV32BackDeploy;
  return [(UARPMetaDataTLVBackDeploy *)&v3 init];
}

- (id)generateTLV:(unsigned int)v tlvValue:(unsigned int)value
{
  v4 = *&value;
  v7 = objc_alloc_init(NSMutableData);
  v12 = uarpHtonl(v);
  [v7 appendBytes:&v12 length:4];
  v11 = uarpHtonl(4u);
  [v7 appendBytes:&v11 length:4];
  v8 = [(UARPMetaDataTLV32BackDeploy *)self tlvValue:v4];
  [v7 appendData:v8];
  v9 = [NSData dataWithData:v7];

  return v9;
}

- (id)tlvValue:(unsigned int)value
{
  v5 = uarpHtonl(value);
  v3 = [[NSData alloc] initWithBytes:&v5 length:4];

  return v3;
}

@end