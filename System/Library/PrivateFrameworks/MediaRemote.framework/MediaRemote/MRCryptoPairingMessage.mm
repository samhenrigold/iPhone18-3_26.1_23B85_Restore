@interface MRCryptoPairingMessage
- (BOOL)isRetrying;
- (BOOL)isUsingSystemPairing;
- (MRCryptoPairingMessage)initWithPairingData:(id)data status:(int)status isRetrying:(BOOL)retrying isUsingSystemPairing:(BOOL)pairing state:(unint64_t)state;
- (NSData)pairingData;
- (int)status;
- (unint64_t)state;
@end

@implementation MRCryptoPairingMessage

- (MRCryptoPairingMessage)initWithPairingData:(id)data status:(int)status isRetrying:(BOOL)retrying isUsingSystemPairing:(BOOL)pairing state:(unint64_t)state
{
  pairingCopy = pairing;
  retryingCopy = retrying;
  v10 = *&status;
  dataCopy = data;
  v16.receiver = self;
  v16.super_class = MRCryptoPairingMessage;
  v13 = [(MRProtocolMessage *)&v16 init];
  if (v13)
  {
    v14 = objc_alloc_init(_MRCryptoPairingMessageProtobuf);
    [(_MRCryptoPairingMessageProtobuf *)v14 setPairingData:dataCopy];
    [(_MRCryptoPairingMessageProtobuf *)v14 setStatus:v10];
    [(_MRCryptoPairingMessageProtobuf *)v14 setIsRetrying:retryingCopy];
    [(_MRCryptoPairingMessageProtobuf *)v14 setIsUsingSystemPairing:pairingCopy];
    [(_MRCryptoPairingMessageProtobuf *)v14 setState:state];
    [(MRProtocolMessage *)v13 setUnderlyingCodableMessage:v14];
  }

  return v13;
}

- (NSData)pairingData
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  pairingData = [underlyingCodableMessage pairingData];

  return pairingData;
}

- (int)status
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  status = [underlyingCodableMessage status];

  return status;
}

- (BOOL)isRetrying
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  isRetrying = [underlyingCodableMessage isRetrying];

  return isRetrying;
}

- (BOOL)isUsingSystemPairing
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  isUsingSystemPairing = [underlyingCodableMessage isUsingSystemPairing];

  return isUsingSystemPairing;
}

- (unint64_t)state
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  state = [underlyingCodableMessage state];

  return state;
}

@end