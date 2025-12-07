@interface QLPageViewController
- (QLPageViewController)init;
- (QLPageViewController)initWithCoder:(id)coder;
- (QLPageViewController)initWithTransitionStyle:(int64_t)style navigationOrientation:(int64_t)orientation options:(id)options;
- (QLPageViewControllerDataSource)indexedDataSource;
- (UIScrollView)scrollView;
- (UIScrollViewDelegate)scrollViewDelegate;
- (UIViewController)currentPage;
- (id)_cachedViewControllerAtIndex:(unint64_t)index offset:(int64_t)offset;
- (id)_retrieveAndStoreViewControllerAtIndex:(unint64_t)index offset:(unint64_t)offset;
- (id)_viewControllerAtIndex:(unint64_t)index offset:(int64_t)offset;
- (id)delegate;
- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController;
- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController;
- (unint64_t)_indexOfViewController:(id)controller;
- (void)_applyParallaxEffectWithTransitionProgress:(double)progress;
- (void)_loadAndCacheViewControllersBeforeAndAfterIndex:(int64_t)index;
- (void)_rearrangeCachedViewControllersWithNewCurrentPageIndex:(int64_t)index;
- (void)_setCurrentPageIndex:(unint64_t)index direction:(int64_t)direction animated:(BOOL)animated completion:(id)completion;
- (void)_setUp;
- (void)_setViewControllers:(id)controllers direction:(int64_t)direction animated:(BOOL)animated completion:(id)completion;
- (void)_unsetParallaxEffect;
- (void)clearInternalCache;
- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed;
- (void)pageViewController:(id)controller willTransitionToViewControllers:(id)controllers;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setCurrentPageIndex:(unint64_t)index animated:(BOOL)animated;
- (void)setDataSource:(id)source;
- (void)setDelegate:(id)delegate;
- (void)setViewControllers:(id)controllers direction:(int64_t)direction animated:(BOOL)animated completion:(id)completion;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation QLPageViewController

- (QLPageViewController)init
{
  v5.receiver = self;
  v5.super_class = QLPageViewController;
  v2 = [(QLPageViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(QLPageViewController *)v2 _setUp];
  }

  return v3;
}

- (QLPageViewController)initWithTransitionStyle:(int64_t)style navigationOrientation:(int64_t)orientation options:(id)options
{
  v8 = *MEMORY[0x277D76DB0];
  optionsCopy = options;
  v10 = [optionsCopy objectForKeyedSubscript:v8];
  [v10 floatValue];
  self->_interPageSpacing = v11;

  v14.receiver = self;
  v14.super_class = QLPageViewController;
  v12 = [(QLPageViewController *)&v14 initWithTransitionStyle:style navigationOrientation:orientation options:optionsCopy];

  [(QLPageViewController *)v12 _setUp];
  return v12;
}

- (void)setCurrentPageIndex:(unint64_t)index animated:(BOOL)animated
{
  if (!self->_isTransitioning)
  {
    animatedCopy = animated;
    scrollView = [(QLPageViewController *)self scrollView];
    [scrollView setUserInteractionEnabled:0];

    v8 = [(QLPageViewController *)self currentPageIndex]>= index;
    currentPageIndex = [(QLPageViewController *)self currentPageIndex];
    pages = self->_pages;
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:currentPageIndex];
    v12 = [(NSMapTable *)pages objectForKey:v11];

    v13 = self->_pages;
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:index];
    v15 = [(NSMapTable *)v13 objectForKey:v14];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = [(QLPageViewController *)self _viewControllerAtIndex:index offset:0];
    }

    v18 = v17;

    if (!v12)
    {
      currentPageIndex = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (currentPageIndex != index)
    {
      delegate = [(QLPageViewController *)self delegate];
      v20 = objc_opt_respondsToSelector();

      if (v20)
      {
        delegate2 = [(QLPageViewController *)self delegate];
        [delegate2 pageViewController:self willTransitionFromPage:v12 withIndex:currentPageIndex toPage:v18 withIndex:index animated:animatedCopy];
      }
    }

    self->_isTransitioning = 1;
    objc_initWeak(&location, self);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __53__QLPageViewController_setCurrentPageIndex_animated___block_invoke;
    v24[3] = &unk_278B58060;
    objc_copyWeak(v27, &location);
    v27[1] = currentPageIndex;
    v27[2] = index;
    v24[4] = self;
    v22 = v12;
    v25 = v22;
    v23 = v18;
    v26 = v23;
    v28 = animatedCopy;
    [(QLPageViewController *)self _setCurrentPageIndex:index direction:v8 animated:animatedCopy completion:v24];

    objc_destroyWeak(v27);
    objc_destroyWeak(&location);
  }
}

