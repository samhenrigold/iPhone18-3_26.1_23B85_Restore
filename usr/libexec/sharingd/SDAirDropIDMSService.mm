@interface SDAirDropIDMSService
- (_TtC16DaemoniOSLibrary20SDAirDropIDMSService)init;
- (void)appleIDChangedWithNotification:(id)notification;
@end

@implementation SDAirDropIDMSService

- (void)appleIDChangedWithNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1003837D0();

  (*(v5 + 8))(v7, v4);
}

- (_TtC16DaemoniOSLibrary20SDAirDropIDMSService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end