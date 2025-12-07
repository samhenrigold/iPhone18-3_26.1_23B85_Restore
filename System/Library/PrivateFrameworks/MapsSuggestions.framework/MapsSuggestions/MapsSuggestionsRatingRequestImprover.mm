@interface MapsSuggestionsRatingRequestImprover
- (BOOL)improveEntry:(id)entry;
@end

@implementation MapsSuggestionsRatingRequestImprover

- (BOOL)improveEntry:(id)entry
{
  v24 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v5 = entryCopy;
  if (!entryCopy)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = 136446978;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsRatingRequestImprover.m";
      v18 = 1024;
      v19 = 47;
      v20 = 2082;
      v21 = "[MapsSuggestionsRatingRequestImprover improveEntry:]";
      v22 = 2082;
      v23 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an Entry", &v16, 0x26u);
    }

    goto LABEL_9;
  }

  if ([entryCopy type] != 21)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_14;
  }

  v6 = v5;
  v7 = [v6 containsKey:@"MapsSuggestionsCoreRoutineLastVisit"];
  if (v7)
  {
    v8 = [v6 dateForKey:@"MapsSuggestionsCoreRoutineLastVisit"];
    v9 = MapsSuggestionsSecondsSince(v8);
    v11.n128_f64[0] = v9 + 86400.0 - MapsSuggestionsTimeSinceMidnight();
    if (v11.n128_f64[0] >= 86400.0)
    {
      MapsSuggestionsLocalizedVisitedTimeAgo(v11);
    }

    else
    {
      MapsSuggestionsLocalizedVisitedToday(v10);
    }
    v14 = ;
  }

  else
  {
    v14 = MapsSuggestionsLocalizedSubtitleForRatingRequest(v7);
  }

  v13 = [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedSubtitle:v14 forEntry:v6];
LABEL_14:

  return v13;
}

@end