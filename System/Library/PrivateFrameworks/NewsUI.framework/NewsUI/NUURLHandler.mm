@interface NUURLHandler
- (NUURLHandler)initWithURLHandling:(id)handling universalLinksEnabled:(BOOL)enabled;
- (NUURLHandlerDelegate)delegate;
- (id)modifyURL:(id)l;
- (id)viewControllerForURL:(id)l;
- (void)addModifier:(id)modifier;
- (void)openURL:(id)l;
- (void)presentViewController:(id)controller animated:(BOOL)animated;
- (void)removeModifier:(id)modifier;
@end

@implementation NUURLHandler

- (NUURLHandler)initWithURLHandling:(id)handling universalLinksEnabled:(BOOL)enabled
{
  handlingCopy = handling;
  v13.receiver = self;
  v13.super_class = NUURLHandler;
  v8 = [(NUURLHandler *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_URLHandling, handling);
    v9->_universalLinksEnabled = enabled;
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    modifiers = v9->_modifiers;
    v9->_modifiers = v10;
  }

  return v9;
}

- (void)addModifier:(id)modifier
{
  if (modifier)
  {
    modifierCopy = modifier;
    modifiers = [(NUURLHandler *)self modifiers];
    [modifiers addObject:modifierCopy];
  }
}

- (void)removeModifier:(id)modifier
{
  if (modifier)
  {
    modifierCopy = modifier;
    modifiers = [(NUURLHandler *)self modifiers];
    [modifiers removeObject:modifierCopy];
  }
}

- (id)viewControllerForURL:(id)l
{
  v4 = [(NUURLHandler *)self modifyURL:l];
  if (v4)
  {
    previewViewControllerFactory = [(NUURLHandler *)self previewViewControllerFactory];
    v6 = [previewViewControllerFactory createViewControllerForURL:v4];

    if (v6)
    {
      v7 = v6;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)openURL:(id)l
{
  v27 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = [(NUURLHandler *)self modifyURL:lCopy];
  v6 = NUSharedLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    absoluteString = [v5 absoluteString];
    *buf = 138543362;
    v26 = absoluteString;
    _os_log_impl(&dword_25C2D6000, v6, OS_LOG_TYPE_DEFAULT, "Attempting to open modified URL %{public}@", buf, 0xCu);
  }

  delegate = [(NUURLHandler *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(NUURLHandler *)self delegate];
    [delegate2 URLHandler:self willOpenURL:v5];
  }

  objc_initWeak(buf, self);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __24__NUURLHandler_openURL___block_invoke;
  v22 = &unk_2799A34C0;
  objc_copyWeak(&v24, buf);
  v11 = v5;
  v23 = v11;
  v12 = MEMORY[0x25F883F30](&v19);
  v13 = [MEMORY[0x277CCACE0] componentsWithURL:v11 resolvingAgainstBaseURL:{0, v19, v20, v21, v22}];
  scheme = [v13 scheme];
  v15 = [scheme hasPrefix:@"http"];

  if ([(NUURLHandler *)self universalLinksEnabled]|| (v15 & 1) == 0)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v17 = dictionary;
    if (v15)
    {
      [dictionary setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D766C8]];
    }

    uRLHandling = [(NUURLHandler *)self URLHandling];
    [uRLHandling openURL:v11 options:v17 completion:v12];
  }

  else
  {
    v12[2](v12, 0);
  }

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
}

void __24__NUURLHandler_openURL___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = [WeakRetained webViewControllerFactory];
    v7 = [v5 createViewControllerForURL:*(a1 + 32)];

    if (v7)
    {
      [v7 setModalPresentationStyle:6];
      v6 = objc_loadWeakRetained((a1 + 40));
      [v6 presentViewController:v7 animated:1];
    }
  }
}

- (id)modifyURL:(id)l
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [l copy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  modifiers = [(NUURLHandler *)self modifiers];
  v6 = [modifiers copy];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      v11 = v4;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v14 + 1) + 8 * v10) modifyURL:v11];
        v4 = [v12 copy];

        ++v10;
        v11 = v4;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v4;
}

- (void)presentViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  delegate = [(NUURLHandler *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(NUURLHandler *)self delegate];
    [delegate2 URLHandler:self wantsToPresentViewController:controllerCopy animated:animatedCopy];
  }
}

- (NUURLHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end