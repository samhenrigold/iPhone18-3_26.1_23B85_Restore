@interface WFPINEntryViewController
- (BOOL)hasUIWebViewSubView:(id)view;
- (WFPINEntryViewController)initWithURL:(id)l pageTitle:(id)title completion:(id)completion;
- (void)dealloc;
- (void)insertRemoteViewController:(id)controller;
- (void)presentViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)userDidCancel;
- (void)userEnteredCorrectPIN;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation WFPINEntryViewController

- (WFPINEntryViewController)initWithURL:(id)l pageTitle:(id)title completion:(id)completion
{
  v15.receiver = self;
  v15.super_class = WFPINEntryViewController;
  v9 = [(WFPINEntryViewController *)&v15 initWithNibName:0 bundle:0];
  if (v9)
  {
    if (!l)
    {
      [WFPINEntryViewController initWithURL:a2 pageTitle:v9 completion:?];
    }

    v9->_URL = l;
    if (!title)
    {
      [WFPINEntryViewController initWithURL:a2 pageTitle:v9 completion:?];
    }

    v9->_pageTitle = [title copy];
    if (!completion)
    {
      [WFPINEntryViewController initWithURL:a2 pageTitle:v9 completion:?];
    }

    v9->_completion = [completion copy];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __61__WFPINEntryViewController_initWithURL_pageTitle_completion___block_invoke;
    v14[3] = &unk_279E7DE00;
    v14[4] = completion;
    [(WFPINEntryViewController *)v9 _beginDelayingPresentation:v14 cancellationHandler:3.0];
    remoteViewControllerClass = [objc_opt_class() remoteViewControllerClass];
    serviceViewControllerClassName = [objc_opt_class() serviceViewControllerClassName];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __61__WFPINEntryViewController_initWithURL_pageTitle_completion___block_invoke_2;
    v13[3] = &unk_279E7DE28;
    v13[4] = v9;
    v13[5] = completion;
    [remoteViewControllerClass requestViewController:serviceViewControllerClassName fromServiceWithBundleIdentifier:@"com.apple.WebContentFilter.remoteUI.WebContentAnalysisUI" connectionHandler:v13];
  }

  return v9;
}

uint64_t __61__WFPINEntryViewController_initWithURL_pageTitle_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), 0, [MEMORY[0x277CCA9B8] errorWithDomain:@"WFPINEntryErrorDomain" code:0 userInfo:0]);
  }

  return 0;
}

uint64_t __61__WFPINEntryViewController_initWithURL_pageTitle_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  if (a3)
  {
    [v4 dismissViewControllerAnimated:0 completion:0];
    v6 = *(a1 + 40);
    v9 = *MEMORY[0x277CCA7E8];
    v10[0] = a3;
    return (*(v6 + 16))(v6, 0, [MEMORY[0x277CCA9B8] errorWithDomain:@"WFPINEntryErrorDomain" code:1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v10, &v9, 1)}]);
  }

  else
  {
    [v4 insertRemoteViewController:a2];
    v8 = *(a1 + 32);

    return [v8 _endDelayingPresentation];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WFPINEntryViewController;
  [(WFPINEntryViewController *)&v3 dealloc];
}

- (void)insertRemoteViewController:(id)controller
{
  if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = 16;
  }

  else
  {
    v5 = 17;
  }

  [(WFPINEntryViewController *)self setModalPresentationStyle:v5];
  [(WFPINEntryViewController *)self view];
  [(WFPINEntryViewController *)self addChildViewController:controller];
  view = [controller view];
  [-[WFPINEntryViewController view](self "view")];
  [view setFrame:?];
  [-[WFPINEntryViewController view](self "view")];
  objc_storeWeak(&self->_remoteViewController, controller);
  [objc_loadWeak(&self->_remoteViewController) setDelegate:self];
  [objc_loadWeak(&self->_remoteViewController) setURL:self->_URL];
  Weak = objc_loadWeak(&self->_remoteViewController);
  pageTitle = self->_pageTitle;

  [Weak setPageTitle:pageTitle];
}

