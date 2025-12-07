@interface TIHardwareInputModeTableCell
- (id)subtitle;
@end

@implementation TIHardwareInputModeTableCell

- (id)subtitle
{
  if ([(UIKeyboardInputMode *)[(TIInputModeTableCell *)self inputMode] isExtensionInputMode])
  {
    v15.receiver = self;
    v15.super_class = TIHardwareInputModeTableCell;
    return [(TIInputModeTableCell *)&v15 subtitle];
  }

  else
  {
    identifier = [(UIKeyboardInputMode *)[(TIInputModeTableCell *)self inputMode] identifier];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [TIKeyboardListController inputModes:0];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v12;
LABEL_5:
      v10 = 0;
      while (1)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v5);
        }

        if ([identifier isEqualToString:UIKeyboardInputModeGetNormalizedIdentifier()])
        {
          v8 = [UIKeyboardInputModeGetComponentsFromIdentifier() objectForKey:@"hw"];
          if ([v8 length])
          {
            break;
          }
        }

        if (v7 == ++v10)
        {
          v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
          if (v7)
          {
            goto LABEL_5;
          }

          return [TIKeyboardListController displayNameForHardwareLayout:v8 inputMode:[(TIInputModeTableCell *)self inputMode]];
        }
      }
    }

    else
    {
      v8 = 0;
    }

    return [TIKeyboardListController displayNameForHardwareLayout:v8 inputMode:[(TIInputModeTableCell *)self inputMode]];
  }
}

@end