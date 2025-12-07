@interface MapsSuggestionsDefaultTitleFormatter
- (BOOL)formatTitlesForEntry:(id)entry eta:(id)eta;
- (id)_subtitleStringFromEntry:(void *)entry andETA:;
@end

@implementation MapsSuggestionsDefaultTitleFormatter

- (BOOL)formatTitlesForEntry:(id)entry eta:(id)eta
{
  v23 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  etaCopy = eta;
  v8 = etaCopy;
  if (entryCopy)
  {
    if (etaCopy)
    {
      title = [entryCopy title];
      v14 = [(MapsSuggestionsDefaultTitleFormatter *)self _subtitleStringFromEntry:entryCopy andETA:v8];
      v11 = [(MapsSuggestionsBaseTitleFormatter *)self updateMyChangedTitlesForEntry:entryCopy title:title subtitle:v14 includeLockedVersions:0];

      goto LABEL_9;
    }

    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDefaultTitleFormatter.m";
      v17 = 1024;
      v18 = 25;
      v19 = 2082;
      v20 = "[MapsSuggestionsDefaultTitleFormatter formatTitlesForEntry:eta:]";
      v21 = 2082;
      v22 = "nil == (eta)";
      v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an ETA";
LABEL_7:
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, v10, &v15, 0x26u);
    }
  }

  else
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = 136446978;
      v16 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsDefaultTitleFormatter.m";
      v17 = 1024;
      v18 = 24;
      v19 = 2082;
      v20 = "[MapsSuggestionsDefaultTitleFormatter formatTitlesForEntry:eta:]";
      v21 = 2082;
      v22 = "nil == (entry)";
      v10 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry";
      goto LABEL_7;
    }
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (id)_subtitleStringFromEntry:(void *)entry andETA:
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  entryCopy = entry;
  v7 = entryCopy;
  if (self)
  {
    [entryCopy seconds];
    v9 = NSStringFromMapsSuggestionsShortETA(v8);
    undecoratedSubtitle = [v5 undecoratedSubtitle];
    v11 = [v9 length];
    if (v11)
    {
      v11 = [self shouldDecorateEntry:v5 withETA:v7];
      if (v11)
      {
        v13 = [v5 dateForKey:@"MapsSuggestionsScheduledTimeKey"];
        if (([v5 BOOLeanForKey:@"MapsSuggestionsCalendarAllDayEventKey" is:1] & 1) != 0 || (v11 = MapsSuggestionsIsInThePast(v13), v11))
        {
          v14 = MapsSuggestionsLocalizedStringFromGEOTransportType([v7 transportType]);
          v15 = MapsSuggestionsLocalizedETAFormatString(v9, v14);

          if (MapsSuggestionsLoggingIsVerbose(v16, v17))
          {
            v18 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *v40 = 138412290;
              *&v40[4] = v15;
              OUTLINED_FUNCTION_0_4(&dword_1C5126000, v19, v20, "Subtitle from decoration: %@", v21, v22, v23, v24, *v40);
            }
          }

          v25 = v15;
LABEL_11:

LABEL_23:
          goto LABEL_24;
        }

        if (v13)
        {
          v26 = NSStringFromMapsSuggestionsEventTime(v13);
          v27 = MapsSuggestionsLocalizedStringFromGEOTransportType([v7 transportType]);
          v28 = MapsSuggestionsLocalizedETAFormatStringWithTime(v26, v9, v27);

          if (MapsSuggestionsLoggingIsVerbose(v29, v30))
          {
            v31 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              *v40 = 138412290;
              *&v40[4] = v28;
              OUTLINED_FUNCTION_0_4(&dword_1C5126000, v32, v33, "Subtitle from decoration: %@", v34, v35, v36, v37, *v40);
            }
          }

          v25 = v28;

          goto LABEL_11;
        }
      }
    }

    if (MapsSuggestionsLoggingIsVerbose(v11, v12))
    {
      v38 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        *v40 = 138412290;
        *&v40[4] = undecoratedSubtitle;
        _os_log_impl(&dword_1C5126000, v38, OS_LOG_TYPE_DEBUG, "Subtitle from decoration: %@", v40, 0xCu);
      }
    }

    v25 = undecoratedSubtitle;
    goto LABEL_23;
  }

  v25 = 0;
LABEL_24:

  return v25;
}

@end