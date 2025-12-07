@interface DebugServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC14dockaccessoryd20DebugServiceDelegate)init;
@end

@implementation DebugServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v10 = sub_1001E258C(connectionCopy, v9);

  return v10 & 1;
}

- (_TtC14dockaccessoryd20DebugServiceDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DebugServiceDelegate(self, a2);
  return [(DebugServiceDelegate *)&v3 init];
}

@end