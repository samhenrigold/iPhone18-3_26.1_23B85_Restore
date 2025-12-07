@interface CACContainerViewController
- (UIView)viewAboveContainedViews;
- (void)installViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)loadView;
- (void)uninstallViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
@end

@implementation CACContainerViewController

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(CACContainerViewController *)self setView:v3];
}

- (UIView)viewAboveContainedViews
{
  viewAboveContainedViews = self->_viewAboveContainedViews;
  if (!viewAboveContainedViews)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    view = [(CACContainerViewController *)self view];
    [view bounds];
    v6 = [v4 initWithFrame:?];
    v7 = self->_viewAboveContainedViews;
    self->_viewAboveContainedViews = v6;

    [(UIView *)self->_viewAboveContainedViews setAutoresizingMask:18];
    view2 = [(CACContainerViewController *)self view];
    [view2 addSubview:self->_viewAboveContainedViews];

    viewAboveContainedViews = self->_viewAboveContainedViews;
  }

  return viewAboveContainedViews;
}

- (void)installViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v52 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  completionCopy = completion;
  viewControllers = [(CACContainerViewController *)self viewControllers];
  v11 = [viewControllers containsObject:controllerCopy];

  if (v11)
  {
    v13 = CACLogGeneral(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = controllerCopy;
      _os_log_impl(&dword_26B354000, v13, OS_LOG_TYPE_DEFAULT, "Attempted to reinstall view controller that was already installed: %@", &buf, 0xCu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }

  else
  {
    viewControllers2 = [(CACContainerViewController *)self viewControllers];

    if (!viewControllers2)
    {
      array = [MEMORY[0x277CBEB18] array];
      [(CACContainerViewController *)self setViewControllers:array];
    }

    view = [(CACContainerViewController *)self view];
    [view bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    view2 = [controllerCopy view];
    [view2 setFrame:{v18, v20, v22, v24}];

    view3 = [controllerCopy view];
    [view3 setAutoresizingMask:18];

    [(CACContainerViewController *)self addChildViewController:controllerCopy];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v50 = 0x2020000000;
    v51 = 0;
    viewControllers3 = [(CACContainerViewController *)self viewControllers];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __72__CACContainerViewController_installViewController_animated_completion___block_invoke;
    v45[3] = &unk_279CEC750;
    v28 = controllerCopy;
    v46 = v28;
    selfCopy = self;
    p_buf = &buf;
    [viewControllers3 enumerateObjectsUsingBlock:v45];

    if ((*(*(&buf + 1) + 24) & 1) == 0)
    {
      viewControllers4 = [(CACContainerViewController *)self viewControllers];
      [viewControllers4 addObject:v28];

      if (self->_viewAboveContainedViews)
      {
        view4 = [(CACContainerViewController *)self view];
        view5 = [v28 view];
        [view4 insertSubview:view5 belowSubview:self->_viewAboveContainedViews];
      }

      else
      {
        view4 = [(CACContainerViewController *)self view];
        view5 = [v28 view];
        [view4 addSubview:view5];
      }
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__CACContainerViewController_installViewController_animated_completion___block_invoke_2;
    aBlock[3] = &unk_279CEB430;
    v32 = v28;
    v42 = v32;
    selfCopy2 = self;
    v44 = completionCopy;
    v33 = _Block_copy(aBlock);
    v34 = v33;
    if (animatedCopy)
    {
      view6 = [v32 view];
      [view6 setAlpha:0.0];

      v36 = MEMORY[0x277D75D18];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __72__CACContainerViewController_installViewController_animated_completion___block_invoke_3;
      v39[3] = &unk_279CEB2D0;
      v40 = v32;
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __72__CACContainerViewController_installViewController_animated_completion___block_invoke_4;
      v37[3] = &unk_279CEC388;
      v38 = v34;
      [v36 animateWithDuration:v39 animations:v37 completion:0.3];
    }

    else
    {
      (*(v33 + 2))(v33);
    }

    _Block_object_dispose(&buf, 8);
  }
}

void __72__CACContainerViewController_installViewController_animated_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v7 = [v12 zOrder];
  if (v7 > [*(a1 + 32) zOrder])
  {
    v8 = [*(a1 + 40) viewControllers];
    [v8 insertObject:*(a1 + 32) atIndex:a3];

    v9 = [*(a1 + 40) view];
    v10 = [*(a1 + 32) view];
    v11 = [v12 view];
    [v9 insertSubview:v10 belowSubview:v11];

    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }
}

uint64_t __72__CACContainerViewController_installViewController_animated_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) didMoveToParentViewController:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __72__CACContainerViewController_installViewController_animated_completion___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

- (void)uninstallViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v30 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  completionCopy = completion;
  v10 = CACLogGeneral(completionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v29 = controllerCopy;
    _os_log_impl(&dword_26B354000, v10, OS_LOG_TYPE_INFO, "Uninstalling view controller... %@", buf, 0xCu);
  }

  viewControllers = [(CACContainerViewController *)self viewControllers];
  v12 = [viewControllers containsObject:controllerCopy];

  if (v12)
  {
    [controllerCopy willMoveToParentViewController:0];
    viewControllers2 = [(CACContainerViewController *)self viewControllers];
    [viewControllers2 removeObject:controllerCopy];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__CACContainerViewController_uninstallViewController_animated_completion___block_invoke;
    aBlock[3] = &unk_279CEC778;
    v15 = controllerCopy;
    v25 = v15;
    v26 = completionCopy;
    v27 = animatedCopy;
    v16 = _Block_copy(aBlock);
    v17 = v16;
    if (animatedCopy)
    {
      v18 = MEMORY[0x277D75D18];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __74__CACContainerViewController_uninstallViewController_animated_completion___block_invoke_3;
      v22[3] = &unk_279CEB2D0;
      v23 = v15;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __74__CACContainerViewController_uninstallViewController_animated_completion___block_invoke_4;
      v20[3] = &unk_279CEC388;
      v21 = v17;
      [v18 animateWithDuration:v22 animations:v20 completion:0.3];
    }

    else
    {
      (*(v16 + 2))(v16);
    }
  }

  else
  {
    v19 = CACLogGeneral(v13);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = controllerCopy;
      _os_log_impl(&dword_26B354000, v19, OS_LOG_TYPE_DEFAULT, "Attempted to uninstall overlay view controller that was not installed: %@", buf, 0xCu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

void __74__CACContainerViewController_uninstallViewController_animated_completion___block_invoke(uint64_t a1)
{
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __74__CACContainerViewController_uninstallViewController_animated_completion___block_invoke_2;
  v7 = &unk_279CEB3E0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v2 = _Block_copy(&v4);
  v3 = [*(a1 + 32) presentedViewController];

  if (v3)
  {
    [*(a1 + 32) dismissViewControllerAnimated:*(a1 + 48) completion:v2];
  }

  else
  {
    v2[2](v2);
  }
}

uint64_t __74__CACContainerViewController_uninstallViewController_animated_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];

  [*(a1 + 32) removeFromParentViewController];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __74__CACContainerViewController_uninstallViewController_animated_completion___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:0.0];
}

@end