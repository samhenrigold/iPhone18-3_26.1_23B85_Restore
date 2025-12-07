@interface SHUDJindoViewController
- (SHUDJindoViewController)initWithNeedsButton:(BOOL)button;
- (id)buttonView;
- (id)createSubtitleWidthConstraint:(id)constraint;
- (id)formattedSubtitle:(id)subtitle;
- (id)iconView;
- (id)trailingJindoButton;
- (void)handleButtonTapped;
- (void)updateUI;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator;
@end

@implementation SHUDJindoViewController

- (SHUDJindoViewController)initWithNeedsButton:(BOOL)button
{
  v5.receiver = self;
  v5.super_class = SHUDJindoViewController;
  result = [(SHUDJindoViewController *)&v5 initWithNibName:0 bundle:0];
  if (result)
  {
    result->_needsButton = button;
  }

  return result;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4 = sharingHUDLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Banner did appear", v7, 2u);
  }

  viewDidAppearHandler = [(SHUDJindoViewController *)self viewDidAppearHandler];

  if (viewDidAppearHandler)
  {
    viewDidAppearHandler2 = [(SHUDJindoViewController *)self viewDidAppearHandler];
    viewDidAppearHandler2[2]();
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4 = sharingHUDLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Banner did disappear", v7, 2u);
  }

  viewDidDisappearHandler = [(SHUDJindoViewController *)self viewDidDisappearHandler];

  if (viewDidDisappearHandler)
  {
    viewDidDisappearHandler2 = [(SHUDJindoViewController *)self viewDidDisappearHandler];
    viewDidDisappearHandler2[2]();
  }
}

- (void)handleButtonTapped
{
  v3 = sharingHUDLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Banner button tapped", buf, 2u);
  }

  buttonTapped = [(SHUDJindoViewController *)self buttonTapped];

  if (buttonTapped)
  {
    v5 = sharingHUDLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "buttonTapped() called", v7, 2u);
    }

    buttonTapped2 = [(SHUDJindoViewController *)self buttonTapped];
    buttonTapped2[2]();
  }
}

- (id)formattedSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  v5 = objc_alloc_init(UILabel);
  [v5 setText:subtitleCopy];

  v6 = [UIFont sbui_systemAperturePreferredFontForTextStyle:0];
  [v5 setFont:v6];

  font = [v5 font];
  v8 = [font fontWithSize:13.0];
  [v5 setFont:v8];

  v9 = +[UIColor systemWhiteColor];
  [v5 setTextColor:v9];

  [v5 setTextAlignment:{-[SHUDJindoViewController subtitleAlignment](self, "subtitleAlignment")}];
  LODWORD(v10) = 1132068864;
  [v5 setContentCompressionResistancePriority:0 forAxis:v10];
  LODWORD(v11) = 1132068864;
  [v5 setContentHuggingPriority:0 forAxis:v11];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setMarqueeEnabled:1];
  [v5 setMarqueeRunning:1];

  return v5;
}

- (id)trailingJindoButton
{
  trailingButton = [(SHUDJindoViewController *)self trailingButton];
  LODWORD(v3) = 1148846080;
  [trailingButton setContentCompressionResistancePriority:0 forAxis:v3];
  LODWORD(v4) = 1148846080;
  [trailingButton setContentHuggingPriority:0 forAxis:v4];
  titleLabel = [trailingButton titleLabel];
  [titleLabel setMinimumScaleFactor:0.5];

  titleLabel2 = [trailingButton titleLabel];
  [titleLabel2 setNumberOfLines:1];

  titleLabel3 = [trailingButton titleLabel];
  [titleLabel3 setAdjustsFontSizeToFitWidth:1];

  titleLabel4 = [trailingButton titleLabel];
  [titleLabel4 setAdjustsFontForContentSizeCategory:1];

  [trailingButton setContentEdgeInsets:{7.0, 12.0, 7.0, 12.0}];
  [trailingButton _setCornerRadius:17.0];
  v9 = +[UIColor systemRedColor];
  v10 = [v9 colorWithAlphaComponent:0.4];
  [trailingButton setBackgroundColor:v10];

  [trailingButton setUserInteractionEnabled:1];

  return trailingButton;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SHUDJindoViewController;
  [(SHUDJindoViewController *)&v3 viewDidLoad];
  self->_needsToLayoutSubviews = 1;
}

