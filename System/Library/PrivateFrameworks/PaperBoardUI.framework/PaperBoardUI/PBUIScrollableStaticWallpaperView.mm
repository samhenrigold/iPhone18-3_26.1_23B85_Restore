@interface PBUIScrollableStaticWallpaperView
- (CGPoint)_boundedContentOffsetForOverhang;
- (CGPoint)_maximumContentOffsetForOverhang;
- (CGPoint)_minimumContentOffsetForOverhang;
- (CGRect)_cropRect;
- (CGRect)cropRect;
- (CGSize)_imageSize;
- (PBUIScrollableStaticWallpaperView)initWithFrame:(CGRect)frame configuration:(id)configuration variant:(int64_t)variant cacheGroup:(id)group delegate:(id)delegate options:(unint64_t)options;
- (double)_parallaxFactorWithZoomScale:(double)scale contentOffset:(CGPoint)offset;
- (double)_scrollViewParallaxFactor;
- (double)_throttleDuration;
- (double)cropZoomScale;
- (id)_newImageView;
- (id)_wallpaperImageForAnalysis;
- (void)_cancelThrottle;
- (void)_resetColorBoxes;
- (void)_scrollViewDidUpdate;
- (void)_setupContentViewWithOptions:(unint64_t)options;
- (void)_setupScrollView;
- (void)_updateParallaxForScroll;
- (void)_updateScrollViewZoomScales;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)scrollViewDidChangeAdjustedContentInset:(id)inset;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)setContentView:(id)view;
- (void)setCropRect:(CGRect)rect zoomScale:(double)scale;
- (void)setParallaxEnabled:(BOOL)enabled;
@end

@implementation PBUIScrollableStaticWallpaperView

- (PBUIScrollableStaticWallpaperView)initWithFrame:(CGRect)frame configuration:(id)configuration variant:(int64_t)variant cacheGroup:(id)group delegate:(id)delegate options:(unint64_t)options
{
  v17.receiver = self;
  v17.super_class = PBUIScrollableStaticWallpaperView;
  v8 = [(PBUIStaticWallpaperView *)&v17 initWithFrame:configuration configuration:variant variant:group cacheGroup:delegate delegate:options options:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v8)
  {
    v9 = +[PBUIWallpaperDomain rootSettings];
    lockScreenParallaxSettings = [v9 lockScreenParallaxSettings];
    parallaxSettings = v8->_parallaxSettings;
    v8->_parallaxSettings = lockScreenParallaxSettings;

    v8->_automaticallyEnablesParallax = 1;
    v12 = dispatch_queue_create("com.apple.PaperBoardSevices.ScrollableStaticWallpaperView", 0);
    workQueue = v8->_workQueue;
    v8->_workQueue = v12;

    v14 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
    throttleCanUpdateFlag = v8->_throttleCanUpdateFlag;
    v8->_throttleCanUpdateFlag = v14;

    [(PBUIScrollableStaticWallpaperView *)v8 setOpaque:1];
  }

  return v8;
}

- (void)dealloc
{
  [(PBUIScrollableStaticWallpaperView *)self _cancelThrottle];
  [(UIScrollView *)self->_scrollView setDelegate:0];
  v3.receiver = self;
  v3.super_class = PBUIScrollableStaticWallpaperView;
  [(PBUIWallpaperView *)&v3 dealloc];
}

- (void)setParallaxEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (![(PBUIWallpaperView *)self parallaxEnabled]&& enabledCopy)
  {
    [(UIScrollView *)self->_scrollView zoomScale];
    minimumZoomScale = v5;
    [(UIScrollView *)self->_scrollView zoomScale];
    if (v7 < self->_minimumZoomScaleForParallax)
    {
      [(UIScrollView *)self->_scrollView setZoomScale:1 animated:?];
      minimumZoomScale = self->_minimumZoomScale;
    }

    [(PBUIScrollableStaticWallpaperView *)self _boundedContentOffsetForOverhang];
    v9 = v8;
    v11 = v10;
    [(UIScrollView *)self->_scrollView setContentOffset:1 animated:?];
    [(PBUIScrollableStaticWallpaperView *)self _parallaxFactorWithZoomScale:minimumZoomScale contentOffset:v9, v11];
    [(PBUIWallpaperView *)self setParallaxFactor:?];
  }

  v12.receiver = self;
  v12.super_class = PBUIScrollableStaticWallpaperView;
  [(PBUIWallpaperView *)&v12 setParallaxEnabled:enabledCopy];
}

