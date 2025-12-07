@interface HRAtrialFibrillationDetailViewEducationView
- (HRAtrialFibrillationDetailViewEducationView)init;
- (id)_labelWithText:(id)text fontTextStyle:(id)style symbolicTraits:(unsigned int)traits;
- (void)_setupUI;
@end

@implementation HRAtrialFibrillationDetailViewEducationView

- (HRAtrialFibrillationDetailViewEducationView)init
{
  v5.receiver = self;
  v5.super_class = HRAtrialFibrillationDetailViewEducationView;
  v2 = [(HRAtrialFibrillationDetailViewEducationView *)&v5 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v3 = v2;
  if (v2)
  {
    [(HRAtrialFibrillationDetailViewEducationView *)v2 _setupUI];
  }

  return v3;
}

- (void)_setupUI
{
  secondarySystemGroupedBackgroundColor = [MEMORY[0x277D75348] secondarySystemGroupedBackgroundColor];
  [(HRAtrialFibrillationDetailViewEducationView *)self setBackgroundColor:secondarySystemGroupedBackgroundColor];

  v5 = HRHeartRhythmUIFrameworkBundle(v4);
  v6 = [v5 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETAIL_EDUCATION_TITLE" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  v38 = [(HRAtrialFibrillationDetailViewEducationView *)self _labelWithText:v6 fontTextStyle:*MEMORY[0x277D76A08] symbolicTraits:2];

  [(HRAtrialFibrillationDetailViewEducationView *)self addSubview:v38];
  leadingAnchor = [v38 leadingAnchor];
  layoutMarginsGuide = [(HRAtrialFibrillationDetailViewEducationView *)self layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:12.0];
  [v10 setActive:1];

  layoutMarginsGuide2 = [(HRAtrialFibrillationDetailViewEducationView *)self layoutMarginsGuide];
  trailingAnchor = [layoutMarginsGuide2 trailingAnchor];
  trailingAnchor2 = [v38 trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:12.0];
  [v14 setActive:1];

  v15 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:2 suffix:@"Details.AtrialFibrillation.Title"];
  [v38 setAccessibilityIdentifier:v15];

  topAnchor = [v38 topAnchor];
  topAnchor2 = [(HRAtrialFibrillationDetailViewEducationView *)self topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:22.0];
  [v18 setActive:1];

  v20 = HRHeartRhythmUIFrameworkBundle(v19);
  v21 = [v20 localizedStringForKey:@"ATRIAL_FIBRILLATION_DETAIL_EDUCATION_BODY" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];
  v22 = [(HRAtrialFibrillationDetailViewEducationView *)self _labelWithText:v21 fontTextStyle:*MEMORY[0x277D76918] symbolicTraits:0x8000];

  [(HRAtrialFibrillationDetailViewEducationView *)self addSubview:v22];
  leadingAnchor3 = [v22 leadingAnchor];
  layoutMarginsGuide3 = [(HRAtrialFibrillationDetailViewEducationView *)self layoutMarginsGuide];
  leadingAnchor4 = [layoutMarginsGuide3 leadingAnchor];
  v26 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:12.0];
  [v26 setActive:1];

  layoutMarginsGuide4 = [(HRAtrialFibrillationDetailViewEducationView *)self layoutMarginsGuide];
  trailingAnchor3 = [layoutMarginsGuide4 trailingAnchor];
  trailingAnchor4 = [v22 trailingAnchor];
  v30 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:12.0];
  [v30 setActive:1];

  topAnchor3 = [v22 topAnchor];
  bottomAnchor = [v38 bottomAnchor];
  v33 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:12.0];
  [v33 setActive:1];

  bottomAnchor2 = [(HRAtrialFibrillationDetailViewEducationView *)self bottomAnchor];
  bottomAnchor3 = [v22 bottomAnchor];
  v36 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:16.0];
  [v36 setActive:1];

  v37 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:2 suffix:@"Details.AtrialFibrillation.Body"];
  [v22 setAccessibilityIdentifier:v37];
}

- (id)_labelWithText:(id)text fontTextStyle:(id)style symbolicTraits:(unsigned int)traits
{
  v5 = *&traits;
  v7 = MEMORY[0x277D756B8];
  styleCopy = style;
  textCopy = text;
  v10 = objc_alloc_init(v7);
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:textCopy];

  v12 = objc_alloc_init(MEMORY[0x277D74240]);
  [v12 setParagraphSpacing:10.0];
  [v11 addAttribute:*MEMORY[0x277D74118] value:v12 range:{0, objc_msgSend(v11, "length")}];
  [v10 setAttributedText:v11];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [v10 setTextColor:labelColor];

  [v10 setAdjustsFontForContentSizeCategory:1];
  [v10 setTextAlignment:4];
  [v10 setNumberOfLines:0];
  v14 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:styleCopy addingSymbolicTraits:v5 options:0];

  v15 = [MEMORY[0x277D74300] fontWithDescriptor:v14 size:0.0];
  [v10 setFont:v15];

  return v10;
}

@end