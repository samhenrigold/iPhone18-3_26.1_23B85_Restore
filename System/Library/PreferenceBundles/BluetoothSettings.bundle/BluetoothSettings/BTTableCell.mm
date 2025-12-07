@interface BTTableCell
- (BTTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setDeviceState:(int)state;
- (void)setDeviceStatePaired:(BOOL)paired andConnected:(BOOL)connected andPendingSetup:(BOOL)setup;
@end

@implementation BTTableCell

- (BTTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v10.receiver = self;
  v10.super_class = BTTableCell;
  v5 = [(PSTableCell *)&v10 initWithStyle:1 reuseIdentifier:identifier specifier:specifier];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    spinner = v5->_spinner;
    v5->_spinner = v6;

    [(UIActivityIndicatorView *)v5->_spinner setHidesWhenStopped:1];
    contentView = [(BTTableCell *)v5 contentView];
    [contentView addSubview:v5->_spinner];
  }

  return v5;
}

- (void)dealloc
{
  [(UIActivityIndicatorView *)self->_spinner removeFromSuperview];
  v3.receiver = self;
  v3.super_class = BTTableCell;
  [(PSTableCell *)&v3 dealloc];
}

- (void)setDeviceState:(int)state
{
  [(BTTableCell *)self setState:*&state];
  state = [(BTTableCell *)self state];
  if (state <= 4)
  {
    if (state < 2)
    {
      valueLabel = [(PSTableCell *)self valueLabel];
      [valueLabel setText:0];
    }

    else
    {
      if ((state - 3) < 2)
      {
        v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v6 = v5;
        v7 = @"PAIRED";
LABEL_14:
        v16 = [v5 localizedStringForKey:v7 value:&stru_284EE3458 table:@"Devices"];
        valueLabel2 = [(PSTableCell *)self valueLabel];
        [valueLabel2 setText:v16];

        selfCopy2 = self;
        v15 = 4;
        goto LABEL_15;
      }

      if (state != 2)
      {
        return;
      }

      valueLabel = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [valueLabel localizedStringForKey:@"PAIRED_AND_CONNECTED" value:&stru_284EE3458 table:@"Devices"];
      valueLabel3 = [(PSTableCell *)self valueLabel];
      [valueLabel3 setText:v12];
    }

    selfCopy2 = self;
    v15 = 0;
LABEL_15:

    [(BTTableCell *)selfCopy2 setAccessoryType:v15];
    return;
  }

  switch(state)
  {
    case 5:
      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = v5;
      v7 = @"PAIRED_AND_CONNECTED";
      goto LABEL_14;
    case 6:
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = v8;
      v10 = @"PAIRED";
      break;
    case 7:
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = v8;
      v10 = @"PAIRED_AND_CONNECTED";
      break;
    default:
      return;
  }

  v18 = [v8 localizedStringForKey:v10 value:&stru_284EE3458 table:@"Devices"];
  valueLabel4 = [(PSTableCell *)self valueLabel];
  [valueLabel4 setText:v18];

  [(BTTableCell *)self setAccessoryType:4];
  systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
  [(BTTableCell *)self setTintColor:systemOrangeColor];
}

- (void)setDeviceStatePaired:(BOOL)paired andConnected:(BOOL)connected andPendingSetup:(BOOL)setup
{
  if (connected)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  if (connected)
  {
    v6 = 5;
  }

  else
  {
    v6 = 3;
  }

  if (paired)
  {
    v5 = v6;
  }

  if (connected)
  {
    v7 = 7;
  }

  else
  {
    v7 = 6;
  }

  if (setup)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  [(BTTableCell *)self setDeviceState:v8];
}

