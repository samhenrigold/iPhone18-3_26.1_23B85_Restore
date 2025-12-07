@interface QLAppExtensionSceneProxy
- (void)configureWithNumberOfItems:(int64_t)items currentPreviewItemIndex:(unint64_t)index itemProvider:(id)provider stateManager:(id)manager;
- (void)configureWithNumberOfItems:(int64_t)items currentPreviewItemIndex:(unint64_t)index itemProvider:(id)provider stateManager:(id)manager fullScreen:(BOOL)screen;
- (void)getNetworkObserverWithCompletionBlock:(id)block;
- (void)getPreviewCollectionUUIDWithCompletionHandlerWithCompletionHandler:(id)handler;
- (void)invalidateServiceWithCompletionHandler:(id)handler;
- (void)keyCommandsWithCompletionHandler:(id)handler;
- (void)notifyFirstTimeAppearanceWithActions:(unint64_t)actions;
- (void)notifyStateRestorationUserInfo:(id)info;
- (void)prepareForActionSheetPresentationWithCompletionHandler:(id)handler;
- (void)preparePreviewCollectionForInvalidationWithCompletionHandler:(id)handler;
- (void)preparePreviewCollectionForInvalidationWithCompletionHandlerWithCompletionHandler:(id)handler;
- (void)saveCurrentPreviewEditsSynchronously:(BOOL)synchronously withCompletionHandler:(id)handler;
- (void)saveIntoPhotoLibraryMediaWithURLWrapper:(id)wrapper previewItemType:(unint64_t)type completionHandler:(id)handler;
- (void)setAllowInteractiveTransitions:(BOOL)transitions completionHandler:(id)handler;
- (void)setAppearance:(id)appearance animated:(BOOL)animated;
- (void)setNotificationCenter:(id)center;
- (void)shouldDisplayLockActivityWithCompletionHandler:(id)handler;
- (void)startTransitionWithSourceViewProvider:(QLTransitionContext *)provider transitionController:(QLTransitionControllerProtocol *)controller presenting:(BOOL)presenting useInteractiveTransition:(BOOL)transition completionHandler:(id)handler;
- (void)toolbarButtonPressedWithIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)toolbarButtonsForTraitCollection:(UITraitCollection *)collection withCompletionHandler:(id)handler;
@end

@implementation QLAppExtensionSceneProxy

- (void)setAllowInteractiveTransitions:(BOOL)transitions completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = transitions;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_23A7EEA64();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23A7FCF90;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23A7FCF98;
  v14[5] = v13;

  sub_23A7E3DC0(0, 0, v9, &unk_23A7FCFA0, v14);
}

- (void)configureWithNumberOfItems:(int64_t)items currentPreviewItemIndex:(unint64_t)index itemProvider:(id)provider stateManager:(id)manager fullScreen:(BOOL)screen
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  sub_23A799214(items, index, provider, manager, screen);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)configureWithNumberOfItems:(int64_t)items currentPreviewItemIndex:(unint64_t)index itemProvider:(id)provider stateManager:(id)manager
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  sub_23A799558(items, index, provider, manager);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)toolbarButtonsForTraitCollection:(UITraitCollection *)collection withCompletionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
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
  v13[4] = &unk_23A7FCF70;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23A7FCF78;
  v14[5] = v13;
  collectionCopy = collection;

  sub_23A7E3DC0(0, 0, v9, &unk_23A7FCF80, v14);
}

- (void)toolbarButtonPressedWithIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
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
  v13[4] = &unk_23A7FCF50;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23A7FEDA0;
  v14[5] = v13;
  identifierCopy = identifier;

  sub_23A7E3DC0(0, 0, v9, &unk_23A7FCF60, v14);
}

- (void)shouldDisplayLockActivityWithCompletionHandler:(id)handler
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
  v11[4] = &unk_23A7FCF30;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23A7FCF38;
  v12[5] = v11;

  sub_23A7E3DC0(0, 0, v7, &unk_23A7FCF40, v12);
}

