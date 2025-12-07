@interface PopUpCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
@end

@implementation PopUpCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_SFBrowsingAssistantPopUpCell" isKindOfClass:@"UICollectionViewListCell"];
  [validationsCopy validateClass:@"_SFBrowsingAssistantPopUpCell" hasSwiftField:@"title" withSwiftType:"Optional<String>"];
  [validationsCopy validateClass:@"_SFBrowsingAssistantPopUpCell" hasSwiftField:@"subtitle" withSwiftType:"Optional<String>"];
}

- (id)accessibilityValue
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = [(PopUpCellAccessibility *)self safeSwiftStringForKey:@"subtitle"];
  v3 = v2;
  if (v2)
  {
    text = v2;
  }

  else
  {
    v17 = 0;
    objc_opt_class();
    v5 = __UIAccessibilityCastAsClass();
    v6 = v5;
    if (v5)
    {
      v15 = 0u;
      v16 = 0u;
      v14 = 0u;
      accessories = [v5 accessories];
      text = [accessories countByEnumeratingWithState:&v13 objects:v18 count:16];
      if (text)
      {
        v8 = *v14;
        while (2)
        {
          for (i = 0; i != text; ++i)
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(accessories);
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = 0;
              objc_opt_class();
              v10 = __UIAccessibilityCastAsClass();
              if (v17 == 1)
              {
                abort();
              }

              v11 = v10;
              text = [v10 text];

              goto LABEL_15;
            }
          }

          text = [accessories countByEnumeratingWithState:&v13 objects:v18 count:16];
          if (text)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }

    else
    {
      text = 0;
    }
  }

  return text;
}

@end