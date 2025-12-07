@interface MUConstraintLayoutInternal
- (MUConstraintLayoutInternal)init;
- (NSArray)layoutConstraints;
- (NSArray)layoutGuides;
- (UIView)viewForForwardingSetNeedsUpdateConstraints;
- (int64_t)mode;
- (void)setMode:(uint64_t)mode;
- (void)setViewForForwardingSetNeedsUpdateConstraints:(id)constraints;
@end

@implementation MUConstraintLayoutInternal

- (void)setMode:(uint64_t)mode
{
  v5 = *&self[OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder + 8];
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 32);
  selfCopy = self;
  v7(mode, ObjectType, v5);
}

- (NSArray)layoutConstraints
{
  v3 = *&self->layoutBuilder[OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 8);
  selfCopy = self;
  v5(ObjectType, v3);

  sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
  v7 = sub_1C584F750();

  return v7;
}

- (NSArray)layoutGuides
{
  v3 = *&self->layoutBuilder[OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 16);
  selfCopy = self;
  v5(ObjectType, v3);

  sub_1C5626E40(0, &unk_1ED77E840, 0x1E69DCC20);
  v7 = sub_1C584F750();

  return v7;
}

- (int64_t)mode
{
  v3 = *&self->layoutBuilder[OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 24);
  selfCopy = self;
  v7 = v5(ObjectType, v3);

  return v7;
}

- (UIView)viewForForwardingSetNeedsUpdateConstraints
{
  v3 = *&self->layoutBuilder[OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder];
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 48);
  selfCopy = self;
  v7 = v5(ObjectType, v3);

  return v7;
}

- (void)setViewForForwardingSetNeedsUpdateConstraints:(id)constraints
{
  v5 = *&self->layoutBuilder[OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder];
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 56);
  constraintsCopy = constraints;
  selfCopy = self;
  v7(constraints, ObjectType, v5);
}

- (MUConstraintLayoutInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end