- (double)_scrollViewParallaxFactor
{
  scrollView = self->_scrollView;
  if (!scrollView)
  {
    return 1.0;
  }

  [(UIScrollView *)scrollView zoomScale];
  v5 = v4;
  [(UIScrollView *)self->_scrollView contentOffset];

  [(PBUIScrollableStaticWallpaperView *)self _parallaxFactorWithZoomScale:v5 contentOffset:v6, v7];
  return result;
}

- (double)_parallaxFactorWithZoomScale:(double)scale contentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v57 = *MEMORY[0x277D85DE8];
  v8 = PBUILogCommon(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21E67D000, v8, OS_LOG_TYPE_INFO, "//////////_parallaxFactorWithZoomScale//////////", buf, 2u);
  }

  v10 = PBUILogCommon(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    scaleCopy = scale;
    _os_log_impl(&dword_21E67D000, v10, OS_LOG_TYPE_INFO, "zoomScale %g", buf, 0xCu);
  }

  v12 = PBUILogCommon(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    minimumZoomScale = self->_minimumZoomScale;
    *buf = 134217984;
    scaleCopy = minimumZoomScale;
    _os_log_impl(&dword_21E67D000, v12, OS_LOG_TYPE_INFO, "minimumZoomScale %g", buf, 0xCu);
  }

  v15 = PBUILogCommon(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    minimumZoomScaleForParallax = self->_minimumZoomScaleForParallax;
    *buf = 134217984;
    scaleCopy = minimumZoomScaleForParallax;
    _os_log_impl(&dword_21E67D000, v15, OS_LOG_TYPE_INFO, "minimumZoomScaleForParallax %g", buf, 0xCu);
  }

  v17 = fmin(fmax((scale - self->_minimumZoomScale) / (self->_minimumZoomScaleForParallax - self->_minimumZoomScale), 0.0), 1.0);
  v19 = PBUILogCommon(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    scaleCopy = v17;
    _os_log_impl(&dword_21E67D000, v19, OS_LOG_TYPE_INFO, "zoomFactor %g", buf, 0xCu);
  }

  v54 = v17;

  _minimumContentOffsetForOverhang = [(PBUIScrollableStaticWallpaperView *)self _minimumContentOffsetForOverhang];
  v22 = v21;
  v24 = v23;
  v25 = PBUILogCommon(_minimumContentOffsetForOverhang);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v58.x = v22;
    v58.y = v24;
    NSStringFromCGPoint(v58);
    v26 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 138543362;
    scaleCopy = v26;
    _os_log_impl(&dword_21E67D000, v25, OS_LOG_TYPE_INFO, "minOffset %{public}@", buf, 0xCu);
  }

  _maximumContentOffsetForOverhang = [(PBUIScrollableStaticWallpaperView *)self _maximumContentOffsetForOverhang];
  v29 = v28;
  v31 = v30;
  v32 = PBUILogCommon(_maximumContentOffsetForOverhang);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v59.x = v29;
    v59.y = v31;
    NSStringFromCGPoint(v59);
    v33 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 138543362;
    scaleCopy = v33;
    _os_log_impl(&dword_21E67D000, v32, OS_LOG_TYPE_INFO, "maxOffset %{public}@", buf, 0xCu);
  }

  v35 = PBUILogCommon(v34);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    scaleCopy = x / v22;
    _os_log_impl(&dword_21E67D000, v35, OS_LOG_TYPE_INFO, "minOffsetXFactor %g", buf, 0xCu);
  }

  v36 = y;
  v37 = y / v24;
  v39 = PBUILogCommon(v38);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    scaleCopy = v37;
    _os_log_impl(&dword_21E67D000, v39, OS_LOG_TYPE_INFO, "minOffsetYFactor %g", buf, 0xCu);
  }

  if (x / v22 >= v37)
  {
    v41 = v37;
  }

  else
  {
    v41 = x / v22;
  }

  v42 = fmin(fmax(v41, 0.0), 1.0);
  v43 = PBUILogCommon(v40);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    scaleCopy = v42;
    _os_log_impl(&dword_21E67D000, v43, OS_LOG_TYPE_INFO, "minOffsetFactor %g", buf, 0xCu);
  }

  v45 = (v22 + v29 - x) / v22;
  if (v45 >= (v24 + v31 - v36) / v24)
  {
    v45 = (v24 + v31 - v36) / v24;
  }

  v46 = fmin(fmax(v45, 0.0), 1.0);
  v47 = PBUILogCommon(v44);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    scaleCopy = v46;
    _os_log_impl(&dword_21E67D000, v47, OS_LOG_TYPE_INFO, "maxOffsetFactor %g", buf, 0xCu);
  }

  v49 = v54;
  if (v54 > v42)
  {
    v49 = v42;
  }

  if (v49 <= v46)
  {
    v46 = v49;
  }

  v50 = PBUILogCommon(v48);
  if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    scaleCopy = v46;
    _os_log_impl(&dword_21E67D000, v50, OS_LOG_TYPE_INFO, "result: %g", buf, 0xCu);
  }

  v52 = PBUILogCommon(v51);
  if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21E67D000, v52, OS_LOG_TYPE_INFO, "/////////////////////////", buf, 2u);
  }

  return v46;
}

