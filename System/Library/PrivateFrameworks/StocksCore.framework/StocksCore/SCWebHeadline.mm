@interface SCWebHeadline
- (BOOL)canBePurchased;
- (BOOL)disablePrerollAds;
- (BOOL)disableTapToChannel;
- (BOOL)hasGlobalUserFeedback;
- (BOOL)hasVideoStillImage;
- (BOOL)isBlockedExplicitContent;
- (BOOL)isBoundToContext;
- (BOOL)isCoread;
- (BOOL)isDeleted;
- (BOOL)isDraft;
- (BOOL)isExplicitContent;
- (BOOL)isFeatureCandidate;
- (BOOL)isFromBlockedStorefront;
- (BOOL)isFullTrackAvailableToAll;
- (BOOL)isHiddenFromAutoFavorites;
- (BOOL)isHiddenFromFeeds;
- (BOOL)isSponsored;
- (BOOL)isTopStory;
- (BOOL)needsRapidUpdates;
- (BOOL)showMinimalChrome;
- (BOOL)showPublisherLogo;
- (BOOL)usesImageOnTopLayout;
- (CGRect)thumbnailFocalFrame;
- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLCohortList)globalCohorts;
- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLCohortList)publisherCohorts;
- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLConversionStats)globalConversionStats;
- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLConversionStats)publisherConversionStats;
- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLTagMetadata)publisherTagMetadata;
- (FCAssetHandle)videoStillImage;
- (FCCoverArt)coverArt;
- (FCNativeAdProviding)associatedAd;
- (NSArray)allowedStorefrontIDs;
- (NSArray)blockedStorefrontIDs;
- (NSArray)iAdCategories;
- (NSArray)iAdKeywords;
- (NSArray)iAdSectionIDs;
- (NSArray)moreFromPublisherArticleIDs;
- (NSArray)narrators;
- (NSArray)publisherSpecifiedArticleIDs;
- (NSArray)relatedArticleIDs;
- (NSArray)sportsEventIDs;
- (NSArray)surfacedByArticleListIDs;
- (NSArray)topicIDs;
- (NSArray)topics;
- (NSDate)displayDate;
- (NSDate)lastFetchedDate;
- (NSDate)lastModifiedDate;
- (NSString)feedID;
- (NSString)localDraftPath;
- (NSString)nativeAdCampaignData;
- (NSString)primaryAudience;
- (NSString)publisherID;
- (NSString)referencedArticleID;
- (NSString)sourceChannelID;
- (NSString)sourceFeedID;
- (NSString)sponsoredBy;
- (NSString)surfacedByBinID;
- (NSString)surfacedByChannelID;
- (NSString)surfacedBySectionID;
- (NSString)surfacedByTopicID;
- (NSString)titleCompact;
- (NSString)videoCallToActionTitle;
- (NSString)videoType;
- (NSURL)videoCallToActionURL;
- (NSURL)videoURL;
- (SCWebHeadline)initWithURL:(id)l title:(id)title shortExcerpt:(id)excerpt publishDate:(id)date sourceName:(id)name;
- (double)globalScore;
- (double)globalUserFeedback;
- (double)tileProminenceScore;
- (double)videoDuration;
- (id)articleRecirculationConfigJSON;
- (id)endOfArticleTopicIDs;
- (id)surfacedByTagIDs;
- (int64_t)backendArticleVersion;
- (int64_t)minimumNewsVersion;
- (unint64_t)articleContentType;
- (unint64_t)feedHalfLifeMilliseconds;
- (unint64_t)feedOrder;
- (unint64_t)halfLife;
- (unint64_t)order;
- (unint64_t)publishDateMilliseconds;
- (unint64_t)topStoryType;
- (void)addSurfacedByArticleListID:(id)d;
- (void)allowedStorefrontIDs;
- (void)applyConditionalScore:(double)score;
- (void)articleContentType;
- (void)articleRecirculationConfigJSON;
- (void)associatedAd;
- (void)backendArticleVersion;
- (void)blockedStorefrontIDs;
- (void)canBePurchased;
- (void)coverArt;
- (void)disablePrerollAds;
- (void)disableTapToChannel;
- (void)displayDate;
- (void)endOfArticleTopicIDs;
- (void)enumerateTopicConversionStatsWithBlock:(id)block;
- (void)feedHalfLifeMilliseconds;
- (void)feedID;
- (void)feedOrder;
- (void)globalCohorts;
- (void)globalConversionStats;
- (void)globalScore;
- (void)globalUserFeedback;
- (void)halfLife;
- (void)hasGlobalUserFeedback;
- (void)hasVideoStillImage;
- (void)iAdCategories;
- (void)iAdKeywords;
- (void)iAdSectionIDs;
- (void)isBlockedExplicitContent;
- (void)isBoundToContext;
- (void)isCoread;
- (void)isDeleted;
- (void)isDraft;
- (void)isExplicitContent;
- (void)isFeatureCandidate;
- (void)isFromBlockedStorefront;
- (void)isFullTrackAvailableToAll;
- (void)isHiddenFromAutoFavorites;
- (void)isHiddenFromFeeds;
- (void)isSponsored;
- (void)isTopStory;
- (void)lastFetchedDate;
- (void)lastModifiedDate;
- (void)localDraftPath;
- (void)markAsEvergreen;
- (void)minimumNewsVersion;
- (void)moreFromPublisherArticleIDs;
- (void)narrators;
- (void)nativeAdCampaignData;
- (void)needsRapidUpdates;
- (void)order;
- (void)primaryAudience;
- (void)publishDateMilliseconds;
- (void)publisherCohorts;
- (void)publisherConversionStats;
- (void)publisherID;
- (void)publisherSpecifiedArticleIDs;
- (void)publisherTagMetadata;
- (void)referencedArticleID;
- (void)relatedArticleIDs;
- (void)showMinimalChrome;
- (void)showPublisherLogo;
- (void)sourceChannelID;
- (void)sourceFeedID;
- (void)sponsoredBy;
- (void)sportsEventIDs;
- (void)surfacedByArticleListIDs;
- (void)surfacedByBinID;
- (void)surfacedByChannelID;
- (void)surfacedBySectionID;
- (void)surfacedByTagIDs;
- (void)surfacedByTopicID;
- (void)thumbnailFocalFrame;
- (void)tileProminenceScore;
- (void)titleCompact;
- (void)topStoryType;
- (void)topicIDs;
- (void)topics;
- (void)usesImageOnTopLayout;
- (void)videoCallToActionTitle;
- (void)videoCallToActionURL;
- (void)videoDuration;
- (void)videoStillImage;
- (void)videoType;
- (void)videoURL;
@end

