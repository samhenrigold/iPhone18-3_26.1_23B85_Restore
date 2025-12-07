@interface BMSiriMusicInferenceTrainingDependentSignals
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriMusicInferenceTrainingDependentSignals)initWithIsClientForegroundActiveBundle:(id)bundle compoundActiveBundleScore:(id)score compoundMediaTypeBundleScore:(id)bundleScore entitySearchBundleRecencyS:(id)s entitySearchBundleScore:(id)searchBundleScore isForegroundBundle:(id)foregroundBundle isNowPlayingBundle:(id)playingBundle nowPlayingBundleCount:(id)self0 nowPlayingBundleRecencyS:(id)self1 nowPlayingBundleScore:(id)self2 isNowPlayingLastBundle:(id)self3 nowPlayingUsage1Day:(id)self4 nowPlayingUsage7Days:(id)self5 nowPlayingUsage14Days:(id)self6 isRawLastNowPlayingCoreDuet:(id)self7 isRawMediaCategoryAudiobookSignal:(id)self8 isRawMediaCategoryMusicSignal:(id)self9 isRawMediaCategoryPodcastSignal:(id)podcastSignal isRawMediaCategoryRadioSignal:(id)radioSignal isRawMediaCategoryVideoSignal:(id)videoSignal rawMediaTypeUsageSignalBook:(id)book rawMediaTypeUsageSignalMusic:(id)music rawMediaTypeUsageSignalPodcast:(id)podcast rawMediaTypeUsageSignalVideo:(id)video rawNowPlayingCountCoreDuet10Min:(id)min rawNowPlayingCountCoreDuet1Day:(id)duet1Day rawNowPlayingCountCoreDuet1Hr:(id)hr rawNowPlayingCountCoreDuet28Day:(id)bundle0 rawNowPlayingCountCoreDuet2Min:(id)bundle1 rawNowPlayingCountCoreDuet6Hr:(id)bundle2 rawNowPlayingCountCoreDuet7Day:(id)bundle3 rawNowPlayingRecencyCD:(id)bundle4 rawEntitySearchRecency:(id)bundle5 usageScoreBooks:(id)bundle6 usageScoreMusic:(id)bundle7 usageScorePodcasts:(id)bundle8 isAppFirstParty:(id)bundle9 isRequestedApp:(id)score0 isNowPlayingBundlePSE1:(id)score1 isNowPlayingBundlePSE2:(id)score2 vq21Score:(id)score3 isSupportedFlag:(id)score4 isUnicornFlag:(id)score5 isSupportedUnicornMatchFlag:(id)score6 isDisambiguationSelectedApp:(id)score7 isModelPredictedApp:(id)score8 usageScoreRadio:(id)score9 usageScoreMusicWithoutRadio:(id)bundleScore0 rawMediaTypeUsageSignalRadio:(id)bundleScore1 rawMediaTypeUsageSignalMusicWithoutRadio:(id)bundleScore2;
- (BMSiriMusicInferenceTrainingDependentSignals)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriMusicInferenceTrainingDependentSignals

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v80 = 0;
    goto LABEL_255;
  }

  v5 = equalCopy;
  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsClientForegroundActiveBundle](self, "hasIsClientForegroundActiveBundle") || [v5 hasIsClientForegroundActiveBundle])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsClientForegroundActiveBundle])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsClientForegroundActiveBundle])
    {
      goto LABEL_252;
    }

    isClientForegroundActiveBundle = [(BMSiriMusicInferenceTrainingDependentSignals *)self isClientForegroundActiveBundle];
    if (isClientForegroundActiveBundle != [v5 isClientForegroundActiveBundle])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasCompoundActiveBundleScore](self, "hasCompoundActiveBundleScore") || [v5 hasCompoundActiveBundleScore])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasCompoundActiveBundleScore])
    {
      goto LABEL_252;
    }

    if (![v5 hasCompoundActiveBundleScore])
    {
      goto LABEL_252;
    }

    [(BMSiriMusicInferenceTrainingDependentSignals *)self compoundActiveBundleScore];
    v8 = v7;
    [v5 compoundActiveBundleScore];
    if (v8 != v9)
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasCompoundMediaTypeBundleScore](self, "hasCompoundMediaTypeBundleScore") || [v5 hasCompoundMediaTypeBundleScore])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasCompoundMediaTypeBundleScore])
    {
      goto LABEL_252;
    }

    if (![v5 hasCompoundMediaTypeBundleScore])
    {
      goto LABEL_252;
    }

    [(BMSiriMusicInferenceTrainingDependentSignals *)self compoundMediaTypeBundleScore];
    v11 = v10;
    [v5 compoundMediaTypeBundleScore];
    if (v11 != v12)
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasEntitySearchBundleRecencyS](self, "hasEntitySearchBundleRecencyS") || [v5 hasEntitySearchBundleRecencyS])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasEntitySearchBundleRecencyS])
    {
      goto LABEL_252;
    }

    if (![v5 hasEntitySearchBundleRecencyS])
    {
      goto LABEL_252;
    }

    [(BMSiriMusicInferenceTrainingDependentSignals *)self entitySearchBundleRecencyS];
    v14 = v13;
    [v5 entitySearchBundleRecencyS];
    if (v14 != v15)
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasEntitySearchBundleScore](self, "hasEntitySearchBundleScore") || [v5 hasEntitySearchBundleScore])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasEntitySearchBundleScore])
    {
      goto LABEL_252;
    }

    if (![v5 hasEntitySearchBundleScore])
    {
      goto LABEL_252;
    }

    [(BMSiriMusicInferenceTrainingDependentSignals *)self entitySearchBundleScore];
    v17 = v16;
    [v5 entitySearchBundleScore];
    if (v17 != v18)
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsForegroundBundle](self, "hasIsForegroundBundle") || [v5 hasIsForegroundBundle])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsForegroundBundle])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsForegroundBundle])
    {
      goto LABEL_252;
    }

    isForegroundBundle = [(BMSiriMusicInferenceTrainingDependentSignals *)self isForegroundBundle];
    if (isForegroundBundle != [v5 isForegroundBundle])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsNowPlayingBundle](self, "hasIsNowPlayingBundle") || [v5 hasIsNowPlayingBundle])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsNowPlayingBundle])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsNowPlayingBundle])
    {
      goto LABEL_252;
    }

    isNowPlayingBundle = [(BMSiriMusicInferenceTrainingDependentSignals *)self isNowPlayingBundle];
    if (isNowPlayingBundle != [v5 isNowPlayingBundle])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasNowPlayingBundleCount](self, "hasNowPlayingBundleCount") || [v5 hasNowPlayingBundleCount])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasNowPlayingBundleCount])
    {
      goto LABEL_252;
    }

    if (![v5 hasNowPlayingBundleCount])
    {
      goto LABEL_252;
    }

    nowPlayingBundleCount = [(BMSiriMusicInferenceTrainingDependentSignals *)self nowPlayingBundleCount];
    if (nowPlayingBundleCount != [v5 nowPlayingBundleCount])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasNowPlayingBundleRecencyS](self, "hasNowPlayingBundleRecencyS") || [v5 hasNowPlayingBundleRecencyS])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasNowPlayingBundleRecencyS])
    {
      goto LABEL_252;
    }

    if (![v5 hasNowPlayingBundleRecencyS])
    {
      goto LABEL_252;
    }

    [(BMSiriMusicInferenceTrainingDependentSignals *)self nowPlayingBundleRecencyS];
    v23 = v22;
    [v5 nowPlayingBundleRecencyS];
    if (v23 != v24)
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasNowPlayingBundleScore](self, "hasNowPlayingBundleScore") || [v5 hasNowPlayingBundleScore])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasNowPlayingBundleScore])
    {
      goto LABEL_252;
    }

    if (![v5 hasNowPlayingBundleScore])
    {
      goto LABEL_252;
    }

    [(BMSiriMusicInferenceTrainingDependentSignals *)self nowPlayingBundleScore];
    v26 = v25;
    [v5 nowPlayingBundleScore];
    if (v26 != v27)
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsNowPlayingLastBundle](self, "hasIsNowPlayingLastBundle") || [v5 hasIsNowPlayingLastBundle])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsNowPlayingLastBundle])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsNowPlayingLastBundle])
    {
      goto LABEL_252;
    }

    isNowPlayingLastBundle = [(BMSiriMusicInferenceTrainingDependentSignals *)self isNowPlayingLastBundle];
    if (isNowPlayingLastBundle != [v5 isNowPlayingLastBundle])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasNowPlayingUsage1Day](self, "hasNowPlayingUsage1Day") || [v5 hasNowPlayingUsage1Day])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasNowPlayingUsage1Day])
    {
      goto LABEL_252;
    }

    if (![v5 hasNowPlayingUsage1Day])
    {
      goto LABEL_252;
    }

    nowPlayingUsage1Day = [(BMSiriMusicInferenceTrainingDependentSignals *)self nowPlayingUsage1Day];
    if (nowPlayingUsage1Day != [v5 nowPlayingUsage1Day])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasNowPlayingUsage7Days](self, "hasNowPlayingUsage7Days") || [v5 hasNowPlayingUsage7Days])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasNowPlayingUsage7Days])
    {
      goto LABEL_252;
    }

    if (![v5 hasNowPlayingUsage7Days])
    {
      goto LABEL_252;
    }

    nowPlayingUsage7Days = [(BMSiriMusicInferenceTrainingDependentSignals *)self nowPlayingUsage7Days];
    if (nowPlayingUsage7Days != [v5 nowPlayingUsage7Days])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasNowPlayingUsage14Days](self, "hasNowPlayingUsage14Days") || [v5 hasNowPlayingUsage14Days])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasNowPlayingUsage14Days])
    {
      goto LABEL_252;
    }

    if (![v5 hasNowPlayingUsage14Days])
    {
      goto LABEL_252;
    }

    nowPlayingUsage14Days = [(BMSiriMusicInferenceTrainingDependentSignals *)self nowPlayingUsage14Days];
    if (nowPlayingUsage14Days != [v5 nowPlayingUsage14Days])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsRawLastNowPlayingCoreDuet](self, "hasIsRawLastNowPlayingCoreDuet") || [v5 hasIsRawLastNowPlayingCoreDuet])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsRawLastNowPlayingCoreDuet])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsRawLastNowPlayingCoreDuet])
    {
      goto LABEL_252;
    }

    isRawLastNowPlayingCoreDuet = [(BMSiriMusicInferenceTrainingDependentSignals *)self isRawLastNowPlayingCoreDuet];
    if (isRawLastNowPlayingCoreDuet != [v5 isRawLastNowPlayingCoreDuet])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsRawMediaCategoryAudiobookSignal](self, "hasIsRawMediaCategoryAudiobookSignal") || [v5 hasIsRawMediaCategoryAudiobookSignal])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsRawMediaCategoryAudiobookSignal])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsRawMediaCategoryAudiobookSignal])
    {
      goto LABEL_252;
    }

    isRawMediaCategoryAudiobookSignal = [(BMSiriMusicInferenceTrainingDependentSignals *)self isRawMediaCategoryAudiobookSignal];
    if (isRawMediaCategoryAudiobookSignal != [v5 isRawMediaCategoryAudiobookSignal])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsRawMediaCategoryMusicSignal](self, "hasIsRawMediaCategoryMusicSignal") || [v5 hasIsRawMediaCategoryMusicSignal])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsRawMediaCategoryMusicSignal])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsRawMediaCategoryMusicSignal])
    {
      goto LABEL_252;
    }

    isRawMediaCategoryMusicSignal = [(BMSiriMusicInferenceTrainingDependentSignals *)self isRawMediaCategoryMusicSignal];
    if (isRawMediaCategoryMusicSignal != [v5 isRawMediaCategoryMusicSignal])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsRawMediaCategoryPodcastSignal](self, "hasIsRawMediaCategoryPodcastSignal") || [v5 hasIsRawMediaCategoryPodcastSignal])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsRawMediaCategoryPodcastSignal])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsRawMediaCategoryPodcastSignal])
    {
      goto LABEL_252;
    }

    isRawMediaCategoryPodcastSignal = [(BMSiriMusicInferenceTrainingDependentSignals *)self isRawMediaCategoryPodcastSignal];
    if (isRawMediaCategoryPodcastSignal != [v5 isRawMediaCategoryPodcastSignal])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsRawMediaCategoryRadioSignal](self, "hasIsRawMediaCategoryRadioSignal") || [v5 hasIsRawMediaCategoryRadioSignal])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsRawMediaCategoryRadioSignal])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsRawMediaCategoryRadioSignal])
    {
      goto LABEL_252;
    }

    isRawMediaCategoryRadioSignal = [(BMSiriMusicInferenceTrainingDependentSignals *)self isRawMediaCategoryRadioSignal];
    if (isRawMediaCategoryRadioSignal != [v5 isRawMediaCategoryRadioSignal])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsRawMediaCategoryVideoSignal](self, "hasIsRawMediaCategoryVideoSignal") || [v5 hasIsRawMediaCategoryVideoSignal])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsRawMediaCategoryVideoSignal])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsRawMediaCategoryVideoSignal])
    {
      goto LABEL_252;
    }

    isRawMediaCategoryVideoSignal = [(BMSiriMusicInferenceTrainingDependentSignals *)self isRawMediaCategoryVideoSignal];
    if (isRawMediaCategoryVideoSignal != [v5 isRawMediaCategoryVideoSignal])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasRawMediaTypeUsageSignalBook](self, "hasRawMediaTypeUsageSignalBook") || [v5 hasRawMediaTypeUsageSignalBook])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawMediaTypeUsageSignalBook])
    {
      goto LABEL_252;
    }

    if (![v5 hasRawMediaTypeUsageSignalBook])
    {
      goto LABEL_252;
    }

    rawMediaTypeUsageSignalBook = [(BMSiriMusicInferenceTrainingDependentSignals *)self rawMediaTypeUsageSignalBook];
    if (rawMediaTypeUsageSignalBook != [v5 rawMediaTypeUsageSignalBook])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasRawMediaTypeUsageSignalMusic](self, "hasRawMediaTypeUsageSignalMusic") || [v5 hasRawMediaTypeUsageSignalMusic])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawMediaTypeUsageSignalMusic])
    {
      goto LABEL_252;
    }

    if (![v5 hasRawMediaTypeUsageSignalMusic])
    {
      goto LABEL_252;
    }

    rawMediaTypeUsageSignalMusic = [(BMSiriMusicInferenceTrainingDependentSignals *)self rawMediaTypeUsageSignalMusic];
    if (rawMediaTypeUsageSignalMusic != [v5 rawMediaTypeUsageSignalMusic])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasRawMediaTypeUsageSignalPodcast](self, "hasRawMediaTypeUsageSignalPodcast") || [v5 hasRawMediaTypeUsageSignalPodcast])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawMediaTypeUsageSignalPodcast])
    {
      goto LABEL_252;
    }

    if (![v5 hasRawMediaTypeUsageSignalPodcast])
    {
      goto LABEL_252;
    }

    rawMediaTypeUsageSignalPodcast = [(BMSiriMusicInferenceTrainingDependentSignals *)self rawMediaTypeUsageSignalPodcast];
    if (rawMediaTypeUsageSignalPodcast != [v5 rawMediaTypeUsageSignalPodcast])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasRawMediaTypeUsageSignalVideo](self, "hasRawMediaTypeUsageSignalVideo") || [v5 hasRawMediaTypeUsageSignalVideo])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawMediaTypeUsageSignalVideo])
    {
      goto LABEL_252;
    }

    if (![v5 hasRawMediaTypeUsageSignalVideo])
    {
      goto LABEL_252;
    }

    rawMediaTypeUsageSignalVideo = [(BMSiriMusicInferenceTrainingDependentSignals *)self rawMediaTypeUsageSignalVideo];
    if (rawMediaTypeUsageSignalVideo != [v5 rawMediaTypeUsageSignalVideo])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasRawNowPlayingCountCoreDuet10Min](self, "hasRawNowPlayingCountCoreDuet10Min") || [v5 hasRawNowPlayingCountCoreDuet10Min])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingCountCoreDuet10Min])
    {
      goto LABEL_252;
    }

    if (![v5 hasRawNowPlayingCountCoreDuet10Min])
    {
      goto LABEL_252;
    }

    rawNowPlayingCountCoreDuet10Min = [(BMSiriMusicInferenceTrainingDependentSignals *)self rawNowPlayingCountCoreDuet10Min];
    if (rawNowPlayingCountCoreDuet10Min != [v5 rawNowPlayingCountCoreDuet10Min])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasRawNowPlayingCountCoreDuet1Day](self, "hasRawNowPlayingCountCoreDuet1Day") || [v5 hasRawNowPlayingCountCoreDuet1Day])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingCountCoreDuet1Day])
    {
      goto LABEL_252;
    }

    if (![v5 hasRawNowPlayingCountCoreDuet1Day])
    {
      goto LABEL_252;
    }

    rawNowPlayingCountCoreDuet1Day = [(BMSiriMusicInferenceTrainingDependentSignals *)self rawNowPlayingCountCoreDuet1Day];
    if (rawNowPlayingCountCoreDuet1Day != [v5 rawNowPlayingCountCoreDuet1Day])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasRawNowPlayingCountCoreDuet1Hr](self, "hasRawNowPlayingCountCoreDuet1Hr") || [v5 hasRawNowPlayingCountCoreDuet1Hr])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingCountCoreDuet1Hr])
    {
      goto LABEL_252;
    }

    if (![v5 hasRawNowPlayingCountCoreDuet1Hr])
    {
      goto LABEL_252;
    }

    rawNowPlayingCountCoreDuet1Hr = [(BMSiriMusicInferenceTrainingDependentSignals *)self rawNowPlayingCountCoreDuet1Hr];
    if (rawNowPlayingCountCoreDuet1Hr != [v5 rawNowPlayingCountCoreDuet1Hr])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasRawNowPlayingCountCoreDuet28Day](self, "hasRawNowPlayingCountCoreDuet28Day") || [v5 hasRawNowPlayingCountCoreDuet28Day])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingCountCoreDuet28Day])
    {
      goto LABEL_252;
    }

    if (![v5 hasRawNowPlayingCountCoreDuet28Day])
    {
      goto LABEL_252;
    }

    rawNowPlayingCountCoreDuet28Day = [(BMSiriMusicInferenceTrainingDependentSignals *)self rawNowPlayingCountCoreDuet28Day];
    if (rawNowPlayingCountCoreDuet28Day != [v5 rawNowPlayingCountCoreDuet28Day])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasRawNowPlayingCountCoreDuet2Min](self, "hasRawNowPlayingCountCoreDuet2Min") || [v5 hasRawNowPlayingCountCoreDuet2Min])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingCountCoreDuet2Min])
    {
      goto LABEL_252;
    }

    if (![v5 hasRawNowPlayingCountCoreDuet2Min])
    {
      goto LABEL_252;
    }

    rawNowPlayingCountCoreDuet2Min = [(BMSiriMusicInferenceTrainingDependentSignals *)self rawNowPlayingCountCoreDuet2Min];
    if (rawNowPlayingCountCoreDuet2Min != [v5 rawNowPlayingCountCoreDuet2Min])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasRawNowPlayingCountCoreDuet6Hr](self, "hasRawNowPlayingCountCoreDuet6Hr") || [v5 hasRawNowPlayingCountCoreDuet6Hr])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingCountCoreDuet6Hr])
    {
      goto LABEL_252;
    }

    if (![v5 hasRawNowPlayingCountCoreDuet6Hr])
    {
      goto LABEL_252;
    }

    rawNowPlayingCountCoreDuet6Hr = [(BMSiriMusicInferenceTrainingDependentSignals *)self rawNowPlayingCountCoreDuet6Hr];
    if (rawNowPlayingCountCoreDuet6Hr != [v5 rawNowPlayingCountCoreDuet6Hr])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasRawNowPlayingCountCoreDuet7Day](self, "hasRawNowPlayingCountCoreDuet7Day") || [v5 hasRawNowPlayingCountCoreDuet7Day])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingCountCoreDuet7Day])
    {
      goto LABEL_252;
    }

    if (![v5 hasRawNowPlayingCountCoreDuet7Day])
    {
      goto LABEL_252;
    }

    rawNowPlayingCountCoreDuet7Day = [(BMSiriMusicInferenceTrainingDependentSignals *)self rawNowPlayingCountCoreDuet7Day];
    if (rawNowPlayingCountCoreDuet7Day != [v5 rawNowPlayingCountCoreDuet7Day])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasRawNowPlayingRecencyCD](self, "hasRawNowPlayingRecencyCD") || [v5 hasRawNowPlayingRecencyCD])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingRecencyCD])
    {
      goto LABEL_252;
    }

    if (![v5 hasRawNowPlayingRecencyCD])
    {
      goto LABEL_252;
    }

    rawNowPlayingRecencyCD = [(BMSiriMusicInferenceTrainingDependentSignals *)self rawNowPlayingRecencyCD];
    if (rawNowPlayingRecencyCD != [v5 rawNowPlayingRecencyCD])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasRawEntitySearchRecency](self, "hasRawEntitySearchRecency") || [v5 hasRawEntitySearchRecency])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawEntitySearchRecency])
    {
      goto LABEL_252;
    }

    if (![v5 hasRawEntitySearchRecency])
    {
      goto LABEL_252;
    }

    rawEntitySearchRecency = [(BMSiriMusicInferenceTrainingDependentSignals *)self rawEntitySearchRecency];
    if (rawEntitySearchRecency != [v5 rawEntitySearchRecency])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasUsageScoreBooks](self, "hasUsageScoreBooks") || [v5 hasUsageScoreBooks])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasUsageScoreBooks])
    {
      goto LABEL_252;
    }

    if (![v5 hasUsageScoreBooks])
    {
      goto LABEL_252;
    }

    [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreBooks];
    v52 = v51;
    [v5 usageScoreBooks];
    if (v52 != v53)
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasUsageScoreMusic](self, "hasUsageScoreMusic") || [v5 hasUsageScoreMusic])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasUsageScoreMusic])
    {
      goto LABEL_252;
    }

    if (![v5 hasUsageScoreMusic])
    {
      goto LABEL_252;
    }

    [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreMusic];
    v55 = v54;
    [v5 usageScoreMusic];
    if (v55 != v56)
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasUsageScorePodcasts](self, "hasUsageScorePodcasts") || [v5 hasUsageScorePodcasts])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasUsageScorePodcasts])
    {
      goto LABEL_252;
    }

    if (![v5 hasUsageScorePodcasts])
    {
      goto LABEL_252;
    }

    [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScorePodcasts];
    v58 = v57;
    [v5 usageScorePodcasts];
    if (v58 != v59)
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsAppFirstParty](self, "hasIsAppFirstParty") || [v5 hasIsAppFirstParty])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsAppFirstParty])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsAppFirstParty])
    {
      goto LABEL_252;
    }

    isAppFirstParty = [(BMSiriMusicInferenceTrainingDependentSignals *)self isAppFirstParty];
    if (isAppFirstParty != [v5 isAppFirstParty])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsRequestedApp](self, "hasIsRequestedApp") || [v5 hasIsRequestedApp])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsRequestedApp])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsRequestedApp])
    {
      goto LABEL_252;
    }

    isRequestedApp = [(BMSiriMusicInferenceTrainingDependentSignals *)self isRequestedApp];
    if (isRequestedApp != [v5 isRequestedApp])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsNowPlayingBundlePSE1](self, "hasIsNowPlayingBundlePSE1") || [v5 hasIsNowPlayingBundlePSE1])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsNowPlayingBundlePSE1])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsNowPlayingBundlePSE1])
    {
      goto LABEL_252;
    }

    isNowPlayingBundlePSE1 = [(BMSiriMusicInferenceTrainingDependentSignals *)self isNowPlayingBundlePSE1];
    if (isNowPlayingBundlePSE1 != [v5 isNowPlayingBundlePSE1])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsNowPlayingBundlePSE2](self, "hasIsNowPlayingBundlePSE2") || [v5 hasIsNowPlayingBundlePSE2])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsNowPlayingBundlePSE2])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsNowPlayingBundlePSE2])
    {
      goto LABEL_252;
    }

    isNowPlayingBundlePSE2 = [(BMSiriMusicInferenceTrainingDependentSignals *)self isNowPlayingBundlePSE2];
    if (isNowPlayingBundlePSE2 != [v5 isNowPlayingBundlePSE2])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasVq21Score](self, "hasVq21Score") || [v5 hasVq21Score])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasVq21Score])
    {
      goto LABEL_252;
    }

    if (![v5 hasVq21Score])
    {
      goto LABEL_252;
    }

    [(BMSiriMusicInferenceTrainingDependentSignals *)self vq21Score];
    v65 = v64;
    [v5 vq21Score];
    if (v65 != v66)
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsSupportedFlag](self, "hasIsSupportedFlag") || [v5 hasIsSupportedFlag])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsSupportedFlag])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsSupportedFlag])
    {
      goto LABEL_252;
    }

    isSupportedFlag = [(BMSiriMusicInferenceTrainingDependentSignals *)self isSupportedFlag];
    if (isSupportedFlag != [v5 isSupportedFlag])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsUnicornFlag](self, "hasIsUnicornFlag") || [v5 hasIsUnicornFlag])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsUnicornFlag])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsUnicornFlag])
    {
      goto LABEL_252;
    }

    isUnicornFlag = [(BMSiriMusicInferenceTrainingDependentSignals *)self isUnicornFlag];
    if (isUnicornFlag != [v5 isUnicornFlag])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsSupportedUnicornMatchFlag](self, "hasIsSupportedUnicornMatchFlag") || [v5 hasIsSupportedUnicornMatchFlag])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsSupportedUnicornMatchFlag])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsSupportedUnicornMatchFlag])
    {
      goto LABEL_252;
    }

    isSupportedUnicornMatchFlag = [(BMSiriMusicInferenceTrainingDependentSignals *)self isSupportedUnicornMatchFlag];
    if (isSupportedUnicornMatchFlag != [v5 isSupportedUnicornMatchFlag])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsDisambiguationSelectedApp](self, "hasIsDisambiguationSelectedApp") || [v5 hasIsDisambiguationSelectedApp])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsDisambiguationSelectedApp])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsDisambiguationSelectedApp])
    {
      goto LABEL_252;
    }

    isDisambiguationSelectedApp = [(BMSiriMusicInferenceTrainingDependentSignals *)self isDisambiguationSelectedApp];
    if (isDisambiguationSelectedApp != [v5 isDisambiguationSelectedApp])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasIsModelPredictedApp](self, "hasIsModelPredictedApp") || [v5 hasIsModelPredictedApp])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsModelPredictedApp])
    {
      goto LABEL_252;
    }

    if (![v5 hasIsModelPredictedApp])
    {
      goto LABEL_252;
    }

    isModelPredictedApp = [(BMSiriMusicInferenceTrainingDependentSignals *)self isModelPredictedApp];
    if (isModelPredictedApp != [v5 isModelPredictedApp])
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasUsageScoreRadio](self, "hasUsageScoreRadio") || [v5 hasUsageScoreRadio])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasUsageScoreRadio])
    {
      goto LABEL_252;
    }

    if (![v5 hasUsageScoreRadio])
    {
      goto LABEL_252;
    }

    [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreRadio];
    v73 = v72;
    [v5 usageScoreRadio];
    if (v73 != v74)
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasUsageScoreMusicWithoutRadio](self, "hasUsageScoreMusicWithoutRadio") || [v5 hasUsageScoreMusicWithoutRadio])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasUsageScoreMusicWithoutRadio])
    {
      goto LABEL_252;
    }

    if (![v5 hasUsageScoreMusicWithoutRadio])
    {
      goto LABEL_252;
    }

    [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreMusicWithoutRadio];
    v76 = v75;
    [v5 usageScoreMusicWithoutRadio];
    if (v76 != v77)
    {
      goto LABEL_252;
    }
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasRawMediaTypeUsageSignalRadio](self, "hasRawMediaTypeUsageSignalRadio") || [v5 hasRawMediaTypeUsageSignalRadio])
  {
    if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawMediaTypeUsageSignalRadio])
    {
      goto LABEL_252;
    }

    if (![v5 hasRawMediaTypeUsageSignalRadio])
    {
      goto LABEL_252;
    }

    rawMediaTypeUsageSignalRadio = [(BMSiriMusicInferenceTrainingDependentSignals *)self rawMediaTypeUsageSignalRadio];
    if (rawMediaTypeUsageSignalRadio != [v5 rawMediaTypeUsageSignalRadio])
    {
      goto LABEL_252;
    }
  }

  if (!-[BMSiriMusicInferenceTrainingDependentSignals hasRawMediaTypeUsageSignalMusicWithoutRadio](self, "hasRawMediaTypeUsageSignalMusicWithoutRadio") && ![v5 hasRawMediaTypeUsageSignalMusicWithoutRadio])
  {
    v80 = 1;
    goto LABEL_253;
  }

  if (-[BMSiriMusicInferenceTrainingDependentSignals hasRawMediaTypeUsageSignalMusicWithoutRadio](self, "hasRawMediaTypeUsageSignalMusicWithoutRadio") && [v5 hasRawMediaTypeUsageSignalMusicWithoutRadio])
  {
    rawMediaTypeUsageSignalMusicWithoutRadio = [(BMSiriMusicInferenceTrainingDependentSignals *)self rawMediaTypeUsageSignalMusicWithoutRadio];
    v80 = rawMediaTypeUsageSignalMusicWithoutRadio == [v5 rawMediaTypeUsageSignalMusicWithoutRadio];
  }

  else
  {
LABEL_252:
    v80 = 0;
  }

