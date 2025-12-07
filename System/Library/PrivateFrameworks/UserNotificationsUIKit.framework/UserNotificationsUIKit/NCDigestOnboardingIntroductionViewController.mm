@interface NCDigestOnboardingIntroductionViewController
+ (id)introductionViewControllerWithDeferButtonText:(id)text;
- (NCDigestOnboardingIntroductionViewController)initWithDeferButtonText:(id)text;
- (id)customContentView;
- (id)secondaryCustomContentView;
- (void)_deferButtonPressed:(id)pressed;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation NCDigestOnboardingIntroductionViewController

+ (id)introductionViewControllerWithDeferButtonText:(id)text
{
  textCopy = text;
  v4 = [[NCDigestOnboardingIntroductionViewController alloc] initWithDeferButtonText:textCopy];

  return v4;
}

- (NCDigestOnboardingIntroductionViewController)initWithDeferButtonText:(id)text
{
  textCopy = text;
  v6 = NCUserNotificationsUIKitFrameworkBundle(textCopy);
  v7 = [v6 localizedStringForKey:@"NOTIFICATION_DIGEST_ONBOARDING_INTRODUCTION_TITLE" value:&stru_282FE84F8 table:0];
  v8 = NCUserNotificationsUIKitFrameworkBundle(v7);
  v9 = [v8 localizedStringForKey:@"NOTIFICATION_DIGEST_ONBOARDING_INTRODUCTION_DESCRIPTION" value:&stru_282FE84F8 table:0];
  v12.receiver = self;
  v12.super_class = NCDigestOnboardingIntroductionViewController;
  v10 = [(NCOnboardingViewController *)&v12 initWithTitle:v7 detailText:v9 contentLayout:4];

  if (v10)
  {
    objc_storeStrong(&v10->_deferButtonText, text);
  }

  return v10;
}

