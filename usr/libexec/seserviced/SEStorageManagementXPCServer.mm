@interface SEStorageManagementXPCServer
+ (uint64_t)kickOff;
- (_TtC10seserviced28SEStorageManagementXPCServer)init;
@end

@implementation SEStorageManagementXPCServer

- (_TtC10seserviced28SEStorageManagementXPCServer)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC10seserviced28SEStorageManagementXPCServer_listener) = 0;
  v4 = (&self->super.isa + OBJC_IVAR____TtC10seserviced28SEStorageManagementXPCServer_serviceName);
  *v4 = 0xD000000000000034;
  v4[1] = 0x8000000100464470;
  v5 = (&self->super.isa + OBJC_IVAR____TtC10seserviced28SEStorageManagementXPCServer_entitlementKey);
  *v5 = 0xD000000000000027;
  v5[1] = 0x80000001004644B0;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(SEStorageManagementXPCServer *)&v7 init];
}

+ (uint64_t)kickOff
{
  v0 = type metadata accessor for XPCListener.InitializationOptions();
  __chkstk_darwin(v0 - 8);
  if (qword_1005019E0 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B2E0;
  *(swift_allocObject() + 16) = v1;

  v2 = v1;
  static XPCListener.InitializationOptions.none.getter();
  type metadata accessor for XPCListener();
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC10seserviced28SEStorageManagementXPCServer_listener] = XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();
}

@end