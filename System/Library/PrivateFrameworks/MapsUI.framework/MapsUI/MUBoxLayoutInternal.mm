@interface MUBoxLayoutInternal
- (BOOL)horizontalAlignmentBoundsContent;
- (BOOL)verticalAlignmentBoundsContent;
- (MUBoxLayoutInternal)initWithContainer:(id)container;
- (MULayoutItem)container;
- (NSArray)arrangedLayoutItems;
- (NSDirectionalEdgeInsets)insets;
- (NSDirectionalEdgeInsets)paddingForArrangedLayoutItem:(id)item;
- (UIOffset)offsetForArrangedLayoutItem:(id)item;
- (float)horizontalAlignmentFittingSizePriority;
- (float)verticalAlignmentFittingSizePriority;
- (int64_t)horizontalAlignment;
- (int64_t)horizontalAlignmentForArrangedLayoutItem:(id)item;
- (int64_t)verticalAlignment;
- (int64_t)verticalAlignmentForArrangedLayoutItem:(id)item;
- (void)removeArrangedLayoutItem:(id)item;
- (void)setArrangedLayoutItems:(id)items;
- (void)setContainer:(id)container;
- (void)setHorizontalAlignment:(int64_t)alignment;
- (void)setHorizontalAlignmentBoundsContent:(BOOL)content;
- (void)setHorizontalAlignmentFittingSizePriority:(float)priority;
- (void)setInsets:(NSDirectionalEdgeInsets)insets;
- (void)setOffset:(UIOffset)offset forArrangedLayoutItem:(id)item;
- (void)setPadding:(NSDirectionalEdgeInsets)padding forArrangedLayoutItem:(id)item;
- (void)setVerticalAlignment:(int64_t)alignment;
- (void)setVerticalAlignmentBoundsContent:(BOOL)content;
- (void)setVerticalAlignmentFittingSizePriority:(float)priority;
@end

@implementation MUBoxLayoutInternal

- (MUBoxLayoutInternal)initWithContainer:(id)container
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E940, &qword_1C586A750);
  swift_unknownObjectRetain_n();
  sub_1C56236C4();
  v9[1] = MEMORY[0x1E69E7CC0];
  v4 = *MEMORY[0x1E69DC5C0];
  v5 = *(MEMORY[0x1E69DC5C0] + 16);
  v10 = vdupq_n_s64(0xC0000000uLL);
  v11 = v4;
  v12 = v5;
  *(&self->super.super.isa + OBJC_IVAR___MUBoxLayoutInternal_builder) = sub_1C562370C(v9);

  v7 = sub_1C562389C(v6, &off_1F44C6BC0);
  swift_unknownObjectRelease();
  return v7;
}

- (MULayoutItem)container
{
  selfCopy = self;
  sub_1C5623A68(v5);
  Strong = swift_unknownObjectWeakLoadStrong();

  sub_1C567D244(v5);

  return Strong;
}

- (void)setContainer:(id)container
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5623A68(v7);
  swift_unknownObjectWeakAssign();
  sub_1C567D378(v7, v6);
  sub_1C5623B40(v6, v5);
  swift_unknownObjectRelease();
  sub_1C567D244(v7);
}

- (int64_t)verticalAlignment
{
  selfCopy = self;
  sub_1C5623A68(v5);
  v3 = sub_1C57243F4();

  sub_1C567D244(v5);
  return v3;
}

- (void)setVerticalAlignment:(int64_t)alignment
{
  selfCopy = self;
  sub_1C5623A68(v7);
  sub_1C572440C(alignment);
  sub_1C567D378(v7, v6);
  sub_1C5623B40(v6, v5);
  sub_1C567D244(v7);
}

- (BOOL)verticalAlignmentBoundsContent
{
  selfCopy = self;
  sub_1C5623A68(v5);
  v3 = sub_1C5724830();

  sub_1C567D244(v5);
  return v3 & 1;
}

- (void)setVerticalAlignmentBoundsContent:(BOOL)content
{
  contentCopy = content;
  selfCopy = self;
  sub_1C5623A68(v7);
  sub_1C5724854(contentCopy);
  sub_1C567D378(v7, v6);
  sub_1C5623B40(v6, v5);
  sub_1C567D244(v7);
}

- (float)verticalAlignmentFittingSizePriority
{
  selfCopy = self;
  sub_1C5623A68(v5);
  v3 = sub_1C5724800();

  sub_1C567D244(v5);
  return v3;
}

- (void)setVerticalAlignmentFittingSizePriority:(float)priority
{
  selfCopy = self;
  sub_1C5623A68(v7);
  sub_1C57248B8(priority);
  sub_1C567D378(v7, v6);
  sub_1C5623B40(v6, v5);
  sub_1C567D244(v7);
}

- (int64_t)horizontalAlignment
{
  selfCopy = self;
  sub_1C5623A68(v5);
  v3 = sub_1C57243F4();

  sub_1C567D244(v5);
  return v3;
}

- (void)setHorizontalAlignment:(int64_t)alignment
{
  selfCopy = self;
  sub_1C5623A68(v7);
  sub_1C572440C(alignment);
  sub_1C567D378(v7, v6);
  sub_1C5623B40(v6, v5);
  sub_1C567D244(v7);
}

- (BOOL)horizontalAlignmentBoundsContent
{
  selfCopy = self;
  sub_1C5623A68(v5);
  v3 = sub_1C5724830();

  sub_1C567D244(v5);
  return v3 & 1;
}

