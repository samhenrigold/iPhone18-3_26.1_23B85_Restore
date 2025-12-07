@interface BKUIPearlMovieLoopView
- (BKUIPearlMovieLoopView)initWithFrame:(CGRect)frame player:(id)player asset:(id)asset;
- (BOOL)landscape;
- (BOOL)portrait;
- (id)selfPortrait;
- (void)addAnimatedSelfPotraitIfNeeded;
- (void)hideAVPlayerReplaceWithSnapshot;
- (void)selfPortrait;
- (void)setAlphaHideOnZero:(double)zero;
- (void)unhideAVPlayerRemoveSnapshot;
@end

@implementation BKUIPearlMovieLoopView

- (BKUIPearlMovieLoopView)initWithFrame:(CGRect)frame player:(id)player asset:(id)asset
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  playerCopy = player;
  assetCopy = asset;
  v21.receiver = self;
  v21.super_class = BKUIPearlMovieLoopView;
  height = [(BKUIPearlMovieLoopView *)&v21 initWithFrame:x, y, width, height];
  v15 = height;
  if (height)
  {
    objc_storeStrong(&height->_player, player);
    objc_storeStrong(&v15->_assets, asset);
    v16 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{x, y, width, height}];
    imageView = v15->_imageView;
    v15->_imageView = v16;

    selfPortrait = [(BKUIPearlMovieLoopView *)v15 selfPortrait];
    [(UIImageView *)v15->_imageView setImage:selfPortrait];

    playerLayer = [(BKUIPearlMovieLoopView *)v15 playerLayer];
    [playerLayer setPlayer:playerCopy];

    [(BKUIPearlMovieLoopView *)v15 addAnimatedSelfPotraitIfNeeded];
  }

  return v15;
}

- (void)addAnimatedSelfPotraitIfNeeded
{
  v3 = +[BKUIDevice sharedInstance];
  isRestrictedToLandscapeEnrollment = [v3 isRestrictedToLandscapeEnrollment];

  if (isRestrictedToLandscapeEnrollment)
  {
    landscape = [(BKUIPearlMovieLoopView *)self landscape];
    if (landscape)
    {
      return;
    }
  }

  else
  {
    landscape = [(BKUIPearlMovieLoopView *)self portrait];
    if (landscape)
    {
      return;
    }
  }

  v6 = _BKUILoggingFacility(landscape);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    [(BKUIPearlMovieLoopView *)v6 addAnimatedSelfPotraitIfNeeded];
  }

  [(BKUIPearlMovieLoopView *)self addSubview:self->_imageView];
}

- (void)unhideAVPlayerRemoveSnapshot
{
  imageView = [(BKUIPearlMovieLoopView *)self imageView];
  [imageView removeFromSuperview];
}

- (void)hideAVPlayerReplaceWithSnapshot
{
  imageView = [(BKUIPearlMovieLoopView *)self imageView];
  [(BKUIPearlMovieLoopView *)self addSubview:imageView];
}

- (BOOL)portrait
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom])
  {
    v4 = 0;
  }

  else
  {
    traitCollection = [(BKUIPearlMovieLoopView *)self traitCollection];
    v4 = [traitCollection horizontalSizeClass] == 1;
  }

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  v7 = [currentDevice2 orientation] == 1 || +[BKUIUtils activeInterfaceOrientationForView:](BKUIUtils, "activeInterfaceOrientationForView:", self) == 1 || v4;

  return v7 & 1;
}

- (BOOL)landscape
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v4 = [currentDevice orientation] == 3 || +[BKUIUtils activeInterfaceOrientationForView:](BKUIUtils, "activeInterfaceOrientationForView:", self) == 3;

  return v4;
}

- (void)setAlphaHideOnZero:(double)zero
{
  [(BKUIPearlMovieLoopView *)self setAlpha:?];

  [(BKUIPearlMovieLoopView *)self setHidden:zero == 0.0];
}

- (id)selfPortrait
{
  selfPortraite = self->_selfPortraite;
  if (!selfPortraite)
  {
    player = [(BKUIPearlMovieLoopView *)self player];
    CMTimeMake(&v13, 0, 1);
    assets = [(BKUIPearlMovieLoopView *)self assets];
    v12 = 0;
    v6 = [player bkui_snapshotImageAt:&v13 asset:assets error:&v12];
    v7 = v12;
    v8 = self->_selfPortraite;
    self->_selfPortraite = v6;

    if (v7)
    {
      v11 = _BKUILoggingFacility(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [(BKUIPearlMovieLoopView *)v7 selfPortrait];
      }

      __assert_rtn("[BKUIPearlMovieLoopView selfPortrait]", "BKUIPearlMovieLoopView.m", 105, "false");
    }

    selfPortraite = self->_selfPortraite;
  }

  return selfPortraite;
}

- (void)selfPortrait
{
  v9 = *MEMORY[0x277D85DE8];
  localizedDescription = [self localizedDescription];
  v5 = 138412546;
  v6 = localizedDescription;
  v7 = 2048;
  code = [self code];
  _os_log_fault_impl(&dword_241B0A000, a2, OS_LOG_TYPE_FAULT, "error could not grab image clip of the av clip description:/n%@ code: %li", &v5, 0x16u);
}

@end