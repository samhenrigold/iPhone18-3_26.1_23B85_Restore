@interface ShareSheetAirDropNode
- (NSSet)formattedHandles;
- (NSString)description;
- (NSUUID)endpointUUID;
- (NSUUID)nodeIdentifier;
- (_TtC16DaemoniOSLibrary21ShareSheetAirDropNode)init;
- (id)displayNameForLocale:(id)locale;
- (void)setContact:(id)contact;
- (void)setDisplayIcon:(CGImage *)icon;
- (void)setEndpointUUID:(id)d;
- (void)setFormattedHandles:(id)handles;
- (void)setNodeIdentifier:(id)identifier;
- (void)setSuggestionIndex:(id)index;
- (void)setTransportBundleID:(id)d;
@end

@implementation ShareSheetAirDropNode

- (NSUUID)nodeIdentifier
{
  v3 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_nodeIdentifier;
  swift_beginAccess();
  sub_10000FF90(self + v6, v5, &unk_100976120, &qword_1007F9260);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
    v10 = isa;
  }

  return v10;
}

- (void)setNodeIdentifier:(id)identifier
{
  v5 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  if (identifier)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_nodeIdentifier;
  swift_beginAccess();
  selfCopy = self;
  sub_10000C788(v7, self + v10, &unk_100976120, &qword_1007F9260);
  swift_endAccess();
}

- (NSSet)formattedHandles
{
  if (*(self + OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_formattedHandles))
  {

    v2.super.isa = Set._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  return v2.super.isa;
}

- (void)setFormattedHandles:(id)handles
{
  if (handles)
  {
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  *(self + OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_formattedHandles) = v4;
}

- (void)setSuggestionIndex:(id)index
{
  v4 = *(self + OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_suggestionIndex);
  *(self + OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_suggestionIndex) = index;
  indexCopy = index;
}

- (void)setTransportBundleID:(id)d
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_transportBundleID);
  *v5 = v4;
  v5[1] = v6;
}

- (void)setDisplayIcon:(CGImage *)icon
{
  v4 = *(self + OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_displayIcon);
  *(self + OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_displayIcon) = icon;
  iconCopy = icon;
}

- (id)displayNameForLocale:(id)locale
{
  v5 = sub_10028088C(&unk_1009832A0, &qword_100809A40);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  if (locale)
  {
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for Locale();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for Locale();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  selfCopy = self;
  sub_100005508(v7, &unk_1009832A0, &qword_100809A40);
  v11 = *(selfCopy + OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_displayName + 8);

  if (v11)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NSUUID)endpointUUID
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_endpointUUID;
  swift_beginAccess();
  (*(v4 + 16))(v6, self + v7, v3);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);

  return v8.super.isa;
}

- (void)setEndpointUUID:(id)d
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_endpointUUID;
  swift_beginAccess();
  v9 = *(v5 + 40);
  selfCopy = self;
  v9(self + v8, v7, v4);
  swift_endAccess();
}

- (void)setContact:(id)contact
{
  v4 = *(self + OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_contact);
  *(self + OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_contact) = contact;
  contactCopy = contact;
}

- (NSString)description
{
  selfCopy = self;
  sub_1005E5B7C();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtC16DaemoniOSLibrary21ShareSheetAirDropNode)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end