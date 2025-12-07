@interface LocationAuthorizationMonitor
- (_TtC17GeneralMapsWidget28LocationAuthorizationMonitor)init;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation LocationAuthorizationMonitor

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  selfCopy = self;
  sub_10005628C(authorizationCopy);
}

- (_TtC17GeneralMapsWidget28LocationAuthorizationMonitor)init
{
  v3 = sub_100015240(&qword_1000E0CD8, qword_100084C20);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  *(&self->super.isa + OBJC_IVAR____TtC17GeneralMapsWidget28LocationAuthorizationMonitor_locationManager) = 0;
  v7 = OBJC_IVAR____TtC17GeneralMapsWidget28LocationAuthorizationMonitor__accuracyAuthorization;
  v12 = 0;
  v13 = 1;
  sub_100015240(&qword_1000E0CD0, &qword_100084448);
  sub_10007D5E8();
  (*(v4 + 32))(self + v7, v6, v3);
  v8 = self + OBJC_IVAR____TtC17GeneralMapsWidget28LocationAuthorizationMonitor_bundleIdentifier;
  strcpy(self + OBJC_IVAR____TtC17GeneralMapsWidget28LocationAuthorizationMonitor_bundleIdentifier, "com.apple.Maps");
  v8[15] = -18;
  v9 = type metadata accessor for LocationAuthorizationMonitor(0);
  v11.receiver = self;
  v11.super_class = v9;
  return [(LocationAuthorizationMonitor *)&v11 init];
}

@end