@interface MapsSuggestionsOrderStatusImprover
- (BOOL)improveEntry:(id)entry;
- (id)_subtitleBegining:(void *)begining;
@end

@implementation MapsSuggestionsOrderStatusImprover

- (BOOL)improveEntry:(id)entry
{
  v28 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v5 = entryCopy;
  if (!entryCopy)
  {
    v18 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = 136446978;
      v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsOrderStatusImprover.m";
      v22 = 1024;
      v23 = 55;
      v24 = 2082;
      v25 = "[MapsSuggestionsOrderStatusImprover improveEntry:]";
      v26 = 2082;
      v27 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a suggestion entry", &v20, 0x26u);
    }

    goto LABEL_18;
  }

  if ([entryCopy type] != 23)
  {
LABEL_18:
    v17 = 0;
    goto LABEL_19;
  }

  title = [v5 title];
  subtitle = [v5 subtitle];
  v8 = MapsSuggestionsLocalizedOrderPickupTitle();
  if ([v5 containsKey:@"MapsSuggestionsOrderPickupMerchant"])
  {
    v9 = [v5 stringForKey:@"MapsSuggestionsOrderPickupMerchant"];

    if (v9)
    {
      v10 = [v5 stringForKey:@"MapsSuggestionsOrderPickupMerchant"];
      v11 = MapsSuggestionsLocalizedOrderPickupFromMerchantTitle(v10);

      v8 = v11;
    }
  }

  v12 = [(MapsSuggestionsOrderStatusImprover *)self _subtitleBegining:v5];
  v13 = MapsSuggestionsLocalizedHideInMapsString(v12);
  [v5 setString:v13 forKey:@"MapsSuggestionsRemovalBehaviorStringForHide"];

  v15 = MapsSuggestionsLocalizedForgetMyVisitsString(v14);
  [v5 setString:v15 forKey:@"MapsSuggestionsRemovalBehaviorStringForForget"];

  [v5 setUndecoratedTitle:v8];
  v16 = v8 == title && v12 == subtitle;
  v17 = !v16;
  if (!v16)
  {
    [v5 setTitle:v8];
    [v5 setSubtitle:v12];
  }

LABEL_19:
  return v17;
}

- (id)_subtitleBegining:(void *)begining
{
  v3 = a2;
  v4 = v3;
  if (begining)
  {
    if ([v3 containsKey:@"MapsSuggestionsOrderPickupStartDate"])
    {
      v5 = [v4 dateForKey:@"MapsSuggestionsOrderPickupStartDate"];
      expires2 = v5;
      if (v5 && MapsSuggestionsIsInTheFuture(v5))
      {
        v7 = MapsSuggestionsLocalizedOrderPickupReadyAt(expires2);
LABEL_11:
        begining = v7;

        goto LABEL_12;
      }
    }

    expires = [v4 expires];
    if (!expires || (v9 = expires, [v4 expires], v10 = objc_claimAutoreleasedReturnValue(), v11 = MapsSuggestionsSecondsTo(v10), GEOConfigGetDouble(), v13 = v12, v10, v9, v11 > v13))
    {
      begining = MapsSuggestionsLocalizedOrderPickupReady();
      goto LABEL_12;
    }

    expires2 = [v4 expires];
    v7 = MapsSuggestionsLocalizedOrderPickupReadyUntil(expires2);
    goto LABEL_11;
  }

LABEL_12:

  return begining;
}

@end