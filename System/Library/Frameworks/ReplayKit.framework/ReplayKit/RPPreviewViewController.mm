@interface RPPreviewViewController
+ (void)loadPreviewViewControllerWithMovieURL:(id)l attachmentURL:(id)rL overrideShareMessage:(id)message overrideTintColor:(id)color completion:(id)completion;
+ (void)loadPreviewViewControllerWithMovieURL:(id)l completion:(id)completion;
+ (void)viewControllerForExtension:(id)extension inputItems:(id)items completionHandler:(id)handler;
- (id)previewControllerDelegate;
- (void)extensionDidFinishWithActivityTypes:(id)types;
- (void)videoEditor:(id)editor didFinishWithActivityTypes:(id)types;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation RPPreviewViewController

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = RPPreviewViewController;
  [(RPPreviewViewController *)&v7 viewWillAppear:appear];
  v4 = +[RPScreenRecorder sharedRecorder];
  [v4 setWindowRotationLocked:1];

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  -[RPPreviewViewController setWasStatusBarHidden:](self, "setWasStatusBarHidden:", [mEMORY[0x277D75128] isStatusBarHidden]);

  mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128]2 setStatusBarHidden:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v3.receiver = self;
  v3.super_class = RPPreviewViewController;
  [(RPPreviewViewController *)&v3 viewDidAppear:appear];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  wasStatusBarHidden = [(RPPreviewViewController *)self wasStatusBarHidden];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  [mEMORY[0x277D75128] setStatusBarHidden:wasStatusBarHidden];

  v7.receiver = self;
  v7.super_class = RPPreviewViewController;
  [(RPPreviewViewController *)&v7 viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = RPPreviewViewController;
  [(RPPreviewViewController *)&v4 viewDidDisappear:disappear];
  v3 = +[RPScreenRecorder sharedRecorder];
  [v3 setWindowRotationLocked:0];
}

+ (void)loadPreviewViewControllerWithMovieURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  [objc_opt_class() loadPreviewViewControllerWithMovieURL:lCopy attachmentURL:0 overrideShareMessage:0 overrideTintColor:0 completion:completionCopy];
}

