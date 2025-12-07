@interface QLLivePhotoItemViewController
- (BOOL)_isPointInNonImageSubjectItems:(CGPoint)items;
- (BOOL)_wasJustPlaying;
- (BOOL)canEnterFullScreen;
- (BOOL)canPerformFirstTimeAppearanceActions:(unint64_t)actions;
- (BOOL)canToggleFullScreen;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)livePhotoView:(id)view canBeginPlaybackWithStyle:(int64_t)style;
- (BOOL)shouldAcceptTouch:(id)touch ofGestureRecognizer:(id)recognizer;
- (BOOL)shouldDetectMachineReadableCode;
- (CGSize)imageSize;
- (NSDictionary)clientPreviewOptions;
- (UIImage)imageForAnalysis;
- (double)livePhotoView:(id)view extraMinimumTouchDurationForTouch:(id)touch withStyle:(int64_t)style;
- (id)toolbarButtonsForTraitCollection:(id)collection;
- (void)_setupAndStartImageAnalysisIfNeeded;
- (void)_updateImageAnalysisInteractionAnimated:(BOOL)animated;
- (void)_updateLivePhotoBadgeAnimated:(BOOL)animated;
- (void)animateToPreferredDynamicRange;
- (void)buttonPressedWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)didEndZoomingAtScale:(double)scale;
- (void)imageAnalysisInteractionDidDismissVisualSearchController;
- (void)imageAnalysisInteractionWillPresentVisualSearchController;
- (void)imageAnalyzerWantsUpdateInfoButtonWithAnimation:(BOOL)animation;
- (void)livePhotoView:(id)view didEndPlaybackWithStyle:(int64_t)style;
- (void)livePhotoView:(id)view willBeginPlaybackWithStyle:(int64_t)style;
- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler;
- (void)performFirstTimeAppearanceActions:(unint64_t)actions;
- (void)previewBecameFullScreen:(BOOL)screen animated:(BOOL)animated;
- (void)previewDidAppear:(BOOL)appear;
- (void)previewDidDisappear:(BOOL)disappear;
- (void)previewWillAppear:(BOOL)appear;
- (void)previewWillDisappear:(BOOL)disappear;
- (void)previewWillFinishAppearing;
- (void)setAppearance:(id)appearance animated:(BOOL)animated;
- (void)transitionDidFinish:(BOOL)finish didComplete:(BOOL)complete;
- (void)transitionDidStart:(BOOL)start;
- (void)updatePreferredDynamicRangeForced:(BOOL)forced;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation QLLivePhotoItemViewController

- (void)loadPreviewControllerWithContents:(id)contents context:(id)context completionHandler:(id)handler
{
  contentsCopy = contents;
  handlerCopy = handler;
  v8 = contentsCopy;
  [v8 size];
  if (v8)
  {
    v10 = v8;
    v11 = handlerCopy;
    QLRunInMainThread();
  }

  else if (handlerCopy)
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.quicklook.livePhotoItemViewController" code:1 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, v9);
  }
}