LABEL_253:

LABEL_255:
  return v80;
}

- (id)jsonDictionary
{
  v187[50] = *MEMORY[0x1E69E9840];
  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsClientForegroundActiveBundle])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isClientForegroundActiveBundle](self, "isClientForegroundActiveBundle")}];
  }

  else
  {
    v3 = 0;
  }

  if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasCompoundActiveBundleScore]|| ([(BMSiriMusicInferenceTrainingDependentSignals *)self compoundActiveBundleScore], fabs(v4) == INFINITY))
  {
    v6 = 0;
  }

  else
  {
    [(BMSiriMusicInferenceTrainingDependentSignals *)self compoundActiveBundleScore];
    v5 = MEMORY[0x1E696AD98];
    [(BMSiriMusicInferenceTrainingDependentSignals *)self compoundActiveBundleScore];
    v6 = [v5 numberWithDouble:?];
  }

  if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasCompoundMediaTypeBundleScore]|| ([(BMSiriMusicInferenceTrainingDependentSignals *)self compoundMediaTypeBundleScore], fabs(v7) == INFINITY))
  {
    v9 = 0;
  }

  else
  {
    [(BMSiriMusicInferenceTrainingDependentSignals *)self compoundMediaTypeBundleScore];
    v8 = MEMORY[0x1E696AD98];
    [(BMSiriMusicInferenceTrainingDependentSignals *)self compoundMediaTypeBundleScore];
    v9 = [v8 numberWithDouble:?];
  }

  if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasEntitySearchBundleRecencyS]|| ([(BMSiriMusicInferenceTrainingDependentSignals *)self entitySearchBundleRecencyS], fabs(v10) == INFINITY))
  {
    v12 = 0;
  }

  else
  {
    [(BMSiriMusicInferenceTrainingDependentSignals *)self entitySearchBundleRecencyS];
    v11 = MEMORY[0x1E696AD98];
    [(BMSiriMusicInferenceTrainingDependentSignals *)self entitySearchBundleRecencyS];
    v12 = [v11 numberWithDouble:?];
  }

  if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasEntitySearchBundleScore]|| ([(BMSiriMusicInferenceTrainingDependentSignals *)self entitySearchBundleScore], fabs(v13) == INFINITY))
  {
    v15 = 0;
  }

  else
  {
    [(BMSiriMusicInferenceTrainingDependentSignals *)self entitySearchBundleScore];
    v14 = MEMORY[0x1E696AD98];
    [(BMSiriMusicInferenceTrainingDependentSignals *)self entitySearchBundleScore];
    v15 = [v14 numberWithDouble:?];
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsForegroundBundle])
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isForegroundBundle](self, "isForegroundBundle")}];
  }

  else
  {
    v16 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsNowPlayingBundle])
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isNowPlayingBundle](self, "isNowPlayingBundle")}];
  }

  else
  {
    v17 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasNowPlayingBundleCount])
  {
    v185 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals nowPlayingBundleCount](self, "nowPlayingBundleCount")}];
  }

  else
  {
    v185 = 0;
  }

  if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasNowPlayingBundleRecencyS]|| ([(BMSiriMusicInferenceTrainingDependentSignals *)self nowPlayingBundleRecencyS], fabs(v18) == INFINITY))
  {
    v184 = 0;
  }

  else
  {
    [(BMSiriMusicInferenceTrainingDependentSignals *)self nowPlayingBundleRecencyS];
    v19 = MEMORY[0x1E696AD98];
    [(BMSiriMusicInferenceTrainingDependentSignals *)self nowPlayingBundleRecencyS];
    v184 = [v19 numberWithDouble:?];
  }

  if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasNowPlayingBundleScore]|| ([(BMSiriMusicInferenceTrainingDependentSignals *)self nowPlayingBundleScore], fabs(v20) == INFINITY))
  {
    v183 = 0;
  }

  else
  {
    [(BMSiriMusicInferenceTrainingDependentSignals *)self nowPlayingBundleScore];
    v21 = MEMORY[0x1E696AD98];
    [(BMSiriMusicInferenceTrainingDependentSignals *)self nowPlayingBundleScore];
    v183 = [v21 numberWithDouble:?];
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsNowPlayingLastBundle])
  {
    v182 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isNowPlayingLastBundle](self, "isNowPlayingLastBundle")}];
  }

  else
  {
    v182 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasNowPlayingUsage1Day])
  {
    v181 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals nowPlayingUsage1Day](self, "nowPlayingUsage1Day")}];
  }

  else
  {
    v181 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasNowPlayingUsage7Days])
  {
    v180 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals nowPlayingUsage7Days](self, "nowPlayingUsage7Days")}];
  }

  else
  {
    v180 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasNowPlayingUsage14Days])
  {
    v179 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals nowPlayingUsage14Days](self, "nowPlayingUsage14Days")}];
  }

  else
  {
    v179 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsRawLastNowPlayingCoreDuet])
  {
    v178 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isRawLastNowPlayingCoreDuet](self, "isRawLastNowPlayingCoreDuet")}];
  }

  else
  {
    v178 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsRawMediaCategoryAudiobookSignal])
  {
    v177 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isRawMediaCategoryAudiobookSignal](self, "isRawMediaCategoryAudiobookSignal")}];
  }

  else
  {
    v177 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsRawMediaCategoryMusicSignal])
  {
    v176 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isRawMediaCategoryMusicSignal](self, "isRawMediaCategoryMusicSignal")}];
  }

  else
  {
    v176 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsRawMediaCategoryPodcastSignal])
  {
    v175 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isRawMediaCategoryPodcastSignal](self, "isRawMediaCategoryPodcastSignal")}];
  }

  else
  {
    v175 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsRawMediaCategoryRadioSignal])
  {
    v174 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isRawMediaCategoryRadioSignal](self, "isRawMediaCategoryRadioSignal")}];
  }

  else
  {
    v174 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsRawMediaCategoryVideoSignal])
  {
    v173 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isRawMediaCategoryVideoSignal](self, "isRawMediaCategoryVideoSignal")}];
  }

  else
  {
    v173 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawMediaTypeUsageSignalBook])
  {
    v172 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawMediaTypeUsageSignalBook](self, "rawMediaTypeUsageSignalBook")}];
  }

  else
  {
    v172 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawMediaTypeUsageSignalMusic])
  {
    v171 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawMediaTypeUsageSignalMusic](self, "rawMediaTypeUsageSignalMusic")}];
  }

  else
  {
    v171 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawMediaTypeUsageSignalPodcast])
  {
    v170 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawMediaTypeUsageSignalPodcast](self, "rawMediaTypeUsageSignalPodcast")}];
  }

  else
  {
    v170 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawMediaTypeUsageSignalVideo])
  {
    v169 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawMediaTypeUsageSignalVideo](self, "rawMediaTypeUsageSignalVideo")}];
  }

  else
  {
    v169 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingCountCoreDuet10Min])
  {
    v168 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingCountCoreDuet10Min](self, "rawNowPlayingCountCoreDuet10Min")}];
  }

  else
  {
    v168 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingCountCoreDuet1Day])
  {
    v167 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingCountCoreDuet1Day](self, "rawNowPlayingCountCoreDuet1Day")}];
  }

  else
  {
    v167 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingCountCoreDuet1Hr])
  {
    v166 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingCountCoreDuet1Hr](self, "rawNowPlayingCountCoreDuet1Hr")}];
  }

  else
  {
    v166 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingCountCoreDuet28Day])
  {
    v165 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingCountCoreDuet28Day](self, "rawNowPlayingCountCoreDuet28Day")}];
  }

  else
  {
    v165 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingCountCoreDuet2Min])
  {
    v164 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingCountCoreDuet2Min](self, "rawNowPlayingCountCoreDuet2Min")}];
  }

  else
  {
    v164 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingCountCoreDuet6Hr])
  {
    v163 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingCountCoreDuet6Hr](self, "rawNowPlayingCountCoreDuet6Hr")}];
  }

  else
  {
    v163 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingCountCoreDuet7Day])
  {
    v162 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingCountCoreDuet7Day](self, "rawNowPlayingCountCoreDuet7Day")}];
  }

  else
  {
    v162 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawNowPlayingRecencyCD])
  {
    v161 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingRecencyCD](self, "rawNowPlayingRecencyCD")}];
  }

  else
  {
    v161 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawEntitySearchRecency])
  {
    v160 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawEntitySearchRecency](self, "rawEntitySearchRecency")}];
  }

  else
  {
    v160 = 0;
  }

  if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasUsageScoreBooks]|| ([(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreBooks], fabs(v22) == INFINITY))
  {
    v159 = 0;
  }

  else
  {
    [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreBooks];
    v23 = MEMORY[0x1E696AD98];
    [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreBooks];
    v159 = [v23 numberWithDouble:?];
  }

  if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasUsageScoreMusic]|| ([(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreMusic], fabs(v24) == INFINITY))
  {
    v158 = 0;
  }

  else
  {
    [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreMusic];
    v25 = MEMORY[0x1E696AD98];
    [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreMusic];
    v158 = [v25 numberWithDouble:?];
  }

  if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasUsageScorePodcasts]|| ([(BMSiriMusicInferenceTrainingDependentSignals *)self usageScorePodcasts], fabs(v26) == INFINITY))
  {
    v157 = 0;
  }

  else
  {
    [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScorePodcasts];
    v27 = MEMORY[0x1E696AD98];
    [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScorePodcasts];
    v157 = [v27 numberWithDouble:?];
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsAppFirstParty])
  {
    v156 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isAppFirstParty](self, "isAppFirstParty")}];
  }

  else
  {
    v156 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsRequestedApp])
  {
    v155 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isRequestedApp](self, "isRequestedApp")}];
  }

  else
  {
    v155 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsNowPlayingBundlePSE1])
  {
    v154 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isNowPlayingBundlePSE1](self, "isNowPlayingBundlePSE1")}];
  }

  else
  {
    v154 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsNowPlayingBundlePSE2])
  {
    v153 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isNowPlayingBundlePSE2](self, "isNowPlayingBundlePSE2")}];
  }

  else
  {
    v153 = 0;
  }

  if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasVq21Score]|| ([(BMSiriMusicInferenceTrainingDependentSignals *)self vq21Score], fabs(v28) == INFINITY))
  {
    v152 = 0;
  }

  else
  {
    [(BMSiriMusicInferenceTrainingDependentSignals *)self vq21Score];
    v29 = MEMORY[0x1E696AD98];
    [(BMSiriMusicInferenceTrainingDependentSignals *)self vq21Score];
    v152 = [v29 numberWithDouble:?];
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsSupportedFlag])
  {
    v151 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isSupportedFlag](self, "isSupportedFlag")}];
  }

  else
  {
    v151 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsUnicornFlag])
  {
    v150 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isUnicornFlag](self, "isUnicornFlag")}];
  }

  else
  {
    v150 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsSupportedUnicornMatchFlag])
  {
    v149 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isSupportedUnicornMatchFlag](self, "isSupportedUnicornMatchFlag")}];
  }

  else
  {
    v149 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsDisambiguationSelectedApp])
  {
    v148 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isDisambiguationSelectedApp](self, "isDisambiguationSelectedApp")}];
  }

  else
  {
    v148 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasIsModelPredictedApp])
  {
    v147 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isModelPredictedApp](self, "isModelPredictedApp")}];
  }

  else
  {
    v147 = 0;
  }

  if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasUsageScoreRadio]|| ([(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreRadio], fabs(v30) == INFINITY))
  {
    v146 = 0;
  }

  else
  {
    [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreRadio];
    v31 = MEMORY[0x1E696AD98];
    [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreRadio];
    v146 = [v31 numberWithDouble:?];
  }

  if (![(BMSiriMusicInferenceTrainingDependentSignals *)self hasUsageScoreMusicWithoutRadio]|| ([(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreMusicWithoutRadio], fabs(v32) == INFINITY))
  {
    v145 = 0;
  }

  else
  {
    [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreMusicWithoutRadio];
    v33 = MEMORY[0x1E696AD98];
    [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreMusicWithoutRadio];
    v145 = [v33 numberWithDouble:?];
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawMediaTypeUsageSignalRadio])
  {
    v144 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawMediaTypeUsageSignalRadio](self, "rawMediaTypeUsageSignalRadio")}];
  }

  else
  {
    v144 = 0;
  }

  if ([(BMSiriMusicInferenceTrainingDependentSignals *)self hasRawMediaTypeUsageSignalMusicWithoutRadio])
  {
    v143 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawMediaTypeUsageSignalMusicWithoutRadio](self, "rawMediaTypeUsageSignalMusicWithoutRadio")}];
  }

  else
  {
    v143 = 0;
  }

  v186[0] = @"isClientForegroundActiveBundle";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v135 = null;
  v187[0] = null;
  v186[1] = @"compoundActiveBundleScore";
  null2 = v6;
  if (!v6)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v134 = null2;
  v187[1] = null2;
  v186[2] = @"compoundMediaTypeBundleScore";
  null3 = v9;
  if (!v9)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v133 = null3;
  v187[2] = null3;
  v186[3] = @"entitySearchBundleRecencyS";
  null4 = v12;
  if (!v12)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v132 = null4;
  v187[3] = null4;
  v186[4] = @"entitySearchBundleScore";
  null5 = v15;
  if (!v15)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v131 = null5;
  v187[4] = null5;
  v186[5] = @"isForegroundBundle";
  null6 = v16;
  if (!v16)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v130 = null6;
  v187[5] = null6;
  v186[6] = @"isNowPlayingBundle";
  null7 = v17;
  if (!v17)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = v17;
  v129 = null7;
  v187[6] = null7;
  v186[7] = @"nowPlayingBundleCount";
  null8 = v185;
  if (!v185)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = v16;
  v187[7] = null8;
  v186[8] = @"nowPlayingBundleRecencyS";
  null9 = v184;
  if (!v184)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = v12;
  v187[8] = null9;
  v186[9] = @"nowPlayingBundleScore";
  null10 = v183;
  if (!v183)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v47 = v15;
  v138 = null10;
  v187[9] = null10;
  v186[10] = @"isNowPlayingLastBundle";
  null11 = v182;
  if (!v182)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v49 = v6;
  v137 = null11;
  v187[10] = null11;
  v186[11] = @"nowPlayingUsage1Day";
  null12 = v181;
  if (!v181)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = null12;
  v187[11] = null12;
  v186[12] = @"nowPlayingUsage7Days";
  null13 = v180;
  if (!v180)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v126 = null13;
  v187[12] = null13;
  v186[13] = @"nowPlayingUsage14Days";
  null14 = v179;
  if (!v179)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v125 = null14;
  v187[13] = null14;
  v186[14] = @"isRawLastNowPlayingCoreDuet";
  null15 = v178;
  if (!v178)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v124 = null15;
  v187[14] = null15;
  v186[15] = @"isRawMediaCategoryAudiobookSignal";
  null16 = v177;
  if (!v177)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v123 = null16;
  v187[15] = null16;
  v186[16] = @"isRawMediaCategoryMusicSignal";
  null17 = v176;
  if (!v176)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v122 = null17;
  v187[16] = null17;
  v186[17] = @"isRawMediaCategoryPodcastSignal";
  null18 = v175;
  if (!v175)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v121 = null18;
  v187[17] = null18;
  v186[18] = @"isRawMediaCategoryRadioSignal";
  null19 = v174;
  if (!v174)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v120 = null19;
  v187[18] = null19;
  v186[19] = @"isRawMediaCategoryVideoSignal";
  null20 = v173;
  if (!v173)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v119 = null20;
  v187[19] = null20;
  v186[20] = @"rawMediaTypeUsageSignalBook";
  null21 = v172;
  if (!v172)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v118 = null21;
  v187[20] = null21;
  v186[21] = @"rawMediaTypeUsageSignalMusic";
  null22 = v171;
  if (!v171)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v117 = null22;
  v187[21] = null22;
  v186[22] = @"rawMediaTypeUsageSignalPodcast";
  null23 = v170;
  if (!v170)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v116 = null23;
  v187[22] = null23;
  v186[23] = @"rawMediaTypeUsageSignalVideo";
  null24 = v169;
  if (!v169)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v115 = null24;
  v187[23] = null24;
  v186[24] = @"rawNowPlayingCountCoreDuet10Min";
  null25 = v168;
  if (!v168)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v114 = null25;
  v187[24] = null25;
  v186[25] = @"rawNowPlayingCountCoreDuet1Day";
  null26 = v167;
  if (!v167)
  {
    null26 = [MEMORY[0x1E695DFB0] null];
  }

  v113 = null26;
  v187[25] = null26;
  v186[26] = @"rawNowPlayingCountCoreDuet1Hr";
  null27 = v166;
  if (!v166)
  {
    null27 = [MEMORY[0x1E695DFB0] null];
  }

  v112 = null27;
  v187[26] = null27;
  v186[27] = @"rawNowPlayingCountCoreDuet28Day";
  null28 = v165;
  if (!v165)
  {
    null28 = [MEMORY[0x1E695DFB0] null];
  }

  v111 = null28;
  v187[27] = null28;
  v186[28] = @"rawNowPlayingCountCoreDuet2Min";
  null29 = v164;
  if (!v164)
  {
    null29 = [MEMORY[0x1E695DFB0] null];
  }

  v110 = null29;
  v187[28] = null29;
  v186[29] = @"rawNowPlayingCountCoreDuet6Hr";
  null30 = v163;
  if (!v163)
  {
    null30 = [MEMORY[0x1E695DFB0] null];
  }

  v109 = null30;
  v187[29] = null30;
  v186[30] = @"rawNowPlayingCountCoreDuet7Day";
  null31 = v162;
  if (!v162)
  {
    null31 = [MEMORY[0x1E695DFB0] null];
  }

  v108 = null31;
  v187[30] = null31;
  v186[31] = @"rawNowPlayingRecencyCD";
  null32 = v161;
  if (!v161)
  {
    null32 = [MEMORY[0x1E695DFB0] null];
  }

  v107 = null32;
  v187[31] = null32;
  v186[32] = @"rawEntitySearchRecency";
  null33 = v160;
  if (!v160)
  {
    null33 = [MEMORY[0x1E695DFB0] null];
  }

  v106 = null33;
  v187[32] = null33;
  v186[33] = @"usageScoreBooks";
  null34 = v159;
  if (!v159)
  {
    null34 = [MEMORY[0x1E695DFB0] null];
  }

  v105 = null34;
  v187[33] = null34;
  v186[34] = @"usageScoreMusic";
  null35 = v158;
  if (!v158)
  {
    null35 = [MEMORY[0x1E695DFB0] null];
  }

  v104 = null35;
  v187[34] = null35;
  v186[35] = @"usageScorePodcasts";
  null36 = v157;
  if (!v157)
  {
    null36 = [MEMORY[0x1E695DFB0] null];
  }

  v103 = null36;
  v187[35] = null36;
  v186[36] = @"isAppFirstParty";
  null37 = v156;
  if (!v156)
  {
    null37 = [MEMORY[0x1E695DFB0] null];
  }

  v102 = null37;
  v187[36] = null37;
  v186[37] = @"isRequestedApp";
  null38 = v155;
  if (!v155)
  {
    null38 = [MEMORY[0x1E695DFB0] null];
  }

  v101 = null38;
  v187[37] = null38;
  v186[38] = @"isNowPlayingBundlePSE1";
  null39 = v154;
  if (!v154)
  {
    null39 = [MEMORY[0x1E695DFB0] null];
  }

  v100 = null39;
  v187[38] = null39;
  v186[39] = @"isNowPlayingBundlePSE2";
  null40 = v153;
  if (!v153)
  {
    null40 = [MEMORY[0x1E695DFB0] null];
  }

  v140 = v9;
  v99 = null40;
  v187[39] = null40;
  v186[40] = @"vq21Score";
  null41 = v152;
  if (!v152)
  {
    null41 = [MEMORY[0x1E695DFB0] null];
  }

  v142 = v3;
  v98 = null41;
  v187[40] = null41;
  v186[41] = @"isSupportedFlag";
  null42 = v151;
  if (!v151)
  {
    null42 = [MEMORY[0x1E695DFB0] null];
  }

  v141 = v49;
  v97 = null42;
  v187[41] = null42;
  v186[42] = @"isUnicornFlag";
  null43 = v150;
  if (!v150)
  {
    null43 = [MEMORY[0x1E695DFB0] null];
  }

  v139 = v45;
  v96 = null43;
  v187[42] = null43;
  v186[43] = @"isSupportedUnicornMatchFlag";
  null44 = v149;
  v84 = v47;
  if (!v149)
  {
    null44 = [MEMORY[0x1E695DFB0] null];
  }

  v127 = null9;
  v94 = null44;
  v187[43] = null44;
  v186[44] = @"isDisambiguationSelectedApp";
  null45 = v148;
  if (!v148)
  {
    null45 = [MEMORY[0x1E695DFB0] null];
  }

  v187[44] = null45;
  v186[45] = @"isModelPredictedApp";
  null46 = v147;
  if (!v147)
  {
    null46 = [MEMORY[0x1E695DFB0] null];
  }

  v128 = null8;
  v87 = v43;
  v187[45] = null46;
  v186[46] = @"usageScoreRadio";
  null47 = v146;
  if (!v146)
  {
    null47 = [MEMORY[0x1E695DFB0] null];
  }

  v187[46] = null47;
  v186[47] = @"usageScoreMusicWithoutRadio";
  null48 = v145;
  if (!v145)
  {
    null48 = [MEMORY[0x1E695DFB0] null];
  }

  v187[47] = null48;
  v186[48] = @"rawMediaTypeUsageSignalRadio";
  null49 = v144;
  if (!v144)
  {
    null49 = [MEMORY[0x1E695DFB0] null];
  }

  v187[48] = null49;
  v186[49] = @"rawMediaTypeUsageSignalMusicWithoutRadio";
  null50 = v143;
  if (!v143)
  {
    null50 = [MEMORY[0x1E695DFB0] null];
  }

  v187[49] = null50;
  v136 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v187 forKeys:v186 count:{50, v94}];
  if (!v143)
  {
  }

  v92 = v51;
  if (!v144)
  {

    v92 = v51;
  }

  if (!v145)
  {

    v92 = v51;
  }

  if (!v146)
  {

    v92 = v51;
  }

  if (!v147)
  {

    v92 = v51;
  }

  if (!v148)
  {

    v92 = v51;
  }

  if (!v149)
  {

    v92 = v51;
  }

  if (!v150)
  {

    v92 = v51;
  }

  if (!v151)
  {

    v92 = v51;
  }

  if (!v152)
  {

    v92 = v51;
  }

  if (!v153)
  {

    v92 = v51;
  }

  if (!v154)
  {

    v92 = v51;
  }

  if (!v155)
  {

    v92 = v51;
  }

  if (!v156)
  {

    v92 = v51;
  }

  if (!v157)
  {

    v92 = v51;
  }

  if (!v158)
  {

    v92 = v51;
  }

  if (!v159)
  {

    v92 = v51;
  }

  if (!v160)
  {

    v92 = v51;
  }

  if (!v161)
  {

    v92 = v51;
  }

  if (!v162)
  {

    v92 = v51;
  }

  if (!v163)
  {

    v92 = v51;
  }

  if (!v164)
  {

    v92 = v51;
  }

  if (!v165)
  {

    v92 = v51;
  }

  if (!v166)
  {

    v92 = v51;
  }

  if (!v167)
  {

    v92 = v51;
  }

  if (!v168)
  {

    v92 = v51;
  }

  if (!v169)
  {

    v92 = v51;
  }

  if (!v170)
  {

    v92 = v51;
  }

  if (!v171)
  {

    v92 = v51;
  }

  if (!v172)
  {

    v92 = v51;
  }

  if (!v173)
  {

    v92 = v51;
  }

  if (!v174)
  {

    v92 = v51;
  }

  if (!v175)
  {

    v92 = v51;
  }

  if (!v176)
  {

    v92 = v51;
  }

  if (!v177)
  {

    v92 = v51;
  }

  if (!v178)
  {

    v92 = v51;
  }

  if (!v179)
  {

    v92 = v51;
  }

  if (!v180)
  {

    v92 = v51;
  }

  if (!v181)
  {
  }

  if (!v182)
  {
  }

  if (!v183)
  {
  }

  if (!v184)
  {
  }

  if (v185)
  {
    if (v41)
    {
      goto LABEL_349;
    }
  }

  else
  {

    if (v41)
    {
LABEL_349:
      if (v87)
      {
        goto LABEL_350;
      }

      goto LABEL_360;
    }
  }

  if (v87)
  {
LABEL_350:
    if (v84)
    {
      goto LABEL_351;
    }

    goto LABEL_361;
  }

