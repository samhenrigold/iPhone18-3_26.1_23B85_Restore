@interface AKBasicLoginContentViewControllerContainerView
- (AKBasicLoginContentViewControllerContainerView)initWithFrame:(CGRect)frame;
- (NSString)messageText;
- (NSString)titleText;
- (id)viewForLastBaselineLayout;
- (void)_configureBannerImage;
- (void)_configureMessageLabel;
- (void)setBannerImage:(id)image;
- (void)setMessageText:(id)text;
- (void)setTitleText:(id)text;
- (void)updateConstraints;
@end

@implementation AKBasicLoginContentViewControllerContainerView

- (AKBasicLoginContentViewControllerContainerView)initWithFrame:(CGRect)frame
{
  frameCopy = frame;
  v19 = a2;
  v20 = 0;
  v18.receiver = self;
  v18.super_class = AKBasicLoginContentViewControllerContainerView;
  v16 = [(AKBasicLoginContentViewControllerContainerView *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v20 = v16;
  objc_storeStrong(&v20, v16);
  if (v16)
  {
    v3 = objc_alloc(MEMORY[0x277D756B8]);
    v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    titleLabel = v20->_titleLabel;
    v20->_titleLabel = v4;
    v17 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76988] addingSymbolicTraits:0 options:{2, MEMORY[0x277D82BD8](titleLabel).n128_f64[0]}];
    v13 = [MEMORY[0x277D74300] fontWithDescriptor:v17 size:0.0];
    [(UILabel *)v20->_titleLabel setFont:?];
    *&v6 = MEMORY[0x277D82BD8](v13).n128_u64[0];
    [(UILabel *)v20->_titleLabel setNumberOfLines:0, v6];
    mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
    isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
    *&v7 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
    if (isAuthKitSolariumFeatureEnabled)
    {
      [(UILabel *)v20->_titleLabel setTextAlignment:4, v7];
    }

    else
    {
      [(UILabel *)v20->_titleLabel setTextAlignment:1, v7];
    }

    titleText = [(AKBasicLoginContentViewControllerContainerView *)v20 titleText];
    [(UILabel *)v20->_titleLabel setText:?];
    *&v8 = MEMORY[0x277D82BD8](titleText).n128_u64[0];
    [(UILabel *)v20->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0, v8];
    LODWORD(v9) = 1055286886;
    [(UILabel *)v20->_titleLabel _setHyphenationFactor:v9];
    [(UILabel *)v20->_titleLabel setPreferredMaxLayoutWidth:238.0];
    [(AKBasicLoginContentViewControllerContainerView *)v20 _configureMessageLabel];
    [(AKBasicLoginContentViewControllerContainerView *)v20 addSubview:v20->_titleLabel];
    objc_storeStrong(&v17, 0);
  }

  v11 = MEMORY[0x277D82BE0](v20);
  objc_storeStrong(&v20, 0);
  return v11;
}

- (id)viewForLastBaselineLayout
{
  if (self->_messageLabel)
  {
    return self->_messageLabel;
  }

  else
  {
    return self->_titleLabel;
  }
}

