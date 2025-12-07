@interface MRVolumeMutedDidChangeMessage
- (BOOL)isMuted;
- (MRVolumeMutedDidChangeMessage)initWithMuted:(BOOL)muted outputDeviceUID:(id)d;
- (NSString)outputDeviceUID;
@end

@implementation MRVolumeMutedDidChangeMessage

- (MRVolumeMutedDidChangeMessage)initWithMuted:(BOOL)muted outputDeviceUID:(id)d
{
  mutedCopy = muted;
  dCopy = d;
  v10.receiver = self;
  v10.super_class = MRVolumeMutedDidChangeMessage;
  v7 = [(MRProtocolMessage *)&v10 init];
  if (v7)
  {
    v8 = objc_alloc_init(_MRVolumeMutedDidChangeMessageProtobuf);
    [(_MRVolumeMutedDidChangeMessageProtobuf *)v8 setIsMuted:mutedCopy];
    [(_MRVolumeMutedDidChangeMessageProtobuf *)v8 setOutputDeviceUID:dCopy];
    [(MRProtocolMessage *)v7 setUnderlyingCodableMessage:v8];
  }

  return v7;
}

- (BOOL)isMuted
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  isMuted = [underlyingCodableMessage isMuted];

  return isMuted;
}

- (NSString)outputDeviceUID
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  outputDeviceUID = [underlyingCodableMessage outputDeviceUID];

  return outputDeviceUID;
}

@end