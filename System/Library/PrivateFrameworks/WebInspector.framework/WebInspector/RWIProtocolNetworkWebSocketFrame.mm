@interface RWIProtocolNetworkWebSocketFrame
- (BOOL)mask;
- (NSString)payloadData;
- (RWIProtocolNetworkWebSocketFrame)initWithOpcode:(double)opcode mask:(BOOL)mask payloadData:(id)data payloadLength:(double)length;
- (double)opcode;
- (double)payloadLength;
- (void)setMask:(BOOL)mask;
- (void)setOpcode:(double)opcode;
- (void)setPayloadData:(id)data;
- (void)setPayloadLength:(double)length;
@end

@implementation RWIProtocolNetworkWebSocketFrame

- (RWIProtocolNetworkWebSocketFrame)initWithOpcode:(double)opcode mask:(BOOL)mask payloadData:(id)data payloadLength:(double)length
{
  maskCopy = mask;
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = RWIProtocolNetworkWebSocketFrame;
  v11 = [(RWIProtocolJSONObject *)&v14 init];
  if (v11)
  {
    if (!dataCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"payloadData"}];
    }

    [(RWIProtocolNetworkWebSocketFrame *)v11 setOpcode:opcode];
    [(RWIProtocolNetworkWebSocketFrame *)v11 setMask:maskCopy];
    [(RWIProtocolNetworkWebSocketFrame *)v11 setPayloadData:dataCopy];
    [(RWIProtocolNetworkWebSocketFrame *)v11 setPayloadLength:length];
    v12 = v11;
  }

  return v11;
}

- (void)setOpcode:(double)opcode
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkWebSocketFrame;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"opcode" forKey:opcode];
}

- (double)opcode
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkWebSocketFrame;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"opcode"];
  return result;
}

- (void)setMask:(BOOL)mask
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkWebSocketFrame;
  [(RWIProtocolJSONObject *)&v3 setBool:mask forKey:@"mask"];
}

- (BOOL)mask
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkWebSocketFrame;
  return [(RWIProtocolJSONObject *)&v3 BOOLForKey:@"mask"];
}

- (void)setPayloadData:(id)data
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkWebSocketFrame;
  [(RWIProtocolJSONObject *)&v3 setString:data forKey:@"payloadData"];
}

- (NSString)payloadData
{
  v4.receiver = self;
  v4.super_class = RWIProtocolNetworkWebSocketFrame;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"payloadData"];

  return v2;
}

- (void)setPayloadLength:(double)length
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkWebSocketFrame;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"payloadLength" forKey:length];
}

- (double)payloadLength
{
  v3.receiver = self;
  v3.super_class = RWIProtocolNetworkWebSocketFrame;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"payloadLength"];
  return result;
}

@end