@interface FANavigationController
- (BOOL)_isEmpty;
- (FANavigationControllerDelegate)familyDelegate;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)setViewControllers:(id)controllers animated:(BOOL)animated;
@end

@implementation FANavigationController

- (BOOL)_isEmpty
{
  viewControllers = [(FANavigationController *)self viewControllers];
  v3 = [viewControllers count] == 0;

  return v3;
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v9[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if ([(FANavigationController *)self _isEmpty])
  {
    v9[0] = controllerCopy;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [(FANavigationController *)self setViewControllers:v7 animated:0];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = FANavigationController;
    [(FANavigationController *)&v8 pushViewController:controllerCopy animated:animatedCopy];
  }
}

- (void)setViewControllers:(id)controllers animated:(BOOL)animated
{
  animatedCopy = animated;
  controllersCopy = controllers;
  if ([(FANavigationController *)self _isEmpty])
  {
    v7 = [controllersCopy count];
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = animatedCopy;
    }

    v11.receiver = self;
    v11.super_class = FANavigationController;
    [(FANavigationController *)&v11 setViewControllers:controllersCopy animated:v8];
    if (v7)
    {
      familyDelegate = [(FANavigationController *)self familyDelegate];
      firstObject = [controllersCopy firstObject];
      [familyDelegate navigationController:self didPresentInitialViewController:firstObject];
    }
  }

  else
  {
    v11.receiver = self;
    v11.super_class = FANavigationController;
    [(FANavigationController *)&v11 setViewControllers:controllersCopy animated:animatedCopy];
  }
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  presentingViewController = [(FANavigationController *)self presentingViewController];

  if (presentingViewController)
  {
    v12.receiver = self;
    v12.super_class = FANavigationController;
    [(FANavigationController *)&v12 presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
  }

  else
  {
    familyDelegate = [(FANavigationController *)self familyDelegate];
    [familyDelegate navigationController:self presentViewController:controllerCopy];
  }
}

- (FANavigationControllerDelegate)familyDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_familyDelegate);

  return WeakRetained;
}

@end