@interface UIKeyboardEmojiCategory
+ (BOOL)isRTLMode;
+ (id)allowedCategoryIndexes;
+ (id)categories;
+ (id)categoriesByType;
+ (id)categoryForType:(int64_t)type;
+ (id)displayName:(int64_t)name;
+ (id)emojiCategoryStringForCategoryType:(int64_t)type;
+ (id)enabledCategoryIndexes;
+ (id)fallbackDisplayName:(int64_t)name;
+ (id)localizedStringForKey:(id)key;
+ (id)professionSkinToneEmojiBaseKey:(id)key;
+ (id)sharedManager;
+ (int64_t)categoryTypeForCategoryIndex:(unint64_t)index;
+ (int64_t)emojiCategoryTypeForCategoryString:(id)string;
+ (unint64_t)categoryIndexForCategoryType:(int64_t)type;
- (NSString)name;
- (void)dealloc;
- (void)localeDidChange;
- (void)releaseCategories;
@end

@implementation UIKeyboardEmojiCategory

+ (id)sharedManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__UIKeyboardEmojiCategory_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_MergedGlobals_1187 != -1)
  {
    dispatch_once(&_MergedGlobals_1187, block);
  }

  v2 = qword_1ED49F370;

  return v2;
}

void __40__UIKeyboardEmojiCategory_sharedManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1ED49F370;
  qword_1ED49F370 = v1;

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:qword_1ED49F370 selector:sel_localeDidChange name:*MEMORY[0x1E695D8F0] object:0];

  v4 = objc_opt_new();
  [qword_1ED49F370 setLocalizedNames:v4];

  v5 = objc_opt_new();
  [qword_1ED49F370 setShortLocalizedNames:v5];
}

- (void)localeDidChange
{
  v2 = +[UIKeyboardEmojiCategory sharedManager];
  localizedNames = [v2 localizedNames];
  [localizedNames removeAllObjects];

  v5 = +[UIKeyboardEmojiCategory sharedManager];
  shortLocalizedNames = [v5 shortLocalizedNames];
  [shortLocalizedNames removeAllObjects];
}

+ (id)enabledCategoryIndexes
{
  v3 = +[UIKeyboardEmojiPreferences sharedInstance];
  shouldShowRecents = [v3 shouldShowRecents];

  if (shouldShowRecents)
  {
    allowedCategoryIndexes = [self allowedCategoryIndexes];
  }

  else
  {
    allowedCategoryIndexes = &unk_1EFE2CBB0;
  }

  return allowedCategoryIndexes;
}

+ (id)allowedCategoryIndexes
{
  if (_UIApplicationIsStickerPickerService() && (_doesShowStickers & 1) != 0)
  {
    return &unk_1EFE2CBC8;
  }

  else
  {
    return &unk_1EFE2CBE0;
  }
}

+ (int64_t)categoryTypeForCategoryIndex:(unint64_t)index
{
  enabledCategoryIndexes = [self enabledCategoryIndexes];
  v6 = [enabledCategoryIndexes count];

  if (v6 <= index)
  {
    return 7;
  }

  enabledCategoryIndexes2 = [self enabledCategoryIndexes];
  v8 = [enabledCategoryIndexes2 objectAtIndex:index];
  integerValue = [v8 integerValue];

  return integerValue;
}

+ (unint64_t)categoryIndexForCategoryType:(int64_t)type
{
  enabledCategoryIndexes = [self enabledCategoryIndexes];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v6 = [enabledCategoryIndexes indexOfObject:v5];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

+ (id)categories
{
  v2 = categories_categories;
  if (!categories_categories)
  {
    v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(self, "numberOfCategories")}];
    v4 = categories_categories;
    categories_categories = v3;

    for (i = 0; i != 12; ++i)
    {
      v6 = objc_alloc_init(UIKeyboardEmojiCategory);
      [(UIKeyboardEmojiCategory *)v6 setCategoryType:i];
      [categories_categories addObject:v6];
    }

    v2 = categories_categories;
  }

  return v2;
}

