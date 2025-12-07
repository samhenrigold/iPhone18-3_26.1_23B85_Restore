@interface WKUIPagingTransitionController
- (CGRect)contentFrameForPage:(int64_t)page;
- (CGSize)pageSize;
- (WKUIPagingTransitionController)initWithScrollView:(id)view pageSize:(CGSize)size numberOfPages:(int64_t)pages startingPage:(int64_t)page pagingAxis:(int64_t)axis delegate:(id)delegate;
- (WKUIPagingTransitionControllerAnimationDelegate)animationDelegate;
- (WKUIPagingTransitionControllerDelegate)delegate;
- (id)_pageViewForPage:(unint64_t)page;
- (int64_t)_pageForOffset:(double)offset;
- (void)_cancelAnimatedTransitionFromPage:(int64_t)page;
- (void)_endAnimatedTransitionToPage:(int64_t)page;
- (void)_endTransitionAnimationForPage:(int64_t)page visible:(BOOL)visible;
- (void)_handleScrollViewScrollEnd;
- (void)_prepareViewForPage:(unint64_t)page pagingDirection:(int64_t)direction;
- (void)_setActualPageNumber:(int64_t)number;
- (void)resetCurrentView;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setAnimationDelegate:(id)delegate;
- (void)setCurrentPage:(int64_t)page animated:(BOOL)animated;
- (void)setPageControl:(id)control;
- (void)setPageSize:(CGSize)size;
@end

@implementation WKUIPagingTransitionController

- (WKUIPagingTransitionController)initWithScrollView:(id)view pageSize:(CGSize)size numberOfPages:(int64_t)pages startingPage:(int64_t)page pagingAxis:(int64_t)axis delegate:(id)delegate
{
  sizeCopy = size;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  pagesCopy = pages;
  pageCopy = page;
  axisCopy = axis;
  v17 = 0;
  objc_storeStrong(&v17, delegate);
  v8 = selfCopy;
  selfCopy = 0;
  v16.receiver = v8;
  v16.super_class = WKUIPagingTransitionController;
  v15 = [(WKUIPagingTransitionController *)&v16 init];
  selfCopy = v15;
  objc_storeStrong(&selfCopy, v15);
  if (v15)
  {
    objc_storeWeak(&selfCopy->_delegate, v17);
    objc_storeStrong(&selfCopy->_scrollView, location[0]);
    [(UIScrollView *)selfCopy->_scrollView setDelegate:selfCopy];
    [(UIScrollView *)selfCopy->_scrollView setPagingEnabled:1];
    [(UIScrollView *)selfCopy->_scrollView setClipsToBounds:0];
    selfCopy->_actualPageNumber = pageCopy;
    selfCopy->_currentPage = pageCopy;
    selfCopy->_numberOfPages = pagesCopy;
    selfCopy->_pagingAxis = axisCopy;
    [(WKUIPagingTransitionController *)selfCopy setPageSize:sizeCopy.width, sizeCopy.height];
  }

  v10 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (void)setAnimationDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  selfCopy->_animationDelegateCache.supportsTransitioningView = objc_opt_respondsToSelector() & 1;
  selfCopy->_animationDelegateCache.supportsTransitioningPage = objc_opt_respondsToSelector() & 1;
  selfCopy->_animationDelegateCache.supportsDidFinishTransitionForView = objc_opt_respondsToSelector() & 1;
  objc_storeWeak(&selfCopy->_animationDelegate, location[0]);
  objc_storeStrong(location, 0);
}

- (void)setPageControl:(id)control
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, control);
  objc_storeStrong(&selfCopy->_pageControl, location[0]);
  [(UIPageControl *)selfCopy->_pageControl setNumberOfPages:selfCopy->_numberOfPages];
  [(UIPageControl *)selfCopy->_pageControl setCurrentPage:selfCopy->_currentPage];
  objc_storeStrong(location, 0);
}

