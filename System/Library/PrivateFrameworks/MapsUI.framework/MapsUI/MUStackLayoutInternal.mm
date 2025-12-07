@interface MUStackLayoutInternal
- (BOOL)alignmentBoundsContent;
- (BOOL)alignmentBoundsContentForArrangedLayoutItem:(id)item;
- (BOOL)distributionBoundsContent;
- (BOOL)hasAlignmentForArrangedLayoutItem:(id)item;
- (MULayoutItem)container;
- (NSArray)arrangedLayoutItems;
- (NSDirectionalEdgeInsets)insets;
- (NSDirectionalEdgeInsets)paddingForArrangedLayoutItem:(id)item;
- (UIOffset)offsetForArrangedLayoutItem:(id)item;
- (double)spacing;
- (float)alignmentFittingSizePriority;
- (float)alignmentFittingSizePriorityForArrangedLayoutItem:(id)item;
- (float)distributionFittingSizePriority;
- (int64_t)alignment;
- (int64_t)alignmentForArrangedLayoutItem:(id)item;
- (int64_t)axis;
- (int64_t)distribution;
- (void)removeArrangedLayoutItem:(id)item;
- (void)setAlignment:(int64_t)alignment;
- (void)setAlignment:(int64_t)alignment forArrangedLayoutItem:(id)item;
- (void)setAlignmentBoundsContent:(BOOL)content;
- (void)setAlignmentBoundsContent:(BOOL)content forArrangedLayoutItem:(id)item;
- (void)setAlignmentFittingSizePriority:(float)priority;
- (void)setAlignmentFittingSizePriority:(float)priority forArrangedLayoutItem:(id)item;
- (void)setArrangedLayoutItems:(id)items;
- (void)setAxis:(int64_t)axis;
- (void)setContainer:(id)container;
- (void)setDistribution:(int64_t)distribution;
- (void)setDistributionBoundsContent:(BOOL)content;
- (void)setDistributionFittingSizePriority:(float)priority;
- (void)setInsets:(NSDirectionalEdgeInsets)insets;
- (void)setOffset:(UIOffset)offset forArrangedLayoutItem:(id)item;
- (void)setPadding:(NSDirectionalEdgeInsets)padding forArrangedLayoutItem:(id)item;
- (void)setSpacing:(double)spacing;
@end

@implementation MUStackLayoutInternal

- (MULayoutItem)container
{
  selfCopy = self;
  sub_1C5623A68(v5);
  Strong = swift_unknownObjectWeakLoadStrong();

  sub_1C5672E58(v5);

  return Strong;
}

- (void)setContainer:(id)container
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5623A68(v7);
  swift_unknownObjectWeakAssign();
  sub_1C5672E88(v7, v6);
  sub_1C5623B40(v6, v5);
  sub_1C5672E58(v7);
  sub_1C5672D28();
  swift_unknownObjectRelease();
}

- (int64_t)axis
{
  selfCopy = self;
  sub_1C5623A68(v5);

  v3 = v5[1];
  sub_1C5672E58(v5);
  return v3;
}

- (void)setAxis:(int64_t)axis
{
  selfCopy = self;
  sub_1C5623A68(v7);
  axisCopy = axis;
  sub_1C5672E88(v7, v6);
  sub_1C5623B40(v6, v5);
  sub_1C5672E58(v7);
}

- (int64_t)distribution
{
  selfCopy = self;
  sub_1C5623A68(v5);
  v3 = sub_1C5724078();

  sub_1C5672E58(v5);
  return v3;
}

- (void)setDistribution:(int64_t)distribution
{
  selfCopy = self;
  sub_1C5623A68(v7);
  sub_1C57240E4(distribution);
  sub_1C5672E88(v7, v6);
  sub_1C5623B40(v6, v5);
  sub_1C5672E58(v7);
}

- (BOOL)distributionBoundsContent
{
  selfCopy = self;
  sub_1C5623A68(v5);
  v3 = sub_1C572470C();

  sub_1C5672E58(v5);
  return v3 & 1;
}

- (void)setDistributionBoundsContent:(BOOL)content
{
  contentCopy = content;
  selfCopy = self;
  sub_1C5623A68(v7);
  sub_1C5724738(contentCopy);
  sub_1C5672E88(v7, v6);
  sub_1C5623B40(v6, v5);
  sub_1C5672E58(v7);
}

- (float)distributionFittingSizePriority
{
  selfCopy = self;
  sub_1C5623A68(v5);
  v3 = sub_1C57246C0();

  sub_1C5672E58(v5);
  return v3;
}

- (void)setDistributionFittingSizePriority:(float)priority
{
  selfCopy = self;
  sub_1C5623A68(v7);
  sub_1C5724750(priority);
  sub_1C5672E88(v7, v6);
  sub_1C5623B40(v6, v5);
  sub_1C5672E58(v7);
}

- (int64_t)alignment
{
  selfCopy = self;
  sub_1C5623A68(v5);
  v3 = sub_1C57243F4();

  sub_1C5672E58(v5);
  return v3;
}

- (void)setAlignment:(int64_t)alignment
{
  selfCopy = self;
  sub_1C5623A68(v7);
  sub_1C572440C(alignment);
  sub_1C5672E88(v7, v6);
  sub_1C5623B40(v6, v5);
  sub_1C5672E58(v7);
}

- (BOOL)alignmentBoundsContent
{
  selfCopy = self;
  sub_1C5623A68(v5);
  v3 = sub_1C5724830();

  sub_1C5672E58(v5);
  return v3 & 1;
}

