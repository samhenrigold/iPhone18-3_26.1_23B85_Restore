@interface STStorageTipCell
- (STStorageTipCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)_activateOption;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)updateConstraints;
@end

@implementation STStorageTipCell

- (STStorageTipCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v45[7] = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  v44.receiver = self;
  v44.super_class = STStorageTipCell;
  v9 = [(PSTableCell *)&v44 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    contentView = [(STStorageTipCell *)v9 contentView];
    v12 = objc_alloc(MEMORY[0x277D756B8]);
    v13 = *MEMORY[0x277CBF3A0];
    v14 = *(MEMORY[0x277CBF3A0] + 8);
    v15 = *(MEMORY[0x277CBF3A0] + 16);
    v16 = *(MEMORY[0x277CBF3A0] + 24);
    v17 = [v12 initWithFrame:{*MEMORY[0x277CBF3A0], v14, v15, v16}];
    titleLabel = v10->_titleLabel;
    v10->_titleLabel = v17;

    v19 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v10->_titleLabel setFont:v19];

    [(UILabel *)v10->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_titleLabel setAccessibilityIdentifier:@"Title"];
    [(UILabel *)v10->_titleLabel setAllowsDefaultTighteningForTruncation:1];
    [contentView addSubview:v10->_titleLabel];
    v20 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v13, v14, v15, v16}];
    appIconView = v10->_appIconView;
    v10->_appIconView = v20;

    [(UIImageView *)v10->_appIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v10->_appIconView setAccessibilityIdentifier:@"Icon"];
    [(UIImageView *)v10->_appIconView setContentMode:1];
    [contentView addSubview:v10->_appIconView];
    v22 = [MEMORY[0x277D75220] buttonWithType:1];
    enableButton = v10->_enableButton;
    v10->_enableButton = v22;

    [(UIButton *)v10->_enableButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)v10->_enableButton setAccessibilityIdentifier:@"Switch"];
    v24 = v10->_enableButton;
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    [(UIButton *)v24 setTitleColor:systemBlueColor forState:0];

    v26 = v10->_enableButton;
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UIButton *)v26 setTitleColor:systemGrayColor forState:2];

    [(UIButton *)v10->_enableButton addTarget:v10 action:sel__activateOption forControlEvents:0x2000];
    [(UIButton *)v10->_enableButton setEnabled:1];
    [(UIButton *)v10->_enableButton setHidden:1];
    [contentView addSubview:v10->_enableButton];
    v28 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinner = v10->_spinner;
    v10->_spinner = v28;

    [(UIActivityIndicatorView *)v10->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)v10->_spinner setAccessibilityIdentifier:@"Spinner"];
    [(UIActivityIndicatorView *)v10->_spinner setHidesWhenStopped:1];
    [(UIActivityIndicatorView *)v10->_spinner sizeToFit];
    [(UIActivityIndicatorView *)v10->_spinner bounds];
    v10->_nativeSpinnerWidth = v30;
    [contentView addSubview:v10->_spinner];
    v31 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v13, v14, v15, v16}];
    checkIconView = v10->_checkIconView;
    v10->_checkIconView = v31;

    [(UIImageView *)v10->_checkIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v10->_checkIconView setAccessibilityIdentifier:@"CheckIcon"];
    [(UIImageView *)v10->_checkIconView setContentMode:1];
    [(UIImageView *)v10->_checkIconView setHidden:1];
    v33 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.circle.fill"];
    [(UIImageView *)v10->_checkIconView setImage:v33];

    systemGreenColor = [MEMORY[0x277D75348] systemGreenColor];
    [(UIImageView *)v10->_checkIconView setTintColor:systemGreenColor];

    [contentView addSubview:v10->_checkIconView];
    v35 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v13, v14, v15, v16}];
    progressLabel = v10->_progressLabel;
    v10->_progressLabel = v35;

    v37 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v10->_progressLabel setFont:v37];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v10->_progressLabel setTextColor:secondaryLabelColor];

    [(UILabel *)v10->_progressLabel setHidden:1];
    [(UILabel *)v10->_progressLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_progressLabel setAccessibilityIdentifier:@"Progress"];
    [(UILabel *)v10->_progressLabel setNumberOfLines:1];
    [(UILabel *)v10->_progressLabel setLineBreakMode:4];
    [contentView addSubview:v10->_progressLabel];
    v39 = [STStorageProgressView alloc];
    [(UIActivityIndicatorView *)v10->_spinner frame];
    v40 = [(STStorageProgressView *)v39 initWithFrame:?];
    progressView = v10->_progressView;
    v10->_progressView = v40;

    [(STStorageProgressView *)v10->_progressView setPercent:0.0];
    [(STStorageProgressView *)v10->_progressView setHidden:1];
    [(STStorageProgressView *)v10->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(STStorageProgressView *)v10->_progressView setAccessibilityIdentifier:@"ProgressIndicator"];
    [(STStorageProgressView *)v10->_progressView sizeToFit];
    [contentView addSubview:v10->_progressView];
    v45[0] = v10->_titleLabel;
    v45[1] = v10->_appIconView;
    v45[2] = v10->_enableButton;
    v45[3] = v10->_spinner;
    v45[4] = v10->_checkIconView;
    v45[5] = v10->_progressLabel;
    v45[6] = v10->_progressView;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:7];
    [contentView setAccessibilityElements:v42];

    [(STStorageTipCell *)v10 setSeparatorInset:0.0, 58.0, 0.0, 0.0];
    [(STStorageTipCell *)v10 refreshCellContentsWithSpecifier:specifierCopy];
  }

  return v10;
}

