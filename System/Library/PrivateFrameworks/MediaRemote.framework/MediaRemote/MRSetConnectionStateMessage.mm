@interface MRSetConnectionStateMessage
- (MRSetConnectionStateMessage)initWithConnectionState:(unsigned int)state;
- (unsigned)state;
@end

@implementation MRSetConnectionStateMessage

- (MRSetConnectionStateMessage)initWithConnectionState:(unsigned int)state
{
  v3 = *&state;
  v7.receiver = self;
  v7.super_class = MRSetConnectionStateMessage;
  v4 = [(MRProtocolMessage *)&v7 init];
  if (v4)
  {
    v5 = objc_alloc_init(_MRSetConnectionStateMessageProtobuf);
    [(_MRSetConnectionStateMessageProtobuf *)v5 setState:MRProtobufFromConnectionState(v3)];
    [(MRProtocolMessage *)v4 setUnderlyingCodableMessage:v5];
  }

  return v4;
}

- (unsigned)state
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = MRConnectionStateFromProtobuf([underlyingCodableMessage state]);

  return v3;
}

@end