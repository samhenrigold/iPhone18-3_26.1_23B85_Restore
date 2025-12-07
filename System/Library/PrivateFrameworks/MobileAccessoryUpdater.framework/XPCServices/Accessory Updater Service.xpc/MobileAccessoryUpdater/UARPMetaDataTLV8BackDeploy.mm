@interface UARPMetaDataTLV8BackDeploy
- (UARPMetaDataTLV8BackDeploy)init;
- (id)generateTLV:(unsigned int)v tlvValue:(unsigned __int8)value;
- (id)tlvValue:(unsigned __int8)value;
@end

@implementation UARPMetaDataTLV8BackDeploy

- (UARPMetaDataTLV8BackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLV8BackDeploy;
  return [(UARPMetaDataTLVBackDeploy *)&v3 init];
}

- (id)generateTLV:(unsigned int)v tlvValue:(unsigned __int8)value
{
  valueCopy = value;
  v7 = objc_alloc_init(NSMutableData);
  v12 = uarpHtonl(v);
  [v7 appendBytes:&v12 length:4];
  v11 = uarpHtonl(1u);
  [v7 appendBytes:&v11 length:4];
  v8 = [(UARPMetaDataTLV8BackDeploy *)self tlvValue:valueCopy];
  [v7 appendData:v8];
  v9 = [NSData dataWithData:v7];

  return v9;
}

- (id)tlvValue:(unsigned __int8)value
{
  valueCopy = value;
  v3 = [[NSData alloc] initWithBytes:&valueCopy length:1];

  return v3;
}

@end