- (void)updateConstraints
{
  v60[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v57 = a2;
  [MEMORY[0x277CCAAD0] deactivateConstraints:self->_activeConstraints];
  v37 = 0;
  if (selfCopy->_messageText)
  {
    v37 = [(NSString *)selfCopy->_messageText length]!= 0;
  }

  v56 = v37;
  array = [MEMORY[0x277CBEB18] array];
  v52 = 0;
  v50 = 0;
  if (v37)
  {
    v53 = _NSDictionaryOfVariableBindings(&cfstr_TitlelabelMess.isa, selfCopy->_titleLabel, selfCopy->_messageLabel, 0);
    v52 = 1;
    v36 = v53;
  }

  else
  {
    v51 = _NSDictionaryOfVariableBindings(&cfstr_Titlelabel.isa, selfCopy->_titleLabel, 0);
    v50 = 1;
    v36 = v51;
  }

  v54 = MEMORY[0x277D82BE0](v36);
  if (v50)
  {
    MEMORY[0x277D82BD8](v51);
  }

  if (v52)
  {
    MEMORY[0x277D82BD8](v53);
  }

  v49 = MEMORY[0x277D82BE0](&unk_2835AAFC8);
  v48 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76918]];
  if (selfCopy->_bannerView)
  {
    v47 = [MEMORY[0x277CCAAD0] constraintWithItem:selfCopy->_bannerView attribute:3 relatedBy:? toItem:? attribute:? multiplier:? constant:?];
    v30 = MEMORY[0x277CCAAD0];
    bannerView = selfCopy->_bannerView;
    titleLabel = selfCopy->_titleLabel;
    [v48 scaledValueForValue:-36.0];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    UIRoundToScreenScale();
    v46 = [v30 constraintWithItem:bannerView attribute:11 relatedBy:0 toItem:titleLabel attribute:12 multiplier:1.0 constant:v2];
    MEMORY[0x277D82BD8](mainScreen);
    v45 = [MEMORY[0x277CCAAD0] constraintWithItem:selfCopy->_bannerView attribute:9 relatedBy:0 toItem:selfCopy attribute:1.0 multiplier:0.0 constant:?];
    v34 = array;
    v60[0] = v45;
    v60[1] = v47;
    v60[2] = v46;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v60 count:3];
    [v34 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v35);
    objc_storeStrong(&v45, 0);
    objc_storeStrong(&v46, 0);
    objc_storeStrong(&v47, 0);
  }

  else
  {
    v26 = MEMORY[0x277CCAAD0];
    v27 = selfCopy->_titleLabel;
    v28 = selfCopy;
    [v48 scaledValueForValue:36.0];
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    UIRoundToScreenScale();
    v44 = [v26 constraintWithItem:v27 attribute:12 relatedBy:0 toItem:v28 attribute:3 multiplier:1.0 constant:v3];
    *&v4 = MEMORY[0x277D82BD8](mainScreen2).n128_u64[0];
    [array addObject:{v44, v4}];
    objc_storeStrong(&v44, 0);
  }

  if (v56)
  {
    v17 = MEMORY[0x277CCAAD0];
    v18 = selfCopy->_titleLabel;
    [v48 scaledValueForValue:-20.0];
    mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
    UIRoundToScreenScale();
    v43 = [v17 constraintWithItem:v18 attribute:? relatedBy:? toItem:? attribute:? multiplier:? constant:?];
    MEMORY[0x277D82BD8](mainScreen3);
    v20 = MEMORY[0x277CCAAD0];
    messageLabel = selfCopy->_messageLabel;
    v22 = selfCopy;
    [v48 scaledValueForValue:-24.0];
    mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
    UIRoundToScreenScale();
    v42 = [v20 constraintWithItem:messageLabel attribute:11 relatedBy:0 toItem:v22 attribute:4 multiplier:1.0 constant:v5];
    *&v6 = MEMORY[0x277D82BD8](mainScreen4).n128_u64[0];
    v24 = array;
    v59[0] = v43;
    v59[1] = v42;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:{2, v6}];
    [v24 addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v25);
    objc_storeStrong(&v42, 0);
    objc_storeStrong(&v43, 0);
  }

  else
  {
    v13 = MEMORY[0x277CCAAD0];
    v14 = selfCopy->_titleLabel;
    v15 = selfCopy;
    [v48 scaledValueForValue:-24.0];
    mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
    UIRoundToScreenScale();
    v41 = [v13 constraintWithItem:v14 attribute:11 relatedBy:0 toItem:v15 attribute:4 multiplier:1.0 constant:v7];
    *&v8 = MEMORY[0x277D82BD8](mainScreen5).n128_u64[0];
    [array addObject:{v41, v8}];
    objc_storeStrong(&v41, 0);
  }

  v40 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-(H_MARGIN)-[_titleLabel]-(H_MARGIN)-|" options:0 metrics:v49 views:v54];
  [array addObjectsFromArray:v40];
  if (v56)
  {
    v39 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-(H_MARGIN)-[_messageLabel]-(H_MARGIN)-|" options:0 metrics:v49 views:v54];
    [array addObjectsFromArray:v39];
    objc_storeStrong(&v39, 0);
  }

  [array addObjectsFromArray:v40];
  [MEMORY[0x277CCAAD0] activateConstraints:array];
  [(AKBasicLoginContentViewControllerContainerView *)selfCopy setContentCompressionResistancePriority:1 forAxis:?];
  LODWORD(v9) = 1144750080;
  [(AKBasicLoginContentViewControllerContainerView *)selfCopy setContentCompressionResistancePriority:0 forAxis:v9];
  v10 = [array copy];
  activeConstraints = selfCopy->_activeConstraints;
  selfCopy->_activeConstraints = v10;
  *&v12 = MEMORY[0x277D82BD8](activeConstraints).n128_u64[0];
  v38.receiver = selfCopy;
  v38.super_class = AKBasicLoginContentViewControllerContainerView;
  [(AKBasicLoginContentViewControllerContainerView *)&v38 updateConstraints];
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(&v54, 0);
  objc_storeStrong(&array, 0);
}