uint64_t __93__QLLivePhotoItemViewController_loadPreviewControllerWithContents_context_completionHandler___block_invoke(uint64_t a1, double a2)
{
  v61[1] = *MEMORY[0x277D85DE8];
  gotLoadHelper_x23__OBJC_CLASS___PHLivePhotoView(a2);
  v4 = objc_opt_new();
  v5 = *(a1 + 32);
  v6 = *(v5 + 1176);
  *(v5 + 1176) = v4;

  [*(*(a1 + 32) + 1176) setDelegate:?];
  [*(*(a1 + 32) + 1176) setLivePhoto:*(a1 + 40)];
  [*(*(a1 + 32) + 1176) setAccessibilityIdentifier:@"QLLivePhotoViewControllerLivePhotoViewAccessibilityIdentifier"];
  v7 = *(a1 + 32);
  if (v7[1221] == 1)
  {
    [v7 animateToPreferredDynamicRange];
  }

  else
  {
    [v7 updatePreferredDynamicRangeForced:0];
  }

  v8 = (*(a1 + 32) + 1160);
  v9 = [*(a1 + 40) image];
  [v9 size];
  *v8 = v10;
  v8[1] = v11;

  [*(a1 + 32) setPreferredContentSize:{*(*(a1 + 32) + 1160), *(*(a1 + 32) + 1168)}];
  [*(a1 + 32) setContentView:*(*(a1 + 32) + 1176)];
  v12 = [*(*(a1 + 32) + 1176) playbackGestureRecognizer];
  v13 = [v12 view];
  v14 = [*(*(a1 + 32) + 1176) playbackGestureRecognizer];
  [v13 removeGestureRecognizer:v14];

  v15 = [*(a1 + 32) view];
  v16 = [*(*(a1 + 32) + 1176) playbackGestureRecognizer];
  [v15 addGestureRecognizer:v16];

  v17 = *(a1 + 32);
  v18 = [*(v17 + 1176) playbackGestureRecognizer];
  [v18 setDelegate:v17];

  v19 = objc_alloc_init(MEMORY[0x277D755E8]);
  v20 = *(a1 + 32);
  v21 = *(v20 + 1184);
  *(v20 + 1184) = v19;

  [*(*(a1 + 32) + 1184) setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = [*(v2 + 3424) livePhotoBadgeImageWithOptions:1];
  [*(*(a1 + 32) + 1184) setImage:v22];

  [*(*(a1 + 32) + 1184) setAccessibilityIdentifier:@"QLLivePhotoViewControllerLivePhotoBadgeAccessibilityIdentifier"];
  v23 = [*(a1 + 32) view];
  [v23 addSubview:*(*(a1 + 32) + 1184)];

  v24 = [*(*(a1 + 32) + 1184) image];
  [v24 size];
  v26 = v25;
  v28 = v27;

  v29 = [*(a1 + 32) view];
  v30 = MEMORY[0x277CCAAD0];
  v60 = @"width";
  v31 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
  v61[0] = v31;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:&v60 count:1];
  v33 = _NSDictionaryOfVariableBindings(&cfstr_Livephotobadge.isa, *(*(a1 + 32) + 1184), 0);
  v34 = [v30 constraintsWithVisualFormat:@"H:[_livePhotoBadge(width)]" options:0 metrics:v32 views:v33];
  [v29 addConstraints:v34];

  v35 = [*(a1 + 32) view];
  v36 = MEMORY[0x277CCAAD0];
  v58 = @"height";
  v37 = [MEMORY[0x277CCABB0] numberWithDouble:v28];
  v59 = v37;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
  v39 = _NSDictionaryOfVariableBindings(&cfstr_Livephotobadge.isa, *(*(a1 + 32) + 1184), 0);
  v40 = [v36 constraintsWithVisualFormat:@"V:[_livePhotoBadge(height)]" options:0 metrics:v38 views:v39];
  [v35 addConstraints:v40];

  v41 = MEMORY[0x277CCAAD0];
  v42 = *(a1 + 32);
  v43 = v42[148];
  v44 = [v42 view];
  v45 = [v41 constraintWithItem:v43 attribute:1 relatedBy:0 toItem:v44 attribute:1 multiplier:1.0 constant:0.0];
  v46 = [v45 ql_activatedConstraint];
  v47 = *(a1 + 32);
  v48 = *(v47 + 1192);
  *(v47 + 1192) = v46;

  v49 = MEMORY[0x277CCAAD0];
  v50 = *(a1 + 32);
  v51 = v50[148];
  v52 = [v50 view];
  v53 = [v49 constraintWithItem:v51 attribute:3 relatedBy:0 toItem:v52 attribute:3 multiplier:1.0 constant:0.0];
  v54 = [v53 ql_activatedConstraint];
  v55 = *(a1 + 32);
  v56 = *(v55 + 1200);
  *(v55 + 1200) = v54;

  *(*(a1 + 32) + 1232) = 1;
  *(*(a1 + 32) + 1219) = 1;
  [*(a1 + 32) _updateLivePhotoBadgeAnimated:0];
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)_updateLivePhotoBadgeAnimated:(BOOL)animated
{
  animatedCopy = animated;
  livePhotoView = self->_livePhotoView;
  view = [(QLLivePhotoItemViewController *)self view];
  [(PHLivePhotoView *)livePhotoView convertPoint:view toView:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  v8 = v7;
  v10 = v9;

  appearance = [(QLItemViewController *)self appearance];
  [appearance topInset];
  v13 = v12;

  [(NSLayoutConstraint *)self->_livePhotoBadgeLeftConstraint setConstant:v8 + 5.0];
  v14 = v13 + 5.0;
  if (v10 + 5.0 >= v13 + 5.0)
  {
    v14 = v10 + 5.0;
  }

  [(NSLayoutConstraint *)self->_livePhotoBadgeTopConstraint setConstant:v14];
  if (!self->_fullyZoomedOut || self->_isFullScreen || self->_isPlaying || self->_transitionInProgress)
  {
    v15 = 0;
  }

  else
  {
    appearance2 = [(QLItemViewController *)self appearance];
    v15 = [appearance2 presentationMode] != 4;
  }

  self->_livePhotoBadgeVisible = v15;
  view2 = [(QLLivePhotoItemViewController *)self view];
  [view2 setNeedsLayout];

  view3 = [(QLLivePhotoItemViewController *)self view];
  [view3 layoutIfNeeded];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__QLLivePhotoItemViewController__updateLivePhotoBadgeAnimated___block_invoke;
  aBlock[3] = &unk_278B57190;
  aBlock[4] = self;
  v18 = _Block_copy(aBlock);
  v19 = v18;
  if (animatedCopy)
  {
    [MEMORY[0x277D75D18] animateWithDuration:v18 animations:0.2];
  }

  else
  {
    (*(v18 + 2))(v18);
  }
}

uint64_t __63__QLLivePhotoItemViewController__updateLivePhotoBadgeAnimated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 0.0;
  if (*(v1 + 1217))
  {
    v2 = 1.0;
  }

  return [*(v1 + 1184) setAlpha:v2];
}

