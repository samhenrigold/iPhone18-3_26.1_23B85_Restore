@interface DSFolderCustomizationNavigationController
- (_TtC17DesktopServicesUI41DSFolderCustomizationNavigationController)initWithCoder:(id)coder;
- (_TtC17DesktopServicesUI41DSFolderCustomizationNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC17DesktopServicesUI41DSFolderCustomizationNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC17DesktopServicesUI41DSFolderCustomizationNavigationController)initWithRootViewController:(id)controller;
- (id)popToRootViewControllerAnimated:(BOOL)animated;
- (id)popToViewController:(id)controller animated:(BOOL)animated;
- (id)popViewControllerAnimated:(BOOL)animated;
- (void)prepareForPopoverPresentation:(id)presentation;
- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
@end

@implementation DSFolderCustomizationNavigationController

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DSFolderCustomizationNavigationController();
  controllerCopy = controller;
  v7 = v8.receiver;
  [(DSFolderCustomizationNavigationController *)&v8 pushViewController:controllerCopy animated:animatedCopy];
  [v7 setNavigationBarHidden:0 animated:{animatedCopy, v8.receiver, v8.super_class}];
}

- (id)popViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DSFolderCustomizationNavigationController();
  v4 = v7.receiver;
  v5 = [(DSFolderCustomizationNavigationController *)&v7 popViewControllerAnimated:animatedCopy];
  sub_248842AF4(v4, animatedCopy);

  return v5;
}

- (id)popToViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v13.receiver = self;
  v13.super_class = type metadata accessor for DSFolderCustomizationNavigationController();
  controllerCopy = controller;
  v7 = v13.receiver;
  v8 = [(DSFolderCustomizationNavigationController *)&v13 popToViewController:controllerCopy animated:animatedCopy];
  if (v8)
  {
    v9 = v8;
    sub_248853D5C(0, &qword_27EEB11F0, 0x277D75D28);
    v10 = sub_2488A584C();
  }

  else
  {
    v10 = 0;
  }

  sub_248842D50(controllerCopy, v7, animatedCopy);

  if (v10)
  {
    sub_248853D5C(0, &qword_27EEB11F0, 0x277D75D28);
    v11 = sub_2488A583C();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)popToRootViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v10.receiver = self;
  v10.super_class = type metadata accessor for DSFolderCustomizationNavigationController();
  v4 = v10.receiver;
  v5 = [(DSFolderCustomizationNavigationController *)&v10 popToRootViewControllerAnimated:animatedCopy];
  if (v5)
  {
    v6 = v5;
    sub_248853D5C(0, &qword_27EEB11F0, 0x277D75D28);
    v7 = sub_2488A584C();
  }

  else
  {
    v7 = 0;
  }

  [v4 setNavigationBarHidden:v4[OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover] animated:{animatedCopy, v10.receiver, v10.super_class}];

  if (v7)
  {
    sub_248853D5C(0, &qword_27EEB11F0, 0x277D75D28);
    v8 = sub_2488A583C();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator
{
  if (style != 7)
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover) = 0;
    selfCopy = self;
    if (sub_24884261C())
    {
      [(DSFolderCustomizationNavigationController *)selfCopy setNavigationBarHidden:0 animated:0];
    }
  }
}

- (void)prepareForPopoverPresentation:(id)presentation
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover) = 1;
  selfCopy = self;
  if (sub_24884261C())
  {
    [(DSFolderCustomizationNavigationController *)selfCopy setNavigationBarHidden:1 animated:0];
  }
}

- (_TtC17DesktopServicesUI41DSFolderCustomizationNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DSFolderCustomizationNavigationController();
  return [(DSFolderCustomizationNavigationController *)&v7 initWithNavigationBarClass:class toolbarClass:toolbarClass];
}

- (_TtC17DesktopServicesUI41DSFolderCustomizationNavigationController)initWithRootViewController:(id)controller
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DSFolderCustomizationNavigationController();
  return [(DSFolderCustomizationNavigationController *)&v5 initWithRootViewController:controller];
}

- (_TtC17DesktopServicesUI41DSFolderCustomizationNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_2488A56DC();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover) = 0;
    bundleCopy = bundle;
    v7 = sub_2488A56CC();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for DSFolderCustomizationNavigationController();
  v9 = [(DSFolderCustomizationNavigationController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC17DesktopServicesUI41DSFolderCustomizationNavigationController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC17DesktopServicesUI41DSFolderCustomizationNavigationController_isPresentedAsPopover) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DSFolderCustomizationNavigationController();
  coderCopy = coder;
  v5 = [(DSFolderCustomizationNavigationController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end