@interface MUEdgeLayoutInternal
- (MUEdgeLayoutInternal)initWithItem:(id)item container:(id)container insets:(NSDirectionalEdgeInsets)insets edges:(unint64_t)edges priority:(float)priority;
- (MULayoutItem)container;
- (MULayoutItem)item;
- (NSDirectionalEdgeInsets)insets;
- (float)priority;
- (unint64_t)edges;
- (void)setContainer:(id)container;
- (void)setEdges:(unint64_t)edges;
- (void)setInsets:(NSDirectionalEdgeInsets)insets;
- (void)setItem:(id)item;
- (void)setPriority:(float)priority;
@end

@implementation MUEdgeLayoutInternal

- (MUEdgeLayoutInternal)initWithItem:(id)item container:(id)container insets:(NSDirectionalEdgeInsets)insets edges:(unint64_t)edges priority:(float)priority
{
  trailing = insets.trailing;
  bottom = insets.bottom;
  leading = insets.leading;
  top = insets.top;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v15 = sub_1C56233C8(item, container, edges, top, leading, bottom, trailing, priority);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v15;
}

- (MULayoutItem)item
{
  selfCopy = self;
  sub_1C5623A68(v5);
  Strong = swift_unknownObjectWeakLoadStrong();

  sub_1C5623F2C(v5);

  return Strong;
}

- (void)setItem:(id)item
{
  selfCopy = self;
  if (item)
  {
    [swift_unknownObjectRetain() _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
  }

  sub_1C5623A68(v7);
  swift_unknownObjectWeakAssign();
  sub_1C5623B08(v7, v6);
  sub_1C5623B40(v6, v5);
  swift_unknownObjectRelease();
  sub_1C5623F2C(v7);
}

- (MULayoutItem)container
{
  selfCopy = self;
  sub_1C5623A68(v5);
  Strong = swift_unknownObjectWeakLoadStrong();

  sub_1C5623F2C(v5);

  return Strong;
}

- (void)setContainer:(id)container
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5623A68(v7);
  swift_unknownObjectWeakAssign();
  sub_1C5623B08(v7, v6);
  sub_1C5623B40(v6, v5);
  swift_unknownObjectRelease();
  sub_1C5623F2C(v7);
}

- (NSDirectionalEdgeInsets)insets
{
  selfCopy = self;
  sub_1C5623A68(v11);

  v3 = *&v11[2];
  v4 = *&v11[3];
  v5 = *&v11[4];
  v6 = *&v11[5];
  sub_1C5623F2C(v11);
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
  sub_1C5623B08(v10, v9);
  sub_1C5623B40(v9, v8);
  sub_1C5623F2C(v10);
}

- (unint64_t)edges
{
  selfCopy = self;
  sub_1C5623A68(v5);

  v3 = v5[6];
  sub_1C5623F2C(v5);
  return v3;
}

- (void)setEdges:(unint64_t)edges
{
  selfCopy = self;
  sub_1C5623A68(v7);
  edgesCopy = edges;
  sub_1C5623B08(v7, v6);
  sub_1C5623B40(v6, v5);
  sub_1C5623F2C(v7);
}

- (float)priority
{
  selfCopy = self;
  sub_1C5623A68(v5);

  v3 = *&v5[14];
  sub_1C5623F2C(v5);
  return v3;
}

- (void)setPriority:(float)priority
{
  selfCopy = self;
  sub_1C5623A68(v7);
  priorityCopy = priority;
  sub_1C5623B08(v7, v6);
  sub_1C5623B40(v6, v5);
  sub_1C5623F2C(v7);
}

@end