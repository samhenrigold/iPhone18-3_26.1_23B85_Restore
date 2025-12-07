@interface PHSlidingButton
- (BOOL)isButtonLayoutEnabled;
- (CGSize)intrinsicContentSize;
- (CGSize)trackSize;
- (PHSlidingButton)initWithSlidingButtonType:(int)type appearanceType:(int)appearanceType callState:(int64_t)state;
- (PHSlidingButton)initWithSlidingButtonType:(int)type appearanceType:(int)appearanceType callState:(int64_t)state usesLargeFormatUI:(BOOL)i;
- (PHSlidingButtonDelegateProtocol)delegate;
- (double)knobWidth;
- (void)actionSlider:(id)slider didUpdateSlideWithValue:(double)value;
- (void)actionSliderDidCompleteSlide:(id)slide;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setUserInteractionEnabled:(BOOL)enabled;
@end

@implementation PHSlidingButton

- (PHSlidingButton)initWithSlidingButtonType:(int)type appearanceType:(int)appearanceType callState:(int64_t)state usesLargeFormatUI:(BOOL)i
{
  v7 = *&appearanceType;
  v8 = *&type;
  [(PHSlidingButton *)self setUsesLargeFormatUI:i];

  return [(PHSlidingButton *)self initWithSlidingButtonType:v8 appearanceType:v7 callState:state];
}

