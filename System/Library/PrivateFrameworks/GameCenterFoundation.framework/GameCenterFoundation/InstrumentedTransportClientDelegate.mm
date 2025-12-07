@interface InstrumentedTransportClientDelegate
- (void)connectionDidChangeWithState:(int)state playerID:(id)d;
- (void)relayDidReceivePushData:(id)data completionHandler:(id)handler;
- (void)transportDidReceivePacket:(id)packet fromPlayerID:(id)d remoteRecipientID:(id)iD;
- (void)transportDidUpdateWithInfo:(id)info;
@end

@implementation InstrumentedTransportClientDelegate

- (void)connectionDidChangeWithState:(int)state playerID:(id)d
{
  v4 = *&state;
  v5 = sub_227A724EC();
  v7 = v6;

  sub_2279FCD94(v4, v5, v7);
}

- (void)relayDidReceivePushData:(id)data completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_227A7241C();
  _Block_copy(v5);

  sub_2279FCEF4(v6, self, v5);
  _Block_release(v5);
}

- (void)transportDidReceivePacket:(id)packet fromPlayerID:(id)d remoteRecipientID:(id)iD
{
  v7 = sub_227A724EC();
  v9 = v8;
  if (iD)
  {
    v10 = sub_227A724EC();
    iD = v11;
  }

  else
  {
    v10 = 0;
  }

  packetCopy = packet;

  sub_2279FD360(packetCopy, v7, v9, v10, iD);
}

- (void)transportDidUpdateWithInfo:(id)info
{
  v3 = sub_227A7241C();

  sub_2279FD4E0(v3);
}

@end