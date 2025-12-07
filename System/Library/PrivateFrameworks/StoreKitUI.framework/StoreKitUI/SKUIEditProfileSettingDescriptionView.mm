@interface SKUIEditProfileSettingDescriptionView
+ (BOOL)prefetchResourcesForSettingDescription:(id)description reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForSettingDescription:(id)description context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width settingDescription:(id)description context:(id)context;
+ (id)_baselineFontForTextStyle:(id)style;
+ (void)requestLayoutForSettingDescription:(id)description width:(double)width context:(id)context;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (id)_textFieldWithPlaceholder:(id)placeholder;
- (void)_updateHandleTextFieldValidity;
- (void)layoutSubviews;
- (void)reloadWithSettingDescription:(id)description width:(double)width context:(id)context;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation SKUIEditProfileSettingDescriptionView

+ (BOOL)prefetchResourcesForSettingDescription:(id)description reason:(int64_t)reason context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIEditProfileSettingDescriptionView *)v5 prefetchResourcesForSettingDescription:v6 reason:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
}

+ (CGSize)preferredSizeForSettingDescription:(id)description context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIEditProfileSettingDescriptionView *)v4 preferredSizeForSettingDescription:v5 context:v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = *MEMORY[0x277CBF3A8];
  v13 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v13;
  result.width = v12;
  return result;
}

+ (void)requestLayoutForSettingDescription:(id)description width:(double)width context:(id)context
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v5)
    {
      [(SKUIEditProfileSettingDescriptionView *)v5 requestLayoutForSettingDescription:v6 width:v7 context:v8, v9, v10, v11, v12];
    }
  }
}

+ (CGSize)sizeThatFitsWidth:(double)width settingDescription:(id)description context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v7)
      {
        [(SKUIEditProfileSettingDescriptionView *)v7 sizeThatFitsWidth:v8 settingDescription:v9 context:v10, v11, v12, v13, v14];
      }
    }
  }

  v15 = [self _baselineFontForTextStyle:*MEMORY[0x277D76918]];
  [v15 _scaledValueForValue:48.0];
  v17 = v16 + v16;

  widthCopy = width;
  v19 = v17;
  result.height = v19;
  result.width = widthCopy;
  return result;
}

- (void)reloadWithSettingDescription:(id)description width:(double)width context:(id)context
{
  descriptionCopy = description;
  objc_storeStrong(&self->_settingDescription, description);
  contextCopy = context;
  clientContext = [contextCopy clientContext];

  clientContext = self->_clientContext;
  self->_clientContext = clientContext;

  imageView = self->_imageView;
  if (!imageView)
  {
    v12 = objc_alloc_init(SKUIImageView);
    v13 = self->_imageView;
    self->_imageView = v12;

    [(SKUIEditProfileSettingDescriptionView *)self addSubview:self->_imageView];
    imageView = self->_imageView;
  }

  photo = [(SKUIEditProfileSettingDescription *)self->_settingDescription photo];
  [(SKUIImageView *)imageView setImage:photo];

  if (!self->_editButton)
  {
    v15 = [MEMORY[0x277D75220] buttonWithType:1];
    editButton = self->_editButton;
    self->_editButton = v15;

    v17 = self->_clientContext;
    if (v17)
    {
      [(SKUIClientContext *)v17 localizedStringForKey:@"SETTINGS_PROFILE_EDIT_BUTTON_LABEL" inTable:@"Settings"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"SETTINGS_PROFILE_EDIT_BUTTON_LABEL" inBundles:0 inTable:@"Settings"];
    }
    v18 = ;
    [(UIButton *)self->_editButton setTitle:v18 forState:0];
    [(UIButton *)self->_editButton addTarget:self action:sel__editProfilePhoto forControlEvents:64];
    titleLabel = [(UIButton *)self->_editButton titleLabel];
    v20 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [titleLabel setFont:v20];

    [(SKUIEditProfileSettingDescriptionView *)self addSubview:self->_editButton];
  }

  nameField = self->_nameField;
  if (!nameField)
  {
    v22 = self->_clientContext;
    if (v22)
    {
      [(SKUIClientContext *)v22 localizedStringForKey:@"SETTINGS_PROFILE_EDIT_NAME" inTable:@"Settings"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"SETTINGS_PROFILE_EDIT_NAME" inBundles:0 inTable:@"Settings"];
    }
    v23 = ;
    v24 = [(SKUIEditProfileSettingDescriptionView *)self _textFieldWithPlaceholder:v23];
    v25 = self->_nameField;
    self->_nameField = v24;

    [(UITextField *)self->_nameField setAutocapitalizationType:1];
    [(UITextField *)self->_nameField setAutocorrectionType:1];
    [(SKUIEditProfileSettingDescriptionView *)self addSubview:self->_nameField];
    nameField = self->_nameField;
  }

  name = [(SKUIEditProfileSettingDescription *)self->_settingDescription name];
  [(UITextField *)nameField setText:name];

  handleField = self->_handleField;
  if (!handleField)
  {
    v28 = self->_clientContext;
    if (v28)
    {
      [(SKUIClientContext *)v28 localizedStringForKey:@"SETTINGS_PROFILE_EDIT_HANDLE" inTable:@"Settings"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"SETTINGS_PROFILE_EDIT_HANDLE" inBundles:0 inTable:@"Settings"];
    }
    v29 = ;
    v30 = [(SKUIEditProfileSettingDescriptionView *)self _textFieldWithPlaceholder:v29];
    v31 = self->_handleField;
    self->_handleField = v30;

    [(UITextField *)self->_handleField setAutocapitalizationType:0];
    [(UITextField *)self->_handleField setAutocorrectionType:1];
    [(UITextField *)self->_handleField _setPrefix:@"@"];
    [(SKUIEditProfileSettingDescriptionView *)self addSubview:self->_handleField];
    handleField = self->_handleField;
  }

  handle = [(SKUIEditProfileSettingDescription *)self->_settingDescription handle];
  [(UITextField *)handleField setText:handle];

  if (!self->_divider1)
  {
    layer = [MEMORY[0x277CD9ED0] layer];
    divider1 = self->_divider1;
    self->_divider1 = layer;

    v35 = self->_divider1;
    v36 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    -[CALayer setBackgroundColor:](v35, "setBackgroundColor:", [v36 CGColor]);

    layer2 = [(SKUIEditProfileSettingDescriptionView *)self layer];
    [layer2 addSublayer:self->_divider1];
  }

  isEditing = [(SKUIEditProfileSettingDescription *)self->_settingDescription isEditing];
  [(UIButton *)self->_editButton setHidden:isEditing ^ 1];
  [(UITextField *)self->_nameField setEnabled:isEditing];
  [(UITextField *)self->_handleField setEnabled:isEditing];
}

