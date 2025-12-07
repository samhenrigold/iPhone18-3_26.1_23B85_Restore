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
  v15 = a2;
  v16 = 0;
  v14.receiver = self;
  v14.super_class = AKBasicLoginContentViewControllerContainerView;
  v12 = [(AKBasicLoginContentViewControllerContainerView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v16 = v12;
  objc_storeStrong(&v16, v12);
  if (v12)
  {
    v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    titleLabel = v16->_titleLabel;
    v16->_titleLabel = v3;

    v13 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleHeadline addingSymbolicTraits:0 options:2];
    v9 = [UIFont fontWithDescriptor:v13 size:0.0];
    [(UILabel *)v16->_titleLabel setFont:?];

    [(UILabel *)v16->_titleLabel setNumberOfLines:0];
    v10 = +[AKFeatureManager sharedManager];
    isAuthKitSolariumFeatureEnabled = [v10 isAuthKitSolariumFeatureEnabled];

    if (isAuthKitSolariumFeatureEnabled)
    {
      [(UILabel *)v16->_titleLabel setTextAlignment:4];
    }

    else
    {
      [(UILabel *)v16->_titleLabel setTextAlignment:1];
    }

    titleText = [(AKBasicLoginContentViewControllerContainerView *)v16 titleText];
    [(UILabel *)v16->_titleLabel setText:?];

    [(UILabel *)v16->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v5) = 1055286886;
    [(UILabel *)v16->_titleLabel _setHyphenationFactor:v5];
    [(UILabel *)v16->_titleLabel setPreferredMaxLayoutWidth:238.0];
    [(AKBasicLoginContentViewControllerContainerView *)v16 _configureMessageLabel];
    [(AKBasicLoginContentViewControllerContainerView *)v16 addSubview:v16->_titleLabel];
    objc_storeStrong(&v13, 0);
  }

  v7 = v16;
  objc_storeStrong(&v16, 0);
  return v7;
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
  selfCopy = self;
  v48 = a2;
  [NSLayoutConstraint deactivateConstraints:self->_activeConstraints];
  v28 = 0;
  if (selfCopy->_messageText)
  {
    v28 = [(NSString *)selfCopy->_messageText length]!= 0;
  }

  v47 = v28;
  v46 = +[NSMutableArray array];
  v43 = 0;
  v41 = 0;
  if (v28)
  {
    v44 = _NSDictionaryOfVariableBindings(@"_titleLabel,_messageLabel", selfCopy->_titleLabel, selfCopy->_messageLabel, 0);
    v43 = 1;
    v27 = v44;
  }

  else
  {
    v42 = _NSDictionaryOfVariableBindings(@"_titleLabel", selfCopy->_titleLabel, 0);
    v41 = 1;
    v27 = v42;
  }

  v45 = v27;
  if (v41)
  {
  }

  if (v43)
  {
  }

  v40 = &off_10000C780;
  v39 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleBody];
  if (selfCopy->_bannerView)
  {
    v38 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:selfCopy->_bannerView relatedBy:3 toItem:? attribute:? multiplier:? constant:?];
    bannerView = selfCopy->_bannerView;
    titleLabel = selfCopy->_titleLabel;
    [v39 scaledValueForValue:-36.0];
    v24 = +[UIScreen mainScreen];
    UIRoundToScreenScale();
    v37 = [NSLayoutConstraint constraintWithItem:bannerView attribute:11 relatedBy:0 toItem:titleLabel attribute:12 multiplier:1.0 constant:v2];

    v36 = [NSLayoutConstraint constraintWithItem:selfCopy->_bannerView attribute:9 relatedBy:0 toItem:selfCopy attribute:1.0 multiplier:0.0 constant:?];
    v25 = v46;
    v51[0] = v36;
    v51[1] = v38;
    v51[2] = v37;
    v26 = [NSArray arrayWithObjects:v51 count:3];
    [v25 addObjectsFromArray:?];

    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v37, 0);
    objc_storeStrong(&v38, 0);
  }

  else
  {
    v19 = selfCopy->_titleLabel;
    v20 = selfCopy;
    [v39 scaledValueForValue:36.0];
    v21 = +[UIScreen mainScreen];
    UIRoundToScreenScale();
    v35 = [NSLayoutConstraint constraintWithItem:v19 attribute:12 relatedBy:0 toItem:v20 attribute:3 multiplier:1.0 constant:v3];

    [v46 addObject:v35];
    objc_storeStrong(&v35, 0);
  }

  if (v47)
  {
    v12 = selfCopy->_titleLabel;
    [v39 scaledValueForValue:-20.0];
    v13 = +[UIScreen mainScreen];
    UIRoundToScreenScale();
    v34 = [NSLayoutConstraint constraintWithItem:"constraintWithItem:attribute:relatedBy:toItem:attribute:multiplier:constant:" attribute:v12 relatedBy:? toItem:? attribute:? multiplier:? constant:?];

    messageLabel = selfCopy->_messageLabel;
    v15 = selfCopy;
    [v39 scaledValueForValue:-24.0];
    v16 = +[UIScreen mainScreen];
    UIRoundToScreenScale();
    v33 = [NSLayoutConstraint constraintWithItem:messageLabel attribute:11 relatedBy:0 toItem:v15 attribute:4 multiplier:1.0 constant:v4];

    v17 = v46;
    v50[0] = v34;
    v50[1] = v33;
    v18 = [NSArray arrayWithObjects:v50 count:2];
    [v17 addObjectsFromArray:?];

    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v34, 0);
  }

  else
  {
    v9 = selfCopy->_titleLabel;
    v10 = selfCopy;
    [v39 scaledValueForValue:-24.0];
    v11 = +[UIScreen mainScreen];
    UIRoundToScreenScale();
    v32 = [NSLayoutConstraint constraintWithItem:v9 attribute:11 relatedBy:0 toItem:v10 attribute:4 multiplier:1.0 constant:v5];

    [v46 addObject:v32];
    objc_storeStrong(&v32, 0);
  }

  v31 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-(H_MARGIN)-[_titleLabel]-(H_MARGIN)-|", 0, v40, v45);
  [v46 addObjectsFromArray:v31];
  if (v47)
  {
    v30 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-(H_MARGIN)-[_messageLabel]-(H_MARGIN)-|", 0, v40, v45);
    [v46 addObjectsFromArray:v30];
    objc_storeStrong(&v30, 0);
  }

  [v46 addObjectsFromArray:v31];
  [NSLayoutConstraint activateConstraints:v46];
  [(AKBasicLoginContentViewControllerContainerView *)selfCopy setContentCompressionResistancePriority:1 forAxis:?];
  LODWORD(v6) = 1144750080;
  [(AKBasicLoginContentViewControllerContainerView *)selfCopy setContentCompressionResistancePriority:0 forAxis:v6];
  v7 = [v46 copy];
  activeConstraints = selfCopy->_activeConstraints;
  selfCopy->_activeConstraints = v7;

  v29.receiver = selfCopy;
  v29.super_class = AKBasicLoginContentViewControllerContainerView;
  [(AKBasicLoginContentViewControllerContainerView *)&v29 updateConstraints];
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
}

