@interface AVTStickerPresetOverride
+ (id)presetOverrideFromDictionary:(id)dictionary forCategoryName:(id)name;
- (AVTStickerPresetOverride)initWithCategory:(int64_t)category presetIdentifier:(id)identifier unless:(id)unless;
- (void)applyToAvatar:(id)avatar reversionContext:(id)context;
@end

@implementation AVTStickerPresetOverride

+ (id)presetOverrideFromDictionary:(id)dictionary forCategoryName:(id)name
{
  nameCopy = name;
  dictionaryCopy = dictionary;
  v7 = [AVTStickerPresetOverride alloc];
  AVTPresetCategoryFromString(nameCopy);

  v8 = [dictionaryCopy objectForKeyedSubscript:?];
  v9 = [dictionaryCopy objectForKeyedSubscript:?];

  v10 = [AVTStickerPresetOverride initWithCategory:v7 presetIdentifier:"initWithCategory:presetIdentifier:unless:" unless:?];

  return v10;
}

- (AVTStickerPresetOverride)initWithCategory:(int64_t)category presetIdentifier:(id)identifier unless:(id)unless
{
  identifierCopy = identifier;
  unlessCopy = unless;
  v14.receiver = self;
  v14.super_class = AVTStickerPresetOverride;
  v11 = [(AVTStickerPresetOverride *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_category = category;
    objc_storeStrong(&v11->_unlessIdentifiers, unless);
    objc_storeStrong(&v12->_presetIdentifier, identifier);
  }

  return v12;
}

- (void)applyToAvatar:(id)avatar reversionContext:(id)context
{
  avatarCopy = avatar;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = avatarCopy;
    [(AVTStickerPresetOverride *)self category];
    presetIdentifier = [(AVTStickerPresetOverride *)self presetIdentifier];
    v9 = [AVTPreset presetWithCategory:"presetWithCategory:identifier:" identifier:?];

    [(AVTStickerPresetOverride *)self category];
    v10 = [v7 presetForCategory:?];
    unlessIdentifiers = [(AVTStickerPresetOverride *)self unlessIdentifiers];
    identifier = [v10 identifier];
    v13 = [unlessIdentifiers containsObject:?];

    if ((v13 & 1) == 0)
    {
      if (contextCopy)
      {
        v14 = [AVTStickerPresetOverride alloc];
        [(AVTStickerPresetOverride *)self category];
        identifier2 = [v10 identifier];
        unlessIdentifiers2 = [(AVTStickerPresetOverride *)self unlessIdentifiers];
        v17 = [AVTStickerPresetOverride initWithCategory:v14 presetIdentifier:"initWithCategory:presetIdentifier:unless:" unless:?];

        [contextCopy savePresetOverride:?];
      }

      [(AVTStickerPresetOverride *)self category];
      [v7 setPreset:? forCategory:? animated:?];
    }
  }
}

@end