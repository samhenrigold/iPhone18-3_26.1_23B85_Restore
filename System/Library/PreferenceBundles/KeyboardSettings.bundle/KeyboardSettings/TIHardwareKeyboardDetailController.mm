@interface TIHardwareKeyboardDetailController
- (NSString)inputMode;
- (UIKeyboardInputMode)uiKeyboardinputMode;
- (id)newSpecifiers;
- (id)specifiers;
- (void)dealloc;
- (void)setHardwareLayout:(id)layout;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TIHardwareKeyboardDetailController

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TIHardwareKeyboardDetailController;
  [(TIHardwareKeyboardDetailController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = TIHardwareKeyboardDetailController;
  [(TIHardwareKeyboardDetailController *)&v4 viewDidLoad];
  v3 = OBJC_IVAR___PSListController__table;
  [*&self->PSListController_opaque[OBJC_IVAR___PSListController__table] setEstimatedSectionHeaderHeight:0.0];
  [*&self->PSListController_opaque[v3] setEstimatedSectionFooterHeight:0.0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = TIHardwareKeyboardDetailController;
  [(TIHardwareKeyboardDetailController *)&v6 viewWillAppear:appear];
  specifier = [(TIHardwareKeyboardDetailController *)self specifier];
  v5 = [specifier propertyForKey:PSTableCellKey];
  if (v5)
  {
    [-[TIHardwareKeyboardDetailController navigationItem](self "navigationItem")];
  }
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  result = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!result)
  {
    result = [(TIHardwareKeyboardDetailController *)self newSpecifiers];
    *&self->PSListController_opaque[v3] = result;
  }

  return result;
}

- (id)newSpecifiers
{
  inputMode = [(TIHardwareKeyboardDetailController *)self inputMode];
  obj = UIKeyboardGetSupportedHardwareKeyboardsForInputMode();
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(obj, "count") + 1}];
  v5 = [PSSpecifier groupSpecifierWithID:0];
  [v5 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
  v23 = v4;
  v21 = v5;
  [v4 addObject:v5];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = +[TIKeyboardListController inputModes];
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v29 != v9)
      {
        objc_enumerationMutation(v6);
      }

      if ([(NSString *)inputMode isEqualToString:UIKeyboardInputModeGetNormalizedIdentifier()])
      {
        v11 = [UIKeyboardInputModeGetComponentsFromIdentifier() objectForKey:@"hw"];
        if ([v11 length])
        {
          break;
        }
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v11 = 0;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    v15 = PSIDKey;
    v16 = PSRadioGroupCheckedSpecifierKey;
    do
    {
      v17 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v24 + 1) + 8 * v17);
        v19 = [PSSpecifier preferenceSpecifierNamed:[TIKeyboardListController displayNameForHardwareLayout:v18 inputMode:[(TIHardwareKeyboardDetailController *)self uiKeyboardinputMode]] target:self set:0 get:0 detail:0 cell:3 edit:0];
        [v19 setProperty:v18 forKey:v15];
        if ([v11 isEqualToString:v18])
        {
          [v21 setProperty:v19 forKey:v16];
        }

        [v23 addObject:v19];
        v17 = v17 + 1;
      }

      while (v13 != v17);
      v13 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v13);
  }

  return v23;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v10.receiver = self;
  v10.super_class = TIHardwareKeyboardDetailController;
  [TIHardwareKeyboardDetailController tableView:"tableView:didSelectRowAtIndexPath:" didSelectRowAtIndexPath:?];
  v7 = [view cellForRowAtIndexPath:path];
  if (v7)
  {
    specifier = [v7 specifier];
    v9 = [specifier propertyForKey:PSIDKey];
    if ([v9 length])
    {
      [(TIHardwareKeyboardDetailController *)self setHardwareLayout:v9];
    }
  }
}

- (NSString)inputMode
{
  result = self->_inputMode;
  if (!result)
  {
    specifier = [(TIHardwareKeyboardDetailController *)self specifier];
    result = [objc_msgSend(specifier propertyForKey:{PSIDKey), "copy"}];
    self->_inputMode = result;
  }

  return result;
}

- (UIKeyboardInputMode)uiKeyboardinputMode
{
  result = self->_uiKeyboardinputMode;
  if (!result)
  {
    specifier = [(TIHardwareKeyboardDetailController *)self specifier];
    result = -[UIKeyboardInputMode copy](+[UIKeyboardInputMode keyboardInputModeWithIdentifier:](UIKeyboardInputMode, "keyboardInputModeWithIdentifier:", [specifier propertyForKey:PSIDKey]), "copy");
    self->_uiKeyboardinputMode = result;
  }

  return result;
}

- (void)setHardwareLayout:(id)layout
{
  v5 = [+[TIKeyboardListController inputModes](TIKeyboardListController "inputModes")];
  if ([v5 count])
  {
    v6 = [v5 count];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = 0;
      v13 = v6 - 1;
LABEL_4:
      v10 = v9;
      do
      {
        [v5 objectAtIndex:v10];
        if ([(NSString *)[(TIHardwareKeyboardDetailController *)self inputMode] isEqualToString:UIKeyboardInputModeGetNormalizedIdentifier()])
        {
          v11 = [UIKeyboardInputModeGetComponentsFromIdentifier() mutableCopy];
          v12 = [v11 objectForKey:@"hw"];
          if (!v12 || ![v12 isEqualToString:layout])
          {
            [v11 setObject:layout forKey:@"hw"];
            [v5 replaceObjectAtIndex:v10 withObject:UIKeyboardInputModeGetIdentifierFromComponents()];
            v9 = v10 + 1;
            v8 = 1;
            if (v13 != v10)
            {
              goto LABEL_4;
            }

            goto LABEL_13;
          }
        }

        ++v10;
      }

      while (v7 != v10);
      if ((v8 & 1) == 0)
      {
        return;
      }

LABEL_13:

      [TIKeyboardListController setInputModes:v5];
    }
  }
}

@end