@interface SDAirDropService_objc
- (SDAirDropService_objc)init;
- (void)dumpDBWithUrl:(id)url;
- (void)start;
@end

@implementation SDAirDropService_objc

- (void)start
{
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  swift_retain_n();
  static Task<>.noThrow(priority:operation:)();

  sub_10047B4C4(v4);
}

- (void)dumpDBWithUrl:(id)url
{
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v17 - v12;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  (*(v8 + 16))(v11, v13, v7);
  v15 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = self;
  (*(v8 + 32))(v16 + v15, v11, v7);
  swift_retain_n();
  sub_10028088C(&qword_100976168, &qword_1007F92F0);
  static Task<>.noThrow(priority:operation:)();

  sub_10047B4C4(v6);
  (*(v8 + 8))(v13, v7);
}

- (SDAirDropService_objc)init
{
  ObjectType = swift_getObjectType();
  swift_defaultActor_initialize();
  *self->service = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(SDAirDropService_objc *)&v5 init];
}

@end