@interface MRSetDiscoveryModeMessage
- (MRSetDiscoveryModeMessage)initWithMode:(unsigned int)mode configuration:(id)configuration;
- (MRSetDiscoveryModeMessage)initWithMode:(unsigned int)mode features:(unsigned int)features;
- (MRSetDiscoveryModeMessage)initWithUnderlyingCodableMessage:(id)message error:(id)error;
@end

@implementation MRSetDiscoveryModeMessage

- (MRSetDiscoveryModeMessage)initWithUnderlyingCodableMessage:(id)message error:(id)error
{
  messageCopy = message;
  v14.receiver = self;
  v14.super_class = MRSetDiscoveryModeMessage;
  v7 = [(MRProtocolMessage *)&v14 initWithUnderlyingCodableMessage:messageCopy error:error];
  if (v7)
  {
    v7->_mode = [messageCopy mode];
    if ([messageCopy hasConfiguration])
    {
      v8 = [MRAVRoutingDiscoverySessionConfiguration alloc];
      configuration = [messageCopy configuration];
      v10 = [(MRAVRoutingDiscoverySessionConfiguration *)v8 initWithProtobuf:configuration];
      configuration = v7->_configuration;
      v7->_configuration = v10;

LABEL_6:
      goto LABEL_7;
    }

    if ([messageCopy hasFeatures])
    {
      v12 = -[MRAVRoutingDiscoverySessionConfiguration initWithEndpointFeatures:]([MRAVRoutingDiscoverySessionConfiguration alloc], "initWithEndpointFeatures:", [messageCopy features]);
      configuration = v7->_configuration;
      v7->_configuration = v12;
      goto LABEL_6;
    }
  }

LABEL_7:

  return v7;
}

- (MRSetDiscoveryModeMessage)initWithMode:(unsigned int)mode configuration:(id)configuration
{
  v4 = *&mode;
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = MRSetDiscoveryModeMessage;
  v7 = [(MRProtocolMessage *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v7->_mode = v4;
    v9 = [configurationCopy copy];
    configuration = v8->_configuration;
    v8->_configuration = v9;

    v11 = objc_alloc_init(_MRSetDiscoveryModeProtobufMessage);
    [(_MRSetDiscoveryModeProtobufMessage *)v11 setMode:v4];
    protobuf = [configurationCopy protobuf];
    [(_MRSetDiscoveryModeProtobufMessage *)v11 setConfiguration:protobuf];

    [(MRProtocolMessage *)v8 setUnderlyingCodableMessage:v11];
  }

  return v8;
}

- (MRSetDiscoveryModeMessage)initWithMode:(unsigned int)mode features:(unsigned int)features
{
  v4 = *&mode;
  v6 = [[MRAVRoutingDiscoverySessionConfiguration alloc] initWithEndpointFeatures:*&features];
  v7 = [(MRSetDiscoveryModeMessage *)self initWithMode:v4 configuration:v6];

  return v7;
}

@end