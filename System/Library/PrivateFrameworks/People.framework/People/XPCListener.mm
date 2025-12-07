@interface XPCListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation XPCListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v10 = sub_10001F0BC(listenerCopy, connectionCopy, v9);

  return v10 & 1;
}

@end