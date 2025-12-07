@interface MobileMail_UIDimmingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityObscuredScreenAllowedViews;
@end

@implementation MobileMail_UIDimmingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MailActionsViewController"];
  [validationsCopy validateClass:@"MFModernAddressAtom"];
  [validationsCopy validateClass:@"UIDimmingView" isKindOfClass:@"UIView"];
}

- (id)_accessibilityObscuredScreenAllowedViews
{
  v18 = *MEMORY[0x29EDCA608];
  v16.receiver = self;
  v16.super_class = MobileMail_UIDimmingViewAccessibility;
  [(MobileMail_UIDimmingViewAccessibility *)&v16 _accessibilityObscuredScreenAllowedViews];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        NSClassFromString(&cfstr_Mfmodernaddres.isa);
        if (objc_opt_isKindOfClass())
        {

          v9 = [(MobileMail_UIDimmingViewAccessibility *)self safeValueForKey:@"superview", v12];
          v8 = [v9 _accessibilityFindDescendant:&__block_literal_global_15];

          if (v8)
          {
            v10 = [v3 ax_filteredArrayUsingBlock:&__block_literal_global_302];

            v3 = v10;
          }

          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = v3;
LABEL_12:

  return v3;
}

@end