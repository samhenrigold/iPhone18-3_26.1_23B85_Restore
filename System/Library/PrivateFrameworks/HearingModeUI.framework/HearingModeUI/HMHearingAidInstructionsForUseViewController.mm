@interface HMHearingAidInstructionsForUseViewController
- (void)viewDidLoad;
@end

@implementation HMHearingAidInstructionsForUseViewController

- (void)viewDidLoad
{
  v30[4] = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = HMHearingAidInstructionsForUseViewController;
  [(HMHearingAidInstructionsForUseViewController *)&v29 viewDidLoad];
  v3 = objc_alloc_init(MEMORY[0x277CE3850]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  view = [(HMHearingAidInstructionsForUseViewController *)self view];
  [view addSubview:v3];

  v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v27 = [MEMORY[0x277CBEBC0] URLWithString:@"https://www.apple.com/legal/ifu/haf"];
  v26 = [MEMORY[0x277CCAD20] requestWithURL:v27];
  v5 = [v3 loadRequest:v26];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(HMHearingAidInstructionsForUseViewController *)self view];
  [view2 addSubview:v3];

  v17 = MEMORY[0x277CCAAD0];
  topAnchor = [v3 topAnchor];
  view3 = [(HMHearingAidInstructionsForUseViewController *)self view];
  safeAreaLayoutGuide = [view3 safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v30[0] = v21;
  bottomAnchor = [v3 bottomAnchor];
  view4 = [(HMHearingAidInstructionsForUseViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v30[1] = v16;
  leadingAnchor = [v3 leadingAnchor];
  view5 = [(HMHearingAidInstructionsForUseViewController *)self view];
  leadingAnchor2 = [view5 leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v30[2] = v10;
  trailingAnchor = [v3 trailingAnchor];
  view6 = [(HMHearingAidInstructionsForUseViewController *)self view];
  trailingAnchor2 = [view6 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v30[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
  [v17 activateConstraints:v15];
}

@end