LABEL_360:

  if (v84)
  {
LABEL_351:
    if (v139)
    {
      goto LABEL_352;
    }

    goto LABEL_362;
  }

LABEL_361:

  if (v139)
  {
LABEL_352:
    if (v140)
    {
      goto LABEL_353;
    }

    goto LABEL_363;
  }

LABEL_362:

  if (v140)
  {
LABEL_353:
    if (v141)
    {
      goto LABEL_354;
    }

LABEL_364:

    if (v142)
    {
      goto LABEL_355;
    }

    goto LABEL_365;
  }

LABEL_363:

  if (!v141)
  {
    goto LABEL_364;
  }

LABEL_354:
  if (v142)
  {
    goto LABEL_355;
  }

LABEL_365:

LABEL_355:

  return v136;
}

- (BMSiriMusicInferenceTrainingDependentSignals)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v648[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"isClientForegroundActiveBundle"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"compoundActiveBundleScore"];
    v547 = v9;
    v548 = v8;
    if (!v9 || (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v11 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
LABEL_7:
      v12 = [dictionaryCopy objectForKeyedSubscript:@"compoundMediaTypeBundleScore"];
      errorCopy = error;
      if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v543 = v11;
        v13 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v543 = v11;
        v13 = v12;
LABEL_10:
        v14 = [dictionaryCopy objectForKeyedSubscript:@"entitySearchBundleRecencyS"];
        v538 = v13;
        if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v537 = v14;
          v544 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v537 = v14;
          v544 = v14;
LABEL_13:
          v15 = [dictionaryCopy objectForKeyedSubscript:@"entitySearchBundleScore"];
          v541 = v15;
          if (!v15 || (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v539 = 0;
            goto LABEL_16;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v539 = v16;
LABEL_16:
            v17 = [dictionaryCopy objectForKeyedSubscript:@"isForegroundBundle"];
            selfCopy = self;
            v535 = v17;
            if (!v17 || (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v531 = 0;
              goto LABEL_19;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v531 = v18;
LABEL_19:
              v19 = [dictionaryCopy objectForKeyedSubscript:@"isNowPlayingBundle"];
              v533 = v19;
              if (!v19 || (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v532 = 0;
                goto LABEL_22;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v532 = v20;
LABEL_22:
                v21 = [dictionaryCopy objectForKeyedSubscript:@"nowPlayingBundleCount"];
                v530 = v21;
                if (!v21 || (v22 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  errorCopy2 = 0;
                  goto LABEL_25;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  errorCopy2 = v22;
LABEL_25:
                  v24 = [dictionaryCopy objectForKeyedSubscript:@"nowPlayingBundleRecencyS"];
                  v529 = v24;
                  if (!v24 || (v25 = v24, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v26 = 0;
                    goto LABEL_28;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v26 = v25;
LABEL_28:
                    v27 = [dictionaryCopy objectForKeyedSubscript:@"nowPlayingBundleScore"];
                    v524 = v27;
                    if (!v27 || (v28 = v27, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v29 = 0;
                      goto LABEL_31;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v29 = v28;
LABEL_31:
                      v30 = [dictionaryCopy objectForKeyedSubscript:@"isNowPlayingLastBundle"];
                      v521 = v30;
                      if (!v30 || (v31 = v30, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v32 = 0;
LABEL_34:
                        v33 = [dictionaryCopy objectForKeyedSubscript:@"nowPlayingUsage1Day"];
                        v518 = v26;
                        v517 = v29;
                        v519 = v33;
                        if (!v33)
                        {
                          goto LABEL_77;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v33 = 0;
                          goto LABEL_77;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v33 = v33;
LABEL_77:
                          v63 = [dictionaryCopy objectForKeyedSubscript:@"nowPlayingUsage7Days"];
                          v513 = v33;
                          if (!v63 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v64 = 0;
                            goto LABEL_80;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v64 = v63;
LABEL_80:
                            v65 = [dictionaryCopy objectForKeyedSubscript:@"nowPlayingUsage14Days"];
                            v515 = v32;
                            if (!v65 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v511 = 0;
                              goto LABEL_83;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v511 = v65;
LABEL_83:
                              v66 = [dictionaryCopy objectForKeyedSubscript:@"isRawLastNowPlayingCoreDuet"];
                              v501 = v66;
                              if (!v66 || (v67 = v66, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v68 = v64;
                                v508 = 0;
                                goto LABEL_86;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v107 = v67;
                                v68 = v64;
                                v508 = v107;
LABEL_86:
                                v69 = [dictionaryCopy objectForKeyedSubscript:@"isRawMediaCategoryAudiobookSignal"];
                                v504 = v69;
                                if (!v69 || (v70 = v69, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v502 = 0;
LABEL_89:
                                  v71 = [dictionaryCopy objectForKeyedSubscript:@"isRawMediaCategoryMusicSignal"];
                                  v499 = v71;
                                  if (v71 && (v72 = v71, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                  {
                                    objc_opt_class();
                                    if ((objc_opt_isKindOfClass() & 1) == 0)
                                    {
                                      if (!errorCopy)
                                      {
                                        v497 = 0;
                                        v40 = 0;
                                        v47 = v537;
LABEL_459:
                                        v64 = v68;
                                        v67 = v501;
                                        goto LABEL_460;
                                      }

                                      v498 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v496 = *MEMORY[0x1E698F240];
                                      v615 = *MEMORY[0x1E696A578];
                                      v133 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isRawMediaCategoryMusicSignal"];
                                      v616 = v133;
                                      v134 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v616 forKeys:&v615 count:1];
                                      v135 = v496;
                                      v495 = v134;
                                      v136 = [v498 initWithDomain:v135 code:2 userInfo:?];
                                      v497 = 0;
                                      v40 = 0;
                                      *errorCopy = v136;
                                      goto LABEL_274;
                                    }

                                    v497 = v72;
                                  }

                                  else
                                  {
                                    v497 = 0;
                                  }

                                  v73 = [dictionaryCopy objectForKeyedSubscript:@"isRawMediaCategoryPodcastSignal"];
                                  v492 = v63;
                                  v495 = v73;
                                  if (!v73 || (v74 = v73, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v75 = 0;
                                    goto LABEL_95;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v75 = v74;
LABEL_95:
                                    v76 = [dictionaryCopy objectForKeyedSubscript:@"isRawMediaCategoryRadioSignal"];
                                    v493 = v76;
                                    if (!v76 || (v77 = v76, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v490 = 0;
                                      goto LABEL_98;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v490 = v77;
LABEL_98:
                                      v78 = [dictionaryCopy objectForKeyedSubscript:@"isRawMediaCategoryVideoSignal"];
                                      v488 = v78;
                                      if (!v78 || (v79 = v78, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v486 = 0;
                                        goto LABEL_101;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v486 = v79;
LABEL_101:
                                        v80 = [dictionaryCopy objectForKeyedSubscript:@"rawMediaTypeUsageSignalBook"];
                                        v81 = v68;
                                        v482 = v80;
                                        if (!v80 || (v82 = v80, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v484 = 0;
                                          goto LABEL_104;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v484 = v82;
LABEL_104:
                                          v83 = [dictionaryCopy objectForKeyedSubscript:@"rawMediaTypeUsageSignalMusic"];
                                          v480 = v83;
                                          if (!v83 || (v84 = v83, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v471 = 0;
                                            goto LABEL_107;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v471 = v84;
LABEL_107:
                                            v85 = [dictionaryCopy objectForKeyedSubscript:@"rawMediaTypeUsageSignalPodcast"];
                                            v473 = v65;
                                            v476 = v85;
                                            if (!v85 || (v86 = v85, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v87 = v81;
                                              v88 = v75;
                                              v474 = 0;
LABEL_110:
                                              v89 = [dictionaryCopy objectForKeyedSubscript:@"rawMediaTypeUsageSignalVideo"];
                                              v469 = v89;
                                              if (v89 && (v90 = v89, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                              {
                                                objc_opt_class();
                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                {
                                                  if (!errorCopy)
                                                  {
                                                    v467 = 0;
                                                    v40 = 0;
                                                    v47 = v537;
                                                    v75 = v88;
                                                    v81 = v87;
                                                    v65 = v473;
LABEL_451:
                                                    v194 = v471;
                                                    goto LABEL_452;
                                                  }

                                                  v468 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v466 = *MEMORY[0x1E698F240];
                                                  v601 = *MEMORY[0x1E696A578];
                                                  v75 = v88;
                                                  v209 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                  v359 = objc_opt_class();
                                                  v210 = v209;
                                                  v81 = v87;
                                                  v65 = v473;
                                                  v463 = [v210 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v359, @"rawMediaTypeUsageSignalVideo"];
                                                  v602 = v463;
                                                  v211 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v602 forKeys:&v601 count:1];
                                                  v212 = v466;
                                                  v465 = v211;
                                                  v213 = [v468 initWithDomain:v212 code:2 userInfo:?];
                                                  v467 = 0;
                                                  v40 = 0;
                                                  *errorCopy = v213;
                                                  v47 = v537;
                                                  goto LABEL_450;
                                                }

                                                v467 = v90;
                                              }

                                              else
                                              {
                                                v467 = 0;
                                              }

                                              v91 = [dictionaryCopy objectForKeyedSubscript:@"rawNowPlayingCountCoreDuet10Min"];
                                              v465 = v91;
                                              if (!v91 || (v92 = v91, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                              {
                                                v463 = 0;
LABEL_116:
                                                v93 = [dictionaryCopy objectForKeyedSubscript:@"rawNowPlayingCountCoreDuet1Day"];
                                                v75 = v88;
                                                v461 = v93;
                                                if (!v93)
                                                {
                                                  v459 = 0;
                                                  v81 = v87;
                                                  goto LABEL_186;
                                                }

                                                v94 = v93;
                                                objc_opt_class();
                                                v81 = v87;
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v459 = 0;
LABEL_186:
                                                  v65 = v473;
                                                  goto LABEL_187;
                                                }

                                                objc_opt_class();
                                                v65 = v473;
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v459 = v94;
LABEL_187:
                                                  v150 = [dictionaryCopy objectForKeyedSubscript:@"rawNowPlayingCountCoreDuet1Hr"];
                                                  v457 = v150;
                                                  if (!v150 || (v151 = v150, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                  {
                                                    v455 = 0;
                                                    goto LABEL_190;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v455 = v151;
LABEL_190:
                                                    v152 = [dictionaryCopy objectForKeyedSubscript:@"rawNowPlayingCountCoreDuet28Day"];
                                                    v453 = v152;
                                                    if (!v152 || (v153 = v152, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                    {
                                                      v447 = 0;
LABEL_193:
                                                      v154 = [dictionaryCopy objectForKeyedSubscript:@"rawNowPlayingCountCoreDuet2Min"];
                                                      v451 = v154;
                                                      if (v154 && (v155 = v154, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                      {
                                                        objc_opt_class();
                                                        if ((objc_opt_isKindOfClass() & 1) == 0)
                                                        {
                                                          if (!errorCopy)
                                                          {
                                                            v449 = 0;
                                                            v40 = 0;
                                                            v47 = v537;
LABEL_445:
                                                            v228 = v447;
                                                            goto LABEL_446;
                                                          }

                                                          v450 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v446 = *MEMORY[0x1E698F240];
                                                          v591 = *MEMORY[0x1E696A578];
                                                          v237 = v81;
                                                          v238 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                          v364 = objc_opt_class();
                                                          v239 = v238;
                                                          v81 = v237;
                                                          v240 = [v239 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v364, @"rawNowPlayingCountCoreDuet2Min"];
                                                          v592 = v240;
                                                          v241 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v592 forKeys:&v591 count:1];
                                                          v242 = v446;
                                                          v445 = v241;
                                                          v243 = [v450 initWithDomain:v242 code:2 userInfo:?];
                                                          v449 = 0;
                                                          v40 = 0;
                                                          *errorCopy = v243;
                                                          goto LABEL_342;
                                                        }

                                                        v449 = v155;
                                                      }

                                                      else
                                                      {
                                                        v449 = 0;
                                                      }

                                                      v156 = [dictionaryCopy objectForKeyedSubscript:@"rawNowPlayingCountCoreDuet6Hr"];
                                                      v445 = v156;
                                                      if (!v156 || (v157 = v156, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                      {
                                                        v439 = 0;
LABEL_199:
                                                        v158 = [dictionaryCopy objectForKeyedSubscript:@"rawNowPlayingCountCoreDuet7Day"];
                                                        v443 = v158;
                                                        if (v158 && (v159 = v158, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                        {
                                                          objc_opt_class();
                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                          {
                                                            if (!errorCopy)
                                                            {
                                                              v441 = 0;
                                                              v40 = 0;
                                                              v47 = v537;
LABEL_442:
                                                              v240 = v439;
                                                              goto LABEL_443;
                                                            }

                                                            v442 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v436 = *MEMORY[0x1E698F240];
                                                            v587 = *MEMORY[0x1E696A578];
                                                            v249 = v81;
                                                            v250 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                            v366 = objc_opt_class();
                                                            v251 = v250;
                                                            v81 = v249;
                                                            v437 = [v251 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v366, @"rawNowPlayingCountCoreDuet7Day"];
                                                            v588 = v437;
                                                            v252 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v588 forKeys:&v587 count:1];
                                                            v253 = [v442 initWithDomain:v436 code:2 userInfo:v252];
                                                            v441 = 0;
                                                            v40 = 0;
                                                            *errorCopy = v253;
                                                            v47 = v537;
                                                            goto LABEL_441;
                                                          }

                                                          v441 = v159;
                                                        }

                                                        else
                                                        {
                                                          v441 = 0;
                                                        }

                                                        v160 = [dictionaryCopy objectForKeyedSubscript:@"rawNowPlayingRecencyCD"];
                                                        v435 = v160;
                                                        if (!v160 || (v161 = v160, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                        {
                                                          v437 = 0;
                                                          goto LABEL_205;
                                                        }

                                                        objc_opt_class();
                                                        if (objc_opt_isKindOfClass())
                                                        {
                                                          v437 = v161;
LABEL_205:
                                                          v162 = [dictionaryCopy objectForKeyedSubscript:@"rawEntitySearchRecency"];
                                                          v433 = v162;
                                                          if (!v162 || (v163 = v162, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                          {
                                                            v431 = 0;
                                                            goto LABEL_208;
                                                          }

                                                          objc_opt_class();
                                                          if (objc_opt_isKindOfClass())
                                                          {
                                                            v431 = v163;
LABEL_208:
                                                            v164 = [dictionaryCopy objectForKeyedSubscript:@"usageScoreBooks"];
                                                            v427 = v164;
                                                            if (!v164 || (v165 = v164, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                            {
                                                              v429 = 0;
LABEL_211:
                                                              v166 = [dictionaryCopy objectForKeyedSubscript:@"usageScoreMusic"];
                                                              v423 = v166;
                                                              if (v166 && (v167 = v166, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                              {
                                                                objc_opt_class();
                                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                {
                                                                  if (!errorCopy)
                                                                  {
                                                                    v425 = 0;
                                                                    v40 = 0;
                                                                    v47 = v537;
                                                                    v252 = v435;
LABEL_437:
                                                                    v271 = v423;
                                                                    goto LABEL_438;
                                                                  }

                                                                  v426 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v420 = *MEMORY[0x1E698F240];
                                                                  v579 = *MEMORY[0x1E696A578];
                                                                  v272 = v81;
                                                                  v273 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                  v370 = objc_opt_class();
                                                                  v274 = v273;
                                                                  v81 = v272;
                                                                  v421 = [v274 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v370, @"usageScoreMusic"];
                                                                  v580 = v421;
                                                                  v275 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v580 forKeys:&v579 count:1];
                                                                  v276 = [v426 initWithDomain:v420 code:2 userInfo:v275];
                                                                  v425 = 0;
                                                                  v40 = 0;
                                                                  *errorCopy = v276;
                                                                  v277 = v275;
                                                                  v47 = v537;
                                                                  v252 = v435;
LABEL_436:

                                                                  goto LABEL_437;
                                                                }

                                                                v425 = v167;
                                                              }

                                                              else
                                                              {
                                                                v425 = 0;
                                                              }

                                                              v168 = [dictionaryCopy objectForKeyedSubscript:@"usageScorePodcasts"];
                                                              v419 = v168;
                                                              if (v168 && (v169 = v168, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                              {
                                                                objc_opt_class();
                                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                {
                                                                  if (!errorCopy)
                                                                  {
                                                                    v421 = 0;
                                                                    v40 = 0;
                                                                    v47 = v537;
                                                                    v252 = v435;
LABEL_435:
                                                                    v277 = v419;
                                                                    goto LABEL_436;
                                                                  }

                                                                  v422 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v416 = *MEMORY[0x1E698F240];
                                                                  v577 = *MEMORY[0x1E696A578];
                                                                  v278 = v81;
                                                                  v279 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                  v371 = objc_opt_class();
                                                                  v280 = v279;
                                                                  v81 = v278;
                                                                  v417 = [v280 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v371, @"usageScorePodcasts"];
                                                                  v578 = v417;
                                                                  v281 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v578 forKeys:&v577 count:1];
                                                                  v282 = [v422 initWithDomain:v416 code:2 userInfo:v281];
                                                                  v421 = 0;
                                                                  v40 = 0;
                                                                  *errorCopy = v282;
                                                                  v283 = v281;
                                                                  v47 = v537;
                                                                  v252 = v435;
LABEL_434:

                                                                  goto LABEL_435;
                                                                }

                                                                v421 = v169;
                                                              }

                                                              else
                                                              {
                                                                v421 = 0;
                                                              }

                                                              v170 = [dictionaryCopy objectForKeyedSubscript:@"isAppFirstParty"];
                                                              v415 = v170;
                                                              if (v170 && (v171 = v170, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                              {
                                                                objc_opt_class();
                                                                if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                {
                                                                  if (!errorCopy)
                                                                  {
                                                                    v417 = 0;
                                                                    v40 = 0;
                                                                    v47 = v537;
                                                                    v252 = v435;
LABEL_433:
                                                                    v283 = v415;
                                                                    goto LABEL_434;
                                                                  }

                                                                  v418 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v411 = *MEMORY[0x1E698F240];
                                                                  v575 = *MEMORY[0x1E696A578];
                                                                  v284 = v81;
                                                                  v285 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                  v372 = objc_opt_class();
                                                                  v286 = v285;
                                                                  v81 = v284;
                                                                  v287 = errorCopy2;
                                                                  v413 = [v286 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v372, @"isAppFirstParty"];
                                                                  v576 = v413;
                                                                  v288 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v576 forKeys:&v575 count:1];
                                                                  v289 = [v418 initWithDomain:v411 code:2 userInfo:v288];
                                                                  v417 = 0;
                                                                  v40 = 0;
                                                                  *errorCopy = v289;
                                                                  v47 = v537;
                                                                  v252 = v435;
                                                                  goto LABEL_432;
                                                                }

                                                                v417 = v171;
                                                              }

                                                              else
                                                              {
                                                                v417 = 0;
                                                              }

                                                              v172 = [dictionaryCopy objectForKeyedSubscript:@"isRequestedApp"];
                                                              v409 = v172;
                                                              if (!v172 || (v173 = v172, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                              {
                                                                v413 = 0;
                                                                goto LABEL_223;
                                                              }

                                                              objc_opt_class();
                                                              if (objc_opt_isKindOfClass())
                                                              {
                                                                v413 = v173;
LABEL_223:
                                                                v174 = [dictionaryCopy objectForKeyedSubscript:@"isNowPlayingBundlePSE1"];
                                                                v407 = v174;
                                                                if (!v174 || (v175 = v174, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                {
                                                                  v410 = 0;
                                                                  goto LABEL_226;
                                                                }

                                                                objc_opt_class();
                                                                if (objc_opt_isKindOfClass())
                                                                {
                                                                  v410 = v175;
LABEL_226:
                                                                  v176 = [dictionaryCopy objectForKeyedSubscript:@"isNowPlayingBundlePSE2"];
                                                                  v403 = v176;
                                                                  if (!v176 || (v177 = v176, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                  {
                                                                    v405 = 0;
                                                                    goto LABEL_229;
                                                                  }

                                                                  objc_opt_class();
                                                                  if (objc_opt_isKindOfClass())
                                                                  {
                                                                    v405 = v177;
LABEL_229:
                                                                    v178 = [dictionaryCopy objectForKeyedSubscript:@"vq21Score"];
                                                                    v399 = v178;
                                                                    if (!v178 || (v179 = v178, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                    {
                                                                      v401 = 0;
                                                                      goto LABEL_232;
                                                                    }

                                                                    objc_opt_class();
                                                                    if (objc_opt_isKindOfClass())
                                                                    {
                                                                      v401 = v179;
LABEL_232:
                                                                      v180 = [dictionaryCopy objectForKeyedSubscript:@"isSupportedFlag"];
                                                                      v395 = v81;
                                                                      v396 = v180;
                                                                      if (!v180 || (v181 = v180, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                      {
                                                                        v398 = 0;
LABEL_235:
                                                                        v182 = [dictionaryCopy objectForKeyedSubscript:@"isUnicornFlag"];
                                                                        v479 = v12;
                                                                        v394 = v182;
                                                                        if (v182 && (v183 = v182, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                        {
                                                                          objc_opt_class();
                                                                          if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                          {
                                                                            v391 = v75;
                                                                            v287 = errorCopy2;
                                                                            if (!errorCopy)
                                                                            {
                                                                              v527 = 0;
                                                                              v40 = 0;
                                                                              v47 = v537;
                                                                              v288 = v409;
LABEL_426:
                                                                              v316 = v394;
                                                                              goto LABEL_427;
                                                                            }

                                                                            v317 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                            v318 = *MEMORY[0x1E698F240];
                                                                            v563 = *MEMORY[0x1E696A578];
                                                                            v523 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isUnicornFlag"];
                                                                            v564 = v523;
                                                                            v319 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v564 forKeys:&v563 count:1];
                                                                            v527 = 0;
                                                                            v40 = 0;
                                                                            *errorCopy = [v317 initWithDomain:v318 code:2 userInfo:v319];
                                                                            v320 = selfCopy;
                                                                            v47 = v537;
                                                                            v190 = v391;
                                                                            v288 = v409;
                                                                            goto LABEL_425;
                                                                          }

                                                                          v527 = v183;
                                                                        }

                                                                        else
                                                                        {
                                                                          v527 = 0;
                                                                        }

                                                                        v388 = [dictionaryCopy objectForKeyedSubscript:@"isSupportedUnicornMatchFlag"];
                                                                        if (!v388 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                        {
                                                                          v523 = 0;
LABEL_241:
                                                                          v387 = [dictionaryCopy objectForKeyedSubscript:@"isDisambiguationSelectedApp"];
                                                                          if (v387 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                                          {
                                                                            objc_opt_class();
                                                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                                                            {
                                                                              v393 = v75;
                                                                              v287 = errorCopy2;
                                                                              v330 = selfCopy;
                                                                              if (!errorCopy)
                                                                              {
                                                                                v389 = 0;
                                                                                v40 = 0;
                                                                                v320 = selfCopy;
                                                                                v47 = v537;
                                                                                v190 = v75;
                                                                                v288 = v409;
                                                                                v319 = v388;
                                                                                goto LABEL_424;
                                                                              }

                                                                              v331 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                              v332 = *MEMORY[0x1E698F240];
                                                                              v559 = *MEMORY[0x1E696A578];
                                                                              v386 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isDisambiguationSelectedApp"];
                                                                              v560 = v386;
                                                                              v385 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v560 forKeys:&v559 count:1];
                                                                              v389 = 0;
                                                                              v40 = 0;
                                                                              *errorCopy = [v331 initWithDomain:v332 code:2 userInfo:?];
                                                                              goto LABEL_479;
                                                                            }

                                                                            v389 = v387;
                                                                          }

                                                                          else
                                                                          {
                                                                            v389 = 0;
                                                                          }

                                                                          v184 = [dictionaryCopy objectForKeyedSubscript:@"isModelPredictedApp"];
                                                                          v385 = v184;
                                                                          if (!v184 || (v185 = v184, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                          {
                                                                            v386 = 0;
                                                                            goto LABEL_247;
                                                                          }

                                                                          objc_opt_class();
                                                                          if (objc_opt_isKindOfClass())
                                                                          {
                                                                            v386 = v185;
LABEL_247:
                                                                            v383 = [dictionaryCopy objectForKeyedSubscript:@"usageScoreRadio"];
                                                                            if (!v383 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                            {
                                                                              v384 = 0;
                                                                              goto LABEL_250;
                                                                            }

                                                                            objc_opt_class();
                                                                            if (objc_opt_isKindOfClass())
                                                                            {
                                                                              v384 = v383;
LABEL_250:
                                                                              v381 = [dictionaryCopy objectForKeyedSubscript:@"usageScoreMusicWithoutRadio"];
                                                                              if (!v381 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                              {
                                                                                v382 = 0;
                                                                                goto LABEL_253;
                                                                              }

                                                                              v377 = errorCopy2;
                                                                              objc_opt_class();
                                                                              if (objc_opt_isKindOfClass())
                                                                              {
                                                                                v382 = v381;
LABEL_253:
                                                                                v186 = [dictionaryCopy objectForKeyedSubscript:@"rawMediaTypeUsageSignalRadio"];
                                                                                v378 = v186;
                                                                                if (!v186 || (v187 = v186, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                                                {
                                                                                  v380 = 0;
LABEL_256:
                                                                                  v188 = v437;
                                                                                  v189 = [dictionaryCopy objectForKeyedSubscript:@"rawMediaTypeUsageSignalMusicWithoutRadio"];
                                                                                  v379 = v189;
                                                                                  if (!v189)
                                                                                  {
                                                                                    v190 = v75;
                                                                                    goto LABEL_390;
                                                                                  }

                                                                                  objc_opt_class();
                                                                                  if (objc_opt_isKindOfClass())
                                                                                  {
                                                                                    v190 = v75;
                                                                                    v189 = 0;
LABEL_390:
                                                                                    v47 = v537;
                                                                                    v323 = v463;
                                                                                    v324 = v459;
                                                                                    v325 = v455;
                                                                                    v326 = v449;
                                                                                    v327 = v471;
                                                                                    v328 = v441;
LABEL_391:
                                                                                    v329 = v189;
                                                                                    v441 = v328;
                                                                                    v449 = v326;
                                                                                    v455 = v325;
                                                                                    v459 = v324;
                                                                                    v463 = v323;
                                                                                    v471 = v327;
                                                                                    v40 = [(BMSiriMusicInferenceTrainingDependentSignals *)selfCopy initWithIsClientForegroundActiveBundle:v548 compoundActiveBundleScore:v543 compoundMediaTypeBundleScore:v538 entitySearchBundleRecencyS:v544 entitySearchBundleScore:v539 isForegroundBundle:v531 isNowPlayingBundle:v532 nowPlayingBundleCount:errorCopy2 nowPlayingBundleRecencyS:v518 nowPlayingBundleScore:v517 isNowPlayingLastBundle:v515 nowPlayingUsage1Day:v513 nowPlayingUsage7Days:v395 nowPlayingUsage14Days:v511 isRawLastNowPlayingCoreDuet:v508 isRawMediaCategoryAudiobookSignal:v502 isRawMediaCategoryMusicSignal:v497 isRawMediaCategoryPodcastSignal:v190 isRawMediaCategoryRadioSignal:v490 isRawMediaCategoryVideoSignal:v486 rawMediaTypeUsageSignalBook:v484 rawMediaTypeUsageSignalMusic:v327 rawMediaTypeUsageSignalPodcast:v474 rawMediaTypeUsageSignalVideo:v467 rawNowPlayingCountCoreDuet10Min:v323 rawNowPlayingCountCoreDuet1Day:v324 rawNowPlayingCountCoreDuet1Hr:v325 rawNowPlayingCountCoreDuet28Day:v447 rawNowPlayingCountCoreDuet2Min:v326 rawNowPlayingCountCoreDuet6Hr:v439 rawNowPlayingCountCoreDuet7Day:v328 rawNowPlayingRecencyCD:v188 rawEntitySearchRecency:v431 usageScoreBooks:v429 usageScoreMusic:v425 usageScorePodcasts:v421 isAppFirstParty:v417 isRequestedApp:v413 isNowPlayingBundlePSE1:v410 isNowPlayingBundlePSE2:v405 vq21Score:v401 isSupportedFlag:v398 isUnicornFlag:v527 isSupportedUnicornMatchFlag:v523 isDisambiguationSelectedApp:v389 isModelPredictedApp:v386 usageScoreRadio:v384 usageScoreMusicWithoutRadio:v382 rawMediaTypeUsageSignalRadio:v380 rawMediaTypeUsageSignalMusicWithoutRadio:v189];
                                                                                    v320 = v40;
LABEL_418:
                                                                                    v319 = v388;

LABEL_419:
LABEL_420:

LABEL_421:
                                                                                    v287 = errorCopy2;

LABEL_422:
                                                                                    goto LABEL_423;
                                                                                  }

                                                                                  v393 = v75;
                                                                                  v377 = errorCopy2;
                                                                                  v333 = selfCopy;
                                                                                  objc_opt_class();
                                                                                  if (objc_opt_isKindOfClass())
                                                                                  {
                                                                                    v189 = v379;
                                                                                    v47 = v537;
                                                                                    v190 = v75;
                                                                                    v327 = v471;
                                                                                    v323 = v463;
                                                                                    v324 = v459;
                                                                                    v325 = v455;
                                                                                    v326 = v449;
                                                                                    v328 = v441;
                                                                                    v188 = v437;
                                                                                    goto LABEL_391;
                                                                                  }

                                                                                  if (errorCopy)
                                                                                  {
                                                                                    v344 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                    v345 = *MEMORY[0x1E698F240];
                                                                                    v549 = *MEMORY[0x1E696A578];
                                                                                    v346 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"rawMediaTypeUsageSignalMusicWithoutRadio"];
                                                                                    v550 = v346;
                                                                                    v347 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v550 forKeys:&v549 count:1];
                                                                                    *errorCopy = [v344 initWithDomain:v345 code:2 userInfo:v347];
                                                                                  }

                                                                                  v329 = 0;
                                                                                  v40 = 0;
LABEL_417:
                                                                                  v320 = v333;
                                                                                  v47 = v537;
                                                                                  errorCopy2 = v377;
                                                                                  v190 = v393;
                                                                                  goto LABEL_418;
                                                                                }

                                                                                v377 = errorCopy2;
                                                                                objc_opt_class();
                                                                                if (objc_opt_isKindOfClass())
                                                                                {
                                                                                  v380 = v187;
                                                                                  goto LABEL_256;
                                                                                }

                                                                                v393 = v75;
                                                                                v333 = selfCopy;
                                                                                if (errorCopy)
                                                                                {
                                                                                  v342 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                  v343 = *MEMORY[0x1E698F240];
                                                                                  v551 = *MEMORY[0x1E696A578];
                                                                                  v329 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"rawMediaTypeUsageSignalRadio"];
                                                                                  v552 = v329;
                                                                                  v379 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v552 forKeys:&v551 count:1];
                                                                                  v380 = 0;
                                                                                  v40 = 0;
                                                                                  *errorCopy = [v342 initWithDomain:v343 code:2 userInfo:?];
                                                                                  goto LABEL_417;
                                                                                }

                                                                                v380 = 0;
                                                                                v40 = 0;
LABEL_485:
                                                                                v320 = v333;
                                                                                v47 = v537;
                                                                                errorCopy2 = v377;
                                                                                v190 = v393;
                                                                                v319 = v388;
                                                                                goto LABEL_419;
                                                                              }

                                                                              v393 = v75;
                                                                              v333 = selfCopy;
                                                                              if (errorCopy)
                                                                              {
                                                                                v339 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                                v340 = *MEMORY[0x1E698F240];
                                                                                v553 = *MEMORY[0x1E696A578];
                                                                                v380 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"usageScoreMusicWithoutRadio"];
                                                                                v554 = v380;
                                                                                v378 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v554 forKeys:&v553 count:1];
                                                                                v341 = [v339 initWithDomain:v340 code:2 userInfo:?];
                                                                                v382 = 0;
                                                                                v40 = 0;
                                                                                *errorCopy = v341;
                                                                                goto LABEL_485;
                                                                              }

                                                                              v382 = 0;
                                                                              v40 = 0;
                                                                              v320 = selfCopy;
                                                                              v47 = v537;
LABEL_483:
                                                                              v190 = v393;
                                                                              v319 = v388;
                                                                              goto LABEL_420;
                                                                            }

                                                                            v393 = v75;
                                                                            if (errorCopy)
                                                                            {
                                                                              v336 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                              v337 = *MEMORY[0x1E698F240];
                                                                              v555 = *MEMORY[0x1E696A578];
                                                                              v382 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"usageScoreRadio"];
                                                                              v556 = v382;
                                                                              v381 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v556 forKeys:&v555 count:1];
                                                                              v338 = [v336 initWithDomain:v337 code:2 userInfo:?];
                                                                              v384 = 0;
                                                                              v40 = 0;
                                                                              *errorCopy = v338;
                                                                              v320 = selfCopy;
                                                                              v47 = v537;
                                                                              goto LABEL_483;
                                                                            }

                                                                            v384 = 0;
                                                                            v40 = 0;
                                                                            v320 = selfCopy;
                                                                            v47 = v537;
LABEL_481:
                                                                            v190 = v393;
                                                                            v319 = v388;
                                                                            goto LABEL_421;
                                                                          }

                                                                          v393 = v75;
                                                                          v287 = errorCopy2;
                                                                          v330 = selfCopy;
                                                                          if (errorCopy)
                                                                          {
                                                                            v334 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                            v335 = *MEMORY[0x1E698F240];
                                                                            v557 = *MEMORY[0x1E696A578];
                                                                            v384 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isModelPredictedApp"];
                                                                            v558 = v384;
                                                                            v383 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v558 forKeys:&v557 count:1];
                                                                            v386 = 0;
                                                                            v40 = 0;
                                                                            *errorCopy = [v334 initWithDomain:v335 code:2 userInfo:?];
                                                                            v320 = selfCopy;
                                                                            v47 = v537;
                                                                            errorCopy2 = v287;
                                                                            goto LABEL_481;
                                                                          }

                                                                          v386 = 0;
                                                                          v40 = 0;
LABEL_479:
                                                                          v320 = v330;
                                                                          v47 = v537;
                                                                          v190 = v393;
                                                                          v319 = v388;
                                                                          goto LABEL_422;
                                                                        }

                                                                        objc_opt_class();
                                                                        if (objc_opt_isKindOfClass())
                                                                        {
                                                                          v523 = v388;
                                                                          goto LABEL_241;
                                                                        }

                                                                        v392 = v75;
                                                                        v287 = errorCopy2;
                                                                        if (errorCopy)
                                                                        {
                                                                          v321 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                          v322 = *MEMORY[0x1E698F240];
                                                                          v561 = *MEMORY[0x1E696A578];
                                                                          v319 = v388;
                                                                          v389 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isSupportedUnicornMatchFlag"];
                                                                          v562 = v389;
                                                                          v387 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v562 forKeys:&v561 count:1];
                                                                          v523 = 0;
                                                                          v40 = 0;
                                                                          *errorCopy = [v321 initWithDomain:v322 code:2 userInfo:?];
                                                                          v320 = selfCopy;
                                                                          v47 = v537;
                                                                          v190 = v392;
LABEL_423:
                                                                          v288 = v409;
LABEL_424:

                                                                          goto LABEL_425;
                                                                        }

                                                                        v523 = 0;
                                                                        v40 = 0;
                                                                        v320 = selfCopy;
                                                                        v47 = v537;
                                                                        v190 = v75;
                                                                        v288 = v409;
                                                                        v319 = v388;
LABEL_425:
                                                                        selfCopy = v320;

                                                                        v12 = v479;
                                                                        v75 = v190;
                                                                        v81 = v395;
                                                                        goto LABEL_426;
                                                                      }

                                                                      objc_opt_class();
                                                                      if (objc_opt_isKindOfClass())
                                                                      {
                                                                        v398 = v181;
                                                                        goto LABEL_235;
                                                                      }

                                                                      v390 = v75;
                                                                      v287 = errorCopy2;
                                                                      if (errorCopy)
                                                                      {
                                                                        v314 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                        v315 = *MEMORY[0x1E698F240];
                                                                        v565 = *MEMORY[0x1E696A578];
                                                                        v527 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isSupportedFlag"];
                                                                        v566 = v527;
                                                                        v316 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v566 forKeys:&v565 count:1];
                                                                        v398 = 0;
                                                                        v40 = 0;
                                                                        *errorCopy = [v314 initWithDomain:v315 code:2 userInfo:v316];
                                                                        v47 = v537;
                                                                        v75 = v390;
                                                                        v288 = v409;
LABEL_427:

                                                                        v252 = v435;
                                                                        goto LABEL_428;
                                                                      }

                                                                      v398 = 0;
                                                                      v40 = 0;
                                                                      v47 = v537;
LABEL_407:
                                                                      v252 = v435;
                                                                      v288 = v409;
LABEL_428:

                                                                      goto LABEL_429;
                                                                    }

                                                                    v287 = errorCopy2;
                                                                    if (errorCopy)
                                                                    {
                                                                      v402 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                      v397 = *MEMORY[0x1E698F240];
                                                                      v567 = *MEMORY[0x1E696A578];
                                                                      v308 = v81;
                                                                      v309 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                      v376 = objc_opt_class();
                                                                      v310 = v309;
                                                                      v81 = v308;
                                                                      v398 = [v310 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v376, @"vq21Score"];
                                                                      v568 = v398;
                                                                      v311 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v568 forKeys:&v567 count:1];
                                                                      v312 = v397;
                                                                      v396 = v311;
                                                                      v313 = [v402 initWithDomain:v312 code:2 userInfo:?];
                                                                      v401 = 0;
                                                                      v40 = 0;
                                                                      *errorCopy = v313;
                                                                      v47 = v537;
                                                                      goto LABEL_407;
                                                                    }

                                                                    v401 = 0;
                                                                    v40 = 0;
LABEL_403:
                                                                    v47 = v537;
                                                                    v252 = v435;
                                                                    v288 = v409;
LABEL_429:

                                                                    goto LABEL_430;
                                                                  }

                                                                  v287 = errorCopy2;
                                                                  if (errorCopy)
                                                                  {
                                                                    v406 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                    v400 = *MEMORY[0x1E698F240];
                                                                    v569 = *MEMORY[0x1E696A578];
                                                                    v302 = v81;
                                                                    v303 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                    v375 = objc_opt_class();
                                                                    v304 = v303;
                                                                    v81 = v302;
                                                                    v401 = [v304 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v375, @"isNowPlayingBundlePSE2"];
                                                                    v570 = v401;
                                                                    v305 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v570 forKeys:&v569 count:1];
                                                                    v306 = v400;
                                                                    v399 = v305;
                                                                    v307 = [v406 initWithDomain:v306 code:2 userInfo:?];
                                                                    v405 = 0;
                                                                    v40 = 0;
                                                                    *errorCopy = v307;
                                                                    goto LABEL_403;
                                                                  }

                                                                  v405 = 0;
                                                                  v40 = 0;
LABEL_397:
                                                                  v47 = v537;
                                                                  v252 = v435;
                                                                  v288 = v409;
LABEL_430:

                                                                  goto LABEL_431;
                                                                }

                                                                v287 = errorCopy2;
                                                                if (errorCopy)
                                                                {
                                                                  v412 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                  v404 = *MEMORY[0x1E698F240];
                                                                  v571 = *MEMORY[0x1E696A578];
                                                                  v296 = v81;
                                                                  v297 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                  v374 = objc_opt_class();
                                                                  v298 = v297;
                                                                  v81 = v296;
                                                                  v405 = [v298 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v374, @"isNowPlayingBundlePSE1"];
                                                                  v572 = v405;
                                                                  v299 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v572 forKeys:&v571 count:1];
                                                                  v300 = v404;
                                                                  v403 = v299;
                                                                  v301 = [v412 initWithDomain:v300 code:2 userInfo:?];
                                                                  v410 = 0;
                                                                  v40 = 0;
                                                                  *errorCopy = v301;
                                                                  goto LABEL_397;
                                                                }

                                                                v410 = 0;
                                                                v40 = 0;
                                                                v47 = v537;
                                                                v252 = v435;
                                                                v288 = v409;
LABEL_431:

                                                                goto LABEL_432;
                                                              }

                                                              v287 = errorCopy2;
                                                              if (errorCopy)
                                                              {
                                                                v414 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                                v408 = *MEMORY[0x1E698F240];
                                                                v573 = *MEMORY[0x1E696A578];
                                                                v290 = v81;
                                                                v291 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                                v288 = v409;
                                                                v373 = objc_opt_class();
                                                                v292 = v291;
                                                                v81 = v290;
                                                                v410 = [v292 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v373, @"isRequestedApp"];
                                                                v574 = v410;
                                                                v293 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v574 forKeys:&v573 count:1];
                                                                v294 = v408;
                                                                v407 = v293;
                                                                v295 = [v414 initWithDomain:v294 code:2 userInfo:?];
                                                                v413 = 0;
                                                                v40 = 0;
                                                                *errorCopy = v295;
                                                                v47 = v537;
                                                                v252 = v435;
                                                                goto LABEL_431;
                                                              }

                                                              v413 = 0;
                                                              v40 = 0;
                                                              v47 = v537;
                                                              v252 = v435;
                                                              v288 = v409;
LABEL_432:

                                                              errorCopy2 = v287;
                                                              v65 = v473;
                                                              goto LABEL_433;
                                                            }

                                                            objc_opt_class();
                                                            if (objc_opt_isKindOfClass())
                                                            {
                                                              v429 = v165;
                                                              goto LABEL_211;
                                                            }

                                                            if (errorCopy)
                                                            {
                                                              v430 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                              v424 = *MEMORY[0x1E698F240];
                                                              v581 = *MEMORY[0x1E696A578];
                                                              v266 = v81;
                                                              v267 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                              v369 = objc_opt_class();
                                                              v268 = v267;
                                                              v81 = v266;
                                                              v425 = [v268 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v369, @"usageScoreBooks"];
                                                              v582 = v425;
                                                              v269 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v582 forKeys:&v581 count:1];
                                                              v270 = [v430 initWithDomain:v424 code:2 userInfo:v269];
                                                              v429 = 0;
                                                              v40 = 0;
                                                              *errorCopy = v270;
                                                              v271 = v269;
                                                              v47 = v537;
                                                              v252 = v435;
LABEL_438:

                                                              goto LABEL_439;
                                                            }

                                                            v429 = 0;
                                                            v40 = 0;
LABEL_363:
                                                            v47 = v537;
                                                            v252 = v435;
LABEL_439:

                                                            goto LABEL_440;
                                                          }

                                                          if (errorCopy)
                                                          {
                                                            v432 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                            v428 = *MEMORY[0x1E698F240];
                                                            v583 = *MEMORY[0x1E696A578];
                                                            v260 = v81;
                                                            v261 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                            v368 = objc_opt_class();
                                                            v262 = v261;
                                                            v81 = v260;
                                                            v429 = [v262 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v368, @"rawEntitySearchRecency"];
                                                            v584 = v429;
                                                            v263 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v584 forKeys:&v583 count:1];
                                                            v264 = v428;
                                                            v427 = v263;
                                                            v265 = [v432 initWithDomain:v264 code:2 userInfo:?];
                                                            v431 = 0;
                                                            v40 = 0;
                                                            *errorCopy = v265;
                                                            goto LABEL_363;
                                                          }

                                                          v431 = 0;
                                                          v40 = 0;
                                                          v47 = v537;
                                                          v252 = v435;
LABEL_440:

                                                          goto LABEL_441;
                                                        }

                                                        if (errorCopy)
                                                        {
                                                          v438 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v434 = *MEMORY[0x1E698F240];
                                                          v585 = *MEMORY[0x1E696A578];
                                                          v254 = v81;
                                                          v255 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                          v367 = objc_opt_class();
                                                          v256 = v255;
                                                          v81 = v254;
                                                          v252 = v435;
                                                          v431 = [v256 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v367, @"rawNowPlayingRecencyCD"];
                                                          v586 = v431;
                                                          v257 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v586 forKeys:&v585 count:1];
                                                          v258 = v434;
                                                          v433 = v257;
                                                          v259 = [v438 initWithDomain:v258 code:2 userInfo:?];
                                                          v437 = 0;
                                                          v40 = 0;
                                                          *errorCopy = v259;
                                                          v47 = v537;
                                                          goto LABEL_440;
                                                        }

                                                        v437 = 0;
                                                        v40 = 0;
                                                        v47 = v537;
                                                        v252 = v435;
LABEL_441:

                                                        goto LABEL_442;
                                                      }

                                                      objc_opt_class();
                                                      if (objc_opt_isKindOfClass())
                                                      {
                                                        v439 = v157;
                                                        goto LABEL_199;
                                                      }

                                                      if (errorCopy)
                                                      {
                                                        v444 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                        v440 = *MEMORY[0x1E698F240];
                                                        v589 = *MEMORY[0x1E696A578];
                                                        v244 = v81;
                                                        v245 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                        v365 = objc_opt_class();
                                                        v246 = v245;
                                                        v81 = v244;
                                                        v441 = [v246 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v365, @"rawNowPlayingCountCoreDuet6Hr"];
                                                        v590 = v441;
                                                        v247 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v590 forKeys:&v589 count:1];
                                                        v248 = v444;
                                                        v443 = v247;
                                                        v240 = 0;
                                                        v40 = 0;
                                                        *errorCopy = [v248 initWithDomain:v440 code:2 userInfo:?];
                                                        v47 = v537;
LABEL_443:

                                                        goto LABEL_444;
                                                      }

                                                      v240 = 0;
                                                      v40 = 0;
LABEL_342:
                                                      v47 = v537;
LABEL_444:

                                                      goto LABEL_445;
                                                    }

                                                    objc_opt_class();
                                                    if (objc_opt_isKindOfClass())
                                                    {
                                                      v447 = v153;
                                                      goto LABEL_193;
                                                    }

                                                    if (errorCopy)
                                                    {
                                                      v452 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                      v448 = *MEMORY[0x1E698F240];
                                                      v593 = *MEMORY[0x1E696A578];
                                                      v232 = v81;
                                                      v233 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                      v363 = objc_opt_class();
                                                      v234 = v233;
                                                      v81 = v232;
                                                      v449 = [v234 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v363, @"rawNowPlayingCountCoreDuet28Day"];
                                                      v594 = v449;
                                                      v235 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v594 forKeys:&v593 count:1];
                                                      v236 = v452;
                                                      v451 = v235;
                                                      v228 = 0;
                                                      v40 = 0;
                                                      *errorCopy = [v236 initWithDomain:v448 code:2 userInfo:?];
                                                      v47 = v537;
LABEL_446:

                                                      goto LABEL_447;
                                                    }

                                                    v228 = 0;
                                                    v40 = 0;
LABEL_331:
                                                    v47 = v537;
LABEL_447:

                                                    goto LABEL_448;
                                                  }

                                                  if (errorCopy)
                                                  {
                                                    v456 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v454 = *MEMORY[0x1E698F240];
                                                    v595 = *MEMORY[0x1E696A578];
                                                    v225 = v81;
                                                    v226 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                    v362 = objc_opt_class();
                                                    v227 = v226;
                                                    v81 = v225;
                                                    v228 = [v227 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v362, @"rawNowPlayingCountCoreDuet1Hr"];
                                                    v596 = v228;
                                                    v229 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v596 forKeys:&v595 count:1];
                                                    v230 = v454;
                                                    v453 = v229;
                                                    v231 = [v456 initWithDomain:v230 code:2 userInfo:?];
                                                    v455 = 0;
                                                    v40 = 0;
                                                    *errorCopy = v231;
                                                    goto LABEL_331;
                                                  }

                                                  v455 = 0;
                                                  v40 = 0;
LABEL_325:
                                                  v47 = v537;
LABEL_448:

                                                  goto LABEL_449;
                                                }

                                                if (errorCopy)
                                                {
                                                  v460 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v458 = *MEMORY[0x1E698F240];
                                                  v597 = *MEMORY[0x1E696A578];
                                                  v219 = v81;
                                                  v220 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                  v361 = objc_opt_class();
                                                  v221 = v220;
                                                  v81 = v219;
                                                  v455 = [v221 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v361, @"rawNowPlayingCountCoreDuet1Day"];
                                                  v598 = v455;
                                                  v222 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v598 forKeys:&v597 count:1];
                                                  v223 = v458;
                                                  v457 = v222;
                                                  v224 = [v460 initWithDomain:v223 code:2 userInfo:?];
                                                  v459 = 0;
                                                  v40 = 0;
                                                  *errorCopy = v224;
                                                  goto LABEL_325;
                                                }

                                                v459 = 0;
                                                v40 = 0;
LABEL_319:
                                                v47 = v537;
LABEL_449:

                                                goto LABEL_450;
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v463 = v92;
                                                goto LABEL_116;
                                              }

                                              if (errorCopy)
                                              {
                                                v464 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v462 = *MEMORY[0x1E698F240];
                                                v599 = *MEMORY[0x1E696A578];
                                                v75 = v88;
                                                v214 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                v360 = objc_opt_class();
                                                v215 = v214;
                                                v81 = v87;
                                                v65 = v473;
                                                v459 = [v215 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v360, @"rawNowPlayingCountCoreDuet10Min"];
                                                v600 = v459;
                                                v216 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v600 forKeys:&v599 count:1];
                                                v217 = v462;
                                                v461 = v216;
                                                v218 = [v464 initWithDomain:v217 code:2 userInfo:?];
                                                v463 = 0;
                                                v40 = 0;
                                                *errorCopy = v218;
                                                goto LABEL_319;
                                              }

                                              v463 = 0;
                                              v40 = 0;
                                              v47 = v537;
                                              v75 = v88;
                                              v81 = v87;
                                              v65 = v473;
LABEL_450:

                                              goto LABEL_451;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v87 = v81;
                                              v88 = v75;
                                              v474 = v86;
                                              goto LABEL_110;
                                            }

                                            if (errorCopy)
                                            {
                                              v475 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v470 = *MEMORY[0x1E698F240];
                                              v603 = *MEMORY[0x1E696A578];
                                              v203 = v81;
                                              v204 = objc_alloc(MEMORY[0x1E696AEC0]);
                                              v358 = objc_opt_class();
                                              v205 = v204;
                                              v81 = v203;
                                              v194 = v471;
                                              v467 = [v205 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v358, @"rawMediaTypeUsageSignalPodcast"];
                                              v604 = v467;
                                              v206 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v604 forKeys:&v603 count:1];
                                              v207 = v470;
                                              v469 = v206;
                                              v208 = [v475 initWithDomain:v207 code:2 userInfo:?];
                                              v474 = 0;
                                              v40 = 0;
                                              *errorCopy = v208;
                                              v47 = v537;
LABEL_452:

                                              goto LABEL_453;
                                            }

                                            v474 = 0;
                                            v40 = 0;
                                            v47 = v537;
                                            v194 = v471;
LABEL_453:

                                            goto LABEL_454;
                                          }

                                          if (errorCopy)
                                          {
                                            v477 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v472 = *MEMORY[0x1E698F240];
                                            v605 = *MEMORY[0x1E696A578];
                                            v198 = v81;
                                            v199 = objc_alloc(MEMORY[0x1E696AEC0]);
                                            v357 = objc_opt_class();
                                            v200 = v199;
                                            v81 = v198;
                                            v474 = [v200 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v357, @"rawMediaTypeUsageSignalMusic"];
                                            v606 = v474;
                                            v201 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v606 forKeys:&v605 count:1];
                                            v202 = v477;
                                            v476 = v201;
                                            v194 = 0;
                                            v40 = 0;
                                            *errorCopy = [v202 initWithDomain:v472 code:2 userInfo:?];
                                            v47 = v537;
                                            goto LABEL_453;
                                          }

                                          v194 = 0;
                                          v40 = 0;
LABEL_298:
                                          v47 = v537;
LABEL_454:

                                          goto LABEL_455;
                                        }

                                        if (errorCopy)
                                        {
                                          v485 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v481 = *MEMORY[0x1E698F240];
                                          v607 = *MEMORY[0x1E696A578];
                                          v528 = dictionaryCopy;
                                          v191 = v81;
                                          v192 = objc_alloc(MEMORY[0x1E696AEC0]);
                                          v356 = objc_opt_class();
                                          v193 = v192;
                                          v81 = v191;
                                          dictionaryCopy = v528;
                                          v194 = [v193 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v356, @"rawMediaTypeUsageSignalBook"];
                                          v608 = v194;
                                          v195 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v608 forKeys:&v607 count:1];
                                          v196 = v481;
                                          v480 = v195;
                                          v197 = [v485 initWithDomain:v196 code:2 userInfo:?];
                                          v484 = 0;
                                          v40 = 0;
                                          *errorCopy = v197;
                                          goto LABEL_298;
                                        }

                                        v484 = 0;
                                        v40 = 0;
LABEL_292:
                                        v47 = v537;
LABEL_455:
                                        v68 = v81;

                                        goto LABEL_456;
                                      }

                                      if (errorCopy)
                                      {
                                        v487 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v483 = *MEMORY[0x1E698F240];
                                        v609 = *MEMORY[0x1E696A578];
                                        v145 = objc_alloc(MEMORY[0x1E696AEC0]);
                                        v355 = objc_opt_class();
                                        v146 = v145;
                                        v81 = v68;
                                        v484 = [v146 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v355, @"isRawMediaCategoryVideoSignal"];
                                        v610 = v484;
                                        v147 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v610 forKeys:&v609 count:1];
                                        v148 = v483;
                                        v482 = v147;
                                        v149 = [v487 initWithDomain:v148 code:2 userInfo:?];
                                        v486 = 0;
                                        v40 = 0;
                                        *errorCopy = v149;
                                        goto LABEL_292;
                                      }

                                      v486 = 0;
                                      v40 = 0;
LABEL_286:
                                      v47 = v537;
LABEL_456:
                                      v133 = v75;

                                      goto LABEL_457;
                                    }

                                    if (errorCopy)
                                    {
                                      v491 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v489 = *MEMORY[0x1E698F240];
                                      v611 = *MEMORY[0x1E696A578];
                                      v478 = v12;
                                      v140 = objc_alloc(MEMORY[0x1E696AEC0]);
                                      v354 = objc_opt_class();
                                      v141 = v140;
                                      v12 = v478;
                                      v486 = [v141 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v354, @"isRawMediaCategoryRadioSignal"];
                                      v612 = v486;
                                      v142 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v612 forKeys:&v611 count:1];
                                      v143 = v489;
                                      v488 = v142;
                                      v144 = [v491 initWithDomain:v143 code:2 userInfo:?];
                                      v490 = 0;
                                      v40 = 0;
                                      *errorCopy = v144;
                                      goto LABEL_286;
                                    }

                                    v133 = v75;
                                    v490 = 0;
                                    v40 = 0;
LABEL_280:
                                    v47 = v537;
LABEL_457:

                                    v63 = v492;
                                    goto LABEL_458;
                                  }

                                  if (errorCopy)
                                  {
                                    v137 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v494 = *MEMORY[0x1E698F240];
                                    v613 = *MEMORY[0x1E696A578];
                                    v490 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isRawMediaCategoryPodcastSignal"];
                                    v614 = v490;
                                    v138 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v614 forKeys:&v613 count:1];
                                    v139 = v494;
                                    v493 = v138;
                                    v133 = 0;
                                    v40 = 0;
                                    *errorCopy = [v137 initWithDomain:v139 code:2 userInfo:?];
                                    goto LABEL_280;
                                  }

                                  v133 = 0;
                                  v40 = 0;
LABEL_274:
                                  v47 = v537;
LABEL_458:

                                  goto LABEL_459;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v502 = v70;
                                  goto LABEL_89;
                                }

                                if (errorCopy)
                                {
                                  v503 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v500 = *MEMORY[0x1E698F240];
                                  v617 = *MEMORY[0x1E696A578];
                                  v128 = objc_alloc(MEMORY[0x1E696AEC0]);
                                  v353 = objc_opt_class();
                                  v129 = v128;
                                  v64 = v68;
                                  v67 = v501;
                                  v497 = [v129 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v353, @"isRawMediaCategoryAudiobookSignal"];
                                  v618 = v497;
                                  v130 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v618 forKeys:&v617 count:1];
                                  v131 = v500;
                                  v499 = v130;
                                  v132 = [v503 initWithDomain:v131 code:2 userInfo:?];
                                  v502 = 0;
                                  v40 = 0;
                                  *errorCopy = v132;
                                  v47 = v537;
LABEL_460:

                                  goto LABEL_461;
                                }

                                v502 = 0;
                                v40 = 0;
                                v47 = v537;
                                v64 = v68;
                                v67 = v501;
LABEL_461:

                                goto LABEL_462;
                              }

                              if (errorCopy)
                              {
                                v510 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v507 = *MEMORY[0x1E698F240];
                                v619 = *MEMORY[0x1E696A578];
                                v121 = v67;
                                v122 = v64;
                                v123 = objc_alloc(MEMORY[0x1E696AEC0]);
                                v352 = objc_opt_class();
                                v124 = v123;
                                v64 = v122;
                                v67 = v121;
                                v502 = [v124 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v352, @"isRawLastNowPlayingCoreDuet"];
                                v620 = v502;
                                v125 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v620 forKeys:&v619 count:1];
                                v126 = v507;
                                v504 = v125;
                                v127 = [v510 initWithDomain:v126 code:2 userInfo:?];
                                v508 = 0;
                                v40 = 0;
                                *errorCopy = v127;
                                v47 = v537;
                                goto LABEL_461;
                              }

                              v508 = 0;
                              v40 = 0;
LABEL_184:
                              v47 = v537;
LABEL_462:

                              v32 = v515;
                              goto LABEL_463;
                            }

                            if (errorCopy)
                            {
                              v512 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v506 = *MEMORY[0x1E698F240];
                              v621 = *MEMORY[0x1E696A578];
                              v117 = v64;
                              v118 = objc_alloc(MEMORY[0x1E696AEC0]);
                              v351 = objc_opt_class();
                              v119 = v118;
                              v64 = v117;
                              v508 = [v119 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v351, @"nowPlayingUsage14Days"];
                              v622 = v508;
                              v67 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v622 forKeys:&v621 count:1];
                              v120 = [v512 initWithDomain:v506 code:2 userInfo:v67];
                              v511 = 0;
                              v40 = 0;
                              *errorCopy = v120;
                              goto LABEL_184;
                            }

                            v511 = 0;
                            v40 = 0;
LABEL_178:
                            v47 = v537;
LABEL_463:

                            v33 = v513;
                            goto LABEL_464;
                          }

                          if (errorCopy)
                          {
                            v509 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v505 = *MEMORY[0x1E698F240];
                            v623 = *MEMORY[0x1E696A578];
                            v511 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"nowPlayingUsage7Days"];
                            v624 = v511;
                            v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v624 forKeys:&v623 count:1];
                            v64 = 0;
                            v40 = 0;
                            *errorCopy = [v509 initWithDomain:v505 code:2 userInfo:v65];
                            goto LABEL_178;
                          }

                          v64 = 0;
                          v40 = 0;
LABEL_172:
                          v47 = v537;
LABEL_464:

                          v26 = v518;
                          v29 = v517;
                          goto LABEL_465;
                        }

                        if (errorCopy)
                        {
                          v114 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v514 = *MEMORY[0x1E698F240];
                          v625 = *MEMORY[0x1E696A578];
                          v115 = errorCopy2;
                          v64 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"nowPlayingUsage1Day"];
                          v626 = v64;
                          v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v626 forKeys:&v625 count:1];
                          v40 = 0;
                          *errorCopy = [v114 initWithDomain:v514 code:2 userInfo:v116];
                          v63 = v116;
                          errorCopy2 = v115;
                          v33 = 0;
                          goto LABEL_172;
                        }

                        v33 = 0;
                        v40 = 0;
                        v47 = v537;
LABEL_465:

                        goto LABEL_466;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v32 = v31;
                        goto LABEL_34;
                      }

                      if (errorCopy)
                      {
                        v520 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v516 = *MEMORY[0x1E698F240];
                        v627 = *MEMORY[0x1E696A578];
                        v526 = dictionaryCopy;
                        v108 = v26;
                        v109 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v350 = objc_opt_class();
                        v110 = v109;
                        v26 = v108;
                        dictionaryCopy = v526;
                        v111 = [v110 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v350, @"isNowPlayingLastBundle"];
                        v628 = v111;
                        v112 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v628 forKeys:&v627 count:1];
                        v113 = v520;
                        v519 = v112;
                        v32 = 0;
                        v40 = 0;
                        *errorCopy = [v113 initWithDomain:v516 code:2 userInfo:?];
                        v33 = v111;
                        v47 = v537;
                        goto LABEL_465;
                      }

                      v40 = 0;
                      v47 = v537;
                      v32 = 0;
LABEL_466:

                      v13 = v538;
                      goto LABEL_467;
                    }

                    if (error)
                    {
                      v101 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v522 = *MEMORY[0x1E698F240];
                      v629 = *MEMORY[0x1E696A578];
                      v525 = dictionaryCopy;
                      v102 = v26;
                      v103 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v349 = objc_opt_class();
                      v104 = v103;
                      v26 = v102;
                      dictionaryCopy = v525;
                      v32 = [v104 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v349, @"nowPlayingBundleScore"];
                      v630 = v32;
                      v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v630 forKeys:&v629 count:1];
                      v106 = v522;
                      v521 = v105;
                      v29 = 0;
                      v40 = 0;
                      *errorCopy = [v101 initWithDomain:v106 code:2 userInfo:?];
                      v47 = v537;
                      goto LABEL_466;
                    }

                    v40 = 0;
                    v47 = v537;
                    v29 = 0;
LABEL_467:

                    v51 = v531;
                    goto LABEL_468;
                  }

                  if (error)
                  {
                    v97 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v98 = *MEMORY[0x1E698F240];
                    v631 = *MEMORY[0x1E696A578];
                    v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"nowPlayingBundleRecencyS"];
                    v632 = v29;
                    v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v632 forKeys:&v631 count:1];
                    v100 = v98;
                    v13 = v538;
                    v524 = v99;
                    v26 = 0;
                    v40 = 0;
                    *errorCopy = [v97 initWithDomain:v100 code:2 userInfo:?];
                    v47 = v537;
                    goto LABEL_467;
                  }

                  v26 = 0;
                  v40 = 0;
                  v47 = v537;
                  v51 = v531;
LABEL_468:

                  goto LABEL_469;
                }

                errorCopy2 = error;
                if (error)
                {
                  v95 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v96 = *MEMORY[0x1E698F240];
                  v633 = *MEMORY[0x1E696A578];
                  v51 = v531;
                  v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"nowPlayingBundleCount"];
                  v634 = v26;
                  v529 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v634 forKeys:&v633 count:1];
                  v40 = 0;
                  *errorCopy = [v95 initWithDomain:v96 code:2 userInfo:?];
                  errorCopy2 = 0;
                  v47 = v537;
                  goto LABEL_468;
                }

                v40 = 0;
                v47 = v537;
                v51 = v531;
LABEL_469:

                goto LABEL_470;
              }

              if (error)
              {
                v58 = objc_alloc(MEMORY[0x1E696ABC0]);
                v59 = *MEMORY[0x1E698F240];
                v635 = *MEMORY[0x1E696A578];
                v51 = v531;
                v60 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isNowPlayingBundle"];
                v636 = v60;
                v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v636 forKeys:&v635 count:1];
                v62 = v59;
                v13 = v538;
                v530 = v61;
                v532 = 0;
                v40 = 0;
                *errorCopy = [v58 initWithDomain:v62 code:2 userInfo:?];
                errorCopy2 = v60;
                v47 = v537;
                goto LABEL_469;
              }

              v532 = 0;
              v40 = 0;
              v47 = v537;
              v51 = v531;
LABEL_470:

              self = selfCopy;
              goto LABEL_471;
            }

            if (error)
            {
              v55 = objc_alloc(MEMORY[0x1E696ABC0]);
              v56 = *MEMORY[0x1E698F240];
              v637 = *MEMORY[0x1E696A578];
              v532 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isForegroundBundle"];
              v638 = v532;
              v533 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v638 forKeys:&v637 count:1];
              v57 = [v55 initWithDomain:v56 code:2 userInfo:?];
              v51 = 0;
              v40 = 0;
              *error = v57;
              v47 = v537;
              goto LABEL_470;
            }

            v51 = 0;
            v40 = 0;
            v47 = v537;
LABEL_471:

            v11 = v543;
            goto LABEL_472;
          }

          if (error)
          {
            v540 = objc_alloc(MEMORY[0x1E696ABC0]);
            v536 = *MEMORY[0x1E698F240];
            v639 = *MEMORY[0x1E696A578];
            v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"entitySearchBundleScore"];
            v640 = v51;
            v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v640 forKeys:&v639 count:1];
            v53 = v536;
            v535 = v52;
            v54 = [v540 initWithDomain:v53 code:2 userInfo:?];
            v539 = 0;
            v40 = 0;
            *error = v54;
            v47 = v537;
            goto LABEL_471;
          }

          v539 = 0;
          v40 = 0;
          v47 = v537;
          v11 = v543;
LABEL_472:

          goto LABEL_473;
        }

        v47 = v14;
        if (error)
        {
          v545 = objc_alloc(MEMORY[0x1E696ABC0]);
          v542 = *MEMORY[0x1E698F240];
          v641 = *MEMORY[0x1E696A578];
          v11 = v543;
          v539 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"entitySearchBundleRecencyS"];
          v642 = v539;
          v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v642 forKeys:&v641 count:1];
          v49 = v542;
          v541 = v48;
          v50 = [v545 initWithDomain:v49 code:2 userInfo:?];
          v544 = 0;
          v40 = 0;
          *error = v50;
          goto LABEL_472;
        }

        v544 = 0;
        v40 = 0;
        v11 = v543;
LABEL_473:

        goto LABEL_474;
      }

      if (error)
      {
        v45 = objc_alloc(MEMORY[0x1E696ABC0]);
        v46 = *MEMORY[0x1E698F240];
        v643 = *MEMORY[0x1E696A578];
        v544 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"compoundMediaTypeBundleScore"];
        v644 = v544;
        v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v644 forKeys:&v643 count:1];
        v13 = 0;
        v40 = 0;
        *errorCopy = [v45 initWithDomain:v46 code:2 userInfo:v47];
        goto LABEL_473;
      }

      v13 = 0;
      v40 = 0;
LABEL_474:

      v8 = v548;
      v10 = v547;
      goto LABEL_475;
    }

    if (error)
    {
      v41 = objc_alloc(MEMORY[0x1E696ABC0]);
      selfCopy2 = self;
      errorCopy3 = error;
      v44 = *MEMORY[0x1E698F240];
      v645 = *MEMORY[0x1E696A578];
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"compoundActiveBundleScore"];
      v646 = v13;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v646 forKeys:&v645 count:1];
      v11 = 0;
      v40 = 0;
      *errorCopy3 = [v41 initWithDomain:v44 code:2 userInfo:v12];
      self = selfCopy2;
      goto LABEL_474;
    }

    v11 = 0;
    v40 = 0;
