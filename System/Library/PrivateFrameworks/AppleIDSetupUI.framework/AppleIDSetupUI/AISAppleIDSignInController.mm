@interface AISAppleIDSignInController
- (AISAppleIDSignInController)init;
- (AISAppleIDSignInController)initWithConfiguration:(id)configuration;
- (AISAppleIDSignInControllerDelegate)delegate;
- (UIViewController)hostingViewController;
- (void)presentWithViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)setHostingViewController:(id)controller;
@end

@implementation AISAppleIDSignInController

- (AISAppleIDSignInControllerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIViewController)hostingViewController
{
  selfCopy = self;
  v3 = sub_2409EC9B0();

  return v3;
}

- (void)setHostingViewController:(id)controller
{
  v4 = *(self + OBJC_IVAR___AISAppleIDSignInController____lazy_storage___hostingViewController);
  *(self + OBJC_IVAR___AISAppleIDSignInController____lazy_storage___hostingViewController) = controller;
  controllerCopy = controller;
}

- (AISAppleIDSignInController)initWithConfiguration:(id)configuration
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___AISAppleIDSignInController____lazy_storage___hostingViewController) = 0;
  *(self + OBJC_IVAR___AISAppleIDSignInController_configuration) = configuration;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AISAppleIDSignInController();
  configurationCopy = configuration;
  return [(AISAppleIDSignInController *)&v7 init];
}

- (void)presentWithViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v8 = _Block_copy(completion);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v10 = sub_2409ED474;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  controllerCopy = controller;
  selfCopy = self;
  v13 = sub_2409EC9B0();
  if (v8)
  {
    v14[4] = v10;
    v14[5] = v9;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_2409EC704;
    v14[3] = &block_descriptor_8_0;
    v8 = _Block_copy(v14);
  }

  [controllerCopy presentViewController:v13 animated:animatedCopy completion:v8];

  sub_24090C1A0(v10, v9);
  _Block_release(v8);
}

- (AISAppleIDSignInController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end