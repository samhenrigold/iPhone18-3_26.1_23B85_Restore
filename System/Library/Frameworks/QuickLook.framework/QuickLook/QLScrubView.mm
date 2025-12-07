@interface QLScrubView
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (CGRect)_thumbnailFrameForPageAtIndex:(int64_t)index;
- (QLScrubView)init;
- (QLScrubViewDataSource)dataSource;
- (QLScrubViewDelegate)delegate;
- (void)_handleSwipAtLocation:(CGPoint)location;
- (void)_notifyPageChanged;
- (void)_removeThumbviews;
- (void)_showPageLabel;
- (void)_updatePageLabelPosition;
- (void)_updateSelectedThumbnailView;
- (void)layoutSubviews;
- (void)longTapReceived:(id)received;
- (void)panReceived:(id)received;
- (void)reloadThumbnails;
- (void)selectPageNumber:(int64_t)number;
- (void)setFrame:(CGRect)frame;
- (void)tapReceived:(id)received;
@end

@implementation QLScrubView

- (QLScrubView)init
{
  v25[1] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = QLScrubView;
  v2 = [(QLScrubView *)&v21 init];
  if (v2)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(QLScrubView *)v2 setBackgroundColor:clearColor];

    v4 = [MEMORY[0x277D75210] effectWithStyle:1200];
    v5 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:v4];
    [(QLScrubView *)v2 addSubview:v5];
    [(QLScrubView *)v2 sendSubviewToBack:v5];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = MEMORY[0x277CCAAD0];
    v24 = @"visualEffectView";
    v25[0] = v5;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v8 = [v6 constraintsWithVisualFormat:@"V:|[visualEffectView]|" options:0 metrics:0 views:v7];
    [(QLScrubView *)v2 addConstraints:v8];

    v9 = MEMORY[0x277CCAAD0];
    v22 = @"visualEffectView";
    v23 = v5;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v11 = [v9 constraintsWithVisualFormat:@"H:|[visualEffectView]|" options:0 metrics:0 views:v10];
    [(QLScrubView *)v2 addConstraints:v11];

    v12 = objc_opt_new();
    thumbViews = v2->_thumbViews;
    v2->_thumbViews = v12;

    v14 = objc_opt_new();
    visibleThumbIndexes = v2->_visibleThumbIndexes;
    v2->_visibleThumbIndexes = v14;

    v2->_selectedPage = -1;
    v16 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:v2 action:sel_panReceived_];
    [v16 setDelegate:v2];
    [(QLScrubView *)v2 addGestureRecognizer:v16];
    v17 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v2 action:sel_tapReceived_];
    [v17 setDelegate:v2];
    [(QLScrubView *)v2 addGestureRecognizer:v17];
    v18 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v2 action:sel_longTapReceived_];
    [v18 setDelegate:v2];
    [(QLScrubView *)v2 addGestureRecognizer:v18];
    [(QLScrubView *)v2 setDeliversTouchesForGesturesToSuperview:0];
    v19 = v2;
  }

  return v2;
}

- (void)_removeThumbviews
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_thumbViews;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_thumbViews objectForKey:*(*(&v9 + 1) + 8 * v7), v9];
        [v8 removeFromSuperview];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_visibleThumbIndexes removeAllObjects];
}

- (void)reloadThumbnails
{
  [(QLScrubView *)self _removeThumbviews];
  self->_needsThumbLayout = 1;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  self->_pageCount = [WeakRetained numberOfPagesInScrubView:self];

  [(QLScrubView *)self layoutSubviews];
}

- (void)selectPageNumber:(int64_t)number
{
  if ((number & 0x8000000000000000) == 0 && self->_pageCount > number)
  {
    self->_selectedPage = number;
    [(QLScrubView *)self _updateSelectedThumbnailView];
  }
}

- (void)_notifyPageChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 scrubView:self didSelectPageAtIndex:self->_selectedPage];
  }
}

- (void)_handleSwipAtLocation:(CGPoint)location
{
  pageCount = self->_pageCount;
  if (pageCount)
  {
    v5 = ((location.y - self->_thumbOrigin) / ((self->_thumbEnd - self->_thumbOrigin) / pageCount));
    if ((v5 & 0x8000000000000000) == 0 && pageCount > v5 && self->_selectedPage != v5)
    {
      self->_selectedPage = v5;
      [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__notifyPageChanged object:0];
      [(QLScrubView *)self performSelector:sel__notifyPageChanged withObject:0 afterDelay:0.2];
      [(QLScrubView *)self _updateSelectedThumbnailView];

      [(QLScrubView *)self _updatePageLabelPosition];
    }
  }
}

