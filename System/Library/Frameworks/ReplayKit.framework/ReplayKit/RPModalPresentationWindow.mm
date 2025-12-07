@interface RPModalPresentationWindow
- (RPModalPresentationWindow)init;
- (id)_presentationViewController;
- (id)mainWindow;
- (void)dealloc;
- (void)presentAlertController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
@end

@implementation RPModalPresentationWindow

- (RPModalPresentationWindow)init
{
  v8.receiver = self;
  v8.super_class = RPModalPresentationWindow;
  v2 = [(UIApplicationRotationFollowingWindow *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(RPModalPresentationWindow *)v2 setOpaque:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(RPModalPresentationWindow *)v3 setBackgroundColor:clearColor];

    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [(RPModalPresentationWindow *)v3 setScreen:mainScreen];

    [(RPModalPresentationWindow *)v3 setWindowLevel:*MEMORY[0x277D772A8]];
    [(RPModalPresentationWindow *)v3 setHidden:1];
    mainWindow = [(RPModalPresentationWindow *)v3 mainWindow];
    [mainWindow beginDisablingInterfaceAutorotation];
  }

  return v3;
}

- (void)dealloc
{
  mainWindow = [(RPModalPresentationWindow *)self mainWindow];
  [mainWindow endDisablingInterfaceAutorotation];

  v4.receiver = self;
  v4.super_class = RPModalPresentationWindow;
  [(RPModalPresentationWindow *)&v4 dealloc];
}

- (id)mainWindow
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  windows = [mEMORY[0x277D75128] windows];
  firstObject = [windows firstObject];

  return firstObject;
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  _presentationViewController = [(RPModalPresentationWindow *)self _presentationViewController];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__RPModalPresentationWindow_presentViewController_animated_completion___block_invoke;
  v12[3] = &unk_278B624E8;
  v13 = completionCopy;
  v11 = completionCopy;
  [_presentationViewController presentViewController:controllerCopy animated:animatedCopy completion:v12];
}

uint64_t __71__RPModalPresentationWindow_presentViewController_animated_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)presentAlertController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  _presentationViewController = [(RPModalPresentationWindow *)self _presentationViewController];
  presentedViewController = [_presentationViewController presentedViewController];
  if (presentedViewController)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, presentedViewController == controllerCopy);
    }
  }

  else
  {
    [(RPModalPresentationWindow *)self presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
  }
}

- (id)_presentationViewController
{
  rootViewController = [(RPModalPresentationWindow *)self rootViewController];

  if (!rootViewController)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75150]);
    [v4 setSizesWindowToScene:1];
    [(RPModalPresentationWindow *)self setRootViewController:v4];
  }

  return [(RPModalPresentationWindow *)self rootViewController];
}

@end