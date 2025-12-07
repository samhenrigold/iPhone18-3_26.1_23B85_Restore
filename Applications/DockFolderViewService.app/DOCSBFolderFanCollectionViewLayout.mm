@interface DOCSBFolderFanCollectionViewLayout
+ (Class)layoutAttributesClass;
- (NSSet)indexPathsOfItemsPinnedToBottom;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (void)prepareLayout;
- (void)setIndexPathsOfItemsPinnedToBottom:(id)bottom;
@end

@implementation DOCSBFolderFanCollectionViewLayout

- (void)prepareLayout
{
  selfCopy = self;
  sub_100080360();
}

+ (Class)layoutAttributesClass
{
  type metadata accessor for DOCSBFolderFanCollectionViewLayoutAttributes();

  return swift_getObjCClassFromMetadata();
}

- (NSSet)indexPathsOfItemsPinnedToBottom
{
  type metadata accessor for IndexPath();
  sub_100085DA8(&qword_1000BC4F8, &protocol conformance descriptor for IndexPath);

  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setIndexPathsOfItemsPinnedToBottom:(id)bottom
{
  type metadata accessor for IndexPath();
  sub_100085DA8(&qword_1000BC4F8, &protocol conformance descriptor for IndexPath);
  *(self + OBJC_IVAR____TtC21DockFolderViewService34DOCSBFolderFanCollectionViewLayout_indexPathsOfItemsPinnedToBottom) = static Set._unconditionallyBridgeFromObjectiveC(_:)();
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v13 = sub_100080E8C(v9, v11);

  (*(v6 + 8))(v8, v5);

  return v13;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v16.receiver = selfCopy;
  v16.super_class = ObjectType;
  v11 = [(DOCSBFolderFanCollectionViewLayout *)&v16 layoutAttributesForItemAtIndexPath:isa];

  if (v11)
  {
    type metadata accessor for DOCSBFolderFanCollectionViewLayoutAttributes();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = v12;
      v14 = v11;
      sub_100080FD8(v13);

      selfCopy = v14;
    }
  }

  (*(v6 + 8))(v8, v5);

  return v11;
}

@end