LABEL_475:

    goto LABEL_476;
  }

  if (error)
  {
    v34 = objc_alloc(MEMORY[0x1E696ABC0]);
    selfCopy3 = self;
    errorCopy4 = error;
    v37 = *MEMORY[0x1E698F240];
    v647 = *MEMORY[0x1E696A578];
    v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isClientForegroundActiveBundle"];
    v648[0] = v38;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v648 forKeys:&v647 count:1];
    v39 = v34;
    v11 = v38;
    v8 = 0;
    v40 = 0;
    *errorCopy4 = [v39 initWithDomain:v37 code:2 userInfo:v10];
    self = selfCopy3;
    goto LABEL_475;
  }

  v8 = 0;
  v40 = 0;
LABEL_476:

  return v40;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriMusicInferenceTrainingDependentSignals *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasIsClientForegroundActiveBundle)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasCompoundActiveBundleScore)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasCompoundMediaTypeBundleScore)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasEntitySearchBundleRecencyS)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasEntitySearchBundleScore)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasIsForegroundBundle)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsNowPlayingBundle)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasNowPlayingBundleCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasNowPlayingBundleRecencyS)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasNowPlayingBundleScore)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasIsNowPlayingLastBundle)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasNowPlayingUsage1Day)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasNowPlayingUsage7Days)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasNowPlayingUsage14Days)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasIsRawLastNowPlayingCoreDuet)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsRawMediaCategoryAudiobookSignal)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsRawMediaCategoryMusicSignal)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsRawMediaCategoryPodcastSignal)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsRawMediaCategoryRadioSignal)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsRawMediaCategoryVideoSignal)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasRawMediaTypeUsageSignalBook)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRawMediaTypeUsageSignalMusic)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRawMediaTypeUsageSignalPodcast)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRawMediaTypeUsageSignalVideo)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRawNowPlayingCountCoreDuet10Min)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRawNowPlayingCountCoreDuet1Day)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRawNowPlayingCountCoreDuet1Hr)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRawNowPlayingCountCoreDuet28Day)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRawNowPlayingCountCoreDuet2Min)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRawNowPlayingCountCoreDuet6Hr)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRawNowPlayingCountCoreDuet7Day)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRawNowPlayingRecencyCD)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRawEntitySearchRecency)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasUsageScoreBooks)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasUsageScoreMusic)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasUsageScorePodcasts)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasIsAppFirstParty)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsRequestedApp)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsNowPlayingBundlePSE1)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsNowPlayingBundlePSE2)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasVq21Score)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasIsSupportedFlag)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsUnicornFlag)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsSupportedUnicornMatchFlag)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsDisambiguationSelectedApp)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsModelPredictedApp)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasUsageScoreRadio)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasUsageScoreMusicWithoutRadio)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRawMediaTypeUsageSignalRadio)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasRawMediaTypeUsageSignalMusicWithoutRadio)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v9.receiver = self;
  v9.super_class = BMSiriMusicInferenceTrainingDependentSignals;
  v5 = [(BMEventBase *)&v9 init];
  v6 = v5;
  if (v5 && !BMSiriMusicInferenceTrainingDependentSignalsReadFrom(v5, fromCopy))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (NSString)description
{
  v30 = objc_alloc(MEMORY[0x1E696AEC0]);
  v64 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isClientForegroundActiveBundle](self, "isClientForegroundActiveBundle")}];
  v3 = MEMORY[0x1E696AD98];
  [(BMSiriMusicInferenceTrainingDependentSignals *)self compoundActiveBundleScore];
  v67 = [v3 numberWithDouble:?];
  v4 = MEMORY[0x1E696AD98];
  [(BMSiriMusicInferenceTrainingDependentSignals *)self compoundMediaTypeBundleScore];
  v66 = [v4 numberWithDouble:?];
  v5 = MEMORY[0x1E696AD98];
  [(BMSiriMusicInferenceTrainingDependentSignals *)self entitySearchBundleRecencyS];
  v65 = [v5 numberWithDouble:?];
  v6 = MEMORY[0x1E696AD98];
  [(BMSiriMusicInferenceTrainingDependentSignals *)self entitySearchBundleScore];
  v61 = [v6 numberWithDouble:?];
  v63 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isForegroundBundle](self, "isForegroundBundle")}];
  v62 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isNowPlayingBundle](self, "isNowPlayingBundle")}];
  v60 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals nowPlayingBundleCount](self, "nowPlayingBundleCount")}];
  v7 = MEMORY[0x1E696AD98];
  [(BMSiriMusicInferenceTrainingDependentSignals *)self nowPlayingBundleRecencyS];
  v57 = [v7 numberWithDouble:?];
  v8 = MEMORY[0x1E696AD98];
  [(BMSiriMusicInferenceTrainingDependentSignals *)self nowPlayingBundleScore];
  v59 = [v8 numberWithDouble:?];
  v56 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isNowPlayingLastBundle](self, "isNowPlayingLastBundle")}];
  v58 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals nowPlayingUsage1Day](self, "nowPlayingUsage1Day")}];
  v53 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals nowPlayingUsage7Days](self, "nowPlayingUsage7Days")}];
  v55 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals nowPlayingUsage14Days](self, "nowPlayingUsage14Days")}];
  v52 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isRawLastNowPlayingCoreDuet](self, "isRawLastNowPlayingCoreDuet")}];
  v50 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isRawMediaCategoryAudiobookSignal](self, "isRawMediaCategoryAudiobookSignal")}];
  v54 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isRawMediaCategoryMusicSignal](self, "isRawMediaCategoryMusicSignal")}];
  v51 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isRawMediaCategoryPodcastSignal](self, "isRawMediaCategoryPodcastSignal")}];
  v47 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isRawMediaCategoryRadioSignal](self, "isRawMediaCategoryRadioSignal")}];
  v49 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isRawMediaCategoryVideoSignal](self, "isRawMediaCategoryVideoSignal")}];
  v46 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawMediaTypeUsageSignalBook](self, "rawMediaTypeUsageSignalBook")}];
  v44 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawMediaTypeUsageSignalMusic](self, "rawMediaTypeUsageSignalMusic")}];
  v48 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawMediaTypeUsageSignalPodcast](self, "rawMediaTypeUsageSignalPodcast")}];
  v43 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawMediaTypeUsageSignalVideo](self, "rawMediaTypeUsageSignalVideo")}];
  v45 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingCountCoreDuet10Min](self, "rawNowPlayingCountCoreDuet10Min")}];
  v42 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingCountCoreDuet1Day](self, "rawNowPlayingCountCoreDuet1Day")}];
  v40 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingCountCoreDuet1Hr](self, "rawNowPlayingCountCoreDuet1Hr")}];
  v41 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingCountCoreDuet28Day](self, "rawNowPlayingCountCoreDuet28Day")}];
  v38 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingCountCoreDuet2Min](self, "rawNowPlayingCountCoreDuet2Min")}];
  v29 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingCountCoreDuet6Hr](self, "rawNowPlayingCountCoreDuet6Hr")}];
  v39 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingCountCoreDuet7Day](self, "rawNowPlayingCountCoreDuet7Day")}];
  v28 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawNowPlayingRecencyCD](self, "rawNowPlayingRecencyCD")}];
  v37 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawEntitySearchRecency](self, "rawEntitySearchRecency")}];
  v9 = MEMORY[0x1E696AD98];
  [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreBooks];
  v36 = [v9 numberWithDouble:?];
  v10 = MEMORY[0x1E696AD98];
  [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreMusic];
  v35 = [v10 numberWithDouble:?];
  v11 = MEMORY[0x1E696AD98];
  [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScorePodcasts];
  v27 = [v11 numberWithDouble:?];
  v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isAppFirstParty](self, "isAppFirstParty")}];
  v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isRequestedApp](self, "isRequestedApp")}];
  v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isNowPlayingBundlePSE1](self, "isNowPlayingBundlePSE1")}];
  v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isNowPlayingBundlePSE2](self, "isNowPlayingBundlePSE2")}];
  v12 = MEMORY[0x1E696AD98];
  [(BMSiriMusicInferenceTrainingDependentSignals *)self vq21Score];
  v24 = [v12 numberWithDouble:?];
  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isSupportedFlag](self, "isSupportedFlag")}];
  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isUnicornFlag](self, "isUnicornFlag")}];
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isSupportedUnicornMatchFlag](self, "isSupportedUnicornMatchFlag")}];
  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isDisambiguationSelectedApp](self, "isDisambiguationSelectedApp")}];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriMusicInferenceTrainingDependentSignals isModelPredictedApp](self, "isModelPredictedApp")}];
  v14 = MEMORY[0x1E696AD98];
  [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreRadio];
  v15 = [v14 numberWithDouble:?];
  v16 = MEMORY[0x1E696AD98];
  [(BMSiriMusicInferenceTrainingDependentSignals *)self usageScoreMusicWithoutRadio];
  v17 = [v16 numberWithDouble:?];
  v18 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawMediaTypeUsageSignalRadio](self, "rawMediaTypeUsageSignalRadio")}];
  v19 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriMusicInferenceTrainingDependentSignals rawMediaTypeUsageSignalMusicWithoutRadio](self, "rawMediaTypeUsageSignalMusicWithoutRadio")}];
  v31 = [v30 initWithFormat:@"BMSiriMusicInferenceTrainingDependentSignals with isClientForegroundActiveBundle: %@, compoundActiveBundleScore: %@, compoundMediaTypeBundleScore: %@, entitySearchBundleRecencyS: %@, entitySearchBundleScore: %@, isForegroundBundle: %@, isNowPlayingBundle: %@, nowPlayingBundleCount: %@, nowPlayingBundleRecencyS: %@, nowPlayingBundleScore: %@, isNowPlayingLastBundle: %@, nowPlayingUsage1Day: %@, nowPlayingUsage7Days: %@, nowPlayingUsage14Days: %@, isRawLastNowPlayingCoreDuet: %@, isRawMediaCategoryAudiobookSignal: %@, isRawMediaCategoryMusicSignal: %@, isRawMediaCategoryPodcastSignal: %@, isRawMediaCategoryRadioSignal: %@, isRawMediaCategoryVideoSignal: %@, rawMediaTypeUsageSignalBook: %@, rawMediaTypeUsageSignalMusic: %@, rawMediaTypeUsageSignalPodcast: %@, rawMediaTypeUsageSignalVideo: %@, rawNowPlayingCountCoreDuet10Min: %@, rawNowPlayingCountCoreDuet1Day: %@, rawNowPlayingCountCoreDuet1Hr: %@, rawNowPlayingCountCoreDuet28Day: %@, rawNowPlayingCountCoreDuet2Min: %@, rawNowPlayingCountCoreDuet6Hr: %@, rawNowPlayingCountCoreDuet7Day: %@, rawNowPlayingRecencyCD: %@, rawEntitySearchRecency: %@, usageScoreBooks: %@, usageScoreMusic: %@, usageScorePodcasts: %@, isAppFirstParty: %@, isRequestedApp: %@, isNowPlayingBundlePSE1: %@, isNowPlayingBundlePSE2: %@, vq21Score: %@, isSupportedFlag: %@, isUnicornFlag: %@, isSupportedUnicornMatchFlag: %@, isDisambiguationSelectedApp: %@, isModelPredictedApp: %@, usageScoreRadio: %@, usageScoreMusicWithoutRadio: %@, rawMediaTypeUsageSignalRadio: %@, rawMediaTypeUsageSignalMusicWithoutRadio: %@", v64, v67, v66, v65, v61, v63, v62, v60, v57, v59, v56, v58, v53, v55, v52, v50, v54, v51, v47, v49, v46, v44, v48, v43, v45, v42, v40, v41, v38, v29, v39, v28, v37, v36, v35, v27, v34, v26, v33, v32, v24, v23, v25, v22, v21, v13, v15, v17, v18, v19];

  return v31;
}