- (void)viewDidLoad
{
  v38.receiver = self;
  v38.super_class = NCDigestOnboardingIntroductionViewController;
  [(NCOnboardingViewController *)&v38 viewDidLoad];
  linkButton = [MEMORY[0x277D37650] linkButton];
  [linkButton setTitle:self->_deferButtonText forState:0];
  [linkButton addTarget:self action:sel__deferButtonPressed_ forControlEvents:64];
  buttonTray = [(NCDigestOnboardingIntroductionViewController *)self buttonTray];
  [buttonTray addButton:linkButton];

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  customContentView = [(NCDigestOnboardingIntroductionViewController *)self customContentView];
  [customContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(NCDigestOnboardingIntroductionViewController *)self contentView];
  [contentView addSubview:customContentView];

  leadingAnchor = [customContentView leadingAnchor];
  contentView2 = [(NCDigestOnboardingIntroductionViewController *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v5 addObject:v11];

  contentView3 = [(NCDigestOnboardingIntroductionViewController *)self contentView];
  trailingAnchor = [contentView3 trailingAnchor];
  trailingAnchor2 = [customContentView trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v5 addObject:v15];

  topAnchor = [customContentView topAnchor];
  contentView4 = [(NCDigestOnboardingIntroductionViewController *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v19 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v5 addObject:v19];

  bottomAnchor = [customContentView bottomAnchor];
  contentView5 = [(NCDigestOnboardingIntroductionViewController *)self contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v5 addObject:v23];

  secondaryCustomContentView = [(NCDigestOnboardingIntroductionViewController *)self secondaryCustomContentView];
  secondaryContentView = [(NCDigestOnboardingIntroductionViewController *)self secondaryContentView];
  [secondaryCustomContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [secondaryContentView addSubview:secondaryCustomContentView];
  leadingAnchor3 = [secondaryCustomContentView leadingAnchor];
  leadingAnchor4 = [secondaryContentView leadingAnchor];
  v28 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  [v5 addObject:v28];

  trailingAnchor3 = [secondaryContentView trailingAnchor];
  trailingAnchor4 = [secondaryCustomContentView trailingAnchor];
  v31 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v5 addObject:v31];

  topAnchor3 = [secondaryCustomContentView topAnchor];
  topAnchor4 = [secondaryContentView topAnchor];
  v34 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  [v5 addObject:v34];

  bottomAnchor3 = [secondaryCustomContentView bottomAnchor];
  bottomAnchor4 = [secondaryContentView bottomAnchor];
  v37 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  [v5 addObject:v37];

  [MEMORY[0x277CCAAD0] activateConstraints:v5];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = NCDigestOnboardingIntroductionViewController;
  [(NCDigestOnboardingIntroductionViewController *)&v6 viewWillAppear:?];
  navigationController = [(NCDigestOnboardingIntroductionViewController *)self navigationController];
  [navigationController setNavigationBarHidden:1 animated:appearCopy];
}

- (id)customContentView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v129 = [MEMORY[0x277D75348] colorWithRed:0.258823529 green:0.537254902 blue:0.82745098 alpha:1.0];
  v128 = [MEMORY[0x277D75348] colorWithRed:0.749019608 green:0.980392157 blue:0.423529412 alpha:1.0];
  v126 = [[NCGradientView alloc] initWithVerticalStartColor:v129 verticalEndColor:v128];
  [(NCGradientView *)v126 setTranslatesAutoresizingMaskIntoConstraints:0];
  v130 = v8;
  [v8 addSubview:v126];
  traitCollection = [(NCDigestOnboardingIntroductionViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  v11 = @"DigestOnboardingIntroduction-Dark-Foreground";
  if (userInterfaceStyle == 1)
  {
    v11 = @"DigestOnboardingIntroduction-Light-Foreground";
  }

  v12 = v11;

  v13 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  layer = [v13 layer];
  [layer setAllowsGroupBlending:0];

  [v8 addSubview:v13];
  v15 = objc_alloc_init(MEMORY[0x277D755E8]);
  v16 = [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = MEMORY[0x277D755B8];
  v18 = NCUserNotificationsUIKitFrameworkBundle(v16);
  v19 = [v17 imageNamed:@"DigestOnboardingIntroduction-Background" inBundle:v18];
  v127 = [v19 imageWithRenderingMode:2];

  [v15 setImage:v127];
  v20 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.15];
  [v15 setTintColor:v20];

  [v15 setContentMode:2];
  [v15 setClipsToBounds:0];
  layer2 = [v15 layer];
  [layer2 setCompositingFilter:*MEMORY[0x277CDA5D8]];

  [v13 addSubview:v15];
  v22 = objc_alloc_init(MEMORY[0x277D755E8]);
  v23 = [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  v24 = MEMORY[0x277D755B8];
  v25 = NCUserNotificationsUIKitFrameworkBundle(v23);
  v26 = [v24 imageNamed:v12 inBundle:v25];

  [v22 setImage:v26];
  [v22 setContentMode:2];
  [v22 setClipsToBounds:0];
  CGAffineTransformMakeScale(&v131, 0.6, 0.6);
  [v22 setTransform:&v131];
  [v13 addSubview:v22];
  v27 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v13 addSubview:v27];
  v28 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  clockLabel = self->_clockLabel;
  self->_clockLabel = v28;

  [(UILabel *)self->_clockLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = MEMORY[0x277CCA968];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v32 = [v30 dateFormatFromTemplate:@"j" options:0 locale:currentLocale];
  v33 = [v32 containsString:@"a"];

  v34 = self->_clockLabel;
  v36 = NCUserNotificationsUIKitFrameworkBundle(v35);
  v37 = v36;
  if (v33)
  {
    v38 = @"NOTIFICATION_DIGEST_ONBOARDING_INTRODUCTION_CLOCK_TIME_12_HOUR";
  }

  else
  {
    v38 = @"NOTIFICATION_DIGEST_ONBOARDING_INTRODUCTION_CLOCK_TIME_24_HOUR";
  }

  v39 = [v36 localizedStringForKey:v38 value:&stru_282FE84F8 table:0];
  [(UILabel *)v34 setText:v39];

  [(UILabel *)self->_clockLabel setTextAlignment:1];
  [(UILabel *)self->_clockLabel setClipsToBounds:0];
  v40 = [MEMORY[0x277D74300] systemFontOfSize:42.0];
  fontDescriptor = [v40 fontDescriptor];
  v125 = [fontDescriptor fontDescriptorWithDesign:*MEMORY[0x277D74368]];

  v42 = self->_clockLabel;
  v43 = [MEMORY[0x277D74300] fontWithDescriptor:v125 size:42.0];
  [(UILabel *)v42 setFont:v43];

  [(UILabel *)self->_clockLabel setMinimumScaleFactor:0.25];
  [(UILabel *)self->_clockLabel setAdjustsFontSizeToFitWidth:1];
  LODWORD(v44) = 1132068864;
  [(UILabel *)self->_clockLabel setContentCompressionResistancePriority:0 forAxis:v44];
  v45 = self->_clockLabel;
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  v47 = [whiteColor colorWithAlphaComponent:0.4];
  [(UILabel *)v45 setTextColor:v47];

  superview = [(UILabel *)self->_clockLabel superview];
  layer3 = [superview layer];
  [layer3 setAllowsGroupBlending:0];

  layer4 = [(UILabel *)self->_clockLabel layer];
  [layer4 setCompositingFilter:*MEMORY[0x277CDA5E8]];

  [v27 addSubview:self->_clockLabel];
  v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
  topAnchor = [v13 topAnchor];
  topAnchor2 = [v8 topAnchor];
  v54 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:44.0];
  [v51 addObject:v54];

  bottomAnchor = [v130 bottomAnchor];
  bottomAnchor2 = [v13 bottomAnchor];
  v57 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v51 addObject:v57];

  widthAnchor = [v13 widthAnchor];
  heightAnchor = [v13 heightAnchor];
  v60 = [widthAnchor constraintEqualToAnchor:heightAnchor multiplier:0.656];
  [v51 addObject:v60];

  centerXAnchor = [v13 centerXAnchor];
  centerXAnchor2 = [v130 centerXAnchor];
  v63 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v51 addObject:v63];

  leadingAnchor = [v15 leadingAnchor];
  leadingAnchor2 = [v13 leadingAnchor];
  v66 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
  [v51 addObject:v66];

  trailingAnchor = [v13 trailingAnchor];
  trailingAnchor2 = [v15 trailingAnchor];
  v69 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
  [v51 addObject:v69];

  topAnchor3 = [v15 topAnchor];
  topAnchor4 = [v13 topAnchor];
  v72 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:0.0];
  [v51 addObject:v72];

  bottomAnchor3 = [v13 bottomAnchor];
  bottomAnchor4 = [v15 bottomAnchor];
  v75 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:0.0];
  [v51 addObject:v75];

  leadingAnchor3 = [v22 leadingAnchor];
  leadingAnchor4 = [v13 leadingAnchor];
  v78 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:0.0];
  [v51 addObject:v78];

  trailingAnchor3 = [v13 trailingAnchor];
  trailingAnchor4 = [v22 trailingAnchor];
  v81 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:0.0];
  [v51 addObject:v81];

  topAnchor5 = [v22 topAnchor];
  topAnchor6 = [v13 topAnchor];
  v84 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:30.0];
  [v51 addObject:v84];

  bottomAnchor5 = [v13 bottomAnchor];
  bottomAnchor6 = [v22 bottomAnchor];
  v87 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6 constant:0.0];
  [v51 addObject:v87];

  heightAnchor2 = [v27 heightAnchor];
  heightAnchor3 = [v22 heightAnchor];
  v90 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3 multiplier:0.319];
  [v51 addObject:v90];

  topAnchor7 = [v27 topAnchor];
  topAnchor8 = [v15 topAnchor];
  v93 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
  [v51 addObject:v93];

  leadingAnchor5 = [v27 leadingAnchor];
  leadingAnchor6 = [v15 leadingAnchor];
  v96 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  [v51 addObject:v96];

  trailingAnchor5 = [v15 trailingAnchor];
  trailingAnchor6 = [v27 trailingAnchor];
  v99 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  [v51 addObject:v99];

  heightAnchor4 = [(UILabel *)self->_clockLabel heightAnchor];
  heightAnchor5 = [v15 heightAnchor];
  v102 = [heightAnchor4 constraintEqualToAnchor:heightAnchor5 multiplier:0.15];
  [v51 addObject:v102];

  bottomAnchor7 = [(UILabel *)self->_clockLabel bottomAnchor];
  bottomAnchor8 = [v27 bottomAnchor];
  v105 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
  [v51 addObject:v105];

  leadingAnchor7 = [(UILabel *)self->_clockLabel leadingAnchor];
  leadingAnchor8 = [v27 leadingAnchor];
  v108 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  [v51 addObject:v108];

  trailingAnchor7 = [(UILabel *)self->_clockLabel trailingAnchor];
  trailingAnchor8 = [v27 trailingAnchor];
  v111 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  [v51 addObject:v111];

  leadingAnchor9 = [(NCGradientView *)v126 leadingAnchor];
  leadingAnchor10 = [v130 leadingAnchor];
  v114 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10 constant:0.0];
  [v51 addObject:v114];

  trailingAnchor9 = [v130 trailingAnchor];
  trailingAnchor10 = [(NCGradientView *)v126 trailingAnchor];
  v117 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10 constant:0.0];
  [v51 addObject:v117];

  topAnchor9 = [(NCGradientView *)v126 topAnchor];
  topAnchor10 = [v130 topAnchor];
  v120 = [topAnchor9 constraintEqualToAnchor:topAnchor10 constant:0.0];
  [v51 addObject:v120];

  bottomAnchor9 = [v130 bottomAnchor];
  bottomAnchor10 = [(NCGradientView *)v126 bottomAnchor];
  v123 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10 constant:0.0];
  [v51 addObject:v123];

  [MEMORY[0x277CCAAD0] activateConstraints:v51];

  return v130;
}