- (id)createSubtitleWidthConstraint:(id)constraint
{
  constraintCopy = constraint;
  text = [constraintCopy text];
  [constraintCopy intrinsicContentSize];
  v6 = v5;
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"UNLOCKED_JINDO" value:0 table:@"Localization-D73"];

  [constraintCopy setText:v8];
  [constraintCopy intrinsicContentSize];
  if (v6 <= v9)
  {
    v6 = v9;
  }

  [constraintCopy setText:text];
  widthAnchor = [constraintCopy widthAnchor];

  v11 = [widthAnchor constraintGreaterThanOrEqualToConstant:v6];

  LODWORD(v12) = 1140129792;
  [v11 setPriority:v12];

  return v11;
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator
{
  if (self->_needsToLayoutSubviews)
  {
    self->_needsToLayoutSubviews = 0;
    view = [(SHUDJindoViewController *)self view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];

    buttonView = [(SHUDJindoViewController *)self buttonView];
    if (![(SHUDJindoViewController *)self needsButton])
    {
      [buttonView setHidden:1];
    }

    iconView = [(SHUDJindoViewController *)self iconView];
    view2 = [(SHUDJindoViewController *)self view];
    [view2 addSubview:iconView];

    view3 = [(SHUDJindoViewController *)self view];
    [view3 addSubview:buttonView];

    subtitle = [(SHUDJindoViewController *)self subtitle];
    v9 = [(SHUDJindoViewController *)self formattedSubtitle:?];
    p_centerContent = &self->_centerContent;
    objc_storeStrong(&self->_centerContent, v9);
    view4 = [(SHUDJindoViewController *)self view];
    [view4 addSubview:self->_centerContent];

    view5 = [(SHUDJindoViewController *)self view];
    sBUISA_systemApertureObstructedAreaLayoutGuide = [view5 SBUISA_systemApertureObstructedAreaLayoutGuide];

    v14 = objc_opt_respondsToSelector();
    centerContent = self->_centerContent;
    if (v14)
    {
      v16 = centerContent;
      _tightBoundingBoxLayoutGuide = [(UILabel *)v16 _tightBoundingBoxLayoutGuide];
      topAnchor = [_tightBoundingBoxLayoutGuide topAnchor];
      [sBUISA_systemApertureObstructedAreaLayoutGuide bottomAnchor];
      v19 = sBUISA_systemApertureObstructedAreaLayoutGuide;
      v20 = buttonView;
      v22 = v21 = v9;
      v23 = [topAnchor constraintEqualToAnchor:v22];

      p_centerContent = &self->_centerContent;
      v9 = v21;
      buttonView = v20;
      sBUISA_systemApertureObstructedAreaLayoutGuide = v19;
    }

    else
    {
      _tightBoundingBoxLayoutGuide = [(UILabel *)centerContent topAnchor];
      topAnchor = [sBUISA_systemApertureObstructedAreaLayoutGuide bottomAnchor];
      v23 = [_tightBoundingBoxLayoutGuide constraintEqualToAnchor:topAnchor];
    }

    view6 = [(SHUDJindoViewController *)self view];
    heightAnchor = [view6 heightAnchor];
    v65 = [heightAnchor constraintEqualToConstant:66.67];
    v73[0] = v65;
    centerYAnchor = [iconView centerYAnchor];
    view7 = [(SHUDJindoViewController *)self view];
    centerYAnchor2 = [view7 centerYAnchor];
    v61 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v73[1] = v61;
    centerXAnchor = [iconView centerXAnchor];
    view8 = [(SHUDJindoViewController *)self view];
    leadingAnchor = [view8 leadingAnchor];
    v57 = [centerXAnchor constraintEqualToAnchor:leadingAnchor constant:30.0];
    v73[2] = v57;
    heightAnchor2 = [iconView heightAnchor];
    v55 = [heightAnchor2 constraintEqualToConstant:55.33];
    v73[3] = v55;
    widthAnchor = [iconView widthAnchor];
    v53 = [widthAnchor constraintEqualToConstant:55.33];
    v73[4] = v53;
    v70 = v9;
    v52 = [(SHUDJindoViewController *)self createSubtitleWidthConstraint:v9];
    v73[5] = v52;
    leadingAnchor2 = [(UILabel *)*p_centerContent leadingAnchor];
    leadingAnchor3 = [sBUISA_systemApertureObstructedAreaLayoutGuide leadingAnchor];
    v48 = [leadingAnchor2 constraintLessThanOrEqualToAnchor:leadingAnchor3];
    v73[6] = v48;
    trailingAnchor = [(UILabel *)*p_centerContent trailingAnchor];
    trailingAnchor2 = [sBUISA_systemApertureObstructedAreaLayoutGuide trailingAnchor];
    v45 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2];
    v73[7] = v45;
    v73[8] = v23;
    v68 = v23;
    leadingAnchor4 = [(UILabel *)*p_centerContent leadingAnchor];
    v72 = iconView;
    centerXAnchor2 = [iconView centerXAnchor];
    v42 = [leadingAnchor4 constraintEqualToAnchor:centerXAnchor2 constant:25.33];
    v73[9] = v42;
    centerYAnchor3 = [buttonView centerYAnchor];
    view9 = [(SHUDJindoViewController *)self view];
    centerYAnchor4 = [view9 centerYAnchor];
    v38 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v73[10] = v38;
    trailingAnchor3 = [buttonView trailingAnchor];
    view10 = [(SHUDJindoViewController *)self view];
    trailingAnchor4 = [view10 trailingAnchor];
    v24 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-15.0];
    v73[11] = v24;
    leadingAnchor5 = [buttonView leadingAnchor];
    v69 = sBUISA_systemApertureObstructedAreaLayoutGuide;
    trailingAnchor5 = [sBUISA_systemApertureObstructedAreaLayoutGuide trailingAnchor];
    v27 = [leadingAnchor5 constraintGreaterThanOrEqualToAnchor:trailingAnchor5];
    v73[12] = v27;
    [buttonView leadingAnchor];
    v29 = v28 = buttonView;
    trailingAnchor6 = [(UILabel *)*p_centerContent trailingAnchor];
    v31 = [v29 constraintEqualToAnchor:trailingAnchor6 constant:8.0];
    v73[13] = v31;
    v32 = [NSArray arrayWithObjects:v73 count:14];
    v51 = [NSMutableArray arrayWithArray:v32];

    if (![(SHUDJindoViewController *)self needsButton])
    {
      widthAnchor2 = [v28 widthAnchor];
      v34 = [widthAnchor2 constraintEqualToConstant:0.0];
      [v51 addObject:v34];
    }

    [NSLayoutConstraint activateConstraints:v51];
  }
}

