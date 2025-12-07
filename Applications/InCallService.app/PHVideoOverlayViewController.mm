@interface PHVideoOverlayViewController
- (BOOL)isModeEnabled:(int64_t)enabled;
- (BOOL)isShowingOverlayForRemoteState;
- (BOOL)isShowingPippedIconViews;
- (BOOL)shouldShowIconViewsWhenPipped;
- (PHVideoOverlayViewControllerDelegate)delegate;
- (void)disableVideoOverlayModes;
- (void)handlePIPControllerStateDidChangeNotification:(id)notification;
- (void)hideVideoOverlayAnimated:(BOOL)animated;
- (void)setVideoOverlayEnabled:(BOOL)enabled forMode:(int64_t)mode;
- (void)setVideoOverlayWithMode:(int64_t)mode animated:(BOOL)animated;
- (void)showNextVideoOverlayMode;
- (void)showVideoOverlayWithContentView:(id)view animated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation PHVideoOverlayViewController

- (void)viewDidLoad
{
  v26.receiver = self;
  v26.super_class = PHVideoOverlayViewController;
  [(PHVideoOverlayViewController *)&v26 viewDidLoad];
  v3 = objc_alloc_init(NSMutableArray);
  [(PHVideoOverlayViewController *)self setModesPriorityQueue:v3];

  view = [(PHVideoOverlayViewController *)self view];
  [view setAlpha:0.0];

  v5 = objc_alloc_init(PHVideoOverlayInsulatorView);
  [(PHVideoOverlayViewController *)self setInsulatorView:v5];

  view2 = [(PHVideoOverlayViewController *)self view];
  [view2 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  insulatorView = [(PHVideoOverlayViewController *)self insulatorView];
  [insulatorView setBounds:{v8, v10, v12, v14}];

  view3 = [(PHVideoOverlayViewController *)self view];
  [view3 center];
  v18 = v17;
  v20 = v19;
  insulatorView2 = [(PHVideoOverlayViewController *)self insulatorView];
  [insulatorView2 setCenter:{v18, v20}];

  insulatorView3 = [(PHVideoOverlayViewController *)self insulatorView];
  [insulatorView3 setAutoresizingMask:18];

  view4 = [(PHVideoOverlayViewController *)self view];
  insulatorView4 = [(PHVideoOverlayViewController *)self insulatorView];
  [view4 addSubview:insulatorView4];

  v25 = +[NSNotificationCenter defaultCenter];
  [v25 addObserver:self selector:"handlePIPControllerStateDidChangeNotification:" name:@"PHPIPControllerStateDidChangeNotification" object:0];
}

- (void)setVideoOverlayEnabled:(BOOL)enabled forMode:(int64_t)mode
{
  enabledCopy = enabled;
  v7 = sub_100004F84(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromBOOL();
    v9 = [NSNumber numberWithInteger:mode];
    *buf = 138412546;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "enabled %@ for mode: %@", buf, 0x16u);
  }

  if (enabledCopy)
  {
    modesPriorityQueue = [(PHVideoOverlayViewController *)self modesPriorityQueue];
    v11 = [NSNumber numberWithInteger:mode];
    v12 = [modesPriorityQueue containsObject:v11];

    if ((v12 & 1) == 0)
    {
      modesPriorityQueue2 = [(PHVideoOverlayViewController *)self modesPriorityQueue];
      v14 = [NSNumber numberWithInteger:mode];
      [modesPriorityQueue2 addObject:v14];

      modesPriorityQueue3 = [(PHVideoOverlayViewController *)self modesPriorityQueue];
      v16 = [NSSortDescriptor sortDescriptorWithKey:@"self" ascending:1];
      v22 = v16;
      v17 = [NSArray arrayWithObjects:&v22 count:1];
      [modesPriorityQueue3 sortUsingDescriptors:v17];
    }
  }

  else if (-[PHVideoOverlayViewController currentVideoOverlayMode](self, "currentVideoOverlayMode") == mode && (-[PHVideoOverlayViewController modesPriorityQueue](self, "modesPriorityQueue"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 count], v18, v19 == 1))
  {
    [(PHVideoOverlayViewController *)self disableVideoOverlayModes];
  }

  else
  {
    modesPriorityQueue4 = [(PHVideoOverlayViewController *)self modesPriorityQueue];
    v21 = [NSNumber numberWithInteger:mode];
    [modesPriorityQueue4 removeObject:v21];
  }

  [(PHVideoOverlayViewController *)self showNextVideoOverlayMode];
}

- (BOOL)isModeEnabled:(int64_t)enabled
{
  modesPriorityQueue = [(PHVideoOverlayViewController *)self modesPriorityQueue];
  v5 = [NSNumber numberWithInteger:enabled];
  v6 = [modesPriorityQueue containsObject:v5];

  return v6;
}

