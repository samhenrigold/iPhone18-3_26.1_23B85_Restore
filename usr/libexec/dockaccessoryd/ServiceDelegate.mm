@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC14dockaccessoryd15ServiceDelegate)init;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v10 = sub_100136364(connectionCopy, v9);

  return v10 & 1;
}

- (_TtC14dockaccessoryd15ServiceDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end