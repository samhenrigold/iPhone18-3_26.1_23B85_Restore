@interface SUSKUIStorePageViewController
- (BOOL)iPhoneProductPage:(id)page shouldOpenItem:(id)item;
- (BOOL)iPhoneProductPage:(id)page shouldOpenURL:(id)l;
- (SUSKUIStorePageViewController)initWithSection:(id)section;
- (void)_loadClientContextWithCompletionBlock:(id)block;
- (void)_setActiveChildViewController:(id)controller;
- (void)_showIPhoneProductPageWithPage:(id)page clientContext:(id)context;
- (void)_showProductPageWithPageDictionary:(id)dictionary;
- (void)_showRemoteViewControllerWithPageDictionary:(id)dictionary;
- (void)_showStorePageWithPageDictionary:(id)dictionary;
- (void)dealloc;
- (void)dismissAnimated:(BOOL)animated;
- (void)loadView;
- (void)productViewController:(id)controller presentProductWithRequest:(id)request animated:(BOOL)animated;
- (void)reloadWithStorePage:(id)page forURL:(id)l;
@end

@implementation SUSKUIStorePageViewController

- (SUSKUIStorePageViewController)initWithSection:(id)section
{
  v6.receiver = self;
  v6.super_class = SUSKUIStorePageViewController;
  v3 = [(SUViewController *)&v6 initWithSection:section];
  v4 = v3;
  if (v3)
  {
    [(SUSKUIStorePageViewController *)v3 setContainmentSupport:1];
  }

  return v4;
}

- (void)dealloc
{
  [(SUUIIPhoneProductPageViewController *)self->_iphoneProductPageViewController setDelegate:0];

  [(SKStoreProductViewController *)self->_remoteProductViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SUSKUIStorePageViewController;
  [(SUViewController *)&v3 dealloc];
}

- (void)reloadWithStorePage:(id)page forURL:(id)l
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    page = [MEMORY[0x1E696ACB0] JSONObjectWithData:page options:0 error:0];
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) != 0 && page)
  {
    v8 = ISUIMobileStoreUIFramework(isKindOfClass, v7);
    if ([objc_msgSend(page objectForKey:{ISUIVWeakLinkedStringConstantForString("SUUIProtocolKeyPageType", v8)), "isEqualToString:", @"software"}])
    {

      [(SUSKUIStorePageViewController *)self _showProductPageWithPageDictionary:page];
    }

    else
    {

      [(SUSKUIStorePageViewController *)self _showStorePageWithPageDictionary:page];
    }
  }
}

- (void)dismissAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(SKStoreProductViewController *)self->_remoteProductViewController presentingViewController])
  {
    v5 = self->_remoteProductViewController;
    [(SKStoreProductViewController *)self->_remoteProductViewController setDelegate:0];

    self->_remoteProductViewController = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__SUSKUIStorePageViewController_dismissAnimated___block_invoke;
    v6[3] = &unk_1E8165578;
    v7 = animatedCopy;
    v6[4] = v5;
    v6[5] = self;
    [(SKStoreProductViewController *)v5 dismissViewControllerAnimated:animatedCopy completion:v6];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SUSKUIStorePageViewController;
    [(UIViewController *)&v8 dismissAnimated:animatedCopy];
  }
}

id __49__SUSKUIStorePageViewController_dismissAnimated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4.receiver = *(a1 + 40);
  v4.super_class = SUSKUIStorePageViewController;
  return objc_msgSendSuper2(&v4, sel_dismissAnimated_, v2);
}

- (void)loadView
{
  v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v5 setBackgroundColor:{objc_msgSend(MEMORY[0x1E69DC888], "systemBackgroundColor")}];
  activeChildViewController = self->_activeChildViewController;
  if (activeChildViewController)
  {
    view = [(UIViewController *)activeChildViewController view];
    [(UIView *)view setAutoresizingMask:18];
    [v5 bounds];
    [(UIView *)view setFrame:?];
    [v5 addSubview:view];
  }

  [(SUSKUIStorePageViewController *)self setView:v5];
}

