@interface NUFeedTitleViewUpdate
+ (id)feedTitleViewUpdateCheckingForNewStoriesForType:(unint64_t)type;
+ (id)feedTitleViewUpdateCheckingForUpdatesForType:(unint64_t)type;
+ (id)feedTitleViewUpdateEmptyStateForType:(unint64_t)type;
+ (id)feedTitleViewUpdateForAttributedText:(id)text forType:(unint64_t)type;
+ (id)feedTitleViewUpdateForFeedImage:(id)image accessibilityTitle:(id)title;
+ (id)feedTitleViewUpdateForFeedName:(id)name;
+ (id)feedTitleViewUpdateNewStoriesWithStoryForType:(unint64_t)type storyCount:(unint64_t)count;
+ (id)feedTitleViewUpdateNewStoriesWithStoryForType:(unint64_t)type storyCount:(unint64_t)count linger:(BOOL)linger;
- (BOOL)isEqual:(id)equal;
- (NUFeedTitleViewUpdate)initWithType:(unint64_t)type updateType:(unint64_t)updateType;
- (id)convertToTitleViewUpdateWithCompact:(BOOL)compact;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NUFeedTitleViewUpdate

+ (id)feedTitleViewUpdateEmptyStateForType:(unint64_t)type
{
  v3 = [[NUFeedTitleViewUpdate alloc] initWithType:type updateType:0];

  return v3;
}

+ (id)feedTitleViewUpdateForFeedName:(id)name
{
  nameCopy = name;
  v4 = [[NUFeedTitleViewUpdate alloc] initWithType:0 updateType:0];
  [(NUFeedTitleViewUpdate *)v4 setFeedName:nameCopy];
  [(NUFeedTitleViewUpdate *)v4 setAccessibilityTitle:nameCopy];

  return v4;
}

+ (id)feedTitleViewUpdateForAttributedText:(id)text forType:(unint64_t)type
{
  textCopy = text;
  v6 = [[NUFeedTitleViewUpdate alloc] initWithType:type updateType:0];
  [(NUFeedTitleViewUpdate *)v6 setAttributedText:textCopy];

  return v6;
}

+ (id)feedTitleViewUpdateForFeedImage:(id)image accessibilityTitle:(id)title
{
  titleCopy = title;
  imageCopy = image;
  v7 = [[NUFeedTitleViewUpdate alloc] initWithType:0 updateType:0];
  [(NUFeedTitleViewUpdate *)v7 setFeedImage:imageCopy];

  [(NUFeedTitleViewUpdate *)v7 setAccessibilityTitle:titleCopy];

  return v7;
}

+ (id)feedTitleViewUpdateCheckingForNewStoriesForType:(unint64_t)type
{
  v3 = [[NUFeedTitleViewUpdate alloc] initWithType:type updateType:1];

  return v3;
}

+ (id)feedTitleViewUpdateCheckingForUpdatesForType:(unint64_t)type
{
  v3 = [[NUFeedTitleViewUpdate alloc] initWithType:type updateType:2];

  return v3;
}

+ (id)feedTitleViewUpdateNewStoriesWithStoryForType:(unint64_t)type storyCount:(unint64_t)count
{
  v5 = [[NUFeedTitleViewUpdate alloc] initWithType:type updateType:3];
  [(NUFeedTitleViewUpdate *)v5 setStoryCount:count];
  [(NUFeedTitleViewUpdate *)v5 setLingerTimeInterval:3.0];

  return v5;
}

+ (id)feedTitleViewUpdateNewStoriesWithStoryForType:(unint64_t)type storyCount:(unint64_t)count linger:(BOOL)linger
{
  lingerCopy = linger;
  v7 = [[NUFeedTitleViewUpdate alloc] initWithType:type updateType:3];
  [(NUFeedTitleViewUpdate *)v7 setStoryCount:count];
  v8 = 0.0;
  if (lingerCopy)
  {
    v8 = 3.0;
  }

  [(NUFeedTitleViewUpdate *)v7 setLingerTimeInterval:v8];

  return v7;
}