- (id)iconView
{
  v3 = objc_alloc_init(SHUDJindoAccessoryView);
  [(SHUDJindoAccessoryView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [[UIImageView alloc] initWithFrame:{0.0, 0.0, 82.0, 30.0}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  leadingImage = [(SHUDJindoViewController *)self leadingImage];
  [v4 setImage:leadingImage];

  [v4 setContentMode:{-[SHUDJindoViewController imageContentMode](self, "imageContentMode")}];
  [(SHUDJindoAccessoryView *)v3 addSubview:v4];
  leadingAnchor = [v4 leadingAnchor];
  leadingAnchor2 = [(SHUDJindoAccessoryView *)v3 leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v20[0] = v17;
  trailingAnchor = [v4 trailingAnchor];
  trailingAnchor2 = [(SHUDJindoAccessoryView *)v3 trailingAnchor];
  v6 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v20[1] = v6;
  bottomAnchor = [v4 bottomAnchor];
  bottomAnchor2 = [(SHUDJindoAccessoryView *)v3 bottomAnchor];
  v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v20[2] = v9;
  topAnchor = [v4 topAnchor];
  topAnchor2 = [(SHUDJindoAccessoryView *)v3 topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v20[3] = v12;
  v13 = [NSArray arrayWithObjects:v20 count:4];
  [NSLayoutConstraint activateConstraints:v13];

  return v3;
}

- (id)buttonView
{
  v3 = [[SHUDJindoAccessoryView alloc] initWithFrame:0.0, 0.0, 120.0, 60.0];
  [(SHUDJindoAccessoryView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  trailingJindoButton = [(SHUDJindoViewController *)self trailingJindoButton];
  [trailingJindoButton addTarget:self action:"handleButtonTapped" forControlEvents:64];
  [(SHUDJindoAccessoryView *)v3 addSubview:trailingJindoButton];
  leadingAnchor = [trailingJindoButton leadingAnchor];
  leadingAnchor2 = [(SHUDJindoAccessoryView *)v3 leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v20[0] = v16;
  trailingAnchor = [trailingJindoButton trailingAnchor];
  trailingAnchor2 = [(SHUDJindoAccessoryView *)v3 trailingAnchor];
  v5 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v20[1] = v5;
  bottomAnchor = [trailingJindoButton bottomAnchor];
  bottomAnchor2 = [(SHUDJindoAccessoryView *)v3 bottomAnchor];
  v8 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v20[2] = v8;
  topAnchor = [trailingJindoButton topAnchor];
  topAnchor2 = [(SHUDJindoAccessoryView *)v3 topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v20[3] = v11;
  v12 = [NSArray arrayWithObjects:v20 count:4];
  [NSLayoutConstraint activateConstraints:v12];

  [(SHUDJindoViewController *)self setBannerButton:trailingJindoButton];

  return v3;
}

- (void)updateUI
{
  subtitle = [(SHUDJindoViewController *)self subtitle];
  [(UILabel *)self->_centerContent setText:subtitle];
}

@end