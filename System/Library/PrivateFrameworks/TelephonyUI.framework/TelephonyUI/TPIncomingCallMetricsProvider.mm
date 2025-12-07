@interface TPIncomingCallMetricsProvider
+ (BOOL)deviceHasHomeButton;
+ (CGRect)fullDeviceBounds;
+ (CGRect)horizontalNameLabelBoundingRectForName:(id)name caption:(id)caption window:(id)window preferredTitleFont:(id)font;
+ (CGRect)horizontalNameLabelBoundingRectForName:(id)name window:(id)window;
+ (CGRect)verticalNameLabelBoundingRectForName:(id)name caption:(id)caption window:(id)window preferredTitleFont:(id)font;
+ (CGRect)verticalNameLabelBoundingRectForName:(id)name window:(id)window;
+ (double)callDetailsButtonPaddingPercentTop_ForSnapshot;
+ (double)callDetailsButtonPaddingTop_ForSnapshot;
+ (double)callDetailsButtonPaddingTrailPercent_ForSnapshot;
+ (double)callDetailsButtonPaddingTrail_ForSnapshot;
+ (double)fullDeviceHeight;
+ (double)fullDeviceWidth;
+ (double)homeButtonOffsetForSafeAreaFrame:(CGRect)frame;
+ (double)incomingCallAndInCallControlsBottomPadding;
+ (double)sixPercentOfDeviceHeight;
+ (double)twelvePercentOfDeviceHeight;
+ (double)twentyTwoPointFivePercentOfDeviceHeight;
+ (double)verticalTextTopMargin;
+ (id)appropriateCallerNameViewForContact:(id)contact callStatus:(id)status callIsActive:(BOOL)active optionalBackupName:(id)name;
+ (id)posterDisplayNameForContact:(id)contact;
+ (void)addCallerNameView:(id)view toContainerView:(id)containerView;
+ (void)addCallerNameView:(id)view toViewController:(id)controller;
+ (void)constraintIncomingCallTextViewAdapterWrapper:(id)wrapper toView:(id)view;
+ (void)constraintIncomingCallTextViewForHorizontalLayout:(id)layout toView:(id)view;
+ (void)constraintIncomingCallTextViewForVerticalLayout:(id)layout toView:(id)view;
@end

@implementation TPIncomingCallMetricsProvider

+ (CGRect)horizontalNameLabelBoundingRectForName:(id)name window:(id)window
{
  [TPIncomingCallMetricsProvider horizontalNameLabelBoundingRectForName:name caption:0 window:window preferredTitleFont:0];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (CGRect)horizontalNameLabelBoundingRectForName:(id)name caption:(id)caption window:(id)window preferredTitleFont:(id)font
{
  v50 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  fontCopy = font;
  captionCopy = caption;
  nameCopy = name;
  v14 = [objc_alloc(getPRIncomingCallTextViewAdapterWrapperClass()) initWithName:nameCopy status:captionCopy];

  [v14 setPreferredLayout:0];
  if (fontCopy)
  {
    [v14 setEmphasizedNameFont:fontCopy];
  }

  if (windowCopy)
  {
    [windowCopy frame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    v16 = v24;
    v18 = v25;
    v20 = v26;
    v22 = v27;
  }

  v28 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v16, v18, v20, v22}];
  viewController = [v14 viewController];
  view = [viewController view];

  [v28 addSubview:view];
  [self constraintIncomingCallTextViewAdapterWrapper:v14 toView:v28];
  [v28 setNeedsLayout];
  [v28 layoutIfNeeded];
  frame = [view frame];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = TPDefaultLog(frame);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v51.origin.x = v33;
    v51.origin.y = v35;
    v51.size.width = v37;
    v51.size.height = v39;
    v41 = NSStringFromCGRect(v51);
    v46 = 138412546;
    v47 = v41;
    v48 = 2112;
    v49 = windowCopy;
    _os_log_impl(&dword_1B4894000, v40, OS_LOG_TYPE_DEFAULT, "Returning horizontalNameLabelBoundingRect: %@ using window: %@", &v46, 0x16u);
  }

  v42 = v33;
  v43 = v35;
  v44 = v37;
  v45 = v39;
  result.size.height = v45;
  result.size.width = v44;
  result.origin.y = v43;
  result.origin.x = v42;
  return result;
}

