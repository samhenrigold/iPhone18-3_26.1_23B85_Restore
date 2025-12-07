@interface LACRatchetFlowManager
- (LACRatchetFlowManager)initWithPresenter:(id)presenter uiManager:(id)manager;
- (void)dismissWithCompletion:(id)completion;
- (void)showCoolOffSheetWithOptions:(id)options presentationCompletion:(id)completion sheetCompletion:(id)sheetCompletion;
@end

@implementation LACRatchetFlowManager

- (LACRatchetFlowManager)initWithPresenter:(id)presenter uiManager:(id)manager
{
  presenterCopy = presenter;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = LACRatchetFlowManager;
  v9 = [(LACRatchetFlowManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_presenter, presenter);
    objc_storeStrong(&v10->_uiManager, manager);
  }

  return v10;
}

- (void)showCoolOffSheetWithOptions:(id)options presentationCompletion:(id)completion sheetCompletion:(id)sheetCompletion
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(completion);
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v9 = thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()partial apply;
  }

  else
  {
    v10 = 0;
  }

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = v12;
  *(v13 + 40) = xmmword_1B0342B10;
  *(v13 + 56) = v9;
  *(v13 + 64) = v10;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &closure #1 in LACRatchetFlowManager.transition(to:with:style:completion:)partial apply, v13);
}

- (void)dismissWithCompletion:(id)completion
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = _Block_copy(completion);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ();
  }

  else
  {
    v8 = 0;
  }

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;
  v11[5] = v7;
  v11[6] = v8;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &closure #1 in LACRatchetFlowManager.dismiss(completion:)partial apply, v11);
}

@end