void __53__QLPageViewController_setCurrentPageIndex_animated___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _unsetParallaxEffect];

  v5 = objc_loadWeakRetained((a1 + 56));
  v6 = [v5 scrollView];
  [v6 setUserInteractionEnabled:1];

  if (a2)
  {
    if (*(a1 + 64) != *(a1 + 72))
    {
      v7 = [*(a1 + 32) delegate];
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        v11 = objc_loadWeakRetained((a1 + 56));
        v9 = [v11 delegate];
        v10 = objc_loadWeakRetained((a1 + 56));
        [v9 pageViewController:v10 didTransitionFromPage:*(a1 + 40) withIndex:*(a1 + 64) toPage:*(a1 + 48) withIndex:*(a1 + 72) animated:*(a1 + 80)];
      }
    }
  }
}

- (UIViewController)currentPage
{
  viewControllers = [(QLPageViewController *)self viewControllers];
  firstObject = [viewControllers firstObject];

  return firstObject;
}

- (void)clearInternalCache
{
  self->_currentPageIndex = 0x7FFFFFFFFFFFFFFFLL;
  self->_currentPageIndexForAppliedParallaxEffect = 0x7FFFFFFFFFFFFFFFLL;
  [(NSMapTable *)self->_pages removeAllObjects];
}

- (UIScrollView)scrollView
{
  view = [(QLPageViewController *)self view];
  subviews = [view subviews];
  firstObject = [subviews firstObject];

  return firstObject;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_definedDelegate, delegateCopy);
  [(QLDelegateProxy *)self->_pageViewControllerDelegateProxy setSecondDelegate:delegateCopy];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_definedDelegate);

  return WeakRetained;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = QLPageViewController;
  [(QLPageViewController *)&v4 viewWillAppear:appear];
  [(QLPageViewController *)self _unsetParallaxEffect];
}

- (void)_setUp
{
  self->_currentPageIndex = 0x7FFFFFFFFFFFFFFFLL;
  self->_currentPageIndexForAppliedParallaxEffect = 0x7FFFFFFFFFFFFFFFLL;
  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  pages = self->_pages;
  self->_pages = strongToStrongObjectsMapTable;

  v5 = [QLDelegateProxy alloc];
  scrollViewDelegateProxy = self->_scrollViewDelegateProxy;
  self->_scrollViewDelegateProxy = v5;

  [(QLDelegateProxy *)self->_scrollViewDelegateProxy setFirstDelegate:self];
  view = [(QLPageViewController *)self view];
  subviews = [view subviews];
  firstObject = [subviews firstObject];
  scrollView = self->_scrollView;
  self->_scrollView = firstObject;

  [(UIScrollView *)self->_scrollView setDelegate:self->_scrollViewDelegateProxy];
  [(UIScrollView *)self->_scrollView _setAutoScrollEnabled:0];
  v11 = [QLDelegateProxy alloc];
  pageViewControllerDelegateProxy = self->_pageViewControllerDelegateProxy;
  self->_pageViewControllerDelegateProxy = v11;

  [(QLDelegateProxy *)self->_pageViewControllerDelegateProxy setFirstDelegate:self];
  v13 = self->_pageViewControllerDelegateProxy;
  v14.receiver = self;
  v14.super_class = QLPageViewController;
  [(QLPageViewController *)&v14 setDelegate:v13];
  [(QLPageViewController *)self setDataSource:self];
}

- (void)_loadAndCacheViewControllersBeforeAndAfterIndex:(int64_t)index
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [(QLPageViewController *)self _viewControllerAtIndex:index offset:-1];
  v6 = [(QLPageViewController *)self _viewControllerAtIndex:index offset:1];
}

