@interface ATXFaceSuggestionConfiguredHomeScreenWidgetSignal
- (ATXFaceSuggestionConfiguredHomeScreenWidgetSignal)init;
- (double)valueForDescriptor:(id)descriptor;
- (void)_prepare;
@end

@implementation ATXFaceSuggestionConfiguredHomeScreenWidgetSignal

- (ATXFaceSuggestionConfiguredHomeScreenWidgetSignal)init
{
  v5.receiver = self;
  v5.super_class = ATXFaceSuggestionConfiguredHomeScreenWidgetSignal;
  v2 = [(ATXFaceSuggestionConfiguredHomeScreenWidgetSignal *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ATXFaceSuggestionConfiguredHomeScreenWidgetSignal *)v2 _prepare];
  }

  return v3;
}

- (void)_prepare
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[ATXFaceSuggestionConfiguredHomeScreenWidgetSignal _prepare]";
  v4 = 2112;
  selfCopy = self;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%s: error loading home screen page configurations: %@", &v2, 0x16u);
}

- (double)valueForDescriptor:(id)descriptor
{
  v18 = *MEMORY[0x277D85DE8];
  containerBundleIdentifier = [descriptor containerBundleIdentifier];
  if (containerBundleIdentifier)
  {
    v5 = [(NSMutableSet *)self->_configuredWidgetContainerBundleIdentifiers containsObject:containerBundleIdentifier];
    v6 = v5;
    v7 = __atxlog_handle_lock_screen(v5);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      v9 = 1.0;
      if (v8)
      {
        v14 = 136315394;
        v15 = "[ATXFaceSuggestionConfiguredHomeScreenWidgetSignal valueForDescriptor:]";
        v16 = 2112;
        v17 = containerBundleIdentifier;
        v10 = "%s: containerBundleId contains widgets on home screen: %@";
LABEL_9:
        v11 = v7;
        v12 = 22;
        goto LABEL_10;
      }
    }

    else
    {
      v9 = 0.0;
      if (v8)
      {
        v14 = 136315394;
        v15 = "[ATXFaceSuggestionConfiguredHomeScreenWidgetSignal valueForDescriptor:]";
        v16 = 2112;
        v17 = containerBundleIdentifier;
        v10 = "%s: containerBundleId does not contain widgets on home screen: %@";
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = __atxlog_handle_lock_screen(0);
    v9 = 0.0;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[ATXFaceSuggestionConfiguredHomeScreenWidgetSignal valueForDescriptor:]";
      v10 = "%s: no containerBundleId";
      v11 = v7;
      v12 = 12;
LABEL_10:
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, v10, &v14, v12);
    }
  }

  return v9;
}

@end