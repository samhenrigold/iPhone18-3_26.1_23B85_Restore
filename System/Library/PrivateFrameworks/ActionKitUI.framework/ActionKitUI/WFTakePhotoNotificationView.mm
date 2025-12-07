@interface WFTakePhotoNotificationView
- (WFTakePhotoNotificationView)initWithFrame:(CGRect)frame shortcutAttribution:(id)attribution;
@end

@implementation WFTakePhotoNotificationView

- (WFTakePhotoNotificationView)initWithFrame:(CGRect)frame shortcutAttribution:(id)attribution
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v41[5] = *MEMORY[0x277D85DE8];
  attributionCopy = attribution;
  v40.receiver = self;
  v40.super_class = WFTakePhotoNotificationView;
  height = [(WFTakePhotoNotificationView *)&v40 initWithFrame:x, y, width, height];
  if (height)
  {
    v11 = objc_alloc_init(MEMORY[0x277D756B8]);
    v39 = attributionCopy;
    if (attributionCopy)
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = WFLocalizedString(@"“%@” is taking a photo...");
      attributionCopy = [v12 localizedStringWithFormat:v13, attributionCopy];
      [v11 setText:attributionCopy];
    }

    else
    {
      v13 = WFLocalizedString(@"A shortcut is taking a photo...");
      [v11 setText:v13];
    }

    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v11 setAdjustsFontForContentSizeCategory:1];
    [v11 setNumberOfLines:0];
    [(WFTakePhotoNotificationView *)height addSubview:v11];
    v15 = *MEMORY[0x277D76918];
    v38 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918]];
    v16 = [MEMORY[0x277D74300] fontWithDescriptor:v38 size:0.0];
    [v11 setFont:v16];

    v17 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v15 weight:*MEMORY[0x277D74410]];
    [v11 setFont:v17];

    LODWORD(v18) = 1144750080;
    [v11 setContentHuggingPriority:1 forAxis:v18];
    LODWORD(v19) = 1144750080;
    [v11 setContentCompressionResistancePriority:1 forAxis:v19];
    v32 = MEMORY[0x277CCAAD0];
    heightAnchor = [(WFTakePhotoNotificationView *)height heightAnchor];
    v36 = [heightAnchor constraintGreaterThanOrEqualToConstant:84.0];
    v41[0] = v36;
    leadingAnchor = [v11 leadingAnchor];
    leadingAnchor2 = [(WFTakePhotoNotificationView *)height leadingAnchor];
    v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:18.0];
    v41[1] = v33;
    trailingAnchor = [v11 trailingAnchor];
    trailingAnchor2 = [(WFTakePhotoNotificationView *)height trailingAnchor];
    v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-18.0];
    v41[2] = v20;
    centerYAnchor = [v11 centerYAnchor];
    centerYAnchor2 = [(WFTakePhotoNotificationView *)height centerYAnchor];
    v23 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v41[3] = v23;
    topAnchor = [v11 topAnchor];
    topAnchor2 = [(WFTakePhotoNotificationView *)height topAnchor];
    v26 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:21.0];
    v41[4] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:5];
    [v32 activateConstraints:v27];

    v28 = height;
    attributionCopy = v39;
  }

  return height;
}

@end