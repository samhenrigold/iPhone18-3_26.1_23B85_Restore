@interface MRGetVoiceInputDevicesResponseMessage
- (MRGetVoiceInputDevicesResponseMessage)initWithDeviceIDs:(id)ds errorCode:(int64_t)code;
- (NSArray)deviceIDs;
- (int64_t)errorCode;
@end

@implementation MRGetVoiceInputDevicesResponseMessage

- (MRGetVoiceInputDevicesResponseMessage)initWithDeviceIDs:(id)ds errorCode:(int64_t)code
{
  v21 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v19.receiver = self;
  v19.super_class = MRGetVoiceInputDevicesResponseMessage;
  v7 = [(MRProtocolMessage *)&v19 init];
  if (v7)
  {
    v8 = objc_alloc_init(_MRGetVoiceInputDevicesResponseMessageProtobuf);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = dsCopy;
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          -[_MRGetVoiceInputDevicesResponseMessageProtobuf addDeviceIDs:](v8, "addDeviceIDs:", [*(*(&v15 + 1) + 8 * v13++) unsignedIntValue]);
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v11);
    }

    [(_MRGetVoiceInputDevicesResponseMessageProtobuf *)v8 setErrorCode:code];
    [(MRProtocolMessage *)v7 setUnderlyingCodableMessage:v8];
  }

  return v7;
}

- (NSArray)deviceIDs
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  deviceIDsCount = [underlyingCodableMessage deviceIDsCount];

  if (deviceIDsCount)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = MEMORY[0x1E696AD98];
      underlyingCodableMessage2 = [(MRProtocolMessage *)self underlyingCodableMessage];
      v10 = [v8 numberWithUnsignedInt:{objc_msgSend(underlyingCodableMessage2, "deviceIDsAtIndex:", v6)}];
      [v3 addObject:v10];

      v6 = v7;
      underlyingCodableMessage3 = [(MRProtocolMessage *)self underlyingCodableMessage];
      deviceIDsCount2 = [underlyingCodableMessage3 deviceIDsCount];
    }

    while (deviceIDsCount2 > v7++);
  }

  return v3;
}

- (int64_t)errorCode
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  errorCode = [underlyingCodableMessage errorCode];

  return errorCode;
}

@end