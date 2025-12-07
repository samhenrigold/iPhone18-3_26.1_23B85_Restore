@interface MRLegacyVolumeControlCapabilitiesDidChangeMessage
- (MRLegacyVolumeControlCapabilitiesDidChangeMessage)initWithCapabilities:(unsigned int)capabilities;
- (unsigned)capabilities;
@end

@implementation MRLegacyVolumeControlCapabilitiesDidChangeMessage

- (MRLegacyVolumeControlCapabilitiesDidChangeMessage)initWithCapabilities:(unsigned int)capabilities
{
  v3 = *&capabilities;
  v7.receiver = self;
  v7.super_class = MRLegacyVolumeControlCapabilitiesDidChangeMessage;
  v4 = [(MRProtocolMessage *)&v7 init];
  if (v4)
  {
    v5 = MRCapabilitiesToProtobuf(v3);
    [(MRProtocolMessage *)v4 setUnderlyingCodableMessage:v5];
  }

  return v4;
}

- (unsigned)capabilities
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  v3 = MRCapabilitiesFromProtobuf(underlyingCodableMessage);

  return v3;
}

@end