+ (CGRect)verticalNameLabelBoundingRectForName:(id)name window:(id)window
{
  [TPIncomingCallMetricsProvider verticalNameLabelBoundingRectForName:name caption:0 window:window preferredTitleFont:0];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (CGRect)verticalNameLabelBoundingRectForName:(id)name caption:(id)caption window:(id)window preferredTitleFont:(id)font
{
  v50 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  fontCopy = font;
  captionCopy = caption;
  nameCopy = name;
  v14 = [objc_alloc(getPRIncomingCallTextViewAdapterWrapperClass()) initWithName:nameCopy status:captionCopy];

  [v14 setPreferredLayout:1];
  if (fontCopy)
  {
    [v14 setEmphasizedNameFont:fontCopy];
  }

  if (windowCopy)
  {
    [windowCopy frame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];
    v16 = v24;
    v18 = v25;
    v20 = v26;
    v22 = v27;
  }

  v28 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v16, v18, v20, v22}];
  viewController = [v14 viewController];
  view = [viewController view];

  [v28 addSubview:view];
  [self constraintIncomingCallTextViewAdapterWrapper:v14 toView:v28];
  [v28 setNeedsLayout];
  [v28 layoutIfNeeded];
  [view frame];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  maxVerticalTextHeight = [getPRIncomingCallMetricsProviderClass() maxVerticalTextHeight];
  if (v38 > v40)
  {
    maxVerticalTextHeight = [getPRIncomingCallMetricsProviderClass() maxVerticalTextHeight];
    v38 = v41;
  }

  v42 = TPDefaultLog(maxVerticalTextHeight);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v51.origin.x = v32;
    v51.origin.y = v34;
    v51.size.width = v36;
    v51.size.height = v38;
    v43 = NSStringFromCGRect(v51);
    v48 = 138412290;
    v49 = v43;
    _os_log_impl(&dword_1B4894000, v42, OS_LOG_TYPE_DEFAULT, "Returning verticalNameLabelBoundingRect: %@", &v48, 0xCu);
  }

  v44 = v32;
  v45 = v34;
  v46 = v36;
  v47 = v38;
  result.size.height = v47;
  result.size.width = v46;
  result.origin.y = v45;
  result.origin.x = v44;
  return result;
}

+ (id)appropriateCallerNameViewForContact:(id)contact callStatus:(id)status callIsActive:(BOOL)active optionalBackupName:(id)name
{
  activeCopy = active;
  contactCopy = contact;
  statusCopy = status;
  nameCopy = name;
  if (contactCopy)
  {
    v12 = [objc_alloc(getPRIncomingCallTextViewAdapterWrapperClass()) initWithContact:contactCopy status:statusCopy callIsActive:activeCopy];
  }

  else
  {
    v13 = [TPIncomingCallMetricsProvider posterDisplayNameForContact:0];
    v12 = [objc_alloc(getPRIncomingCallTextViewAdapterWrapperClass()) initWithName:v13 status:statusCopy callIsActive:activeCopy];
  }

  if (_AXSPrefersHorizontalTextLayout())
  {
    [v12 overrideTitleLayoutWith:0];
  }

  displayNameText = [v12 displayNameText];
  if ([displayNameText length])
  {
  }

  else
  {
    v15 = [nameCopy length];

    if (v15)
    {
      [v12 setDisplayNameText:nameCopy];
    }
  }

  return v12;
}