- (BMSiriMusicInferenceTrainingDependentSignals)initWithIsClientForegroundActiveBundle:(id)bundle compoundActiveBundleScore:(id)score compoundMediaTypeBundleScore:(id)bundleScore entitySearchBundleRecencyS:(id)s entitySearchBundleScore:(id)searchBundleScore isForegroundBundle:(id)foregroundBundle isNowPlayingBundle:(id)playingBundle nowPlayingBundleCount:(id)self0 nowPlayingBundleRecencyS:(id)self1 nowPlayingBundleScore:(id)self2 isNowPlayingLastBundle:(id)self3 nowPlayingUsage1Day:(id)self4 nowPlayingUsage7Days:(id)self5 nowPlayingUsage14Days:(id)self6 isRawLastNowPlayingCoreDuet:(id)self7 isRawMediaCategoryAudiobookSignal:(id)self8 isRawMediaCategoryMusicSignal:(id)self9 isRawMediaCategoryPodcastSignal:(id)podcastSignal isRawMediaCategoryRadioSignal:(id)radioSignal isRawMediaCategoryVideoSignal:(id)videoSignal rawMediaTypeUsageSignalBook:(id)book rawMediaTypeUsageSignalMusic:(id)music rawMediaTypeUsageSignalPodcast:(id)podcast rawMediaTypeUsageSignalVideo:(id)video rawNowPlayingCountCoreDuet10Min:(id)min rawNowPlayingCountCoreDuet1Day:(id)duet1Day rawNowPlayingCountCoreDuet1Hr:(id)hr rawNowPlayingCountCoreDuet28Day:(id)bundle0 rawNowPlayingCountCoreDuet2Min:(id)bundle1 rawNowPlayingCountCoreDuet6Hr:(id)bundle2 rawNowPlayingCountCoreDuet7Day:(id)bundle3 rawNowPlayingRecencyCD:(id)bundle4 rawEntitySearchRecency:(id)bundle5 usageScoreBooks:(id)bundle6 usageScoreMusic:(id)bundle7 usageScorePodcasts:(id)bundle8 isAppFirstParty:(id)bundle9 isRequestedApp:(id)score0 isNowPlayingBundlePSE1:(id)score1 isNowPlayingBundlePSE2:(id)score2 vq21Score:(id)score3 isSupportedFlag:(id)score4 isUnicornFlag:(id)score5 isSupportedUnicornMatchFlag:(id)score6 isDisambiguationSelectedApp:(id)score7 isModelPredictedApp:(id)score8 usageScoreRadio:(id)score9 usageScoreMusicWithoutRadio:(id)bundleScore0 rawMediaTypeUsageSignalRadio:(id)bundleScore1 rawMediaTypeUsageSignalMusicWithoutRadio:(id)bundleScore2
{
  bundleCopy = bundle;
  scoreCopy = score;
  bundleScoreCopy = bundleScore;
  sCopy = s;
  searchBundleScoreCopy = searchBundleScore;
  foregroundBundleCopy = foregroundBundle;
  playingBundleCopy = playingBundle;
  countCopy = count;
  recencySCopy = recencyS;
  playingBundleScoreCopy = playingBundleScore;
  lastBundleCopy = lastBundle;
  dayCopy = day;
  daysCopy = days;
  usage14DaysCopy = usage14Days;
  duetCopy = duet;
  signalCopy = signal;
  musicSignalCopy = musicSignal;
  podcastSignalCopy = podcastSignal;
  radioSignalCopy = radioSignal;
  videoSignalCopy = videoSignal;
  bookCopy = book;
  musicCopy = music;
  podcastCopy = podcast;
  videoCopy = video;
  minCopy = min;
  duet1DayCopy = duet1Day;
  hrCopy = hr;
  duet28DayCopy = duet28Day;
  duet2MinCopy = duet2Min;
  duet6HrCopy = duet6Hr;
  duet7DayCopy = duet7Day;
  dCopy = d;
  recencyCopy = recency;
  booksCopy = books;
  scoreMusicCopy = scoreMusic;
  podcastsCopy = podcasts;
  partyCopy = party;
  appCopy = app;
  e1Copy = e1;
  e2Copy = e2;
  vq21ScoreCopy = vq21Score;
  flagCopy = flag;
  unicornFlagCopy = unicornFlag;
  matchFlagCopy = matchFlag;
  selectedAppCopy = selectedApp;
  predictedAppCopy = predictedApp;
  radioCopy = radio;
  withoutRadioCopy = withoutRadio;
  signalRadioCopy = signalRadio;
  musicWithoutRadioCopy = musicWithoutRadio;
  v142.receiver = self;
  v142.super_class = BMSiriMusicInferenceTrainingDependentSignals;
  v65 = [(BMEventBase *)&v142 init];

  if (v65)
  {
    v65->_dataVersion = [objc_opt_class() latestDataVersion];
    if (bundleCopy)
    {
      v65->_hasIsClientForegroundActiveBundle = 1;
      v65->_isClientForegroundActiveBundle = [bundleCopy BOOLValue];
    }

    else
    {
      v65->_hasIsClientForegroundActiveBundle = 0;
      v65->_isClientForegroundActiveBundle = 0;
    }

    if (scoreCopy)
    {
      v65->_hasCompoundActiveBundleScore = 1;
      [scoreCopy doubleValue];
    }

    else
    {
      v65->_hasCompoundActiveBundleScore = 0;
      v66 = -1.0;
    }

    v65->_compoundActiveBundleScore = v66;
    if (bundleScoreCopy)
    {
      v65->_hasCompoundMediaTypeBundleScore = 1;
      [bundleScoreCopy doubleValue];
    }

    else
    {
      v65->_hasCompoundMediaTypeBundleScore = 0;
      v67 = -1.0;
    }

    v65->_compoundMediaTypeBundleScore = v67;
    if (sCopy)
    {
      v65->_hasEntitySearchBundleRecencyS = 1;
      [sCopy doubleValue];
    }

    else
    {
      v65->_hasEntitySearchBundleRecencyS = 0;
      v68 = -1.0;
    }

    v65->_entitySearchBundleRecencyS = v68;
    if (searchBundleScoreCopy)
    {
      v65->_hasEntitySearchBundleScore = 1;
      [searchBundleScoreCopy doubleValue];
    }

    else
    {
      v65->_hasEntitySearchBundleScore = 0;
      v69 = -1.0;
    }

    v65->_entitySearchBundleScore = v69;
    if (foregroundBundleCopy)
    {
      v65->_hasIsForegroundBundle = 1;
      v65->_isForegroundBundle = [foregroundBundleCopy BOOLValue];
    }

    else
    {
      v65->_hasIsForegroundBundle = 0;
      v65->_isForegroundBundle = 0;
    }

    if (playingBundleCopy)
    {
      v65->_hasIsNowPlayingBundle = 1;
      v65->_isNowPlayingBundle = [playingBundleCopy BOOLValue];
    }

    else
    {
      v65->_hasIsNowPlayingBundle = 0;
      v65->_isNowPlayingBundle = 0;
    }

    if (countCopy)
    {
      v65->_hasNowPlayingBundleCount = 1;
      intValue = [countCopy intValue];
    }

    else
    {
      v65->_hasNowPlayingBundleCount = 0;
      intValue = -1;
    }

    v65->_nowPlayingBundleCount = intValue;
    if (recencySCopy)
    {
      v65->_hasNowPlayingBundleRecencyS = 1;
      [recencySCopy doubleValue];
    }

    else
    {
      v65->_hasNowPlayingBundleRecencyS = 0;
      v71 = -1.0;
    }

    v65->_nowPlayingBundleRecencyS = v71;
    if (playingBundleScoreCopy)
    {
      v65->_hasNowPlayingBundleScore = 1;
      [playingBundleScoreCopy doubleValue];
    }

    else
    {
      v65->_hasNowPlayingBundleScore = 0;
      v72 = -1.0;
    }

    v65->_nowPlayingBundleScore = v72;
    if (lastBundleCopy)
    {
      v65->_hasIsNowPlayingLastBundle = 1;
      v65->_isNowPlayingLastBundle = [lastBundleCopy BOOLValue];
    }

    else
    {
      v65->_hasIsNowPlayingLastBundle = 0;
      v65->_isNowPlayingLastBundle = 0;
    }

    if (dayCopy)
    {
      v65->_hasNowPlayingUsage1Day = 1;
      intValue2 = [dayCopy intValue];
    }

    else
    {
      v65->_hasNowPlayingUsage1Day = 0;
      intValue2 = -1;
    }

    v65->_nowPlayingUsage1Day = intValue2;
    if (daysCopy)
    {
      v65->_hasNowPlayingUsage7Days = 1;
      intValue3 = [daysCopy intValue];
    }

    else
    {
      v65->_hasNowPlayingUsage7Days = 0;
      intValue3 = -1;
    }

    v65->_nowPlayingUsage7Days = intValue3;
    if (usage14DaysCopy)
    {
      v65->_hasNowPlayingUsage14Days = 1;
      intValue4 = [usage14DaysCopy intValue];
    }

    else
    {
      v65->_hasNowPlayingUsage14Days = 0;
      intValue4 = -1;
    }

    v65->_nowPlayingUsage14Days = intValue4;
    if (duetCopy)
    {
      v65->_hasIsRawLastNowPlayingCoreDuet = 1;
      v65->_isRawLastNowPlayingCoreDuet = [duetCopy BOOLValue];
    }

    else
    {
      v65->_hasIsRawLastNowPlayingCoreDuet = 0;
      v65->_isRawLastNowPlayingCoreDuet = 0;
    }

    if (signalCopy)
    {
      v65->_hasIsRawMediaCategoryAudiobookSignal = 1;
      v65->_isRawMediaCategoryAudiobookSignal = [signalCopy BOOLValue];
    }

    else
    {
      v65->_hasIsRawMediaCategoryAudiobookSignal = 0;
      v65->_isRawMediaCategoryAudiobookSignal = 0;
    }

    if (musicSignalCopy)
    {
      v65->_hasIsRawMediaCategoryMusicSignal = 1;
      v65->_isRawMediaCategoryMusicSignal = [musicSignalCopy BOOLValue];
    }

    else
    {
      v65->_hasIsRawMediaCategoryMusicSignal = 0;
      v65->_isRawMediaCategoryMusicSignal = 0;
    }

    if (podcastSignalCopy)
    {
      v65->_hasIsRawMediaCategoryPodcastSignal = 1;
      v65->_isRawMediaCategoryPodcastSignal = [podcastSignalCopy BOOLValue];
    }

    else
    {
      v65->_hasIsRawMediaCategoryPodcastSignal = 0;
      v65->_isRawMediaCategoryPodcastSignal = 0;
    }

    if (radioSignalCopy)
    {
      v65->_hasIsRawMediaCategoryRadioSignal = 1;
      v65->_isRawMediaCategoryRadioSignal = [radioSignalCopy BOOLValue];
    }

    else
    {
      v65->_hasIsRawMediaCategoryRadioSignal = 0;
      v65->_isRawMediaCategoryRadioSignal = 0;
    }

    if (videoSignalCopy)
    {
      v65->_hasIsRawMediaCategoryVideoSignal = 1;
      v65->_isRawMediaCategoryVideoSignal = [videoSignalCopy BOOLValue];
    }

    else
    {
      v65->_hasIsRawMediaCategoryVideoSignal = 0;
      v65->_isRawMediaCategoryVideoSignal = 0;
    }

    if (bookCopy)
    {
      v65->_hasRawMediaTypeUsageSignalBook = 1;
      intValue5 = [bookCopy intValue];
    }

    else
    {
      v65->_hasRawMediaTypeUsageSignalBook = 0;
      intValue5 = -1;
    }

    v65->_rawMediaTypeUsageSignalBook = intValue5;
    if (musicCopy)
    {
      v65->_hasRawMediaTypeUsageSignalMusic = 1;
      intValue6 = [musicCopy intValue];
    }

    else
    {
      v65->_hasRawMediaTypeUsageSignalMusic = 0;
      intValue6 = -1;
    }

    v65->_rawMediaTypeUsageSignalMusic = intValue6;
    if (podcastCopy)
    {
      v65->_hasRawMediaTypeUsageSignalPodcast = 1;
      intValue7 = [podcastCopy intValue];
    }

    else
    {
      v65->_hasRawMediaTypeUsageSignalPodcast = 0;
      intValue7 = -1;
    }

    v65->_rawMediaTypeUsageSignalPodcast = intValue7;
    if (videoCopy)
    {
      v65->_hasRawMediaTypeUsageSignalVideo = 1;
      intValue8 = [videoCopy intValue];
    }

    else
    {
      v65->_hasRawMediaTypeUsageSignalVideo = 0;
      intValue8 = -1;
    }

    v65->_rawMediaTypeUsageSignalVideo = intValue8;
    if (minCopy)
    {
      v65->_hasRawNowPlayingCountCoreDuet10Min = 1;
      intValue9 = [minCopy intValue];
    }

    else
    {
      v65->_hasRawNowPlayingCountCoreDuet10Min = 0;
      intValue9 = -1;
    }

    v65->_rawNowPlayingCountCoreDuet10Min = intValue9;
    if (duet1DayCopy)
    {
      v65->_hasRawNowPlayingCountCoreDuet1Day = 1;
      intValue10 = [duet1DayCopy intValue];
    }

    else
    {
      v65->_hasRawNowPlayingCountCoreDuet1Day = 0;
      intValue10 = -1;
    }

    v65->_rawNowPlayingCountCoreDuet1Day = intValue10;
    if (hrCopy)
    {
      v65->_hasRawNowPlayingCountCoreDuet1Hr = 1;
      intValue11 = [hrCopy intValue];
    }

    else
    {
      v65->_hasRawNowPlayingCountCoreDuet1Hr = 0;
      intValue11 = -1;
    }

    v65->_rawNowPlayingCountCoreDuet1Hr = intValue11;
    if (duet28DayCopy)
    {
      v65->_hasRawNowPlayingCountCoreDuet28Day = 1;
      intValue12 = [duet28DayCopy intValue];
    }

    else
    {
      v65->_hasRawNowPlayingCountCoreDuet28Day = 0;
      intValue12 = -1;
    }

    v65->_rawNowPlayingCountCoreDuet28Day = intValue12;
    if (duet2MinCopy)
    {
      v65->_hasRawNowPlayingCountCoreDuet2Min = 1;
      intValue13 = [duet2MinCopy intValue];
    }

    else
    {
      v65->_hasRawNowPlayingCountCoreDuet2Min = 0;
      intValue13 = -1;
    }

    v65->_rawNowPlayingCountCoreDuet2Min = intValue13;
    if (duet6HrCopy)
    {
      v65->_hasRawNowPlayingCountCoreDuet6Hr = 1;
      intValue14 = [duet6HrCopy intValue];
    }

    else
    {
      v65->_hasRawNowPlayingCountCoreDuet6Hr = 0;
      intValue14 = -1;
    }

    v65->_rawNowPlayingCountCoreDuet6Hr = intValue14;
    if (duet7DayCopy)
    {
      v65->_hasRawNowPlayingCountCoreDuet7Day = 1;
      intValue15 = [duet7DayCopy intValue];
    }

    else
    {
      v65->_hasRawNowPlayingCountCoreDuet7Day = 0;
      intValue15 = -1;
    }

    v65->_rawNowPlayingCountCoreDuet7Day = intValue15;
    if (dCopy)
    {
      v65->_hasRawNowPlayingRecencyCD = 1;
      intValue16 = [dCopy intValue];
    }

    else
    {
      v65->_hasRawNowPlayingRecencyCD = 0;
      intValue16 = -1;
    }

    v65->_rawNowPlayingRecencyCD = intValue16;
    if (recencyCopy)
    {
      v65->_hasRawEntitySearchRecency = 1;
      intValue17 = [recencyCopy intValue];
    }

    else
    {
      v65->_hasRawEntitySearchRecency = 0;
      intValue17 = -1;
    }

    v65->_rawEntitySearchRecency = intValue17;
    if (booksCopy)
    {
      v65->_hasUsageScoreBooks = 1;
      [booksCopy doubleValue];
    }

    else
    {
      v65->_hasUsageScoreBooks = 0;
      v89 = -1.0;
    }

    v65->_usageScoreBooks = v89;
    if (scoreMusicCopy)
    {
      v65->_hasUsageScoreMusic = 1;
      [scoreMusicCopy doubleValue];
    }

    else
    {
      v65->_hasUsageScoreMusic = 0;
      v90 = -1.0;
    }

    v65->_usageScoreMusic = v90;
    if (podcastsCopy)
    {
      v65->_hasUsageScorePodcasts = 1;
      [podcastsCopy doubleValue];
    }

    else
    {
      v65->_hasUsageScorePodcasts = 0;
      v91 = -1.0;
    }

    v65->_usageScorePodcasts = v91;
    if (partyCopy)
    {
      v65->_hasIsAppFirstParty = 1;
      v65->_isAppFirstParty = [partyCopy BOOLValue];
    }

    else
    {
      v65->_hasIsAppFirstParty = 0;
      v65->_isAppFirstParty = 0;
    }

    if (appCopy)
    {
      v65->_hasIsRequestedApp = 1;
      v65->_isRequestedApp = [appCopy BOOLValue];
    }

    else
    {
      v65->_hasIsRequestedApp = 0;
      v65->_isRequestedApp = 0;
    }

    if (e1Copy)
    {
      v65->_hasIsNowPlayingBundlePSE1 = 1;
      v65->_isNowPlayingBundlePSE1 = [e1Copy BOOLValue];
    }

    else
    {
      v65->_hasIsNowPlayingBundlePSE1 = 0;
      v65->_isNowPlayingBundlePSE1 = 0;
    }

    if (e2Copy)
    {
      v65->_hasIsNowPlayingBundlePSE2 = 1;
      v65->_isNowPlayingBundlePSE2 = [e2Copy BOOLValue];
    }

    else
    {
      v65->_hasIsNowPlayingBundlePSE2 = 0;
      v65->_isNowPlayingBundlePSE2 = 0;
    }

    if (vq21ScoreCopy)
    {
      v65->_hasVq21Score = 1;
      [vq21ScoreCopy doubleValue];
    }

    else
    {
      v65->_hasVq21Score = 0;
      v92 = -1.0;
    }

    v65->_vq21Score = v92;
    if (flagCopy)
    {
      v65->_hasIsSupportedFlag = 1;
      v65->_isSupportedFlag = [flagCopy BOOLValue];
    }

    else
    {
      v65->_hasIsSupportedFlag = 0;
      v65->_isSupportedFlag = 0;
    }

    if (unicornFlagCopy)
    {
      v65->_hasIsUnicornFlag = 1;
      v65->_isUnicornFlag = [unicornFlagCopy BOOLValue];
    }

    else
    {
      v65->_hasIsUnicornFlag = 0;
      v65->_isUnicornFlag = 0;
    }

    if (matchFlagCopy)
    {
      v65->_hasIsSupportedUnicornMatchFlag = 1;
      v65->_isSupportedUnicornMatchFlag = [matchFlagCopy BOOLValue];
    }

    else
    {
      v65->_hasIsSupportedUnicornMatchFlag = 0;
      v65->_isSupportedUnicornMatchFlag = 0;
    }

    if (selectedAppCopy)
    {
      v65->_hasIsDisambiguationSelectedApp = 1;
      v65->_isDisambiguationSelectedApp = [selectedAppCopy BOOLValue];
    }

    else
    {
      v65->_hasIsDisambiguationSelectedApp = 0;
      v65->_isDisambiguationSelectedApp = 0;
    }

    if (predictedAppCopy)
    {
      v65->_hasIsModelPredictedApp = 1;
      v65->_isModelPredictedApp = [predictedAppCopy BOOLValue];
    }

    else
    {
      v65->_hasIsModelPredictedApp = 0;
      v65->_isModelPredictedApp = 0;
    }

    if (radioCopy)
    {
      v65->_hasUsageScoreRadio = 1;
      [radioCopy doubleValue];
    }

    else
    {
      v65->_hasUsageScoreRadio = 0;
      v93 = -1.0;
    }

    v65->_usageScoreRadio = v93;
    if (withoutRadioCopy)
    {
      v65->_hasUsageScoreMusicWithoutRadio = 1;
      [withoutRadioCopy doubleValue];
    }

    else
    {
      v65->_hasUsageScoreMusicWithoutRadio = 0;
      v94 = -1.0;
    }

    v65->_usageScoreMusicWithoutRadio = v94;
    if (signalRadioCopy)
    {
      v65->_hasRawMediaTypeUsageSignalRadio = 1;
      intValue18 = [signalRadioCopy intValue];
    }

    else
    {
      v65->_hasRawMediaTypeUsageSignalRadio = 0;
      intValue18 = -1;
    }

    v65->_rawMediaTypeUsageSignalRadio = intValue18;
    if (musicWithoutRadioCopy)
    {
      v65->_hasRawMediaTypeUsageSignalMusicWithoutRadio = 1;
      intValue19 = [musicWithoutRadioCopy intValue];
    }

    else
    {
      v65->_hasRawMediaTypeUsageSignalMusicWithoutRadio = 0;
      intValue19 = -1;
    }

    v65->_rawMediaTypeUsageSignalMusicWithoutRadio = intValue19;
  }

  v97 = v65;

  return v97;
}

