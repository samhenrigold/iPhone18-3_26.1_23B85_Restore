@interface FCHeadline
+ (id)emptyHeadline;
+ (id)emptyHeadlineWithIdentifier:(id)identifier;
- (BOOL)hasVideo;
- (BOOL)hasVideoStillImage;
- (BOOL)isBlockedExplicitContent;
- (BOOL)isCoread;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExplicitContent;
- (BOOL)isFromBlockedStorefront;
- (BOOL)isFullTrackAvailableToAll;
- (BOOL)isSportsHighlight;
- (CGRect)thumbnailFocalFrame;
- (FCHeadline)init;
- (NSString)description;
- (NSString)publisherID;
- (NSString)sourceChannelID;
- (NSString)sourceFeedID;
- (double)globalUserFeedback;
- (id)contentWithContext:(id)context;
- (unint64_t)hash;
- (unint64_t)publishDateMilliseconds;
- (void)addSurfacedByArticleListID:(id)d;
- (void)applyConditionalScore:(double)score;
- (void)applyHeadlineMetadata:(id)metadata configuration:(id)configuration;
- (void)assignStoryType:(int)type withConfiguration:(id)configuration;
- (void)enumerateTopicCohortsWithBlock:(id)block;
- (void)enumerateTopicConversionStatsWithBlock:(id)block;
- (void)markAsEvergreen;
- (void)overrideDisplayDate:(id)date;
@end

@implementation FCHeadline

- (CGRect)thumbnailFocalFrame
{
  x = self->_thumbnailFocalFrame.origin.x;
  y = self->_thumbnailFocalFrame.origin.y;
  width = self->_thumbnailFocalFrame.size.width;
  height = self->_thumbnailFocalFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)hasVideo
{
  videoURL = [(FCHeadline *)self videoURL];
  v3 = videoURL != 0;

  return v3;
}

- (FCHeadline)init
{
  v3.receiver = self;
  v3.super_class = FCHeadline;
  result = [(FCHeadline *)&v3 init];
  if (result)
  {
    result->_halfLife = 23400000;
  }

  return result;
}

- (NSString)sourceChannelID
{
  sourceChannel = [(FCHeadline *)self sourceChannel];
  identifier = [sourceChannel identifier];

  return identifier;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if (!equal || (objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  identifier = [(FCHeadline *)self identifier];
  identifier2 = [equal identifier];

  return [(NSString *)identifier isEqualToString:identifier2];
}

- (unint64_t)hash
{
  identifier = [(FCHeadline *)self identifier];

  return [(NSString *)identifier hash];
}

+ (id)emptyHeadline
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v4 = [FCHeadline emptyHeadlineWithIdentifier:uUIDString];

  return v4;
}

+ (id)emptyHeadlineWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_alloc_init(FCHeadline);
  [(FCHeadline *)v4 setIdentifier:identifierCopy];
  [(FCHeadline *)v4 setArticleID:identifierCopy];

  return v4;
}

- (id)contentWithContext:(id)context
{
  v21 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  pptContext = [contextCopy pptContext];
  isRunningPPT = [pptContext isRunningPPT];

  if (!isRunningPPT)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
      *buf = 136315906;
      v14 = "[FCHeadline contentWithContext:]";
      v15 = 2080;
      v16 = "FCHeadline.m";
      v17 = 1024;
      v18 = 186;
      v19 = 2114;
      v20 = v7;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D930];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCHeadline contentWithContext:]"];
    v11 = [v8 exceptionWithName:v9 reason:v10 userInfo:0];
    v12 = v11;

    objc_exception_throw(v11);
  }

  return 0;
}

- (BOOL)isBlockedExplicitContent
{
  v3 = +[FCRestrictions sharedInstance];
  if ([v3 isExplicitContentAllowed])
  {
    v4 = 0;
  }

  else
  {
    primaryAudience = [(FCHeadline *)self primaryAudience];
    v4 = [primaryAudience isEqualToString:@"MATURE"];
  }

  return v4;
}

