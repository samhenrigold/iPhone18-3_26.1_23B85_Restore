@interface CRLTableItem
+ (CGSize)defaultTableCellSize;
+ (CGSize)defaultTableSize;
- (BOOL)hasRoundedCorners;
- (BOOL)isCellAutogrowOn;
- (BOOL)isRTL;
- (CRLFill)colorFill;
- (Class)editorClass;
- (Class)layoutClass;
- (Class)repClass;
- (NSArray)childInfos;
- (_TtC8Freeform12CRLTableItem)initWithStore:(id)store parentContainerUUID:(id)d geometry:(id)geometry;
- (double)columnWidthAt:(int64_t)at;
- (double)rowHeightAt:(int64_t)at;
- (id)_duplicateEmptyWithNewParentContainerUUID:(id)d uuidRemapHelper:(id)helper error:(id *)error;
- (id)cellFillWithColumnIndex:(int64_t)index rowIndex:(int64_t)rowIndex;
- (id)strokeForRenderingTable;
- (int64_t)columnCount;
- (int64_t)columnEndIndex;
- (int64_t)rowCount;
- (int64_t)rowEndIndex;
@end

@implementation CRLTableItem

- (id)strokeForRenderingTable
{
  selfCopy = self;
  v2 = sub_1011DCEDC();

  return v2;
}

- (id)_duplicateEmptyWithNewParentContainerUUID:(id)d uuidRemapHelper:(id)helper error:(id *)error
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v19[-v13];
  if (d)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v9 + 32))(v14, v11, v8);
    (*(v9 + 56))(v14, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v14, 1, 1, v8);
  }

  helperCopy = helper;
  selfCopy = self;
  v17 = sub_1011DBBE4(v14, helperCopy);
  sub_10000CAAC(v14, &qword_1019F6990, &qword_10146D2F0);

  return v17;
}

- (NSArray)childInfos
{
  v3 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v4 = *&self->_TtC8Freeform16CRLContainerItem_opaque[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
  selfCopy = self;
  if (!v4)
  {
    sub_10096C7D4();
    v4 = *&self->_TtC8Freeform16CRLContainerItem_opaque[v3];
  }

  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  sub_10067F2E8(v6);

  sub_1011E328C();
  v8 = sub_10067F2E8(v7);

  sub_10079AD4C(v8);

  sub_1005B981C(&qword_1019F5720, &unk_101474E20);
  v9.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
}

- (BOOL)hasRoundedCorners
{
  selfCopy = self;
  v3 = sub_1011DD1DC();

  return v3 & 1;
}

- (BOOL)isCellAutogrowOn
{
  selfCopy = self;
  v3 = sub_1011DD484();

  return v3 & 1;
}

- (BOOL)isRTL
{
  selfCopy = self;
  v3 = sub_1011DD72C();

  return v3 & 1;
}

- (CRLFill)colorFill
{
  selfCopy = self;
  v3 = sub_1011DD9E4();

  return v3;
}

- (id)cellFillWithColumnIndex:(int64_t)index rowIndex:(int64_t)rowIndex
{
  selfCopy = self;
  v7 = sub_1011E2E68(index, rowIndex);

  return v7;
}

- (int64_t)rowCount
{
  v3 = sub_1005B981C(&unk_101A2C890, &qword_101471EB0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - v5;
  v7 = _s15CapsuleDatabaseVMa(0);
  __chkstk_darwin(v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLTableItemData(0);
  v10 = swift_dynamicCastClassUnconditional();
  v11 = qword_101AD9268;
  swift_beginAccess();
  (*(v4 + 16))(v6, v10 + v11, v3);
  selfCopy = self;
  Capsule.root.getter();
  (*(v4 + 8))(v6, v3);
  sub_1005B981C(&unk_101A2C7D0, &unk_1014D0DC0);
  v13 = CROrderedDictionary.count.getter();

  sub_1011F0B80(v9, _s15CapsuleDatabaseVMa);
  return v13;
}

- (int64_t)rowEndIndex
{
  selfCopy = self;
  v3 = sub_1011E3A8C();

  return v3;
}

- (double)rowHeightAt:(int64_t)at
{
  selfCopy = self;
  v6 = sub_1011E3F2C(at, v5);

  return v6;
}

- (int64_t)columnCount
{
  v3 = sub_1005B981C(&unk_101A2C890, &qword_101471EB0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - v5;
  v7 = _s15CapsuleDatabaseVMa(0);
  __chkstk_darwin(v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLTableItemData(0);
  v10 = swift_dynamicCastClassUnconditional();
  v11 = qword_101AD9268;
  swift_beginAccess();
  (*(v4 + 16))(v6, v10 + v11, v3);
  selfCopy = self;
  Capsule.root.getter();
  (*(v4 + 8))(v6, v3);
  sub_1005B981C(&unk_101A2D830, &qword_101472540);
  v13 = CROrderedDictionary.count.getter();

  sub_1011F0B80(v9, _s15CapsuleDatabaseVMa);
  return v13;
}

- (int64_t)columnEndIndex
{
  selfCopy = self;
  v3 = sub_1011E560C();

  return v3;
}

- (double)columnWidthAt:(int64_t)at
{
  selfCopy = self;
  v6 = sub_1011E5BDC(at, v5);

  return v6;
}

- (Class)repClass
{
  type metadata accessor for CRLTableRep();

  return swift_getObjCClassFromMetadata();
}

- (Class)layoutClass
{
  type metadata accessor for CRLTableLayout();

  return swift_getObjCClassFromMetadata();
}

- (Class)editorClass
{
  type metadata accessor for CRLTableEditor();

  return swift_getObjCClassFromMetadata();
}

+ (CGSize)defaultTableCellSize
{
  v2 = 320.0;
  v3 = 240.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (CGSize)defaultTableSize
{
  v2 = 640.0;
  v3 = 480.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC8Freeform12CRLTableItem)initWithStore:(id)store parentContainerUUID:(id)d geometry:(id)geometry
{
  v7 = type metadata accessor for UUID();
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  storeCopy = store;
  geometryCopy = geometry;
  v13 = sub_1011EEF84(storeCopy, v9, geometry, v12);

  return v13;
}

@end