- (BOOL)_wasJustPlaying
{
  if (!self->_didEndPlayingTimestamp)
  {
    return 0;
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:self->_didEndPlayingTimestamp];
  v5 = v4 < 0.25;

  return v5;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = QLLivePhotoItemViewController;
  coordinatorCopy = coordinator;
  [(QLScrollableContentItemViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__QLLivePhotoItemViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_278B57208;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = QLLivePhotoItemViewController;
  [(QLLivePhotoItemViewController *)&v5 viewDidLayoutSubviews];
  if (self->_visualIntelligenceBarContainerView)
  {
    view = [(QLLivePhotoItemViewController *)self view];
    [view bounds];
    [(UIView *)self->_visualIntelligenceBarContainerView setFrame:?];

    view2 = [(QLLivePhotoItemViewController *)self view];
    [view2 bringSubviewToFront:self->_visualIntelligenceBarContainerView];
  }
}

- (void)previewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = QLLivePhotoItemViewController;
  [(QLScrollableContentItemViewController *)&v4 previewWillAppear:appear];
  [(PHLivePhotoView *)self->_livePhotoView stopPlayback];
  [(QLLivePhotoItemViewController *)self _updateLivePhotoBadgeAnimated:0];
  [(QLLivePhotoItemViewController *)self _updateImageAnalysisInteractionAnimated:0];
}

- (void)previewWillFinishAppearing
{
  v2.receiver = self;
  v2.super_class = QLLivePhotoItemViewController;
  [(QLItemViewController *)&v2 previewWillFinishAppearing];
}

- (void)previewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  if (_os_feature_enabled_impl())
  {
    appearance = [(QLItemViewController *)self appearance];
    v6 = +[QLImageAnalysisManager shouldStartImageAnalysisForPresentationMode:](QLImageAnalysisManager, "shouldStartImageAnalysisForPresentationMode:", [appearance presentationMode]);

    if (v6)
    {
      [(QLLivePhotoItemViewController *)self _setupAndStartImageAnalysisIfNeeded];
    }
  }

  v11.receiver = self;
  v11.super_class = QLLivePhotoItemViewController;
  [(QLScrollableContentItemViewController *)&v11 previewDidAppear:appearCopy];
  appearance2 = [(QLItemViewController *)self appearance];
  presentationMode = [appearance2 presentationMode];

  if (presentationMode == 4)
  {
    if (!self->_isPlaying)
    {
      [(PHLivePhotoView *)self->_livePhotoView startPlaybackWithStyle:1];
    }
  }

  else if (self->_isPlaying)
  {
    appearance3 = [(QLItemViewController *)self appearance];
    presentationMode2 = [appearance3 presentationMode];

    if (presentationMode2 != 4)
    {
      [(PHLivePhotoView *)self->_livePhotoView stopPlayback];
    }
  }

  [(QLLivePhotoItemViewController *)self _updateLivePhotoBadgeAnimated:1];
  [(QLLivePhotoItemViewController *)self _updateImageAnalysisInteractionAnimated:1];
}

