@interface BookkeepingServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation BookkeepingServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v10 = sub_10000B5C8(selfCopy, connectionCopy, v9);

  return v10 & 1;
}

@end