- (void)panReceived:(id)received
{
  receivedCopy = received;
  if ([receivedCopy state] == 1)
  {
    [(QLScrubView *)self _showPageLabel];
  }

  [receivedCopy locationInView:self];
  [(QLScrubView *)self _handleSwipAtLocation:?];
  state = [receivedCopy state];

  if (state == 3)
  {

    [(QLScrubView *)self _hidePageLabel];
  }
}

- (void)tapReceived:(id)received
{
  [received locationInView:self];

  [(QLScrubView *)self _handleSwipAtLocation:?];
}

- (void)longTapReceived:(id)received
{
  receivedCopy = received;
  if ([receivedCopy state] == 1)
  {
    [(QLScrubView *)self _showPageLabel];
  }

  [receivedCopy locationInView:self];
  [(QLScrubView *)self _handleSwipAtLocation:?];
  state = [receivedCopy state];

  if (state == 3)
  {

    [(QLScrubView *)self _hidePageLabel];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  view = [gestureRecognizer view];
  LOBYTE(self) = view == self;

  return self;
}

- (void)setFrame:(CGRect)frame
{
  self->_needsThumbLayout = 1;
  v3.receiver = self;
  v3.super_class = QLScrubView;
  [(QLScrubView *)&v3 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

- (CGRect)_thumbnailFrameForPageAtIndex:(int64_t)index
{
  v5 = [(NSMutableArray *)self->_visibleThumbIndexes count];
  if (v5 < 1)
  {
LABEL_6:
    v7 = -1;
  }

  else
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      v8 = [(NSMutableArray *)self->_visibleThumbIndexes objectAtIndex:v7];
      integerValue = [v8 integerValue];

      if (integerValue == index)
      {
        break;
      }

      if (integerValue > index)
      {
        v14 = v7;
        if (v7)
        {
          v14 = 1;
        }

        v15 = v7 - v14;
        v16 = [(NSMutableArray *)self->_visibleThumbIndexes objectAtIndex:(v7 - v14)];
        integerValue2 = [v16 integerValue];

        if (v7 != v15)
        {
          thumbHeight = self->_thumbHeight;
          v11 = self->_thumbOrigin + v15 * (thumbHeight + 8.0) + floor((self->_thumbOrigin + v7 * (thumbHeight + 8.0) - (self->_thumbOrigin + v15 * (thumbHeight + 8.0))) * (index - integerValue2) / (integerValue - integerValue2));
          goto LABEL_8;
        }

        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_6;
      }
    }
  }

  thumbHeight = self->_thumbHeight;
  v11 = self->_thumbOrigin + v7 * (thumbHeight + 8.0);
LABEL_8:
  v12 = 32.0;
  v13 = 17.0;
  result.size.height = thumbHeight;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v13;
  return result;
}

- (void)_showPageLabel
{
  if (!self->_pageNumberLabel)
  {
    v3 = objc_alloc_init(QLPageNumberView);
    pageNumberLabel = self->_pageNumberLabel;
    self->_pageNumberLabel = v3;
  }

  [(QLScrubView *)self _updatePageLabelPosition];
  [(QLScrubView *)self addSubview:self->_pageNumberLabel];
  v5 = self->_pageNumberLabel;

  [(QLScrubView *)self bringSubviewToFront:v5];
}

- (void)_updatePageLabelPosition
{
  pageNumberLabel = self->_pageNumberLabel;
  if (pageNumberLabel)
  {
    [(QLPageNumberView *)pageNumberLabel setPageCount:self->_pageCount];
    [(QLPageNumberView *)self->_pageNumberLabel setPageNumber:self->_selectedPage + 1];
    [(QLPageNumberView *)self->_pageNumberLabel sizeToFit];
    thumbViews = self->_thumbViews;
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_selectedPage];
    v14 = [(NSMutableDictionary *)thumbViews objectForKey:v5];

    [v14 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [(QLPageNumberView *)self->_pageNumberLabel frame];
    [(QLPageNumberView *)self->_pageNumberLabel setFrame:v7 - v12 + -10.0, v9 + floor((v11 - v13) * 0.5 + 2.0)];
  }
}

- (void)layoutSubviews
{
  v74 = *MEMORY[0x277D85DE8];
  if (self->_needsThumbLayout)
  {
    if (self->_pageCount)
    {
      [(QLScrubView *)self bounds];
      if (v3 != 0.0)
      {
        self->_needsThumbLayout = 0;
        [(QLScrubView *)self _removeThumbviews];
        [(QLScrubView *)self bounds];
        v5 = v4;
        [(QLScrubView *)self topOffset];
        v7 = v5 - v6;
        WeakRetained = objc_loadWeakRetained(&self->_dataSource);
        [WeakRetained scrubView:self pageSizeAtIndex:0];
        v10 = v9;
        v12 = v11;

        v13 = floor(v12 * 32.0 / v10);
        self->_thumbHeight = v13;
        v14 = v13 + 8.0;
        v15 = (v7 + -36.0) / v14 + 1.0;
        if (v15)
        {
          if (self->_pageCount >= v15)
          {
            pageCount = v15;
          }

          else
          {
            pageCount = self->_pageCount;
          }

          v17 = pageCount * v14 + -8.0;
          [(QLScrubView *)self topOffset];
          v19 = v18 + floor((v7 - v17) * 0.5);
          self->_thumbOrigin = v19;
          self->_thumbEnd = v17 + v19;
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          v20 = self->_thumbViews;
          v21 = [(NSMutableDictionary *)v20 countByEnumeratingWithState:&v68 objects:v73 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v69;
            v24 = *MEMORY[0x277CBF3A0];
            v25 = *(MEMORY[0x277CBF3A0] + 8);
            v26 = *(MEMORY[0x277CBF3A0] + 16);
            v27 = *(MEMORY[0x277CBF3A0] + 24);
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v69 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v29 = [(NSMutableDictionary *)self->_thumbViews objectForKey:*(*(&v68 + 1) + 8 * i)];
                [v29 setAlwaysVisible:0];
                [v29 setFrame:{v24, v25, v26, v27}];
                [v29 setUnselectedFrame:{v24, v25, v26, v27}];
              }

              v22 = [(NSMutableDictionary *)v20 countByEnumeratingWithState:&v68 objects:v73 count:16];
            }

            while (v22);
          }

          [(NSMutableArray *)self->_visibleThumbIndexes removeAllObjects];
          if (pageCount >= 1)
          {
            v30 = 0;
            v31 = pageCount;
            do
            {
              v32 = self->_pageCount;
              if (v31 == 1)
              {
                v33 = v32 - 1;
              }

              else
              {
                v33 = (v32 / pageCount + v32) * v30 / pageCount;
              }

              visibleThumbIndexes = self->_visibleThumbIndexes;
              v35 = [MEMORY[0x277CCABB0] numberWithInteger:v33];
              [(NSMutableArray *)visibleThumbIndexes addObject:v35];

              ++v30;
              --v31;
            }

            while (v31);
          }

          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v36 = self->_visibleThumbIndexes;
          v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v64 objects:v72 count:16];
          if (v37)
          {
            v38 = v37;
            v39 = *v65;
            v40 = *(MEMORY[0x277CBF3A0] + 8);
            v59 = *MEMORY[0x277CBF3A0];
            v41 = *(MEMORY[0x277CBF3A0] + 16);
            v42 = *(MEMORY[0x277CBF3A0] + 24);
            v58 = v61;
            do
            {
              for (j = 0; j != v38; ++j)
              {
                if (*v65 != v39)
                {
                  objc_enumerationMutation(v36);
                }

                v44 = *(*(&v64 + 1) + 8 * j);
                integerValue = [v44 integerValue];
                v46 = [(NSMutableDictionary *)self->_thumbViews objectForKey:v44];
                if (!v46)
                {
                  v46 = [[QLThumbnailView alloc] initWithFrame:v59, v40, v41, v42];
                  [(QLThumbnailView *)v46 setPageNumber:integerValue];
                  [(NSMutableDictionary *)self->_thumbViews setObject:v46 forKey:v44];
                }

                image = [(QLThumbnailView *)v46 image];

                if (!image)
                {
                  v48 = objc_loadWeakRetained(&self->_dataSource);
                  thumbHeight = self->_thumbHeight;
                  v60[0] = MEMORY[0x277D85DD0];
                  v60[1] = 3221225472;
                  v61[0] = __29__QLScrubView_layoutSubviews__block_invoke;
                  v61[1] = &unk_278B57918;
                  v62 = v46;
                  v63 = integerValue;
                  [v48 scrubView:self thumbnailForPage:integerValue size:v60 withCompletionBlock:{32.0, thumbHeight}];
                }

                [(QLScrubView *)self _thumbnailFrameForPageAtIndex:integerValue];
                v51 = v50;
                v53 = v52;
                v55 = v54;
                v57 = v56;
                [(QLThumbnailView *)v46 setUnselectedFrame:?];
                if (integerValue == self->_selectedPage)
                {
                  v75.origin.x = v51;
                  v75.origin.y = v53;
                  v75.size.width = v55;
                  v75.size.height = v57;
                  v76 = CGRectInset(v75, -8.0, -8.0);
                  [(QLThumbnailView *)v46 setFrame:v76.origin.x, v76.origin.y, v76.size.width, v76.size.height];
                  objc_storeStrong(&self->_selectedThumbnailView, v46);
                }

                else
                {
                  [(QLThumbnailView *)v46 setFrame:v51, v53, v55, v57];
                }

                [(QLThumbnailView *)v46 setAlwaysVisible:1];
                [(QLScrubView *)self addSubview:v46];
                [(QLScrubView *)self bringSubviewToFront:v46];
              }

              v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v64 objects:v72 count:16];
            }

            while (v38);
          }

          if (self->_selectedThumbnailView)
          {
            [(QLScrubView *)self bringSubviewToFront:?];
          }
        }
      }
    }
  }
}

