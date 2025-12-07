@interface MapsSuggestionsPortraitImprover
- (BOOL)improveEntry:(id)entry;
@end

@implementation MapsSuggestionsPortraitImprover

- (BOOL)improveEntry:(id)entry
{
  v26 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v5 = entryCopy;
  if (entryCopy)
  {
    if ([entryCopy type] == 17)
    {
      geoMapItem = [v5 geoMapItem];
      name = [geoMapItem name];
      [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedTitle:name forEntry:v5];

      v8 = v5;
      if (![v8 containsKey:@"MapsSuggestionsOriginBundleIDKey"])
      {
        goto LABEL_15;
      }

      v9 = [v8 stringForKey:@"MapsSuggestionsOriginBundleIDKey"];
      v10 = [v9 isEqualToString:@"com.apple.siri"];
      if (v10)
      {
        v11 = MapsSuggestionsLocalizedSubtitleFormatForPortraitSiriSuggestionEntry(v10);
      }

      else
      {
        v14 = [v9 isEqualToString:@"com.apple.siri.homepod"];
        if (!v14)
        {
          v15 = 0;
LABEL_14:

          if (v15)
          {
LABEL_19:

            [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedSubtitle:v15 forEntry:v8];
            [v8 setBoolean:0 forKey:@"MapsSuggestionsNeedsETATrackingKey"];
            v13 = 1;
            goto LABEL_20;
          }

LABEL_15:
          v16 = [v8 stringForKey:@"MapsSuggestionsOriginatingAppName"];
          if ([v16 length])
          {
            MapsSuggestionsLocalizedSiriFoundInString(v16);
          }

          else
          {
            MapsSuggestionsLocalizedSiriSuggestionsString();
          }
          v15 = ;

          goto LABEL_19;
        }

        v11 = MapsSuggestionsLocalizedSubtitleFormatForPortraitHomePodEntry(v14);
      }

      v15 = v11;
      goto LABEL_14;
    }
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = 136446978;
      v19 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsPortraitImprover.m";
      v20 = 1024;
      v21 = 23;
      v22 = 2082;
      v23 = "[MapsSuggestionsPortraitImprover improveEntry:]";
      v24 = 2082;
      v25 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires suggestion entry", &v18, 0x26u);
    }
  }

  v13 = 0;
LABEL_20:

  return v13;
}

@end