+ (id)protoFields
{
  v54[50] = *MEMORY[0x1E69E9840];
  v53 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isClientForegroundActiveBundle" number:1 type:12 subMessageClass:0];
  v54[0] = v53;
  v52 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"compoundActiveBundleScore" number:2 type:0 subMessageClass:0];
  v54[1] = v52;
  v51 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"compoundMediaTypeBundleScore" number:3 type:0 subMessageClass:0];
  v54[2] = v51;
  v50 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"entitySearchBundleRecencyS" number:4 type:0 subMessageClass:0];
  v54[3] = v50;
  v49 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"entitySearchBundleScore" number:5 type:0 subMessageClass:0];
  v54[4] = v49;
  v48 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isForegroundBundle" number:6 type:12 subMessageClass:0];
  v54[5] = v48;
  v47 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isNowPlayingBundle" number:7 type:12 subMessageClass:0];
  v54[6] = v47;
  v46 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nowPlayingBundleCount" number:8 type:2 subMessageClass:0];
  v54[7] = v46;
  v45 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nowPlayingBundleRecencyS" number:9 type:0 subMessageClass:0];
  v54[8] = v45;
  v44 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nowPlayingBundleScore" number:10 type:0 subMessageClass:0];
  v54[9] = v44;
  v43 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isNowPlayingLastBundle" number:11 type:12 subMessageClass:0];
  v54[10] = v43;
  v42 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nowPlayingUsage1Day" number:12 type:2 subMessageClass:0];
  v54[11] = v42;
  v41 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nowPlayingUsage7Days" number:13 type:2 subMessageClass:0];
  v54[12] = v41;
  v40 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"nowPlayingUsage14Days" number:14 type:2 subMessageClass:0];
  v54[13] = v40;
  v39 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRawLastNowPlayingCoreDuet" number:15 type:12 subMessageClass:0];
  v54[14] = v39;
  v38 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRawMediaCategoryAudiobookSignal" number:16 type:12 subMessageClass:0];
  v54[15] = v38;
  v37 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRawMediaCategoryMusicSignal" number:17 type:12 subMessageClass:0];
  v54[16] = v37;
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRawMediaCategoryPodcastSignal" number:18 type:12 subMessageClass:0];
  v54[17] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRawMediaCategoryRadioSignal" number:19 type:12 subMessageClass:0];
  v54[18] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRawMediaCategoryVideoSignal" number:20 type:12 subMessageClass:0];
  v54[19] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawMediaTypeUsageSignalBook" number:21 type:2 subMessageClass:0];
  v54[20] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawMediaTypeUsageSignalMusic" number:22 type:2 subMessageClass:0];
  v54[21] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawMediaTypeUsageSignalPodcast" number:23 type:2 subMessageClass:0];
  v54[22] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawMediaTypeUsageSignalVideo" number:24 type:2 subMessageClass:0];
  v54[23] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawNowPlayingCountCoreDuet10Min" number:25 type:2 subMessageClass:0];
  v54[24] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawNowPlayingCountCoreDuet1Day" number:26 type:2 subMessageClass:0];
  v54[25] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawNowPlayingCountCoreDuet1Hr" number:27 type:2 subMessageClass:0];
  v54[26] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawNowPlayingCountCoreDuet28Day" number:28 type:2 subMessageClass:0];
  v54[27] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawNowPlayingCountCoreDuet2Min" number:29 type:2 subMessageClass:0];
  v54[28] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawNowPlayingCountCoreDuet6Hr" number:30 type:2 subMessageClass:0];
  v54[29] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawNowPlayingCountCoreDuet7Day" number:31 type:2 subMessageClass:0];
  v54[30] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawNowPlayingRecencyCD" number:32 type:2 subMessageClass:0];
  v54[31] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawEntitySearchRecency" number:33 type:2 subMessageClass:0];
  v54[32] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"usageScoreBooks" number:34 type:0 subMessageClass:0];
  v54[33] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"usageScoreMusic" number:35 type:0 subMessageClass:0];
  v54[34] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"usageScorePodcasts" number:36 type:0 subMessageClass:0];
  v54[35] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isAppFirstParty" number:37 type:12 subMessageClass:0];
  v54[36] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRequestedApp" number:38 type:12 subMessageClass:0];
  v54[37] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isNowPlayingBundlePSE1" number:39 type:12 subMessageClass:0];
  v54[38] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isNowPlayingBundlePSE2" number:40 type:12 subMessageClass:0];
  v54[39] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"vq21Score" number:41 type:0 subMessageClass:0];
  v54[40] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isSupportedFlag" number:42 type:12 subMessageClass:0];
  v54[41] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isUnicornFlag" number:43 type:12 subMessageClass:0];
  v54[42] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isSupportedUnicornMatchFlag" number:44 type:12 subMessageClass:0];
  v54[43] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isDisambiguationSelectedApp" number:45 type:12 subMessageClass:0];
  v54[44] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isModelPredictedApp" number:46 type:12 subMessageClass:0];
  v54[45] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"usageScoreRadio" number:47 type:0 subMessageClass:0];
  v54[46] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"usageScoreMusicWithoutRadio" number:48 type:0 subMessageClass:0];
  v54[47] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawMediaTypeUsageSignalRadio" number:49 type:2 subMessageClass:0];
  v54[48] = v10;
  v11 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawMediaTypeUsageSignalMusicWithoutRadio" number:50 type:2 subMessageClass:0];
  v54[49] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:50];

  return v13;
}

