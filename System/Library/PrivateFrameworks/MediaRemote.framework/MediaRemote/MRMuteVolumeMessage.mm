@interface MRMuteVolumeMessage
- (BOOL)isMuted;
- (MRMuteVolumeMessage)initWithMuted:(BOOL)muted outputDeviceUID:(id)d details:(id)details;
- (MRRequestDetails)details;
- (NSString)outputDeviceUID;
@end

@implementation MRMuteVolumeMessage

- (MRMuteVolumeMessage)initWithMuted:(BOOL)muted outputDeviceUID:(id)d details:(id)details
{
  mutedCopy = muted;
  dCopy = d;
  detailsCopy = details;
  v14.receiver = self;
  v14.super_class = MRMuteVolumeMessage;
  v10 = [(MRProtocolMessage *)&v14 init];
  if (v10)
  {
    v11 = objc_alloc_init(_MRSetVolumeMutedMessageProtobuf);
    [(_MRSetVolumeMutedMessageProtobuf *)v11 setIsMuted:mutedCopy];
    [(_MRSetVolumeMutedMessageProtobuf *)v11 setOutputDeviceUID:dCopy];
    protobuf = [detailsCopy protobuf];
    [(_MRSetVolumeMutedMessageProtobuf *)v11 setDetails:protobuf];

    [(MRProtocolMessage *)v10 setUnderlyingCodableMessage:v11];
  }

  return v10;
}

- (NSString)outputDeviceUID
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  outputDeviceUID = [underlyingCodableMessage outputDeviceUID];

  return outputDeviceUID;
}

- (BOOL)isMuted
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  isMuted = [underlyingCodableMessage isMuted];

  return isMuted;
}

- (MRRequestDetails)details
{
  v3 = [MRRequestDetails alloc];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  details = [underlyingCodableMessage details];
  v6 = [(MRRequestDetails *)v3 initWithProtobuf:details];

  return v6;
}

@end