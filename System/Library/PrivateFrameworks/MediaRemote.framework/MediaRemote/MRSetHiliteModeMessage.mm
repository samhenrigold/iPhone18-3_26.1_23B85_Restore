@interface MRSetHiliteModeMessage
- (BOOL)hiliteMode;
- (MRSetHiliteModeMessage)initWithHiliteMode:(BOOL)mode;
@end

@implementation MRSetHiliteModeMessage

- (MRSetHiliteModeMessage)initWithHiliteMode:(BOOL)mode
{
  modeCopy = mode;
  v7.receiver = self;
  v7.super_class = MRSetHiliteModeMessage;
  v4 = [(MRProtocolMessage *)&v7 init];
  if (v4)
  {
    v5 = objc_alloc_init(_MRSetHiliteModeMessageProtobuf);
    [(_MRSetHiliteModeMessageProtobuf *)v5 setHiliteMode:modeCopy];
    [(MRProtocolMessage *)v4 setUnderlyingCodableMessage:v5];
  }

  return v4;
}

- (BOOL)hiliteMode
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  hiliteMode = [underlyingCodableMessage hiliteMode];

  return hiliteMode;
}

@end