- (PHSlidingButton)initWithSlidingButtonType:(int)type appearanceType:(int)appearanceType callState:(int64_t)state
{
  v65.receiver = self;
  v65.super_class = PHSlidingButton;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(PHSlidingButton *)&v65 initWithFrame:CGRectZero.origin.x, y, width, height];
  v12 = height;
  if (!height)
  {
    return v12;
  }

  height->_type = type;
  height->_callState = state;
  if (state == 1)
  {
    v13 = @"end_call_voip";
  }

  else
  {
    v13 = @"phone_dial";
  }

  objc_storeStrong(&height->_endDialImageName, v13);
  if ((type - 7) >= 3)
  {
    isButtonLayoutEnabled = +[PHUIConfiguration inCallSlideToAnswerSize];
    if (isButtonLayoutEnabled == 3)
    {
      v15 = 1;
    }

    else
    {
      isButtonLayoutEnabled = [(PHSlidingButton *)v12 isButtonLayoutEnabled];
      v15 = isButtonLayoutEnabled;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_100004F84(isButtonLayoutEnabled);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    typeCopy = type;
    v68 = 1024;
    appearanceTypeCopy = appearanceType;
    v70 = 1024;
    v71 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Making slider with type: %d, appearance: %d, large: %d", buf, 0x14u);
  }

  switch(appearanceType)
  {
    case 0:
      height2 = [[PHActionSlider alloc] initWithFrame:0 vibrantSettings:v15 large:v12->_usesLargeFormatUI usesLargeFormatUI:CGRectZero.origin.x, y, width, height];
      acceptButton = v12->_acceptButton;
      v12->_acceptButton = height2;

      [(PHActionSlider *)v12->_acceptButton setStyle:3];
LABEL_25:
      v28 = [UIColor colorWithWhite:1.0 alpha:0.200000003];
      [(PHActionSlider *)v12->_acceptButton setBackgroundColor:v28];

      break;
    case 1:
      v17 = +[UIColor blueColor];
      v18 = [_UILegibilitySettings sharedInstanceForStyle:1];
      v19 = [_UIVibrantSettings vibrantSettingsWithReferenceColor:v17 referenceContrast:v18 legibilitySettings:0.3];

      height3 = [[PHActionSlider alloc] initWithFrame:v19 vibrantSettings:v15 large:v12->_usesLargeFormatUI usesLargeFormatUI:CGRectZero.origin.x, y, width, height];
      v21 = v12->_acceptButton;
      v12->_acceptButton = height3;

      if (type <= 6 && ((1 << type) & 0x46) != 0)
      {
        v22 = 2;
      }

      else if (type == 3)
      {
        v22 = 2;
      }

      else
      {
        v22 = 1;
      }

      [(PHActionSlider *)v12->_acceptButton setStyle:v22];

      goto LABEL_24;
    case 2:
LABEL_24:
      height4 = [[PHActionSlider alloc] initWithFrame:0 vibrantSettings:v15 large:v12->_usesLargeFormatUI usesLargeFormatUI:CGRectZero.origin.x, y, width, height];
      v26 = v12->_acceptButton;
      v12->_acceptButton = height4;

      [(PHActionSlider *)v12->_acceptButton setStyle:4];
      [(PHActionSlider *)v12->_acceptButton setTextStyle:4];
      v27 = +[UIColor whiteColor];
      [(PHActionSlider *)v12->_acceptButton setKnobColor:v27];

      goto LABEL_25;
  }

  [(PHActionSlider *)v12->_acceptButton setDragStyle:1];
  [(PHActionSlider *)v12->_acceptButton setTextStyle:1];
  if (appearanceType == 2)
  {
    [(PHActionSlider *)v12->_acceptButton setTextStyle:4];
    [(PHActionSlider *)v12->_acceptButton setStyle:4];
  }

  if (v12->_callState == 1)
  {
    +[PHBottomBarButtonConfiguration voipTintColor];
  }

  else
  {
    +[PHBottomBarButtonConfiguration systemTintColor];
  }
  v29 = ;
  if (v12->_callState == 1)
  {
    v30 = [UIImage imageNamed:@"phone_slide_voip"];
    v31 = [v30 imageWithRenderingMode:2];
  }

  else
  {
    v31 = [UIImage tpImageForSymbolType:1 textStyle:UIFontTextStyleLargeTitle scale:2 isStaticSize:1];
  }

  if (type == 9)
  {
    v39 = [UIImage imageNamed:@"medicalid-slider-button"];
    v40 = [v39 imageWithRenderingMode:2];
    [(PHActionSlider *)v12->_acceptButton setKnobImage:v40];

    v41 = +[UIColor systemRedColor];
    [(PHActionSlider *)v12->_acceptButton setTintColor:v41];

    [(PHActionSlider *)v12->_acceptButton setTextStyle:2];
  }

  else
  {
    if (type != 8)
    {
      if (type == 7)
      {
        v32 = [UIImage imageNamed:@"sos-slider-button"];
        v33 = [v32 imageWithRenderingMode:2];
        [(PHActionSlider *)v12->_acceptButton setKnobImage:v33];

        v34 = +[UIColor whiteColor];
        [(PHActionSlider *)v12->_acceptButton setTintColor:v34];

        v35 = +[UIColor systemRedColor];
        [(PHActionSlider *)v12->_acceptButton setKnobColor:v35];

        [(PHActionSlider *)v12->_acceptButton setTextStyle:2];
        [(PHActionSlider *)v12->_acceptButton setDragStyle:2];
      }

      else
      {
        [(PHActionSlider *)v12->_acceptButton setKnobImage:v31];
        if (v12->_callState != 1)
        {
          [(PHActionSlider *)v12->_acceptButton knobImageOffset];
          v44 = v43;
          [(PHActionSlider *)v12->_acceptButton knobImageOffset];
          [(PHActionSlider *)v12->_acceptButton setKnobImageOffset:v44, v45 + 2.0];
        }

        [(PHActionSlider *)v12->_acceptButton setTintColor:v29];
      }

      goto LABEL_44;
    }

    v36 = [UIImage imageNamed:@"powerdown-slider-button"];
    v37 = [v36 imageWithRenderingMode:2];
    [(PHActionSlider *)v12->_acceptButton setKnobImage:v37];

    v38 = +[UIColor redColor];
    [(PHActionSlider *)v12->_acceptButton setTintColor:v38];
  }

  v42 = +[UIColor whiteColor];
  [(PHActionSlider *)v12->_acceptButton setKnobColor:v42];

LABEL_44:
  [(PHActionSlider *)v12->_acceptButton setDelegate:v12];
  if (!v12->_usesLargeFormatUI)
  {
    v46 = +[UIScreen mainScreen];
    currentMode = [v46 currentMode];
    [currentMode size];
    if (v48 >= 2208.0)
    {
      isButtonLayoutEnabled2 = [(PHSlidingButton *)v12 isButtonLayoutEnabled];

      if ((isButtonLayoutEnabled2 & 1) == 0)
      {
        [(PHActionSlider *)v12->_acceptButton trackSize];
        [(PHActionSlider *)v12->_acceptButton setTrackSize:300.0];
      }
    }

    else
    {
    }
  }

  v50 = [NSBundle bundleForClass:objc_opt_class()];
  v51 = v50;
  v52 = @"SLIDE_TO_SOS";
  if ((type - 5) < 2)
  {
    v52 = @"SLIDE_TO_UNLOCK";
  }

  v53 = @"SLIDE_TO_ANSWER";
  if (type == 9)
  {
    v53 = @"MEDICAL_ID";
  }

  if (type == 8)
  {
    v53 = @"POWER_OFF";
  }

  if ((type - 5) >= 3)
  {
    v54 = v53;
  }

  else
  {
    v54 = v52;
  }

  v55 = [v50 localizedStringForKey:v54 value:&stru_100361FD0 table:@"BottomBar"];

  [(PHActionSlider *)v12->_acceptButton setTrackText:v55];
  v56 = [[UIImageView alloc] initWithImage:v31];
  dialImageView = v12->_dialImageView;
  v12->_dialImageView = v56;

  v58 = +[UIColor whiteColor];
  [(UIImageView *)v12->_dialImageView setTintColor:v58];

  v59 = [UIButton buttonWithType:0];
  sideButtonRight = v12->_sideButtonRight;
  v12->_sideButtonRight = v59;

  v61 = v12->_sideButtonRight;
  v62 = +[UIColor whiteColor];
  [(UIButton *)v61 setBackgroundColor:v62];

  layer = [(UIButton *)v12->_sideButtonRight layer];
  [layer setCornerRadius:33.0];

  [(UIButton *)v12->_sideButtonRight setUserInteractionEnabled:0];
  [(UIImageView *)v12->_dialImageView setClipsToBounds:0];
  [(UIImageView *)v12->_dialImageView setContentMode:4];
  [(PHActionSlider *)v12->_acceptButton setAlpha:1.0];
  [(PHSlidingButton *)v12 addSubview:v12->_acceptButton];

  return v12;
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  v3.receiver = self;
  v3.super_class = PHSlidingButton;
  [(PHSlidingButton *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PHSlidingButton;
  [(PHSlidingButton *)&v3 layoutSubviews];
  [(PHSlidingButton *)self bounds];
  [(PHActionSlider *)self->_acceptButton setFrame:?];
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(PHSlidingButton *)self isUserInteractionEnabled]!= enabled)
  {
    v5 = 0.0500000007;
    if (enabledCopy)
    {
      v5 = 1.0;
    }

    [(PHSlidingButton *)self setAlpha:v5];
  }

  v6.receiver = self;
  v6.super_class = PHSlidingButton;
  [(PHSlidingButton *)&v6 setUserInteractionEnabled:enabledCopy];
}