@implementation SCWebHeadline

- (SCWebHeadline)initWithURL:(id)l title:(id)title shortExcerpt:(id)excerpt publishDate:(id)date sourceName:(id)name
{
  lCopy = l;
  titleCopy = title;
  excerptCopy = excerpt;
  dateCopy = date;
  nameCopy = name;
  v22.receiver = self;
  v22.super_class = SCWebHeadline;
  v17 = [(SCWebHeadline *)&v22 init];
  if (v17)
  {
    absoluteString = [lCopy absoluteString];
    identifier = v17->_identifier;
    v17->_identifier = absoluteString;

    objc_storeStrong(&v17->_contentURL, l);
    objc_storeStrong(&v17->_title, title);
    objc_storeStrong(&v17->_shortExcerpt, excerpt);
    objc_storeStrong(&v17->_publishDate, date);
    objc_storeStrong(&v17->_sourceName, name);
  }

  return v17;
}

- (void)enumerateTopicConversionStatsWithBlock:(id)block
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline enumerateTopicConversionStatsWithBlock:];
  }
}

- (void)addSurfacedByArticleListID:(id)d
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline addSurfacedByArticleListID:];
  }
}

- (void)applyConditionalScore:(double)score
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline applyConditionalScore:];
  }
}

- (void)markAsEvergreen
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s method", "-[SCWebHeadline markAsEvergreen]"];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (NSDate)displayDate
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline displayDate];
  }

  return 0;
}

- (BOOL)usesImageOnTopLayout
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline usesImageOnTopLayout];
  }

  return 0;
}

