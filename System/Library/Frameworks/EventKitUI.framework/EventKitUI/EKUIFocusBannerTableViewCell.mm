@interface EKUIFocusBannerTableViewCell
- (EKUIFocusBannerTableViewCell)initWithReuseIdentifier:(id)identifier;
- (EKUIFocusBannerTableViewCellDelegate)delegate;
- (NSDirectionalEdgeInsets)customEdgeInsets;
- (id)_configuration;
- (id)_focusFilterButtonConfiguration;
- (void)_tapped;
- (void)_updateView;
- (void)setOn:(BOOL)on;
@end

@implementation EKUIFocusBannerTableViewCell

- (EKUIFocusBannerTableViewCell)initWithReuseIdentifier:(id)identifier
{
  v27[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v26.receiver = self;
  v26.super_class = EKUIFocusBannerTableViewCell;
  v5 = [(EKUIFocusBannerTableViewCell *)&v26 initWithStyle:0 reuseIdentifier:identifierCopy];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69DCC30]);
    _configuration = [v5 _configuration];
    v8 = [v6 initWithConfiguration:_configuration];
    v9 = *(v5 + 129);
    *(v5 + 129) = v8;

    [*(v5 + 129) setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = objc_msgSend_contentView(v5);
    [v10 addSubview:*(v5 + 129)];

    v11 = [MEMORY[0x1E69DC738] buttonWithType:1];
    v12 = *(v5 + 128);
    *(v5 + 128) = v11;

    _focusFilterButtonConfiguration = [v5 _focusFilterButtonConfiguration];
    [*(v5 + 128) setConfiguration:_focusFilterButtonConfiguration];

    [*(v5 + 128) setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v14) = 1148846080;
    [*(v5 + 128) setContentCompressionResistancePriority:0 forAxis:v14];
    LODWORD(v15) = 1148846080;
    [*(v5 + 128) setContentCompressionResistancePriority:1 forAxis:v15];
    v16 = objc_msgSend_contentView(v5);
    [v16 addSubview:*(v5 + 128)];

    objc_initWeak(&location, v5);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __56__EKUIFocusBannerTableViewCell_initWithReuseIdentifier___block_invoke;
    v23[3] = &unk_1E8440360;
    objc_copyWeak(&v24, &location);
    [*(v5 + 128) setConfigurationUpdateHandler:v23];
    v17 = *(MEMORY[0x1E69DC5C0] + 16);
    *(v5 + 1064) = *MEMORY[0x1E69DC5C0];
    *(v5 + 1080) = v17;
    [*(v5 + 128) addTarget:v5 action:sel__tapped forControlEvents:0x2000];
    [v5 _updateView];
    v27[0] = objc_opt_class();
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __56__EKUIFocusBannerTableViewCell_initWithReuseIdentifier___block_invoke_2;
    v21[3] = &unk_1E843EBE8;
    objc_copyWeak(&v22, &location);
    v19 = [v5 registerForTraitChanges:v18 withHandler:v21];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __56__EKUIFocusBannerTableViewCell_initWithReuseIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained _focusFilterButtonConfiguration];
    [v6 setConfiguration:v5];
  }
}

void __56__EKUIFocusBannerTableViewCell_initWithReuseIdentifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateView];
}

- (void)_tapped
{
  [(EKUIFocusBannerTableViewCell *)self setOn:[(EKUIFocusBannerTableViewCell *)self on]^ 1];
  delegate = [(EKUIFocusBannerTableViewCell *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(EKUIFocusBannerTableViewCell *)self delegate];
    [delegate2 focusBannerTableViewCellToggled:self];
  }
}

- (void)setOn:(BOOL)on
{
  if (self->_on != on)
  {
    self->_on = on;
    [(EKUIFocusBannerTableViewCell *)self _updateView];
  }
}

