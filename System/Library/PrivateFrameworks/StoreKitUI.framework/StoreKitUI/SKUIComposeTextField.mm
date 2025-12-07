@interface SKUIComposeTextField
+ (id)labelFontForStyle:(int64_t)style;
- (BOOL)textField:(id)field shouldInsertText:(id)text replacingRange:(_NSRange)range;
- (SKUIComposeTextField)initWithConfiguration:(id)configuration style:(int64_t)style;
- (id)delegate;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_textChanged:(id)changed;
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)layoutSubviews;
- (void)setText:(id)text;
@end

@implementation SKUIComposeTextField

- (SKUIComposeTextField)initWithConfiguration:(id)configuration style:(int64_t)style
{
  configurationCopy = configuration;
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:44.0];
  v26.receiver = self;
  v26.super_class = SKUIComposeTextField;
  v9 = [(SKUIComposeTextField *)&v26 initWithFrame:0.0, 0.0, 0.0, v8];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, configuration);
    v10->_style = style;
    v11 = [objc_opt_class() labelFontForStyle:style];
    label = [(SKUIComposeTextFieldConfiguration *)v10->_configuration label];
    if (label)
    {
      v13 = objc_alloc_init(MEMORY[0x277D756B8]);
      label = v10->_label;
      v10->_label = v13;

      [(UILabel *)v10->_label setFont:v11];
      [(UILabel *)v10->_label setText:label];
      v15 = v10->_label;
      v16 = [objc_opt_class() labelColorForStyle:style];
      [(UILabel *)v15 setTextColor:v16];

      [(UILabel *)v10->_label sizeToFit];
      [(UILabel *)v10->_label setHoverStyle:0];
      [(SKUIComposeTextField *)v10 addSubview:v10->_label];
    }

    v17 = objc_alloc_init(MEMORY[0x277D75BB8]);
    textField = v10->_textField;
    v10->_textField = v17;

    [(UITextField *)v10->_textField addTarget:v10 action:sel__textChanged_ forControlEvents:0x20000];
    [(UITextField *)v10->_textField setAutocapitalizationType:2];
    [(UITextField *)v10->_textField setAutocorrectionType:0];
    [(UITextField *)v10->_textField setDelegate:v10];
    v19 = v10->_textField;
    v20 = [objc_opt_class() labelFontForStyle:v10->_style];
    [(UITextField *)v19 setFont:v20];

    [(UITextField *)v10->_textField setKeyboardType:0];
    v21 = v10->_textField;
    placeholder = [configurationCopy placeholder];
    [(UITextField *)v21 setPlaceholder:placeholder];

    [(UITextField *)v10->_textField setClipsToBounds:0];
    value = [(SKUIComposeTextFieldConfiguration *)v10->_configuration value];
    [(SKUIComposeTextField *)v10 setText:value];

    [(SKUIComposeTextField *)v10 addSubview:v10->_textField];
    [(UITextField *)v10->_textField sizeToFit];
    [(UITextField *)v10->_textField setHoverStyle:0];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(SKUIComposeTextField *)v10 setBackgroundColor:systemBackgroundColor];
  }

  return v10;
}

- (void)dealloc
{
  [(UITextField *)self->_textField removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  v3.receiver = self;
  v3.super_class = SKUIComposeTextField;
  [(SKUIComposeTextField *)&v3 dealloc];
}

+ (id)labelFontForStyle:(int64_t)style
{
  v3 = MEMORY[0x277D74300];
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:{style, 17.0}];

  return [v3 systemFontOfSize:?];
}

- (void)setText:(id)text
{
  textCopy = text;
  v4 = [textCopy length];
  if (v4 <= [(SKUIComposeTextFieldConfiguration *)self->_configuration maxLength])
  {
    v6 = textCopy;
  }

  else
  {
    v5 = [textCopy substringToIndex:{-[SKUIComposeTextFieldConfiguration maxLength](self->_configuration, "maxLength")}];

    v6 = v5;
  }

  v8 = v6;
  [(UITextField *)self->_textField setText:v6];
  self->_currentTextLength = [v8 length];
}

