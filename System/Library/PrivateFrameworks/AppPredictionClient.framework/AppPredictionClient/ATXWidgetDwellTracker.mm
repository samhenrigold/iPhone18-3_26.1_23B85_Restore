@interface ATXWidgetDwellTracker
- (ATXWidgetDwellTracker)init;
- (ATXWidgetDwellTrackerDelegate)delegate;
- (void)widgetDidAppear:(id)appear date:(id)date;
- (void)widgetDidDisappear:(id)disappear date:(id)date;
@end

@implementation ATXWidgetDwellTracker

- (ATXWidgetDwellTracker)init
{
  v6.receiver = self;
  v6.super_class = ATXWidgetDwellTracker;
  v2 = [(ATXWidgetDwellTracker *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    widgetUniqueIdToAppearDateMap = v2->_widgetUniqueIdToAppearDateMap;
    v2->_widgetUniqueIdToAppearDateMap = v3;
  }

  return v2;
}

- (void)widgetDidAppear:(id)appear date:(id)date
{
  v26 = *MEMORY[0x1E69E9840];
  appearCopy = appear;
  dateCopy = date;
  widgetUniqueId = [appearCopy widgetUniqueId];

  v10 = __atxlog_handle_home_screen(v9);
  widgetUniqueId4 = v10;
  if (widgetUniqueId)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      compactDescription = [appearCopy compactDescription];
      widgetUniqueId2 = [appearCopy widgetUniqueId];
      v20 = 136315650;
      v21 = "[ATXWidgetDwellTracker widgetDidAppear:date:]";
      v22 = 2112;
      v23 = compactDescription;
      v24 = 2114;
      v25 = widgetUniqueId2;
      _os_log_impl(&dword_1BF549000, widgetUniqueId4, OS_LOG_TYPE_DEFAULT, "RAS: %s: widget: %@ (widgetID %{public}@)", &v20, 0x20u);
    }

    widgetUniqueIdToAppearDateMap = self->_widgetUniqueIdToAppearDateMap;
    widgetUniqueId3 = [appearCopy widgetUniqueId];
    v16 = [(NSMutableDictionary *)widgetUniqueIdToAppearDateMap objectForKeyedSubscript:widgetUniqueId3];

    if (v16)
    {
      v18 = __atxlog_handle_home_screen(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        [ATXWidgetDwellTracker widgetDidAppear:appearCopy date:?];
      }
    }

    v19 = self->_widgetUniqueIdToAppearDateMap;
    widgetUniqueId4 = [appearCopy widgetUniqueId];
    [(NSMutableDictionary *)v19 setObject:dateCopy forKeyedSubscript:widgetUniqueId4];
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    [ATXWidgetDwellTracker widgetDidAppear:appearCopy date:?];
  }
}

- (void)widgetDidDisappear:(id)disappear date:(id)date
{
  v27 = *MEMORY[0x1E69E9840];
  disappearCopy = disappear;
  dateCopy = date;
  widgetUniqueId = [disappearCopy widgetUniqueId];

  v10 = __atxlog_handle_home_screen(v9);
  v11 = v10;
  if (widgetUniqueId)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      compactDescription = [disappearCopy compactDescription];
      widgetUniqueId2 = [disappearCopy widgetUniqueId];
      v21 = 136315650;
      v22 = "[ATXWidgetDwellTracker widgetDidDisappear:date:]";
      v23 = 2112;
      v24 = compactDescription;
      v25 = 2114;
      v26 = widgetUniqueId2;
      _os_log_impl(&dword_1BF549000, v11, OS_LOG_TYPE_DEFAULT, "RAS: %s: widget: %@ (widgetID %{public}@)", &v21, 0x20u);
    }

    widgetUniqueIdToAppearDateMap = self->_widgetUniqueIdToAppearDateMap;
    widgetUniqueId3 = [disappearCopy widgetUniqueId];
    v11 = [(NSMutableDictionary *)widgetUniqueIdToAppearDateMap objectForKeyedSubscript:widgetUniqueId3];

    if (v11)
    {
      [dateCopy timeIntervalSinceDate:v11];
      if (v17 <= 3.5)
      {
LABEL_12:
        v19 = self->_widgetUniqueIdToAppearDateMap;
        widgetUniqueId4 = [disappearCopy widgetUniqueId];
        [(NSMutableDictionary *)v19 removeObjectForKey:widgetUniqueId4];

        goto LABEL_13;
      }

      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained significantDwellDetectedForWidget:disappearCopy date:dateCopy];
    }

    else
    {
      WeakRetained = __atxlog_handle_home_screen(v16);
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_FAULT))
      {
        [ATXWidgetDwellTracker widgetDidDisappear:disappearCopy date:?];
      }
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    [ATXWidgetDwellTracker widgetDidDisappear:disappearCopy date:?];
  }

LABEL_13:
}

- (ATXWidgetDwellTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)widgetDidAppear:(void *)a1 date:.cold.1(void *a1)
{
  v1 = [a1 widgetUniqueId];
  v8 = 136315394;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_13(&dword_1BF549000, v2, v3, "RAS: %s: widget ID %{public}@ seems to have already appeared. Overriding appear date.", v4, v5, v6, v7, v8);
}

- (void)widgetDidAppear:(void *)a1 date:.cold.2(void *a1)
{
  v1 = [a1 compactDescription];
  v8 = 136315394;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_13(&dword_1BF549000, v2, v3, "RAS: %s: widget %@ unexpectedly has null unique ID. Dwell tracking will not work for this widget.", v4, v5, v6, v7, v8);
}

- (void)widgetDidDisappear:(void *)a1 date:.cold.1(void *a1)
{
  v1 = [a1 widgetUniqueId];
  v8 = 136315394;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_13(&dword_1BF549000, v2, v3, "RAS: %s: No appearing date on record for widget ID %{public}@.", v4, v5, v6, v7, v8);
}

- (void)widgetDidDisappear:(void *)a1 date:.cold.2(void *a1)
{
  v1 = [a1 compactDescription];
  v8 = 136315394;
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_13(&dword_1BF549000, v2, v3, "RAS: %s: widget %@ unexpectedly has null unique ID. Dwell tracking will not work for this widget.", v4, v5, v6, v7, v8);
}

@end