- (void)_configureBannerImage
{
  if (self->_bannerImage)
  {
    v6 = objc_alloc(MEMORY[0x277D755E8]);
    v5 = MEMORY[0x277D755B8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    _defaultTraitCollection = [mainScreen _defaultTraitCollection];
    v7 = [v5 imageNamed:@"AppleID" inBundle:v10 compatibleWithTraitCollection:?];
    v2 = [v6 initWithImage:?];
    bannerView = self->_bannerView;
    self->_bannerView = v2;
    MEMORY[0x277D82BD8](bannerView);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](_defaultTraitCollection);
    MEMORY[0x277D82BD8](mainScreen);
    [(UIImageView *)self->_bannerView setContentMode:4, MEMORY[0x277D82BD8](v10).n128_f64[0]];
    [(UIImageView *)self->_bannerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [UIImageView setContentHuggingPriority:"setContentHuggingPriority:forAxis:" forAxis:?];
    LODWORD(v4) = 1144750080;
    [(UIImageView *)self->_bannerView setContentCompressionResistancePriority:1 forAxis:v4];
    [(AKBasicLoginContentViewControllerContainerView *)self addSubview:self->_bannerView];
  }

  else
  {
    if (self->_bannerView)
    {
      [(UIImageView *)self->_bannerView removeFromSuperview];
    }

    objc_storeStrong(&self->_bannerView, 0);
  }

  [(AKBasicLoginContentViewControllerContainerView *)self setNeedsUpdateConstraints];
}

- (void)_configureMessageLabel
{
  selfCopy = self;
  v15 = a2;
  v12 = 0;
  if (self->_messageText)
  {
    v12 = [(NSString *)selfCopy->_messageText length]!= 0;
  }

  v14 = v12;
  if (v12)
  {
    if (!selfCopy->_messageLabel)
    {
      v2 = objc_alloc(MEMORY[0x277D756B8]);
      v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      messageLabel = selfCopy->_messageLabel;
      selfCopy->_messageLabel = v3;
      location = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] addingSymbolicTraits:0x8000 options:{2, MEMORY[0x277D82BD8](messageLabel).n128_f64[0]}];
      v9 = [MEMORY[0x277D74300] fontWithDescriptor:location size:0.0];
      [(UILabel *)selfCopy->_messageLabel setFont:?];
      mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
      isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
      *&v5 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
      if (isAuthKitSolariumFeatureEnabled)
      {
        [(UILabel *)selfCopy->_messageLabel setTextAlignment:4, v5];
      }

      else
      {
        [(UILabel *)selfCopy->_messageLabel setTextAlignment:1, v5];
      }

      [(UILabel *)selfCopy->_messageLabel setNumberOfLines:0];
      [(UILabel *)selfCopy->_messageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v6) = 1055286886;
      [(UILabel *)selfCopy->_messageLabel _setHyphenationFactor:v6];
      [(UILabel *)selfCopy->_messageLabel setPreferredMaxLayoutWidth:238.0];
      [(AKBasicLoginContentViewControllerContainerView *)selfCopy addSubview:selfCopy->_messageLabel];
      objc_storeStrong(&location, 0);
    }

    messageText = [(AKBasicLoginContentViewControllerContainerView *)selfCopy messageText];
    [(UILabel *)selfCopy->_messageLabel setText:?];
    *&v7 = MEMORY[0x277D82BD8](messageText).n128_u64[0];
  }

  else
  {
    if (selfCopy->_messageLabel)
    {
      [(UILabel *)selfCopy->_messageLabel removeFromSuperview];
    }

    objc_storeStrong(&selfCopy->_messageLabel, 0);
  }

  [(AKBasicLoginContentViewControllerContainerView *)selfCopy setNeedsUpdateConstraints];
}

- (void)setTitleText:(id)text
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  v3 = [location[0] copy];
  titleText = selfCopy->_titleText;
  selfCopy->_titleText = v3;
  *&v5 = MEMORY[0x277D82BD8](titleText).n128_u64[0];
  [(UILabel *)selfCopy->_titleLabel setText:selfCopy->_titleText, v5];
  [(AKBasicLoginContentViewControllerContainerView *)selfCopy setNeedsUpdateConstraints];
  objc_storeStrong(location, 0);
}

- (NSString)titleText
{
  v2 = [(NSString *)self->_titleText copy:a2];

  return v2;
}

- (void)setMessageText:(id)text
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  v3 = [location[0] copy];
  messageText = selfCopy->_messageText;
  selfCopy->_messageText = v3;
  *&v5 = MEMORY[0x277D82BD8](messageText).n128_u64[0];
  [(AKBasicLoginContentViewControllerContainerView *)selfCopy _configureMessageLabel];
  objc_storeStrong(location, 0);
}

- (NSString)messageText
{
  v2 = [(NSString *)self->_messageText copy:a2];

  return v2;
}

- (void)setBannerImage:(id)image
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  objc_storeStrong(&selfCopy->_bannerImage, location[0]);
  [(AKBasicLoginContentViewControllerContainerView *)selfCopy _configureBannerImage];
  objc_storeStrong(location, 0);
}

@end