- (void)previewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = QLLivePhotoItemViewController;
  [(QLItemViewController *)&v4 previewWillDisappear:disappear];
  [(QLImageAnalysisManager *)self->_imageAnalysisManager shouldHideInteraction:1 animated:0];
}

- (void)setAppearance:(id)appearance animated:(BOOL)animated
{
  animatedCopy = animated;
  appearanceCopy = appearance;
  appearance = [(QLItemViewController *)self appearance];
  v16.receiver = self;
  v16.super_class = QLLivePhotoItemViewController;
  [(QLScrollableContentItemViewController *)&v16 setAppearance:appearanceCopy animated:animatedCopy];

  [(QLLivePhotoItemViewController *)self _updateLivePhotoBadgeAnimated:animatedCopy];
  if (_os_feature_enabled_impl())
  {
    presentationMode = [appearance presentationMode];
    appearance2 = [(QLItemViewController *)self appearance];
    presentationMode2 = [appearance2 presentationMode];

    if (presentationMode != presentationMode2 && [QLImageAnalysisManager shouldStartImageAnalysisForPresentationMode:presentationMode2]&& ([(QLItemViewController *)self didAppearOnce]|| [(QLImageAnalysisManager *)self->_imageAnalysisManager hasAnalysis]))
    {
      [(QLLivePhotoItemViewController *)self _setupAndStartImageAnalysisIfNeeded];
    }
  }

  presentationMode3 = [appearance presentationMode];
  appearance3 = [(QLItemViewController *)self appearance];
  presentationMode4 = [appearance3 presentationMode];

  if (presentationMode3 != presentationMode4)
  {
    appearance4 = [(QLItemViewController *)self appearance];
    if ([appearance4 presentationMode] == 4)
    {
      isPlaying = self->_isPlaying;

      if (!isPlaying)
      {
        [(PHLivePhotoView *)self->_livePhotoView startPlaybackWithStyle:1];
      }
    }

    else
    {
    }

    [(QLLivePhotoItemViewController *)self updatePreferredDynamicRangeForced:0];
  }
}

- (void)previewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(QLImageAnalysisManager *)self->_imageAnalysisManager stopImageAnalysis];
  v5.receiver = self;
  v5.super_class = QLLivePhotoItemViewController;
  [(QLScrollableContentItemViewController *)&v5 previewDidDisappear:disappearCopy];
  self->_shouldPlayHint = 1;
  self->_isPlaying = 0;
  [(PHLivePhotoView *)self->_livePhotoView stopPlayback];
}

