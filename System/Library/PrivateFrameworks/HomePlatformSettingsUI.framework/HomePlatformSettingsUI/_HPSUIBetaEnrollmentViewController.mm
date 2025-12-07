@interface _HPSUIBetaEnrollmentViewController
+ (BOOL)isMultiSeedingEnrollmentEnabled;
+ (void)shouldShowBetaEnrollmentButtonForHomeID:(id)d homeKitIdentifiers:(id)identifiers withCompletion:(id)completion;
+ (void)shouldShowBetaEnrollmentButtonForHomeID:(id)d withCompletion:(id)completion;
- (_HPSUIBetaEnrollmentViewController)init;
- (_HPSUIBetaEnrollmentViewController)initWithHomeID:(id)d;
- (_HPSUIBetaEnrollmentViewController)initWithHomeID:(id)d homeKitIdentifiers:(id)identifiers;
- (void)didFinishEnrollment;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willMoveToParentViewController:(id)controller;
@end

@implementation _HPSUIBetaEnrollmentViewController

- (_HPSUIBetaEnrollmentViewController)initWithHomeID:(id)d
{
  v3 = sub_2542AD50C();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2542AD4FC();
  return BetaEnrollmentViewController.init(withHomeID:)(v5);
}

- (_HPSUIBetaEnrollmentViewController)initWithHomeID:(id)d homeKitIdentifiers:(id)identifiers
{
  v4 = sub_2542AD50C();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2542AD4FC();
  sub_2542A3C68(&qword_27F5DD6D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v7 = sub_2542AD84C();
  return BetaEnrollmentViewController.init(withHomeID:homeKitIdentifiers:)(v6, v7);
}

- (void)willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  BetaEnrollmentViewController.willMove(toParent:)(controller);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  [(_HPSUIBetaEnrollmentViewController *)&v9 viewWillAppear:appearCopy];
  navigationController = [v4 navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    navigationBar = [navigationController navigationBar];

    standardAppearance = [navigationBar standardAppearance];
    [navigationBar setScrollEdgeAppearance_];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(_HPSUIBetaEnrollmentViewController *)&v8 viewWillDisappear:disappearCopy];
  navigationController = [v4 navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    navigationBar = [navigationController navigationBar];

    [navigationBar setScrollEdgeAppearance_];
  }
}

- (_HPSUIBetaEnrollmentViewController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (void)shouldShowBetaEnrollmentButtonForHomeID:(id)d withCompletion:(id)completion
{
  v5 = sub_2542AD50C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _Block_copy(completion);
  sub_2542AD4FC();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  static BetaEnrollmentViewController.shouldShowBetaEnrollmentButton(forHomeID:withCompletion:)(ObjCClassMetadata, sub_2542AD414, v10);

  (*(v6 + 8))(v8, v5);
}

+ (void)shouldShowBetaEnrollmentButtonForHomeID:(id)d homeKitIdentifiers:(id)identifiers withCompletion:(id)completion
{
  v6 = sub_2542AD50C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(completion);
  sub_2542AD4FC();
  sub_2542A3C68(&qword_27F5DD6D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2542AD84C();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  static BetaEnrollmentViewController.shouldShowBetaEnrollmentButton(forHomeID:homeKitIdentifiers:withCompletion:)(ObjCClassMetadata, v13, sub_2542AD230, v11);

  (*(v7 + 8))(v9, v6);
}

+ (BOOL)isMultiSeedingEnrollmentEnabled
{
  v4[3] = &type metadata for Feature;
  v4[4] = sub_2542ACCB8();
  v2 = sub_2542AD51C();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2 & 1;
}

- (void)didFinishEnrollment
{
  selfCopy = self;
  BetaEnrollmentViewController.didFinishEnrollment()();
}

@end