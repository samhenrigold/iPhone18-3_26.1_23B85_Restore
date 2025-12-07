@interface NTKCFaceDetailSectionHeaderView
+ (double)headerHeight;
+ (id)reuseIdentifier;
- (NSString)groupName;
- (NSString)title;
- (NTKCFaceDetailSectionHeaderView)init;
- (NTKCFaceDetailSectionHeaderView)initWithReuseIdentifier:(id)identifier;
- (id)_traitCollectionAdjustedIfNeeded;
- (void)_updateConfig;
- (void)layoutSubviews;
- (void)setGroupName:(id)name;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
@end

@implementation NTKCFaceDetailSectionHeaderView

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (double)headerHeight
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  traitCollection = [mainScreen traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  v5 = *MEMORY[0x277D76800];
  if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x277D76800]) == NSOrderedDescending)
  {
    v6 = v5;

    preferredContentSizeCategory = v6;
  }

  v7 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:preferredContentSizeCategory];
  if (_os_feature_enabled_impl())
  {
    sidebarHeaderConfiguration = [MEMORY[0x277D756E0] sidebarHeaderConfiguration];
    v9 = [objc_alloc(MEMORY[0x277D75D20]) initWithTraitCollection:v7];
    v10 = [sidebarHeaderConfiguration updatedConfigurationForState:v9];
    textProperties = [sidebarHeaderConfiguration textProperties];
    font = [textProperties font];

    [font _scaledValueForValue:6.0];
    v14 = v13;
    [font lineHeight];
    UICeilToScale();
    v16 = v14 + v15;
  }

  else
  {
    sidebarHeaderConfiguration = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:v7];
    [sidebarHeaderConfiguration _scaledValueForValue:32.0];
    v16 = v17;
  }

  return v16;
}

- (NTKCFaceDetailSectionHeaderView)init
{
  reuseIdentifier = [objc_opt_class() reuseIdentifier];
  v4 = [(NTKCFaceDetailSectionHeaderView *)self initWithReuseIdentifier:reuseIdentifier];

  return v4;
}

- (NTKCFaceDetailSectionHeaderView)initWithReuseIdentifier:(id)identifier
{
  v17.receiver = self;
  v17.super_class = NTKCFaceDetailSectionHeaderView;
  v3 = [(NTKCFaceDetailSectionHeaderView *)&v17 initWithReuseIdentifier:identifier];
  if (v3)
  {
    if (_os_feature_enabled_impl())
    {
      sidebarHeaderConfiguration = [MEMORY[0x277D756E0] sidebarHeaderConfiguration];
      configuration = v3->_configuration;
      v3->_configuration = sidebarHeaderConfiguration;
    }

    else
    {
      v6 = objc_alloc(MEMORY[0x277D75D68]);
      configuration = [MEMORY[0x277D75210] effectWithStyle:10];
      v7 = [v6 initWithEffect:configuration];
      [(NTKCFaceDetailSectionHeaderView *)v3 setBackgroundView:v7];
    }

    v8 = objc_opt_new();
    detailLabel = v3->_detailLabel;
    v3->_detailLabel = v8;

    v10 = BPSDetailTextColor();
    [(UILabel *)v3->_detailLabel setTextColor:v10];

    if (CLKLayoutIsRTL())
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }

    [(UILabel *)v3->_detailLabel setTextAlignment:v11];
    contentView = [(NTKCFaceDetailSectionHeaderView *)v3 contentView];
    [contentView addSubview:v3->_detailLabel];

    v13 = objc_opt_new();
    separator = v3->_separator;
    v3->_separator = v13;

    [(NTKCFaceDetailSectionHeaderView *)v3 addSubview:v3->_separator];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__fontSizeDidChange name:*MEMORY[0x277D76810] object:0];

    [(NTKCFaceDetailSectionHeaderView *)v3 _fontSizeDidChange];
  }

  return v3;
}

- (NSString)title
{
  textLabel = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
  text = [textLabel text];

  return text;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  textLabel = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
  [textLabel setText:titleCopy];

  textLabel2 = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
  [textLabel2 sizeToFit];

  [(NTKCFaceDetailSectionHeaderView *)self setNeedsLayout];
}

- (void)setSubtitle:(id)subtitle
{
  [(UILabel *)self->_detailLabel setText:subtitle];
  [(UILabel *)self->_detailLabel sizeToFit];

  [(NTKCFaceDetailSectionHeaderView *)self setNeedsLayout];
}

- (NSString)groupName
{
  if (_os_feature_enabled_impl())
  {
    _groupName = 0;
  }

  else
  {
    backgroundView = [(NTKCFaceDetailSectionHeaderView *)self backgroundView];
    _groupName = [backgroundView _groupName];
  }

  return _groupName;
}

- (void)setGroupName:(id)name
{
  nameCopy = name;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    backgroundView = [(NTKCFaceDetailSectionHeaderView *)self backgroundView];
    [backgroundView _setGroupName:nameCopy];
  }
}

