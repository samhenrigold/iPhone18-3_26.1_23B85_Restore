@interface HearingFlowNavigationController
- (_TtC21HearingModeSettingsUI31HearingFlowNavigationController)initWithCoder:(id)coder;
- (_TtC21HearingModeSettingsUI31HearingFlowNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC21HearingModeSettingsUI31HearingFlowNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC21HearingModeSettingsUI31HearingFlowNavigationController)initWithRootViewController:(id)controller;
- (_TtP21HearingModeSettingsUI25HearingFlowControllerType_)flowController;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)setFlowController:(id)controller;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willShowViewController:(id)controller animated:(BOOL)animated;
@end

@implementation HearingFlowNavigationController

- (_TtP21HearingModeSettingsUI25HearingFlowControllerType_)flowController
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setFlowController:(id)controller
{
  v5 = OBJC_IVAR____TtC21HearingModeSettingsUI31HearingFlowNavigationController_flowController;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = controller;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (_TtC21HearingModeSettingsUI31HearingFlowNavigationController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC21HearingModeSettingsUI31HearingFlowNavigationController_flowController) = 0;
  result = sub_252004B10();
  __break(1u);
  return result;
}

- (void)willShowViewController:(id)controller animated:(BOOL)animated
{
  if (controller)
  {
    v6 = swift_dynamicCastObjCProtocolConditional();
    if (v6)
    {
      v7 = v6;
      v8 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.isa) + 0x58);
      selfCopy = self;
      controllerCopy = controller;
      [v7 setFlowController_];

      swift_unknownObjectRelease();
    }
  }
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  selfCopy = self;
  sub_251FE90EC(controller);
  v17 = &unk_286450CA0;
  v9 = swift_dynamicCastObjCProtocolConditional();
  if (v9)
  {
    v11 = v9;
    v12 = *((*MEMORY[0x277D85000] & selfCopy->super.super.super.super.super.isa) + 0x58);
    controllerCopy = controllerCopy;
    [v11 setFlowController_];

    v13 = swift_unknownObjectRelease();
    v15.receiver = selfCopy;
    v15.super_class = type metadata accessor for HearingFlowNavigationController(v13, v14);
    [(HearingFlowNavigationController *)&v15 pushViewController:controllerCopy animated:animatedCopy];
  }

  else
  {
    v16.receiver = selfCopy;
    v16.super_class = type metadata accessor for HearingFlowNavigationController(0, v10);
    [(HearingFlowNavigationController *)&v16 pushViewController:controllerCopy animated:animatedCopy];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for HearingFlowNavigationController(self, a2);
  v4 = v6.receiver;
  [(HearingFlowNavigationController *)&v6 viewWillDisappear:disappearCopy];
  sub_252003D90();
  v5 = sub_252003D70();
  sub_252003D60();
}

- (_TtC21HearingModeSettingsUI31HearingFlowNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC21HearingModeSettingsUI31HearingFlowNavigationController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC21HearingModeSettingsUI31HearingFlowNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end