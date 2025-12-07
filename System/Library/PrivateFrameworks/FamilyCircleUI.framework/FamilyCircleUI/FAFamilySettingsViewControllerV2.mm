@interface FAFamilySettingsViewControllerV2
- (UINavigationItem)navigationItem;
- (UIViewController)_presenter;
- (_TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2)initWithAppleAccount:(id)account grandSlamSigner:(id)signer familyCircle:(id)circle pictureStore:(id)store accountManager:(id)manager peopleDiscoveryService:(id)service;
- (_TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2)initWithNibName:(id)name bundle:(id)bundle;
- (_TtP14FamilyCircleUI40FAFamilySettingsViewControllerV2Delegate_)delegate;
- (void)addFamilyMemberButtonWasTapped;
- (void)amsHookWasCalled;
- (void)dealloc;
- (void)didSelectSubscriptionWithURL:(NSURL *)l completion:(id)completion;
- (void)didSelectSubscriptionWithURLMemberDetails:(NSURL *)details familyMemberDSID:(NSString *)d serviceName:(int64_t)name completion:(id)completion;
- (void)didTapAddRemoteGuardianFor:(id)for;
- (void)handleDisclosureDismiss;
- (void)loadMemberDetailsWithMember:(FAFamilyMember *)member navigationController:(UINavigationController *)controller completionHandler:(id)handler;
- (void)set_presenter:(id)set_presenter;
- (void)stopFamilySharing;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation FAFamilySettingsViewControllerV2

- (_TtP14FamilyCircleUI40FAFamilySettingsViewControllerV2Delegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIViewController)_presenter
{
  v3 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2__presenter;
  swift_beginAccess();
  return *(self + v3);
}

- (void)set_presenter:(id)set_presenter
{
  v5 = OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2__presenter;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = set_presenter;
  set_presenterCopy = set_presenter;
}

- (_TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2)initWithAppleAccount:(id)account grandSlamSigner:(id)signer familyCircle:(id)circle pictureStore:(id)store accountManager:(id)manager peopleDiscoveryService:(id)service
{
  swift_getObjectType();
  accountCopy = account;
  signerCopy = signer;
  circleCopy = circle;
  storeCopy = store;
  managerCopy = manager;
  swift_unknownObjectRetain();

  return sub_21BBB475C(accountCopy, signerCopy, circleCopy, storeCopy, managerCopy, service, self);
}

- (UINavigationItem)navigationItem
{
  selfCopy = self;
  v3 = sub_21BBA76B4();

  return v3;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_21BBA77CC();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FAFamilySettingsViewControllerV2();
  v4 = v7.receiver;
  [(FAFamilySettingsViewControllerV2 *)&v7 viewWillAppear:appearCopy];
  sub_21BBABB40();
  navigationItem = [v4 navigationItem];
  v6 = sub_21BE289CC();
  [navigationItem setTitle_];
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_21BBAA56C(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  selfCopy = self;
  sub_21BBAB844(disappearCopy);
}

- (void)dealloc
{
  v3 = *(self + OBJC_IVAR____TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2_currentStateController);
  selfCopy = self;
  if (v3)
  {
    [v3 cancel];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for FAFamilySettingsViewControllerV2();
  [(FAFamilySettingsViewControllerV2 *)&v5 dealloc];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  windowCopy = window;
  selfCopy = self;
  sub_21BBACC24(window, disappear);
}

- (_TtC14FamilyCircleUI32FAFamilySettingsViewControllerV2)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didSelectSubscriptionWithURL:(NSURL *)l completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = l;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_21BE28DAC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_21BE32A50;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_21BE32A58;
  v14[5] = v13;
  lCopy = l;
  selfCopy = self;
  sub_21BDC4F90(0, 0, v9, &unk_21BE32A60, v14);
}

- (void)didSelectSubscriptionWithURLMemberDetails:(NSURL *)details familyMemberDSID:(NSString *)d serviceName:(int64_t)name completion:(id)completion
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  v15[2] = details;
  v15[3] = d;
  v15[4] = name;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_21BE28DAC();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_21BE32A30;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_21BE32A38;
  v18[5] = v17;
  detailsCopy = details;
  dCopy = d;
  selfCopy = self;
  sub_21BDC4F90(0, 0, v13, &unk_21BE32A40, v18);
}

- (void)stopFamilySharing
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_21BE28DAC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_21BE28D7C();
  selfCopy = self;
  v8 = sub_21BE28D6C();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = selfCopy;
  sub_21BBA932C(0, 0, v5, &unk_21BE32A20, v9);
}

- (void)addFamilyMemberButtonWasTapped
{
  selfCopy = self;
  FAFamilySettingsViewControllerV2.addFamilyMemberButtonWasTapped()();
}

- (void)loadMemberDetailsWithMember:(FAFamilyMember *)member navigationController:(UINavigationController *)controller completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = member;
  v13[3] = controller;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_21BE28DAC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_21BE32A08;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_21BE32A10;
  v16[5] = v15;
  memberCopy = member;
  controllerCopy = controller;
  selfCopy = self;
  sub_21BDC4F90(0, 0, v11, &unk_21BE391F0, v16);
}

- (void)didTapAddRemoteGuardianFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  _s14FamilyCircleUI32FAFamilySettingsViewControllerV2C23didTapAddRemoteGuardian3forySo0D6MemberC_tF_0();
}

- (void)amsHookWasCalled
{
  selfCopy = self;
  sub_21BBB26A4();
}

- (void)handleDisclosureDismiss
{
  selfCopy = self;
  sub_21BBB2898();
}

@end