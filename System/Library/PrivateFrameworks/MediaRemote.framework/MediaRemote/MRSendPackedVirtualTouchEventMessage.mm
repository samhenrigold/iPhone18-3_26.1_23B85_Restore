@interface MRSendPackedVirtualTouchEventMessage
- (MRSendPackedVirtualTouchEventMessage)initWithTouchEvent:(_MRHIDTouchEvent *)event virtualDeviceID:(unint64_t)d;
- (_MRHIDTouchEvent)event;
- (id)description;
- (unint64_t)virtualDeviceID;
@end

@implementation MRSendPackedVirtualTouchEventMessage

- (MRSendPackedVirtualTouchEventMessage)initWithTouchEvent:(_MRHIDTouchEvent *)event virtualDeviceID:(unint64_t)d
{
  dCopy = d;
  v13 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = MRSendPackedVirtualTouchEventMessage;
  v6 = [(MRProtocolMessage *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc_init(_MRSendPackedVirtualTouchEventMessageProtobuf);
    var1 = event->var0.var0.var1;
    v12[0] = event->var0.var0.var0;
    v12[1] = var1;
    v12[2] = event->var1;
    v12[3] = dCopy;
    v12[4] = event->var3;
    v9 = [MEMORY[0x1E695DEF0] dataWithBytes:v12 length:10];
    [(_MRSendPackedVirtualTouchEventMessageProtobuf *)v7 setData:v9];

    [(MRProtocolMessage *)v6 setUnderlyingCodableMessage:v7];
    [(MRProtocolMessage *)v6 setTimestamp:event->var2];
  }

  return v6;
}

- (_MRHIDTouchEvent)event
{
  v10 = *MEMORY[0x1E69E9840];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  data = [underlyingCodableMessage data];
  [data getBytes:v9 length:10];

  *&retstr->var1 = 0;
  retstr->var2 = 0;
  *&retstr->var3 = 0;
  v7 = v9[1];
  retstr->var0.var0.var0 = v9[0];
  retstr->var0.var0.var1 = v7;
  retstr->var1 = v9[2];
  retstr->var2 = [(MRProtocolMessage *)self timestamp];
  retstr->var3 = v9[4];

  return result;
}

- (unint64_t)virtualDeviceID
{
  v8 = *MEMORY[0x1E69E9840];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  data = [underlyingCodableMessage data];
  [data getBytes:v6 length:10];

  v4 = v7;
  return v4;
}

- (id)description
{
  v15 = *MEMORY[0x1E69E9840];
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  data = [underlyingCodableMessage data];
  [data getBytes:v14 length:10];

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  timestamp = [(MRProtocolMessage *)self timestamp];
  error = [(MRProtocolMessage *)self error];
  replyIdentifier = [(MRProtocolMessage *)self replyIdentifier];
  type = [(MRSendPackedVirtualTouchEventMessage *)self type];
  v12 = [v5 stringWithFormat:@"\n<Message Type: %@\nTimestamp: %llu\nError: %@\nIdentifier: %@\nType: %lul\nMessage: x: %u y: %u phase: %u deviceID: %u finger: %u\n>", v7, timestamp, error, replyIdentifier, type, v14[0], v14[1], v14[2], v14[3], v14[4]];

  return v12;
}

@end