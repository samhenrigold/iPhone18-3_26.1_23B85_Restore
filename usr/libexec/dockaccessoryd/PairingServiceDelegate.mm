@interface PairingServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC14dockaccessoryd22PairingServiceDelegate)init;
@end

@implementation PairingServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v10 = sub_100180D4C(connectionCopy, v9);

  return v10 & 1;
}

- (_TtC14dockaccessoryd22PairingServiceDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PairingServiceDelegate(self, a2);
  return [(PairingServiceDelegate *)&v3 init];
}

@end