- (void)setHorizontalAlignmentBoundsContent:(BOOL)content
{
  contentCopy = content;
  selfCopy = self;
  sub_1C5623A68(v7);
  sub_1C5724854(contentCopy);
  sub_1C567D378(v7, v6);
  sub_1C5623B40(v6, v5);
  sub_1C567D244(v7);
}

- (float)horizontalAlignmentFittingSizePriority
{
  selfCopy = self;
  sub_1C5623A68(v5);
  v3 = sub_1C5724800();

  sub_1C567D244(v5);
  return v3;
}

- (void)setHorizontalAlignmentFittingSizePriority:(float)priority
{
  selfCopy = self;
  sub_1C5623A68(v7);
  sub_1C57248B8(priority);
  sub_1C567D378(v7, v6);
  sub_1C5623B40(v6, v5);
  sub_1C567D244(v7);
}

- (NSDirectionalEdgeInsets)insets
{
  selfCopy = self;
  sub_1C5623A68(v11);

  v3 = *&v11[4];
  v4 = *&v11[5];
  v5 = *&v11[6];
  v6 = *&v11[7];
  sub_1C567D244(v11);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  result.trailing = v10;
  result.bottom = v9;
  result.leading = v8;
  result.top = v7;
  return result;
}

- (void)setInsets:(NSDirectionalEdgeInsets)insets
{
  trailing = insets.trailing;
  bottom = insets.bottom;
  leading = insets.leading;
  top = insets.top;
  selfCopy = self;
  sub_1C5623A68(v10);
  v11 = top;
  v12 = leading;
  v13 = bottom;
  v14 = trailing;
  sub_1C567D378(v10, v9);
  sub_1C5623B40(v9, v8);
  sub_1C567D244(v10);
}

- (NSArray)arrangedLayoutItems
{
  selfCopy = self;
  BoxLayout.arrangedLayoutItems.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DC50, &qword_1C586A8F0);
  v3 = sub_1C584F750();

  return v3;
}

- (void)setArrangedLayoutItems:(id)items
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DC50, &qword_1C586A8F0);
  v4 = sub_1C584F770();
  selfCopy = self;
  BoxLayout.arrangedLayoutItems.setter(v4);
}

- (void)removeArrangedLayoutItem:(id)item
{
  swift_unknownObjectRetain_n();
  selfCopy = self;
  sub_1C56236C4();
  v5 = (*((*MEMORY[0x1E69E7D40] & selfCopy->super.super.isa) + 0x98))(v10);
  v7 = v6;
  v8 = sub_1C56829E0(sub_1C5676CD0);
  v9 = *(*v7 + 16);
  if (v9 < v8)
  {
    __break(1u);
  }

  else
  {
    sub_1C56830B0(v8, v9);
    v5(v10, 0);
    swift_unknownObjectRelease();

    sub_1C56260B4(v11);
  }
}

- (NSDirectionalEdgeInsets)paddingForArrangedLayoutItem:(id)item
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = BoxLayout.padding(forArrangedLayoutItem:)(item, v6);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_unknownObjectRelease();

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.trailing = v17;
  result.bottom = v16;
  result.leading = v15;
  result.top = v14;
  return result;
}

- (void)setPadding:(NSDirectionalEdgeInsets)padding forArrangedLayoutItem:(id)item
{
  trailing = padding.trailing;
  bottom = padding.bottom;
  leading = padding.leading;
  top = padding.top;
  swift_unknownObjectRetain();
  selfCopy = self;
  BoxLayout.setPadding(_:forArrangedLayoutItem:)(item, selfCopy, top, leading, bottom, trailing);
  swift_unknownObjectRelease();
}

- (UIOffset)offsetForArrangedLayoutItem:(id)item
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = BoxLayout.offset(forArrangedLayoutItem:)(item, v6);
  v9 = v8;
  swift_unknownObjectRelease();

  v10 = v7;
  v11 = v9;
  result.vertical = v11;
  result.horizontal = v10;
  return result;
}

- (void)setOffset:(UIOffset)offset forArrangedLayoutItem:(id)item
{
  vertical = offset.vertical;
  horizontal = offset.horizontal;
  swift_unknownObjectRetain();
  selfCopy = self;
  BoxLayout.setOffset(_:forArrangedLayoutItem:)(item, selfCopy, horizontal, vertical);
  swift_unknownObjectRelease();
}

- (int64_t)verticalAlignmentForArrangedLayoutItem:(id)item
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v5 = sub_1C5681100(&v9);
  v6 = v9;
  if ((~v9 & 0xFFFFFFFE) == 0)
  {
    (*((*MEMORY[0x1E69E7D40] & selfCopy->super.super.isa) + 0xA0))(&v10, v5);
    v6 = v10;
  }

  v10 = v6;
  v7 = sub_1C57243F4();
  swift_unknownObjectRelease();

  return v7;
}

- (int64_t)horizontalAlignmentForArrangedLayoutItem:(id)item
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v5 = sub_1C5681B10(&v9);
  v6 = v9;
  if ((~v9 & 0xFFFFFFFE) == 0)
  {
    (*((*MEMORY[0x1E69E7D40] & selfCopy->super.super.isa) + 0x100))(&v10, v5);
    v6 = v10;
  }

  v10 = v6;
  v7 = sub_1C57243F4();
  swift_unknownObjectRelease();

  return v7;
}

@end