+ (id)categoriesByType
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = categoriesByType_categories;
  if (!categoriesByType_categories)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = categoriesByType_categories;
    categoriesByType_categories = v4;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    allowedCategoryIndexes = [self allowedCategoryIndexes];
    v7 = [allowedCategoryIndexes countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(allowedCategoryIndexes);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          v12 = objc_alloc_init(UIKeyboardEmojiCategory);
          -[UIKeyboardEmojiCategory setCategoryType:](v12, "setCategoryType:", [v11 intValue]);
          [categoriesByType_categories setObject:v12 forKey:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [allowedCategoryIndexes countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v13 = objc_alloc_init(UIKeyboardEmojiCategory);
    [(UIKeyboardEmojiCategory *)v13 setCategoryType:9];
    [categoriesByType_categories setObject:v13 forKey:&unk_1EFE319C0];

    v3 = categoriesByType_categories;
  }

  return v3;
}

- (void)releaseCategories
{
  v2 = +[UIKeyboardEmojiCategory categories];
  [v2 removeAllObjects];
}

+ (id)professionSkinToneEmojiBaseKey:(id)key
{
  keyCopy = key;
  if ([keyCopy _containsSubstring:@"🏻"])
  {
    v4 = [keyCopy length];
    v5 = @"🏻";
LABEL_11:
    v6 = [keyCopy stringByReplacingOccurrencesOfString:v5 withString:&stru_1EFB14550 options:2 range:{0, v4}];
    goto LABEL_12;
  }

  if ([keyCopy _containsSubstring:@"🏼"])
  {
    v4 = [keyCopy length];
    v5 = @"🏼";
    goto LABEL_11;
  }

  if ([keyCopy _containsSubstring:@"🏽"])
  {
    v4 = [keyCopy length];
    v5 = @"🏽";
    goto LABEL_11;
  }

  if ([keyCopy _containsSubstring:@"🏾"])
  {
    v4 = [keyCopy length];
    v5 = @"🏾";
    goto LABEL_11;
  }

  if ([keyCopy _containsSubstring:@"🏿"])
  {
    v4 = [keyCopy length];
    v5 = @"🏿";
    goto LABEL_11;
  }

  v6 = keyCopy;
LABEL_12:
  v7 = v6;

  return v7;
}

+ (id)emojiCategoryStringForCategoryType:(int64_t)type
{
  v3 = 0;
  if (type > 6)
  {
    if (type <= 10)
    {
      switch(type)
      {
        case 7:
          v3 = getEMFEmojiCategoryFlags(0, a2);
          break;
        case 9:
          v3 = getEMFEmojiCategoryPrepopulated(0, a2);
          break;
        case 10:
          v3 = getEMFEmojiCategoryObjects(0, a2);
          break;
      }

      goto LABEL_32;
    }

    switch(type)
    {
      case 11:
        v3 = getEMFEmojiCategorySymbols(0, a2);
        goto LABEL_32;
      case 13:
        v4 = @"Memoji";
        break;
      case 14:
        v4 = @"Stickers";
        break;
      default:
        goto LABEL_32;
    }

    v3 = _UILocalizedStringInSystemLanguage(v4, v4);
    goto LABEL_32;
  }

  if (type > 2)
  {
    switch(type)
    {
      case 3:
        v3 = getEMFEmojiCategoryFoodAndDrink(0, a2);
        break;
      case 5:
        v3 = getEMFEmojiCategoryActivity(0, a2);
        break;
      case 6:
        v3 = getEMFEmojiCategoryTravelAndPlaces(0, a2);
        break;
    }
  }

  else if (type)
  {
    if (type == 1)
    {
      v3 = getEMFEmojiCategoryPeople(0, a2);
    }

    else if (type == 2)
    {
      v3 = getEMFEmojiCategoryNature(0, a2);
    }
  }

  else
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v5 = getEMFEmojiCategoryRecentsSymbolLoc_ptr;
    v13 = getEMFEmojiCategoryRecentsSymbolLoc_ptr;
    if (!getEMFEmojiCategoryRecentsSymbolLoc_ptr)
    {
      v6 = EmojiFoundationLibrary_0();
      v11[3] = dlsym(v6, "EMFEmojiCategoryRecents");
      getEMFEmojiCategoryRecentsSymbolLoc_ptr = v11[3];
      v5 = v11[3];
    }

    _Block_object_dispose(&v10, 8);
    if (!v5)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getEMFEmojiCategoryRecents(void)"];
      [currentHandler handleFailureInFunction:v9 file:@"UIKeyboardEmojiCategory.m" lineNumber:33 description:{@"%s", dlerror()}];

      __break(1u);
      return result;
    }

    v3 = *v5;
  }

LABEL_32:

  return v3;
}