+ (void)loadPreviewViewControllerWithMovieURL:(id)l attachmentURL:(id)rL overrideShareMessage:(id)message overrideTintColor:(id)color completion:(id)completion
{
  v71[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  messageCopy = message;
  colorCopy = color;
  completionCopy = completion;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPVideoPreviewViewController:loadPreviewViewControllerWithCompletion", buf, 2u);
  }

  v64 = 0;
  v16 = [MEMORY[0x277CCA9C8] extensionWithIdentifier:@"com.apple.ReplayKit.RPVideoEditorExtension" error:&v64];
  v17 = v64;
  if (v17 || !v16)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPPreviewViewController loadPreviewViewControllerWithMovieURL:v17 attachmentURL:? overrideShareMessage:? overrideTintColor:? completion:?];
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v57 = v16;
    v58 = completionCopy;
    array = [MEMORY[0x277CBEB18] array];
    v18 = MEMORY[0x277CC2050];
    v59 = colorCopy;
    if (rLCopy)
    {
      v19 = objc_alloc_init(MEMORY[0x277CCA9D8]);
      v20 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"RPVideoEditorExtensionFileAttachmentKey" attributes:0];
      [v19 setAttributedTitle:v20];

      v21 = objc_alloc(MEMORY[0x277CCAA88]);
      path = [rLCopy path];
      v23 = [v21 initWithItem:path typeIdentifier:*v18];
      v71[0] = v23;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:1];
      [v19 setAttachments:v24];

      colorCopy = v59;
      [array addObject:v19];
    }

    if (messageCopy)
    {
      v25 = objc_alloc_init(MEMORY[0x277CCA9D8]);
      v26 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"RPVideoEditorExtensionOverrideShareMessageKey" attributes:0];
      [v25 setAttributedTitle:v26];

      v27 = [objc_alloc(MEMORY[0x277CCAA88]) initWithItem:messageCopy typeIdentifier:*v18];
      v70 = v27;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
      [v25 setAttachments:v28];

      [array addObject:v25];
    }

    if (colorCopy)
    {
      v29 = objc_alloc_init(MEMORY[0x277CCA9D8]);
      v30 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"RPVideoEditorExtensionOverrideTintColorKey" attributes:0];
      [v29 setAttributedTitle:v30];

      v31 = objc_alloc(MEMORY[0x277CCAA88]);
      v32 = *v18;
      v33 = [v31 initWithItem:colorCopy typeIdentifier:*v18];
      v69 = v33;
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];
      [v29 setAttachments:v34];

      [array addObject:v29];
    }

    else
    {
      v32 = *v18;
    }

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    [mainBundle load];
    infoDictionary = [mainBundle infoDictionary];
    v56 = [infoDictionary objectForKey:*MEMORY[0x277CBEC40]];

    v36 = objc_alloc_init(MEMORY[0x277CCA9D8]);
    v37 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"RPVideoEditorExtensionAppNameKey" attributes:0];
    [v36 setAttributedTitle:v37];

    v38 = [objc_alloc(MEMORY[0x277CCAA88]) initWithItem:v56 typeIdentifier:v32];
    v68 = v38;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];
    [v36 setAttachments:v39];

    [array addObject:v36];
    v40 = objc_alloc_init(MEMORY[0x277CCA9D8]);
    v41 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"RPVideoEditorExtensionMovieURLKey" attributes:0];
    [v40 setAttributedTitle:v41];

    v42 = objc_alloc(MEMORY[0x277CCAA88]);
    path2 = [lCopy path];
    v44 = [v42 initWithItem:path2 typeIdentifier:v32];
    v67 = v44;
    [MEMORY[0x277CBEA60] arrayWithObjects:&v67 count:1];
    v46 = v45 = lCopy;
    [v40 setAttachments:v46];

    [array addObject:v40];
    v47 = objc_alloc_init(MEMORY[0x277CCA9D8]);
    v48 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"RPVideoEditorExtensionBundleIdentifierKey" attributes:0];
    [v47 setAttributedTitle:v48];

    v49 = objc_alloc(MEMORY[0x277CCAA88]);
    bundleIdentifier = [mainBundle bundleIdentifier];
    v51 = [v49 initWithItem:bundleIdentifier typeIdentifier:v32];
    v66 = v51;
    v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
    [v47 setAttachments:v52];

    lCopy = v45;
    [array addObject:v47];
    v53 = objc_opt_class();
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __129__RPPreviewViewController_loadPreviewViewControllerWithMovieURL_attachmentURL_overrideShareMessage_overrideTintColor_completion___block_invoke;
    v61[3] = &unk_278B62538;
    v62 = v45;
    completionCopy = v58;
    v63 = v58;
    v54 = v53;
    v16 = v57;
    [v54 viewControllerForExtension:v57 inputItems:array completionHandler:v61];

    colorCopy = v59;
    v17 = 0;
  }
}

void __129__RPPreviewViewController_loadPreviewViewControllerWithMovieURL_attachmentURL_overrideShareMessage_overrideTintColor_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __129__RPPreviewViewController_loadPreviewViewControllerWithMovieURL_attachmentURL_overrideShareMessage_overrideTintColor_completion___block_invoke_2;
  block[3] = &unk_278B61E60;
  v6 = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __129__RPPreviewViewController_loadPreviewViewControllerWithMovieURL_attachmentURL_overrideShareMessage_overrideTintColor_completion___block_invoke_2(uint64_t a1)
{
  v15 = objc_alloc_init(RPPreviewViewController);
  [(RPPreviewViewController *)v15 setMovieURL:*(a1 + 32)];
  v2 = *(a1 + 40);
  [v2 setPreviewViewController:v15];
  [(RPPreviewViewController *)v15 setHostViewController:v2];
  v3 = [(RPPreviewViewController *)v15 view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v2 view];
  [v12 setFrame:{v5, v7, v9, v11}];

  [(RPPreviewViewController *)v15 addChildViewController:v2];
  v13 = [(RPPreviewViewController *)v15 view];
  v14 = [v2 view];
  [v13 addSubview:v14];

  [v2 didMoveToParentViewController:v15];
  (*(*(a1 + 48) + 16))();
}

