@interface TabOverviewDisplayItemAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation TabOverviewDisplayItemAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFTabOverviewDisplayItem" hasSwiftField:@"barManager" withSwiftType:"BarManager"];
  [validationsCopy validateClass:@"SFTabOverviewDisplayItemBarManager" hasSwiftField:@"registrations" withSwiftType:"Array<TabOverviewDisplayItemBarRegistration>"];
  [validationsCopy validateClass:@"SFTabOverviewDisplayItem" hasSwiftField:@"profileButtonForNavigationBar" withSwiftType:"Optional<UIButton>"];
  [validationsCopy validateClass:@"SFTabOverviewDisplayItem" hasSwiftField:@"tabOverviewSwitcher" withSwiftType:"TabOverviewSwitcher"];
  [validationsCopy validateClass:@"MobileSafari.TabOverviewSwitcher" hasSwiftField:@"lastSettledPage" withSwiftType:"Optional<Page>"];
  [validationsCopy validateSwiftStruct:@"MobileSafari.TabOverviewSwitcher[class].Page" hasSwiftField:@"profile" withSwiftType:"Optional<Profile>"];
  [validationsCopy validateSwiftStruct:@"MobileSafari.TabSwitcher[class].Profile" hasSwiftField:@"title" withSwiftType:"String"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v19 = *MEMORY[0x29EDCA608];
  v17.receiver = self;
  v17.super_class = TabOverviewDisplayItemAccessibility;
  [(TabOverviewDisplayItemAccessibility *)&v17 _accessibilityLoadAccessibilityInformation];
  v3 = [(TabOverviewDisplayItemAccessibility *)self safeSwiftValueForKey:@"$__lazy_storage_$_barManager"];
  [v3 safeSwiftArrayForKey:@"registrations"];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v4 = v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v5)
  {
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v13 + 1) + 8 * v7) safeSwiftDictionaryForKey:@"barButtonItems"];
        [v8 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_2];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v5);
  }

  v9 = [(TabOverviewDisplayItemAccessibility *)self safeSwiftValueForKey:@"profileButtonForNavigationBar"];
  if (v9)
  {
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = __81__TabOverviewDisplayItemAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
    v10[3] = &unk_29F2D6910;
    objc_copyWeak(&v11, &location);
    [v9 setAccessibilityLabelBlock:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __81__TabOverviewDisplayItemAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v4 = [a2 safeSwiftEnumCase];
  if ([v4 isEqualToString:@"add"])
  {
    v5 = @"new.tab.button";
  }

  else if ([v4 isEqualToString:@"tabGroups"])
  {
    v5 = @"tab.groups.button";
  }

  else
  {
    if (![v4 isEqualToString:@"sidebar"])
    {
      goto LABEL_8;
    }

    v5 = @"show.sidebar.button";
  }

  v6 = accessibilityMobileSafariLocalizedString(v5);
  [v7 setAccessibilityLabel:v6];

LABEL_8:
}

id __81__TabOverviewDisplayItemAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeSwiftValueForKey:@"tabOverviewSwitcher"];
  v3 = [v2 safeSwiftValueForKey:@"lastSettledPage"];

  if (v3)
  {
    v4 = [v3 safeSwiftValueForKey:@"profile"];
    v5 = v4;
    if (v4)
    {
      [v4 safeSwiftValueForKey:@"title"];
    }

    else
    {
      accessibilityMobileSafariLocalizedString(@"tab.overview.profile.button");
    }
    v6 = ;
  }

  else
  {
    v6 = accessibilityMobileSafariLocalizedString(@"tab.overview.profile.button");
  }

  return v6;
}

@end