- (void)_resetColorBoxes
{
  _createColorBoxes = [(PBUIStaticWallpaperView *)self _createColorBoxes];
  [(PBUIStaticWallpaperView *)self setColorBoxes:_createColorBoxes];
}

- (void)setContentView:(id)view
{
  v4.receiver = self;
  v4.super_class = PBUIScrollableStaticWallpaperView;
  [(PBUIWallpaperView *)&v4 setContentView:view];
  [(PBUIScrollableStaticWallpaperView *)self _resetColorBoxes];
}

- (void)_setupContentViewWithOptions:(unint64_t)options
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  v4 = *MEMORY[0x277CBF348];
  v5 = *(MEMORY[0x277CBF348] + 8);
  [mainScreen bounds];
  v8 = [objc_alloc(MEMORY[0x277D759D8]) initWithFrame:{v4, v5, v6, v7}];
  scrollView = self->_scrollView;
  self->_scrollView = v8;

  v10 = self->_scrollView;
  [(PBUIScrollableStaticWallpaperView *)self frame];
  UIRectGetCenter();
  [(UIScrollView *)v10 setCenter:?];
  [(UIScrollView *)self->_scrollView setClipsToBounds:0];
  [(UIScrollView *)self->_scrollView setScrollsToTop:0];
  [(UIScrollView *)self->_scrollView setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)self->_scrollView setShowsVerticalScrollIndicator:0];
  [(UIScrollView *)self->_scrollView setContentInsetAdjustmentBehavior:2];
  [(UIScrollView *)self->_scrollView _setSupportsPointerDragScrolling:1];
  _newImageView = [(PBUIScrollableStaticWallpaperView *)self _newImageView];
  imageView = self->_imageView;
  self->_imageView = _newImageView;

  [(UIScrollView *)self->_scrollView addSubview:self->_imageView];
  [(PBUIScrollableStaticWallpaperView *)self _setupScrollView];
  [(PBUIScrollableStaticWallpaperView *)self setContentView:self->_scrollView];
}