- (void)_configureBannerImage
{
  if (self->_bannerImage)
  {
    v5 = [UIImageView alloc];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = +[UIScreen mainScreen];
    _defaultTraitCollection = [(UIScreen *)v8 _defaultTraitCollection];
    v6 = [UIImage imageNamed:@"AppleID" inBundle:v9 compatibleWithTraitCollection:?];
    v2 = [v5 initWithImage:?];
    bannerView = self->_bannerView;
    self->_bannerView = v2;

    [(UIImageView *)self->_bannerView setContentMode:4];
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
  v12 = a2;
  v9 = 0;
  if (self->_messageText)
  {
    v9 = [(NSString *)selfCopy->_messageText length]!= 0;
  }

  v11 = v9;
  if (v9)
  {
    if (!selfCopy->_messageLabel)
    {
      v2 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      messageLabel = selfCopy->_messageLabel;
      selfCopy->_messageLabel = v2;

      location = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote addingSymbolicTraits:0x8000 options:2];
      v6 = [UIFont fontWithDescriptor:location size:0.0];
      [(UILabel *)selfCopy->_messageLabel setFont:?];

      v7 = +[AKFeatureManager sharedManager];
      isAuthKitSolariumFeatureEnabled = [v7 isAuthKitSolariumFeatureEnabled];

      if (isAuthKitSolariumFeatureEnabled)
      {
        [(UILabel *)selfCopy->_messageLabel setTextAlignment:4];
      }

      else
      {
        [(UILabel *)selfCopy->_messageLabel setTextAlignment:1];
      }

      [(UILabel *)selfCopy->_messageLabel setNumberOfLines:0];
      [(UILabel *)selfCopy->_messageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v4) = 1055286886;
      [(UILabel *)selfCopy->_messageLabel _setHyphenationFactor:v4];
      [(UILabel *)selfCopy->_messageLabel setPreferredMaxLayoutWidth:238.0];
      [(AKBasicLoginContentViewControllerContainerView *)selfCopy addSubview:selfCopy->_messageLabel];
      objc_storeStrong(&location, 0);
    }

    messageText = [(AKBasicLoginContentViewControllerContainerView *)selfCopy messageText];
    [(UILabel *)selfCopy->_messageLabel setText:?];
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

  [(UILabel *)selfCopy->_titleLabel setText:selfCopy->_titleText];
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