@interface MRRegisterVoiceInputDeviceResponseMessage
- (MRRegisterVoiceInputDeviceResponseMessage)initWithDeviceID:(unsigned int)d errorCode:(int64_t)code;
- (int64_t)errorCode;
- (unsigned)deviceID;
@end

@implementation MRRegisterVoiceInputDeviceResponseMessage

- (MRRegisterVoiceInputDeviceResponseMessage)initWithDeviceID:(unsigned int)d errorCode:(int64_t)code
{
  v5 = *&d;
  v9.receiver = self;
  v9.super_class = MRRegisterVoiceInputDeviceResponseMessage;
  v6 = [(MRProtocolMessage *)&v9 init];
  if (v6)
  {
    v7 = objc_alloc_init(_MRRegisterVoiceInputDeviceResponseMessageProtobuf);
    [(_MRRegisterVoiceInputDeviceResponseMessageProtobuf *)v7 setDeviceID:v5];
    [(_MRRegisterVoiceInputDeviceResponseMessageProtobuf *)v7 setErrorCode:code];
    [(MRProtocolMessage *)v6 setUnderlyingCodableMessage:v7];
  }

  return v6;
}

- (unsigned)deviceID
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  deviceID = [underlyingCodableMessage deviceID];

  return deviceID;
}

- (int64_t)errorCode
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  errorCode = [underlyingCodableMessage errorCode];

  return errorCode;
}

@end