- (NUFeedTitleViewUpdate)initWithType:(unint64_t)type updateType:(unint64_t)updateType
{
  v7.receiver = self;
  v7.super_class = NUFeedTitleViewUpdate;
  result = [(NUFeedTitleViewUpdate *)&v7 init];
  if (result)
  {
    result->_type = type;
    result->_updateType = updateType;
    result->_lingerTimeInterval = 0.0;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [[NUFeedTitleViewUpdate alloc] initWithType:[(NUFeedTitleViewUpdate *)self type] updateType:[(NUFeedTitleViewUpdate *)self updateType]];
  [(NUFeedTitleViewUpdate *)v5 setStoryCount:[(NUFeedTitleViewUpdate *)self storyCount]];
  feedName = [(NUFeedTitleViewUpdate *)self feedName];
  v7 = [feedName copyWithZone:zone];
  [(NUFeedTitleViewUpdate *)v5 setFeedName:v7];

  feedImage = [(NUFeedTitleViewUpdate *)self feedImage];
  [(NUFeedTitleViewUpdate *)v5 setFeedImage:feedImage];

  [(NUFeedTitleViewUpdate *)self lingerTimeInterval];
  [(NUFeedTitleViewUpdate *)v5 setLingerTimeInterval:?];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = [(NUFeedTitleViewUpdate *)self type];
      if (type == [(NUFeedTitleViewUpdate *)v5 type]&& (v7 = [(NUFeedTitleViewUpdate *)self updateType], v7 == [(NUFeedTitleViewUpdate *)v5 updateType]) && ([(NUFeedTitleViewUpdate *)self lingerTimeInterval], v9 = v8, [(NUFeedTitleViewUpdate *)v5 lingerTimeInterval], v9 == v10))
      {
        if ([(NUFeedTitleViewUpdate *)self updateType])
        {
          v11 = 1;
        }

        else
        {
          v13 = MEMORY[0x277D82BB8];
          feedImage = [(NUFeedTitleViewUpdate *)self feedImage];
          feedImage2 = [(NUFeedTitleViewUpdate *)v5 feedImage];
          if ([v13 nf_object:feedImage isEqualToObject:feedImage2])
          {
            v11 = 1;
          }

          else
          {
            v16 = MEMORY[0x277D82BB8];
            feedImage3 = [(NUFeedTitleViewUpdate *)self feedImage];
            feedImage4 = [(NUFeedTitleViewUpdate *)v5 feedImage];
            v11 = [v16 nf_object:feedImage3 isEqualToObject:feedImage4];
          }
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)convertToTitleViewUpdateWithCompact:(BOOL)compact
{
  updateType = [(NUFeedTitleViewUpdate *)self updateType];
  if (updateType <= 1)
  {
    if (updateType)
    {
      if (updateType != 1)
      {
        goto LABEL_24;
      }

      v6 = NUBundle(1);
      v7 = v6;
      v8 = @"Checking for stories…";
      goto LABEL_16;
    }

    feedImage = [(NUFeedTitleViewUpdate *)self feedImage];

    if (feedImage)
    {
      v18 = [NUTitleViewUpdate alloc];
      feedImage2 = [(NUFeedTitleViewUpdate *)self feedImage];
      v20 = [(NUTitleViewUpdate *)v18 initWithImage:feedImage2];
    }

    else
    {
      attributedText = [(NUFeedTitleViewUpdate *)self attributedText];

      if (attributedText)
      {
        v23 = [NUTitleViewUpdate alloc];
        feedImage2 = [(NUFeedTitleViewUpdate *)self attributedText];
        v20 = [(NUTitleViewUpdate *)v23 initWithAttributedText:feedImage2 styleType:0];
      }

      else
      {
        feedName = [(NUFeedTitleViewUpdate *)self feedName];

        if (!feedName)
        {
          v3 = objc_alloc_init(NUTitleViewUpdate);
          goto LABEL_22;
        }

        v25 = [NUTitleViewUpdate alloc];
        feedImage2 = [(NUFeedTitleViewUpdate *)self feedName];
        v20 = [(NUTitleViewUpdate *)v25 initWithText:feedImage2 styleType:0];
      }
    }

    v3 = v20;

LABEL_22:
    [(NUTitleViewUpdate *)v3 setSpeakAccessibilityTitleWhenDisplayed:0];
    accessibilityTitle = [(NUFeedTitleViewUpdate *)self accessibilityTitle];
    [(NUTitleViewUpdate *)v3 setAccessibilityTitle:accessibilityTitle];
    goto LABEL_23;
  }

  if (updateType == 2)
  {
    v6 = NUBundle(2);
    v7 = v6;
    v8 = @"Checking for updates…";
LABEL_16:
    accessibilityTitle = [v6 localizedStringForKey:v8 value:&stru_286E03B58 table:0];

    v3 = [[NUTitleViewUpdate alloc] initWithText:accessibilityTitle styleType:1];
    [(NUTitleViewUpdate *)v3 setCancelPendingUpdates:1];
    accessibilityTitle2 = [(NUFeedTitleViewUpdate *)self accessibilityTitle];
    [(NUTitleViewUpdate *)v3 setAccessibilityTitle:accessibilityTitle2];

    [(NUTitleViewUpdate *)v3 setTextAlignment:[(NUFeedTitleViewUpdate *)self type]== 0];
    goto LABEL_23;
  }

  if (updateType != 3)
  {
    goto LABEL_24;
  }

  storyCount = [(NUFeedTitleViewUpdate *)self storyCount];
  v10 = NUBundle(storyCount);
  v11 = v10;
  if (storyCount <= 1)
  {
    v12 = @"New story";
  }

  else
  {
    v12 = @"New stories";
  }

  accessibilityTitle = [v10 localizedStringForKey:v12 value:&stru_286E03B58 table:0];

  v14 = +[NUImages newStoriesArrow];
  v3 = [[NUTitleViewUpdate alloc] initWithText:accessibilityTitle styleType:1 glyph:v14];
  if ([(NUFeedTitleViewUpdate *)self type]== 1)
  {
    value = [(NUTitleViewUpdate *)v3 value];
    [value setAlignment:1];
  }

  [(NUFeedTitleViewUpdate *)self lingerTimeInterval];
  [(NUTitleViewUpdate *)v3 setLingerTimeInterval:?];
  [(NUTitleViewUpdate *)v3 setCancelPendingUpdates:1];
  accessibilityTitle3 = [(NUFeedTitleViewUpdate *)self accessibilityTitle];
  [(NUTitleViewUpdate *)v3 setAccessibilityTitle:accessibilityTitle3];

LABEL_23:
LABEL_24:

  return v3;
}

@end