- (BOOL)iPhoneProductPage:(id)page shouldOpenItem:(id)item
{
  v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:{objc_msgSend(item, "productPageURLString")}];
  v5 = UIITunesStoreResolvedURLForHTTPURL();
  if (v5)
  {
    v4 = v5;
  }

  [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  return 0;
}

- (BOOL)iPhoneProductPage:(id)page shouldOpenURL:(id)l
{
  v5 = UIITunesStoreResolvedURLForHTTPURL();
  if (v5)
  {
    l = v5;
  }

  [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  return 0;
}

- (void)productViewController:(id)controller presentProductWithRequest:(id)request animated:(BOOL)animated
{
  if ([request productURL])
  {
    v6 = [objc_msgSend(MEMORY[0x1E6963608] "defaultWorkspace")];
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];

    [mEMORY[0x1E69DC668] openURL:v6];
  }
}

- (void)_loadClientContextWithCompletionBlock:(id)block
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = ISUIMobileStoreUIFramework(self, a2);
  v5 = ISUIWeakLinkedClassForString(&cfstr_Suuiclientcont.isa, v4);
  defaultContext = [v5 defaultContext];
  if (defaultContext)
  {
    v8 = *(block + 2);

    v8(block, defaultContext);
  }

  else
  {
    v9 = ISUIMobileStoreUIFramework(0, v7);
    v10 = objc_alloc_init(ISUIWeakLinkedClassForString(&cfstr_Suuireloadconf.isa, v9));
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __71__SUSKUIStorePageViewController__loadClientContextWithCompletionBlock___block_invoke;
    v19[3] = &unk_1E8167428;
    v19[4] = v5;
    v19[5] = block;
    [v10 setOutputBlock:v19];
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      LODWORD(v13) = shouldLog | 2;
    }

    else
    {
      LODWORD(v13) = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v13 = v13;
    }

    else
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v15 = objc_opt_class();
      v20 = 138412290;
      v21 = v15;
      v16 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_1C21AF000, oSLogObject, 2, "%@: Loading missing client context", &v20, 12);
      if (v16)
      {
        v17 = v16;
        [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:4];
        free(v17);
        SSFileLog();
      }
    }

    v18 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    [v18 addOperation:v10];
  }
}

void __71__SUSKUIStorePageViewController__loadClientContextWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__SUSKUIStorePageViewController__loadClientContextWithCompletionBlock___block_invoke_2;
  block[3] = &unk_1E8165A68;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  block[5] = a2;
  block[6] = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __71__SUSKUIStorePageViewController__loadClientContextWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  v2 = [objc_alloc(*(a1 + 32)) initWithConfigurationDictionary:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
}

- (void)_setActiveChildViewController:(id)controller
{
  activeChildViewController = self->_activeChildViewController;
  if (activeChildViewController != controller)
  {
    if ([(UIViewController *)activeChildViewController isViewLoaded])
    {
      [[(UIViewController *)self->_activeChildViewController view] removeFromSuperview];
    }

    [(UIViewController *)self->_activeChildViewController removeFromParentViewController];

    controllerCopy = controller;
    self->_activeChildViewController = controllerCopy;
    if (controllerCopy)
    {
      [(SUSKUIStorePageViewController *)self addChildViewController:controllerCopy];
      if ([(SUSKUIStorePageViewController *)self isViewLoaded])
      {
        view = [(SUSKUIStorePageViewController *)self view];
        view2 = [(UIViewController *)self->_activeChildViewController view];
        [(UIView *)view2 setAutoresizingMask:18];
        [view bounds];
        [(UIView *)view2 setFrame:?];

        [view addSubview:view2];
      }
    }
  }
}

- (void)_showIPhoneProductPageWithPage:(id)page clientContext:(id)context
{
  [(SUUIIPhoneProductPageViewController *)self->_iphoneProductPageViewController setDelegate:0];
  [(SUUIIPhoneProductPageViewController *)self->_iphoneProductPageViewController _setExistingNavigationItem:0];
  [(SUUIIPhoneProductPageViewController *)self->_iphoneProductPageViewController removeFromParentViewController];

  self->_iphoneProductPageViewController = 0;
  v9 = ISUIMobileStoreUIFramework(v7, v8);
  v10 = [objc_alloc(ISUIWeakLinkedClassForString(&cfstr_Suuiiphoneprod.isa v9))];
  self->_iphoneProductPageViewController = v10;
  [(SUUIIPhoneProductPageViewController *)v10 setDelegate:self];
  [(SUUIIPhoneProductPageViewController *)self->_iphoneProductPageViewController _setExistingNavigationItem:[(SUViewController *)self navigationItem]];
  [(SUUIIPhoneProductPageViewController *)self->_iphoneProductPageViewController setClientContext:context];
  iphoneProductPageViewController = self->_iphoneProductPageViewController;

  [(SUSKUIStorePageViewController *)self _setActiveChildViewController:iphoneProductPageViewController];
}

