@interface SDAirDropBonjourBrowser
- (_TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser)init;
- (void)wirelessBluetoothStateChangedWithNotification:(id)notification;
@end

@implementation SDAirDropBonjourBrowser

- (void)wirelessBluetoothStateChangedWithNotification:(id)notification
{
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Notification();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = qword_1009735E0;
  selfCopy = self;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = static AirDropActor.shared;
  v15 = sub_1004CDBAC(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = selfCopy;

  sub_1002B3098(0, 0, v6, &unk_100806EE8, v16);

  (*(v8 + 8))(v10, v7);
}

- (_TtC16DaemoniOSLibrary23SDAirDropBonjourBrowser)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end