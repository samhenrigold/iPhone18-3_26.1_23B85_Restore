@interface LoggedOutPushCache
+ (NSDate)expirationDate;
+ (void)registeredDeviceWithExpirationDate:(id)date;
+ (void)unregisteredDevice;
- (_TtC3ind18LoggedOutPushCache)init;
@end

@implementation LoggedOutPushCache

- (_TtC3ind18LoggedOutPushCache)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LoggedOutPushCache();
  return [(LoggedOutPushCache *)&v3 init];
}

+ (NSDate)expirationDate
{
  v2 = sub_100022CF0(&qword_100063530, &unk_10004E300);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  static LoggedOutPushCache.expirationDate.getter(&v11 - v3);
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v4, 1, v5);
  v8 = 0;
  if (v7 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v6 + 8))(v4, v5);
    v8 = isa;
  }

  return v8;
}

+ (void)registeredDeviceWithExpirationDate:(id)date
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  if (qword_100063A50 != -1)
  {
    swift_once();
  }

  v7 = qword_100063A58;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v9 = String._bridgeToObjectiveC()();
  [v7 setObject:isa forKey:v9];

  (*(v4 + 8))(v6, v3);
}

+ (void)unregisteredDevice
{
  if (qword_100063A50 != -1)
  {
    swift_once();
  }

  v2 = qword_100063A58;
  v3 = String._bridgeToObjectiveC()();
  [v2 setURL:0 forKey:v3];
}

@end