- (void)previewBecameFullScreen:(BOOL)screen animated:(BOOL)animated
{
  animatedCopy = animated;
  screenCopy = screen;
  self->_isFullScreen = screen;
  v7.receiver = self;
  v7.super_class = QLLivePhotoItemViewController;
  [QLItemViewController previewBecameFullScreen:sel_previewBecameFullScreen_animated_ animated:?];
  [(QLLivePhotoItemViewController *)self _updateLivePhotoBadgeAnimated:1];
  [(QLImageAnalysisManager *)self->_imageAnalysisManager updateForFullScreen:screenCopy animated:animatedCopy];
}

- (void)transitionDidStart:(BOOL)start
{
  v4.receiver = self;
  v4.super_class = QLLivePhotoItemViewController;
  [(QLItemViewController *)&v4 transitionDidStart:start];
  self->_transitionInProgress = 1;
  self->_HDRTransitionInProgress = 1;
  if (self->_livePhotoView)
  {
    [(QLLivePhotoItemViewController *)self animateToPreferredDynamicRange];
  }

  [(QLLivePhotoItemViewController *)self _updateLivePhotoBadgeAnimated:1];
  [(QLLivePhotoItemViewController *)self _updateImageAnalysisInteractionAnimated:1];
}

- (void)transitionDidFinish:(BOOL)finish didComplete:(BOOL)complete
{
  v5.receiver = self;
  v5.super_class = QLLivePhotoItemViewController;
  [(QLScrollableContentItemViewController *)&v5 transitionWillFinish:finish didComplete:complete];
  self->_transitionInProgress = 0;
  [(QLLivePhotoItemViewController *)self _updateLivePhotoBadgeAnimated:1];
  [(QLLivePhotoItemViewController *)self _updateImageAnalysisInteractionAnimated:1];
}

- (void)didEndZoomingAtScale:(double)scale
{
  scrollView = [(QLScrollableContentItemViewController *)self scrollView];
  [scrollView zoomScale];
  v6 = v5;
  scrollView2 = [(QLScrollableContentItemViewController *)self scrollView];
  [scrollView2 minZoomScale];
  self->_fullyZoomedOut = v6 == v8;

  [(QLLivePhotoItemViewController *)self _updateLivePhotoBadgeAnimated:1];
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)canEnterFullScreen
{
  playbackGestureRecognizer = [(PHLivePhotoView *)self->_livePhotoView playbackGestureRecognizer];
  if ([playbackGestureRecognizer state] == 1)
  {
    v4 = 0;
  }

  else
  {
    playbackGestureRecognizer2 = [(PHLivePhotoView *)self->_livePhotoView playbackGestureRecognizer];
    v4 = [playbackGestureRecognizer2 state] != 2 && !self->_isPlaying;
  }

  return v4;
}

- (BOOL)canToggleFullScreen
{
  if ([(QLLivePhotoItemViewController *)self _wasJustPlaying])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = QLLivePhotoItemViewController;
  return [(QLItemViewController *)&v4 canToggleFullScreen];
}

- (id)toolbarButtonsForTraitCollection:(id)collection
{
  v8.receiver = self;
  v8.super_class = QLLivePhotoItemViewController;
  v4 = [(QLItemViewController *)&v8 toolbarButtonsForTraitCollection:collection];
  array = [v4 mutableCopy];

  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  if (_os_feature_enabled_impl() && [(QLImageAnalysisManager *)self->_imageAnalysisManager isInteractionActive]&& [(QLImageAnalysisManager *)self->_imageAnalysisManager hasResultsForVisualSearch])
  {
    imageAnalysisToolbarButton = [(QLImageAnalysisManager *)self->_imageAnalysisManager imageAnalysisToolbarButton];
    [array addObject:imageAnalysisToolbarButton];
  }

  return array;
}

