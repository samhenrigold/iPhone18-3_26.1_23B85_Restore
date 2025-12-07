@interface CRLCommandSetUSDZAsset
- (NSUUID)id;
- (_TtC8Freeform22CRLCommandSetUSDZAsset)init;
@end

@implementation CRLCommandSetUSDZAsset

- (NSUUID)id
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC8Freeform22CRLCommandSetUSDZAsset_id, v3, v5);
  v8.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v7, v3);

  return v8.super.isa;
}

- (_TtC8Freeform22CRLCommandSetUSDZAsset)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end