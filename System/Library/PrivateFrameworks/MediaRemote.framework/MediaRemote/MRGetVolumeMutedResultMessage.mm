@interface MRGetVolumeMutedResultMessage
- (BOOL)isMuted;
- (MRGetVolumeMutedResultMessage)initWithMuted:(BOOL)muted;
@end

@implementation MRGetVolumeMutedResultMessage

- (BOOL)isMuted
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  isMuted = [underlyingCodableMessage isMuted];

  return isMuted;
}

- (MRGetVolumeMutedResultMessage)initWithMuted:(BOOL)muted
{
  mutedCopy = muted;
  v7.receiver = self;
  v7.super_class = MRGetVolumeMutedResultMessage;
  v4 = [(MRProtocolMessage *)&v7 init];
  if (v4)
  {
    v5 = objc_alloc_init(_MRGetVolumeMutedResultMessageProtobuf);
    [(_MRGetVolumeMutedResultMessageProtobuf *)v5 setIsMuted:mutedCopy];
    [(MRProtocolMessage *)v4 setUnderlyingCodableMessage:v5];
  }

  return v4;
}

@end