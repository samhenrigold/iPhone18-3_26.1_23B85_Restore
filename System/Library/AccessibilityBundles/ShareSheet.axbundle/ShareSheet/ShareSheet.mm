id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityLocalizedString_axBundle, accessibilityLocalizedString_axBundle = v3, v4, (v2 = accessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A22E1980 table:@"ShareSheetAccessibility"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t accessibilityIsPagesApp(uint64_t a1, uint64_t a2)
{
  if (accessibilityIsPagesApp_onceToken != -1)
  {
    accessibilityIsPagesApp_cold_1();
  }

  return accessibilityIsPagesApp_IsPagesApp;
}

void __accessibilityIsPagesApp_block_invoke()
{
  v0 = pagesBundleID;
  v2 = [MEMORY[0x29EDB9F48] mainBundle];
  v1 = [v2 bundleIdentifier];
  accessibilityIsPagesApp_IsPagesApp = [v0 isEqualToString:v1];
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2A1C59B50](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}