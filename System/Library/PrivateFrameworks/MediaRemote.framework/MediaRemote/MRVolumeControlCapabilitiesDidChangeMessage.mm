@interface MRVolumeControlCapabilitiesDidChangeMessage
- (MRVolumeControlCapabilitiesDidChangeMessage)initWithCapabilities:(unsigned int)capabilities endpointUID:(id)d outputDeviceUID:(id)iD;
- (NSString)endpointUID;
- (NSString)outputDeviceUID;
- (unsigned)capabilities;
@end

@implementation MRVolumeControlCapabilitiesDidChangeMessage

- (MRVolumeControlCapabilitiesDidChangeMessage)initWithCapabilities:(unsigned int)capabilities endpointUID:(id)d outputDeviceUID:(id)iD
{
  v6 = *&capabilities;
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = MRVolumeControlCapabilitiesDidChangeMessage;
  v10 = [(MRProtocolMessage *)&v14 init];
  if (v10)
  {
    v11 = objc_alloc_init(_MRVolumeControlCapabilitiesDidChangeMessageProtobuf);
    v12 = MRCapabilitiesToProtobuf(v6);
    [(_MRVolumeControlCapabilitiesDidChangeMessageProtobuf *)v11 setCapabilities:v12];

    [(_MRVolumeControlCapabilitiesDidChangeMessageProtobuf *)v11 setEndpointUID:dCopy];
    [(_MRVolumeControlCapabilitiesDidChangeMessageProtobuf *)v11 setOutputDeviceUID:iDCopy];
    [(MRProtocolMessage *)v10 setUnderlyingCodableMessage:v11];
  }

  return v10;
}

- (unsigned)capabilities
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  capabilities = [underlyingCodableMessage capabilities];
  v4 = MRCapabilitiesFromProtobuf(capabilities);

  return v4;
}

- (NSString)endpointUID
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  endpointUID = [underlyingCodableMessage endpointUID];

  return endpointUID;
}

- (NSString)outputDeviceUID
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  outputDeviceUID = [underlyingCodableMessage outputDeviceUID];

  return outputDeviceUID;
}

@end