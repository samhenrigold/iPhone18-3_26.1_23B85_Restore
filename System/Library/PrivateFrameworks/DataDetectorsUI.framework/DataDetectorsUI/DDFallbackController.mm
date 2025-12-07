@interface DDFallbackController
- (DDFallbackController)initWithWindow:(id)window interactionDelegate:(id)delegate;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)loadView;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
@end

@implementation DDFallbackController

- (DDFallbackController)initWithWindow:(id)window interactionDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = DDFallbackController;
  windowCopy = window;
  v8 = [(DDFallbackController *)&v11 init];
  objc_storeWeak(&v8->_baseWindow, windowCopy);

  interactionDelegate = v8->_interactionDelegate;
  v8->_interactionDelegate = delegateCopy;

  return v8;
}

- (void)loadView
{
  v3 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v3 setOpaque:0];
  [v3 setBackgroundColor:0];
  [(DDFallbackController *)self setView:v3];
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v8 = MEMORY[0x277D75DA0];
  completionCopy = completion;
  controllerCopy = controller;
  v11 = [v8 alloc];
  WeakRetained = objc_loadWeakRetained(&self->_baseWindow);
  screen = [WeakRetained screen];
  mainScreen = screen;
  if (!screen)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
  }

  [mainScreen bounds];
  v15 = [v11 initWithFrame:?];
  ourWindow = self->_ourWindow;
  self->_ourWindow = v15;

  if (!screen)
  {
  }

  v17 = self->_ourWindow;
  v18 = objc_loadWeakRetained(&self->_baseWindow);
  [v18 windowLevel];
  [(UIWindow *)v17 setWindowLevel:v19 + 1.0];

  [(UIWindow *)v17 setOpaque:0];
  [(UIWindow *)v17 setBackgroundColor:0];
  [(UIWindow *)v17 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  view = [(DDFallbackController *)self view];
  [view setFrame:{v21, v23, v25, v27}];

  view2 = [(DDFallbackController *)self view];
  [(UIWindow *)v17 addSubview:view2];

  [(UIWindow *)v17 makeKeyAndVisible];
  [(UIWindow *)v17 beginDisablingInterfaceAutorotation];
  v30.receiver = self;
  v30.super_class = DDFallbackController;
  [(DDFallbackController *)&v30 presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__DDFallbackController_dismissViewControllerAnimated_completion___block_invoke;
  v9[3] = &unk_2782910B0;
  v9[4] = self;
  v10 = completionCopy;
  v8.receiver = self;
  v8.super_class = DDFallbackController;
  v7 = completionCopy;
  [(DDFallbackController *)&v8 dismissViewControllerAnimated:animatedCopy completion:v9];
}

void __65__DDFallbackController_dismissViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];

  v6 = *(*(a1 + 32) + 1000);
  [v6 setHidden:1];
  [v6 endDisablingInterfaceAutorotation];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1000);
  *(v3 + 1000) = 0;

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

@end