+ (id)columns
{
  v54[50] = *MEMORY[0x1E69E9840];
  v52 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isClientForegroundActiveBundle" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v53 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"compoundActiveBundleScore" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:0];
  v51 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"compoundMediaTypeBundleScore" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:0];
  v50 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"entitySearchBundleRecencyS" dataType:1 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:0];
  v49 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"entitySearchBundleScore" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:0];
  v48 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isForegroundBundle" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v47 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isNowPlayingBundle" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v46 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nowPlayingBundleCount" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:2 convertedType:0];
  v45 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nowPlayingBundleRecencyS" dataType:1 requestOnly:0 fieldNumber:9 protoDataType:0 convertedType:0];
  v44 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nowPlayingBundleScore" dataType:1 requestOnly:0 fieldNumber:10 protoDataType:0 convertedType:0];
  v43 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isNowPlayingLastBundle" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:12 convertedType:0];
  v42 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nowPlayingUsage1Day" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:2 convertedType:0];
  v41 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nowPlayingUsage7Days" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:2 convertedType:0];
  v40 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"nowPlayingUsage14Days" dataType:0 requestOnly:0 fieldNumber:14 protoDataType:2 convertedType:0];
  v39 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRawLastNowPlayingCoreDuet" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:12 convertedType:0];
  v38 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRawMediaCategoryAudiobookSignal" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:12 convertedType:0];
  v37 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRawMediaCategoryMusicSignal" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:12 convertedType:0];
  v36 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRawMediaCategoryPodcastSignal" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:12 convertedType:0];
  v35 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRawMediaCategoryRadioSignal" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:12 convertedType:0];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRawMediaCategoryVideoSignal" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:12 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawMediaTypeUsageSignalBook" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:2 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawMediaTypeUsageSignalMusic" dataType:0 requestOnly:0 fieldNumber:22 protoDataType:2 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawMediaTypeUsageSignalPodcast" dataType:0 requestOnly:0 fieldNumber:23 protoDataType:2 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawMediaTypeUsageSignalVideo" dataType:0 requestOnly:0 fieldNumber:24 protoDataType:2 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawNowPlayingCountCoreDuet10Min" dataType:0 requestOnly:0 fieldNumber:25 protoDataType:2 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawNowPlayingCountCoreDuet1Day" dataType:0 requestOnly:0 fieldNumber:26 protoDataType:2 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawNowPlayingCountCoreDuet1Hr" dataType:0 requestOnly:0 fieldNumber:27 protoDataType:2 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawNowPlayingCountCoreDuet28Day" dataType:0 requestOnly:0 fieldNumber:28 protoDataType:2 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawNowPlayingCountCoreDuet2Min" dataType:0 requestOnly:0 fieldNumber:29 protoDataType:2 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawNowPlayingCountCoreDuet6Hr" dataType:0 requestOnly:0 fieldNumber:30 protoDataType:2 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawNowPlayingCountCoreDuet7Day" dataType:0 requestOnly:0 fieldNumber:31 protoDataType:2 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawNowPlayingRecencyCD" dataType:0 requestOnly:0 fieldNumber:32 protoDataType:2 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawEntitySearchRecency" dataType:0 requestOnly:0 fieldNumber:33 protoDataType:2 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"usageScoreBooks" dataType:1 requestOnly:0 fieldNumber:34 protoDataType:0 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"usageScoreMusic" dataType:1 requestOnly:0 fieldNumber:35 protoDataType:0 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"usageScorePodcasts" dataType:1 requestOnly:0 fieldNumber:36 protoDataType:0 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isAppFirstParty" dataType:0 requestOnly:0 fieldNumber:37 protoDataType:12 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRequestedApp" dataType:0 requestOnly:0 fieldNumber:38 protoDataType:12 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isNowPlayingBundlePSE1" dataType:0 requestOnly:0 fieldNumber:39 protoDataType:12 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isNowPlayingBundlePSE2" dataType:0 requestOnly:0 fieldNumber:40 protoDataType:12 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"vq21Score" dataType:1 requestOnly:0 fieldNumber:41 protoDataType:0 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isSupportedFlag" dataType:0 requestOnly:0 fieldNumber:42 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isUnicornFlag" dataType:0 requestOnly:0 fieldNumber:43 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isSupportedUnicornMatchFlag" dataType:0 requestOnly:0 fieldNumber:44 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isDisambiguationSelectedApp" dataType:0 requestOnly:0 fieldNumber:45 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isModelPredictedApp" dataType:0 requestOnly:0 fieldNumber:46 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"usageScoreRadio" dataType:1 requestOnly:0 fieldNumber:47 protoDataType:0 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"usageScoreMusicWithoutRadio" dataType:1 requestOnly:0 fieldNumber:48 protoDataType:0 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawMediaTypeUsageSignalRadio" dataType:0 requestOnly:0 fieldNumber:49 protoDataType:2 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawMediaTypeUsageSignalMusicWithoutRadio" dataType:0 requestOnly:0 fieldNumber:50 protoDataType:2 convertedType:0];
  v54[0] = v52;
  v54[1] = v53;
  v54[2] = v51;
  v54[3] = v50;
  v54[4] = v49;
  v54[5] = v48;
  v54[6] = v47;
  v54[7] = v46;
  v54[8] = v45;
  v54[9] = v44;
  v54[10] = v43;
  v54[11] = v42;
  v54[12] = v41;
  v54[13] = v40;
  v54[14] = v39;
  v54[15] = v38;
  v54[16] = v37;
  v54[17] = v36;
  v54[18] = v35;
  v54[19] = v34;
  v54[20] = v33;
  v54[21] = v32;
  v54[22] = v31;
  v54[23] = v30;
  v54[24] = v29;
  v54[25] = v28;
  v54[26] = v27;
  v54[27] = v26;
  v54[28] = v25;
  v54[29] = v24;
  v54[30] = v23;
  v54[31] = v22;
  v54[32] = v21;
  v54[33] = v20;
  v54[34] = v19;
  v54[35] = v18;
  v54[36] = v17;
  v54[37] = v16;
  v54[38] = v15;
  v54[39] = v14;
  v54[40] = v2;
  v54[41] = v3;
  v54[42] = v4;
  v54[43] = v5;
  v54[44] = v6;
  v54[45] = v7;
  v54[46] = v8;
  v54[47] = v9;
  v54[48] = v13;
  v54[49] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:50];

  return v12;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMSiriMusicInferenceTrainingDependentSignals alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[22] = 0;
    }
  }

  return v4;
}

@end