- (void)drawRect:(CGRect)rect
{
  v4 = 0.0;
  if (![(SKUIComposeTextFieldConfiguration *)self->_configuration columnIndex:rect.origin.x])
  {
    [MEMORY[0x277CDD370] PPMScaledValueUsingValue:15.0];
    v4 = v5;
  }

  [(SKUIComposeTextFieldConfiguration *)self->_configuration borderInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(SKUIComposeTextField *)self bounds];
  v47 = v14;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  labelColor = [MEMORY[0x277D75348] labelColor];
  v22 = [labelColor colorWithAlphaComponent:0.2];
  [v22 set];

  effectiveUserInterfaceLayoutDirection = [(SKUIComposeTextField *)self effectiveUserInterfaceLayoutDirection];
  v25 = effectiveUserInterfaceLayoutDirection;
  if (v7 > 0.0)
  {
    v26 = v18 - v4;
    v27 = 0;
    v28 = v4;
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v28 = CGRectWithFlippedOriginRelativeToBoundingRect(v4, 0.0, v26, v7, v47, v16, v18, v20, 1, v24);
      v7 = v29;
    }

    v30 = v7;
    UIRectFillUsingBlendMode(*&v28, kCGBlendModeNormal);
  }

  if (v11 > 0.0)
  {
    v31 = v18 - v4;
    v32 = v20 - v11;
    if (v25 == 1)
    {
      v4 = CGRectWithFlippedOriginRelativeToBoundingRect(v4, v32, v31, v11, v47, v16, v18, v20, effectiveUserInterfaceLayoutDirection, v24);
      v11 = v33;
    }

    v34 = v4;
    v35 = v11;
    UIRectFillUsingBlendMode(*(&v32 - 1), kCGBlendModeNormal);
  }

  if (v9 > 0.0)
  {
    v36 = 0;
    if (v25 == 1)
    {
      v37 = CGRectWithFlippedOriginRelativeToBoundingRect(0.0, 0.0, v9, v20, v47, v16, v18, v20, effectiveUserInterfaceLayoutDirection, v24);
      v9 = v39;
    }

    else
    {
      v38 = v20;
      v37 = 0.0;
    }

    v40 = v9;
    UIRectFillUsingBlendMode(*(&v36 - 1), kCGBlendModeNormal);
  }

  if (v13 > 0.0)
  {
    v41 = v18 - v13;
    v42 = 0;
    if (v25 == 1)
    {
      v41 = CGRectWithFlippedOriginRelativeToBoundingRect(v41, 0.0, v13, v20, v47, v16, v18, v20, effectiveUserInterfaceLayoutDirection, v24);
      v13 = v43;
      v20 = v44;
    }

    v45 = v13;
    v46 = v20;

    UIRectFillUsingBlendMode(*&v41, kCGBlendModeNormal);
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = SKUIComposeTextField;
  v5 = [(SKUIComposeTextField *)&v8 hitTest:event withEvent:test.x, test.y];
  if (v5 == self)
  {
    v6 = self->_textField;

    v5 = v6;
  }

  return v5;
}

- (void)layoutSubviews
{
  [(SKUIComposeTextField *)self bounds];
  v39 = v4;
  v40 = v3;
  v6 = v5;
  v8 = v7;
  effectiveUserInterfaceLayoutDirection = [(SKUIComposeTextField *)self effectiveUserInterfaceLayoutDirection];
  [MEMORY[0x277CDD370] PPMScaledValueUsingValue:15.0];
  label = self->_label;
  if (label)
  {
    [(UILabel *)label frame];
    v13 = v12;
    v15 = v14;
    [MEMORY[0x277CDD370] PPMScaledValueUsingValue:15.0];
    v17 = v16;
    *&v16 = (v8 - v15) * 0.5;
    v18 = floorf(*&v16);
    v42.origin.x = v17;
    v42.origin.y = v18;
    v42.size.width = v13;
    v42.size.height = v15;
    MaxX = CGRectGetMaxX(v42);
    v20 = [MEMORY[0x277CDD370] PPMScaledValueUsingValue:4.0];
    v23 = v22;
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      v17 = CGRectWithFlippedOriginRelativeToBoundingRect(v17, v18, v13, v15, v40, v39, v6, v8, v20, v21);
      v18 = v24;
      v13 = v25;
      v15 = v26;
    }

    v27 = MaxX + v23;
    [(UILabel *)self->_label setFrame:v17, v18, v13, v15];
  }

  else
  {
    v27 = v10;
  }

  [(UITextField *)self->_textField frame];
  v29 = v28;
  v30 = (v8 - v28) * 0.5;
  v31 = floorf(v30);
  v32 = [MEMORY[0x277CDD370] PPMScaledValueUsingValue:15.0];
  v35 = v6 - v34 - v27;
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v27 = CGRectWithFlippedOriginRelativeToBoundingRect(v27, v31, v35, v29, v40, v39, v6, v8, v32, v33);
    v31 = v36;
    v29 = v37;
  }

  textField = self->_textField;

  [(UITextField *)textField setFrame:v27, v31, v35, v29];
}

- (BOOL)textField:(id)field shouldInsertText:(id)text replacingRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  if (self->_currentTextLength <= location + length)
  {
    currentTextLength = location + length;
  }

  else
  {
    currentTextLength = self->_currentTextLength;
  }

  if ([(SKUIComposeTextFieldConfiguration *)self->_configuration maxLength])
  {
    maxLength = [(SKUIComposeTextFieldConfiguration *)self->_configuration maxLength];
  }

  else
  {
    maxLength = 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = [textCopy length] - length + currentTextLength;
  if (v11 <= maxLength)
  {
    self->_currentTextLength = v11 & ~(v11 >> 63);
  }

  v12 = v11 <= maxLength;

  return v12;
}

- (void)_textChanged:(id)changed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained composeTextFieldValidityChanged:self];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end