- (BOOL)hasVideoStillImage
{
  videoStillImage = [(FCHeadline *)self videoStillImage];
  v3 = videoStillImage != 0;

  return v3;
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = FCHeadline;
  v2 = [(FCHeadline *)&v4 description];

  return v2;
}

- (void)overrideDisplayDate:(id)date
{
  dateCopy = date;
  [(FCHeadline *)self setDisplayDate:dateCopy];
  [(FCHeadline *)self setPublishDate:dateCopy];
}

- (void)markAsEvergreen
{
  if (![(FCHeadline *)self isEvergreen])
  {
    [(FCHeadline *)self setIsEvergreen:1];
    if (NFInternalBuild())
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v4 = [standardUserDefaults BOOLForKey:@"newsfeed.content.highlight_evergreen_articles"];

      if (v4)
      {
        title = [(FCHeadline *)self title];
        v5 = [@"🌲" stringByAppendingString:title];
        [(FCHeadline *)self setTitle:v5];
      }
    }
  }
}

- (void)applyConditionalScore:(double)score
{
  [(FCHeadline *)self conditionalScore];
  if (scoreCopy <= score)
  {
    scoreCopy = score;
  }

  [(FCHeadline *)self setConditionalScore:scoreCopy];
}

- (void)addSurfacedByArticleListID:(id)d
{
  dCopy = d;
  surfacedByArticleListIDs = [(FCHeadline *)self surfacedByArticleListIDs];

  if (!surfacedByArticleListIDs)
  {
    array = [MEMORY[0x1E695DF70] array];
    [(FCHeadline *)self setSurfacedByArticleListIDs:array];
  }

  if ([dCopy hasPrefix:@"LX"])
  {
    self->_isCoread = 1;
  }

  surfacedByArticleListIDs2 = [(FCHeadline *)self surfacedByArticleListIDs];
  [surfacedByArticleListIDs2 addObject:dCopy];
}

- (void)assignStoryType:(int)type withConfiguration:(id)configuration
{
  v4 = *&type;
  configurationCopy = configuration;
  if (v4 != 5)
  {
    date = [MEMORY[0x1E695DF00] date];
    publishDate = [(FCHeadline *)self publishDate];
    [date timeIntervalSinceDate:publishDate];
    v9 = v8;
    topStoriesConfig = [configurationCopy topStoriesConfig];
    storyTypeTimeout = [topStoriesConfig storyTypeTimeout];

    if (v9 < storyTypeTimeout)
    {
      v4 = v4;
    }

    else
    {
      v4 = 0;
    }
  }

  if (v4 != [(FCHeadline *)self storyType])
  {
    [(FCHeadline *)self setStoryType:v4];
    if (v4)
    {
      topStoriesConfig2 = [configurationCopy topStoriesConfig];
      styleConfigurations = [topStoriesConfig2 styleConfigurations];
      v14 = [MEMORY[0x1E696AD98] numberWithInt:v4];
      v15 = [styleConfigurations objectForKey:v14];
      [(FCHeadline *)self setStoryStyle:v15];
    }

    else
    {
      [(FCHeadline *)self setStoryStyle:0];
    }
  }
}

- (void)applyHeadlineMetadata:(id)metadata configuration:(id)configuration
{
  metadataCopy = metadata;
  configurationCopy = configuration;
  if (objc_opt_respondsToSelector())
  {
    title = [metadataCopy title];

    if (title)
    {
      title2 = [metadataCopy title];
      [(FCHeadline *)self overrideTitle:title2];
    }
  }

  displayDate = [metadataCopy displayDate];

  if (displayDate)
  {
    displayDate2 = [metadataCopy displayDate];
    [(FCHeadline *)self overrideDisplayDate:displayDate2];
  }

  storyType = [metadataCopy storyType];
  v12 = [storyType length];

  if (configurationCopy && v12)
  {
    storyType2 = [metadataCopy storyType];
    v14 = PBArticleStoryTypeFromString(storyType2);
    if (v14 - 1 >= 5)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    [(FCHeadline *)self assignStoryType:v15 withConfiguration:configurationCopy];
  }

  if (objc_opt_respondsToSelector())
  {
    shortExcerpt = [metadataCopy shortExcerpt];

    if (shortExcerpt)
    {
      shortExcerpt2 = [metadataCopy shortExcerpt];
      [(FCHeadline *)self overrideShortExcerpt:shortExcerpt2];
    }
  }
}