- (void)setAlignmentBoundsContent:(BOOL)content
{
  contentCopy = content;
  selfCopy = self;
  sub_1C5623A68(v7);
  sub_1C5724854(contentCopy);
  sub_1C5672E88(v7, v6);
  sub_1C5623B40(v6, v5);
  sub_1C5672E58(v7);
}

- (float)alignmentFittingSizePriority
{
  selfCopy = self;
  sub_1C5623A68(v5);
  v3 = sub_1C5724800();

  sub_1C5672E58(v5);
  return v3;
}

- (void)setAlignmentFittingSizePriority:(float)priority
{
  selfCopy = self;
  sub_1C5623A68(v7);
  sub_1C57248B8(priority);
  sub_1C5672E88(v7, v6);
  sub_1C5623B40(v6, v5);
  sub_1C5672E58(v7);
}

- (double)spacing
{
  selfCopy = self;
  sub_1C5623A68(v5);

  v3 = *&v5[5];
  sub_1C5672E58(v5);
  return v3;
}

- (void)setSpacing:(double)spacing
{
  selfCopy = self;
  sub_1C5623A68(v7);
  spacingCopy = spacing;
  sub_1C5672E88(v7, v6);
  sub_1C5623B40(v6, v5);
  sub_1C5672E58(v7);
}

- (NSDirectionalEdgeInsets)insets
{
  selfCopy = self;
  sub_1C5623A68(v11);

  v3 = *&v11[6];
  v4 = *&v11[7];
  v5 = *&v11[8];
  v6 = *&v11[9];
  sub_1C5672E58(v11);
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
  sub_1C5672E88(v10, v9);
  sub_1C5623B40(v9, v8);
  sub_1C5672E58(v10);
}

- (NSArray)arrangedLayoutItems
{
  selfCopy = self;
  StackLayout.arrangedLayoutItems.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DC50, &qword_1C586A8F0);
  v3 = sub_1C584F750();

  return v3;
}

- (void)setArrangedLayoutItems:(id)items
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DC50, &qword_1C586A8F0);
  v4 = sub_1C584F770();
  selfCopy = self;
  StackLayout.arrangedLayoutItems.setter(v4);
}

- (void)removeArrangedLayoutItem:(id)item
{
  swift_unknownObjectRetain_n();
  selfCopy = self;
  sub_1C56236C4();
  v5 = (*((*MEMORY[0x1E69E7D40] & selfCopy->super.super.isa) + 0xB0))(v10);
  v7 = v6;
  v8 = sub_1C5675D78(sub_1C5676CD0);
  v9 = *(*v7 + 16);
  if (v9 < v8)
  {
    __break(1u);
  }

  else
  {
    sub_1C5676238(v8, v9);
    v5(v10, 0);
    swift_unknownObjectRelease();

    sub_1C56260B4(v11);
  }
}

- (NSDirectionalEdgeInsets)paddingForArrangedLayoutItem:(id)item
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = StackLayout.padding(forArrangedLayoutItem:)(item, v6);
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
  StackLayout.setPadding(_:forArrangedLayoutItem:)(item, selfCopy, top, leading, bottom, trailing);
  swift_unknownObjectRelease();
}

- (UIOffset)offsetForArrangedLayoutItem:(id)item
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = StackLayout.offset(forArrangedLayoutItem:)(item, v6);
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
  StackLayout.setOffset(_:forArrangedLayoutItem:)(item, selfCopy, horizontal, vertical);
  swift_unknownObjectRelease();
}

- (BOOL)hasAlignmentForArrangedLayoutItem:(id)item
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5674C30(&v6);
  swift_unknownObjectRelease();

  return (~v6 & 0xFFFFFFFE) != 0;
}

- (int64_t)alignmentForArrangedLayoutItem:(id)item
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v5 = sub_1C5674C30(&v9);
  v6 = v9;
  if ((~v9 & 0xFFFFFFFE) == 0)
  {
    (*((*MEMORY[0x1E69E7D40] & selfCopy->super.super.isa) + 0x118))(&v10, v5);
    v6 = v10;
  }

  v10 = v6;
  v7 = sub_1C57243F4();
  swift_unknownObjectRelease();

  return v7;
}

- (void)setAlignment:(int64_t)alignment forArrangedLayoutItem:(id)item
{
  swift_unknownObjectRetain();
  selfCopy = self;
  StackLayout.setAlignmentKind(_:forArrangedLayoutItem:)(alignment, item);
  swift_unknownObjectRelease();
}

- (BOOL)alignmentBoundsContentForArrangedLayoutItem:(id)item
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5674C30(&v7);
  if ((~v7 & 0xFFFFFFFE) != 0)
  {
    v5 = sub_1C5724830();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    v5 = 0;
  }

  return v5 & 1;
}

- (void)setAlignmentBoundsContent:(BOOL)content forArrangedLayoutItem:(id)item
{
  swift_unknownObjectRetain();
  selfCopy = self;
  StackLayout.setAlignmentBoundsContent(_:forArrangedLayoutItem:)(content, item);
  swift_unknownObjectRelease();
}

- (float)alignmentFittingSizePriorityForArrangedLayoutItem:(id)item
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5674C30(&v7);
  if ((~v7 & 0xFFFFFFFE) != 0)
  {
    v6 = sub_1C5724800();
    swift_unknownObjectRelease();

    return v6;
  }

  else
  {
    swift_unknownObjectRelease();

    return 0.0;
  }
}

- (void)setAlignmentFittingSizePriority:(float)priority forArrangedLayoutItem:(id)item
{
  swift_unknownObjectRetain();
  selfCopy = self;
  StackLayout.setAlignmentFittingSizePriority(_:forArrangedLayoutItem:)(item, selfCopy, priority);
  swift_unknownObjectRelease();
}

@end