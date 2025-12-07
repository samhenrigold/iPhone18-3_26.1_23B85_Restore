id accessibilityMobileMailLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityMobileMailLocalizedString_axBundle;
  if (accessibilityMobileMailLocalizedString_axBundle || (v3 = MEMORY[0x29EDB9F48], v4 = MEMORY[0x29EDBA0F8], MEMORY[0x29C2DFE00](), v5 = objc_claimAutoreleasedReturnValue(), [v4 stringWithFormat:@"%@/%@", v5, @"MobileMail.axbundle"], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "bundleWithPath:", v6), v7 = objc_claimAutoreleasedReturnValue(), v8 = accessibilityMobileMailLocalizedString_axBundle, accessibilityMobileMailLocalizedString_axBundle = v7, v8, v6, v5, (v2 = accessibilityMobileMailLocalizedString_axBundle) != 0))
  {
    v9 = [v2 localizedStringForKey:v1 value:&stru_2A221BEB8 table:@"Accessibility"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}