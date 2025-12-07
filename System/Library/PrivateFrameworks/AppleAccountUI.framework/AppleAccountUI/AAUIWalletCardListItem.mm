@interface AAUIWalletCardListItem
- (AAUIWalletCardListItem)initWithTitle:(id)title subtitle:(id)subtitle icon:(id)icon uniqueIdentifier:(id)identifier;
- (NSString)subtitle;
- (NSString)title;
- (NSString)uniqueIdentifier;
- (UIImage)icon;
- (void)setIcon:(id)icon;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)setUniqueIdentifier:(id)identifier;
@end

@implementation AAUIWalletCardListItem

- (NSString)uniqueIdentifier
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self, v3);
  AAUIWalletCardListItem.uniqueIdentifier.getter();
  v9 = v4;
  MEMORY[0x1E69E5920](self);
  if (v9)
  {
    v6 = sub_1C5596554();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setUniqueIdentifier:(id)identifier
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](identifier, v3);
  MEMORY[0x1E69E5928](self, v4);
  if (identifier)
  {
    v6 = sub_1C5596574();
    v7 = v5;
    MEMORY[0x1E69E5920](identifier);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  AAUIWalletCardListItem.uniqueIdentifier.setter(v8, v9);
  MEMORY[0x1E69E5920](self);
}

- (UIImage)icon
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self, v3);
  v6 = AAUIWalletCardListItem.icon.getter();
  MEMORY[0x1E69E5920](self);

  return v6;
}

- (void)setIcon:(id)icon
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](icon, v4);
  MEMORY[0x1E69E5928](self, v5);
  AAUIWalletCardListItem.icon.setter(icon, v6);
  MEMORY[0x1E69E5920](self);
}

- (NSString)title
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self, v3);
  AAUIWalletCardListItem.title.getter();
  v9 = v4;
  MEMORY[0x1E69E5920](self);
  if (v9)
  {
    v6 = sub_1C5596554();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setTitle:(id)title
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](title, v3);
  MEMORY[0x1E69E5928](self, v4);
  if (title)
  {
    v6 = sub_1C5596574();
    v7 = v5;
    MEMORY[0x1E69E5920](title);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  AAUIWalletCardListItem.title.setter(v8, v9);
  MEMORY[0x1E69E5920](self);
}

- (NSString)subtitle
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self, v3);
  AAUIWalletCardListItem.subtitle.getter();
  v9 = v4;
  MEMORY[0x1E69E5920](self);
  if (v9)
  {
    v6 = sub_1C5596554();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setSubtitle:(id)subtitle
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](subtitle, v3);
  MEMORY[0x1E69E5928](self, v4);
  if (subtitle)
  {
    v6 = sub_1C5596574();
    v7 = v5;
    MEMORY[0x1E69E5920](subtitle);
    v8 = v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  AAUIWalletCardListItem.subtitle.setter(v8, v9);
  MEMORY[0x1E69E5920](self);
}

- (AAUIWalletCardListItem)initWithTitle:(id)title subtitle:(id)subtitle icon:(id)icon uniqueIdentifier:(id)identifier
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](title, v6);
  MEMORY[0x1E69E5928](subtitle, v7);
  MEMORY[0x1E69E5928](icon, v8);
  MEMORY[0x1E69E5928](identifier, v9);
  if (title)
  {
    v22 = sub_1C5596574();
    v23 = v10;
    MEMORY[0x1E69E5920](title);
    v24 = v22;
    v25 = v23;
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  if (subtitle)
  {
    v18 = sub_1C5596574();
    v19 = v11;
    MEMORY[0x1E69E5920](subtitle);
    v20 = v18;
    v21 = v19;
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  if (identifier)
  {
    v14 = sub_1C5596574();
    v15 = v12;
    MEMORY[0x1E69E5920](identifier);
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  return AAUIWalletCardListItem.init(title:subtitle:icon:uniqueIdentifier:)(v24, v25, v20, v21, icon, v16, v17);
}

@end