+ (void)viewControllerForExtension:(id)extension inputItems:(id)items completionHandler:(id)handler
{
  extensionCopy = extension;
  itemsCopy = items;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPPreviewViewController:viewControllerForExtension", buf, 2u);
  }

  if (extensionCopy)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __83__RPPreviewViewController_viewControllerForExtension_inputItems_completionHandler___block_invoke;
    v10[3] = &unk_278B624C0;
    v11 = extensionCopy;
    v12 = handlerCopy;
    [v11 instantiateViewControllerWithInputItems:itemsCopy connectionHandler:v10];
  }
}

void __83__RPPreviewViewController_viewControllerForExtension_inputItems_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v7;
  v10 = [*(a1 + 32) _extensionContextForUUID:a2];
  [v10 setHostViewController:v9];
  [v9 setHostContext:v10];
  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __83__RPPreviewViewController_viewControllerForExtension_inputItems_completionHandler___block_invoke_cold_1(v8);
    }
  }

  else
  {
    v11 = *(a1 + 40);
    if (v11)
    {
      (*(v11 + 16))(v11, v9);
    }
  }
}

- (void)videoEditor:(id)editor didFinishWithActivityTypes:(id)types
{
  typesCopy = types;
  WeakRetained = objc_loadWeakRetained(&self->_previewControllerDelegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__RPPreviewViewController_videoEditor_didFinishWithActivityTypes___block_invoke;
    block[3] = &unk_278B61C60;
    block[4] = self;
    v12 = typesCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v8 = objc_loadWeakRetained(&self->_previewControllerDelegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__RPPreviewViewController_videoEditor_didFinishWithActivityTypes___block_invoke_2;
    v10[3] = &unk_278B61B70;
    v10[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

void __66__RPPreviewViewController_videoEditor_didFinishWithActivityTypes___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1000));
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 40)];
  [WeakRetained previewController:v2 didFinishWithActivityTypes:v3];
}

void __66__RPPreviewViewController_videoEditor_didFinishWithActivityTypes___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 1000));
  [WeakRetained previewControllerDidFinish:*(a1 + 32)];
}

- (void)extensionDidFinishWithActivityTypes:(id)types
{
  typesCopy = types;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "RPPreviewViewController:extensionDidFinish", buf, 2u);
  }

  previewControllerDelegate = [(RPPreviewViewController *)self previewControllerDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__RPPreviewViewController_extensionDidFinishWithActivityTypes___block_invoke;
    block[3] = &unk_278B61C60;
    block[4] = self;
    v11 = typesCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  previewControllerDelegate2 = [(RPPreviewViewController *)self previewControllerDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__RPPreviewViewController_extensionDidFinishWithActivityTypes___block_invoke_2;
    v9[3] = &unk_278B61B70;
    v9[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }
}

void __63__RPPreviewViewController_extensionDidFinishWithActivityTypes___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) previewControllerDelegate];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBEB98] setWithArray:*(a1 + 40)];
  [v4 previewController:v2 didFinishWithActivityTypes:v3];
}

void __63__RPPreviewViewController_extensionDidFinishWithActivityTypes___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) previewControllerDelegate];
  [v2 previewControllerDidFinish:*(a1 + 32)];
}

- (id)previewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_previewControllerDelegate);

  return WeakRetained;
}

+ (void)loadPreviewViewControllerWithMovieURL:(void *)a1 attachmentURL:overrideShareMessage:overrideTintColor:completion:.cold.1(void *a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = [a1 code];
  _os_log_error_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "error getting extension: %i", v1, 8u);
}

void __83__RPPreviewViewController_viewControllerForExtension_inputItems_completionHandler___block_invoke_cold_1(void *a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = [a1 code];
  _os_log_error_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error instantiating remote view controller for extension: %i", v1, 8u);
}

@end