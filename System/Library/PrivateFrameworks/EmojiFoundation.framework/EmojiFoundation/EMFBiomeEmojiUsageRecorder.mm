@interface EMFBiomeEmojiUsageRecorder
- (BOOL)report;
- (EMFBiomeEmojiUsageRecorder)initWithEmoji:(id)emoji usageSource:(unint64_t)source replacementContext:(id)context searchQuery:(id)query resultPosition:(id)position numberSearchQueriesRun:(id)run wasPositiveEngagement:(BOOL)engagement;
- (id)_createEngagementEvent;
- (id)delegate;
- (void)_createEngagementEvent;
- (void)report;
@end

@implementation EMFBiomeEmojiUsageRecorder

- (EMFBiomeEmojiUsageRecorder)initWithEmoji:(id)emoji usageSource:(unint64_t)source replacementContext:(id)context searchQuery:(id)query resultPosition:(id)position numberSearchQueriesRun:(id)run wasPositiveEngagement:(BOOL)engagement
{
  emojiCopy = emoji;
  contextCopy = context;
  queryCopy = query;
  positionCopy = position;
  runCopy = run;
  v41.receiver = self;
  v41.super_class = EMFBiomeEmojiUsageRecorder;
  v20 = [(EMFDPRecorder *)&v41 initWithEmoji:emojiCopy];
  if (v20)
  {
    localeData = [emojiCopy localeData];
    localeIdentifier = [localeData localeIdentifier];
    v23 = [localeIdentifier copy];
    localeIdentifier = v20->_localeIdentifier;
    v20->_localeIdentifier = v23;

    v25 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v20->_localeIdentifier];
    locale = v20->_locale;
    v20->_locale = v25;

    v20->_usageSource = source;
    v27 = [contextCopy copy];
    replacementContext = v20->_replacementContext;
    v20->_replacementContext = v27;

    v29 = [queryCopy copy];
    searchQuery = v20->_searchQuery;
    v20->_searchQuery = v29;

    v31 = [positionCopy copy];
    resultPosition = v20->_resultPosition;
    v20->_resultPosition = v31;

    v33 = [runCopy copy];
    numberSearchQueriesRun = v20->_numberSearchQueriesRun;
    v20->_numberSearchQueriesRun = v33;

    v20->_wasPositiveEngagement = engagement;
    v35 = BiomeLibrary();
    emoji = [v35 Emoji];
    engagement = [emoji Engagement];
    source = [engagement source];
    biomeStream = v20->_biomeStream;
    v20->_biomeStream = source;
  }

  return v20;
}

- (id)delegate
{
  v4.receiver = self;
  v4.super_class = EMFBiomeEmojiUsageRecorder;
  delegate = [(EMFDPRecorder *)&v4 delegate];

  return delegate;
}

- (BOOL)report
{
  v15[1] = *MEMORY[0x1E69E9840];
  localeIdentifier = [(EMFBiomeEmojiUsageRecorder *)self localeIdentifier];

  if (localeIdentifier)
  {
    biomeStream = [(EMFBiomeEmojiUsageRecorder *)self biomeStream];

    if (!biomeStream)
    {
      _createEngagementEvent = emf_logging_get_default_log(v5);
      if (os_log_type_enabled(_createEngagementEvent, OS_LOG_TYPE_DEBUG))
      {
        [(EMFBiomeEmojiUsageRecorder *)_createEngagementEvent report];
      }

      v7 = 0;
      goto LABEL_16;
    }

    _createEngagementEvent = [(EMFBiomeEmojiUsageRecorder *)self _createEngagementEvent];
    v7 = _createEngagementEvent != 0;
    v8 = emf_logging_get_default_log(_createEngagementEvent);
    delegate2 = v8;
    if (_createEngagementEvent)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [(EMFBiomeEmojiUsageRecorder *)_createEngagementEvent report];
      }

      biomeStream2 = [(EMFBiomeEmojiUsageRecorder *)self biomeStream];
      [biomeStream2 sendEvent:_createEngagementEvent];

      delegate = [(EMFBiomeEmojiUsageRecorder *)self delegate];

      if (!delegate)
      {
        v7 = 1;
        goto LABEL_16;
      }

      delegate2 = [(EMFBiomeEmojiUsageRecorder *)self delegate];
      emoji = [_createEngagementEvent emoji];
      v15[0] = emoji;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      [delegate2 record:v13];
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(EMFBiomeEmojiUsageRecorder *)self report];
    }

