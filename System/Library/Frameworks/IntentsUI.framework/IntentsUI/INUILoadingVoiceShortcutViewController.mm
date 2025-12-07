@interface INUILoadingVoiceShortcutViewController
- (void)viewDidLoad;
@end

@implementation INUILoadingVoiceShortcutViewController

- (void)viewDidLoad
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = INUILoadingVoiceShortcutViewController;
  [(INUILoadingVoiceShortcutViewController *)&v17 viewDidLoad];
  view = [(INUILoadingVoiceShortcutViewController *)self view];
  systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  [view setBackgroundColor:systemGroupedBackgroundColor];

  v5 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(INUILoadingVoiceShortcutViewController *)self view];
  [view2 addSubview:v5];

  v16 = MEMORY[0x277CCAAD0];
  centerXAnchor = [v5 centerXAnchor];
  view3 = [(INUILoadingVoiceShortcutViewController *)self view];
  centerXAnchor2 = [view3 centerXAnchor];
  v10 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v18[0] = v10;
  centerYAnchor = [v5 centerYAnchor];
  view4 = [(INUILoadingVoiceShortcutViewController *)self view];
  centerYAnchor2 = [view4 centerYAnchor];
  v14 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v18[1] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  [v16 activateConstraints:v15];

  [v5 startAnimating];
}

@end