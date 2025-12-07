@interface MapsSuggestionsBaseImprover
+ (BOOL)isEnabled;
- (BOOL)improveEntry:(id)entry;
- (NSString)uniqueName;
- (uint64_t)improveMyUndecoratedSubtitle:(void *)subtitle forEntry:;
- (uint64_t)improveMyUndecoratedTitle:(void *)title forEntry:;
@end

@implementation MapsSuggestionsBaseImprover

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (BOOL)improveEntry:(id)entry
{
  entryCopy = entry;
  result = [(MapsSuggestionsBaseImprover *)self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

+ (BOOL)isEnabled
{
  result = [self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

- (uint64_t)improveMyUndecoratedTitle:(void *)title forEntry:
{
  v5 = a2;
  titleCopy = title;
  v7 = titleCopy;
  if (self)
  {
    if (titleCopy)
    {
      self = [titleCopy updateUndecoratedTitle:v5];
    }

    else
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v16 = 136446978;
        *&v16[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsBaseImprover.m";
        *&v16[12] = 1024;
        *&v16[14] = 30;
        *&v16[18] = 2082;
        *&v16[20] = "[MapsSuggestionsBaseImprover improveMyUndecoratedTitle:forEntry:]";
        *&v16[28] = 2082;
        *&v16[30] = "nil == (entry)";
        OUTLINED_FUNCTION_9_0(&dword_1C5126000, v9, v10, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry", v11, v12, v13, v14, *v16, *&v16[8], *&v16[16], *&v16[24], *&v16[32]);
      }

      self = 0;
    }
  }

  return self;
}

- (uint64_t)improveMyUndecoratedSubtitle:(void *)subtitle forEntry:
{
  v5 = a2;
  subtitleCopy = subtitle;
  v7 = subtitleCopy;
  if (self)
  {
    if (subtitleCopy)
    {
      self = [subtitleCopy updateUndecoratedSubtitle:v5];
    }

    else
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v16 = 136446978;
        *&v16[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsBaseImprover.m";
        *&v16[12] = 1024;
        *&v16[14] = 37;
        *&v16[18] = 2082;
        *&v16[20] = "[MapsSuggestionsBaseImprover improveMyUndecoratedSubtitle:forEntry:]";
        *&v16[28] = 2082;
        *&v16[30] = "nil == (entry)";
        OUTLINED_FUNCTION_9_0(&dword_1C5126000, v9, v10, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an entry", v11, v12, v13, v14, *v16, *&v16[8], *&v16[16], *&v16[24], *&v16[32]);
      }

      self = 0;
    }
  }

  return self;
}

@end