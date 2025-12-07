@interface MRGetVolumeControlCapabilitiesResultMessage
- (MRGetVolumeControlCapabilitiesResultMessage)initWithCapabilities:(unsigned int)capabilities;
- (unsigned)capabilities;
@end

@implementation MRGetVolumeControlCapabilitiesResultMessage

- (MRGetVolumeControlCapabilitiesResultMessage)initWithCapabilities:(unsigned int)capabilities
{
  v3 = *&capabilities;
  v8.receiver = self;
  v8.super_class = MRGetVolumeControlCapabilitiesResultMessage;
  v4 = [(MRProtocolMessage *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(_MRGetVolumeControlCapabilitiesResultMessageProtobuf);
    v6 = MRCapabilitiesToProtobuf(v3);
    [(_MRGetVolumeControlCapabilitiesResultMessageProtobuf *)v5 setCapabilities:v6];

    [(MRProtocolMessage *)v4 setUnderlyingCodableMessage:v5];
  }

  return v4;
}

- (unsigned)capabilities
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  capabilities = [underlyingCodableMessage capabilities];
  v4 = MRCapabilitiesFromProtobuf(capabilities);

  return v4;
}

@end