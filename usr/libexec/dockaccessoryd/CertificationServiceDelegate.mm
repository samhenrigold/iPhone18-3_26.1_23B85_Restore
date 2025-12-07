@interface CertificationServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC14dockaccessoryd28CertificationServiceDelegate)init;
@end

@implementation CertificationServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v10 = sub_10009FF20(connectionCopy, v9);

  return v10 & 1;
}

- (_TtC14dockaccessoryd28CertificationServiceDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CertificationServiceDelegate(self, a2);
  return [(CertificationServiceDelegate *)&v3 init];
}

@end