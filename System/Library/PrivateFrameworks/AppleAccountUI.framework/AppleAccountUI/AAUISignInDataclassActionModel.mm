@interface AAUISignInDataclassActionModel
- (NSString)detailText;
- (NSString)helpLinkTitle;
- (NSString)helpLinkURL;
- (NSString)imageName;
- (NSString)primaryButton;
- (NSString)secondaryButton;
- (NSString)symbolAccessibilityLabel;
- (NSString)symbolName;
- (NSString)title;
- (UIImage)image;
- (UIView)contentView;
- (UIView)secondaryView;
- (int64_t)contentViewLayout;
- (void)setContentView:(id)view;
- (void)setContentViewLayout:(int64_t)layout;
- (void)setDetailText:(id)text;
- (void)setHelpLinkTitle:(id)title;
- (void)setHelpLinkURL:(id)l;
- (void)setImage:(id)image;
- (void)setImageName:(id)name;
- (void)setPrimaryButton:(id)button;
- (void)setSecondaryButton:(id)button;
- (void)setSecondaryView:(id)view;
- (void)setSymbolAccessibilityLabel:(id)label;
- (void)setSymbolName:(id)name;
- (void)setTitle:(id)title;
@end

@implementation AAUISignInDataclassActionModel

- (NSString)title
{
  MEMORY[0x1E69E5928](self, a2);
  sub_1C53FE758();
  v7 = v2;
  MEMORY[0x1E69E5920](self);
  if (v7)
  {
    v4 = sub_1C5596554();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setTitle:(id)title
{
  MEMORY[0x1E69E5928](title, a2);
  MEMORY[0x1E69E5928](self, v3);
  if (title)
  {
    v5 = sub_1C5596574();
    v6 = v4;
    MEMORY[0x1E69E5920](title);
    v7 = v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  sub_1C53FE8A0(v7, v8);
  MEMORY[0x1E69E5920](self);
}

- (NSString)detailText
{
  MEMORY[0x1E69E5928](self, a2);
  sub_1C53FEC0C();
  v7 = v2;
  MEMORY[0x1E69E5920](self);
  if (v7)
  {
    v4 = sub_1C5596554();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setDetailText:(id)text
{
  MEMORY[0x1E69E5928](text, a2);
  MEMORY[0x1E69E5928](self, v3);
  if (text)
  {
    v5 = sub_1C5596574();
    v6 = v4;
    MEMORY[0x1E69E5920](text);
    v7 = v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  sub_1C53FED54(v7, v8);
  MEMORY[0x1E69E5920](self);
}

- (NSString)primaryButton
{
  MEMORY[0x1E69E5928](self, a2);
  sub_1C53FF080();
  v7 = v2;
  MEMORY[0x1E69E5920](self);
  if (v7)
  {
    v4 = sub_1C5596554();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setPrimaryButton:(id)button
{
  MEMORY[0x1E69E5928](button, a2);
  MEMORY[0x1E69E5928](self, v3);
  if (button)
  {
    v5 = sub_1C5596574();
    v6 = v4;
    MEMORY[0x1E69E5920](button);
    v7 = v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  sub_1C53FF1C8(v7, v8);
  MEMORY[0x1E69E5920](self);
}

- (NSString)secondaryButton
{
  MEMORY[0x1E69E5928](self, a2);
  sub_1C53FF4F4();
  v7 = v2;
  MEMORY[0x1E69E5920](self);
  if (v7)
  {
    v4 = sub_1C5596554();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setSecondaryButton:(id)button
{
  MEMORY[0x1E69E5928](button, a2);
  MEMORY[0x1E69E5928](self, v3);
  if (button)
  {
    v5 = sub_1C5596574();
    v6 = v4;
    MEMORY[0x1E69E5920](button);
    v7 = v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  sub_1C53FF63C(v7, v8);
  MEMORY[0x1E69E5920](self);
}

- (int64_t)contentViewLayout
{
  MEMORY[0x1E69E5928](self, a2);
  v4 = sub_1C53FF90C();
  MEMORY[0x1E69E5920](self);
  return v4;
}

- (void)setContentViewLayout:(int64_t)layout
{
  MEMORY[0x1E69E5928](self, a2);
  sub_1C53FF9C8(layout);
  MEMORY[0x1E69E5920](self);
}

- (UIImage)image
{
  MEMORY[0x1E69E5928](self, a2);
  v4 = sub_1C53FFC58();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setImage:(id)image
{
  MEMORY[0x1E69E5928](image, a2);
  MEMORY[0x1E69E5928](self, v4);
  sub_1C53FFD30(image, v5);
  MEMORY[0x1E69E5920](self);
}

- (NSString)imageName
{
  MEMORY[0x1E69E5928](self, a2);
  sub_1C5400058();
  v7 = v2;
  MEMORY[0x1E69E5920](self);
  if (v7)
  {
    v4 = sub_1C5596554();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setImageName:(id)name
{
  MEMORY[0x1E69E5928](name, a2);
  MEMORY[0x1E69E5928](self, v3);
  if (name)
  {
    v5 = sub_1C5596574();
    v6 = v4;
    MEMORY[0x1E69E5920](name);
    v7 = v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  sub_1C54001A0(v7, v8);
  MEMORY[0x1E69E5920](self);
}

- (NSString)symbolName
{
  MEMORY[0x1E69E5928](self, a2);
  sub_1C54004DC();
  v7 = v2;
  MEMORY[0x1E69E5920](self);
  if (v7)
  {
    v4 = sub_1C5596554();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setSymbolName:(id)name
{
  MEMORY[0x1E69E5928](name, a2);
  MEMORY[0x1E69E5928](self, v3);
  if (name)
  {
    v5 = sub_1C5596574();
    v6 = v4;
    MEMORY[0x1E69E5920](name);
    v7 = v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  sub_1C5400624(v7, v8);
  MEMORY[0x1E69E5920](self);
}

- (NSString)symbolAccessibilityLabel
{
  MEMORY[0x1E69E5928](self, a2);
  sub_1C5400960();
  v7 = v2;
  MEMORY[0x1E69E5920](self);
  if (v7)
  {
    v4 = sub_1C5596554();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setSymbolAccessibilityLabel:(id)label
{
  MEMORY[0x1E69E5928](label, a2);
  MEMORY[0x1E69E5928](self, v3);
  if (label)
  {
    v5 = sub_1C5596574();
    v6 = v4;
    MEMORY[0x1E69E5920](label);
    v7 = v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  sub_1C5400AA8(v7, v8);
  MEMORY[0x1E69E5920](self);
}

- (UIView)contentView
{
  MEMORY[0x1E69E5928](self, a2);
  v4 = sub_1C5400D88();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setContentView:(id)view
{
  MEMORY[0x1E69E5928](view, a2);
  MEMORY[0x1E69E5928](self, v4);
  sub_1C5400E60(view, v5);
  MEMORY[0x1E69E5920](self);
}

- (UIView)secondaryView
{
  MEMORY[0x1E69E5928](self, a2);
  v4 = sub_1C540112C();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setSecondaryView:(id)view
{
  MEMORY[0x1E69E5928](view, a2);
  MEMORY[0x1E69E5928](self, v4);
  sub_1C5401204(view, v5);
  MEMORY[0x1E69E5920](self);
}

- (NSString)helpLinkTitle
{
  MEMORY[0x1E69E5928](self, a2);
  sub_1C540152C();
  v7 = v2;
  MEMORY[0x1E69E5920](self);
  if (v7)
  {
    v4 = sub_1C5596554();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setHelpLinkTitle:(id)title
{
  MEMORY[0x1E69E5928](title, a2);
  MEMORY[0x1E69E5928](self, v3);
  if (title)
  {
    v5 = sub_1C5596574();
    v6 = v4;
    MEMORY[0x1E69E5920](title);
    v7 = v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  sub_1C5401674(v7, v8);
  MEMORY[0x1E69E5920](self);
}

- (NSString)helpLinkURL
{
  MEMORY[0x1E69E5928](self, a2);
  sub_1C54019B0();
  v7 = v2;
  MEMORY[0x1E69E5920](self);
  if (v7)
  {
    v4 = sub_1C5596554();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setHelpLinkURL:(id)l
{
  MEMORY[0x1E69E5928](l, a2);
  MEMORY[0x1E69E5928](self, v3);
  if (l)
  {
    v5 = sub_1C5596574();
    v6 = v4;
    MEMORY[0x1E69E5920](l);
    v7 = v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  sub_1C5401AF8(v7, v8);
  MEMORY[0x1E69E5920](self);
}

@end