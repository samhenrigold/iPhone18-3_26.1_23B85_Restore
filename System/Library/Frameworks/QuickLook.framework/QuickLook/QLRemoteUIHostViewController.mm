@interface QLRemoteUIHostViewController
+ (void)remotePreviewCollectionWithCompletionHandler:(id)handler;
- (BOOL)isAvailable;
- (NSUUID)uuid;
- (_TtC9QuickLook28QLRemoteUIHostViewController)initWithCoder:(id)coder;
- (_TtC9QuickLook28QLRemoteUIHostViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)accessoryView;
- (void)configureWithNumberOfItems:(int64_t)items currentPreviewItemIndex:(unint64_t)index itemProvider:(id)provider stateManager:(id)manager;
- (void)configureWithNumberOfItems:(int64_t)items currentPreviewItemIndex:(unint64_t)index itemProvider:(id)provider stateManager:(id)manager fullScreen:(BOOL)screen;
- (void)invalidateServiceWithCompletionHandler:(id)handler;
- (void)keyCommandsWithCompletionHandler:(id)handler;
- (void)notifyFirstTimeAppearanceWithActions:(unint64_t)actions;
- (void)notifyStateRestorationUserInfo:(id)info;
- (void)prepareForActionSheetPresentationWithCompletionHandler:(id)handler;
- (void)preparePreviewCollectionForInvalidationWithCompletionHandler:(id)handler;
- (void)saveCurrentPreviewEditsSynchronously:(BOOL)synchronously withCompletionHandler:(id)handler;
- (void)saveIntoPhotoLibraryMediaWithURLWrapper:(id)wrapper previewItemType:(unint64_t)type completionHandler:(id)handler;
- (void)setAppearance:(id)appearance animated:(BOOL)animated;
- (void)setUuid:(id)uuid;
- (void)shouldDisplayLockActivityWithCompletionHandler:(id)handler;
- (void)startTransitionWithSourceViewProvider:(QLTransitionContext *)provider transitionController:(QLTransitionControllerProtocol *)controller presenting:(BOOL)presenting useInteractiveTransition:(BOOL)transition completionHandler:(id)handler;
- (void)toggleDebugView;
- (void)toolbarButtonPressedWithIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)toolbarButtonsForTraitCollection:(UITraitCollection *)collection withCompletionHandler:(id)handler;
- (void)viewDidLoad;
@end

@implementation QLRemoteUIHostViewController

- (BOOL)isAvailable
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel);
  swift_getKeyPath();
  sub_23A7E7880(&qword_27DFA9FF0, type metadata accessor for QLHostRemoteViewModel, &unk_23A7FE7C8);
  selfCopy = self;
  sub_23A7EE014();

  v5 = *(v3 + 17);

  return v5;
}

- (NSUUID)uuid
{
  v3 = sub_23A7EDFE4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_23A7D1C98(v6);

  v8 = sub_23A7EDFB4();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (void)setUuid:(id)uuid
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9FF8, &qword_23A7FEA58);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_23A7EDFE4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A7EDFC4();
  (*(v8 + 32))(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v11 = OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController____lazy_storage___uuid;
  swift_beginAccess();
  selfCopy = self;
  sub_23A7D1E84(v6, self + v11);
  swift_endAccess();
}

- (_TtC9QuickLook28QLRemoteUIHostViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_23A7EE844();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_23A7D25D0(v5, v7, bundle);
}

- (_TtC9QuickLook28QLRemoteUIHostViewController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController_viewModel;
  type metadata accessor for QLHostRemoteViewModel(0);
  swift_allocObject();
  *(&self->super.super.super.isa + v4) = sub_23A7CD4D8();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController____lazy_storage___accessoryViewController) = 0;
  v5 = OBJC_IVAR____TtC9QuickLook28QLRemoteUIHostViewController____lazy_storage___uuid;
  v6 = sub_23A7EDFE4();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  result = sub_23A7EED64();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for QLRemoteUIHostViewController(0);
  v2 = v3.receiver;
  [(QLRemoteUIHostViewController *)&v3 viewDidLoad];
  sub_23A7EDFF4();
}

+ (void)remotePreviewCollectionWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_23A7EEA64();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_23A7FEF20;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23A7FEF28;
  v12[5] = v11;
  sub_23A7E3DC0(0, 0, v7, &unk_23A7FEF30, v12);
}

- (void)toggleDebugView
{
  selfCopy = self;
  QLRemoteUIHostViewController.toggleDebugView()();
}

- (id)accessoryView
{
  selfCopy = self;
  v3 = sub_23A7D1800();
  view = [v3 view];

  if (view)
  {

    return view;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)configureWithNumberOfItems:(int64_t)items currentPreviewItemIndex:(unint64_t)index itemProvider:(id)provider stateManager:(id)manager fullScreen:(BOOL)screen
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  QLRemoteUIHostViewController.configure(withNumberOfItems:currentPreviewItemIndex:itemProvider:stateManager:fullScreen:)(items, index, provider, manager, screen);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)configureWithNumberOfItems:(int64_t)items currentPreviewItemIndex:(unint64_t)index itemProvider:(id)provider stateManager:(id)manager
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  QLRemoteUIHostViewController.configure(withNumberOfItems:currentPreviewItemIndex:itemProvider:stateManager:)(items, index, provider, manager);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)toolbarButtonsForTraitCollection:(UITraitCollection *)collection withCompletionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = collection;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_23A7EEA64();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23A7FEED8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23A7FEEE0;
  v14[5] = v13;
  collectionCopy = collection;
  selfCopy = self;
  sub_23A7E3DC0(0, 0, v9, &unk_23A7FEEE8, v14);
}

- (void)toolbarButtonPressedWithIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_23A7EEA64();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23A7FEEB8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23A7FEEC0;
  v14[5] = v13;
  identifierCopy = identifier;
  selfCopy = self;
  sub_23A7E3DC0(0, 0, v9, &unk_23A7FEEC8, v14);
}

- (void)shouldDisplayLockActivityWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_23A7EEA64();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_23A7FEE98;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23A7FEEA0;
  v12[5] = v11;
  selfCopy = self;
  sub_23A7E3DC0(0, 0, v7, &unk_23A7FEEA8, v12);
}

- (void)keyCommandsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_23A7EEA64();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_23A7FEE70;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23A7FEE78;
  v12[5] = v11;
  selfCopy = self;
  sub_23A7E3DC0(0, 0, v7, &unk_23A7FEE80, v12);
}

- (void)setAppearance:(id)appearance animated:(BOOL)animated
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  appearanceCopy = appearance;
  selfCopy = self;
  sub_23A7EEA44();
  v12 = sub_23A7EEA64();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  sub_23A7EEA34();
  v13 = appearanceCopy;
  v14 = selfCopy;
  v15 = sub_23A7EEA24();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  *(v16 + 32) = v14;
  *(v16 + 40) = v13;
  *(v16 + 48) = animated;
  sub_23A7B9D94(0, 0, v9, &unk_23A7FEE58, v16);
}

- (void)notifyFirstTimeAppearanceWithActions:(unint64_t)actions
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  selfCopy = self;
  sub_23A7EEA44();
  v9 = sub_23A7EEA64();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  sub_23A7EEA34();
  v10 = selfCopy;
  v11 = sub_23A7EEA24();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  v12[5] = actions;
  sub_23A7B9D94(0, 0, v7, &unk_23A7FEE50, v12);
}

- (void)notifyStateRestorationUserInfo:(id)info
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  if (info)
  {
    info = sub_23A7EE7D4();
  }

  selfCopy = self;
  sub_23A7EEA44();
  v9 = sub_23A7EEA64();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  sub_23A7EEA34();
  v10 = selfCopy;
  v11 = sub_23A7EEA24();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  v12[5] = info;
  sub_23A7B9D94(0, 0, v7, &unk_23A7FEE48, v12);
}

- (void)startTransitionWithSourceViewProvider:(QLTransitionContext *)provider transitionController:(QLTransitionControllerProtocol *)controller presenting:(BOOL)presenting useInteractiveTransition:(BOOL)transition completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  *(v17 + 16) = provider;
  *(v17 + 24) = controller;
  *(v17 + 32) = presenting;
  *(v17 + 33) = transition;
  *(v17 + 40) = v16;
  *(v17 + 48) = self;
  v18 = sub_23A7EEA64();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_23A7FEE28;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_23A7FEE30;
  v20[5] = v19;
  providerCopy = provider;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_23A7E3DC0(0, 0, v15, &unk_23A7FEE38, v20);
}

- (void)preparePreviewCollectionForInvalidationWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_23A7EEA64();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_23A7FEDE8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23A7FEDF0;
  v12[5] = v11;
  selfCopy = self;
  sub_23A7E3DC0(0, 0, v7, &unk_23A7FEDF8, v12);
}

- (void)invalidateServiceWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_23A7EEA64();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_23A7FEDC8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23A7FEDD0;
  v12[5] = v11;
  selfCopy = self;
  sub_23A7E3DC0(0, 0, v7, &unk_23A7FEDD8, v12);
}

- (void)prepareForActionSheetPresentationWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_23A7EEA64();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_23A7FED98;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23A7FEDA0;
  v12[5] = v11;
  selfCopy = self;
  sub_23A7E3DC0(0, 0, v7, &unk_23A7FCF60, v12);
}

- (void)saveIntoPhotoLibraryMediaWithURLWrapper:(id)wrapper previewItemType:(unint64_t)type completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_23A7A2DE4;
  }

  else
  {
    v9 = 0;
  }

  wrapperCopy = wrapper;
  selfCopy = self;
  QLRemoteUIHostViewController.saveIntoPhotoLibraryMedia(with:previewItemType:completionHandler:)(wrapperCopy, type, v8, v9);
  sub_23A7A2DD4(v8, v9);
}

- (void)saveCurrentPreviewEditsSynchronously:(BOOL)synchronously withCompletionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = synchronously;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_23A7EEA64();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23A7FED30;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23A7FCE70;
  v14[5] = v13;
  selfCopy = self;
  sub_23A7E3DC0(0, 0, v9, &unk_23A7FED50, v14);
}

@end