- (NSString)sourceFeedID
{
  surfacedByChannelID = [(FCHeadline *)self surfacedByChannelID];
  v4 = surfacedByChannelID;
  if (surfacedByChannelID)
  {
    surfacedByTopicID = surfacedByChannelID;
  }

  else
  {
    surfacedByTopicID = [(FCHeadline *)self surfacedByTopicID];
  }

  v6 = surfacedByTopicID;

  return v6;
}

- (NSString)publisherID
{
  sourceChannel = [(FCHeadline *)self sourceChannel];
  identifier = [sourceChannel identifier];

  return identifier;
}

- (double)globalUserFeedback
{
  result = self->_globalUserFeedback;
  if (result < 0.0)
  {
    return 0.5;
  }

  return result;
}

- (unint64_t)publishDateMilliseconds
{
  publishDate = [(FCHeadline *)self publishDate];
  fc_millisecondTimeIntervalSince1970 = [publishDate fc_millisecondTimeIntervalSince1970];

  return fc_millisecondTimeIntervalSince1970;
}

- (BOOL)isFromBlockedStorefront
{
  v3 = +[FCRestrictions sharedInstance];
  v4 = +[FCAppleAccount sharedAccount];
  contentStoreFrontID = [v4 contentStoreFrontID];
  allowedStorefrontIDs = [(FCHeadline *)self allowedStorefrontIDs];
  blockedStorefrontIDs = [(FCHeadline *)self blockedStorefrontIDs];
  v8 = [v3 isContentBlockedInStorefrontID:contentStoreFrontID withAllowedStorefrontIDs:allowedStorefrontIDs blockedStorefrontIDs:blockedStorefrontIDs];

  return v8;
}

- (BOOL)isExplicitContent
{
  primaryAudience = [(FCHeadline *)self primaryAudience];
  v3 = [primaryAudience isEqualToString:@"MATURE"];

  return v3;
}

- (BOOL)isSportsHighlight
{
  sportsEventIDs = [(FCHeadline *)self sportsEventIDs];
  if ([sportsEventIDs count])
  {
    v4 = 1;
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    videoType = [(FCHeadline *)self videoType];
    v4 = [v5 fc_string:videoType isEqualToString:@"sports-highlight"];
  }

  return v4;
}

- (void)enumerateTopicCohortsWithBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (blockCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    topics = [(FCHeadline *)self topics];
    v6 = [topics countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(topics);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          tagID = [v10 tagID];
          cohorts = [v10 cohorts];
          blockCopy[2](blockCopy, tagID, cohorts);
        }

        v7 = [topics countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (void)enumerateTopicConversionStatsWithBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (blockCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    topics = [(FCHeadline *)self topics];
    v6 = [topics countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(topics);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          tagID = [v10 tagID];
          conversionStats = [v10 conversionStats];
          blockCopy[2](blockCopy, tagID, conversionStats);
        }

        v7 = [topics countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (BOOL)isFullTrackAvailableToAll
{
  selfCopy = self;
  narrativeTrack = [(FCHeadline *)self narrativeTrack];
  narrativeTrackSample = [(FCHeadline *)selfCopy narrativeTrackSample];
  LOBYTE(selfCopy) = narrativeTrack == narrativeTrackSample;

  return selfCopy;
}

- (BOOL)isCoread
{
  surfacedByArticleListIDs = [(FCHeadline *)self surfacedByArticleListIDs];
  v3 = surfacedByArticleListIDs;
  if (surfacedByArticleListIDs)
  {
    v4 = [surfacedByArticleListIDs fc_containsObjectPassingTest:&__block_literal_global_35_1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end