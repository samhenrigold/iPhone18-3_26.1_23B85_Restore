@interface JPKIXPCServer
+ (uint64_t)kickOff;
@end

@implementation JPKIXPCServer

+ (uint64_t)kickOff
{
  v0 = type metadata accessor for XPCListener.InitializationOptions();
  __chkstk_darwin(v0 - 8);
  if (qword_100501B48 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B578;
  *(swift_allocObject() + 16) = v1;

  v2 = v1;
  static XPCListener.InitializationOptions.none.getter();
  type metadata accessor for XPCListener();
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC10seserviced13JPKIXPCServer_listener] = XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();
}

@end