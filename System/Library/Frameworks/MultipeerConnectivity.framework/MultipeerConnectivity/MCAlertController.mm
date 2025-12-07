@interface MCAlertController
- (void)dealloc;
- (void)dismiss;
- (void)show;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MCAlertController

- (void)show
{
  v3 = objc_alloc(MEMORY[0x277D75DA0]);
  [objc_msgSend(MEMORY[0x277D759A0] "mainScreen")];
  -[MCAlertController setAlertWindow:](self, "setAlertWindow:", [v3 initWithFrame:?]);
  [(UIWindow *)[(MCAlertController *)self alertWindow] setRootViewController:objc_alloc_init(MEMORY[0x277D75D28])];
  [(UIWindow *)[(MCAlertController *)self alertWindow] setWindowLevel:*MEMORY[0x277D772A8] + 1.0];
  [(UIWindow *)[(MCAlertController *)self alertWindow] makeKeyAndVisible];
  rootViewController = [(UIWindow *)[(MCAlertController *)self alertWindow] rootViewController];

  [(UIViewController *)rootViewController presentViewController:self animated:1 completion:0];
}

- (void)dismiss
{
  rootViewController = [(UIWindow *)[(MCAlertController *)self alertWindow] rootViewController];

  [(UIViewController *)rootViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MCAlertController;
  [(MCAlertController *)&v4 viewWillAppear:appear];
  if ([(MCAlertController *)self viewWillAppearHandler])
  {
    (*([(MCAlertController *)self viewWillAppearHandler]+ 16))();
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = MCAlertController;
  [(MCAlertController *)&v4 viewDidDisappear:disappear];
  [(UIWindow *)[(MCAlertController *)self alertWindow] setHidden:1];
  [(MCAlertController *)self setAlertWindow:0];
  if ([(MCAlertController *)self viewDidDisappearHandler])
  {
    (*([(MCAlertController *)self viewDidDisappearHandler]+ 16))();
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MCAlertController;
  [(MCAlertController *)&v3 dealloc];
}

@end