- (BOOL)isShowingOverlayForRemoteState
{
  if (![(PHVideoOverlayViewController *)self currentVideoOverlayMode])
  {
    return 0;
  }

  if ([(PHVideoOverlayViewController *)self currentVideoOverlayMode]!= 6)
  {
    return 1;
  }

  modesPriorityQueue = [(PHVideoOverlayViewController *)self modesPriorityQueue];
  v4 = [modesPriorityQueue count] != 1;

  return v4;
}

- (void)showNextVideoOverlayMode
{
  v3 = sub_100004F84(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    modesPriorityQueue = [(PHVideoOverlayViewController *)self modesPriorityQueue];
    v10 = 138412290;
    v11 = modesPriorityQueue;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "queue: %@", &v10, 0xCu);
  }

  modesPriorityQueue2 = [(PHVideoOverlayViewController *)self modesPriorityQueue];
  v6 = [modesPriorityQueue2 count];

  if (v6)
  {
    modesPriorityQueue3 = [(PHVideoOverlayViewController *)self modesPriorityQueue];
    lastObject = [modesPriorityQueue3 lastObject];
    integerValue = [lastObject integerValue];

    if ([(PHVideoOverlayViewController *)self currentVideoOverlayMode]!= integerValue)
    {
      [(PHVideoOverlayViewController *)self setVideoOverlayWithMode:integerValue animated:[(PHVideoOverlayViewController *)self currentVideoOverlayMode]== 0];
    }
  }

  else
  {
    [(PHVideoOverlayViewController *)self hideVideoOverlayAnimated:1];
  }
}

- (void)setVideoOverlayWithMode:(int64_t)mode animated:(BOOL)animated
{
  animatedCopy = animated;
  [(PHVideoOverlayViewController *)self setCurrentVideoOverlayMode:mode];
  v6 = +[PHPIPController defaultPIPController];
  if ([v6 isPipped])
  {
    shouldShowIconViewsWhenPipped = [(PHVideoOverlayViewController *)self shouldShowIconViewsWhenPipped];
  }

  else
  {
    shouldShowIconViewsWhenPipped = 0;
  }

  v9 = sub_100004F84(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [NSNumber numberWithInteger:[(PHVideoOverlayViewController *)self currentVideoOverlayMode]];
    v29 = 138412290;
    v30 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "mode: %@", &v29, 0xCu);
  }

  currentVideoOverlayMode = [(PHVideoOverlayViewController *)self currentVideoOverlayMode];
  if (currentVideoOverlayMode > 3)
  {
    if (currentVideoOverlayMode > 5)
    {
      if (currentVideoOverlayMode == 6 || currentVideoOverlayMode == 7)
      {
        v12 = [[PHVideoOverlayContentViewTitle alloc] initWithTitle:0];
        goto LABEL_21;
      }

      goto LABEL_23;
    }

    if (currentVideoOverlayMode == 4)
    {
      v20 = [PHVideoOverlayContentViewActivity alloc];
      if (shouldShowIconViewsWhenPipped)
      {
        v21 = &stru_100361FD0;
        v22 = 101;
      }

      else
      {
        v9 = +[NSBundle mainBundle];
        v21 = [v9 localizedStringForKey:@"VIDEO_RECONNECTING_TITLE" value:&stru_100361FD0 table:@"InCallService"];
        v22 = 100;
      }

      v23 = [(PHVideoOverlayContentViewActivity *)v20 initWithTitle:v21 indicatorStyle:v22];
      [(PHVideoOverlayViewController *)self setContentView:v23];

      if (shouldShowIconViewsWhenPipped)
      {
        goto LABEL_23;
      }

LABEL_17:
      goto LABEL_23;
    }

    v13 = [PHVideoOverlayContentViewTitle alloc];
    v14 = +[NSBundle mainBundle];
    v9 = v14;
    v15 = @"CAMERA_UNAVAILABLE_OVERLAY";
LABEL_16:
    v16 = [v14 localizedStringForKey:v15 value:&stru_100361FD0 table:@"InCallService"];
    v17 = [(PHVideoOverlayContentViewTitle *)v13 initWithTitle:v16];
    [(PHVideoOverlayViewController *)self setContentView:v17];

    goto LABEL_17;
  }

  if (currentVideoOverlayMode > 1)
  {
    if (currentVideoOverlayMode == 2)
    {
      if (!shouldShowIconViewsWhenPipped)
      {
        v24 = [PHVideoOverlayContentViewMessage alloc];
        v18 = +[NSBundle mainBundle];
        v25 = [v18 localizedStringForKey:@"VIDEO_DEGRADED_TITLE" value:&stru_100361FD0 table:@"InCallService"];
        v26 = +[NSBundle mainBundle];
        v27 = [v26 localizedStringForKey:@"VIDEO_DEGRADED_MESSAGE" value:&stru_100361FD0 table:@"InCallService"];
        v28 = [(PHVideoOverlayContentViewMessage *)v24 initWithTitle:v25 message:v27];
        [(PHVideoOverlayViewController *)self setContentView:v28];

        goto LABEL_22;
      }

      v12 = [[PHVideoOverlayContentViewIcon alloc] initWithSymbolType:43];
LABEL_21:
      v18 = v12;
      [(PHVideoOverlayViewController *)self setContentView:v12];
LABEL_22:

      goto LABEL_23;
    }

    v13 = [PHVideoOverlayContentViewTitle alloc];
    v14 = +[NSBundle mainBundle];
    v9 = v14;
    v15 = @"PAUSE_OVERLAY";
    goto LABEL_16;
  }

  if (!currentVideoOverlayMode)
  {
    [(PHVideoOverlayViewController *)self setContentView:0];
    goto LABEL_23;
  }

  if (currentVideoOverlayMode == 1)
  {
    v12 = objc_alloc_init(PHVideoOverlayContentView);
    goto LABEL_21;
  }