- (void)setCurrentPage:(int64_t)page animated:(BOOL)animated
{
  selfCopy = self;
  v25 = a2;
  pageCopy = page;
  animatedCopy = animated;
  if (animated)
  {
    scrollView = selfCopy->_scrollView;
    [(WKUIPagingTransitionController *)selfCopy contentFrameForPage:pageCopy];
    [(UIScrollView *)scrollView scrollRectToVisible:1 animated:v9, v10, v11, v12];
  }

  else
  {
    v22 = MEMORY[0x277D82BE0](selfCopy->_currentPageView);
    delegate = [(WKUIPagingTransitionController *)selfCopy delegate];
    v21 = [(WKUIPagingTransitionControllerDelegate *)delegate pagingTransitionController:selfCopy viewForPage:pageCopy];
    *&v4 = MEMORY[0x277D82BD8](delegate).n128_u64[0];
    if (v21 != selfCopy->_currentPageView)
    {
      [(UIView *)selfCopy->_currentPageView removeFromSuperview];
      [(UIScrollView *)selfCopy->_scrollView addSubview:v21];
      objc_storeStrong(&selfCopy->_currentPageView, v21);
    }

    [(WKUIPagingTransitionController *)selfCopy contentFrameForPage:pageCopy];
    v17 = v5;
    v18 = v6;
    v19 = v7;
    v20 = v8;
    [(UIView *)v21 setFrame:v5, v6, v7, v8];
    [(UIScrollView *)selfCopy->_scrollView scrollRectToVisible:0 animated:v17, v18, v19, v20];
    [(WKUIPagingTransitionController *)selfCopy setCurrentPage:pageCopy];
    [(WKUIPagingTransitionController *)selfCopy _setActualPageNumber:pageCopy];
    v28 = pageCopy;
    v27 = 1;
    v29 = pageCopy;
    v30 = 1;
    v16.location = pageCopy;
    v16.length = 1;
    selfCopy->_lastVisibleRange = v16;
    delegate2 = [(WKUIPagingTransitionController *)selfCopy delegate];
    [(WKUIPagingTransitionControllerDelegate *)delegate2 pagingTransitionController:selfCopy didFinishTransitionFromView:v22 toView:v21 page:pageCopy animated:0];
    MEMORY[0x277D82BD8](delegate2);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
  }
}

- (void)setPageSize:(CGSize)size
{
  self->_pageSize = size;
  if (self->_pagingAxis)
  {
    CGSizeMake();
    *&v7 = v5;
    *(&v7 + 1) = v6;
    v9 = v7;
  }

  else
  {
    CGSizeMake();
    *&v8 = v3;
    *(&v8 + 1) = v4;
    v9 = v8;
  }

  [(UIScrollView *)self->_scrollView setContentSize:v9];
  [(WKUIPagingTransitionController *)self setCurrentPage:self->_currentPage animated:0];
}

- (void)_setActualPageNumber:(int64_t)number
{
  if ((number & 0x8000000000000000) == 0 && number < self->_numberOfPages && number != self->_actualPageNumber)
  {
    self->_actualPageNumber = number;
    delegate = [(WKUIPagingTransitionController *)self delegate];
    [(WKUIPagingTransitionControllerDelegate *)delegate pagingTransitionController:self didTransitionToPage:self->_actualPageNumber];
    [(WKUIPagingTransitionController *)self setCurrentPage:number, MEMORY[0x277D82BD8](delegate).n128_f64[0]];
  }
}

