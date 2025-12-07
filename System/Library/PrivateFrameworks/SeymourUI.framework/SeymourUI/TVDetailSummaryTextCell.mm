@interface TVDetailSummaryTextCell
- (void)prepareForReuse;
@end

@implementation TVDetailSummaryTextCell

- (void)prepareForReuse
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550, &unk_20C1505A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TVDetailSummaryTextCell(0);
  v11.receiver = self;
  v11.super_class = v6;
  selfCopy = self;
  [(TVFocusableCollectionViewCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI23TVDetailSummaryTextCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v5, selfCopy + v9);
  swift_endAccess();
}

@end