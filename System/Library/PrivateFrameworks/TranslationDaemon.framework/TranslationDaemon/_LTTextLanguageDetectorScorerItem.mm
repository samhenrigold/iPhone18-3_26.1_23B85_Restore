@interface _LTTextLanguageDetectorScorerItem
- (_LTTextLanguageDetectorScorerItem)initWithLocale:(id)locale confidence:(double)confidence wordCount:(int64_t)count;
@end

@implementation _LTTextLanguageDetectorScorerItem

- (_LTTextLanguageDetectorScorerItem)initWithLocale:(id)locale confidence:(double)confidence wordCount:(int64_t)count
{
  v26 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  v19.receiver = self;
  v19.super_class = _LTTextLanguageDetectorScorerItem;
  v10 = [(_LTTextLanguageDetectorScorerItem *)&v19 init];
  v12 = v10;
  if (!v10)
  {
LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  v13 = _LTOSLogLID(v10, v11);
  v14 = v13;
  if (!localeCopy)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_232E53000, v14, OS_LOG_TYPE_INFO, "nil locale encountered in scorable item init; will ignore this item", buf, 2u);
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v17 = v14;
    localeIdentifier = [localeCopy localeIdentifier];
    *buf = 138543874;
    v21 = localeIdentifier;
    v22 = 2048;
    confidenceCopy = confidence;
    v24 = 2048;
    countCopy = count;
    _os_log_debug_impl(&dword_232E53000, v17, OS_LOG_TYPE_DEBUG, "new scoring item locale: %{public}@; confidence: %f; words: %ld", buf, 0x20u);
  }

  objc_storeStrong(&v12->_locale, locale);
  v12->_confidence = confidence;
  v12->_wordCount = count;
  v15 = v12;
LABEL_9:

  return v15;
}

@end