LABEL_16:
    return v7;
  }

  return 0;
}

- (id)_createEngagementEvent
{
  emoji = [(EMFDPRecorder *)self emoji];
  string = [emoji string];

  if (!string)
  {
    v8 = emf_logging_get_default_log(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(EMFBiomeEmojiUsageRecorder *)self _createEngagementEvent];
    }

    goto LABEL_10;
  }

  usageSource = [(EMFBiomeEmojiUsageRecorder *)self usageSource];
  if (usageSource <= 4)
  {
    if (usageSource > 1)
    {
      if (usageSource == 2)
      {
        v7 = 2;
      }

      else if (usageSource == 3)
      {
        v7 = 3;
      }

      else
      {
        v7 = 4;
      }

      goto LABEL_28;
    }

    if (usageSource)
    {
      if (usageSource == 1)
      {
        v7 = 1;
        goto LABEL_28;
      }

LABEL_32:
      [EMFBiomeEmojiUsageRecorder _createEngagementEvent];
    }

LABEL_10:
    v9 = 0;
    goto LABEL_29;
  }

  if (usageSource <= 7)
  {
    if (usageSource == 5)
    {
      v7 = 5;
    }

    else if (usageSource == 6)
    {
      v7 = 6;
    }

    else
    {
      v7 = 7;
    }

    goto LABEL_28;
  }

  if (usageSource == 8)
  {
    v7 = 8;
    goto LABEL_28;
  }

  if (usageSource == 9)
  {
    v7 = 9;
    goto LABEL_28;
  }

  if (usageSource != 10)
  {
    goto LABEL_32;
  }

  v7 = 10;
LABEL_28:
  v10 = objc_alloc(MEMORY[0x1E698EBC8]);
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[EMFBiomeEmojiUsageRecorder wasPositiveEngagement](self, "wasPositiveEngagement")}];
  localeIdentifier = [(EMFBiomeEmojiUsageRecorder *)self localeIdentifier];
  replacementContext = [(EMFBiomeEmojiUsageRecorder *)self replacementContext];
  resultPosition = [(EMFBiomeEmojiUsageRecorder *)self resultPosition];
  numberSearchQueriesRun = [(EMFBiomeEmojiUsageRecorder *)self numberSearchQueriesRun];
  searchQuery = [(EMFBiomeEmojiUsageRecorder *)self searchQuery];
  v9 = [v10 initWithEmoji:string wasPositiveEngagement:v11 localeIdentifier:localeIdentifier inputMode:v7 replacementContext:replacementContext resultPosition:resultPosition numberSearchQueriesRun:numberSearchQueriesRun finalSearchQuery:searchQuery];

LABEL_29:

  return v9;
}

- (void)report
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [self debugDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&dword_1AF04E000, a2, OS_LOG_TYPE_DEBUG, "Donating emoji engagement to Biome: '%{public}@'", &v4, 0xCu);
}

- (void)_createEngagementEvent
{
  v5 = *MEMORY[0x1E69E9840];
  emoji = [self emoji];
  v4[0] = 67109120;
  v4[1] = [emoji _emojiIndex];
  _os_log_error_impl(&dword_1AF04E000, a2, OS_LOG_TYPE_ERROR, "Failed to donate emoji to Biome: EMFEmojiToken index '%hu'", v4, 8u);
}

@end