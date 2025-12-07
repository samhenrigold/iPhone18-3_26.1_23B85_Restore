@interface PXRetailExperienceInterface
+ (id)createRetailExperienceViewController:(id)controller;
- (_TtC12PhotosUICore27PXRetailExperienceInterface)init;
@end

@implementation PXRetailExperienceInterface

+ (id)createRetailExperienceViewController:(id)controller
{
  v3 = _Block_copy(controller);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = sub_1A4774934(sub_1A3F3D4CC, v4);

  return v5;
}

- (_TtC12PhotosUICore27PXRetailExperienceInterface)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PXRetailExperienceInterface();
  return [(PXRetailExperienceInterface *)&v3 init];
}

@end