- (CGRect)contentFrameForPage:(int64_t)page
{
  [(UIScrollView *)self->_scrollView bounds];
  v18 = v3;
  v19 = v4;
  v20 = v4;
  numberOfPages = self->_numberOfPages;
  scrollView = [(WKUIPagingTransitionController *)self scrollView];
  _visualPageForActualPage(page, numberOfPages, [(UIScrollView *)scrollView _shouldReverseLayoutDirection], self->_pagingAxis);
  MEMORY[0x277D82BD8](scrollView);
  if (self->_pagingAxis)
  {
    CGPointMake();
    *&v15 = v7;
    *(&v15 + 1) = v8;
    v17 = v15;
  }

  else
  {
    CGPointMake();
    *&v16 = v5;
    *(&v16 + 1) = v6;
    v17 = v16;
  }

  v23 = v19;
  if (page == self->_musicControlPageIndex)
  {
    v23 = v20 + self->_increaseMusicControlBottomOffset;
  }

  v10 = *(&v17 + 1);
  v9 = *&v17;
  v12 = v23;
  v11 = v18;
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (void)_prepareViewForPage:(unint64_t)page pagingDirection:(int64_t)direction
{
  selfCopy = self;
  v29 = a2;
  pageCopy = page;
  directionCopy = direction;
  if ([(WKUIPagingTransitionController *)self _isValidPage:page])
  {
    delegate = [(WKUIPagingTransitionController *)selfCopy delegate];
    v26 = [(WKUIPagingTransitionControllerDelegate *)delegate pagingTransitionController:selfCopy viewForPage:pageCopy];
    superview = [v26 superview];
    *&v4 = MEMORY[0x277D82BD8](superview).n128_u64[0];
    if (!superview)
    {
      [(UIScrollView *)selfCopy->_scrollView addSubview:v26, v4];
    }

    [(WKUIPagingTransitionController *)selfCopy contentFrameForPage:pageCopy, v4];
    *&v24 = v5;
    *(&v24 + 1) = v6;
    *&v25 = v7;
    *(&v25 + 1) = v8;
    v22 = v24;
    v23 = v25;
    [v26 setFrame:{v5, v6, v7, v8}];
    delegate2 = [(WKUIPagingTransitionController *)selfCopy delegate];
    [(WKUIPagingTransitionControllerDelegate *)delegate2 pagingTransitionController:selfCopy willDisplayPageView:v26];
    *&v9 = MEMORY[0x277D82BD8](delegate2).n128_u64[0];
    if (directionCopy == 1)
    {
      v14 = pageCopy - 1;
    }

    else
    {
      v14 = pageCopy + 1;
    }

    v21 = v14;
    v19 = 0;
    v13 = 0;
    if ([(WKUIPagingTransitionController *)selfCopy _isValidPage:v14, v9])
    {
      delegate3 = [(WKUIPagingTransitionController *)selfCopy delegate];
      v19 = 1;
      v13 = objc_opt_respondsToSelector();
    }

    if (v19)
    {
      MEMORY[0x277D82BD8](delegate3);
    }

    if (v13)
    {
      delegate4 = [(WKUIPagingTransitionController *)selfCopy delegate];
      v18 = [(WKUIPagingTransitionControllerDelegate *)delegate4 pagingTransitionController:selfCopy viewForPage:v21];
      *&v10 = MEMORY[0x277D82BD8](delegate4).n128_u64[0];
      delegate5 = [(WKUIPagingTransitionController *)selfCopy delegate];
      [(WKUIPagingTransitionControllerDelegate *)delegate5 pagingTransitionController:selfCopy willTransitionFromView:v18 toView:v26];
      MEMORY[0x277D82BD8](delegate5);
      objc_storeStrong(&v18, 0);
    }

    objc_storeStrong(&v26, 0);
  }
}

- (id)_pageViewForPage:(unint64_t)page
{
  delegate = [(WKUIPagingTransitionController *)self delegate];
  v5 = [(WKUIPagingTransitionControllerDelegate *)delegate pagingTransitionController:self viewForPage:page];
  MEMORY[0x277D82BD8](delegate);

  return v5;
}

- (int64_t)_pageForOffset:(double)offset
{
  v5 = (offset / _pageSizeAlongAxis(self->_pagingAxis, self->_pageSize.width, self->_pageSize.height));
  numberOfPages = self->_numberOfPages;
  scrollView = [(WKUIPagingTransitionController *)self scrollView];
  v7 = _visualPageForActualPage(v5, numberOfPages, [(UIScrollView *)scrollView _shouldReverseLayoutDirection], self->_pagingAxis);
  MEMORY[0x277D82BD8](scrollView);
  return v7;
}

- (void)resetCurrentView
{
  selfCopy = self;
  v5[1] = a2;
  delegate = [(WKUIPagingTransitionController *)self delegate];
  v5[0] = [(WKUIPagingTransitionControllerDelegate *)delegate pagingTransitionController:selfCopy viewForPage:selfCopy->_currentPage];
  *&v2 = MEMORY[0x277D82BD8](delegate).n128_u64[0];
  delegate2 = [(WKUIPagingTransitionController *)selfCopy delegate];
  [(WKUIPagingTransitionControllerDelegate *)delegate2 pagingTransitionController:selfCopy willDisplayPageView:v5[0]];
  MEMORY[0x277D82BD8](delegate2);
  objc_storeStrong(&selfCopy->_currentPageView, 0);
  [(WKUIPagingTransitionController *)selfCopy setCurrentPage:selfCopy->_currentPage animated:0];
  objc_storeStrong(v5, 0);
}

- (void)_endAnimatedTransitionToPage:(int64_t)page
{
  selfCopy = self;
  v9 = a2;
  pageCopy = page;
  v7 = MEMORY[0x277D82BE0](self->_currentPageView);
  v3 = [(WKUIPagingTransitionController *)selfCopy _pageViewForPage:pageCopy];
  currentPageView = selfCopy->_currentPageView;
  selfCopy->_currentPageView = v3;
  *&v5 = MEMORY[0x277D82BD8](currentPageView).n128_u64[0];
  delegate = [(WKUIPagingTransitionController *)selfCopy delegate];
  [(WKUIPagingTransitionControllerDelegate *)delegate pagingTransitionController:selfCopy didFinishTransitionFromView:v7 toView:selfCopy->_currentPageView page:pageCopy animated:1];
  MEMORY[0x277D82BD8](delegate);
  objc_storeStrong(&v7, 0);
}

- (void)_cancelAnimatedTransitionFromPage:(int64_t)page
{
  delegate = [(WKUIPagingTransitionController *)self delegate];
  v7 = objc_opt_respondsToSelector();
  *&v3 = MEMORY[0x277D82BD8](delegate).n128_u64[0];
  if (v7)
  {
    delegate2 = [(WKUIPagingTransitionController *)self delegate];
    v4 = [(WKUIPagingTransitionController *)self _pageViewForPage:page];
    [(WKUIPagingTransitionControllerDelegate *)delegate2 pagingTransitionController:self didCancelTransitionFromView:?];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](delegate2);
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dragging);
  if (!decelerate)
  {
    [(WKUIPagingTransitionController *)selfCopy _handleScrollViewScrollEnd];
  }

  objc_storeStrong(location, 0);
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, decelerating);
  [(WKUIPagingTransitionController *)selfCopy _handleScrollViewScrollEnd];
  objc_storeStrong(location, 0);
}