void __29__QLScrubView_layoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = v3;
  QLRunInMainThread();
}

void *__29__QLScrubView_layoutSubviews__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) pageNumber];
  if (result == *(a1 + 48))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 setImage:v4];
  }

  return result;
}

- (void)_updateSelectedThumbnailView
{
  selectedPage = self->_selectedPage;
  if ((selectedPage & 0x8000000000000000) == 0 && (selectedPage != [(QLThumbnailView *)self->_selectedThumbnailView pageNumber]|| !self->_selectedThumbnailView))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_selectedPage];
    alwaysVisible = [(QLThumbnailView *)self->_selectedThumbnailView alwaysVisible];
    selectedThumbnailView = self->_selectedThumbnailView;
    if (alwaysVisible)
    {
      [(QLThumbnailView *)selectedThumbnailView unselectedFrame];
      [(QLThumbnailView *)self->_selectedThumbnailView setFrame:?];
    }

    else
    {
      [(QLThumbnailView *)selectedThumbnailView removeFromSuperview];
    }

    v7 = [(NSMutableDictionary *)self->_thumbViews objectForKey:v4];
    v8 = self->_selectedThumbnailView;
    self->_selectedThumbnailView = v7;

    v9 = self->_selectedThumbnailView;
    if (v9)
    {
      [(QLThumbnailView *)v9 unselectedFrame];
      x = v29.origin.x;
      y = v29.origin.y;
      width = v29.size.width;
      height = v29.size.height;
      if (CGRectEqualToRect(v29, *MEMORY[0x277CBF3A0]))
      {
        [(QLScrubView *)self _thumbnailFrameForPageAtIndex:self->_selectedPage];
        x = v14;
        y = v15;
        width = v16;
        height = v17;
        [(QLThumbnailView *)self->_selectedThumbnailView setUnselectedFrame:?];
      }
    }

    else
    {
      [(QLScrubView *)self _thumbnailFrameForPageAtIndex:self->_selectedPage];
      x = v18;
      y = v19;
      width = v20;
      height = v21;
      v22 = [[QLThumbnailView alloc] initWithFrame:v18, v19, v20, v21];
      v23 = self->_selectedThumbnailView;
      self->_selectedThumbnailView = v22;

      [(QLThumbnailView *)self->_selectedThumbnailView setPageNumber:self->_selectedPage];
      [(QLThumbnailView *)self->_selectedThumbnailView setUnselectedFrame:x, y, width, height];
      [(NSMutableDictionary *)self->_thumbViews setObject:self->_selectedThumbnailView forKey:v4];
    }

    image = [(QLThumbnailView *)self->_selectedThumbnailView image];

    if (!image)
    {
      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
      v26 = self->_selectedPage;
      thumbHeight = self->_thumbHeight;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __43__QLScrubView__updateSelectedThumbnailView__block_invoke;
      v28[3] = &unk_278B57940;
      v28[4] = self;
      [WeakRetained scrubView:self thumbnailForPage:v26 size:v28 withCompletionBlock:{32.0, thumbHeight}];
    }

    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v31 = CGRectInset(v30, -8.0, -8.0);
    [(QLThumbnailView *)self->_selectedThumbnailView setFrame:v31.origin.x, v31.origin.y, v31.size.width, v31.size.height];
    [(QLScrubView *)self addSubview:self->_selectedThumbnailView];
    [(QLScrubView *)self bringSubviewToFront:self->_selectedThumbnailView];
  }
}

void __43__QLScrubView__updateSelectedThumbnailView__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = v3;
  QLRunInMainThread();
}

void *__43__QLScrubView__updateSelectedThumbnailView__block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 472) pageNumber];
  v3 = *(a1 + 32);
  if (result == *(v3 + 448))
  {
    v4 = *(a1 + 40);
    v5 = *(v3 + 472);

    return [v5 setImage:v4];
  }

  return result;
}

- (QLScrubViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (QLScrubViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end