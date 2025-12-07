@interface TIInputModeTableCell
- (TIInputModeTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)subtitle;
- (id)title;
- (void)addDownloadIcon;
- (void)dealloc;
- (void)downloadButtonPressed:(id)pressed withEvent:(id)event;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)updateLabels;
@end

@implementation TIInputModeTableCell

- (TIInputModeTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = TIInputModeTableCell;
  v6 = [(TIInputModeTableCell *)&v8 initWithStyle:style reuseIdentifier:identifier specifier:?];
  if (v6)
  {
    -[TIInputModeTableCell setInputMode:](v6, "setInputMode:", +[UIKeyboardInputMode keyboardInputModeWithIdentifier:](UIKeyboardInputMode, "keyboardInputModeWithIdentifier:", [specifier propertyForKey:PSIDKey]));
    [(TIInputModeTableCell *)v6 updateLabels];
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TIInputModeTableCell;
  [(TIInputModeTableCell *)&v3 dealloc];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v5.receiver = self;
  v5.super_class = TIInputModeTableCell;
  [(TIInputModeTableCell *)&v5 refreshCellContentsWithSpecifier:?];
  -[TIInputModeTableCell setInputMode:](self, "setInputMode:", +[UIKeyboardInputMode keyboardInputModeWithIdentifier:](UIKeyboardInputMode, "keyboardInputModeWithIdentifier:", [specifier propertyForKey:PSIDKey]));
  [(TIInputModeTableCell *)self updateLabels];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = TIInputModeTableCell;
  [(TIInputModeTableCell *)&v3 prepareForReuse];
  [(TIInputModeTableCell *)self setInputMode:0];
  [(TIInputModeTableCell *)self setAccessoryView:0];
}

- (void)updateLabels
{
  [-[TIInputModeTableCell textLabel](self "textLabel")];
  [-[TIInputModeTableCell detailTextLabel](self "detailTextLabel")];
  if ([(TIInputModeTableCell *)self hasDownloadableAssets])
  {

    [(TIInputModeTableCell *)self addDownloadIcon];
  }
}

- (id)title
{
  isExtensionInputMode = [(UIKeyboardInputMode *)[(TIInputModeTableCell *)self inputMode] isExtensionInputMode];
  inputMode = [(TIInputModeTableCell *)self inputMode];
  if (isExtensionInputMode)
  {

    return [(UIKeyboardInputMode *)inputMode safe__extendedDisplayName];
  }

  else
  {
    [(UIKeyboardInputMode *)inputMode identifier];
    v6 = [TIKeyboardListController keyboardDisplayNameForIdentifier:[(UIKeyboardInputMode *)[(TIInputModeTableCell *)self inputMode] languageWithRegion]];
    if ([objc_msgSend(UIKeyboardInputModeGetComponentsFromIdentifier() objectForKey:{@"kCFLocaleVariantCodeKey", "length"}])
    {
      v7 = TUIKeyboardTitle();
    }

    else
    {
      v7 = 0;
    }

    if ([v7 length])
    {
      return [NSString stringWithFormat:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"KEYBOARD_LANGUAGE_%@_WITH_VARIANT_%@", &stru_49C80, @"Keyboard"], v6, v7];
    }

    else
    {
      return v6;
    }
  }
}

- (id)subtitle
{
  if ([(UIKeyboardInputMode *)[(TIInputModeTableCell *)self inputMode] isExtensionInputMode])
  {
    v3 = +[NSLocale localeForBundleLanguage:](NSLocale, "localeForBundleLanguage:", +[NSBundle mainBundle]);
    primaryLanguage = [(UIKeyboardInputMode *)[(TIInputModeTableCell *)self inputMode] primaryLanguage];

    return [v3 displayNameForKey:NSLocaleLanguageCode value:primaryLanguage];
  }

  else
  {
    identifier = [(UIKeyboardInputMode *)[(TIInputModeTableCell *)self inputMode] identifier];
    NormalizedIdentifier = UIKeyboardInputModeGetNormalizedIdentifier();
    v7 = [TIKeyboardListController keyboardDisplayNameForIdentifier:[(UIKeyboardInputMode *)[(TIInputModeTableCell *)self inputMode] languageWithRegion]];
    ComponentsFromIdentifier = UIKeyboardInputModeGetComponentsFromIdentifier();
    if ([objc_msgSend(ComponentsFromIdentifier objectForKey:{@"kCFLocaleVariantCodeKey", "length"}])
    {
      v9 = TUIKeyboardTitle();
    }

    else
    {
      v9 = 0;
    }

    v10 = [ComponentsFromIdentifier objectForKey:@"sw"];
    if ([v10 length])
    {
      v11 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:v10, &stru_49C80, @"KeyboardLayouts"];
    }

    else
    {
      v11 = 0;
    }

    if ([v7 isEqualToString:v11] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", v11) & 1) != 0 || (v15[0] = _NSConcreteStackBlock, v15[1] = 3221225472, v15[2] = sub_F7F8, v15[3] = &unk_492C0, v15[4] = NormalizedIdentifier, objc_msgSend(objc_msgSend(+[TIKeyboardListController inputModes](TIKeyboardListController, "inputModes"), "indexesOfObjectsPassingTest:", v15), "count") <= 1) && (objc_msgSend(objc_msgSend(+[TIKeyboardListController softwareLayoutsForBaseInputMode:](TIKeyboardListController, "softwareLayoutsForBaseInputMode:", NormalizedIdentifier), "firstObject"), "isEqualToString:", v10))
    {
      v11 = 0;
    }

    if (TIInputModeIsChineseShuangpin(identifier))
    {
      v11 = TIGetCurrentShuangpinName();
    }

    if (TIInputModeIsChineseWubi(identifier))
    {
      v11 = TIGetCurrentWubiStandardName();
    }

    if ([+[TIInputModeAssetStatusManager sharedManager](TIInputModeAssetStatusManager "sharedManager")] == &dword_0 + 2)
    {
      v13 = KeyboardSettingsLog(2, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = identifier;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Showing downloading progress title for input mode %@", buf, 0xCu);
      }

      return [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"ASSETS_DOWNLOADING_PROGRESS_TITLE", &stru_49C80, @"Keyboard"];
    }

    return v11;
  }
}

- (void)addDownloadIcon
{
  if (![(TIInputModeTableCell *)self accessoryView])
  {
    v3 = TIDownloadButton();
    [(UIButton *)v3 addTarget:self action:"downloadButtonPressed:withEvent:" forControlEvents:64];

    [(TIInputModeTableCell *)self setAccessoryView:v3];
  }
}

- (void)downloadButtonPressed:(id)pressed withEvent:(id)event
{
  v5 = KeyboardSettingsLog(self, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    inputMode = [(TIInputModeTableCell *)self inputMode];
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Download button pressed for %@", &v6, 0xCu);
  }

  [+[TIInputModeAssetStatusManager sharedManager](TIInputModeAssetStatusManager "sharedManager")];
}

@end