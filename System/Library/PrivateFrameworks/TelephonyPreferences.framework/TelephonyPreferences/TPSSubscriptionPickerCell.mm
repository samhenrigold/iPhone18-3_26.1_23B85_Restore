@interface TPSSubscriptionPickerCell
- (TPSSubscriptionPickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setBadge:(id)badge andLabel:(id)label andPhoneNumber:(id)number;
- (void)_setCenteredBadge:(id)badge andLabel:(id)label;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation TPSSubscriptionPickerCell

- (TPSSubscriptionPickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v93[14] = *MEMORY[0x277D85DE8];
  v92.receiver = self;
  v92.super_class = TPSSubscriptionPickerCell;
  v4 = [(PSTableCell *)&v92 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D6ED58]) initWithTitle:&stru_282D54710 theme:7];
    badgeView = v4->_badgeView;
    v4->_badgeView = v5;

    contentView = [(TPSSubscriptionPickerCell *)v4 contentView];
    badgeView = [(TPSSubscriptionPickerCell *)v4 badgeView];
    [contentView addSubview:badgeView];

    [(TPBadgeView *)v4->_badgeView setTranslatesAutoresizingMaskIntoConstraints:0];
    badgeView2 = [(TPSSubscriptionPickerCell *)v4 badgeView];
    leadingAnchor = [badgeView2 leadingAnchor];
    contentView2 = [(TPSSubscriptionPickerCell *)v4 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v91 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

    v14 = objc_alloc_init(MEMORY[0x277D756B8]);
    nameLabel = v4->_nameLabel;
    v4->_nameLabel = v14;

    v16 = *MEMORY[0x277D76918];
    v17 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v4->_nameLabel setFont:v17];

    [(UILabel *)v4->_nameLabel setNumberOfLines:2];
    [(UILabel *)v4->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView3 = [(TPSSubscriptionPickerCell *)v4 contentView];
    [contentView3 addSubview:v4->_nameLabel];

    firstBaselineAnchor = [(UILabel *)v4->_nameLabel firstBaselineAnchor];
    contentView4 = [(TPSSubscriptionPickerCell *)v4 contentView];
    topAnchor = [contentView4 topAnchor];
    v90 = [firstBaselineAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor multiplier:1.0];

    leadingAnchor3 = [(UILabel *)v4->_nameLabel leadingAnchor];
    badgeView3 = [(TPSSubscriptionPickerCell *)v4 badgeView];
    trailingAnchor = [badgeView3 trailingAnchor];
    defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics scaledValueForValue:4.0];
    v89 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:?];

    badgeView4 = [(TPSSubscriptionPickerCell *)v4 badgeView];
    centerYAnchor = [badgeView4 centerYAnchor];
    centerYAnchor2 = [(UILabel *)v4->_nameLabel centerYAnchor];
    v88 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

    v29 = objc_alloc_init(MEMORY[0x277D756B8]);
    numberLabel = v4->_numberLabel;
    v4->_numberLabel = v29;

    v31 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v4->_numberLabel setFont:v31];

    [(UILabel *)v4->_numberLabel setNumberOfLines:2];
    [(UILabel *)v4->_numberLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)v4->_numberLabel setTextColor:systemGrayColor];

    contentView5 = [(TPSSubscriptionPickerCell *)v4 contentView];
    [contentView5 addSubview:v4->_numberLabel];

    firstBaselineAnchor2 = [(UILabel *)v4->_numberLabel firstBaselineAnchor];
    lastBaselineAnchor = [(UILabel *)v4->_nameLabel lastBaselineAnchor];
    v87 = [firstBaselineAnchor2 constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor multiplier:1.0];

    leadingAnchor4 = [(UILabel *)v4->_numberLabel leadingAnchor];
    badgeView5 = [(TPSSubscriptionPickerCell *)v4 badgeView];
    leadingAnchor5 = [badgeView5 leadingAnchor];
    v86 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];

    trailingAnchor2 = [(UILabel *)v4->_numberLabel trailingAnchor];
    contentView6 = [(TPSSubscriptionPickerCell *)v4 contentView];
    layoutMarginsGuide2 = [contentView6 layoutMarginsGuide];
    trailingAnchor3 = [layoutMarginsGuide2 trailingAnchor];
    v85 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3];

    contentView7 = [(TPSSubscriptionPickerCell *)v4 contentView];
    bottomAnchor = [contentView7 bottomAnchor];
    lastBaselineAnchor2 = [(UILabel *)v4->_numberLabel lastBaselineAnchor];
    v84 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:lastBaselineAnchor2 multiplier:1.0];

    v46 = [objc_alloc(MEMORY[0x277D6ED58]) initWithTitle:&stru_282D54710 theme:7];
    centeredBadgeView = v4->_centeredBadgeView;
    v4->_centeredBadgeView = v46;

    contentView8 = [(TPSSubscriptionPickerCell *)v4 contentView];
    centeredBadgeView = [(TPSSubscriptionPickerCell *)v4 centeredBadgeView];
    [contentView8 addSubview:centeredBadgeView];

    [(TPBadgeView *)v4->_centeredBadgeView setTranslatesAutoresizingMaskIntoConstraints:0];
    centeredBadgeView2 = [(TPSSubscriptionPickerCell *)v4 centeredBadgeView];
    leadingAnchor6 = [centeredBadgeView2 leadingAnchor];
    contentView9 = [(TPSSubscriptionPickerCell *)v4 contentView];
    layoutMarginsGuide3 = [contentView9 layoutMarginsGuide];
    leadingAnchor7 = [layoutMarginsGuide3 leadingAnchor];
    v83 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];

    v55 = objc_alloc_init(MEMORY[0x277D756B8]);
    centeredNameLabel = v4->_centeredNameLabel;
    v4->_centeredNameLabel = v55;

    v57 = [MEMORY[0x277D74300] preferredFontForTextStyle:v16];
    [(UILabel *)v4->_centeredNameLabel setFont:v57];

    [(UILabel *)v4->_centeredNameLabel setNumberOfLines:2];
    [(UILabel *)v4->_centeredNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView10 = [(TPSSubscriptionPickerCell *)v4 contentView];
    [contentView10 addSubview:v4->_centeredNameLabel];

    centerYAnchor3 = [(UILabel *)v4->_centeredNameLabel centerYAnchor];
    contentView11 = [(TPSSubscriptionPickerCell *)v4 contentView];
    centerYAnchor4 = [contentView11 centerYAnchor];
    v82 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];

    leadingAnchor8 = [(UILabel *)v4->_centeredNameLabel leadingAnchor];
    centeredBadgeView3 = [(TPSSubscriptionPickerCell *)v4 centeredBadgeView];
    trailingAnchor4 = [centeredBadgeView3 trailingAnchor];
    defaultMetrics2 = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics2 scaledValueForValue:4.0];
    v81 = [leadingAnchor8 constraintEqualToAnchor:trailingAnchor4 constant:?];

    centeredBadgeView4 = [(TPSSubscriptionPickerCell *)v4 centeredBadgeView];
    centerYAnchor5 = [centeredBadgeView4 centerYAnchor];
    centerYAnchor6 = [(UILabel *)v4->_centeredNameLabel centerYAnchor];
    v80 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];

    trailingAnchor5 = [(UILabel *)v4->_nameLabel trailingAnchor];
    contentView12 = [(TPSSubscriptionPickerCell *)v4 contentView];
    trailingAnchor6 = [contentView12 trailingAnchor];
    v79 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:trailingAnchor6];

    trailingAnchor7 = [(UILabel *)v4->_centeredNameLabel trailingAnchor];
    contentView13 = [(TPSSubscriptionPickerCell *)v4 contentView];
    trailingAnchor8 = [contentView13 trailingAnchor];
    v75 = [trailingAnchor7 constraintLessThanOrEqualToAnchor:trailingAnchor8];

    v76 = MEMORY[0x277CCAAD0];
    v93[0] = v91;
    v93[1] = v90;
    v93[2] = v89;
    v93[3] = v88;
    v93[4] = v87;
    v93[5] = v86;
    v93[6] = v85;
    v93[7] = v84;
    v93[8] = v83;
    v93[9] = v82;
    v93[10] = v81;
    v93[11] = v80;
    v93[12] = v79;
    v93[13] = v75;
    v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:14];
    [v76 activateConstraints:v77];
  }

  return v4;
}

