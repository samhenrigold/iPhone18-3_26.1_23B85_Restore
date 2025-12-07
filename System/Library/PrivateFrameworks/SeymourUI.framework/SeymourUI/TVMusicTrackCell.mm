@interface TVMusicTrackCell
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation TVMusicTrackCell

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for TVMusicTrackCell(0);
  v2 = v5.receiver;
  [(TVMusicTrackCell *)&v5 layoutSubviews];
  v3 = OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_floatingView;
  v4 = *&v2[OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_floatingView];
  [v2 bounds];
  [v4 setFrame_];
  [*&v2[v3] layoutIfNeeded];
}

- (void)prepareForReuse
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762550, &unk_20C1505A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TVMusicTrackCell(0);
  v11.receiver = self;
  v11.super_class = v6;
  selfCopy = self;
  [(TVFocusableCollectionViewCell *)&v11 prepareForReuse];
  v8 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(v5, selfCopy + v9);
  swift_endAccess();
}

@end