- (void)updateConstraints
{
  traitCollection = [(STStorageTipCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  v69 = self->_hformat;
  v68 = self->_h2format;
  titleWidth = self->_titleWidth;
  enableWidth = self->_enableWidth;
  progressWidth = self->_progressWidth;
  [(UILabel *)self->_titleLabel sizeToFit];
  [(UIButton *)self->_enableButton sizeToFit];
  [(UILabel *)self->_progressLabel sizeToFit];
  [(UILabel *)self->_titleLabel bounds];
  self->_titleWidth = v8;
  [(UIButton *)self->_enableButton bounds];
  self->_enableWidth = v9;
  [(UILabel *)self->_progressLabel bounds];
  self->_progressWidth = v10;
  hformat = self->_hformat;
  self->_hformat = @"H:|-59-[_titleLabel]-15-|";

  h2format = self->_h2format;
  self->_h2format = 0;

  if (IsAccessibilityCategory)
  {
    v13 = v69;
    if (!self->_isOption)
    {
      goto LABEL_21;
    }

    percent = self->_percent;
    if (percent == 0.0)
    {
      v15 = self->_h2format;
      v16 = @"H:|-59-[_enableButton(==enableWidth)]";
    }

    else if (percent >= 1.0)
    {
      v15 = self->_h2format;
      v16 = @"H:|-59-[_checkIconView(==56)]";
    }

    else
    {
      v15 = self->_h2format;
      if (percent >= 0.0)
      {
        v16 = @"H:|-59-[_progressLabel(==progressWidth)]-6-[_progressView(==48)]";
      }

      else
      {
        v16 = @"H:|-59-[_progressLabel(==progressWidth)]-6-[_spinner(==spinnerWidth)]";
      }
    }

    self->_h2format = &v16->isa;
  }

  else
  {
    v13 = v69;
    if (!self->_isOption)
    {
      goto LABEL_21;
    }

    v17 = self->_percent;
    if (v17 == 0.0)
    {
      v15 = self->_hformat;
      v18 = @"H:|-59-[_titleLabel]-6-[_enableButton(==enableWidth)]-15-|";
    }

    else if (v17 >= 1.0)
    {
      v15 = self->_hformat;
      v18 = @"H:|-59-[_titleLabel]-6-[_checkIconView(==28)]-15-|";
    }

    else
    {
      v15 = self->_hformat;
      if (v17 >= 0.0)
      {
        v18 = @"H:|-59-[_titleLabel]-6-[_progressLabel(==progressWidth)]-6-[_progressView(==24)]-15-|";
      }

      else
      {
        v18 = @"H:|-59-[_titleLabel]-6-[_progressLabel(==progressWidth)]-6-[_spinner(==spinnerWidth)]-15-|";
      }
    }

    self->_hformat = &v18->isa;
  }

LABEL_21:
  if (v13 != self->_hformat)
  {
    v19 = self->_titleWidth;
    goto LABEL_23;
  }

  v19 = self->_titleWidth;
  v47 = v68;
  if (v68 != self->_h2format || titleWidth != v19 || enableWidth != self->_enableWidth || progressWidth != self->_progressWidth)
  {
LABEL_23:
    v20 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
    v21 = [MEMORY[0x277CCABB0] numberWithDouble:self->_enableWidth];
    nativeSpinnerWidth = self->_nativeSpinnerWidth;
    if (IsAccessibilityCategory)
    {
      nativeSpinnerWidth = nativeSpinnerWidth + nativeSpinnerWidth;
    }

    v23 = [MEMORY[0x277CCABB0] numberWithDouble:nativeSpinnerWidth];
    v24 = [MEMORY[0x277CCABB0] numberWithDouble:self->_progressWidth];
    v25 = _NSDictionaryOfVariableBindings(&cfstr_AppiconviewTit.isa, self->_appIconView, self->_titleLabel, self->_enableButton, self->_spinner, self->_checkIconView, self->_progressLabel, self->_progressView, 0);
    v66 = v24;
    v67 = v23;
    v26 = _NSDictionaryOfVariableBindings(&cfstr_TitlewidthSpin.isa, v20, v23, v21, v24, 0);
    if ([(NSMutableArray *)self->_constraints count])
    {
      [MEMORY[0x277CCAAD0] deactivateConstraints:self->_constraints];
    }

    array = [MEMORY[0x277CBEB18] array];
    constraints = self->_constraints;
    self->_constraints = array;

    v29 = self->_constraints;
    v30 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:self->_hformat options:0 metrics:v26 views:v25];
    [(NSMutableArray *)v29 addObjectsFromArray:v30];

    v31 = self->_h2format;
    if (v31)
    {
      v32 = self->_constraints;
      v33 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:v31 options:0 metrics:v26 views:v25];
      [(NSMutableArray *)v32 addObjectsFromArray:v33];
    }

    [(UILabel *)self->_titleLabel setNumberOfLines:2];
    [(UILabel *)self->_titleLabel setLineBreakMode:0];
    v34 = self->_constraints;
    v35 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-15-[_appIconView(==29)]" options:0 metrics:0 views:v25];
    [(NSMutableArray *)v34 addObjectsFromArray:v35];

    v36 = self->_constraints;
    if (IsAccessibilityCategory)
    {
      v37 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_appIconView attribute:4 relatedBy:0 toItem:self->_titleLabel attribute:12 multiplier:1.0 constant:2.0];
      [(NSMutableArray *)v36 addObject:v37];

      v38 = self->_constraints;
      v39 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[_appIconView(==29)]-(>=8)-|" options:0 metrics:0 views:v25];
      [(NSMutableArray *)v38 addObjectsFromArray:v39];

      v40 = self->_constraints;
      v41 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-13-[_titleLabel]-(>=8)-|" options:0 metrics:0 views:v25];
      [(NSMutableArray *)v40 addObjectsFromArray:v41];

      if (([(UILabel *)self->_progressLabel isHidden]& 1) == 0)
      {
        v42 = self->_constraints;
        v43 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-13-[_titleLabel]-1-[_progressLabel]-(>=8)-|" options:0 metrics:0 views:v25];
        [(NSMutableArray *)v42 addObjectsFromArray:v43];
      }

      v44 = v26;
      if (([(UIActivityIndicatorView *)self->_spinner isHidden]& 1) == 0)
      {
        v45 = self->_constraints;
        v46 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[_titleLabel]-8-[_spinner]-(>=8)-|" options:0 metrics:0 views:v25];
        [(NSMutableArray *)v45 addObjectsFromArray:v46];
      }

      v47 = v68;
      if (([(STStorageProgressView *)self->_progressView isHidden]& 1) == 0)
      {
        v48 = self->_constraints;
        v49 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[_titleLabel]-6-[_progressView(==48)]-(>=8)-|" options:0 metrics:v26 views:v25];
        [(NSMutableArray *)v48 addObjectsFromArray:v49];
      }

      if (([(UIButton *)self->_enableButton isHidden]& 1) == 0)
      {
        v50 = self->_constraints;
        v51 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:[_titleLabel]-1-[_enableButton]-(>=8)-|" options:0 metrics:0 views:v25];
        [(NSMutableArray *)v50 addObjectsFromArray:v51];
      }

      if (([(UIImageView *)self->_checkIconView isHidden]& 1) != 0)
      {
        goto LABEL_42;
      }

      v52 = @"V:[_titleLabel]-10-[_checkIconView(==56)]-(>=8)-|";
    }

    else
    {
      v53 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-20-[_appIconView(==29)]-(>=8)-|" options:0 metrics:0 views:v25];
      [(NSMutableArray *)v36 addObjectsFromArray:v53];

      v54 = self->_constraints;
      v55 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-19-[_titleLabel]-(>=8)-|" options:0 metrics:0 views:v25];
      [(NSMutableArray *)v54 addObjectsFromArray:v55];

      v56 = self->_constraints;
      v57 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-14-[_progressLabel]" options:0 metrics:0 views:v25];
      [(NSMutableArray *)v56 addObjectsFromArray:v57];

      v58 = self->_constraints;
      v59 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-13-[_spinner]" options:0 metrics:0 views:v25];
      [(NSMutableArray *)v58 addObjectsFromArray:v59];

      v60 = self->_constraints;
      v44 = v26;
      v61 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-10-[_progressView(==24)]" options:0 metrics:v26 views:v25];
      [(NSMutableArray *)v60 addObjectsFromArray:v61];

      v62 = self->_constraints;
      v63 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-7-[_enableButton]" options:0 metrics:0 views:v25];
      [(NSMutableArray *)v62 addObjectsFromArray:v63];

      v52 = @"V:|-10-[_checkIconView(==28)]";
      v47 = v68;
    }

    v64 = self->_constraints;
    v65 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:v52 options:0 metrics:0 views:v25];
    [(NSMutableArray *)v64 addObjectsFromArray:v65];

