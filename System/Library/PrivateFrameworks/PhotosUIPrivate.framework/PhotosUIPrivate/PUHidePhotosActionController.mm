@interface PUHidePhotosActionController
- (PUHidePhotosActionController)initWithAssets:(id)assets undoManager:(id)manager;
- (id)alertControllerForTogglingAssetsVisibilityWithCompletionHandler:(id)handler;
- (void)performActionWithCompletionHandler:(id)handler;
@end

@implementation PUHidePhotosActionController

- (void)performActionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  action = self->_action;
  undoManager = [(PUHidePhotosActionController *)self undoManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__PUHidePhotosActionController_performActionWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7B7C940;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(PXHideAssetsAction *)action executeWithUndoManager:undoManager completionHandler:v8];
}

- (id)alertControllerForTogglingAssetsVisibilityWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(PXHideAssetsAction *)self->_action isHidden])
  {
    assets = [(PUHidePhotosActionController *)self assets];
    v6 = PLSuffixForItems();
    v29 = assets;
    v7 = [assets count];
    if (v7 == 1)
    {
      v8 = [@"HIDE_CONFIRMATION_MESSAGE_" stringByAppendingString:v6];
      v9 = PULocalizedString(v8);

      v10 = [@"HIDE_BUTTON_TITLE_" stringByAppendingString:v6];
      v11 = PULocalizedString(v10);
    }

    else
    {
      v13 = v7;
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HIDE_CONFIRMATION_MESSAGE_%@S", v6];
      v9 = PULocalizedString(v14);

      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HIDE_BUTTON_TITLE_%@S", v6];
      v15 = PULocalizedString(v10);
      v11 = PULocalizedStringWithValidatedFormat(v15, @"%lu", v16, v17, v18, v19, v20, v21, v13);
    }

    v22 = PULocalizedString(@"CANCEL");
    v12 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:0 preferredStyle:0];
    v23 = MEMORY[0x1E69DC648];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __96__PUHidePhotosActionController_alertControllerForTogglingAssetsVisibilityWithCompletionHandler___block_invoke;
    v32[3] = &unk_1E7B80980;
    v24 = handlerCopy;
    v33 = v24;
    v25 = [v23 actionWithTitle:v11 style:2 handler:v32];
    [v12 addAction:v25];

    v26 = MEMORY[0x1E69DC648];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __96__PUHidePhotosActionController_alertControllerForTogglingAssetsVisibilityWithCompletionHandler___block_invoke_2;
    v30[3] = &unk_1E7B80980;
    v31 = v24;
    v27 = [v26 actionWithTitle:v22 style:1 handler:v30];
    [v12 addAction:v27];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t __96__PUHidePhotosActionController_alertControllerForTogglingAssetsVisibilityWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t __96__PUHidePhotosActionController_alertControllerForTogglingAssetsVisibilityWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (PUHidePhotosActionController)initWithAssets:(id)assets undoManager:(id)manager
{
  assetsCopy = assets;
  managerCopy = manager;
  v9 = [objc_alloc(MEMORY[0x1E69C35E8]) initWithAssets:assetsCopy];
  if (v9)
  {
    v14.receiver = self;
    v14.super_class = PUHidePhotosActionController;
    v10 = [(PUHidePhotosActionController *)&v14 init];
    p_isa = &v10->super.isa;
    if (v10)
    {
      objc_storeStrong(&v10->_action, v9);
      objc_storeStrong(p_isa + 2, assets);
      objc_storeStrong(p_isa + 3, manager);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end