- (id)secondaryCustomContentView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v125 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  [v125 setTranslatesAutoresizingMaskIntoConstraints:0];
  v126 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76920]];
  [v126 pointSize];
  v9 = v8;
  v124 = [MEMORY[0x277D755D0] configurationWithPointSize:6 weight:29.0];
  v10 = MEMORY[0x277D74300];
  [v126 pointSize];
  v122 = [v10 systemFontOfSize:? weight:?];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  v11 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
  explainer1Container = self->_explainer1Container;
  self->_explainer1Container = v11;

  [(UIView *)self->_explainer1Container setTranslatesAutoresizingMaskIntoConstraints:0];
  [v125 addSubview:self->_explainer1Container];
  v121 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v4, v5, v6, v7}];
  [v121 setTranslatesAutoresizingMaskIntoConstraints:0];
  v120 = [MEMORY[0x277D755B8] systemImageNamed:@"deskclock" withConfiguration:v124];
  [v121 setImage:v120];
  systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  [v121 setTintColor:systemRedColor];

  [v121 setContentMode:7];
  [(UIView *)self->_explainer1Container addSubview:v121];
  v14 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  explainer1Title = self->_explainer1Title;
  self->_explainer1Title = v14;

  [(UILabel *)self->_explainer1Title setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [(UILabel *)self->_explainer1Title setNumberOfLines:0];
  v17 = self->_explainer1Title;
  v18 = NCUserNotificationsUIKitFrameworkBundle(v16);
  v19 = [v18 localizedStringForKey:@"NOTIFICATION_DIGEST_ONBOARDING_INTRODUCTION_EXPLAINER_1_TITLE" value:&stru_282FE84F8 table:0];
  [(UILabel *)v17 setText:v19];

  [(UILabel *)self->_explainer1Title setFont:v122];
  [(UIView *)self->_explainer1Container addSubview:self->_explainer1Title];
  v20 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  explainer1Label = self->_explainer1Label;
  self->_explainer1Label = v20;

  v22 = [(UILabel *)self->_explainer1Label setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = self->_explainer1Label;
  v24 = NCUserNotificationsUIKitFrameworkBundle(v22);
  v25 = [v24 localizedStringForKey:@"NOTIFICATION_DIGEST_ONBOARDING_INTRODUCTION_EXPLAINER_1_BODY" value:&stru_282FE84F8 table:0];
  [(UILabel *)v23 setText:v25];

  [(UILabel *)self->_explainer1Label setFont:v126];
  [(UILabel *)self->_explainer1Label setNumberOfLines:0];
  [(UILabel *)self->_explainer1Label setTextColor:secondaryLabelColor];
  [(UIView *)self->_explainer1Container addSubview:self->_explainer1Label];
  v26 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v4, v5, v6, v7}];
  explainer2Container = self->_explainer2Container;
  self->_explainer2Container = v26;

  [(UIView *)self->_explainer2Container setTranslatesAutoresizingMaskIntoConstraints:0];
  [v125 addSubview:self->_explainer2Container];
  v118 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v4, v5, v6, v7}];
  [v118 setTranslatesAutoresizingMaskIntoConstraints:0];
  v119 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.bubble" withConfiguration:v124];
  [v118 setImage:v119];
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  [v118 setTintColor:systemBlueColor];

  [v118 setContentMode:7];
  [(UIView *)self->_explainer2Container addSubview:v118];
  v29 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  explainer2Title = self->_explainer2Title;
  self->_explainer2Title = v29;

  [(UILabel *)self->_explainer2Title setTranslatesAutoresizingMaskIntoConstraints:0];
  v31 = [(UILabel *)self->_explainer2Title setNumberOfLines:0];
  v32 = self->_explainer2Title;
  v33 = NCUserNotificationsUIKitFrameworkBundle(v31);
  v34 = [v33 localizedStringForKey:@"NOTIFICATION_DIGEST_ONBOARDING_INTRODUCTION_EXPLAINER_2_TITLE" value:&stru_282FE84F8 table:0];
  [(UILabel *)v32 setText:v34];

  [(UILabel *)self->_explainer2Title setFont:v122];
  [(UIView *)self->_explainer2Container addSubview:self->_explainer2Title];
  v35 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  explainer2Label = self->_explainer2Label;
  self->_explainer2Label = v35;

  v37 = [(UILabel *)self->_explainer2Label setTranslatesAutoresizingMaskIntoConstraints:0];
  v38 = self->_explainer2Label;
  v39 = NCUserNotificationsUIKitFrameworkBundle(v37);
  v40 = [v39 localizedStringForKey:@"NOTIFICATION_DIGEST_ONBOARDING_INTRODUCTION_EXPLAINER_2_BODY" value:&stru_282FE84F8 table:0];
  [(UILabel *)v38 setText:v40];

  [(UILabel *)self->_explainer2Label setFont:v126];
  [(UILabel *)self->_explainer2Label setNumberOfLines:0];
  [(UILabel *)self->_explainer2Label setTextColor:secondaryLabelColor];
  [(UIView *)self->_explainer2Container addSubview:self->_explainer2Label];
  v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
  topAnchor = [(UIView *)self->_explainer1Container topAnchor];
  topAnchor2 = [v125 topAnchor];
  v44 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v9];
  [v41 addObject:v44];

  leadingAnchor = [(UIView *)self->_explainer1Container leadingAnchor];
  leadingAnchor2 = [v125 leadingAnchor];
  v47 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v41 addObject:v47];

  trailingAnchor = [v125 trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_explainer1Container trailingAnchor];
  v50 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v41 addObject:v50];

  topAnchor3 = [v121 topAnchor];
  topAnchor4 = [(UILabel *)self->_explainer1Title topAnchor];
  v53 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:12.0];
  [v41 addObject:v53];

  leadingAnchor3 = [v121 leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_explainer1Container leadingAnchor];
  v56 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:12.0];
  [v41 addObject:v56];

  leadingAnchor5 = [(UILabel *)self->_explainer1Title leadingAnchor];
  leadingAnchor6 = [(UIView *)self->_explainer1Container leadingAnchor];
  v59 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:64.0];
  [v41 addObject:v59];

  trailingAnchor3 = [(UIView *)self->_explainer1Container trailingAnchor];
  trailingAnchor4 = [(UILabel *)self->_explainer1Title trailingAnchor];
  v62 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [v41 addObject:v62];

  topAnchor5 = [(UILabel *)self->_explainer1Title topAnchor];
  topAnchor6 = [(UIView *)self->_explainer1Container topAnchor];
  v65 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  [v41 addObject:v65];

  topAnchor7 = [(UILabel *)self->_explainer1Label topAnchor];
  bottomAnchor = [(UILabel *)self->_explainer1Title bottomAnchor];
  v68 = [topAnchor7 constraintEqualToAnchor:bottomAnchor constant:0.0];
  [v41 addObject:v68];

  leadingAnchor7 = [(UILabel *)self->_explainer1Label leadingAnchor];
  leadingAnchor8 = [(UILabel *)self->_explainer1Title leadingAnchor];
  v71 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  [v41 addObject:v71];

  trailingAnchor5 = [(UIView *)self->_explainer1Container trailingAnchor];
  trailingAnchor6 = [(UILabel *)self->_explainer1Label trailingAnchor];
  v74 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  [v41 addObject:v74];

  bottomAnchor2 = [(UIView *)self->_explainer1Container bottomAnchor];
  bottomAnchor3 = [(UILabel *)self->_explainer1Label bottomAnchor];
  v77 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:0.0];
  [v41 addObject:v77];

  leadingAnchor9 = [(UIView *)self->_explainer2Container leadingAnchor];
  leadingAnchor10 = [v125 leadingAnchor];
  v80 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  [v41 addObject:v80];

  trailingAnchor7 = [v125 trailingAnchor];
  trailingAnchor8 = [(UIView *)self->_explainer2Container trailingAnchor];
  v83 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  [v41 addObject:v83];

  topAnchor8 = [(UIView *)self->_explainer2Container topAnchor];
  bottomAnchor4 = [(UIView *)self->_explainer1Container bottomAnchor];
  v86 = [topAnchor8 constraintEqualToAnchor:bottomAnchor4 constant:v9 * 2.0 + -5.0];
  [v41 addObject:v86];

  bottomAnchor5 = [(UIView *)self->_explainer2Container bottomAnchor];
  bottomAnchor6 = [v125 bottomAnchor];
  v89 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  [v41 addObject:v89];

  topAnchor9 = [v118 topAnchor];
  topAnchor10 = [(UILabel *)self->_explainer2Title topAnchor];
  v92 = [topAnchor9 constraintEqualToAnchor:topAnchor10 constant:11.0];
  [v41 addObject:v92];

  leadingAnchor11 = [v118 leadingAnchor];
  leadingAnchor12 = [(UIView *)self->_explainer2Container leadingAnchor];
  v95 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12 constant:9.0];
  [v41 addObject:v95];

  leadingAnchor13 = [(UILabel *)self->_explainer2Title leadingAnchor];
  leadingAnchor14 = [(UIView *)self->_explainer2Container leadingAnchor];
  v98 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14 constant:64.0];
  [v41 addObject:v98];

  trailingAnchor9 = [(UIView *)self->_explainer2Container trailingAnchor];
  trailingAnchor10 = [(UILabel *)self->_explainer2Title trailingAnchor];
  v101 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  [v41 addObject:v101];

  topAnchor11 = [(UILabel *)self->_explainer2Title topAnchor];
  topAnchor12 = [(UIView *)self->_explainer2Container topAnchor];
  v104 = [topAnchor11 constraintEqualToAnchor:topAnchor12];
  [v41 addObject:v104];

  topAnchor13 = [(UILabel *)self->_explainer2Label topAnchor];
  bottomAnchor7 = [(UILabel *)self->_explainer2Title bottomAnchor];
  v107 = [topAnchor13 constraintEqualToAnchor:bottomAnchor7 constant:0.0];
  [v41 addObject:v107];

  leadingAnchor15 = [(UILabel *)self->_explainer2Label leadingAnchor];
  leadingAnchor16 = [(UILabel *)self->_explainer2Title leadingAnchor];
  v110 = [leadingAnchor15 constraintEqualToAnchor:leadingAnchor16];
  [v41 addObject:v110];

  trailingAnchor11 = [(UIView *)self->_explainer2Container trailingAnchor];
  trailingAnchor12 = [(UILabel *)self->_explainer2Label trailingAnchor];
  v113 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
  [v41 addObject:v113];

  bottomAnchor8 = [(UIView *)self->_explainer2Container bottomAnchor];
  bottomAnchor9 = [(UILabel *)self->_explainer2Label bottomAnchor];
  v116 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9 constant:0.0];
  [v41 addObject:v116];

  [MEMORY[0x277CCAAD0] activateConstraints:v41];

  return v125;
}

- (void)_deferButtonPressed:(id)pressed
{
  navigationController = [(NCDigestOnboardingIntroductionViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];

  delegate = [(NCOnboardingViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate onboardingViewControllerDidDeferSetup:self];
  }
}

@end