- (unint64_t)topStoryType
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline topStoryType];
  }

  return 0;
}

- (BOOL)isTopStory
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline isTopStory];
  }

  return 0;
}

- (double)tileProminenceScore
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline tileProminenceScore];
  }

  return 0.0;
}

- (NSString)surfacedByBinID
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline surfacedByBinID];
  }

  return 0;
}

- (NSString)surfacedByTopicID
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline surfacedByTopicID];
  }

  return 0;
}

- (NSString)surfacedByChannelID
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline surfacedByChannelID];
  }

  return 0;
}

- (NSString)surfacedBySectionID
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline surfacedBySectionID];
  }

  return 0;
}

- (id)surfacedByTagIDs
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline surfacedByTagIDs];
  }

  return 0;
}

- (NSString)referencedArticleID
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline referencedArticleID];
  }

  return 0;
}

- (NSString)primaryAudience
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline primaryAudience];
  }

  return 0;
}

- (NSString)titleCompact
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline titleCompact];
  }

  return 0;
}

- (int64_t)backendArticleVersion
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline backendArticleVersion];
  }

  return 0;
}

- (CGRect)thumbnailFocalFrame
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline thumbnailFocalFrame];
  }

  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (NSDate)lastModifiedDate
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline lastModifiedDate];
  }

  return 0;
}

- (NSDate)lastFetchedDate
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline lastFetchedDate];
  }

  return 0;
}

- (NSArray)topics
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline topics];
  }

  return 0;
}

- (NSArray)topicIDs
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline topicIDs];
  }

  return 0;
}

- (id)endOfArticleTopicIDs
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline endOfArticleTopicIDs];
  }

  return 0;
}

- (NSURL)videoURL
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline videoURL];
  }

  return 0;
}

- (double)videoDuration
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline videoDuration];
  }

  return 0.0;
}

- (BOOL)isFeatureCandidate
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline isFeatureCandidate];
  }

  return 0;
}

- (BOOL)isSponsored
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline isSponsored];
  }

  return 0;
}

- (NSString)sponsoredBy
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline sponsoredBy];
  }

  return 0;
}

- (NSArray)iAdCategories
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline iAdCategories];
  }

  return 0;
}

- (NSArray)iAdKeywords
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline iAdKeywords];
  }

  return 0;
}

- (NSArray)iAdSectionIDs
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline iAdSectionIDs];
  }

  return 0;
}

- (NSArray)blockedStorefrontIDs
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline blockedStorefrontIDs];
  }

  return 0;
}

- (NSArray)allowedStorefrontIDs
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline allowedStorefrontIDs];
  }

  return 0;
}

- (BOOL)isDeleted
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline isDeleted];
  }

  return 0;
}

- (BOOL)isDraft
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline isDraft];
  }

  return 0;
}

- (NSString)localDraftPath
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline localDraftPath];
  }

  return 0;
}

- (NSArray)relatedArticleIDs
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline relatedArticleIDs];
  }

  return 0;
}

- (NSArray)moreFromPublisherArticleIDs
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline moreFromPublisherArticleIDs];
  }

  return 0;
}

- (int64_t)minimumNewsVersion
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline minimumNewsVersion];
  }

  return 0;
}

- (FCCoverArt)coverArt
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline coverArt];
  }

  return 0;
}

- (NSString)videoCallToActionTitle
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline videoCallToActionTitle];
  }

  return 0;
}

- (NSURL)videoCallToActionURL
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline videoCallToActionURL];
  }

  return 0;
}

- (BOOL)needsRapidUpdates
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline needsRapidUpdates];
  }

  return 0;
}

- (BOOL)showMinimalChrome
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline showMinimalChrome];
  }

  return 0;
}

- (BOOL)isBoundToContext
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline isBoundToContext];
  }

  return 0;
}

- (BOOL)isHiddenFromFeeds
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline isHiddenFromFeeds];
  }

  return 0;
}

- (NSString)sourceFeedID
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline sourceFeedID];
  }

  return 0;
}

- (NSString)publisherID
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline publisherID];
  }

  return 0;
}

- (double)globalUserFeedback
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline globalUserFeedback];
  }

  return 0.0;
}