- (void)_updateView
{
  v62[6] = *MEMORY[0x1E69E9840];
  _configuration = [(EKUIFocusBannerTableViewCell *)self _configuration];
  [(UIListContentView *)self->_listContentView setConfiguration:_configuration];

  _focusFilterButtonConfiguration = [(EKUIFocusBannerTableViewCell *)self _focusFilterButtonConfiguration];
  [(UIButton *)self->_focusFilterToggleButton setConfiguration:_focusFilterButtonConfiguration];

  if (self->_constraints)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
  }

  traitCollection = [(EKUIFocusBannerTableViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    leadingAnchor = [(UIListContentView *)self->_listContentView leadingAnchor];
    v59 = objc_msgSend_contentView(self);
    leadingAnchor2 = [v59 leadingAnchor];
    v57 = [leadingAnchor constraintEqualToAnchor:?];
    v62[0] = v57;
    trailingAnchor = [(UIListContentView *)self->_listContentView trailingAnchor];
    v55 = objc_msgSend_contentView(self);
    [v55 trailingAnchor];
    v54 = v56 = trailingAnchor;
    v53 = [trailingAnchor constraintEqualToAnchor:?];
    v62[1] = v53;
    topAnchor = [(UIListContentView *)self->_listContentView topAnchor];
    v51 = objc_msgSend_contentView(self);
    [v51 topAnchor];
    v50 = v52 = topAnchor;
    v49 = [topAnchor constraintEqualToAnchor:?];
    v62[2] = v49;
    topAnchor2 = [(UIButton *)self->_focusFilterToggleButton topAnchor];
    bottomAnchor = [(UIListContentView *)self->_listContentView bottomAnchor];
    v48 = topAnchor2;
    v46 = [topAnchor2 constraintEqualToAnchor:8.0 constant:?];
    v62[3] = v46;
    bottomAnchor2 = [(UIButton *)self->_focusFilterToggleButton bottomAnchor];
    v44 = objc_msgSend_contentView(self);
    layoutMarginsGuide = [v44 layoutMarginsGuide];
    bottomAnchor3 = [layoutMarginsGuide bottomAnchor];
    v45 = bottomAnchor2;
    centerYAnchor = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v62[4] = centerYAnchor;
    leadingAnchor3 = [(UIButton *)self->_focusFilterToggleButton leadingAnchor];
    centerYAnchor2 = objc_msgSend_contentView(self);
    layoutMarginsGuide2 = [centerYAnchor2 layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide2 leadingAnchor];
    v18 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v62[5] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:6];
    constraints = self->_constraints;
    self->_constraints = v19;

    leadingAnchor5 = leadingAnchor;
  }

  else
  {
    [(EKUIFocusBannerTableViewCell *)self customEdgeInsets];
    v23.f64[1] = v22;
    v25.f64[1] = v24;
    v26 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v23, *MEMORY[0x1E69DC5C0]), vceqq_f64(v25, *(MEMORY[0x1E69DC5C0] + 16)))));
    leadingAnchor5 = [(UIListContentView *)self->_listContentView leadingAnchor];
    v59 = objc_msgSend_contentView(self);
    leadingAnchor6 = [v59 leadingAnchor];
    leadingAnchor2 = leadingAnchor6;
    if (v26)
    {
      v57 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
      v60[0] = v57;
      topAnchor3 = [(UIListContentView *)self->_listContentView topAnchor];
      v55 = objc_msgSend_contentView(self);
      [v55 topAnchor];
      v54 = v56 = topAnchor3;
      v53 = [topAnchor3 constraintEqualToAnchor:?];
      v60[1] = v53;
      bottomAnchor4 = [(UIListContentView *)self->_listContentView bottomAnchor];
      v51 = objc_msgSend_contentView(self);
      [v51 bottomAnchor];
      v50 = v52 = bottomAnchor4;
      v49 = [bottomAnchor4 constraintEqualToAnchor:?];
      v60[2] = v49;
      leadingAnchor7 = [(UIButton *)self->_focusFilterToggleButton leadingAnchor];
      bottomAnchor = [(UIListContentView *)self->_listContentView trailingAnchor];
      v48 = leadingAnchor7;
      v46 = [leadingAnchor7 constraintGreaterThanOrEqualToAnchor:?];
      v60[3] = v46;
      trailingAnchor2 = [(UIButton *)self->_focusFilterToggleButton trailingAnchor];
      v44 = objc_msgSend_contentView(self);
      layoutMarginsGuide = [v44 layoutMarginsGuide];
      bottomAnchor3 = [layoutMarginsGuide trailingAnchor];
      v45 = trailingAnchor2;
      centerYAnchor = [trailingAnchor2 constraintEqualToAnchor:bottomAnchor3];
      v60[4] = centerYAnchor;
      leadingAnchor3 = [(UIButton *)self->_focusFilterToggleButton centerYAnchor];
      centerYAnchor2 = objc_msgSend_contentView(self);
      layoutMarginsGuide2 = [centerYAnchor2 centerYAnchor];
      leadingAnchor4 = [leadingAnchor3 constraintEqualToAnchor:layoutMarginsGuide2];
      v60[5] = leadingAnchor4;
      v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:6];
      v41 = self->_constraints;
      self->_constraints = v40;
    }

    else
    {
      [(EKUIFocusBannerTableViewCell *)self customEdgeInsets];
      v57 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:v28];
      v61[0] = v57;
      topAnchor4 = [(UIListContentView *)self->_listContentView topAnchor];
      v55 = objc_msgSend_contentView(self);
      [v55 topAnchor];
      v54 = v56 = topAnchor4;
      v53 = [topAnchor4 constraintEqualToAnchor:?];
      v61[1] = v53;
      bottomAnchor5 = [(UIListContentView *)self->_listContentView bottomAnchor];
      v51 = objc_msgSend_contentView(self);
      [v51 bottomAnchor];
      v50 = v52 = bottomAnchor5;
      v49 = [bottomAnchor5 constraintEqualToAnchor:?];
      v61[2] = v49;
      leadingAnchor8 = [(UIButton *)self->_focusFilterToggleButton leadingAnchor];
      bottomAnchor = [(UIListContentView *)self->_listContentView trailingAnchor];
      v48 = leadingAnchor8;
      v46 = [leadingAnchor8 constraintGreaterThanOrEqualToAnchor:?];
      v61[3] = v46;
      trailingAnchor3 = [(UIButton *)self->_focusFilterToggleButton trailingAnchor];
      v44 = objc_msgSend_contentView(self);
      trailingAnchor4 = [v44 trailingAnchor];
      [(EKUIFocusBannerTableViewCell *)self customEdgeInsets];
      v45 = trailingAnchor3;
      layoutMarginsGuide = trailingAnchor4;
      bottomAnchor3 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:v34];
      v61[4] = bottomAnchor3;
      centerYAnchor = [(UIButton *)self->_focusFilterToggleButton centerYAnchor];
      leadingAnchor3 = objc_msgSend_contentView(self);
      centerYAnchor2 = [leadingAnchor3 centerYAnchor];
      layoutMarginsGuide2 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v61[5] = layoutMarginsGuide2;
      v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:6];
      leadingAnchor4 = self->_constraints;
      self->_constraints = v35;
    }
  }

  [MEMORY[0x1E696ACD8] activateConstraints:self->_constraints];
}

