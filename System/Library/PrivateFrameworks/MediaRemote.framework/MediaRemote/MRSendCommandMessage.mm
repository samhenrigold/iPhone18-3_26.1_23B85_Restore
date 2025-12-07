@interface MRSendCommandMessage
- (MRPlayerPath)playerPath;
- (MRSendCommandMessage)initWithCommand:(unsigned int)command options:(id)options playerPath:(id)path;
- (NSDictionary)options;
- (unsigned)appOptions;
- (unsigned)command;
@end

@implementation MRSendCommandMessage

- (MRSendCommandMessage)initWithCommand:(unsigned int)command options:(id)options playerPath:(id)path
{
  v7 = *&command;
  optionsCopy = options;
  pathCopy = path;
  v17.receiver = self;
  v17.super_class = MRSendCommandMessage;
  v11 = [(MRProtocolMessage *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_options, options);
    v13 = objc_alloc_init(_MRSendCommandMessageProtobuf);
    [(_MRSendCommandMessageProtobuf *)v13 setCommand:MRMediaRemoteCommandToProtobuf(v7)];
    v14 = MRMediaRemoteCommandOptionsToProtobuf(optionsCopy);
    [(_MRSendCommandMessageProtobuf *)v13 setOptions:v14];

    protobuf = [pathCopy protobuf];
    [(_MRSendCommandMessageProtobuf *)v13 setPlayerPath:protobuf];

    [(MRProtocolMessage *)v12 setUnderlyingCodableMessage:v13];
  }

  return v12;
}

- (unsigned)command
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = MRMediaRemoteCommandFromProtobuf([underlyingCodableMessage command]);

  return v3;
}

- (NSDictionary)options
{
  options = self->_options;
  if (!options)
  {
    underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
    options = [underlyingCodableMessage options];
    v6 = MRMediaRemoteCommandOptionsFromProtobuf(options);
    v7 = self->_options;
    self->_options = v6;

    options = self->_options;
  }

  return options;
}

- (MRPlayerPath)playerPath
{
  v3 = [MRPlayerPath alloc];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  playerPath = [underlyingCodableMessage playerPath];
  v6 = [(MRPlayerPath *)v3 initWithProtobuf:playerPath];

  return v6;
}

- (unsigned)appOptions
{
  v2 = [(NSDictionary *)self->_options objectForKey:@"kMRMediaRemoteOptionSendOptionsNumber"];
  intValue = [v2 intValue];

  return intValue;
}

@end