- (void)_showProductPageWithPageDictionary:(id)dictionary
{
  v5 = _UIApplicationUsesLegacyUI();
  if (v5)
  {

    [(SUSKUIStorePageViewController *)self _showRemoteViewControllerWithPageDictionary:dictionary];
  }

  else
  {
    v7 = ISUIMobileStoreUIFramework(v5, v6);
    v8 = [objc_msgSend(ISUIWeakLinkedClassForString(&cfstr_Suuiproductpag.isa v7)];
    if (v8)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __68__SUSKUIStorePageViewController__showProductPageWithPageDictionary___block_invoke;
      v9[3] = &unk_1E8167450;
      v9[4] = self;
      v9[5] = v8;
      [(SUSKUIStorePageViewController *)self _loadClientContextWithCompletionBlock:v9];
    }
  }
}

id *__68__SUSKUIStorePageViewController__showProductPageWithPageDictionary___block_invoke(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] _showIPhoneProductPageWithPage:result[5] clientContext:a2];
  }

  return result;
}

- (void)_showRemoteViewControllerWithPageDictionary:(id)dictionary
{
  [(SKStoreProductViewController *)self->_remoteProductViewController setDelegate:0];
  [(SKStoreProductViewController *)self->_remoteProductViewController dismissViewControllerAnimated:0 completion:0];

  self->_remoteProductViewController = 0;
  v5 = objc_alloc_init(ISWeakLinkedClassForString());
  self->_remoteProductViewController = v5;
  [(SKStoreProductViewController *)v5 setDelegate:self];
  remoteProductViewController = self->_remoteProductViewController;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__SUSKUIStorePageViewController__showRemoteViewControllerWithPageDictionary___block_invoke;
  v7[3] = &unk_1E8167478;
  v7[4] = self;
  [(SKStoreProductViewController *)remoteProductViewController loadProductWithPageDictionary:dictionary completionBlock:v7];
}

void *__77__SUSKUIStorePageViewController__showRemoteViewControllerWithPageDictionary___block_invoke(uint64_t a1, int a2)
{
  result = *(a1 + 32);
  if (result)
  {
    if (a2 && (v3 = result[144]) != 0)
    {
      return [result presentViewController:v3 animated:1 completion:0];
    }

    else
    {
      return [result dismissAnimated:1];
    }
  }

  return result;
}

- (void)_showStorePageWithPageDictionary:(id)dictionary
{
  v5 = ISUIMobileStoreUIFramework(self, a2);
  v6 = [objc_msgSend(ISUIWeakLinkedClassForString(&cfstr_Suuistorepaged.isa v5)];
  if (v6)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __66__SUSKUIStorePageViewController__showStorePageWithPageDictionary___block_invoke;
    v7[3] = &unk_1E8167450;
    v7[4] = self;
    v7[5] = v6;
    [(SUSKUIStorePageViewController *)self _loadClientContextWithCompletionBlock:v7];
  }
}

void *__66__SUSKUIStorePageViewController__showStorePageWithPageDictionary___block_invoke(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = *(result[4] + 1160);
    if (!v3)
    {
      v5 = ISUIMobileStoreUIFramework(0, a2);
      *(v2[4] + 1160) = objc_alloc_init(ISUIWeakLinkedClassForString(&cfstr_Suuistorepagev.isa, v5));
      [*(v2[4] + 1160) setClientContext:a2];
      v3 = *(v2[4] + 1160);
    }

    [v3 setStorePage:v2[5]];
    v6 = v2[4];
    v7 = v6[145];

    return [v6 _setActiveChildViewController:v7];
  }

  return result;
}

@end