- (void)_handleScrollViewScrollEnd
{
  _currentPage = [(WKUIPagingTransitionController *)self _currentPage];
  [(WKUIPagingTransitionController *)self _setActualPageNumber:_currentPage];
  if (_currentPage == [(WKUIPagingTransitionController *)self currentPage])
  {
    [(WKUIPagingTransitionController *)self _cancelAnimatedTransitionFromPage:_currentPage];
  }

  else
  {
    [(WKUIPagingTransitionController *)self _endAnimatedTransitionToPage:_currentPage];
    [(WKUIPagingTransitionController *)self setCurrentPage:_currentPage];
  }

  [(WKUIPagingTransitionController *)self _endTransitionAnimationForPage:_currentPage visible:1];
}

- (void)_endTransitionAnimationForPage:(int64_t)page visible:(BOOL)visible
{
  selfCopy = self;
  v8 = a2;
  pageCopy = page;
  visibleCopy = visible;
  location = [(WKUIPagingTransitionController *)self _pageViewForPage:page];
  if (selfCopy->_animationDelegateCache.supportsDidFinishTransitionForView)
  {
    animationDelegate = [(WKUIPagingTransitionController *)selfCopy animationDelegate];
    [(WKUIPagingTransitionControllerAnimationDelegate *)animationDelegate pagingTransitionController:selfCopy didFinishTransitionForView:location visible:visibleCopy];
    MEMORY[0x277D82BD8](animationDelegate);
  }

  objc_storeStrong(&location, 0);
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, animation);
  [(WKUIPagingTransitionController *)selfCopy _endAnimatedTransitionToPage:[(WKUIPagingTransitionController *)selfCopy _currentPage]];
  objc_storeStrong(location, 0);
}

