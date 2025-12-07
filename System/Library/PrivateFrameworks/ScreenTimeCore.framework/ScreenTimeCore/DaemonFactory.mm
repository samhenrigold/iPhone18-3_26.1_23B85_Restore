@interface DaemonFactory
+ (id)makeDaemon;
- (_TtC15ScreenTimeAgent13DaemonFactory)init;
@end

@implementation DaemonFactory

+ (id)makeDaemon
{
  type metadata accessor for ConcreteDependencyFactory(0);
  swift_allocObject();
  v2 = sub_1000FC3D8();
  v3 = objc_allocWithZone(type metadata accessor for Daemon(0));
  v4 = sub_1000DB2A0(v2, v3);

  return v4;
}

- (_TtC15ScreenTimeAgent13DaemonFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DaemonFactory();
  return [(DaemonFactory *)&v3 init];
}

@end