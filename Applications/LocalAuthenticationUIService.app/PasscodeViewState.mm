@interface PasscodeViewState
+ (id)activeStateWithTitle:(id)title subtitle:(id)subtitle accessoryView:(id)view;
+ (id)backOffStateWithTitle:(id)title subtitle:(id)subtitle;
- (BOOL)isEqual:(id)equal;
- (PasscodeViewState)initWithRawValue:(int64_t)value title:(id)title subtitle:(id)subtitle accessoryView:(id)view style:(id)style;
- (id)withStyle:(id)style;
@end

@implementation PasscodeViewState

- (PasscodeViewState)initWithRawValue:(int64_t)value title:(id)title subtitle:(id)subtitle accessoryView:(id)view style:(id)style
{
  titleCopy = title;
  subtitleCopy = subtitle;
  viewCopy = view;
  styleCopy = style;
  v22.receiver = self;
  v22.super_class = PasscodeViewState;
  v17 = [(PasscodeViewState *)&v22 init];
  v18 = v17;
  if (v17)
  {
    v17->_rawValue = value;
    objc_storeStrong(&v17->_title, title);
    objc_storeStrong(&v18->_subtitle, subtitle);
    objc_storeStrong(&v18->_accessoryView, view);
    if (styleCopy)
    {
      v19 = styleCopy;
    }

    else
    {
      v19 = [PasscodeViewStyle defaultStyleWithBackgroundStyle:0];
    }

    style = v18->_style;
    v18->_style = v19;
  }

  return v18;
}

+ (id)activeStateWithTitle:(id)title subtitle:(id)subtitle accessoryView:(id)view
{
  viewCopy = view;
  subtitleCopy = subtitle;
  titleCopy = title;
  v10 = [[PasscodeViewState alloc] initWithRawValue:0 title:titleCopy subtitle:subtitleCopy accessoryView:viewCopy style:0];

  return v10;
}

+ (id)backOffStateWithTitle:(id)title subtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  titleCopy = title;
  v7 = [[PasscodeViewState alloc] initWithRawValue:1 title:titleCopy subtitle:subtitleCopy accessoryView:0 style:0];

  return v7;
}

- (id)withStyle:(id)style
{
  styleCopy = style;
  v5 = [PasscodeViewState alloc];
  rawValue = [(PasscodeViewState *)self rawValue];
  title = [(PasscodeViewState *)self title];
  subtitle = [(PasscodeViewState *)self subtitle];
  accessoryView = [(PasscodeViewState *)self accessoryView];
  v10 = [(PasscodeViewState *)v5 initWithRawValue:rawValue title:title subtitle:subtitle accessoryView:accessoryView style:styleCopy];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    rawValue = [(PasscodeViewState *)self rawValue];
    if (rawValue == [v5 rawValue] && (-[PasscodeViewState style](self, "style"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "style"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v7 == v8) && (-[PasscodeViewState title](self, "title"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "title"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqualToString:", v10), v10, v9, v11) && (-[PasscodeViewState subtitle](self, "subtitle"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "subtitle"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "isEqualToString:", v13), v13, v12, v14))
    {
      accessoryView = [(PasscodeViewState *)self accessoryView];
      accessoryView2 = [v5 accessoryView];
      v17 = accessoryView == accessoryView2;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end