- (void)textFieldDidBeginEditing:(id)editing
{
  if ([editing isEqual:self->_handleField])
  {

    [(SKUIEditProfileSettingDescriptionView *)self _updateHandleTextFieldValidity];
  }
}

- (BOOL)textFieldShouldReturn:(id)return
{
  v4 = [return isEqual:self->_nameField];
  handleField = self->_handleField;
  if (v4)
  {
    [(UITextField *)handleField becomeFirstResponder];
  }

  else
  {
    [(UITextField *)handleField resignFirstResponder];
  }

  return 0;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  text = [fieldCopy text];
  v12 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

  if ([fieldCopy isEqual:self->_nameField])
  {
    [(SKUIEditProfileSettingDescription *)self->_settingDescription setName:v12];
  }

  else if ([fieldCopy isEqual:self->_handleField])
  {
    [(SKUIEditProfileSettingDescriptionView *)self _updateHandleTextFieldValidity];
  }

  return 1;
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  if ([editingCopy isEqual:self->_nameField])
  {
    settingDescription = self->_settingDescription;
    text = [editingCopy text];
    [(SKUIEditProfileSettingDescription *)settingDescription setName:text];
  }

  else
  {
    if (![editingCopy isEqual:self->_handleField])
    {
      goto LABEL_6;
    }

    v6 = self->_settingDescription;
    text = [editingCopy text];
    [(SKUIEditProfileSettingDescription *)v6 setHandle:text];
  }

LABEL_6:
}

