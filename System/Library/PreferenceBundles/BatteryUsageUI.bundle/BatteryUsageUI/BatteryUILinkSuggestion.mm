@interface BatteryUILinkSuggestion
- (BatteryUILinkSuggestion)initWithSuggestionType:(int)type andData:(id)data;
@end

@implementation BatteryUILinkSuggestion

- (BatteryUILinkSuggestion)initWithSuggestionType:(int)type andData:(id)data
{
  v4 = *&type;
  v39.receiver = self;
  v39.super_class = BatteryUILinkSuggestion;
  v5 = [(BatteryUILinkSuggestion *)&v39 init:*&type];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_27;
  }

  [(BatteryUILinkSuggestion *)v5 setSuggestionType:v4];
  if (v4)
  {
    if (v4 == 1)
    {
      [(BatteryUILinkSuggestion *)v6 setIdentifier:@"AUTOLOCK"];
      v7 = @"MyAutoLockController";
    }

    else
    {
      if (v4 != 2)
      {
        v37 = 0;
        goto LABEL_28;
      }

      [(BatteryUILinkSuggestion *)v6 setIdentifier:@"REDUCEBRIGHTNESS"];
      v7 = @"DBSSettingsController";
    }

    [(BatteryUILinkSuggestion *)v6 setDetailControllerClass:NSClassFromString(&v7->isa)];
    v8 = &PSEnabledKey;
  }

  else
  {
    [(BatteryUILinkSuggestion *)v6 setIdentifier:@"AUTOBRIGHTNESS"];
    [(BatteryUILinkSuggestion *)v6 setDetailControllerClass:NSClassFromString(@"AXDisplayController")];
    specifier = [(BatteryUILinkSuggestion *)v6 specifier];
    [specifier setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];

    specifier2 = [(BatteryUILinkSuggestion *)v6 specifier];
    [specifier2 setProperty:@"AXDisplayController" forKey:PSDetailControllerClassKey];

    specifier3 = [(BatteryUILinkSuggestion *)v6 specifier];
    v12 = NSOpenStepRootDirectory();
    v13 = [v12 stringByAppendingString:@"System/Library/PreferenceBundles/AccessibilitySettings.bundle"];
    [specifier3 setProperty:v13 forKey:PSLazilyLoadedBundleKey];

    v8 = &PSBundleOverridePrincipalClassKey;
  }

  specifier4 = [(BatteryUILinkSuggestion *)v6 specifier];
  [specifier4 setProperty:&__kCFBooleanTrue forKey:*v8];

  title = [(BatteryUILinkSuggestion *)v6 title];

  if (!title)
  {
    identifier = [(BatteryUILinkSuggestion *)v6 identifier];
    v17 = [NSString stringWithFormat:@"%@_TITLE", identifier];

    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v18 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v18 = BatteryUILocalization(v17);
    }

    [(BatteryUILinkSuggestion *)v6 setTitle:v18];
  }

  v19 = objc_opt_new();
  [(BatteryUILinkSuggestion *)v6 setIcon:v19];

  specifier5 = [(BatteryUILinkSuggestion *)v6 specifier];
  [specifier5 setObject:&__kCFBooleanTrue forKeyedSubscript:PSLazyIconLoading];

  v21 = [PLBatteryUIUtilities iconUTTypeIdentifierForSuggestion:v4];
  if (v21)
  {
    specifier6 = [(BatteryUILinkSuggestion *)v6 specifier];
    [specifier6 setObject:v21 forKeyedSubscript:PSIconUTTypeIdentifierKey];
  }

  infoText = [(BatteryUILinkSuggestion *)v6 infoText];

  if (!infoText)
  {
    identifier2 = [(BatteryUILinkSuggestion *)v6 identifier];
    v25 = [NSString stringWithFormat:@"%@_INFO_TEXT", identifier2];

    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v26 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v26 = BatteryUILocalization(v25);
    }

    [(BatteryUILinkSuggestion *)v6 setInfoText:v26];
  }

  identifier3 = [(BatteryUILinkSuggestion *)v6 identifier];
  if (identifier3)
  {
    identifier5 = identifier3;
    specifier7 = [(BatteryUILinkSuggestion *)v6 specifier];
    if (!specifier7)
    {
LABEL_25:

      goto LABEL_26;
    }

    v30 = specifier7;
    infoSpecifier = [(BatteryUILinkSuggestion *)v6 infoSpecifier];

    if (infoSpecifier)
    {
      identifier4 = [(BatteryUILinkSuggestion *)v6 identifier];
      v33 = [identifier4 stringByAppendingString:@"_SPECIFIER"];
      specifier8 = [(BatteryUILinkSuggestion *)v6 specifier];
      [specifier8 setIdentifier:v33];

      identifier5 = [(BatteryUILinkSuggestion *)v6 identifier];
      v35 = [identifier5 stringByAppendingString:@"_INFO_SPECIFIER"];
      infoSpecifier2 = [(BatteryUILinkSuggestion *)v6 infoSpecifier];
      [infoSpecifier2 setIdentifier:v35];

      goto LABEL_25;
    }
  }

LABEL_26:

LABEL_27:
  v37 = v6;
LABEL_28:

  return v37;
}

@end