+ (int64_t)emojiCategoryTypeForCategoryString:(id)string
{
  stringCopy = string;
  v5 = getEMFEmojiCategoryPrepopulated(stringCopy, v4);
  isEqualToString = objc_msgSend_isEqualToString_(stringCopy);

  if (isEqualToString)
  {
    v9 = 9;
  }

  else
  {
    v10 = getEMFEmojiCategoryPeople(v7, v8);
    v11 = objc_msgSend_isEqualToString_(stringCopy);

    if (v11)
    {
      v9 = 1;
    }

    else
    {
      v14 = getEMFEmojiCategoryNature(v12, v13);
      v15 = objc_msgSend_isEqualToString_(stringCopy);

      if (v15)
      {
        v9 = 2;
      }

      else
      {
        v18 = getEMFEmojiCategoryFoodAndDrink(v16, v17);
        v19 = objc_msgSend_isEqualToString_(stringCopy);

        if (v19)
        {
          v9 = 3;
        }

        else
        {
          v22 = getEMFEmojiCategoryActivity(v20, v21);
          v23 = objc_msgSend_isEqualToString_(stringCopy);

          if (v23)
          {
            v9 = 5;
          }

          else
          {
            v26 = getEMFEmojiCategoryTravelAndPlaces(v24, v25);
            v27 = objc_msgSend_isEqualToString_(stringCopy);

            if (v27)
            {
              v9 = 6;
            }

            else
            {
              v30 = getEMFEmojiCategoryObjects(v28, v29);
              v31 = objc_msgSend_isEqualToString_(stringCopy);

              if (v31)
              {
                v9 = 10;
              }

              else
              {
                v34 = getEMFEmojiCategorySymbols(v32, v33);
                v35 = objc_msgSend_isEqualToString_(stringCopy);

                if (v35)
                {
                  v9 = 11;
                }

                else
                {
                  v38 = getEMFEmojiCategoryFlags(v36, v37);
                  v39 = objc_msgSend_isEqualToString_(stringCopy);

                  if (v39)
                  {
                    v9 = 7;
                  }

                  else if (objc_msgSend_isEqualToString_(stringCopy))
                  {
                    v9 = 13;
                  }

                  else if (objc_msgSend_isEqualToString_(stringCopy))
                  {
                    v9 = 14;
                  }

                  else
                  {
                    v9 = 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v9;
}

+ (id)categoryForType:(int64_t)type
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [self emojiCategoryStringForCategoryType:?];
  categoriesByType = [self categoriesByType];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v8 = [categoriesByType objectForKey:v7];

  emoji = [v8 emoji];
  v10 = [emoji count];

  if (!type || !v10)
  {
    v11 = [getEMFEmojiCategoryClass() _emojiSetForIdentifier:v5];
    v12 = v11;
    if (v11)
    {
      v22 = v8;
      v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v24;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v24 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v23 + 1) + 8 * i);
            v20 = [UIKeyboardEmoji emojiWithString:v19 withVariantMask:[UIKeyboardEmojiCategory hasVariantsForEmoji:v19]];

            if (v20)
            {
              [v13 addObject:v20];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v16);
      }

      v8 = v22;
      if (v13)
      {
        [v22 setEmoji:v13];
      }
    }
  }

  return v8;
}

+ (BOOL)isRTLMode
{
  v2 = +[UIKeyboardImpl activeInstance];

  if (v2)
  {
    _deviceLanguage = +[UIKeyboardImpl activeInstance];
    v4 = +[UIView userInterfaceLayoutDirectionForSemanticContentAttribute:](UIView, "userInterfaceLayoutDirectionForSemanticContentAttribute:", [_deviceLanguage semanticContentAttribute]) == UIUserInterfaceLayoutDirectionRightToLeft;
  }

  else
  {
    v5 = MEMORY[0x1E695DF58];
    _deviceLanguage = [MEMORY[0x1E695DF58] _deviceLanguage];
    v4 = [v5 characterDirectionForLanguage:_deviceLanguage] == 2;
  }

  v6 = v4;

  return v6;
}

- (void)dealloc
{
  self->_categoryType = -1;
  [(UIKeyboardEmojiCategory *)self setEmoji:0];
  v3.receiver = self;
  v3.super_class = UIKeyboardEmojiCategory;
  [(UIKeyboardEmojiCategory *)&v3 dealloc];
}

+ (id)localizedStringForKey:(id)key
{
  keyCopy = key;
  v4 = TIBundleForInputMode();
  v5 = [v4 localizedStringForKey:keyCopy value:0 table:0];

  return v5;
}

- (NSString)name
{
  categoryType = [(UIKeyboardEmojiCategory *)self categoryType];
  if (categoryType > 0xE)
  {
    return 0;
  }

  else
  {
    return &off_1E7115CB0[categoryType]->isa;
  }
}

+ (id)displayName:(int64_t)name
{
  v3 = [self emojiCategoryStringForCategoryType:name];
  v4 = +[UIKeyboardEmojiCategory sharedManager];
  localizedNames = [v4 localizedNames];
  v6 = [localizedNames objectForKey:v3];

  if (!v6)
  {
    v7 = [getEMFEmojiCategoryClass() categoryWithIdentifier:v3];
    v8 = +[UIKeyboardEmojiCategory sharedManager];
    localizedNames2 = [v8 localizedNames];
    localizedName = [v7 localizedName];
    [localizedNames2 setObject:localizedName forKey:v3];
  }

  v11 = +[UIKeyboardEmojiCategory sharedManager];
  localizedNames3 = [v11 localizedNames];
  v13 = [localizedNames3 objectForKey:v3];

  return v13;
}

+ (id)fallbackDisplayName:(int64_t)name
{
  v3 = [self emojiCategoryStringForCategoryType:name];
  v4 = +[UIKeyboardEmojiCategory sharedManager];
  shortLocalizedNames = [v4 shortLocalizedNames];
  v6 = [shortLocalizedNames objectForKey:v3];

  if (!v6)
  {
    v7 = [getEMFEmojiCategoryClass() categoryWithIdentifier:v3];
    v8 = +[UIKeyboardEmojiCategory sharedManager];
    shortLocalizedNames2 = [v8 shortLocalizedNames];
    shortLocalizedName = [v7 shortLocalizedName];
    [shortLocalizedNames2 setObject:shortLocalizedName forKey:v3];
  }

  v11 = +[UIKeyboardEmojiCategory sharedManager];
  shortLocalizedNames3 = [v11 shortLocalizedNames];
  v13 = [shortLocalizedNames3 objectForKey:v3];

  return v13;
}

@end