+ (void)addCallerNameView:(id)view toViewController:(id)controller
{
  v45[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  controllerCopy = controller;
  contentViewCoordinator = [controllerCopy contentViewCoordinator];
  vibrantObscurableContentView = [contentViewCoordinator vibrantObscurableContentView];
  v9 = viewCopy;
  viewController = [v9 viewController];
  [viewController willMoveToParentViewController:controllerCopy];
  [controllerCopy addChildViewController:viewController];
  view = [viewController view];
  [vibrantObscurableContentView addSubview:view];

  [viewController didMoveToParentViewController:controllerCopy];
  [controllerCopy registerPosterAppearanceObserver:v9];
  obscurableContentView = [controllerCopy obscurableContentView];
  [TPIncomingCallMetricsProvider constraintIncomingCallTextViewAdapterWrapper:v9 toView:obscurableContentView];

  emojiViewController = [v9 emojiViewController];
  if (emojiViewController)
  {
    obscurableOverlayView = [contentViewCoordinator obscurableOverlayView];
    [emojiViewController willMoveToParentViewController:controllerCopy];
    [controllerCopy addChildViewController:emojiViewController];
    view2 = [emojiViewController view];
    [obscurableOverlayView addSubview:view2];

    [emojiViewController didMoveToParentViewController:controllerCopy];
    view3 = [emojiViewController view];
    [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v34 = MEMORY[0x1E696ACD8];
    view4 = [emojiViewController view];
    leadingAnchor = [view4 leadingAnchor];
    view5 = [viewController view];
    leadingAnchor2 = [view5 leadingAnchor];
    v39 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v45[0] = v39;
    view6 = [emojiViewController view];
    trailingAnchor = [view6 trailingAnchor];
    view7 = [viewController view];
    trailingAnchor2 = [view7 trailingAnchor];
    v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v45[1] = v33;
    view8 = [emojiViewController view];
    topAnchor = [view8 topAnchor];
    view9 = [viewController view];
    topAnchor2 = [view9 topAnchor];
    v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v45[2] = v28;
    view10 = [emojiViewController view];
    bottomAnchor = [view10 bottomAnchor];
    view11 = [viewController view];
    bottomAnchor2 = [view11 bottomAnchor];
    [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v19 = v18 = contentViewCoordinator;
    v45[3] = v19;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:4];
    v20 = viewController;
    v21 = vibrantObscurableContentView;
    v23 = v22 = v9;
    [v34 activateConstraints:v23];

    v9 = v22;
    vibrantObscurableContentView = v21;
    viewController = v20;

    contentViewCoordinator = v18;
  }

  vibrantObscurableContentView2 = [contentViewCoordinator vibrantObscurableContentView];
  [vibrantObscurableContentView2 setNeedsLayout];

  vibrantObscurableContentView3 = [contentViewCoordinator vibrantObscurableContentView];
  [vibrantObscurableContentView3 layoutIfNeeded];

  [v9 tightFrame];
  [contentViewCoordinator setPrimaryContentTightFrame:?];
}

+ (void)addCallerNameView:(id)view toContainerView:(id)containerView
{
  viewCopy = view;
  containerViewCopy = containerView;
  viewController = [viewCopy viewController];
  view = [viewController view];
  [containerViewCopy addSubview:view];

  [TPIncomingCallMetricsProvider constraintIncomingCallTextViewAdapterWrapper:viewCopy toView:containerViewCopy];
}

+ (void)constraintIncomingCallTextViewAdapterWrapper:(id)wrapper toView:(id)view
{
  viewCopy = view;
  wrapperCopy = wrapper;
  viewController = [wrapperCopy viewController];
  view = [viewController view];

  layout = [wrapperCopy layout];
  if (layout == 1)
  {
    [self constraintIncomingCallTextViewForVerticalLayout:view toView:viewCopy];
  }

  else
  {
    [self constraintIncomingCallTextViewForHorizontalLayout:view toView:viewCopy];
  }
}

+ (void)constraintIncomingCallTextViewForHorizontalLayout:(id)layout toView:(id)view
{
  v25[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  layoutCopy = layout;
  [layoutCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  +[TPIncomingCallMetricsProvider twentyTwoPointFivePercentOfDeviceHeight];
  v8 = v7;
  [getPRIncomingCallMetricsProviderClass() horizontalTextEdgePadding];
  v10 = v9;
  v21 = MEMORY[0x1E696ACD8];
  lastBaselineAnchor = [layoutCopy lastBaselineAnchor];
  topAnchor = [viewCopy topAnchor];
  v22 = [lastBaselineAnchor constraintEqualToAnchor:topAnchor constant:v8];
  v25[0] = v22;
  centerXAnchor = [layoutCopy centerXAnchor];
  centerXAnchor2 = [viewCopy centerXAnchor];
  v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v25[1] = v13;
  leadingAnchor = [layoutCopy leadingAnchor];
  leadingAnchor2 = [viewCopy leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v10];
  v25[2] = v16;
  trailingAnchor = [layoutCopy trailingAnchor];

  trailingAnchor2 = [viewCopy trailingAnchor];

  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v10];
  v25[3] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
  [v21 activateConstraints:v20];
}

+ (void)constraintIncomingCallTextViewForVerticalLayout:(id)layout toView:(id)view
{
  v22[3] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  layoutCopy = layout;
  [layoutCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  +[TPIncomingCallMetricsProvider verticalTextTopMargin];
  v8 = v7;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  if ([mainScreen screenSizeCategory] == 1)
  {
    v10 = 16.0;
  }

  else
  {
    v10 = 20.0;
  }

  v21 = MEMORY[0x1E696ACD8];
  topAnchor = [layoutCopy topAnchor];
  topAnchor2 = [viewCopy topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v8];
  v22[0] = v13;
  leftAnchor = [layoutCopy leftAnchor];
  leftAnchor2 = [viewCopy leftAnchor];
  v16 = [leftAnchor constraintGreaterThanOrEqualToAnchor:leftAnchor2 constant:v10];
  v22[1] = v16;
  rightAnchor = [layoutCopy rightAnchor];

  rightAnchor2 = [viewCopy rightAnchor];

  v19 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-v10];
  v22[2] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  [v21 activateConstraints:v20];
}

+ (double)homeButtonOffsetForSafeAreaFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = 0.0;
  if (+[TPUIConfiguration pipStatusBarPadding]== 5)
  {
    v11.origin.x = x;
    v11.origin.y = y;
    v11.size.width = width;
    v11.size.height = height;
    if (!CGRectIsEmpty(v11))
    {
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen bounds];
      v7 = v9 - (y + height);
    }
  }

  return v7;
}

+ (double)sixPercentOfDeviceHeight
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v4 = v3;

  mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen2 bounds];
  v7 = v6;

  if (v4 >= v7)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  return v8 * 0.0599999987;
}