- (void)buttonPressedWithIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v8 = _os_feature_enabled_impl();
  if ([identifierCopy isEqualToString:@"QLVisualSearchButton"])
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v13.receiver = self;
    v13.super_class = QLLivePhotoItemViewController;
    [(QLItemViewController *)&v13 buttonPressedWithIdentifier:identifierCopy completionHandler:handlerCopy];
  }

  else
  {
    if ([(QLImageAnalysisManager *)self->_imageAnalysisManager isVisualIntelligenceV2Enabled])
    {
      visualIntelligenceBarContainerView = [(QLImageAnalysisManager *)self->_imageAnalysisManager visualIntelligenceBarContainerView];
      if (visualIntelligenceBarContainerView)
      {
        if ([(QLImageAnalysisManager *)self->_imageAnalysisManager isVisualIntelligenceV2Active])
        {
          [visualIntelligenceBarContainerView removeFromSuperview];
          visualIntelligenceBarContainerView = self->_visualIntelligenceBarContainerView;
          self->_visualIntelligenceBarContainerView = 0;
        }

        else
        {
          objc_storeStrong(&self->_visualIntelligenceBarContainerView, visualIntelligenceBarContainerView);
          visualIntelligenceBarContainerView = [(QLLivePhotoItemViewController *)self view];
          [visualIntelligenceBarContainerView addSubview:visualIntelligenceBarContainerView];
        }

        view = [(QLLivePhotoItemViewController *)self view];
        [view setNeedsLayout];
      }
    }

    [(QLImageAnalysisManager *)self->_imageAnalysisManager infoButtonTapped];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }
}

- (void)livePhotoView:(id)view willBeginPlaybackWithStyle:(int64_t)style
{
  self->_isPlaying = 1;
  [(QLLivePhotoItemViewController *)self _updateLivePhotoBadgeAnimated:1, style];

  [(QLLivePhotoItemViewController *)self _updateImageAnalysisInteractionAnimated:1];
}

- (void)livePhotoView:(id)view didEndPlaybackWithStyle:(int64_t)style
{
  date = [MEMORY[0x277CBEAA8] date];
  didEndPlayingTimestamp = self->_didEndPlayingTimestamp;
  self->_didEndPlayingTimestamp = date;

  self->_isPlaying = 0;
  [(QLLivePhotoItemViewController *)self _updateLivePhotoBadgeAnimated:1];

  [(QLLivePhotoItemViewController *)self _updateImageAnalysisInteractionAnimated:1];
}

- (BOOL)livePhotoView:(id)view canBeginPlaybackWithStyle:(int64_t)style
{
  playbackGestureRecognizer = [view playbackGestureRecognizer];
  imageAnalysisView = [(QLLivePhotoItemViewController *)self imageAnalysisView];
  [playbackGestureRecognizer locationInView:imageAnalysisView];
  v8 = v7;
  v10 = v9;

  return ![(QLLivePhotoItemViewController *)self _isPointInNonImageSubjectItems:v8, v10];
}

- (double)livePhotoView:(id)view extraMinimumTouchDurationForTouch:(id)touch withStyle:(int64_t)style
{
  touchCopy = touch;
  imageAnalysisView = [(QLLivePhotoItemViewController *)self imageAnalysisView];
  [touchCopy locationInView:imageAnalysisView];
  v9 = v8;
  v11 = v10;

  if ([(QLImageAnalysisManager *)self->_imageAnalysisManager imageSubjectExistsAtPoint:v9, v11]&& ![(QLLivePhotoItemViewController *)self _isPointInNonImageSubjectItems:v9, v11])
  {
    return 0.4;
  }

  else
  {
    return 0.0;
  }
}

- (UIImage)imageForAnalysis
{
  livePhoto = [(PHLivePhotoView *)self->_livePhotoView livePhoto];
  image = [livePhoto image];

  return image;
}

- (NSDictionary)clientPreviewOptions
{
  context = [(QLItemViewController *)self context];
  clientPreviewOptions = [context clientPreviewOptions];

  return clientPreviewOptions;
}

- (void)imageAnalyzerWantsUpdateInfoButtonWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  delegate = [(QLItemViewController *)self delegate];
  [delegate previewItemViewControllerWantsUpdateOverlay:self animated:animationCopy];
}

