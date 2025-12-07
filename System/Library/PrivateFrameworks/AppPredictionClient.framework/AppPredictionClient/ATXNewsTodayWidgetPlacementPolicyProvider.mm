@interface ATXNewsTodayWidgetPlacementPolicyProvider
- (BOOL)isTodayWidgetPermittedForLocale:(id)locale;
@end

@implementation ATXNewsTodayWidgetPlacementPolicyProvider

- (BOOL)isTodayWidgetPermittedForLocale:(id)locale
{
  v23 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  v4 = objc_opt_new();
  isChild = [v4 isChild];
  bOOLValue = [isChild BOOLValue];

  if (!bOOLValue)
  {
    countryCode = [localeCopy countryCode];
    if (!countryCode)
    {
      localeIdentifier = __atxlog_handle_home_screen(0);
      if (os_log_type_enabled(localeIdentifier, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136315138;
        v22 = "[ATXNewsTodayWidgetPlacementPolicyProvider isTodayWidgetPermittedForLocale:]";
        v14 = "%s: no country code in locale, allowing News widget";
        goto LABEL_11;
      }

LABEL_20:
      v9 = 1;
LABEL_21:

      goto LABEL_22;
    }

    _newsSupportedCountries = [objc_opt_class() _newsSupportedCountries];
    v11 = objc_msgSend_containsObject_(_newsSupportedCountries);

    if (v11)
    {
      localeIdentifier = __atxlog_handle_home_screen(v12);
      if (os_log_type_enabled(localeIdentifier, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136315138;
        v22 = "[ATXNewsTodayWidgetPlacementPolicyProvider isTodayWidgetPermittedForLocale:]";
        v14 = "%s: in news supported country, allowing News widget";
LABEL_11:
        _os_log_impl(&dword_1BF549000, localeIdentifier, OS_LOG_TYPE_DEFAULT, v14, &v21, 0xCu);
        goto LABEL_20;
      }

      goto LABEL_20;
    }

    localeIdentifier = [localeCopy localeIdentifier];
    if (localeIdentifier)
    {
      _parsecEditorialLocales = [objc_opt_class() _parsecEditorialLocales];
      v16 = objc_msgSend_containsObject_(_parsecEditorialLocales);

      if (!v16)
      {
        v9 = 0;
        goto LABEL_21;
      }

      v18 = __atxlog_handle_home_screen(v17);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v21 = 136315138;
      v22 = "[ATXNewsTodayWidgetPlacementPolicyProvider isTodayWidgetPermittedForLocale:]";
      v19 = "%s: in parsec editorial locale, allowing News widget";
    }

    else
    {
      v18 = __atxlog_handle_home_screen(0);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
LABEL_19:

        goto LABEL_20;
      }

      v21 = 136315138;
      v22 = "[ATXNewsTodayWidgetPlacementPolicyProvider isTodayWidgetPermittedForLocale:]";
      v19 = "%s: no locale identifier, allowing News widget";
    }

    _os_log_impl(&dword_1BF549000, v18, OS_LOG_TYPE_DEFAULT, v19, &v21, 0xCu);
    goto LABEL_19;
  }

  countryCode = __atxlog_handle_home_screen(v7);
  if (os_log_type_enabled(countryCode, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315138;
    v22 = "[ATXNewsTodayWidgetPlacementPolicyProvider isTodayWidgetPermittedForLocale:]";
    _os_log_impl(&dword_1BF549000, countryCode, OS_LOG_TYPE_DEFAULT, "%s: not allowing News widget for child account", &v21, 0xCu);
  }

  v9 = 0;
LABEL_22:

  return v9;
}

@end