- (void)_rearrangeCachedViewControllersWithNewCurrentPageIndex:(int64_t)index
{
  v29 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  keyEnumerator = [(NSMapTable *)self->_pages keyEnumerator];
  v7 = [keyEnumerator countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        longValue = [v11 longValue];
        v13 = longValue - index;
        if (longValue - index < 0)
        {
          v13 = index - longValue;
        }

        if (v13 >= 2)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [keyEnumerator countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(NSMapTable *)self->_pages removeObjectForKey:*(*(&v19 + 1) + 8 * j), v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v16);
  }
}

- (unint64_t)_indexOfViewController:(id)controller
{
  v19 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_pages;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(NSMapTable *)self->_pages objectForKey:v10, v14];

        if (v11 == controllerCopy)
        {
          unsignedIntegerValue = [v10 unsignedIntegerValue];
          goto LABEL_11;
        }
      }

      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
LABEL_11:

  return unsignedIntegerValue;
}

- (id)_cachedViewControllerAtIndex:(unint64_t)index offset:(int64_t)offset
{
  if ((offset & 0x8000000000000000) == 0 || (v4 = 0, -offset <= index))
  {
    pages = self->_pages;
    index = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:offset + index];
    v4 = [(NSMapTable *)pages objectForKey:index];
  }

  return v4;
}

- (id)_viewControllerAtIndex:(unint64_t)index offset:(int64_t)offset
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if ((offset & 0x8000000000000000) == 0 || (v7 = 0, -offset <= index))
  {
    pages = self->_pages;
    index = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:offset + index];
    v10 = [(NSMapTable *)pages objectForKey:index];

    if (!v10)
    {
      v11 = [(QLPageViewController *)self _retrieveAndStoreViewControllerAtIndex:index offset:offset];
    }

    v12 = self->_pages;
    index2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:offset + index];
    v7 = [(NSMapTable *)v12 objectForKey:index2];
  }

  return v7;
}

- (id)_retrieveAndStoreViewControllerAtIndex:(unint64_t)index offset:(unint64_t)offset
{
  indexedDataSource = [(QLPageViewController *)self indexedDataSource];
  index = [indexedDataSource pageViewController:self viewControllerAtIndex:offset + index];

  if (index)
  {
    pages = self->_pages;
    index2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:offset + index];
    [(NSMapTable *)pages setObject:index forKey:index2];
  }

  return index;
}

- (void)_setCurrentPageIndex:(unint64_t)index direction:(int64_t)direction animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v26[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v11 = [(QLPageViewController *)self _viewControllerAtIndex:index offset:0];
  if (v11)
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __75__QLPageViewController__setCurrentPageIndex_direction_animated_completion___block_invoke;
    aBlock[3] = &unk_278B58088;
    objc_copyWeak(v23, &location);
    aBlock[4] = self;
    v23[1] = index;
    v12 = _Block_copy(aBlock);
    v13 = v12;
    if (!animatedCopy)
    {
      (*(v12 + 2))(v12);
    }

    v26[0] = v11;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __75__QLPageViewController__setCurrentPageIndex_direction_animated_completion___block_invoke_2;
    v18[3] = &unk_278B580B0;
    v21 = animatedCopy;
    v15 = v13;
    v19 = v15;
    v20 = completionCopy;
    [(QLPageViewController *)self _setViewControllers:v14 direction:direction animated:animatedCopy completion:v18];

    objc_destroyWeak(v23);
    objc_destroyWeak(&location);
  }

  else
  {
    v16 = objc_opt_new();
    v25 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    [(QLPageViewController *)self _setViewControllers:v17 direction:direction animated:animatedCopy completion:&__block_literal_global_5];
  }
}

void *__75__QLPageViewController__setCurrentPageIndex_direction_animated_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained willChangeValueForKey:@"currentPageIndex"];

  *(*(a1 + 32) + 1376) = *(a1 + 48);
  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 didChangeValueForKey:@"currentPageIndex"];

  result = [*(a1 + 32) _rearrangeCachedViewControllersWithNewCurrentPageIndex:*(*(a1 + 32) + 1376)];
  *(*(a1 + 32) + 1371) = 0;
  return result;
}

