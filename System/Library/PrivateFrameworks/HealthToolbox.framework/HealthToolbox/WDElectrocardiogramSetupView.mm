@interface WDElectrocardiogramSetupView
- (id)bodyString;
- (id)buttonTitleString;
- (id)createHeroView;
- (id)titleString;
@end

@implementation WDElectrocardiogramSetupView

- (id)createHeroView
{
  v24[4] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277D75D18]);
  v3 = objc_alloc(MEMORY[0x277D755E8]);
  v4 = MEMORY[0x277D755B8];
  v5 = WDBundle();
  v6 = [v4 imageNamed:@"setup-watch-Cinnamon" inBundle:v5];
  v7 = [v3 initWithImage:v6];

  v23 = v7;
  [v2 addSubview:v7];
  [v7 hk_alignConstraintsWithView:v2];
  v8 = [objc_alloc(MEMORY[0x277D130B0]) initWithFrame:0 isLargeDevice:{18.0, 45.0, 80.0, 98.0}];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [v8 setBackgroundColor:blackColor];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setTimeRemaining:11.0];
  [v2 addSubview:v8];
  v19 = MEMORY[0x277CCAAD0];
  leftAnchor = [v8 leftAnchor];
  leftAnchor2 = [v2 leftAnchor];
  v20 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:18.0];
  v24[0] = v20;
  topAnchor = [v8 topAnchor];
  topAnchor2 = [v2 topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:45.0];
  v24[1] = v12;
  widthAnchor = [v8 widthAnchor];
  v14 = [widthAnchor constraintEqualToConstant:80.0];
  v24[2] = v14;
  heightAnchor = [v8 heightAnchor];
  v16 = [heightAnchor constraintEqualToConstant:98.0];
  v24[3] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:4];
  [v19 activateConstraints:v17];

  return v2;
}

- (id)titleString
{
  v2 = WDBundle();
  v3 = [v2 localizedStringForKey:@"ELECTROCARDIOGRAM_SETUP_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
  v4 = HKConditionallyRedactedHeartRhythmString();

  return v4;
}

- (id)bodyString
{
  v2 = WDBundle();
  v3 = [v2 localizedStringForKey:@"ELECTROCARDIOGRAM_SETUP_BODY" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
  v4 = HKConditionallyRedactedHeartRhythmString();

  return v4;
}

- (id)buttonTitleString
{
  v2 = WDBundle();
  v3 = [v2 localizedStringForKey:@"ELECTROCARDIOGRAM_SETUP_BUTTON_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
  v4 = HKConditionallyRedactedHeartRhythmString();

  return v4;
}

@end