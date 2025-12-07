@interface PKPassFaceViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)createBodyInvariantViews;
- (void)setPass:(id)pass colorProfile:(id)profile;
@end

@implementation PKPassFaceViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v16.receiver = self;
  v16.super_class = PKPassFaceViewAccessibility;
  [(PKPassFaceViewAccessibility *)&v16 _accessibilityLoadAccessibilityInformation];
  v3 = [(PKPassFaceViewAccessibility *)self safeValueForKey:@"_backgroundView"];
  v4 = [(PKPassFaceViewAccessibility *)self safeValueForKey:@"_pass"];
  v5 = [v4 safeValueForKey:@"logoRect"];
  [v3 _accessibilitySetRetainedValue:v5 forKey:@"LogoRect"];

  v6 = [(PKPassFaceViewAccessibility *)self safeValueForKey:@"_pass"];
  v7 = [v6 safeValueForKey:@"localizedDescription"];
  v15 = [v6 safeValueForKey:@"organizationName"];
  v8 = __UIAXStringForVariables();

  if ([v8 length])
  {
    v9 = [(PKPassFaceViewAccessibility *)self safeValueForKey:@"_backgroundView"];
    [v9 accessibilitySetIdentification:@"LogoImage"];

    v10 = [(PKPassFaceViewAccessibility *)self safeValueForKey:@"_backgroundView"];
    v11 = accessibilityLocalizedString(@"card.logo.hint");
    [v10 setAccessibilityHint:v11];

    v12 = [(PKPassFaceViewAccessibility *)self safeValueForKey:@"_backgroundView"];
    [v12 setIsAccessibilityElement:1];

    v13 = [(PKPassFaceViewAccessibility *)self safeValueForKey:@"_backgroundView"];
    [v13 setAccessibilityLabel:v8];
  }

  v14 = [(PKPassFaceViewAccessibility *)self safeValueForKey:@"_backgroundView"];
  [v14 setIsAccessibilityElement:0];
}

- (void)setPass:(id)pass colorProfile:(id)profile
{
  v5.receiver = self;
  v5.super_class = PKPassFaceViewAccessibility;
  [(PKPassFaceViewAccessibility *)&v5 setPass:pass colorProfile:profile];
  [(PKPassFaceViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)createBodyInvariantViews
{
  v2.receiver = self;
  v2.super_class = PKPassFaceViewAccessibility;
  [(PKPassFaceViewAccessibility *)&v2 createBodyInvariantViews];
  AXPerformBlockOnMainThreadAfterDelay();
}

void __55__PKPassFaceViewAccessibility_createBodyInvariantViews__block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x29EDCA608];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v1 = [*(a1 + 32) safeValueForKey:@"contentView"];
  v2 = [v1 safeValueForKey:@"subviews"];

  v3 = [v2 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v39;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v39 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v38 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v9 = [v8 allTargets];
          v26 = [v9 countByEnumeratingWithState:&v34 objects:v43 count:16];
          if (v26)
          {
            v10 = *v35;
            v28 = v9;
            v29 = v2;
            v23 = v4;
            v24 = v5;
            v25 = *v35;
            do
            {
              v11 = 0;
              do
              {
                if (*v35 != v10)
                {
                  v12 = v11;
                  objc_enumerationMutation(v9);
                  v11 = v12;
                }

                v27 = v11;
                v13 = *(*(&v34 + 1) + 8 * v11);
                v30 = 0u;
                v31 = 0u;
                v32 = 0u;
                v33 = 0u;
                v14 = [v8 actionsForTarget:v13 forControlEvent:64];
                v15 = [v14 countByEnumeratingWithState:&v30 objects:v42 count:16];
                if (v15)
                {
                  v16 = v15;
                  v17 = *v31;
                  while (2)
                  {
                    for (j = 0; j != v16; ++j)
                    {
                      if (*v31 != v17)
                      {
                        objc_enumerationMutation(v14);
                      }

                      v19 = *(*(&v30 + 1) + 8 * j);
                      if ([v19 isEqualToString:@"_deleteButtonPressed:"])
                      {
                        v20 = accessibilityLocalizedString(@"trash.button");
                        [v8 setAccessibilityLabel:v20];
                      }

                      else if ([v19 isEqualToString:@"_shareButtonPressed:"])
                      {
                        v22 = accessibilityLocalizedString(@"share.button");
                        [v8 setAccessibilityLabel:v22];

                        v2 = v29;
                        goto LABEL_29;
                      }
                    }

                    v16 = [v14 countByEnumeratingWithState:&v30 objects:v42 count:16];
                    if (v16)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v11 = v27 + 1;
                v9 = v28;
                v2 = v29;
                v4 = v23;
                v5 = v24;
                v10 = v25;
              }

              while (v27 + 1 != v26);
              v21 = [v28 countByEnumeratingWithState:&v34 objects:v43 count:16];
              v10 = v25;
              v26 = v21;
            }

            while (v21);
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v4);
  }

LABEL_29:
}

@end