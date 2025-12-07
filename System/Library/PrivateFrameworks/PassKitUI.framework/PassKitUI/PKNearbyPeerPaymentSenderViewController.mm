@interface PKNearbyPeerPaymentSenderViewController
- (PKNearbyPeerPaymentSenderViewController)initWithContext:(int64_t)context screenEdgeSwipeAction:(id)action dismissAction:(id)dismissAction;
- (PKNearbyPeerPaymentSenderViewController)initWithUserInfo:(id)info screenEdgeSwipeAction:(id)action dismissAction:(id)dismissAction;
- (void)applicationDidBecomeActive;
- (void)debugViewTapped;
- (void)invalidate;
- (void)peerPaymentIdentityManager:(id)manager didUpdateProfileAppearanceData:(id)data;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PKNearbyPeerPaymentSenderViewController

- (PKNearbyPeerPaymentSenderViewController)initWithUserInfo:(id)info screenEdgeSwipeAction:(id)action dismissAction:(id)dismissAction
{
  v6 = _Block_copy(action);
  v7 = _Block_copy(dismissAction);
  v8 = sub_1BE052244();
  v9 = swift_allocObject();
  v9[2] = v6;
  v10 = swift_allocObject();
  v10[2] = v7;
  v11 = sub_1BD9BD508(v8, sub_1BD166E88, v9, sub_1BD267094, v10);
  v9, v12, v13, v14, v15, v16, v17, v18;
  v10, v19, v20, v21, v22, v23, v24, v25;
  return v11;
}

- (void)applicationDidBecomeActive
{
  selfCopy = self;
  sub_1BD9B9A64();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BD9BA254();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1BD9BA890(appear, &selRef_viewDidAppear_, MEMORY[0x1E69BA818], v4);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1BD9BA890(disappear, &selRef_viewDidDisappear_, MEMORY[0x1E69BA820], v4);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1BD9BAA40(v2);
}

- (void)debugViewTapped
{
  v3 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor;
  swift_beginAccess();
  sub_1BD0EE8CC(self + v3, v13);
  v4 = v14;
  v5 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  (*(v5 + 88))(v4, v5);
  __swift_destroy_boxed_opaque_existential_0(v13, v6, v7, v8, v9, v10, v11, v12);
}

- (void)peerPaymentIdentityManager:(id)manager didUpdateProfileAppearanceData:(id)data
{
  managerCopy = manager;
  dataCopy = data;
  selfCopy = self;
  sub_1BD38EACC(dataCopy);
  v9 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor;
  swift_beginAccess();
  sub_1BD0EE8CC(selfCopy + v9, v19);
  v10 = v20;
  v11 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  (*(v11 + 96))(dataCopy, v10, v11);

  __swift_destroy_boxed_opaque_existential_0(v19, v12, v13, v14, v15, v16, v17, v18);
}

- (void)invalidate
{
  v3 = OBJC_IVAR___PKNearbyPeerPaymentSenderViewController_monitor;
  swift_beginAccess();
  sub_1BD0EE8CC(self + v3, v13);
  v4 = v14;
  v5 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  (*(v5 + 80))(v4, v5);
  __swift_destroy_boxed_opaque_existential_0(v13, v6, v7, v8, v9, v10, v11, v12);
}

- (PKNearbyPeerPaymentSenderViewController)initWithContext:(int64_t)context screenEdgeSwipeAction:(id)action dismissAction:(id)dismissAction
{
  _Block_copy(action);
  _Block_copy(dismissAction);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end