- (id)_newImageView
{
  v3 = objc_alloc(MEMORY[0x277D755E8]);
  wallpaperImage = [(PBUIStaticWallpaperView *)self wallpaperImage];
  v5 = [v3 initWithImage:wallpaperImage];

  return v5;
}

- (void)didMoveToWindow
{
  window = [(PBUIScrollableStaticWallpaperView *)self window];

  if (window)
  {

    [(PBUIScrollableStaticWallpaperView *)self _scrollViewDidUpdate];
  }
}

- (CGSize)_imageSize
{
  [(PBUIScrollableStaticWallpaperView *)self _cropRect];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (id)_wallpaperImageForAnalysis
{
  [(UIScrollView *)self->_scrollView zoomScale];
  v4 = v3;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v7 = v6;

  [(PBUIScrollableStaticWallpaperView *)self _cropRect];
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  if (CGRectEqualToRect(v18, *MEMORY[0x277CBF3A0]))
  {
    v12 = 0;
  }

  else
  {
    v17.width = width;
    v17.height = height;
    UIGraphicsBeginImageContextWithOptions(v17, 1, v7);
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextScaleCTM(CurrentContext, v4, v4);
    wallpaperImage = [(PBUIStaticWallpaperView *)self wallpaperImage];
    [wallpaperImage drawAtPoint:{-x / v4, -y / v4}];

    v12 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v12;
}

- (void)_cancelThrottle
{
  throttleTimer = self->_throttleTimer;
  if (throttleTimer)
  {
    dispatch_source_cancel(throttleTimer);
    v4 = self->_throttleTimer;
    self->_throttleTimer = 0;
  }

  throttleCanUpdateFlag = self->_throttleCanUpdateFlag;

  [(BSAtomicFlag *)throttleCanUpdateFlag setFlag:0];
}

- (void)_scrollViewDidUpdate
{
  if ([(BSAtomicFlag *)self->_throttleCanUpdateFlag setFlag:1])
  {
    if (!self->_throttleTimer)
    {
      [(PBUIScrollableStaticWallpaperView *)self _throttleDuration];
      v4 = v3;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __57__PBUIScrollableStaticWallpaperView__scrollViewDidUpdate__block_invoke;
      handler[3] = &unk_278361E18;
      handler[4] = self;
      v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
      if (v5)
      {
        v6 = dispatch_time(0, (v4 * 1000000000.0));
        dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
        dispatch_source_set_event_handler(v5, handler);
        dispatch_resume(v5);
      }

      throttleTimer = self->_throttleTimer;
      self->_throttleTimer = v5;
    }

    [(PBUIScrollableStaticWallpaperView *)self _updateParallaxForScroll];
    objc_initWeak(&location, self);
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__PBUIScrollableStaticWallpaperView__scrollViewDidUpdate__block_invoke_2;
    block[3] = &unk_278363040;
    objc_copyWeak(&v10, &location);
    dispatch_async(workQueue, block);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __57__PBUIScrollableStaticWallpaperView__scrollViewDidUpdate__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _createColorBoxes];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__PBUIScrollableStaticWallpaperView__scrollViewDidUpdate__block_invoke_3;
  v5[3] = &unk_278363718;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __57__PBUIScrollableStaticWallpaperView__scrollViewDidUpdate__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setColorBoxes:*(a1 + 32)];
  v2 = [WeakRetained _computeAverageColor];
  [WeakRetained updateLegibilitySettingsForAverageColor:v2];
}

- (void)_updateParallaxForScroll
{
  [(PBUIScrollableStaticWallpaperView *)self _scrollViewParallaxFactor];
  v4 = v3;
  parallaxEnabled = [(PBUIWallpaperView *)self parallaxEnabled];
  if (v4 >= 0.75 || !parallaxEnabled)
  {
    v7 = parallaxEnabled;
    v10.receiver = self;
    v10.super_class = PBUIScrollableStaticWallpaperView;
    [(PBUIWallpaperView *)&v10 parallaxFactor];
    if (v4 >= 0.75 && vabdd_f64(v4, v8) > 0.1)
    {
      [(PBUIWallpaperView *)self setParallaxFactor:v4];
      if (v7 || !self->_automaticallyEnablesParallax)
      {
        [(PBUIWallpaperView *)self _applyParallaxSettings];
      }

      else
      {
        v9.receiver = self;
        v9.super_class = PBUIScrollableStaticWallpaperView;
        [(PBUIWallpaperView *)&v9 setParallaxEnabled:1];
        self->_automaticallyEnablesParallax = 0;
      }
    }
  }

  else
  {
    [(PBUIScrollableStaticWallpaperView *)self setParallaxEnabled:0];
    self->_automaticallyEnablesParallax = 1;
  }
}

- (double)_throttleDuration
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice _graphicsQuality] == 100)
  {
    v3 = 0.2;
  }

  else
  {
    v3 = 1.0;
  }

  return v3;
}

