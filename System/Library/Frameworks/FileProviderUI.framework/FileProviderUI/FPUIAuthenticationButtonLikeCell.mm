@interface FPUIAuthenticationButtonLikeCell
- (FPUIAuthenticationButtonLikeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UILabel)label;
- (void)prepareForReuse;
@end

@implementation FPUIAuthenticationButtonLikeCell

- (FPUIAuthenticationButtonLikeCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v30[4] = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = FPUIAuthenticationButtonLikeCell;
  v4 = [(FPUIAuthenticationButtonLikeCell *)&v29 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v28 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v5 = objc_opt_new();
    [v5 setFont:v28];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(FPUIAuthenticationButtonLikeCell *)v4 bounds];
    [v5 setFrame:?];
    contentView = [(FPUIAuthenticationButtonLikeCell *)v4 contentView];
    [contentView addSubview:v5];

    v19 = MEMORY[0x277CCAAD0];
    centerXAnchor = [v5 centerXAnchor];
    contentView2 = [(FPUIAuthenticationButtonLikeCell *)v4 contentView];
    centerXAnchor2 = [contentView2 centerXAnchor];
    v24 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v30[0] = v24;
    centerYAnchor = [v5 centerYAnchor];
    contentView3 = [(FPUIAuthenticationButtonLikeCell *)v4 contentView];
    centerYAnchor2 = [contentView3 centerYAnchor];
    v20 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v30[1] = v20;
    contentView4 = [(FPUIAuthenticationButtonLikeCell *)v4 contentView];
    layoutMarginsGuide = [contentView4 layoutMarginsGuide];
    bottomAnchor = [layoutMarginsGuide bottomAnchor];
    bottomAnchor2 = [v5 bottomAnchor];
    v8 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.5];
    v30[2] = v8;
    topAnchor = [v5 topAnchor];
    contentView5 = [(FPUIAuthenticationButtonLikeCell *)v4 contentView];
    layoutMarginsGuide2 = [contentView5 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide2 topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.5];
    v30[3] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
    [v19 activateConstraints:v14];

    objc_storeWeak(&v4->_label, v5);
  }

  return v4;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = FPUIAuthenticationButtonLikeCell;
  [(FPUIAuthenticationButtonLikeCell *)&v4 prepareForReuse];
  WeakRetained = objc_loadWeakRetained(&self->_label);
  [WeakRetained setText:0];
}

- (UILabel)label
{
  WeakRetained = objc_loadWeakRetained(&self->_label);

  return WeakRetained;
}

@end