- (void)layoutSubviews
{
  v85[1] = *MEMORY[0x277D85DE8];
  v83.receiver = self;
  v83.super_class = BTTableCell;
  [(PSTableCell *)&v83 layoutSubviews];
  titleLabel = [(PSTableCell *)self titleLabel];
  [titleLabel frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = 6.0;
  v13 = 6.0;
  if ([(BTTableCell *)self state]<= 2)
  {
    [(BTTableCell *)self layoutMargins];
    v13 = v14;
  }

  if ([(BTTableCell *)self state]<= 2)
  {
    [(BTTableCell *)self layoutMargins];
    v12 = v15;
  }

  userInterfaceLayoutDirection = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
  if ([(BTTableCell *)self state]== 1 || [(BTTableCell *)self state]== 4)
  {
    valueLabel = [(PSTableCell *)self valueLabel];
    [valueLabel setAlpha:0.0];

    spinner = [(BTTableCell *)self spinner];
    [spinner frame];
    v20 = v19;
    v22 = v21;

    if (!userInterfaceLayoutDirection)
    {
      contentView = [(BTTableCell *)self contentView];
      [contentView frame];
      v12 = v24 - v20 - v12;
    }

    contentView2 = [(BTTableCell *)self contentView];
    [contentView2 frame];
    v27 = floor((v26 - v22) * 0.5);

    v86.origin.x = v12;
    v86.origin.y = v27;
    v86.size.width = v20;
    v86.size.height = v22;
    v87 = CGRectIntegral(v86);
    x = v87.origin.x;
    y = v87.origin.y;
    width = v87.size.width;
    height = v87.size.height;
    spinner2 = [(BTTableCell *)self spinner];
    [spinner2 setFrame:{x, y, width, height}];

    spinner3 = [(BTTableCell *)self spinner];
    [spinner3 startAnimating];

    contentView3 = [(BTTableCell *)self contentView];
    [contentView3 frame];
    v36 = v35 - v20;
    contentView4 = [(BTTableCell *)self contentView];
    [contentView4 layoutMargins];
    v9 = v36 - v38 - v13 + -12.0;
  }

  else
  {
    spinner4 = [(BTTableCell *)self spinner];
    [spinner4 stopAnimating];

    valueLabel2 = [(PSTableCell *)self valueLabel];
    [valueLabel2 setAlpha:1.0];

    traitCollection = [(BTTableCell *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (IsAccessibilityCategory)
    {
      goto LABEL_14;
    }

    valueLabel3 = [(PSTableCell *)self valueLabel];
    text = [valueLabel3 text];
    contentView5 = [(BTTableCell *)self contentView];
    [contentView5 bounds];
    v60 = v59;
    v62 = v61;
    v84 = *MEMORY[0x277D740A8];
    valueLabel4 = [(PSTableCell *)self valueLabel];
    font = [valueLabel4 font];
    v85[0] = font;
    v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:&v84 count:1];
    [text boundingRectWithSize:0 options:v65 attributes:0 context:{v60, v62}];
    v67 = v66;
    v69 = v68;

    v70 = ceil(v67);
    v71 = ceil(v69);
    v72 = v13;
    if (!userInterfaceLayoutDirection)
    {
      contentView6 = [(BTTableCell *)self contentView];
      [contentView6 frame];
      v72 = v74 - v70 - v13;
    }

    v90.origin.x = v72;
    v90.origin.y = v7;
    v90.size.width = v70;
    v90.size.height = v71;
    v91 = CGRectIntegral(v90);
    v75 = v91.origin.x;
    v76 = v91.origin.y;
    v77 = v91.size.width;
    v78 = v91.size.height;
    valueLabel5 = [(PSTableCell *)self valueLabel];
    [valueLabel5 setFrame:{v75, v76, v77, v78}];

    contentView3 = [(BTTableCell *)self contentView];
    [contentView3 frame];
    v81 = v80 - v70;
    contentView4 = [(BTTableCell *)self contentView];
    [contentView4 layoutMargins];
    v9 = floor(v81 - v82 - v13 + -12.0);
  }

  contentView7 = [(BTTableCell *)self contentView];
  v40 = contentView7;
  if (userInterfaceLayoutDirection)
  {
    [contentView7 size];
    v42 = v41 - v9;
    contentView8 = [(BTTableCell *)self contentView];
    [contentView8 layoutMargins];
    v5 = v42 - v44;
  }

  else
  {
    [contentView7 layoutMargins];
    v5 = v45;
  }

LABEL_14:
  v88.origin.x = v5;
  v88.origin.y = v7;
  v88.size.width = v9;
  v88.size.height = v11;
  v89 = CGRectIntegral(v88);
  v46 = v89.origin.x;
  v47 = v89.origin.y;
  v48 = v89.size.width;
  v49 = v89.size.height;
  titleLabel2 = [(PSTableCell *)self titleLabel];
  [titleLabel2 setFrame:{v46, v47, v48, v49}];
}

@end