- (BOOL)hasGlobalUserFeedback
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline hasGlobalUserFeedback];
  }

  return 0;
}

- (unint64_t)articleContentType
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline articleContentType];
  }

  return 0;
}

- (unint64_t)halfLife
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline halfLife];
  }

  return 0;
}

- (BOOL)isBlockedExplicitContent
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline isBlockedExplicitContent];
  }

  return 0;
}

- (unint64_t)feedOrder
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline feedOrder];
  }

  return 0;
}

- (BOOL)isFromBlockedStorefront
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline isFromBlockedStorefront];
  }

  return 0;
}

- (BOOL)isExplicitContent
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline isExplicitContent];
  }

  return 0;
}

- (NSString)feedID
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline feedID];
  }

  return 0;
}

- (unint64_t)order
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline order];
  }

  return 0;
}

- (NSString)sourceChannelID
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline sourceChannelID];
  }

  return 0;
}

- (unint64_t)publishDateMilliseconds
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline publishDateMilliseconds];
  }

  return 0;
}

- (unint64_t)feedHalfLifeMilliseconds
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline feedHalfLifeMilliseconds];
  }

  return 0;
}

- (double)globalScore
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline globalScore];
  }

  return 0.0;
}

- (BOOL)canBePurchased
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline canBePurchased];
  }

  return 0;
}

- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLCohortList)globalCohorts
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline globalCohorts];
  }

  return 0;
}

- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLCohortList)publisherCohorts
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline publisherCohorts];
  }

  return 0;
}

- (id)articleRecirculationConfigJSON
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline articleRecirculationConfigJSON];
  }

  return 0;
}

- (NSArray)publisherSpecifiedArticleIDs
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline publisherSpecifiedArticleIDs];
  }

  return 0;
}

- (FCNativeAdProviding)associatedAd
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline associatedAd];
  }

  return 0;
}

- (BOOL)isHiddenFromAutoFavorites
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline isHiddenFromAutoFavorites];
  }

  return 0;
}

- (BOOL)showPublisherLogo
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline showPublisherLogo];
  }

  return 0;
}

- (BOOL)isFullTrackAvailableToAll
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline isFullTrackAvailableToAll];
  }

  return 0;
}

- (NSArray)narrators
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline narrators];
  }

  return 0;
}

- (BOOL)disablePrerollAds
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline disablePrerollAds];
  }

  return 0;
}

- (BOOL)disableTapToChannel
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline disableTapToChannel];
  }

  return 0;
}

- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLConversionStats)globalConversionStats
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline globalConversionStats];
  }

  return 0;
}

- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLConversionStats)publisherConversionStats
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline publisherConversionStats];
  }

  return 0;
}

- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLTagMetadata)publisherTagMetadata
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline publisherTagMetadata];
  }

  return 0;
}

- (BOOL)hasVideoStillImage
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline hasVideoStillImage];
  }

  return 0;
}

- (FCAssetHandle)videoStillImage
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline videoStillImage];
  }

  return 0;
}

- (NSString)videoType
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline videoType];
  }

  return 0;
}

- (BOOL)isCoread
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline isCoread];
  }

  return 0;
}

- (NSString)nativeAdCampaignData
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline nativeAdCampaignData];
  }

  return 0;
}

- (NSArray)sportsEventIDs
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline sportsEventIDs];
  }

  return 0;
}

- (NSArray)surfacedByArticleListIDs
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline surfacedByArticleListIDs];
  }

  return 0;
}