- (void)_updateScrollViewZoomScales
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = PBUILogCommon(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21E67D000, v3, OS_LOG_TYPE_INFO, "//////////_updateScrollViewZoomScales//////////", buf, 2u);
  }

  v34.receiver = self;
  v34.super_class = PBUIScrollableStaticWallpaperView;
  wallpaperImage = [(PBUIStaticWallpaperView *)&v34 wallpaperImage];
  [wallpaperImage size];
  v6 = v5;
  v8 = v7;

  v10 = PBUILogCommon(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v38.width = v6;
    v38.height = v8;
    v11 = NSStringFromCGSize(v38);
    *buf = 138543362;
    v36 = *&v11;
    _os_log_impl(&dword_21E67D000, v10, OS_LOG_TYPE_INFO, "imageSize: %{public}@", buf, 0xCu);
  }

  [(UIScrollView *)self->_scrollView bounds];
  v14 = v13 / v6;
  if (v13 / v6 < v12 / v8)
  {
    v14 = v12 / v8;
  }

  self->_minimumZoomScale = v14;
  [(UIScrollView *)self->_scrollView setMinimumZoomScale:?];
  [(UIScrollView *)self->_scrollView setMaximumZoomScale:fmax(self->_minimumZoomScale + self->_minimumZoomScale, 5.0)];
  v15 = +[PBUIWallpaperParallaxSettings minimumWallpaperSizeForCurrentDevice];
  v17 = v16;
  v19 = v18;
  v20 = PBUILogCommon(v15);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v39.width = v17;
    v39.height = v19;
    v21 = NSStringFromCGSize(v39);
    *buf = 138543362;
    v36 = *&v21;
    _os_log_impl(&dword_21E67D000, v20, OS_LOG_TYPE_INFO, "parallaxSize: %{public}@", buf, 0xCu);
  }

  v22 = v17 / v6;
  v24 = PBUILogCommon(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v36 = v22;
    _os_log_impl(&dword_21E67D000, v24, OS_LOG_TYPE_INFO, "scaleX: %g", buf, 0xCu);
  }

  v25 = v19 / v8;
  v27 = PBUILogCommon(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v36 = v25;
    _os_log_impl(&dword_21E67D000, v27, OS_LOG_TYPE_INFO, "scaleY: %g", buf, 0xCu);
  }

  if (v22 >= v25)
  {
    v29 = v22;
  }

  else
  {
    v29 = v25;
  }

  self->_minimumZoomScaleForParallax = v29;
  v30 = PBUILogCommon(v28);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    minimumZoomScaleForParallax = self->_minimumZoomScaleForParallax;
    *buf = 134217984;
    v36 = minimumZoomScaleForParallax;
    _os_log_impl(&dword_21E67D000, v30, OS_LOG_TYPE_INFO, "minimumZoomScaleForParallax: %g", buf, 0xCu);
  }

  v33 = PBUILogCommon(v32);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_21E67D000, v33, OS_LOG_TYPE_INFO, "/////////////////////////", buf, 2u);
  }
}

