@interface MarketingDynamicViewController
- (_TtC16FitnessMarketing30MarketingDynamicViewController)initWithBag:(id)bag URL:(id)l;
- (_TtC16FitnessMarketing30MarketingDynamicViewController)initWithBag:(id)bag bagValue:(id)value;
- (_TtC16FitnessMarketing30MarketingDynamicViewController)initWithBag:(id)bag javaScriptBagValue:(id)value;
- (_TtC16FitnessMarketing30MarketingDynamicViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation MarketingDynamicViewController

- (_TtC16FitnessMarketing30MarketingDynamicViewController)initWithBag:(id)bag URL:(id)l
{
  v4 = sub_20C64CF10();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C64CEF0();
  v7 = swift_unknownObjectRetain();
  return MarketingDynamicViewController.init(bag:url:)(v7, v6);
}

- (void)willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  MarketingDynamicViewController.willMove(toParent:)(controller);
}

- (_TtC16FitnessMarketing30MarketingDynamicViewController)initWithBag:(id)bag bagValue:(id)value
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16FitnessMarketing30MarketingDynamicViewController)initWithBag:(id)bag javaScriptBagValue:(id)value
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC16FitnessMarketing30MarketingDynamicViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end