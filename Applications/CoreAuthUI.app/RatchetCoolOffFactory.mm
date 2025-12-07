@interface RatchetCoolOffFactory
+ (id)makeViewControllerWith:(id)with delegate:(id)delegate;
- (_TtC10CoreAuthUI21RatchetCoolOffFactory)init;
@end

@implementation RatchetCoolOffFactory

- (_TtC10CoreAuthUI21RatchetCoolOffFactory)init
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

+ (id)makeViewControllerWith:(id)with delegate:(id)delegate
{
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for RatchetCoolOffContentViewModel(0);
  swift_unknownObjectRetain_n();
  v6 = sub_100040B08(v5, delegate);
  type metadata accessor for RatchetCoolOffContentViewController();
  v7 = sub_100039BD0();
  v8 = v6;
  v9 = sub_100033228(v8, v7);

  swift_unknownObjectRelease();

  return v9;
}

@end