- (void)imageAnalysisInteractionWillPresentVisualSearchController
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:self->_isFullScreen];
  savedFullScreenState = self->_savedFullScreenState;
  self->_savedFullScreenState = v3;

  delegate = [(QLItemViewController *)self delegate];
  [delegate previewItemViewController:self wantsFullScreen:1];
}

- (void)imageAnalysisInteractionDidDismissVisualSearchController
{
  savedFullScreenState = self->_savedFullScreenState;
  if (savedFullScreenState)
  {
    bOOLValue = [(NSNumber *)savedFullScreenState BOOLValue];
    v5 = self->_savedFullScreenState;
    self->_savedFullScreenState = 0;
  }

  else
  {
    bOOLValue = 0;
  }

  delegate = [(QLItemViewController *)self delegate];
  [delegate previewItemViewController:self wantsFullScreen:bOOLValue];
}

- (BOOL)shouldDetectMachineReadableCode
{
  context = [(QLItemViewController *)self context];
  shouldPreventMachineReadableCodeDetection = [context shouldPreventMachineReadableCodeDetection];

  return shouldPreventMachineReadableCodeDetection ^ 1;
}

- (void)_setupAndStartImageAnalysisIfNeeded
{
  imageAnalysisManager = self->_imageAnalysisManager;
  if (imageAnalysisManager)
  {
    hasAnalysis = [(QLImageAnalysisManager *)imageAnalysisManager hasAnalysis];
    v5 = self->_imageAnalysisManager;
    if (hasAnalysis)
    {

      [(QLImageAnalysisManager *)v5 addInteractionIfNeeded];
      return;
    }

    if (v5)
    {
      if ([(QLImageAnalysisManager *)v5 isAnalysisOngoing])
      {
        return;
      }

      v6 = self->_imageAnalysisManager;
      if (v6)
      {
        [(QLImageAnalysisManager *)v6 stopImageAnalysis];
      }
    }
  }

  v7 = [QLImageAnalysisManager alloc];
  view = [(QLLivePhotoItemViewController *)self view];
  v8 = [(QLImageAnalysisManager *)v7 initWithDelegate:self presentingView:view];
  v9 = self->_imageAnalysisManager;
  self->_imageAnalysisManager = v8;
}

- (void)viewDidLoad
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = QLLivePhotoItemViewController;
  [(QLLivePhotoItemViewController *)&v6 viewDidLoad];
  objc_initWeak(&v5, self);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [(QLLivePhotoItemViewController *)self registerForTraitChanges:v3 withHandler:&__block_literal_global_11];

  objc_destroyWeak(&v5);
}

- (void)_updateImageAnalysisInteractionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (self->_isPlaying || self->_transitionInProgress)
  {
    v5 = 1;
  }

  else
  {
    appearance = [(QLItemViewController *)self appearance];
    v5 = [appearance presentationMode] == 4;
  }

  imageAnalysisManager = self->_imageAnalysisManager;

  [(QLImageAnalysisManager *)imageAnalysisManager shouldHideInteraction:v5 animated:animatedCopy];
}

- (BOOL)canPerformFirstTimeAppearanceActions:(unint64_t)actions
{
  actionsCopy = actions;
  v7.receiver = self;
  v7.super_class = QLLivePhotoItemViewController;
  v4 = [(QLItemViewController *)&v7 canPerformFirstTimeAppearanceActions:?];
  v5 = (actionsCopy & 0x28) != 0;
  if (v4)
  {
    v5 = 1;
  }

  return (actionsCopy & 0x10) != 0 || v5;
}