- (void)enumerateTopicConversionStatsWithBlock:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s method", "-[SCWebHeadline enumerateTopicConversionStatsWithBlock:]"];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)addSurfacedByArticleListID:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s method", "-[SCWebHeadline addSurfacedByArticleListID:]"];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)applyConditionalScore:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s method", "-[SCWebHeadline applyConditionalScore:]"];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)displayDate
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "displayDate"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)usesImageOnTopLayout
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "usesImageOnTopLayout"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)topStoryType
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "topStoryType"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)isTopStory
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "isTopStory"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)tileProminenceScore
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "tileProminenceScore"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)surfacedByBinID
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "surfacedByBinID"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)surfacedByTopicID
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "surfacedByTopicID"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)surfacedByChannelID
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "surfacedByChannelID"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)surfacedBySectionID
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "surfacedBySectionID"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)surfacedByTagIDs
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "surfacedByTagIDs"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)referencedArticleID
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "referencedArticleID"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)primaryAudience
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "primaryAudience"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)titleCompact
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "titleCompact"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)backendArticleVersion
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "backendArticleVersion"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)thumbnailFocalFrame
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "thumbnailFocalFrame"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)lastModifiedDate
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "lastModifiedDate"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)lastFetchedDate
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "lastFetchedDate"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)topics
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "topics"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)topicIDs
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "topicIDs"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)endOfArticleTopicIDs
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "endOfArticleTopicIDs"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)videoURL
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "videoURL"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)videoDuration
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "videoDuration"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)isFeatureCandidate
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "isFeatureCandidate"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)isSponsored
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "isSponsored"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)sponsoredBy
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "sponsoredBy"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)iAdCategories
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "iAdCategories"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)iAdKeywords
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "iAdKeywords"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)iAdSectionIDs
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "iAdSectionIDs"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)blockedStorefrontIDs
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "blockedStorefrontIDs"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)allowedStorefrontIDs
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "allowedStorefrontIDs"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)isDeleted
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "isDeleted"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)isDraft
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "isDraft"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)localDraftPath
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "localDraftPath"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)relatedArticleIDs
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "relatedArticleIDs"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)moreFromPublisherArticleIDs
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "moreFromPublisherArticleIDs"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)minimumNewsVersion
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "minimumNewsVersion"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)coverArt
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "coverArt"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)videoCallToActionTitle
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "videoCallToActionTitle"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)videoCallToActionURL
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "videoCallToActionURL"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)needsRapidUpdates
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "needsRapidUpdates"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)showMinimalChrome
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "showMinimalChrome"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)isBoundToContext
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "isBoundToContext"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)isHiddenFromFeeds
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "isHiddenFromFeeds"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)sourceFeedID
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "sourceFeedID"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)publisherID
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "publisherID"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)globalUserFeedback
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "globalUserFeedback"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)hasGlobalUserFeedback
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "hasGlobalUserFeedback"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)articleContentType
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "articleContentType"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)halfLife
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "halfLife"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)isBlockedExplicitContent
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "isBlockedExplicitContent"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)feedOrder
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "feedOrder"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)isFromBlockedStorefront
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "isFromBlockedStorefront"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)isExplicitContent
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "isExplicitContent"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)feedID
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "feedID"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)order
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "order"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)sourceChannelID
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "sourceChannelID"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)publishDateMilliseconds
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "publishDateMilliseconds"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)feedHalfLifeMilliseconds
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "feedHalfLifeMilliseconds"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)globalScore
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "globalScore"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)canBePurchased
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "canBePurchased"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)globalCohorts
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "globalCohorts"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)publisherCohorts
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "publisherCohorts"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)articleRecirculationConfigJSON
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "articleRecirculationConfigJSON"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)publisherSpecifiedArticleIDs
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "publisherSpecifiedArticleIDs"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)associatedAd
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "associatedAd"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)isHiddenFromAutoFavorites
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "isHiddenFromAutoFavorites"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)showPublisherLogo
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "showPublisherLogo"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)isFullTrackAvailableToAll
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "isFullTrackAvailableToAll"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)narrators
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "narrators"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)disablePrerollAds
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "disablePrerollAds"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)disableTapToChannel
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "disableTapToChannel"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)globalConversionStats
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "globalConversionStats"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)publisherConversionStats
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "publisherConversionStats"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)publisherTagMetadata
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "publisherTagMetadata"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)hasVideoStillImage
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "hasVideoStillImage"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)videoStillImage
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "videoStillImage"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)videoType
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "videoType"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)isCoread
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "isCoread"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)nativeAdCampaignData
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "nativeAdCampaignData"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)sportsEventIDs
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "sportsEventIDs"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)surfacedByArticleListIDs
{
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property", "surfacedByArticleListIDs"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

@end