- (void)layoutSubviews
{
  v68.receiver = self;
  v68.super_class = SKUIEditProfileSettingDescriptionView;
  [(SKUIEditProfileSettingDescriptionView *)&v68 layoutSubviews];
  [(SKUISettingDescriptionView *)self layoutMargins];
  v4 = v3;
  v65 = v5;
  bounds = [(SKUIEditProfileSettingDescriptionView *)self bounds];
  v8 = v7;
  v63 = v9;
  v64 = v7;
  v11 = v10;
  v67 = v12;
  ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection(bounds, v13);
  titleLabel = [(UIButton *)self->_editButton titleLabel];
  v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [titleLabel setFont:v16];
  [v16 _scaledValueForValue:16.0];
  v18 = v17;
  [(UIButton *)self->_editButton sizeThatFits:1.0, 1.0];
  v20 = v19;
  v22 = v21;
  v69.origin.y = 8.0;
  v69.origin.x = v4;
  v69.size.width = 56.0;
  v69.size.height = 56.0;
  v23 = v18 + CGRectGetMaxY(v69);
  [titleLabel _firstBaselineOffsetFromTop];
  v25 = v23 - v24;
  v70.origin.y = 8.0;
  v70.origin.x = v4;
  v70.size.width = 56.0;
  v70.size.height = 56.0;
  v26 = floor((CGRectGetWidth(v70) - v20) * 0.5);
  v71.origin.y = 8.0;
  v71.origin.x = v4;
  v71.size.width = 56.0;
  v71.size.height = 56.0;
  v27 = CGRectGetMinX(v71) + v26;
  editButton = self->_editButton;
  v29 = v11;
  SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v27, v25, v20, v22, v8, v11, v67, v63, v30, v31);
  [(UIButton *)editButton setFrame:?];
  v32 = *MEMORY[0x277D76918];
  v33 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [(UITextField *)self->_nameField setFont:v33];
  [(UITextField *)self->_handleField setFont:v33];
  if (ShouldReverseLayoutDirection)
  {
    v34 = 2;
  }

  else
  {
    v34 = 0;
  }

  [(UITextField *)self->_nameField setTextAlignment:v34];
  [(UITextField *)self->_handleField setTextAlignment:v34];
  v35 = [objc_opt_class() _baselineFontForTextStyle:v32];
  [v35 _scaledValueForValue:30.0];
  v37 = v36;
  [v35 _scaledValueForValue:18.0];
  v62 = v37 + v38;
  _placeholderLabel = [(UITextField *)self->_nameField _placeholderLabel];
  v72.origin.y = 8.0;
  v72.origin.x = v4;
  v72.size.width = 56.0;
  v72.size.height = 56.0;
  v40 = CGRectGetMaxX(v72) + 16.0;
  [_placeholderLabel _firstBaselineOffsetFromTop];
  v42 = v37 - v41;
  v61 = v37 - v41;
  v73.origin.x = v64;
  v73.origin.y = v11;
  v73.size.width = v67;
  v73.size.height = v63;
  v43 = CGRectGetWidth(v73) - v40 - v65;
  v74.origin.x = v64;
  v74.origin.y = v11;
  v74.size.width = v67;
  v74.size.height = v63;
  v60 = CGRectGetWidth(v74) - v40;
  v44 = [(UITextField *)self->_nameField sizeThatFits:v43, 1.0];
  v66 = v45;
  nameField = self->_nameField;
  SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v40, v42 + 0.0, v43, v45, v64, v11, v67, v63, v44, v47);
  [(UITextField *)nameField setFrame:?];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v50 = 1.0 / v49;

  divider1 = self->_divider1;
  SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v40, v62 + 0.0, v60, v50, v64, v29, v67, v63, v52, v53);
  v54 = [(CALayer *)divider1 setFrame:?];
  handleField = self->_handleField;
  SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v40, v62 + 0.0 + v61, v43, v66, v64, v29, v67, v63, v54, v56);
  v57 = [(UITextField *)handleField setFrame:?];
  imageView = self->_imageView;
  SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v4, 8.0, 56.0, 56.0, v64, v29, v67, v63, v57, v59);
  [(SKUIImageView *)imageView setFrame:?];
}

+ (id)_baselineFontForTextStyle:(id)style
{
  v3 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:style addingSymbolicTraits:0 options:2];
  v4 = [MEMORY[0x277D74300] fontWithDescriptor:v3 size:0.0];

  return v4;
}

- (void)_updateHandleTextFieldValidity
{
  settingDescription = self->_settingDescription;
  text = [(UITextField *)self->_handleField text];
  [(SKUIEditProfileSettingDescription *)settingDescription setHandle:text];

  isHandleValid = [(SKUIEditProfileSettingDescription *)self->_settingDescription isHandleValid];
  handleField = self->_handleField;
  if (isHandleValid)
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemRedColor];
  }
  v7 = ;
  [(UITextField *)handleField setTextColor:v7];
}

- (id)_textFieldWithPlaceholder:(id)placeholder
{
  v4 = MEMORY[0x277D75BB8];
  placeholderCopy = placeholder;
  v6 = [v4 alloc];
  v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v7 setDelegate:self];
  v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v7 setFont:v8];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [v7 setTextColor:blackColor];

  v10 = objc_alloc(MEMORY[0x277CBEAC0]);
  systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  v12 = [v10 initWithObjectsAndKeys:{systemRedColor, *MEMORY[0x277D740C0], 0}];

  v13 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:placeholderCopy attributes:v12];
  [v7 setAttributedPlaceholder:v13];

  return v7;
}

+ (void)prefetchResourcesForSettingDescription:(uint64_t)a3 reason:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUIEditProfileSettingDescriptionView prefetchResourcesForSettingDescription:reason:context:]";
}

+ (void)preferredSizeForSettingDescription:(uint64_t)a3 context:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUIEditProfileSettingDescriptionView preferredSizeForSettingDescription:context:]";
}

+ (void)requestLayoutForSettingDescription:(uint64_t)a3 width:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUIEditProfileSettingDescriptionView requestLayoutForSettingDescription:width:context:]";
}

+ (void)sizeThatFitsWidth:(uint64_t)a3 settingDescription:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUIEditProfileSettingDescriptionView sizeThatFitsWidth:settingDescription:context:]";
}

@end