- (void)keyCommandsWithCompletionHandler:(id)handler
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
  v11[4] = &unk_23A7FCF10;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23A7FCF18;
  v12[5] = v11;

  sub_23A7E3DC0(0, 0, v7, &unk_23A7FCF20, v12);
}

- (void)setAppearance:(id)appearance animated:(BOOL)animated
{
  appearanceCopy = appearance;

  sub_23A79C370(appearanceCopy, animated);
}

- (void)notifyFirstTimeAppearanceWithActions:(unint64_t)actions
{

  sub_23A79C5C0(actions);
}

- (void)notifyStateRestorationUserInfo:(id)info
{
  if (info)
  {
    v3 = sub_23A7EE7D4();
  }

  else
  {
    v3 = 0;
  }

  sub_23A79C7E4(v3);
}

- (void)startTransitionWithSourceViewProvider:(QLTransitionContext *)provider transitionController:(QLTransitionControllerProtocol *)controller presenting:(BOOL)presenting useInteractiveTransition:(BOOL)transition completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v22 - v14;
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
  v19[4] = &unk_23A7FCEF0;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_23A7FCEF8;
  v20[5] = v19;
  providerCopy = provider;
  swift_unknownObjectRetain();

  sub_23A7E3DC0(0, 0, v15, &unk_23A7FCF00, v20);
}

- (void)preparePreviewCollectionForInvalidationWithCompletionHandler:(id)handler
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
  v11[4] = &unk_23A7FCEC8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23A7FCED0;
  v12[5] = v11;

  sub_23A7E3DC0(0, 0, v7, &unk_23A7FCED8, v12);
}

- (void)invalidateServiceWithCompletionHandler:(id)handler
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
  v11[4] = &unk_23A7FCEA8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23A7FCEB0;
  v12[5] = v11;

  sub_23A7E3DC0(0, 0, v7, &unk_23A7FCEB8, v12);
}

- (void)prepareForActionSheetPresentationWithCompletionHandler:(id)handler
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
  v11[4] = &unk_23A7FCE88;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23A7FCE90;
  v12[5] = v11;

  sub_23A7E3DC0(0, 0, v7, &unk_23A7FCE98, v12);
}

- (void)saveIntoPhotoLibraryMediaWithURLWrapper:(id)wrapper previewItemType:(unint64_t)type completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_23A7A2DE4;
  }

  else
  {
    v8 = 0;
  }

  wrapperCopy = wrapper;

  sub_23A79FA74(wrapperCopy, type, v7, v8);
  sub_23A7A2DD4(v7, v8);
}

- (void)saveCurrentPreviewEditsSynchronously:(BOOL)synchronously withCompletionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA8FD0, &qword_23A7FDBC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
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
  v13[4] = &unk_23A7FCE68;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23A7FCE70;
  v14[5] = v13;

  sub_23A7E3DC0(0, 0, v9, &unk_23A7FED50, v14);
}

- (void)getPreviewCollectionUUIDWithCompletionHandlerWithCompletionHandler:(id)handler
{
  v3 = _Block_copy(handler);
  _Block_copy(v3);

  sub_23A7A2B6C(v4, v3);
  _Block_release(v3);
  _Block_release(v3);
}

- (void)setNotificationCenter:(id)center
{
  v4 = objc_opt_self();
  swift_unknownObjectRetain();
  sharedInstance = [v4 sharedInstance];
  if (sharedInstance)
  {
    v6 = sharedInstance;
    [sharedInstance setRemoteNotificationCenter_];
  }

  swift_unknownObjectRelease();
}

- (void)getNetworkObserverWithCompletionBlock:(id)block
{
  v3 = _Block_copy(block);
  sharedInstance = [objc_opt_self() sharedInstance];
  v3[2](v3, sharedInstance);
  _Block_release(v3);
}

- (void)preparePreviewCollectionForInvalidationWithCompletionHandlerWithCompletionHandler:(id)handler
{
  v3 = _Block_copy(handler);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  QLAppExtensionSceneProxy.preparePreviewCollectionForInvalidationWithCompletionHandler(completionHandler:)(sub_23A7A2B5C, v4);
}

@end