- (void)_setupScrollView
{
  v11.receiver = self;
  v11.super_class = PBUIScrollableStaticWallpaperView;
  wallpaperImage = [(PBUIStaticWallpaperView *)&v11 wallpaperImage];
  [wallpaperImage size];
  v5 = v4;
  v7 = v6;

  [(UIScrollView *)self->_scrollView setContentSize:v5, v7];
  [(UIScrollView *)self->_scrollView setDelegate:self];
  [(PBUIScrollableStaticWallpaperView *)self _updateScrollViewZoomScales];
  [(UIScrollView *)self->_scrollView setZoomScale:self->_minimumZoomScaleForParallax];
  [(UIScrollView *)self->_scrollView contentSize];
  v9 = v8;
  [(UIScrollView *)self->_scrollView bounds];
  [(UIScrollView *)self->_scrollView setContentOffset:(v9 - v10) * 0.5, 0.0];
  [(PBUIScrollableStaticWallpaperView *)self _boundedContentOffsetForOverhang];
  [(UIScrollView *)self->_scrollView setContentOffset:0 animated:?];
  [(UIScrollView *)self->_scrollView setBounces:1];
  [(UIScrollView *)self->_scrollView setAlwaysBounceHorizontal:1];
  [(UIScrollView *)self->_scrollView setAlwaysBounceVertical:1];
  [(UIScrollView *)self->_scrollView setScrollEnabled:1];
}

- (CGPoint)_boundedContentOffsetForOverhang
{
  [(UIScrollView *)self->_scrollView contentOffset];
  v4 = v3;
  v6 = v5;
  [(PBUIScrollableStaticWallpaperView *)self _minimumContentOffsetForOverhang];
  v8 = v7;
  v10 = v9;
  [(PBUIScrollableStaticWallpaperView *)self _maximumContentOffsetForOverhang];
  if (v8 >= v4)
  {
    v13 = v8;
  }

  else
  {
    v13 = v4;
  }

  if (v11 > v13)
  {
    v11 = v13;
  }

  if (v10 >= v6)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (v12 > v14)
  {
    v12 = v14;
  }

  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)_minimumContentOffsetForOverhang
{
  +[PBUIWallpaperParallaxSettings overhangSizeForCurrentDevice];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)_maximumContentOffsetForOverhang
{
  +[PBUIWallpaperParallaxSettings overhangSizeForCurrentDevice];
  v4 = v3;
  v6 = v5;
  [(UIScrollView *)self->_scrollView contentSize];
  v8 = v7;
  v10 = v9;
  [(UIScrollView *)self->_scrollView bounds];
  v12 = v8 - v11 - v4;
  v14 = v10 - v13 - v6;
  result.y = v14;
  result.x = v12;
  return result;
}

