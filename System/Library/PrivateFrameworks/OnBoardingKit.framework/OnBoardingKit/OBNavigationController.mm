@interface OBNavigationController
- (unint64_t)supportedInterfaceOrientations;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)setViewControllers:(id)controllers;
- (void)viewDidLoad;
@end

@implementation OBNavigationController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = OBNavigationController;
  [(OBNavigationController *)&v4 viewDidLoad];
  navigationBar = [(OBNavigationController *)self navigationBar];
  [navigationBar _setHidesShadow:1];
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  controllerCopy = controller;
  navigationItem = [controllerCopy navigationItem];
  [navigationItem ob_applyAutomaticScrollToEdgeBehavior];

  v8.receiver = self;
  v8.super_class = OBNavigationController;
  [(OBNavigationController *)&v8 pushViewController:controllerCopy animated:animatedCopy];
}

- (void)setViewControllers:(id)controllers
{
  v16 = *MEMORY[0x1E69E9840];
  controllersCopy = controllers;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [controllersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(controllersCopy);
        }

        navigationItem = [*(*(&v11 + 1) + 8 * v8) navigationItem];
        [navigationItem ob_applyAutomaticScrollToEdgeBehavior];

        ++v8;
      }

      while (v6 != v8);
      v6 = [controllersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10.receiver = self;
  v10.super_class = OBNavigationController;
  [(OBNavigationController *)&v10 setViewControllers:controllersCopy];
}

- (unint64_t)supportedInterfaceOrientations
{
  result = self->_supportedInterfaceOrientations;
  if (!result)
  {
    presentingViewController = [(OBNavigationController *)self presentingViewController];

    if (presentingViewController)
    {
      presentingViewController2 = [(OBNavigationController *)self presentingViewController];
      supportedInterfaceOrientations = [presentingViewController2 supportedInterfaceOrientations];

      return supportedInterfaceOrientations;
    }

    else
    {
      v7.receiver = self;
      v7.super_class = OBNavigationController;
      return [(OBNavigationController *)&v7 supportedInterfaceOrientations];
    }
  }

  return result;
}

@end