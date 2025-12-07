@interface MUAspectRatioLayoutInternal
- (MUAspectRatioLayoutInternal)initWithItem:(id)item aspectRatio:(double)ratio;
- (MULayoutItem)item;
- (double)aspectRatio;
- (void)setAspectRatio:(double)ratio;
- (void)setItem:(id)item;
@end

@implementation MUAspectRatioLayoutInternal

- (MUAspectRatioLayoutInternal)initWithItem:(id)item aspectRatio:(double)ratio
{
  swift_unknownObjectRetain();
  [item _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1708A0, &unk_1C5878000);
  swift_unknownObjectRetain();
  sub_1C56236C4();
  *&v10[1] = ratio;
  *(&self->super.super.isa + OBJC_IVAR___MUAspectRatioLayoutInternal_builder) = sub_1C562370C(v10);

  v8 = sub_1C562389C(v7, &off_1F44C6BC0);
  swift_unknownObjectRelease();
  return v8;
}

- (MULayoutItem)item
{
  selfCopy = self;
  sub_1C5623A68(v5);
  Strong = swift_unknownObjectWeakLoadStrong();

  sub_1C5723500(v5);

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
  sub_1C5723648(v7, v6);
  sub_1C5623B40(v6, v5);
  swift_unknownObjectRelease();
  sub_1C5723500(v7);
}

- (double)aspectRatio
{
  selfCopy = self;
  sub_1C5623A68(v5);

  v3 = *&v5[1];
  sub_1C5723500(v5);
  return v3;
}

- (void)setAspectRatio:(double)ratio
{
  selfCopy = self;
  sub_1C5623A68(v7);
  ratioCopy = ratio;
  sub_1C5723648(v7, v6);
  sub_1C5623B40(v6, v5);
  sub_1C5723500(v7);
}

@end