- (CGRect)_cropRect
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = PBUILogCommon(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf.a) = 0;
    _os_log_impl(&dword_21E67D000, v3, OS_LOG_TYPE_INFO, "//////////_cropRect//////////", &buf, 2u);
  }

  bounds = [(UIScrollView *)self->_scrollView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = PBUILogCommon(bounds);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v70.origin.x = v6;
    v70.origin.y = v8;
    v70.size.width = v10;
    v70.size.height = v12;
    v14 = NSStringFromCGRect(v70);
    LODWORD(buf.a) = 138543362;
    *(&buf.a + 4) = v14;
    _os_log_impl(&dword_21E67D000, v13, OS_LOG_TYPE_INFO, "zoomedRect: %{public}@", &buf, 0xCu);
  }

  zoomScale = [(UIScrollView *)self->_scrollView zoomScale];
  v17 = v16;
  v18 = PBUILogCommon(zoomScale);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.a) = 134217984;
    *(&buf.a + 4) = v17;
    _os_log_impl(&dword_21E67D000, v18, OS_LOG_TYPE_INFO, "zoomScale: %g", &buf, 0xCu);
  }

  v65.receiver = self;
  v65.super_class = PBUIScrollableStaticWallpaperView;
  wallpaperImage = [(PBUIStaticWallpaperView *)&v65 wallpaperImage];
  v20 = wallpaperImage;
  if (v17 == 0.0 || wallpaperImage == 0)
  {
    v22 = *MEMORY[0x277CBF3A0];
    v23 = *(MEMORY[0x277CBF3A0] + 8);
    v24 = *(MEMORY[0x277CBF3A0] + 16);
    v25 = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    v26 = [wallpaperImage size];
    v28 = v17 * v27;
    v30 = v17 * v29;
    v31 = PBUILogCommon(v26);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v68.width = v28;
      v68.height = v30;
      v33 = NSStringFromCGSize(v68);
      LODWORD(buf.a) = 138543362;
      *(&buf.a + 4) = v33;
      _os_log_impl(&dword_21E67D000, v31, OS_LOG_TYPE_INFO, "scaledImageSize: %{public}@", &buf, 0xCu);
    }

    v64 = v30;

    v34 = 0.0;
    if ([(PBUIWallpaperView *)self parallaxEnabled])
    {
      [(PBUIScrollableStaticWallpaperView *)self parallaxFactor];
      v34 = v35;
    }

    v36 = [PBUIWallpaperParallaxSettings bestWallpaperSizeForParallaxFactor:v34];
    v38 = v37;
    v40 = v39;
    v41 = PBUILogCommon(v36);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.a) = 134217984;
      *(&buf.a + 4) = v34;
      _os_log_impl(&dword_21E67D000, v41, OS_LOG_TYPE_INFO, "parallaxFactor: %g", &buf, 0xCu);
    }

    v43 = PBUILogCommon(v42);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v69.width = v38;
      v69.height = v40;
      v44 = NSStringFromCGSize(v69);
      LODWORD(buf.a) = 138543362;
      *(&buf.a + 4) = v44;
      _os_log_impl(&dword_21E67D000, v43, OS_LOG_TYPE_INFO, "bestSize: %{public}@", &buf, 0xCu);
    }

    v46 = (v38 - v10) * 0.5;
    v47 = (v40 - v12) * 0.5;
    if (v46 >= v6)
    {
      v46 = v6;
    }

    if (v46 >= v28 - (v6 + v10))
    {
      v46 = v28 - (v6 + v10);
    }

    if (v47 >= v8)
    {
      v47 = v8;
    }

    if (v47 >= v64 - (v8 + v12))
    {
      v47 = v64 - (v8 + v12);
    }

    if (v46 >= 0.0)
    {
      v48 = v46;
    }

    else
    {
      v48 = 0.0;
    }

    if (v47 >= 0.0)
    {
      v49 = v47;
    }

    else
    {
      v49 = 0.0;
    }

    v50 = PBUILogCommon(v45);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.a) = 134217984;
      *(&buf.a + 4) = v48;
      _os_log_impl(&dword_21E67D000, v50, OS_LOG_TYPE_INFO, "extraX: %g", &buf, 0xCu);
    }

    v52 = PBUILogCommon(v51);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.a) = 134217984;
      *(&buf.a + 4) = v49;
      _os_log_impl(&dword_21E67D000, v52, OS_LOG_TYPE_INFO, "extraY: %g", &buf, 0xCu);
    }

    [(PBUIWallpaperView *)self contentScaleFactor];
    CGAffineTransformMakeScale(&buf, 1.0 / v53, 1.0 / v53);
    v71.origin.x = v6 - v48;
    v71.origin.y = v8 - v49;
    v71.size.width = v10 + v48 * 2.0;
    v71.size.height = v12 + v49 * 2.0;
    CGRectApplyAffineTransform(v71, &buf);
    v55 = PBUILogCommon(v54);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.a) = 0;
      _os_log_impl(&dword_21E67D000, v55, OS_LOG_TYPE_INFO, "/////////////////////////", &buf, 2u);
    }

    UIRectCenteredIntegralRect();
    v22 = v56;
    v23 = v57;
    v24 = v58;
    v25 = v59;
  }

  v60 = v22;
  v61 = v23;
  v62 = v24;
  v63 = v25;
  result.size.height = v63;
  result.size.width = v62;
  result.origin.y = v61;
  result.origin.x = v60;
  return result;
}