- (id)_configuration
{
  cellConfiguration = [MEMORY[0x1E69DCC28] cellConfiguration];
  LODWORD(self) = [(EKUIFocusBannerTableViewCell *)self on];
  v4 = EventKitUIBundle();
  v5 = v4;
  if (self)
  {
    v6 = [v4 localizedStringForKey:@"Filtered by Focus" value:&stru_1F4EF6790 table:0];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [MEMORY[0x1E69DC888] systemIndigoColor];
  }

  else
  {
    v6 = [v4 localizedStringForKey:@"Focus Filter Off" value:&stru_1F4EF6790 table:0];

    labelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v8 = ;
  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"moon.circle.fill"];
  [cellConfiguration setImage:v9];

  imageProperties = [cellConfiguration imageProperties];
  [imageProperties setTintColor:v8];

  [cellConfiguration setText:v6];
  textProperties = [cellConfiguration textProperties];
  [textProperties setColor:labelColor];

  textProperties2 = [cellConfiguration textProperties];
  [textProperties2 setNumberOfLines:0];

  return cellConfiguration;
}

- (id)_focusFilterButtonConfiguration
{
  v20[2] = *MEMORY[0x1E69E9840];
  v3 = [(EKUIFocusBannerTableViewCell *)self on];
  v4 = EventKitUIBundle();
  v5 = v4;
  if (v3)
  {
    v6 = @"Turn Off";
  }

  else
  {
    v6 = @"Turn On";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_1F4EF6790 table:0];

  v8 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80] addingSymbolicTraits:32770 options:0];
  v9 = [MEMORY[0x1E69DB878] fontWithDescriptor:v8 size:0.0];
  systemIndigoColor = [MEMORY[0x1E69DC888] systemIndigoColor];
  v11 = *MEMORY[0x1E69DB650];
  v19[0] = *MEMORY[0x1E69DB648];
  v19[1] = v11;
  v20[0] = v9;
  v20[1] = systemIndigoColor;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7 attributes:v12];
  traitCollection = [(EKUIFocusBannerTableViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {

LABEL_7:
    grayButtonConfiguration = [MEMORY[0x1E69DC740] grayButtonConfiguration];
    [grayButtonConfiguration setCornerStyle:4];
    [grayButtonConfiguration setButtonSize:0];
    goto LABEL_9;
  }

  v16 = MEMORY[0x1D38B98D0]();

  if (v16)
  {
    goto LABEL_7;
  }

  grayButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  [grayButtonConfiguration setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
LABEL_9:
  [grayButtonConfiguration setAttributedTitle:v13];
  [grayButtonConfiguration setTitleLineBreakMode:2];

  return grayButtonConfiguration;
}

- (NSDirectionalEdgeInsets)customEdgeInsets
{
  top = self->_customEdgeInsets.top;
  leading = self->_customEdgeInsets.leading;
  bottom = self->_customEdgeInsets.bottom;
  trailing = self->_customEdgeInsets.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (EKUIFocusBannerTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end