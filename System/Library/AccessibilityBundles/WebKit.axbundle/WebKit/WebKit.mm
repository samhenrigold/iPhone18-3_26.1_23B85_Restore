id accessibilityLocalizedString(void *a1)
{
  v1 = a1;
  v2 = accessibilityLocalizedString_axBundle;
  if (accessibilityLocalizedString_axBundle || ([MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()], v3 = objc_claimAutoreleasedReturnValue(), v4 = accessibilityLocalizedString_axBundle, accessibilityLocalizedString_axBundle = v3, v4, (v2 = accessibilityLocalizedString_axBundle) != 0))
  {
    v5 = [v2 localizedStringForKey:v1 value:&stru_2A23B72B0 table:@"WebKit"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void _AXUIInstallBaseCategories(uint64_t result, uint64_t a2)
{
  if (_AXUIInstallBaseCategories_onceToken != -1)
  {
    _AXUIInstallBaseCategories_cold_1();
  }
}

id AXWebNotificationWithName(void *a1)
{
  v1 = a1;
  v2 = _NotificationMap(v1);
  v3 = [v2 valueForKey:v1];

  return v3;
}

id _NotificationMap(uint64_t a1)
{
  if (_NotificationMap_onceToken != -1)
  {
    _NotificationMap_cold_1();
  }

  v2 = _NotificationMap_notificationsMap;

  return v2;
}

id AXWebNotificationName(void *a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v1 = a1;
  _NotificationMap(v1);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        v7 = [v2 objectForKeyedSubscript:{v6, v10}];
        v8 = [v7 isEqual:v1];

        if (v8)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

CGRect UIAccessibilityConvertFrameToScreenCoordinates(CGRect rect, UIView *view)
{
  MEMORY[0x2A1C6A7E0](view, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}