uint64_t __75__QLPageViewController__setCurrentPageIndex_direction_animated_completion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    (*(*(a1 + 32) + 16))();
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_setViewControllers:(id)controllers direction:(int64_t)direction animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllersCopy = controllers;
  completionCopy = completion;
  firstObject = [controllersCopy firstObject];
  currentPage = [(QLPageViewController *)self currentPage];

  if (firstObject == currentPage)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = QLPageViewController;
    [(QLPageViewController *)&v14 setViewControllers:controllersCopy direction:direction animated:animatedCopy completion:completionCopy];
  }
}

- (void)_applyParallaxEffectWithTransitionProgress:(double)progress
{
  if (self->_parallaxIntensity != 0.0)
  {
    view = [(QLPageViewController *)self view];
    [view frame];
    v6 = CGRectGetWidth(v26) * self->_parallaxIntensity;

    v7 = fmin(v6, 100.0);
    [(QLPageViewController *)self _unsetParallaxEffect];
    currentPageIndex = self->_currentPageIndex;
    self->_currentPageIndexForAppliedParallaxEffect = currentPageIndex;
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];

    v11 = 0;
    v12 = v7 - v7 * progress;
    v13 = -(progress * v7);
    v14 = -(v7 * (progress + 1.0));
    v15 = 2;
    do
    {
      v16 = [(QLPageViewController *)self _cachedViewControllerAtIndex:currentPageIndex offset:v11 - 1];
      if (v16)
      {
        delegate = [(QLPageViewController *)self delegate];
        v18 = objc_opt_respondsToSelector();

        if (v18)
        {
          delegate2 = [(QLPageViewController *)self delegate];
          v20 = [delegate2 pageViewController:self parallaxViewInPage:v16 withIndex:currentPageIndex + v11 - 1];

          view2 = [v16 view];
          self->_pageClipsToBounds[v11] = [view2 clipsToBounds];

          view3 = [v16 view];
          [view3 setClipsToBounds:1];

          [v20 bounds];
          if (userInterfaceLayoutDirection == 1)
          {
            v24 = v15;
          }

          else
          {
            v24 = v11;
          }

          if (v24 == 2)
          {
            v25 = v12;
          }

          else
          {
            v25 = v13;
            if (v24 != 1)
            {
              v25 = v23;
              if (!v24)
              {
                v25 = v14;
              }
            }
          }

          [v20 setBounds:v25];
        }
      }

      ++v11;
      --v15;
    }

    while (v11 != 3);
  }
}

