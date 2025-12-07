@interface PKTileContextDetailsTableViewEntry
- (BOOL)isEqual:(id)equal;
- (PKTileContextDetailsTableViewEntry)init;
- (PKTileContextDetailsTableViewEntry)initWithTitle:(id)title actionURL:(id)l axID:(id)d;
- (PKTileContextDetailsTableViewEntry)initWithTitle:(id)title detail:(id)detail style:(int64_t)style axID:(id)d;
@end

@implementation PKTileContextDetailsTableViewEntry

- (PKTileContextDetailsTableViewEntry)initWithTitle:(id)title detail:(id)detail style:(int64_t)style axID:(id)d
{
  v9 = sub_1BE052434();
  v11 = v10;
  if (detail)
  {
    detail = sub_1BE052434();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_1BE052434();
  v16 = v15;
  sub_1BE04AFD4();
  v17 = (self + OBJC_IVAR___PKTileContextDetailsTableViewEntry_content);
  *v17 = v9;
  v17[1] = v11;
  v17[2] = detail;
  v17[3] = v13;
  v17[4] = style;
  type metadata accessor for TileContextDetailsTableViewEntry.Content(0);
  swift_storeEnumTagMultiPayload();
  v18 = (self + OBJC_IVAR___PKTileContextDetailsTableViewEntry_axID);
  *v18 = v14;
  v18[1] = v16;
  v20.receiver = self;
  v20.super_class = type metadata accessor for TileContextDetailsTableViewEntry(0);
  return [(PKTileContextDetailsTableViewEntry *)&v20 init];
}

- (PKTileContextDetailsTableViewEntry)initWithTitle:(id)title actionURL:(id)l axID:(id)d
{
  v6 = sub_1BE04AA64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE052434();
  v12 = v11;
  sub_1BE04A9F4();
  v13 = sub_1BE052434();
  v15 = v14;
  sub_1BE04AFD4();
  v16 = (self + OBJC_IVAR___PKTileContextDetailsTableViewEntry_content);
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD5AFB8, &unk_1BE10B580) + 48);
  *v16 = v10;
  v16[1] = v12;
  (*(v7 + 16))(v16 + v17, v9, v6);
  type metadata accessor for TileContextDetailsTableViewEntry.Content(0);
  swift_storeEnumTagMultiPayload();
  v18 = (self + OBJC_IVAR___PKTileContextDetailsTableViewEntry_axID);
  *v18 = v13;
  v18[1] = v15;
  v19 = type metadata accessor for TileContextDetailsTableViewEntry(0);
  v22.receiver = self;
  v22.super_class = v19;
  v20 = [(PKTileContextDetailsTableViewEntry *)&v22 init];
  (*(v7 + 8))(v9, v6);
  return v20;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1BD9D5594(v8);

  sub_1BD0DE53C(v8, &qword_1EBD3EC90, &unk_1BE0BC6B0);
  return v6 & 1;
}

- (PKTileContextDetailsTableViewEntry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end