- (void)presentViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v44 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277D75DA0] allWindowsIncludingInternalWindows:0 onlyVisibleWindows:1];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v38;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(v6);
        }

        rootViewController = [*(*(&v37 + 1) + 8 * i) rootViewController];
        if (rootViewController)
        {
          [v7 addObject:rootViewController];
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v9);
  }

  if ([v7 count])
  {
    if ([v7 count] == 1)
    {
      v13 = [v7 objectAtIndexedSubscript:0];
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v25 = [v7 countByEnumeratingWithState:&v33 objects:v42 count:16];
      if (!v25)
      {
        goto LABEL_14;
      }

      v26 = v25;
      v27 = *v34;
LABEL_29:
      v28 = 0;
      while (1)
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v33 + 1) + 8 * v28);
        if ([(WFPINEntryViewController *)self hasUIWebViewSubView:[(UIViewController *)v13 view]])
        {
          break;
        }

        if (v26 == ++v28)
        {
          v26 = [v7 countByEnumeratingWithState:&v33 objects:v42 count:16];
          if (v26)
          {
            goto LABEL_29;
          }

          goto LABEL_14;
        }
      }
    }

    self->_rootViewControllerToUse = v13;
  }

LABEL_14:
  rootViewControllerToUse = self->_rootViewControllerToUse;
  if (rootViewControllerToUse && (v15 = -[UIViewController view](rootViewControllerToUse, "view"), (v16 = [MEMORY[0x277D75D28] _viewControllerForFullScreenPresentationFromView:v15]) != 0))
  {
    [v16 presentViewController:self animated:1 completion:0];
  }

  else
  {
    v17 = objc_alloc_init(MEMORY[0x277D75F48]);
    self->_fallbackPresentationVC = v17;
    [(_UIFallbackPresentationViewController *)v17 setRotationDecider:self];
    v18 = [MEMORY[0x277D75DA0] allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1];
    array = [MEMORY[0x277CBEB18] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v20 = [v18 countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v30;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(*(&v29 + 1) + 8 * j);
          if ([v24 delegate])
          {
            [v24 beginDisablingInterfaceAutorotation];
            [array addObject:v24];
          }
        }

        v21 = [v18 countByEnumeratingWithState:&v29 objects:v41 count:16];
      }

      while (v21);
    }

    self->_windowsWithDisabledRotation = array;
    [(_UIFallbackPresentationViewController *)self->_fallbackPresentationVC _presentViewController:self sendingView:0 animated:animatedCopy];
  }
}

- (BOOL)hasUIWebViewSubView:(id)view
{
  v16 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    subviews = [view subviews];
    v5 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (!v5)
    {
      return v5;
    }

    v7 = v5;
    v8 = *v12;
LABEL_6:
    v9 = 0;
    while (1)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(subviews);
      }

      if ([(WFPINEntryViewController *)self hasUIWebViewSubView:*(*(&v11 + 1) + 8 * v9)])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
        LOBYTE(v5) = 0;
        if (v7)
        {
          goto LABEL_6;
        }

        return v5;
      }
    }
  }

  LOBYTE(v5) = 1;
  return v5;
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v16 = *MEMORY[0x277D85DE8];
  if (self->_fallbackPresentationVC)
  {
    windowsWithDisabledRotation = self->_windowsWithDisabledRotation;
    if (windowsWithDisabledRotation)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = [(NSArray *)windowsWithDisabledRotation countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        do
        {
          v9 = 0;
          do
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(windowsWithDisabledRotation);
            }

            [*(*(&v11 + 1) + 8 * v9++) endDisablingInterfaceAutorotation];
          }

          while (v7 != v9);
          v7 = [(NSArray *)windowsWithDisabledRotation countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v7);
      }

      self->_windowsWithDisabledRotation = 0;
    }
  }

  v10.receiver = self;
  v10.super_class = WFPINEntryViewController;
  [(WFPINEntryViewController *)&v10 viewDidDisappear:disappearCopy];
}

- (void)userEnteredCorrectPIN
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __49__WFPINEntryViewController_userEnteredCorrectPIN__block_invoke;
  v2[3] = &unk_279E7DDC0;
  v2[4] = self;
  [(WFPINEntryViewController *)self dismissViewControllerAnimated:1 completion:v2];
}

uint64_t __49__WFPINEntryViewController_userEnteredCorrectPIN__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[124])
  {
    v3 = v1[131];
    if (v3)
    {
      (*(v3 + 16))();
      v1 = *(a1 + 32);
    }
  }

  v4 = *(v1[130] + 16);

  return v4();
}

- (void)userDidCancel
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __41__WFPINEntryViewController_userDidCancel__block_invoke;
  v2[3] = &unk_279E7DDC0;
  v2[4] = self;
  [(WFPINEntryViewController *)self dismissViewControllerAnimated:1 completion:v2];
}

uint64_t __41__WFPINEntryViewController_userDidCancel__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[124])
  {
    v3 = v1[131];
    if (v3)
    {
      (*(v3 + 16))();
      v1 = *(a1 + 32);
    }
  }

  v4 = v1[130];
  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WFPINEntryErrorDomain" code:2 userInfo:0];
  v6 = *(v4 + 16);

  return v6(v4, 0, v5);
}

@end