- (void)performFirstTimeAppearanceActions:(unint64_t)actions
{
  if ((actions & 8) != 0)
  {
    [(QLImageAnalysisManager *)self->_imageAnalysisManager setShouldHighlightTextAndDDAfterNextAnalysis:1];
  }

  else if ((actions & 0x10) != 0)
  {
    [(QLImageAnalysisManager *)self->_imageAnalysisManager setShouldEnterVisualSearchAfterNextAnalysis:1];
  }

  else if ((actions & 0x20) != 0)
  {
    [(QLImageAnalysisManager *)self->_imageAnalysisManager setShouldUpliftSubjectAfterNextAnalysis:1];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) == 0 || [gestureRecognizerCopy numberOfTapsRequired] != 2;

  return v5;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  livePhotoView = self->_livePhotoView;
  beginCopy = begin;
  playbackGestureRecognizer = [(PHLivePhotoView *)livePhotoView playbackGestureRecognizer];

  if (playbackGestureRecognizer != beginCopy)
  {
    return 1;
  }

  v8 = self->_livePhotoView;

  return [(QLLivePhotoItemViewController *)self livePhotoView:v8 canBeginPlaybackWithStyle:1];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  playbackGestureRecognizer = [(PHLivePhotoView *)self->_livePhotoView playbackGestureRecognizer];
  v9 = playbackGestureRecognizer;
  if (playbackGestureRecognizer == recognizerCopy)
  {
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      [(QLLivePhotoItemViewController *)self livePhotoView:self->_livePhotoView extraMinimumTouchDurationForTouch:touchCopy withStyle:1];
      [recognizerCopy setExtraMinimumTouchDuration:?];
    }
  }

  else
  {
  }

  return 1;
}

- (BOOL)shouldAcceptTouch:(id)touch ofGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  v16.receiver = self;
  v16.super_class = QLLivePhotoItemViewController;
  touchCopy = touch;
  v8 = [(QLItemViewController *)&v16 shouldAcceptTouch:touchCopy ofGestureRecognizer:recognizerCopy];
  v9 = [(QLLivePhotoItemViewController *)self imageAnalysisView:v16.receiver];
  [touchCopy locationInView:v9];
  v11 = v10;
  v13 = v12;

  LODWORD(v9) = [touchCopy _isPointerTouch];
  if (v9)
  {
    if ([(QLImageAnalysisManager *)self->_imageAnalysisManager isTextSelectionEnabled])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 &= ![(QLImageAnalysisManager *)self->_imageAnalysisManager textExistsAtPoint:v11, v13];
      }
    }
  }

  if ([(QLImageAnalysisManager *)self->_imageAnalysisManager visualSearchExistsAtPoint:v11, v13])
  {
    objc_opt_class();
    v8 &= objc_opt_isKindOfClass() ^ 1;
  }

  v14 = ![(QLImageAnalysisManager *)self->_imageAnalysisManager hasActiveTextSelection];

  return v14 & v8;
}

- (BOOL)_isPointInNonImageSubjectItems:(CGPoint)items
{
  y = items.y;
  x = items.x;
  if ([(QLImageAnalysisManager *)self->_imageAnalysisManager textExistsAtPoint:?]|| [(QLImageAnalysisManager *)self->_imageAnalysisManager dataDetectorExistsAtPoint:x, y])
  {
    return 1;
  }

  imageAnalysisManager = self->_imageAnalysisManager;

  return [(QLImageAnalysisManager *)imageAnalysisManager actionInfoItemExistsAtPoint:x, y];
}

- (void)updatePreferredDynamicRangeForced:(BOOL)forced
{
  forcedCopy = forced;
  if (_os_feature_enabled_impl())
  {
    if (!self->_HDRTransitionInProgress || forcedCopy)
    {
      appearance = [(QLItemViewController *)self appearance];
      presentationMode = [appearance presentationMode];

      livePhotoView = self->_livePhotoView;
      if (presentationMode == 2)
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      [(PHLivePhotoView *)livePhotoView setPreferredImageDynamicRange:v9];
    }
  }
}

- (void)animateToPreferredDynamicRange
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__QLLivePhotoItemViewController_animateToPreferredDynamicRange__block_invoke;
  v3[3] = &unk_278B57190;
  v3[4] = self;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __63__QLLivePhotoItemViewController_animateToPreferredDynamicRange__block_invoke_2;
  v2[3] = &unk_278B571B8;
  v2[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v3 animations:v2 completion:2.0];
}

@end