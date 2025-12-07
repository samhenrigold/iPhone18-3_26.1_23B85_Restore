@interface DYPlaybackViewController
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation DYPlaybackViewController

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v10.receiver = self;
  v10.super_class = DYPlaybackViewController;
  [(DYPlaybackViewController *)&v10 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__DYPlaybackViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9[3] = &unk_279665010;
  v9[4] = self;
  v8 = MEMORY[0x2530352B0](v9);
  [coordinatorCopy animateAlongsideTransition:? completion:?];
}

void __79__DYPlaybackViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) view];
  v3 = [v2 layer];
  if (v3)
  {
    [&v15 transform];
  }

  else
  {
    memset(&v15, 0, sizeof(v15));
  }

  CATransform3DInvert(&v16, &v15);
  v4 = [*(a1 + 32) view];
  v5 = [v4 layer];
  v15 = v16;
  [v5 setSublayerTransform:?];

  v6 = [*(a1 + 32) view];
  v7 = [v6 layer];
  v8 = [v7 sublayers];

  v9 = [v8 countByEnumeratingWithState:? objects:? count:?];
  if (v9)
  {
    v10 = MEMORY[0];
    do
    {
      for (i = 0; i != v9; i = (i + 1))
      {
        if (MEMORY[0] != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(8 * i);
        v13 = [*(a1 + 32) view];
        v14 = [v13 layer];
        [v14 bounds];

        [v12 setPosition:?];
      }

      v9 = [v8 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v9);
  }
}

@end