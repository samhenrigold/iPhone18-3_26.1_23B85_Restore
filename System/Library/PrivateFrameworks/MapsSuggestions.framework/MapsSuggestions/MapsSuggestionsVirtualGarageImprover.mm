@interface MapsSuggestionsVirtualGarageImprover
- (BOOL)improveEntry:(id)entry;
@end

@implementation MapsSuggestionsVirtualGarageImprover

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
      v21 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsVirtualGarageImprover.m";
      v22 = 1024;
      v23 = 23;
      v24 = 2082;
      v25 = "[MapsSuggestionsVirtualGarageImprover improveEntry:]";
      v26 = 2082;
      v27 = "nil == (entry)";
      _os_log_impl(&dword_1C5126000, v18, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an Entry", &v20, 0x26u);
    }

    goto LABEL_12;
  }

  if ([entryCopy type] != 20)
  {
LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  v6 = MapsSuggestionsLocalizedSubtitleForVehicleSetup(20);
  v7 = [v5 stringForKey:@"MapsSuggestionsVehicleSetupManufacturerKey"];
  v8 = MapsSuggestionsLocalizedTitleFormatForVehicleSetup(v7);
  v9 = v8;
  if (!v7 || (v8 = [v7 length]) == 0)
  {
    v10 = MapsSuggestionsLocalizedBackupTitleFormatForVehicleSetup(v8);

    v9 = v10;
  }

  v11 = [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedTitle:v9 forEntry:v5];
  v12 = [(MapsSuggestionsBaseImprover *)self improveMyUndecoratedSubtitle:v6 forEntry:v5];
  [v5 weight];
  v14 = v13;
  GEOConfigGetDouble();
  v16 = v15;
  if (v14 != v15)
  {
    [v5 setWeight:0.85];
  }

  v17 = v11 | v12 | (v14 != v16);

LABEL_13:
  return v17 & 1;
}

@end