- (void)layoutSubviews
{
  v71.receiver = self;
  v71.super_class = NTKCFaceDetailSectionHeaderView;
  [(NTKCFaceDetailSectionHeaderView *)&v71 layoutSubviews];
  [(NTKCFaceDetailSectionHeaderView *)self _updateConfig];
  contentView = [(NTKCFaceDetailSectionHeaderView *)self contentView];
  [contentView bounds];
  v68 = v4;
  v69 = v5;
  v7 = v6;
  v9 = v8;

  v12 = NTKCScreenEdgeMargin(v10, v11);
  v13 = v12;
  IsRTL = CLKLayoutIsRTL();
  textLabel = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
  [textLabel frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v67 = v12;
  if (IsRTL)
  {
    v72.origin.x = v68;
    v72.origin.y = v69;
    v72.size.width = v7;
    v72.size.height = v9;
    Width = CGRectGetWidth(v72);
    v73.origin.x = v17;
    v73.origin.y = v19;
    v73.size.width = v21;
    v73.size.height = v23;
    v13 = Width - CGRectGetWidth(v73) - v12;
  }

  v66 = v9;
  v25 = v7;
  v26 = 6.0;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    font = [(UILabel *)self->_detailLabel font];
    [font _scaledValueForValue:22.0];
    v29 = v28;

    textLabel2 = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
    [textLabel2 _lastLineBaseline];
    v26 = v29 - v31;
  }

  textLabel3 = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
  [textLabel3 setFrame:{v13, v26, v21, v23}];

  [(UILabel *)self->_detailLabel frame];
  v63 = v34;
  v64 = v33;
  v65 = v35;
  v70 = v12;
  rect = v23;
  if (_os_feature_enabled_impl())
  {
    v74.origin.x = v13;
    v74.origin.y = v26;
    v74.size.width = v21;
    v74.size.height = v23;
    v36 = v13;
    MinY = CGRectGetMinY(v74);
    textLabel4 = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
    [textLabel4 _firstLineBaseline];
    v40 = MinY + v39;
    [(UILabel *)self->_detailLabel _lastLineBaseline];
    v42 = v40 - v41;
  }

  else
  {
    font2 = [(UILabel *)self->_detailLabel font];
    [font2 _scaledValueForValue:22.0];
    v36 = v13;
    v45 = v44;

    [(UILabel *)self->_detailLabel _lastLineBaseline];
    v42 = v45 - v46;
  }

  v75.origin.y = v69;
  v75.origin.x = v68;
  v75.size.width = v25;
  v75.size.height = v66;
  v47 = CGRectGetWidth(v75) + v12 * -2.0;
  v76.origin.x = v36;
  v76.origin.y = v26;
  v76.size.width = v21;
  v76.size.height = rect;
  v48 = v47 - CGRectGetWidth(v76) + -16.0;
  v49 = v63;
  v77.origin.x = v64;
  v77.origin.y = v42;
  v77.size.width = v63;
  v77.size.height = v65;
  v50 = CGRectGetWidth(v77);
  v51 = 0.0;
  if (v48 >= 0.0)
  {
    v51 = v48;
  }

  if (v50 > v48)
  {
    v49 = v51;
  }

  v52 = v67;
  if ((IsRTL & 1) == 0)
  {
    v78.origin.x = v68;
    v78.origin.y = v69;
    v78.size.width = v25;
    v78.size.height = v66;
    v53 = CGRectGetWidth(v78) - v70;
    v79.origin.x = v64;
    v79.origin.y = v42;
    v79.size.width = v49;
    v79.size.height = v65;
    v52 = v53 - CGRectGetWidth(v79);
  }

  [(UILabel *)self->_detailLabel setFrame:v52, v42, v49, v65];
  [(NTKCSeparatorView *)self->_separator frame];
  v55 = v54;
  v57 = v56;
  if (_os_feature_enabled_impl())
  {
    v58 = 0.0;
    if (IsRTL)
    {
      v59 = 0.0;
    }

    else
    {
      v59 = v70;
    }

    [(NTKCFaceDetailSectionHeaderView *)self bounds];
    v60 = CGRectGetWidth(v80) - v70;
  }

  else
  {
    [(NTKCFaceDetailSectionHeaderView *)self bounds];
    v60 = CGRectGetWidth(v81);
    [(NTKCFaceDetailSectionHeaderView *)self bounds];
    Height = CGRectGetHeight(v82);
    v59 = 0.0;
    v83.origin.x = 0.0;
    v83.origin.y = v55;
    v83.size.width = v60;
    v83.size.height = v57;
    v58 = Height - CGRectGetHeight(v83);
  }

  [(NTKCSeparatorView *)self->_separator setFrame:v59, v58, v60, v57];
}

- (void)_updateConfig
{
  _traitCollectionAdjustedIfNeeded = [(NTKCFaceDetailSectionHeaderView *)self _traitCollectionAdjustedIfNeeded];
  if (_os_feature_enabled_impl())
  {
    v3 = [objc_alloc(MEMORY[0x277D75D20]) initWithTraitCollection:_traitCollectionAdjustedIfNeeded];
    v4 = [(UIListContentConfiguration *)self->_configuration updatedConfigurationForState:v3];
    configuration = self->_configuration;
    self->_configuration = v4;

    textProperties = [(UIListContentConfiguration *)self->_configuration textProperties];
    font = [textProperties font];
    textLabel = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
    [textLabel setFont:font];
  }

  else
  {
    v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988] compatibleWithTraitCollection:_traitCollectionAdjustedIfNeeded];
    textProperties = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
    [textProperties setFont:v3];
  }

  textLabel2 = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
  [textLabel2 sizeToFit];

  v10 = BPSTextColor();
  textLabel3 = [(NTKCFaceDetailSectionHeaderView *)self textLabel];
  [textLabel3 setTextColor:v10];

  v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:_traitCollectionAdjustedIfNeeded];
  [(UILabel *)self->_detailLabel setFont:v12];
  [(UILabel *)self->_detailLabel sizeToFit];
}

- (id)_traitCollectionAdjustedIfNeeded
{
  traitCollection = [(NTKCFaceDetailSectionHeaderView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  v5 = *MEMORY[0x277D76800];
  if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x277D76800]) == NSOrderedDescending)
  {
    [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:v5];
  }

  else
  {
    [(NTKCFaceDetailSectionHeaderView *)self traitCollection];
  }
  v6 = ;

  return v6;
}

@end