LABEL_23:
  contentView = [(PHVideoOverlayViewController *)self contentView];
  [(PHVideoOverlayViewController *)self showVideoOverlayWithContentView:contentView animated:animatedCopy];
}

- (void)showVideoOverlayWithContentView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  v7 = sub_100004F84(viewCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = viewCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "view: %@", buf, 0xCu);
  }

  if (viewCopy)
  {
    insulatorView = [(PHVideoOverlayViewController *)self insulatorView];
    [insulatorView setVideoOverlayContentView:viewCopy animated:animatedCopy];

    view = [(PHVideoOverlayViewController *)self view];
    [view alpha];
    v11 = v10;

    if (v11 != 1.0)
    {
      v13 = sub_100004F84(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "animate in the overlay", buf, 2u);
      }

      delegate = [(PHVideoOverlayViewController *)self delegate];
      [delegate videoOverlayViewController:self isShowingOverlay:1];

      v15 = 0.150000006;
      if (!animatedCopy)
      {
        v15 = 0.0;
      }

      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100043A54;
      v16[3] = &unk_100356988;
      v16[4] = self;
      [UIView animateWithDuration:4 delay:v16 options:0 animations:v15 completion:0.0];
    }
  }
}

- (void)hideVideoOverlayAnimated:(BOOL)animated
{
  animatedCopy = animated;
  view = [(PHVideoOverlayViewController *)self view];
  [view alpha];
  v7 = v6;

  if (v7 != 0.0)
  {
    v9 = sub_100004F84(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "animate out the overlay", buf, 2u);
    }

    v10 = 0.150000006;
    if (!animatedCopy)
    {
      v10 = 0.0;
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100043BF4;
    v12[3] = &unk_100356988;
    v12[4] = self;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100043C3C;
    v11[3] = &unk_1003569B0;
    v11[4] = self;
    [UIView animateWithDuration:4 delay:v12 options:v11 animations:v10 completion:0.0];
  }
}

- (void)disableVideoOverlayModes
{
  v3 = sub_100004F84(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "removing all the overlays from queue", v5, 2u);
  }

  modesPriorityQueue = [(PHVideoOverlayViewController *)self modesPriorityQueue];
  [modesPriorityQueue removeAllObjects];

  [(PHVideoOverlayViewController *)self setCurrentVideoOverlayMode:0];
  [(PHVideoOverlayViewController *)self showNextVideoOverlayMode];
}

- (void)handlePIPControllerStateDidChangeNotification:(id)notification
{
  v4 = +[PHPIPController defaultPIPController];
  isPipped = [v4 isPipped];

  if (isPipped != [(PHVideoOverlayViewController *)self isShowingPippedIconViews])
  {
    if ([(PHVideoOverlayViewController *)self shouldShowIconViewsWhenPipped])
    {
      currentVideoOverlayMode = [(PHVideoOverlayViewController *)self currentVideoOverlayMode];
      if (currentVideoOverlayMode == 4 || currentVideoOverlayMode == 2)
      {
        currentVideoOverlayMode2 = [(PHVideoOverlayViewController *)self currentVideoOverlayMode];

        [(PHVideoOverlayViewController *)self setVideoOverlayWithMode:currentVideoOverlayMode2 animated:1];
      }
    }
  }
}

- (BOOL)shouldShowIconViewsWhenPipped
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom] == 0;

  return v3;
}

- (BOOL)isShowingPippedIconViews
{
  currentVideoOverlayMode = [(PHVideoOverlayViewController *)self currentVideoOverlayMode];
  if (currentVideoOverlayMode == 4)
  {
    contentView = [(PHVideoOverlayViewController *)self contentView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      contentView2 = [(PHVideoOverlayViewController *)self contentView];
      title = [contentView2 title];
      v5 = [title length] == 0;

      goto LABEL_6;
    }

LABEL_7:
    v5 = 0;
    return v5 & 1;
  }

  if (currentVideoOverlayMode != 2)
  {
    goto LABEL_7;
  }

  contentView2 = [(PHVideoOverlayViewController *)self contentView];
  objc_opt_class();
  v5 = objc_opt_isKindOfClass();
LABEL_6:

  return v5 & 1;
}

- (PHVideoOverlayViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end