- (void)_unsetParallaxEffect
{
  for (i = 0; i != 3; ++i)
  {
    v4 = [(QLPageViewController *)self _cachedViewControllerAtIndex:self->_currentPageIndexForAppliedParallaxEffect offset:i - 1];
    if (v4)
    {
      delegate = [(QLPageViewController *)self delegate];
      v6 = [delegate pageViewController:self parallaxViewInPage:v4 withIndex:i + self->_currentPageIndexForAppliedParallaxEffect - 1];

      [v6 bounds];
      [v6 setBounds:{0.0, 0.0}];
      v7 = self->_pageClipsToBounds[i];
      view = [v4 view];
      [view setClipsToBounds:v7];
    }
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  p_scrollingStartOffset = &self->_scrollingStartOffset;
  [dragging contentOffset];
  p_scrollingStartOffset->x = v5;
  p_scrollingStartOffset->y = v6;
  [(QLPageViewController *)self _loadAndCacheViewControllersBeforeAndAfterIndex:self->_currentPageIndex];
  if (!self->_isTransitioning)
  {
    self->_isTransitioning = 1;
    self->_currentPageIndexForAppliedParallaxEffect = self->_currentPageIndex;
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  view = [(QLPageViewController *)self view];
  [view frame];
  v5 = CGRectGetWidth(v22) + self->_interPageSpacing;

  scrollView = [(QLPageViewController *)self scrollView];
  [scrollView contentOffset];
  v8 = v7 - v5;

  v9 = v8 / v5;
  if (v8 / v5 <= 1.0)
  {
    v10 = v8 / v5;
  }

  else
  {
    v10 = 1.0;
  }

  if (self->_isTransitioning)
  {
    v11 = fmax(v10, -1.0);
    currentPageIndexForAppliedParallaxEffect = self->_currentPageIndexForAppliedParallaxEffect;
    if (v8 >= 0.0)
    {
      v13 = currentPageIndexForAppliedParallaxEffect + 1;
    }

    else
    {
      v13 = currentPageIndexForAppliedParallaxEffect - 1;
    }

    v20 = [(QLPageViewController *)self _cachedViewControllerAtIndex:v13 offset:0];
    v14 = [(QLPageViewController *)self _cachedViewControllerAtIndex:[(QLPageViewController *)self currentPageIndex] offset:0];
    if (v20 != v14)
    {
      delegate = [(QLPageViewController *)self delegate];
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        delegate2 = [(QLPageViewController *)self delegate];
        currentPageIndex = [(QLPageViewController *)self currentPageIndex];
        v19 = fabs(v9);
        if (v9 > 1.0)
        {
          v19 = 1.0;
        }

        if (v10 <= -1.0)
        {
          v19 = 1.0;
        }

        [delegate2 pageViewController:self isTransitioningFromPage:v14 withIndex:currentPageIndex toPage:v20 withIndex:v13 withProgress:v19];
      }
    }

    [(QLPageViewController *)self _applyParallaxEffectWithTransitionProgress:v11];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  self->_isTransitioning = 0;
  if (self->_didTryScrollingBeforeFirstPage)
  {
    self->_didTryScrollingBeforeFirstPage = 0;
    [(QLPageViewController *)self pageViewController:self didFinishAnimating:1 previousViewControllers:MEMORY[0x277CBEBF8] transitionCompleted:0];
  }

  [(QLPageViewController *)self _unsetParallaxEffect];
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  draggingCopy = dragging;
  x = offset->x;
  v8 = &OBJC_IVAR___QLPageViewController__nextPageIndex;
  if (offset->x == self->_scrollingStartOffset.x)
  {
    v8 = &OBJC_IVAR___QLPageViewController__currentPageIndex;
  }

  v9 = *(&self->super.super.super.super.isa + *v8);
  currentPageIndex = self->_currentPageIndex;
  if (!currentPageIndex && !self->_nextPageIndex)
  {
    self->_didTryScrollingBeforeFirstPage = 1;
  }

  delegate = [(QLPageViewController *)self delegate];
  if (v9 == currentPageIndex)
  {
    v12 = objc_opt_respondsToSelector();

    if ((v12 & 1) == 0)
    {
      goto LABEL_12;
    }

    delegate2 = [(QLPageViewController *)self delegate];
    pages = self->_pages;
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentPageIndex];
    v16 = [(NSMapTable *)pages objectForKey:v15];
    v17 = self->_currentPageIndex;
    v18 = self->_pages;
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_nextPageIndex];
    v20 = [(NSMapTable *)v18 objectForKey:v19];
    [delegate2 pageViewController:self willCancelTransitionFromPage:v16 withIndex:v17 toPage:v20 withIndex:self->_nextPageIndex animated:1];
  }

  else
  {
    v21 = objc_opt_respondsToSelector();

    if ((v21 & 1) == 0)
    {
      goto LABEL_12;
    }

    delegate2 = [(QLPageViewController *)self delegate];
    v22 = self->_pages;
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentPageIndex];
    v16 = [(NSMapTable *)v22 objectForKey:v15];
    v23 = self->_currentPageIndex;
    v24 = self->_pages;
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
    v20 = [(NSMapTable *)v24 objectForKey:v19];
    [delegate2 pageViewController:self willTransitionFromPage:v16 withIndex:v23 toPage:v20 withIndex:v9 animated:1];
  }

LABEL_12:
}

- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController
{
  v5 = [(QLPageViewController *)self _indexOfViewController:viewController];
  v6 = v5;
  v7 = 0;
  if (v5 && v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(QLPageViewController *)self _viewControllerAtIndex:v5 offset:-1];
  }

  v8 = v7;
  if (v6 && v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
  }

  return v7;
}

- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController
{
  v5 = [(QLPageViewController *)self _indexOfViewController:viewController];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(QLPageViewController *)self _viewControllerAtIndex:v5 offset:1];
  }

  return v6;
}

- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed
{
  completedCopy = completed;
  controllerCopy = controller;
  controllersCopy = controllers;
  currentPageIndex = self->_currentPageIndex;
  if (completedCopy)
  {
    [(QLPageViewController *)self willChangeValueForKey:@"currentPageIndex"];
    viewControllers = [(QLPageViewController *)self viewControllers];
    firstObject = [viewControllers firstObject];
    self->_currentPageIndex = [(QLPageViewController *)self _indexOfViewController:firstObject];

    [(QLPageViewController *)self didChangeValueForKey:@"currentPageIndex"];
    [(QLPageViewController *)self _rearrangeCachedViewControllersWithNewCurrentPageIndex:self->_currentPageIndex];
    if (animating)
    {
      delegate = [(QLPageViewController *)self delegate];
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        delegate2 = [(QLPageViewController *)self delegate];
        pages = self->_pages;
        v18 = [MEMORY[0x277CCABB0] numberWithInteger:currentPageIndex];
        v19 = [(NSMapTable *)pages objectForKey:v18];
        v20 = self->_pages;
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentPageIndex];
        v22 = [(NSMapTable *)v20 objectForKey:v21];
        [delegate2 pageViewController:self didTransitionFromPage:v19 withIndex:currentPageIndex toPage:v22 withIndex:self->_currentPageIndex animated:1];
LABEL_8:
      }
    }
  }

  else
  {
    [(QLPageViewController *)self _rearrangeCachedViewControllersWithNewCurrentPageIndex:self->_currentPageIndex];
    if (animating)
    {
      delegate3 = [(QLPageViewController *)self delegate];
      v24 = objc_opt_respondsToSelector();

      if (v24)
      {
        delegate2 = [(QLPageViewController *)self delegate];
        v25 = self->_pages;
        v18 = [MEMORY[0x277CCABB0] numberWithInteger:currentPageIndex];
        v19 = [(NSMapTable *)v25 objectForKey:v18];
        v26 = self->_pages;
        v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_nextPageIndex];
        v22 = [(NSMapTable *)v26 objectForKey:v21];
        [delegate2 pageViewController:self didCancelTransitionFromPage:v19 withIndex:currentPageIndex toPage:v22 withIndex:self->_nextPageIndex animated:1];
        goto LABEL_8;
      }
    }
  }

  self->_nextPageIndex = self->_currentPageIndex;
}

- (void)pageViewController:(id)controller willTransitionToViewControllers:(id)controllers
{
  firstObject = [controllers firstObject];
  self->_nextPageIndex = [(QLPageViewController *)self _indexOfViewController:?];
  delegate = [(QLPageViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(QLPageViewController *)self delegate];
    pages = self->_pages;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_currentPageIndex];
    v10 = [(NSMapTable *)pages objectForKey:v9];
    [delegate2 pageViewController:self willBeginInteractiveTransitionFromPage:v10 withIndex:self->_currentPageIndex toPage:firstObject withIndex:self->_nextPageIndex];
  }
}

- (QLPageViewController)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = QLPageViewController;
  return [(QLPageViewController *)&v4 initWithCoder:coder];
}

- (void)setViewControllers:(id)controllers direction:(int64_t)direction animated:(BOOL)animated completion:(id)completion
{
  v6 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSelector(a2);
  v8 = [v6 stringWithFormat:@"%@ not supported on QLPageViewController. Use setCurrentPageIndex: and provide a data source instead.", v7];;
}

- (void)setDataSource:(id)source
{
  if (source == self)
  {
    v6 = v3;
    v7 = v4;
    v5.receiver = self;
    v5.super_class = QLPageViewController;
    [(QLPageViewController *)&v5 setDataSource:?];
  }
}

- (QLPageViewControllerDataSource)indexedDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_indexedDataSource);

  return WeakRetained;
}

- (UIScrollViewDelegate)scrollViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollViewDelegate);

  return WeakRetained;
}

@end