+ (double)twelvePercentOfDeviceHeight
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v4 = v3;

  mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen2 bounds];
  v7 = v6;

  if (v4 >= v7)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  return v8 * 0.119999997;
}

+ (double)twentyTwoPointFivePercentOfDeviceHeight
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v4 = v3;

  mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen2 bounds];
  v7 = v6;

  if (v4 >= v7)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  return v8 * 0.224999994;
}

+ (CGRect)fullDeviceBounds
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

+ (double)fullDeviceHeight
{
  [self fullDeviceBounds];
  v4 = v3;
  [self fullDeviceBounds];
  if (v4 >= v5)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

+ (double)fullDeviceWidth
{
  [self fullDeviceBounds];
  v4 = v3;
  [self fullDeviceBounds];
  if (v4 >= v5)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

+ (BOOL)deviceHasHomeButton
{
  if (deviceHasHomeButton_onceToken != -1)
  {
    +[TPIncomingCallMetricsProvider deviceHasHomeButton];
  }

  return deviceHasHomeButton_homeButtonType != 2;
}

uint64_t __52__TPIncomingCallMetricsProvider_deviceHasHomeButton__block_invoke()
{
  result = MGGetSInt32Answer();
  deviceHasHomeButton_homeButtonType = result;
  return result;
}

+ (double)callDetailsButtonPaddingPercentTop_ForSnapshot
{
  if ([self deviceHasHomeButton])
  {

    [self callDetailsButtonPaddingTopPercent_HomeButton];
  }

  else
  {

    [self callDetailsButtonPaddingTopPercent_DynamicIsland];
  }

  return result;
}

+ (double)callDetailsButtonPaddingTrailPercent_ForSnapshot
{
  if ([self deviceHasHomeButton])
  {

    [self callDetailsButtonPaddingTrailingPercent_HomeButton];
  }

  else
  {

    [self callDetailsButtonPaddingTrailingPercent_DynamicIsland];
  }

  return result;
}

+ (double)callDetailsButtonPaddingTop_ForSnapshot
{
  [self fullDeviceHeight];
  v4 = v3;
  [self callDetailsButtonPaddingPercentTop_ForSnapshot];
  return v4 * v5 / 100.0;
}

+ (double)callDetailsButtonPaddingTrail_ForSnapshot
{
  [self fullDeviceWidth];
  v4 = v3;
  [self callDetailsButtonPaddingTrailPercent_ForSnapshot];
  return v4 * v5 / 100.0;
}

+ (double)verticalTextTopMargin
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v4 = v3;

  mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen2 bounds];
  v7 = v6;

  if (v4 >= v7)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  return v8 * 0.129999995;
}

+ (double)incomingCallAndInCallControlsBottomPadding
{
  v3 = +[TPUIConfiguration screenSize]== 1;
  [self fullDeviceHeight];
  return v4 * dbl_1B48EBD70[v3];
}

+ (id)posterDisplayNameForContact:(id)contact
{
  contactCopy = contact;
  v4 = posterDisplayNameForContact__sFormatter;
  if (!posterDisplayNameForContact__sFormatter)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695CD80]);
    v6 = posterDisplayNameForContact__sFormatter;
    posterDisplayNameForContact__sFormatter = v5;

    [posterDisplayNameForContact__sFormatter setStyle:0];
    v4 = posterDisplayNameForContact__sFormatter;
  }

  v7 = [v4 stringFromContact:contactCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_1F2CA8008;
  }

  v10 = v9;

  return v9;
}

@end