- (CGSize)intrinsicContentSize
{
  acceptButton = [(PHSlidingButton *)self acceptButton];
  [acceptButton trackSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (double)knobWidth
{
  acceptButton = [(PHSlidingButton *)self acceptButton];
  [acceptButton knobWidth];
  v4 = v3;

  return v4;
}

- (BOOL)isButtonLayoutEnabled
{
  v3 = +[TUCallCenter sharedInstance];
  frontmostAudioOrVideoCall = [v3 frontmostAudioOrVideoCall];

  if (self->_usesLargeFormatUI)
  {
    v5 = [frontmostAudioOrVideoCall isVideo] ^ 1;
  }

  else
  {
    v6 = +[PHInCallUtilities sharedInstance];
    if ([v6 isIPadIdiom])
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v5 = [frontmostAudioOrVideoCall isVideo] ^ 1;
    }
  }

  return v5;
}

- (void)actionSlider:(id)slider didUpdateSlideWithValue:(double)value
{
  delegate = [(PHSlidingButton *)self delegate];
  if (delegate)
  {
    v7 = delegate;
    delegate2 = [(PHSlidingButton *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate3 = [(PHSlidingButton *)self delegate];
      [delegate3 slidingButton:self didSlideToProportion:value];
    }
  }
}

- (void)actionSliderDidCompleteSlide:(id)slide
{
  delegate = [(PHSlidingButton *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    delegate2 = [(PHSlidingButton *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate3 = [(PHSlidingButton *)self delegate];
      [delegate3 willFinishSlideForSlidingButton:self];
    }
  }

  type = self->_type;
  v10 = type > 9;
  v11 = (1 << type) & 0x390;
  if (v10 || v11 == 0)
  {
    v13 = [(PHSlidingButton *)self callState]== 2 || [(PHSlidingButton *)self callState]== 4;
    acceptButton = self->_acceptButton;
    [(PHActionSlider *)acceptButton knobRect];
    [(PHActionSlider *)acceptButton convertRect:self toView:?];
    [(UIButton *)self->_sideButtonRight setFrame:?];
    [(UIButton *)self->_sideButtonRight center];
    v16 = v15;
    [(UIButton *)self->_sideButtonRight center];
    v18 = v17;
    [(PHActionSlider *)self->_acceptButton knobImageOffset];
    [(UIImageView *)self->_dialImageView setCenter:v16, v18 + v19];
    [(PHSlidingButton *)self insertSubview:self->_dialImageView above:self->_sideButtonRight];
    [(PHSlidingButton *)self insertSubview:self->_sideButtonRight above:self->_acceptButton];
    v20 = [CABasicAnimation animationWithKeyPath:@"opacity"];
    [v20 setFromValue:&off_10036AFA0];
    [v20 setToValue:&off_10036AFB0];
    [v20 setDuration:0.115000002];
    [v20 setFillMode:kCAFillModeForwards];
    v84 = v20;
    [v20 setRemovedOnCompletion:0];
    acceptButton = [(PHSlidingButton *)self acceptButton];
    layer = [acceptButton layer];
    [layer position];
    v23 = [NSNumber numberWithDouble:?];

    v24 = [CASpringAnimation animationWithKeyPath:@"position.x"];
    v25 = self->_acceptButton;
    if (self->_type == 3)
    {
      [(PHActionSlider *)v25 layer];
      v27 = v26 = v23;
      [v27 position];
      v29 = v28 + -3.0;

      v23 = v26;
    }

    else
    {
      [(PHActionSlider *)v25 knobRect];
      v31 = v30;
      [(PHActionSlider *)self->_acceptButton center];
      v29 = v31 - v32;
    }

    if ([(PHSlidingButton *)self _shouldReverseLayoutDirection])
    {
      [v23 doubleValue];
      v29 = v33 - v29;
    }

    [v24 setMass:2.0];
    [v24 setStiffness:300.0];
    [v24 setDamping:50.0];
    v83 = v23;
    [v24 setFromValue:v23];
    v34 = [NSNumber numberWithDouble:v29];
    [v24 setToValue:v34];

    [v24 setDuration:0.50999999];
    [v24 setFillMode:kCAFillModeForwards];
    [v24 setRemovedOnCompletion:0];
    if (v13)
    {
      v35 = [CASpringAnimation animationWithKeyPath:@"transform.rotation.z"];
      [v35 setMass:2.0];
      [v35 setStiffness:300.0];
      [v35 setDamping:50.0];
      [v35 setToValue:&off_10036AF80];
      [v35 setDuration:0.50999999];
      v36 = kCAFillModeForwards;
      [v35 setFillMode:kCAFillModeForwards];
      v82 = v35;
      [v35 setRemovedOnCompletion:0];
    }

    else
    {
      v37 = [CABasicAnimation animationWithKeyPath:@"contents"];
      [v37 setDuration:0.300000012];
      image = [(UIImageView *)self->_dialImageView image];
      v39 = +[UIColor whiteColor];
      v40 = [image _flatImageWithColor:v39];
      [v37 setFromValue:{objc_msgSend(v40, "CGImage")}];

      v41 = [PHBottomBarButtonConfiguration imageForAction:15 callState:1];
      [v37 setToValue:{objc_msgSend(v41, "CGImage")}];

      [v37 setRemovedOnCompletion:0];
      v82 = v37;
      v42 = v37;
      v36 = kCAFillModeForwards;
      [v42 setFillMode:kCAFillModeForwards];
    }

    if (self->_type == 3)
    {
      +[PHBottomBar defaultSideMarginForDoubleButton];
      v44 = v43;
      +[PHBottomBarButtonConfiguration defaultWidth];
      v46 = v44 + v45 * 0.5;
      [(PHSlidingButton *)self frame];
      v48 = floor(v46 - v47);
    }

    else
    {
      [(PHSlidingButton *)self bounds];
      v48 = v49 * 0.5;
    }

    _shouldReverseLayoutDirection = [(PHSlidingButton *)self _shouldReverseLayoutDirection];
    v51 = -1.0;
    if (_shouldReverseLayoutDirection)
    {
      v51 = 1.0;
    }

    v52 = v48 + v51;
    sideButtonRight = [(PHSlidingButton *)self sideButtonRight];
    layer2 = [sideButtonRight layer];
    [layer2 position];
    v81 = [NSNumber numberWithDouble:?];

    v85 = [CASpringAnimation animationWithKeyPath:@"position.x"];
    [v85 setMass:2.0];
    [v85 setStiffness:300.0];
    [v85 setDamping:50.0];
    [v85 setFromValue:v81];
    v55 = [NSNumber numberWithDouble:v52];
    [v85 setToValue:v55];

    [v85 setDuration:0.50999999];
    [v85 setFillMode:v36];
    [v85 setRemovedOnCompletion:0];
    dialImageView = [(PHSlidingButton *)self dialImageView];
    layer3 = [dialImageView layer];
    [layer3 position];
    v80 = [NSNumber numberWithDouble:?];

    v58 = [CASpringAnimation animationWithKeyPath:@"position.x"];
    [v58 setMass:2.0];
    [v58 setStiffness:300.0];
    [v58 setDamping:50.0];
    [v58 setFromValue:v80];
    v59 = [NSNumber numberWithDouble:v52];
    [v58 setToValue:v59];

    [v58 setDuration:0.50999999];
    [v58 setFillMode:v36];
    [v58 setRemovedOnCompletion:0];
    v60 = [CABasicAnimation animationWithKeyPath:@"bounds"];
    +[PHBottomBarButtonConfiguration defaultHeight];
    v62 = v61;
    +[PHBottomBarButtonConfiguration defaultHeight];
    v64 = [NSValue valueWithCGRect:0.0, 0.0, v62, v63];
    [v60 setToValue:v64];

    [v60 setDuration:0.150000006];
    [v60 setFillMode:v36];
    [v60 setRemovedOnCompletion:0];
    +[PHBottomBarButtonConfiguration defaultHeight];
    v66 = v65 * 0.5;
    layer4 = [(UIButton *)self->_sideButtonRight layer];
    [layer4 setCornerRadius:v66];

    v68 = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
    [v68 setDuration:0.144999996];
    v69 = +[UIColor whiteColor];
    [v68 setFromValue:{objc_msgSend(v69, "CGColor")}];

    v70 = +[UIColor systemRedColor];
    [v68 setToValue:{objc_msgSend(v70, "CGColor")}];

    [v68 setFillMode:v36];
    [v68 setRemovedOnCompletion:0];
    v71 = +[CATransition animation];
    [v71 setType:kCATransitionFade];
    [v71 setDuration:0.115000002];
    +[CATransaction begin];
    v86[0] = _NSConcreteStackBlock;
    v86[1] = 3221225472;
    v86[2] = sub_100097D60;
    v86[3] = &unk_100356988;
    v86[4] = self;
    [CATransaction setCompletionBlock:v86];
    layer5 = [(UIImageView *)self->_dialImageView layer];
    [layer5 addAnimation:v71 forKey:kCATransition];

    layer6 = [(UIButton *)self->_sideButtonRight layer];
    [layer6 addAnimation:v68 forKey:@"backgroundColor"];

    layer7 = [(UIButton *)self->_sideButtonRight layer];
    [layer7 addAnimation:v60 forKey:@"bounds"];

    layer8 = [(UIButton *)self->_sideButtonRight layer];
    [layer8 addAnimation:v85 forKey:@"position"];

    layer9 = [(UIImageView *)self->_dialImageView layer];
    [layer9 addAnimation:v82 forKey:@"transform"];

    layer10 = [(PHActionSlider *)self->_acceptButton layer];
    [layer10 addAnimation:v84 forKey:@"opacity"];

    layer11 = [(PHActionSlider *)self->_acceptButton layer];
    [layer11 addAnimation:v24 forKey:@"position"];

    layer12 = [(UIImageView *)self->_dialImageView layer];
    [layer12 addAnimation:v58 forKey:@"position"];

    +[CATransaction commit];
  }

  else
  {
    v88[0] = _NSConcreteStackBlock;
    v88[1] = 3221225472;
    v88[2] = sub_100097CA4;
    v88[3] = &unk_100356988;
    v88[4] = self;
    v87[0] = _NSConcreteStackBlock;
    v87[1] = 3221225472;
    v87[2] = sub_100097CB0;
    v87[3] = &unk_1003569B0;
    v87[4] = self;
    [UIView animateWithDuration:v88 animations:v87 completion:0.300000012];
  }
}

- (CGSize)trackSize
{
  acceptButton = [(PHSlidingButton *)self acceptButton];
  [acceptButton trackSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (PHSlidingButtonDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end