- (void)_setCenteredBadge:(id)badge andLabel:(id)label
{
  badgeView = self->_badgeView;
  labelCopy = label;
  badgeCopy = badge;
  [(TPBadgeView *)badgeView setHidden:1];
  [(UILabel *)self->_nameLabel setHidden:1];
  [(UILabel *)self->_numberLabel setHidden:1];
  [(TPBadgeView *)self->_centeredBadgeView setHidden:0];
  [(UILabel *)self->_centeredNameLabel setHidden:0];
  [(TPBadgeView *)self->_badgeView setTitle:badgeCopy];
  [(UILabel *)self->_nameLabel setText:labelCopy];
  [(UILabel *)self->_numberLabel setText:@"+1 (123) 456-7890"];
  [(TPBadgeView *)self->_centeredBadgeView setTitle:badgeCopy];

  [(UILabel *)self->_centeredNameLabel setText:labelCopy];
}

- (void)_setBadge:(id)badge andLabel:(id)label andPhoneNumber:(id)number
{
  badgeView = self->_badgeView;
  numberCopy = number;
  labelCopy = label;
  badgeCopy = badge;
  [(TPBadgeView *)badgeView setHidden:0];
  [(UILabel *)self->_nameLabel setHidden:0];
  [(UILabel *)self->_numberLabel setHidden:0];
  [(TPBadgeView *)self->_centeredBadgeView setHidden:1];
  [(UILabel *)self->_centeredNameLabel setHidden:1];
  [(TPBadgeView *)self->_badgeView setTitle:badgeCopy];
  [(UILabel *)self->_nameLabel setText:labelCopy];
  [(UILabel *)self->_numberLabel setText:numberCopy];

  [(TPBadgeView *)self->_centeredBadgeView setTitle:badgeCopy];
  [(UILabel *)self->_centeredNameLabel setText:labelCopy];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v20 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = TPSSubscriptionPickerCell;
  specifierCopy = specifier;
  [(PSTableCell *)&v11 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{*MEMORY[0x277D40128], v11.receiver, v11.super_class}];

  tps_localizedShortLabel = [v5 tps_localizedShortLabel];
  label = [v5 label];
  tps_localizedPhoneNumber = [v5 tps_localizedPhoneNumber];
  v10 = TPSLog(tps_localizedPhoneNumber, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v13 = "[TPSSubscriptionPickerCell refreshCellContentsWithSpecifier:]";
    v14 = 2112;
    v15 = tps_localizedShortLabel;
    v16 = 2112;
    v17 = label;
    v18 = 2112;
    v19 = tps_localizedPhoneNumber;
    _os_log_impl(&dword_21B8E9000, v10, OS_LOG_TYPE_DEFAULT, "%s : Received badge: %@, label: %@, phoneNumber: %@", buf, 0x2Au);
  }

  if ([tps_localizedPhoneNumber length])
  {
    [(TPSSubscriptionPickerCell *)self _setBadge:tps_localizedShortLabel andLabel:label andPhoneNumber:tps_localizedPhoneNumber];
  }

  else
  {
    [(TPSSubscriptionPickerCell *)self _setCenteredBadge:tps_localizedShortLabel andLabel:label];
  }

  [(TPSSubscriptionPickerCell *)self setNeedsLayout];
}

@end