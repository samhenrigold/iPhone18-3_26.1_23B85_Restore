@interface MUCompositionalStackLayoutInternal
- (MUCompositionalStackLayoutGroupInternal)group;
- (MUCompositionalStackLayoutInternal)initWithContainer:(id)container group:(id)group;
- (MULayoutItem)container;
- (void)setContainer:(id)container;
- (void)setGroup:(id)group;
@end

@implementation MUCompositionalStackLayoutInternal

- (MUCompositionalStackLayoutInternal)initWithContainer:(id)container group:(id)group
{
  ObjectType = swift_getObjectType();
  v7 = *((*MEMORY[0x1E69E7D40] & *group) + 0x58);
  swift_unknownObjectRetain();
  groupCopy = group;
  v7(v11);
  v9 = (*(ObjectType + 104))(container, v11);

  swift_deallocPartialClassInstance();
  return v9;
}

- (MULayoutItem)container
{
  selfCopy = self;
  sub_1C5623A68(v5);
  Strong = swift_unknownObjectWeakLoadStrong();

  sub_1C57796A8(v5);

  return Strong;
}

- (void)setContainer:(id)container
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5623A68(v7);
  swift_unknownObjectWeakAssign();
  sub_1C57796D8(v7, v6);
  sub_1C5623B40(v6, v5);
  sub_1C57796A8(v7);
  sub_1C5779578();
  swift_unknownObjectRelease();
}

- (MUCompositionalStackLayoutGroupInternal)group
{
  type metadata accessor for CompositionalStackLayout.GroupRef();
  v3 = *((*MEMORY[0x1E69E7D40] & self->super.super.isa) + 0x88);
  selfCopy = self;
  v3(v7);
  v5 = sub_1C575D800(v7);

  return v5;
}

- (void)setGroup:(id)group
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *group) + 0x58);
  groupCopy = group;
  selfCopy = self;
  v5(v8);
  (*((*v4 & selfCopy->super.super.isa) + 0x90))(v8);
}

@end