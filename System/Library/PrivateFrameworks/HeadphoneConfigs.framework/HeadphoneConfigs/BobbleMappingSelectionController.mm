@interface BobbleMappingSelectionController
- (_TtC16HeadphoneConfigs32BobbleMappingSelectionController)initWithCoder:(id)coder;
- (_TtC16HeadphoneConfigs32BobbleMappingSelectionController)initWithNibName:(id)name bundle:(id)bundle;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)listItemSelected:(id)selected;
@end

@implementation BobbleMappingSelectionController

- (_TtC16HeadphoneConfigs32BobbleMappingSelectionController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_25121179C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return BobbleMappingSelectionController.init(nibName:bundle:)(v5, v7, bundle);
}

- (_TtC16HeadphoneConfigs32BobbleMappingSelectionController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController_viewModel) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController_mapingUseCase) = 2;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC16HeadphoneConfigs32BobbleMappingSelectionController____lazy_storage___headGestureMappingSection) = 0;
  result = sub_251211C4C();
  __break(1u);
  return result;
}

- (id)specifiers
{
  selfCopy = self;
  v3 = BobbleMappingSelectionController.specifiers()();

  if (v3)
  {
    v4 = sub_25121186C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_251210E3C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251210E0C();
  viewCopy = view;
  selfCopy = self;
  v12 = BobbleMappingSelectionController.tableView(_:cellForRowAt:)(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)listItemSelected:(id)selected
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4230D8, &qword_251219A98);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  if (selected)
  {
    sub_251210E0C();
    v8 = sub_251210E3C();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_251210E3C();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  selfCopy = self;
  BobbleMappingSelectionController.listItemSelected(_:)(v7);

  sub_2511CCD34(v7, &qword_27F4230D8, &qword_251219A98);
}

@end