- (CGRect)cropRect
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = PBUILogCommon(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v32) = 0;
    _os_log_impl(&dword_21E67D000, v3, OS_LOG_TYPE_INFO, "//////////cropRect//////////", &v32, 2u);
  }

  _cropRect = [(PBUIScrollableStaticWallpaperView *)self _cropRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = PBUILogCommon(_cropRect);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v35.origin.x = v6;
    v35.origin.y = v8;
    v35.size.width = v10;
    v35.size.height = v12;
    v14 = NSStringFromCGRect(v35);
    v32 = 138543362;
    v33 = v14;
    _os_log_impl(&dword_21E67D000, v13, OS_LOG_TYPE_INFO, "pre crop rect: %{public}@", &v32, 0xCu);
  }

  v15 = [(UIScrollView *)self->_scrollView convertRect:self->_imageView toView:v6, v8, v10, v12];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = PBUILogCommon(v15);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v36.origin.x = v17;
    v36.origin.y = v19;
    v36.size.width = v21;
    v36.size.height = v23;
    v25 = NSStringFromCGRect(v36);
    v32 = 138543362;
    v33 = v25;
    _os_log_impl(&dword_21E67D000, v24, OS_LOG_TYPE_INFO, "result crop rect: %{public}@", &v32, 0xCu);
  }

  v27 = PBUILogCommon(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    LOWORD(v32) = 0;
    _os_log_impl(&dword_21E67D000, v27, OS_LOG_TYPE_INFO, "/////////////////////////", &v32, 2u);
  }

  v28 = v17;
  v29 = v19;
  v30 = v21;
  v31 = v23;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (double)cropZoomScale
{
  [(UIScrollView *)self->_scrollView zoomScale];
  v4 = v3;
  [(PBUIWallpaperView *)self contentScaleFactor];
  return v4 * v5;
}

- (void)setCropRect:(CGRect)rect zoomScale:(double)scale
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!CGRectIsEmpty(rect))
  {
    [(PBUIWallpaperView *)self contentScaleFactor];
    v11 = v10;
    [(UIScrollView *)self->_scrollView setZoomScale:scale / v10];
    [(UIScrollView *)self->_scrollView convertRect:self->_imageView fromView:x, y, width, height];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    CGAffineTransformMakeScale(&v30, v11, v11);
    v31.origin.x = v13;
    v31.origin.y = v15;
    v31.size.width = v17;
    v31.size.height = v19;
    CGRectApplyAffineTransform(v31, &v30);
    UIRectCenteredIntegralRect();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    [(UIScrollView *)self->_scrollView bounds];
    [(UIScrollView *)self->_scrollView setContentOffset:v21 + (v25 - v28) * 0.5, v23 + (v27 - v29) * 0.5];
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PBUIScrollableStaticWallpaperView;
  [(PBUIWallpaperView *)&v5 layoutSubviews];
  scrollView = self->_scrollView;
  superview = [(UIScrollView *)scrollView superview];
  [superview bounds];
  UIRectGetCenter();
  [(UIScrollView *)scrollView setCenter:?];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(PBUIScrollableStaticWallpaperView *)self _scrollViewDidUpdate];
  }
}

- (void)scrollViewDidChangeAdjustedContentInset:(id)inset
{
  if ([(PBUIWallpaperView *)self parallaxEnabled])
  {
    [(PBUIScrollableStaticWallpaperView *)self _boundedContentOffsetForOverhang];
    scrollView = self->_scrollView;

    [(UIScrollView *)scrollView setContentOffset:1 animated:?];
  }
}

@end