- (void)scrollViewDidScroll:(id)scroll
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scroll);
  delegate = [(WKUIPagingTransitionController *)selfCopy delegate];
  v32 = objc_opt_respondsToSelector();
  v3 = MEMORY[0x277D82BD8](delegate).n128_u64[0];
  if (v32)
  {
    delegate2 = [(WKUIPagingTransitionController *)selfCopy delegate];
    [(WKUIPagingTransitionControllerDelegate *)delegate2 pagingTransitionControllerDidScroll:selfCopy];
    v3 = MEMORY[0x277D82BD8](delegate2).n128_u64[0];
  }

  [(UIScrollView *)selfCopy->_scrollView contentOffset];
  v57 = v4;
  v58 = v5;
  v59 = _contentOffsetAlongAxis(selfCopy->_pagingAxis, v4, v5);
  _shouldReverseLayoutDirection = [(UIScrollView *)selfCopy->_scrollView _shouldReverseLayoutDirection];
  v55 = v59;
  if (_shouldReverseLayoutDirection)
  {
    [(UIScrollView *)selfCopy->_scrollView contentSize];
    v53 = v6;
    v54 = v7;
    v55 = v6 - v59 - selfCopy->_pageSize.width;
  }

  if (v55 == selfCopy->_lastContentOffset)
  {
    v52 = 1;
  }

  else
  {
    v51 = [(WKUIPagingTransitionController *)selfCopy _pageForOffset:v59];
    v49 = 0;
    v48 = v51;
    if (v51 <= 0)
    {
      v29 = v49;
    }

    else
    {
      v29 = v48;
    }

    v47 = v29;
    v50 = v29;
    v46 = selfCopy->_numberOfPages - 1;
    if (v29 >= v46)
    {
      v28 = v46;
    }

    else
    {
      v28 = v50;
    }

    v45 = v28;
    v51 = v28;
    v44 = 0;
    v8 = _pageSizeAlongAxis(selfCopy->_pagingAxis, selfCopy->_pageSize.width, selfCopy->_pageSize.height);
    if (fmod(v55, v8) == 0.0 || v51 == selfCopy->_numberOfPages - 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = 2;
      if (_shouldReverseLayoutDirection)
      {
        --v51;
      }
    }

    v63 = v51;
    v62 = v44;
    v64 = v51;
    v65 = v44;
    range2.location = v51;
    range2.length = v44;
    v42 = v59 - selfCopy->_lastContentOffset > 0.0;
    length = selfCopy->_lastVisibleRange.length;
    v68 = selfCopy->_lastVisibleRange.location;
    v69 = length;
    v66 = v51;
    v67 = v44;
    v27 = 0;
    if (v68 == v51)
    {
      v27 = v69 == v67;
    }

    if (!v27)
    {
      v41.location = 0;
      v41.length = 0;
      v41 = NSIntersectionRange(selfCopy->_lastVisibleRange, range2);
      v40.location = 0;
      v40.length = 0;
      v40 = NSUnionRange(selfCopy->_lastVisibleRange, range2);
      for (i = v40.location; ; ++i)
      {
        v71 = v40;
        if (i >= v40.location + v40.length)
        {
          break;
        }

        v75 = v41;
        v74 = i;
        v26 = 0;
        if (i >= v41.location)
        {
          v26 = v74 - v75.location < v75.length;
        }

        if (!v26)
        {
          v73 = range2;
          v72 = i;
          v25 = 0;
          if (i >= range2.location)
          {
            v25 = v72 - v73.location < v73.length;
          }

          if (v25)
          {
            [(WKUIPagingTransitionController *)selfCopy _prepareViewForPage:i pagingDirection:v42];
          }

          else
          {
            [(WKUIPagingTransitionController *)selfCopy _endTransitionAnimationForPage:i visible:0];
          }
        }
      }
    }

    for (j = range2.location; ; ++j)
    {
      v70 = range2;
      if (j >= range2.location + range2.length)
      {
        break;
      }

      v37 = [(WKUIPagingTransitionController *)selfCopy _pageViewForPage:j];
      animationDelegate = [(WKUIPagingTransitionController *)selfCopy animationDelegate];
      MEMORY[0x277D82BD8](animationDelegate);
      if (animationDelegate)
      {
        v20 = v55;
        v21 = j;
        v22 = v20 - v21 * _pageSizeAlongAxis(selfCopy->_pagingAxis, selfCopy->_pageSize.width, selfCopy->_pageSize.height);
        v36 = v22 / _pageSizeAlongAxis(selfCopy->_pagingAxis, selfCopy->_pageSize.width, selfCopy->_pageSize.height);
        v23 = 0;
        if (!j)
        {
          v23 = v36 <= 0.0;
        }

        v19 = 0;
        if (j == selfCopy->_numberOfPages - 1)
        {
          v19 = v36 > 0.0;
        }

        if (v23 || v19)
        {
          v35 = 100.0;
        }

        else
        {
          v35 = 100.0 * (1.0 - fabs(v36));
        }

        v34 = 1;
        v10 = v36;
        if (v36 < 0.0 && v42 || (v10 = v36, v36 >= 0.0) && !v42)
        {
          v34 = 0;
        }

        if (selfCopy->_animationDelegateCache.supportsTransitioningView)
        {
          animationDelegate2 = [(WKUIPagingTransitionController *)selfCopy animationDelegate];
          [(WKUIPagingTransitionControllerAnimationDelegate *)animationDelegate2 pagingTransitionController:selfCopy transitioningView:v37 percentageComplete:v34 & 1 isTransitioningOut:v35];
          *&v10 = MEMORY[0x277D82BD8](animationDelegate2).n128_u64[0];
        }

        if (selfCopy->_animationDelegateCache.supportsTransitioningPage)
        {
          animationDelegate3 = [(WKUIPagingTransitionController *)selfCopy animationDelegate];
          [(WKUIPagingTransitionControllerAnimationDelegate *)animationDelegate3 pagingTransitionController:selfCopy transitioningPage:j percentageComplete:v42 pagingDirection:v34 & 1 isTransitioningOut:v35];
          MEMORY[0x277D82BD8](animationDelegate3);
        }
      }

      objc_storeStrong(&v37, 0);
    }

    v33 = _pageSizeAlongAxis(selfCopy->_pagingAxis, selfCopy->_pageSize.width, selfCopy->_pageSize.height);
    v14 = ((v33 / 2.0 + v59) / (selfCopy->_numberOfPages * v33) * selfCopy->_numberOfPages);
    numberOfPages = selfCopy->_numberOfPages;
    scrollView = [(WKUIPagingTransitionController *)selfCopy scrollView];
    _shouldReverseLayoutDirection2 = [(UIScrollView *)scrollView _shouldReverseLayoutDirection];
    v16 = _visualPageForActualPage(v14, numberOfPages, _shouldReverseLayoutDirection2, selfCopy->_pagingAxis);
    *&v12 = MEMORY[0x277D82BD8](scrollView).n128_u64[0];
    if (selfCopy->_actualPageNumber != v16)
    {
      [(WKUIPagingTransitionController *)selfCopy _setActualPageNumber:v16, v12];
    }

    selfCopy->_lastContentOffset = v55;
    selfCopy->_lastVisibleRange = range2;
    v52 = 0;
  }

  objc_storeStrong(location, 0);
}

- (CGSize)pageSize
{
  height = self->_pageSize.height;
  width = self->_pageSize.width;
  result.height = height;
  result.width = width;
  return result;
}

- (WKUIPagingTransitionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (WKUIPagingTransitionControllerAnimationDelegate)animationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);

  return WeakRetained;
}

@end