LABEL_42:
    [MEMORY[0x277CCAAD0] activateConstraints:self->_constraints];

    v13 = v69;
  }

  v71.receiver = self;
  v71.super_class = STStorageTipCell;
  [(STStorageTipCell *)&v71 updateConstraints];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v29[1] = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  v27.receiver = self;
  v27.super_class = STStorageTipCell;
  [(PSTableCell *)&v27 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:@"stTitle"];
  [(UILabel *)self->_titleLabel setText:v5];
  v6 = [specifierCopy propertyForKey:@"stIcon"];
  if (v6)
  {
    [(UIImageView *)self->_appIconView setImage:v6];
  }

  else
  {
    v7 = [specifierCopy propertyForKey:@"stRepresentedApp"];
    if ([v7 length])
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __53__STStorageTipCell_refreshCellContentsWithSpecifier___block_invoke;
      v26[3] = &unk_2782E2840;
      v26[4] = self;
      STLoadTableIconForAppID(v7, v26);
    }

    else
    {
      v8 = MEMORY[0x277D755B8];
      traitCollection = [(UIImageView *)self->_appIconView traitCollection];
      v10 = [v8 systemImageNamed:@"info.circle" compatibleWithTraitCollection:traitCollection];
      [(UIImageView *)self->_appIconView setImage:v10];
    }
  }

  v11 = [specifierCopy propertyForKey:@"stEnableTitle"];

  v12 = objc_alloc(MEMORY[0x277CCA898]);
  v13 = v11;
  if (!v11)
  {
    v13 = STFrameworkLocStr(@"ST_ENABLE");
  }

  v28 = *MEMORY[0x277D740A8];
  v14 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  v29[0] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v16 = [v12 initWithString:v13 attributes:v15];

  if (!v11)
  {
  }

  [(UIButton *)self->_enableButton setAttributedTitle:v16 forState:0];
  v17 = [specifierCopy propertyForKey:@"stTipKind"];
  self->_isOption = [v17 isEqualToString:@"stOptionTip"];

  if (self->_isOption)
  {
    v18 = [specifierCopy propertyForKey:@"stPercent"];
    [v18 floatValue];
    self->_percent = *&v19;
    if (*&v19 > 1.0)
    {
      self->_percent = 1.0;
      LODWORD(v19) = 1.0;
      v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];

      *&v19 = self->_percent;
      v18 = v20;
    }

    if (*&v19 == 0.0 || *&v19 == 1.0)
    {
      [(UIActivityIndicatorView *)self->_spinner stopAnimating];
      [(STStorageProgressView *)self->_progressView setHidden:1];
      [(UILabel *)self->_progressLabel setHidden:1];
      [(UILabel *)self->_progressLabel setText:0];
    }

    else if (*&v19 >= 0.0)
    {
      [(UIActivityIndicatorView *)self->_spinner stopAnimating];
      [(STStorageProgressView *)self->_progressView setPercent:self->_percent];
      [(STStorageProgressView *)self->_progressView setHidden:0];
      v23 = PercentString_onceToken;
      v24 = v18;
      if (v23 != -1)
      {
        [STStorageTipCell refreshCellContentsWithSpecifier:];
      }

      v25 = [PercentString__formatter stringFromNumber:v24];

      [(UILabel *)self->_progressLabel setText:v25];
      [(UILabel *)self->_progressLabel setHidden:0];
    }

    else
    {
      [(STStorageProgressView *)self->_progressView setHidden:1];
      [(UIActivityIndicatorView *)self->_spinner startAnimating];
      v21 = [specifierCopy propertyForKey:@"stActivating"];
      [(UILabel *)self->_progressLabel setText:v21];

      text = [(UILabel *)self->_progressLabel text];
      -[UILabel setHidden:](self->_progressLabel, "setHidden:", [text length] == 0);
    }

    [(UIButton *)self->_enableButton setHidden:self->_percent != 0.0];
    [(UIImageView *)self->_checkIconView setHidden:self->_percent < 1.0];
  }

  [(STStorageTipCell *)self setNeedsUpdateConstraints];
  [(STStorageTipCell *)self setNeedsDisplay];
}

- (void)_activateOption
{
  specifier = [(PSTableCell *)self specifier];
  v2 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [specifier performSetterWithValue:v2];
}

@end