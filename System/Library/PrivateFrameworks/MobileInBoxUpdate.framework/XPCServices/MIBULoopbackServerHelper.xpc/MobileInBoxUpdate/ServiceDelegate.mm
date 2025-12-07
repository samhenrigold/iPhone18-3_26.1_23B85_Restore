@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC24MIBULoopbackServerHelper15ServiceDelegate)init;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v11 = sub_100001A04(connectionCopy, v9, v10);

  return v11 & 1;
}

- (_TtC24MIBULoopbackServerHelper15ServiceDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ServiceDelegate();
  return [(ServiceDelegate *)&v3 init];
}

@end