@interface PSListControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityHandleNavigationControllerDidEndTransition;
- (id)loadSpecifiersFromPlistName:(id)name target:(id)target;
- (void)highlightSpecifierWithID:(id)d;
- (void)reloadSpecifierAtIndex:(int)index animated:(BOOL)animated;
@end

@implementation PSListControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PSListController" hasInstanceMethod:@"highlightSpecifierWithID:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"PSRootController"];
  [validationsCopy validateClass:@"PSRootController" isKindOfClass:@"UINavigationController"];
}

- (id)loadSpecifiersFromPlistName:(id)name target:(id)target
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = PSListControllerAccessibility;
  v7 = [(PSListControllerAccessibility *)&v13 loadSpecifiersFromPlistName:nameCopy target:target];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __68__PSListControllerAccessibility_loadSpecifiersFromPlistName_target___block_invoke;
  v10[3] = &unk_29F2ED3C0;
  v11 = nameCopy;
  selfCopy = self;
  v8 = nameCopy;
  [v7 enumerateObjectsUsingBlock:v10];

  return v7;
}

void __68__PSListControllerAccessibility_loadSpecifiersFromPlistName_target___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setProperty:v3 forKey:@"axStringsFileName"];
  v5 = [*(a1 + 40) safeValueForKey:@"bundle"];
  [v4 setProperty:v5 forKey:@"axBundle"];
}

- (void)highlightSpecifierWithID:(id)d
{
  dCopy = d;
  v15.receiver = self;
  v15.super_class = PSListControllerAccessibility;
  [(PSListControllerAccessibility *)&v15 highlightSpecifierWithID:dCopy];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__0;
  v13 = __Block_byref_object_dispose__0;
  v14 = 0;
  v8 = dCopy;
  AXPerformSafeBlock();
  v5 = v10[5];

  _Block_object_dispose(&v9, 8);
  v6 = [v5 propertyForKey:*MEMORY[0x29EDC6358]];

  LODWORD(v5) = *MEMORY[0x29EDC7EA8];
  accessibilityValue = [v6 accessibilityValue];
  UIAccessibilityPostNotification(v5, accessibilityValue);
}

uint64_t __58__PSListControllerAccessibility_highlightSpecifierWithID___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) specifierForID:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

- (BOOL)_accessibilityHandleNavigationControllerDidEndTransition
{
  v31[2] = *MEMORY[0x29EDCA608];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v3 = [*MEMORY[0x29EDC8008] _accessibilityValueForKey:@"applicationDidBecomeActiveDate"];
    date = [MEMORY[0x29EDB8DB0] date];
    v5 = date;
    if (v3 && ([date timeIntervalSinceDate:v3], v6 <= 1.0))
    {
    }

    else
    {
      mainBundle = [MEMORY[0x29EDB9F48] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      v9 = [bundleIdentifier isEqualToString:@"com.apple.Bridge"];

      if ((v9 & 1) == 0)
      {
        NSClassFromString(&cfstr_Uisplitviewcon_1.isa);
        v10 = [(PSListControllerAccessibility *)self safeValueForKey:@"view"];
        if (v10)
        {
          v11 = v10;
          while (1)
          {
            v12 = [v11 safeValueForKey:@"_viewDelegate"];
            if (objc_opt_isKindOfClass())
            {
              break;
            }

            superview = [v11 superview];

            v11 = superview;
            if (!superview)
            {
              return 0;
            }
          }

          v16 = v12;
          if ([v16 isCollapsed])
          {
            v14 = 0;
LABEL_35:

            return v14;
          }

          objc_opt_class();
          v17 = [(PSListControllerAccessibility *)self safeValueForKey:@"parentViewController"];
          v18 = __UIAccessibilityCastAsClass();

          navigationBar = [v18 navigationBar];
          defaultVoiceOverOptions = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
          v21 = [navigationBar _accessibilityLeafDescendantsWithOptions:defaultVoiceOverOptions];
          firstObject = [v21 firstObject];

          if (firstObject)
          {
LABEL_16:
            v23 = *MEMORY[0x29EDC7F10];
            v31[0] = *MEMORY[0x29EDBDB28];
            v31[1] = firstObject;
            v24 = [MEMORY[0x29EDB8D80] arrayWithObjects:v31 count:2];
            UIAccessibilityPostNotification(v23, v24);

            v14 = 1;
            v25 = firstObject;
LABEL_33:

            goto LABEL_34;
          }

          v25 = [(PSListControllerAccessibility *)self safeValueForKey:@"_table"];
          if ([v25 _accessibilityHasOrderedChildren])
          {
            accessibilityElementCount = [v25 accessibilityElementCount];
            if (accessibilityElementCount >= 1)
            {
              v27 = accessibilityElementCount;
              v28 = 0;
              while (1)
              {
                firstObject = [v25 accessibilityElementAtIndex:v28];
                if (firstObject)
                {
                  do
                  {
                    if (![firstObject _accessibilityHasOrderedChildren])
                    {
                      break;
                    }

                    if ([firstObject accessibilityElementCount] < 1)
                    {
                      break;
                    }

                    v29 = [firstObject accessibilityElementAtIndex:0];

                    firstObject = v29;
                  }

                  while (v29);
                }

                [firstObject accessibilityFrame];
                if (v30 > 1.0)
                {
                  break;
                }

                if (++v28 == v27)
                {
                  goto LABEL_32;
                }
              }

LABEL_29:

              if (!firstObject)
              {
                v14 = 0;
LABEL_34:

                goto LABEL_35;
              }

              goto LABEL_16;
            }
          }

          else
          {
            if ([v25 isAccessibilityOpaqueElementProvider])
            {
              firstObject = [v25 _accessibilityFirstOpaqueElement];
              goto LABEL_29;
            }

            _AXAssert();
          }

LABEL_32:
          v14 = 0;
          goto LABEL_33;
        }
      }
    }
  }

  return 0;
}

- (void)reloadSpecifierAtIndex:(int)index animated:(BOOL)animated
{
  v6.receiver = self;
  v6.super_class = PSListControllerAccessibility;
  [(PSListControllerAccessibility *)&v6 reloadSpecifierAtIndex:*&index animated:animated];
  v5 = [(PSListControllerAccessibility *)self safeValueForKey:@"_specifiers"];

  if (v5)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

@end