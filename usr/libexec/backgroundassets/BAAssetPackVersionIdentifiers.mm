@interface BAAssetPackVersionIdentifiers
- (BAAssetPackVersionIdentifiers)init;
- (NSUUID)versionIdentifier;
@end

@implementation BAAssetPackVersionIdentifiers

- (NSUUID)versionIdentifier
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR___BAAssetPackVersionIdentifiers_versionID, v3);
  v7.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);

  return v7.super.isa;
}

- (BAAssetPackVersionIdentifiers)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end