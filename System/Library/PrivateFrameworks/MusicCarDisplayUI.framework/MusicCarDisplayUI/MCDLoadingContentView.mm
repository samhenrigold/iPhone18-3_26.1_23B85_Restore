@interface MCDLoadingContentView
- (MCDLoadingContentView)initWithFrame:(CGRect)frame;
@end

@implementation MCDLoadingContentView

- (MCDLoadingContentView)initWithFrame:(CGRect)frame
{
  v48[7] = *MEMORY[0x277D85DE8];
  v47.receiver = self;
  v47.super_class = MCDLoadingContentView;
  v3 = [(MCDLoadingContentView *)&v47 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    tableBackgroundColor = [MEMORY[0x277D75348] tableBackgroundColor];
    [(MCDLoadingContentView *)v3 setBackgroundColor:tableBackgroundColor];

    v5 = objc_alloc(MEMORY[0x277D756B8]);
    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v9 = *(MEMORY[0x277CBF3A0] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], v7, v8, v9}];
    v11 = MCDCarDisplayBundle([v10 setTranslatesAutoresizingMaskIntoConstraints:0]);
    v12 = [v11 localizedStringForKey:@"LOADING_TITLE" value:&stru_286C2B080 table:@"MusicCarDisplayUI"];
    [v10 setText:v12];

    v13 = _MCDNoContentFontWithTextStyle(*MEMORY[0x277D76A20]);
    [v10 setFont:v13];

    [v10 setTextAlignment:1];
    [v10 setNumberOfLines:0];
    labelColor = [MEMORY[0x277D75348] labelColor];
    [v10 setTextColor:labelColor];

    v15 = [objc_alloc(MEMORY[0x277D750E8]) initWithFrame:{v6, v7, v8, v9}];
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    labelColor2 = [MEMORY[0x277D75348] labelColor];
    [v15 setColor:labelColor2];

    [v15 setActivityIndicatorViewStyle:21];
    [v15 sizeToFit];
    [v15 startAnimating];
    v17 = objc_alloc_init(MEMORY[0x277D756D0]);
    [(MCDLoadingContentView *)v3 addLayoutGuide:v17];
    [(MCDLoadingContentView *)v3 addSubview:v15];
    [(MCDLoadingContentView *)v3 addSubview:v10];
    v35 = MEMORY[0x277CCAAD0];
    topAnchor = [v17 topAnchor];
    safeAreaLayoutGuide = [(MCDLoadingContentView *)v3 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    [topAnchor constraintEqualToAnchor:topAnchor2];
    v43 = v42 = v17;
    v48[0] = v43;
    heightAnchor = [v17 heightAnchor];
    heightAnchor2 = [(MCDLoadingContentView *)v3 heightAnchor];
    v39 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.15 constant:0.0];
    v48[1] = v39;
    topAnchor3 = [v10 topAnchor];
    bottomAnchor = [v17 bottomAnchor];
    v36 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
    v48[2] = v36;
    leadingAnchor = [v10 leadingAnchor];
    safeAreaLayoutGuide2 = [(MCDLoadingContentView *)v3 safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
    v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:12.0];
    v48[3] = v31;
    trailingAnchor = [v10 trailingAnchor];
    safeAreaLayoutGuide3 = [(MCDLoadingContentView *)v3 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
    v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-12.0];
    v48[4] = v27;
    centerXAnchor = [v15 centerXAnchor];
    centerXAnchor2 = [(MCDLoadingContentView *)v3 centerXAnchor];
    v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v48[5] = v20;
    topAnchor4 = [v15 topAnchor];
    bottomAnchor2 = [v10 bottomAnchor];
    v23 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:28.0];
    v48[6] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:7];
    [v35 activateConstraints:v24];

    v25 = v3;
  }

  return v3;
}

@end