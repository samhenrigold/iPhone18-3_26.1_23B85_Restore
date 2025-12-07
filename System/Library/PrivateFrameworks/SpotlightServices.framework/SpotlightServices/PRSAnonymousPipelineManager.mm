@interface PRSAnonymousPipelineManager
+ (BOOL)_dataCollectionAllowedForBundle:(id)bundle;
+ (id)allowedBundles;
+ (id)candidateLogsBasePath;
+ (id)candidateLogsURLForBundle:(id)bundle;
+ (id)dateFormatter;
+ (id)dateFromFileURL:(id)l;
+ (id)logURLForCurrentTimeAndBundle:(id)bundle forEngagement:(BOOL)engagement;
+ (id)sharedManager;
+ (id)submittedLogsURL;
+ (id)submittedLogsURLForUser:(id)user;
+ (id)submitttedSpotlightReportsError:(id *)error;
- (BOOL)_shouldDataCollectForEngagementReservoirSamplingForClientBundle:(id)bundle;
- (BOOL)_shouldDataCollectWithEngagedBundle:(id)bundle withQueryId:(id)id forClientBundle:(id)clientBundle;
- (BOOL)dateIsExpired:(id)expired;
- (PRSAnonymousPipelineManager)init;
- (id)_abandonedItemsFromItems:(id)items withIndexOfEngagedItem:(unint64_t)item;
- (id)_relativePositionForItem:(id)item inItems:(id)items withIndexOfEngagedItem:(int64_t)engagedItem forClientBundle:(id)bundle;
- (id)retrieveFeedbackURLToSendInDirectory:(id)directory;
- (void)_addQueryInfoToJSONWriter:(json_writer *)writer withQuery:(id)query cepData:(id)data forClient:(id)client debugInfoAllowed:(BOOL)allowed keyboardPrimaryLanguage:(id)language;
- (void)_addRelativePositionToFeatureDict:(id)dict relativePosition:(id)position forItem:(id)item debugInfoEnabled:(BOOL)enabled;
- (void)_extractTrainingSamplesForQuery:(id)query withIndexOfEngagedItem:(unint64_t)item withItems:(id)items withRanker:(id)ranker withCEPData:(id)data forClientBundle:(id)bundle debugInfoEnabled:(BOOL)enabled keyboardPrimaryLanguage:(id)self0;
- (void)_increaseUserDefaultsEngagementCountForBundle:(id)bundle;
- (void)_increaseUserDefaultsEngagementCountForDateWithClientBundle:(id)bundle;
- (void)_updateUserDefaultsWithEngagedBundle:(id)bundle andQueryID:(id)d forClientBundle:(id)clientBundle;
- (void)_writeResult:(json_writer *)result item:(id)item;
- (void)cleanUp;
- (void)deleteCandidateLogs;
- (void)deleteExpiredSubmittedLogs;
- (void)extractTrainingDataWithItemAtIndex:(unint64_t)index withItems:(id)items withRanker:(id)ranker forQuery:(id)query dataCollectAllowed:(BOOL)allowed queryID:(id)d withCEPData:(id)data forClientBundle:(id)self0 debugInfoEnabled:(BOOL)self1 keyboardPrimaryLanguage:(id)self2 clientID:(id)self3;
- (void)queryWillFinishWithItems:(id)items forClient:(id)client forQuery:(id)query anonymousDataCollectionAllowed:(BOOL)allowed;
- (void)registerXPCActivity;
- (void)sendMLFeedbackActivity:(id)activity clientID:(id)d;
- (void)userEngagedItemWithIdentifier:(id)identifier forBundle:(id)bundle forQuery:(id)query;
@end

@implementation PRSAnonymousPipelineManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[PRSAnonymousPipelineManager sharedManager];
  }

  v3 = sharedAnonManager;

  return v3;
}

void __44__PRSAnonymousPipelineManager_sharedManager__block_invoke()
{
  v8[65] = *MEMORY[0x1E69E9840];
  v0 = sNSNotFound;
  sNSNotFound = &unk_1F55B3BA0;

  v1 = objc_opt_new();
  v2 = sharedAnonManager;
  sharedAnonManager = v1;

  v8[0] = @"kMDItemSpecialCondition1";
  v8[1] = @"kMDItemSpecialCondition2";
  v8[2] = @"kMDItemSpecialCondition3";
  v8[3] = @"kMDItemSpecialCondition4";
  v8[4] = @"kMDItemSpecialCondition5";
  v8[5] = @"ItemIsFlagged";
  v8[6] = @"PortraitImportantPeople";
  v8[7] = @"PhoneFavoritesInReceivers";
  v8[8] = @"PhoneFavoritesInSender";
  v8[9] = @"VIPInEmails";
  v8[10] = @"receiver_is_vip2";
  v8[11] = @"sender_is_vip2";
  v8[12] = @"kMDItemNamedLocationExactWord";
  v8[13] = @"kMDItemNamedLocationExactPrefix";
  v8[14] = @"kMDItemNamedLocationExact";
  v8[15] = @"kMDItemArtistPrefixTokenized";
  v8[16] = @"kMDItemArtistPrefixWord";
  v8[17] = @"kMDItemArtistExactWord";
  v8[18] = @"kMDItemArtistExactPrefix";
  v8[19] = @"kMDItemAuthorsPrefixTokenized";
  v8[20] = @"kMDItemRecipientsPrefixTokenized";
  v8[21] = @"kMDItemAuthorsPrefixWord";
  v8[22] = @"kMDItemRecipientsPrefixWord";
  v8[23] = @"kMDItemAuthorsExactPrefix";
  v8[24] = @"kMDItemRecipientsExactPrefix";
  v8[25] = @"kMDItemAuthorsExact";
  v8[26] = @"kMDItemRecipientsExact";
  v8[27] = @"kMDItemDisplayNamePrefixWord";
  v8[28] = @"kMDItemSubjectPrefixWord";
  v8[29] = @"kMDItemTitlePrefixWord";
  v8[30] = @"kMDItemRankingTagMatch";
  v8[31] = @"kMDItemUserIsSender";
  v8[32] = @"kMDItemContentCreationRecent";
  v8[33] = @"kMDItemEscapedWord";
  v8[34] = @"kMDItemCreationDateThisYear";
  v8[35] = @"kMDItemLastUsedDateThisYear";
  v8[36] = @"kMDItemContentCreationThisMonth";
  v8[37] = @"kMDItemLastUsedDateThisMonth";
  v8[38] = @"kMDItemContentCreationThisWeek";
  v8[39] = @"kMDItemLastUsedDateThisWeek";
  v8[40] = @"kMDItemEventTodayToNextYear";
  v8[41] = @"kMDItemEventLastMonthToToday";
  v8[42] = @"kMDItemEventTodayToNextMonth";
  v8[43] = @"kMDItemEventTodayToNextWeek";
  v8[44] = @"kMDItemEventTodayToLastWeek";
  v8[45] = @"kMDItemEventYesterdayToToday";
  v8[46] = @"kMDItemEventToday";
  v8[47] = @"kMDItemTextContentTokenizedMatch";
  v8[48] = @"kMDItemTextContentMatch";
  v8[49] = @"kMDItemAuthorsOrRecipientsTokenizedPrefixMatch";
  v8[50] = @"kMDItemDescriptionTokenizedPrefixMatch";
  v8[51] = @"kMDItemAlbumTokenizedPrefixMatch";
  v8[52] = @"kMDItemAuthorsOrRecipientsNonTokenizedPrefixMatch";
  v8[53] = @"kMDItemDescriptionPrefixWordMatch";
  v8[54] = @"kMDItemComposerPrefixWordMatch";
  v8[55] = @"kMDItemAlbumPrefixWordMatch";
  v8[56] = @"kMDItemComposerNonTokenizedPrefixMatch";
  v8[57] = @"kMDItemComposerNonTokenizedWordMatch";
  v8[58] = @"kMDItemAppSBLaunchedDateLastWeek";
  v8[59] = @"kMDItemAuthorsOrRecipientsPrefixWordMatch";
  v8[60] = @"kMDItemDescriptionExactPrefixMatch";
  v8[61] = @"kMDItemAlbumNonTokenizedPrefixMatch";
  v8[62] = @"kMDItemAuthorsOrRecipientsExactMatch";
  v8[63] = @"kMDItemDescriptionNonTokenizedWordMatch";
  v8[64] = @"kMDItemAlbumNonTokenizedWordMatch";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:65];
  v4 = sScoreMappingLSB;
  sScoreMappingLSB = v3;

  v7[0] = @"kMDItemUserActivity";
  v7[1] = @"kMDItemAlternateNameNonTokenizedWordMatch";
  v7[2] = @"kMDItemAlternateNamePrefixWordMatch";
  v7[3] = @"kMDItemAlternateNameExactMatch";
  v7[4] = @"kMDItemShortcutRecent";
  v7[5] = @"kMDItemDueDateInLastOneToNextTwentyFourHours";
  v7[6] = @"kMDItemDueDateInLastOneToNextOneHour";
  v7[7] = @"kMDItemDisplayNameCorrections";
  v7[8] = @"kMDItemDisplayNameOrSubjectOrTitleTokenizedPrefixMatch";
  v7[9] = @"kMDItemContentCreationDateToday";
  v7[10] = @"kMDItemBoostedVIPFavorites";
  v7[11] = @"kMDItemBoostedVIPFavoritesRecent";
  v7[12] = @"kMDItemLastSpaceAndTotalMatchAndDisplayNameOrSubjectOrTitleWordMatch";
  v7[13] = @"kMDItemDisplayNameOrSubjectOrTitleNonTokenizedWordMatch";
  v7[14] = @"kMDItemDisplayNameOrSubjectOrTitleNonTokenizedPrefixMatch";
  v7[15] = @"kMDItemDisplayNameOrSubjectOrTitleExactMatch";
  v7[16] = @"PRSRankingRecency365Days";
  v7[17] = @"PRSRankingRecency270Days";
  v7[18] = @"PRSRankingRecency180Days";
  v7[19] = @"PRSRankingRecency90Days";
  v7[20] = @"PRSRankingRecency30Days";
  v7[21] = @"PRSRankingRecency15Days";
  v7[22] = @"PRSRankingRecency7Days";
  v7[23] = @"PRSRankingRecency1Days";
  v7[24] = @"kMDItemPolicyPrefixMatch_0_3";
  v7[25] = @"kMDItemPolicyPrefixMatch_1_3";
  v7[26] = @"kMDItemPolicyPrefixMatch_2_3";
  v7[27] = @"kMDItemPolicyExactWordMatch_0_3";
  v7[28] = @"kMDItemPolicyExactWordMatch_1_3";
  v7[29] = @"kMDItemPolicyExactWordMatch_2_3";
  v7[30] = @"PRSRankingMostlyExactMultiFieldsDomainTCMatch";
  v7[31] = @"PRSRankingTCNearMatch";
  v7[32] = @"PRSRankingOneTwoTermsMultiPhraseTCNearMatch";
  v7[33] = @"PRSRankingTCOrderedMatch";
  v7[34] = @"PRSRankingOneTwoTermsMultiPhraseTCOrderedMatch";
  v7[35] = @"PRSRankingTCOrderedPhraseMatch";
  v7[36] = @"PRSRankingOneTwoTermsMultiPhraseTCOrderedPhraseMatch";
  v7[37] = @"PRSRankingMostlyExactMultiFieldsTCMatch";
  v7[38] = @"PRSRankingMostlyExactMultiFieldsTCNearMatch";
  v7[39] = @"PRSRankingTCMostlyExactOrderedPhraseMatch";
  v7[40] = @"PRSRankingOneTermMultiPhraseTCMostlyExactOrderedPhraseMatch";
  v7[41] = @"PRSRankingTwoTermsMultiPhraseTCMostlyExactOrderedPhraseMatch";
  v7[42] = @"PRSRankingExactMultiFieldsTCNearMatch";
  v7[43] = @"PRSRankingTCExactNearMatch";
  v7[44] = @"PRSRankingOneTermMultiPhraseTCExactNearMatch";
  v7[45] = @"PRSRankingTwoTermsMultiPhraseTCExactNearMatch";
  v7[46] = @"PRSRankingTCExactOrderedMatch";
  v7[47] = @"PRSRankingOneTermMultiPhraseTCExactOrderedMatch";
  v7[48] = @"PRSRankingTwoTermsMultiPhraseTCExactOrderedMatch";
  v7[49] = @"PRSRankingTCExactOrderedPhraseMatch";
  v7[50] = @"PRSRankingOneTermMultiPhraseTCExactOrderedPhraseMatch";
  v7[51] = @"PRSRankingTwoTermsMultiPhraseTCExactOrderedPhraseMatch";
  v7[52] = @"PRSPolicyFieldsPrefixMatch";
  v7[53] = @"PRSPolicyFieldsPhraseMatchBit";
  v7[54] = @"PRSPolicyFieldsMostlyExactPhraseMatchBit";
  v7[55] = @"exact_policy_flag_bit";
  v7[56] = @"PRSPolicyFieldsExactPhraseMatchBit";
  v7[57] = @"kMDItemShortcutWithinBagParamValue";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:58];
  v6 = sScoreMappingMSB;
  sScoreMappingMSB = v5;
}

+ (id)logURLForCurrentTimeAndBundle:(id)bundle forEngagement:(BOOL)engagement
{
  bundleCopy = bundle;
  v5 = [PRSAnonymousPipelineManager candidateLogsURLForBundle:bundleCopy];
  v6 = [(__CFString *)bundleCopy length];
  v7 = @"searchd";
  if (v6)
  {
    v7 = bundleCopy;
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = v7;
  v10 = +[PRSAnonymousPipelineManager dateFormatter];
  date = [MEMORY[0x1E695DF00] date];
  v12 = [v10 stringFromDate:date];
  v13 = [v8 stringWithFormat:@"%@-%@", v9, v12];

  v14 = [v5 URLByAppendingPathComponent:v13];
  v15 = [v14 URLByAppendingPathExtension:@"json"];

  return v15;
}

+ (id)submittedLogsURLForUser:(id)user
{
  v3 = NSHomeDirectoryForUser(user);
  v4 = [v3 stringByAppendingString:@"/Library/Spotlight/Diagnostics/SubmittedReports"];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PRSAnonymousPipelineManager_submittedLogsURLForUser___block_invoke;
  block[3] = &unk_1E8595778;
  v10 = v4;
  v5 = submittedLogsURLForUser__onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&submittedLogsURLForUser__onceToken, block);
  }

  v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6 isDirectory:1 relativeToURL:0];

  return v7;
}

void __55__PRSAnonymousPipelineManager_submittedLogsURLForUser___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  if (([v2 fileExistsAtPath:*(a1 + 32)] & 1) == 0)
  {
    [v2 createDirectoryAtPath:*(a1 + 32) withIntermediateDirectories:1 attributes:0 error:0];
  }
}

+ (id)submittedLogsURL
{
  v2 = NSUserName();
  v3 = [PRSAnonymousPipelineManager submittedLogsURLForUser:v2];

  return v3;
}

+ (id)candidateLogsBasePath
{
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingString:@"/Library/Spotlight/Diagnostics/CandidateReports"];

  return v3;
}

+ (id)candidateLogsURLForBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = +[PRSAnonymousPipelineManager candidateLogsBasePath];
  if ([(__CFString *)bundleCopy length])
  {
    v5 = bundleCopy;
  }

  else
  {
    v5 = @"com.apple.searchd";
  }

  v6 = [v4 stringByAppendingPathComponent:v5];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (([defaultManager fileExistsAtPath:v6] & 1) == 0)
  {
    [defaultManager createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:0];
  }

  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v6 isDirectory:1 relativeToURL:0];

  return v8;
}

+ (id)dateFormatter
{
  v2 = objc_opt_new();
  [v2 setDateFormat:@"yyyy-MM-dd"];
  v3 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
  [v2 setTimeZone:v3];

  return v2;
}

+ (id)dateFromFileURL:(id)l
{
  lastPathComponent = [l lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

  [stringByDeletingPathExtension rangeOfString:@"com.apple.searchd.suggestions"];
  if (v5 || ([stringByDeletingPathExtension rangeOfString:@"com.apple.searchd"], v5))
  {
    v6 = v5 + 1;
    if (v5 + 1 < [stringByDeletingPathExtension length])
    {
      v7 = [stringByDeletingPathExtension substringFromIndex:v6];

      if (v7)
      {
LABEL_9:
        stringByDeletingPathExtension = v7;
        v10 = +[PRSAnonymousPipelineManager dateFormatter];
        v7 = [v10 dateFromString:v7];

        goto LABEL_11;
      }

      stringByDeletingPathExtension = 0;
    }
  }

  [stringByDeletingPathExtension rangeOfString:@"com.apple.mobilemail"];
  if (v8 && (v9 = v8 + 1, v8 + 1 < [stringByDeletingPathExtension length]))
  {
    v7 = [stringByDeletingPathExtension substringFromIndex:v9];

    if (v7)
    {
      goto LABEL_9;
    }

    stringByDeletingPathExtension = 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_11:

  return v7;
}

+ (id)allowedBundles
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"com.apple.mobilemail";
  v4[1] = @"com.apple.searchd";
  v4[2] = @"com.apple.searchd.suggestions";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];

  return v2;
}

+ (BOOL)_dataCollectionAllowedForBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = +[PRSAnonymousPipelineManager allowedBundles];
  v5 = [v4 containsObject:bundleCopy];

  return v5;
}

- (PRSAnonymousPipelineManager)init
{
  v7.receiver = self;
  v7.super_class = PRSAnonymousPipelineManager;
  v2 = [(PRSAnonymousPipelineManager *)&v7 init];
  if (v2)
  {
    [(PRSAnonymousPipelineManager *)v2 setSubmissionEnabled:DiagnosticLogSubmissionEnabled()];
    v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.searchd"];
    [(PRSAnonymousPipelineManager *)v2 setUserDefaults:v3];

    [(PRSAnonymousPipelineManager *)v2 setIsInternalDevice:os_variant_has_internal_diagnostics()];
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v5 = dispatch_queue_create("com.apple.spotlight.dataCollection", v4);
    [(PRSAnonymousPipelineManager *)v2 setQueue:v5];

    [(PRSAnonymousPipelineManager *)v2 registerXPCActivity];
  }

  return v2;
}

- (void)sendMLFeedbackActivity:(id)activity clientID:(id)d
{
  activityCopy = activity;
  dCopy = d;
  if ([(PRSAnonymousPipelineManager *)self submissionEnabled])
  {
    if (activityCopy)
    {
      dispatch_group_enter(activityCopy);
    }

    queue = [(PRSAnonymousPipelineManager *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__PRSAnonymousPipelineManager_sendMLFeedbackActivity_clientID___block_invoke;
    block[3] = &unk_1E85957A0;
    block[4] = self;
    v10 = dCopy;
    v11 = activityCopy;
    dispatch_async(queue, block);
  }
}

void __63__PRSAnonymousPipelineManager_sendMLFeedbackActivity_clientID___block_invoke(uint64_t a1)
{
  v48[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = MEMORY[0x1E695DFF8];
  v4 = +[PRSAnonymousPipelineManager candidateLogsBasePath];
  v5 = [v3 fileURLWithPath:v4];
  v48[0] = *MEMORY[0x1E695EBE8];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
  v44 = 0;
  v34 = v2;
  v7 = [v2 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:v6 options:0 error:&v44];
  v8 = v44;

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v41;
    v13 = 0x1E695D000uLL;
    v36 = v9;
    v37 = a1;
    v35 = *v41;
    do
    {
      v14 = 0;
      v15 = v8;
      v38 = v11;
      do
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v16 = [*(a1 + 32) retrieveFeedbackURLToSendInDirectory:*(*(&v40 + 1) + 8 * v14)];
        if (v16)
        {
          v17 = objc_alloc(*(v13 + 3824));
          v39 = v15;
          v18 = [v17 initWithContentsOfURL:v16 options:8 error:&v39];
          v8 = v39;

          if (v8)
          {
            v20 = PRSLogCategoryAnonymousPipeline(v19);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v46 = v8;
              _os_log_error_impl(&dword_1D9F69000, v20, OS_LOG_TYPE_ERROR, "Error reading file for submission %@", buf, 0xCu);
            }
          }

          else
          {
            v20 = [objc_alloc(MEMORY[0x1E69CA008]) initWithType:3 data:v18];
            v21 = [*(a1 + 32) delegate];
            [v21 sendCustomFeedback:v20 clientID:*(a1 + 40)];

            v23 = PRSLogCategoryAnonymousPipeline(v22);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = [v18 length];
              *buf = 134217984;
              v46 = v24;
              _os_log_impl(&dword_1D9F69000, v23, OS_LOG_TYPE_DEFAULT, "Sending custom feedback len %lu", buf, 0xCu);
            }

            v25 = [v16 lastPathComponent];
            v26 = [v16 path];
            v27 = [v26 UTF8String];

            v28 = +[PRSAnonymousPipelineManager submittedLogsURL];
            v29 = [v28 URLByAppendingPathComponent:v25];
            v30 = [v29 path];
            v31 = [v30 UTF8String];

            if (v27 && v31)
            {
              rename(v27, v31, v32);
            }

            v9 = v36;
            a1 = v37;
            v11 = v38;
            v8 = 0;
            v12 = v35;
            v13 = 0x1E695D000;
          }

          v15 = v8;
        }

        else
        {
          v8 = v15;
        }

        ++v14;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v11);
  }

  [*(a1 + 32) cleanUp];
  v33 = *(a1 + 48);
  if (v33)
  {
    dispatch_group_leave(v33);
  }
}

- (void)registerXPCActivity
{
  v9 = *MEMORY[0x1E69E9840];
  inited = objc_initWeak(&location, self);
  v3 = PRSLogCategoryAnonymousPipeline(inited);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "com.apple.searchd.sendmlfeedback";
    _os_log_impl(&dword_1D9F69000, v3, OS_LOG_TYPE_DEFAULT, "Registering XPC activity:%s", buf, 0xCu);
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__PRSAnonymousPipelineManager_registerXPCActivity__block_invoke;
  v4[3] = &unk_1E8595EA8;
  objc_copyWeak(&v5, &location);
  xpc_activity_register("com.apple.searchd.sendmlfeedback", *MEMORY[0x1E69E9C50], v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __50__PRSAnonymousPipelineManager_registerXPCActivity__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = WeakRetained;
    if (WeakRetained)
    {
      v8 = PRSLogCategoryAnonymousPipeline(WeakRetained);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v16 = "com.apple.searchd.sendmlfeedback";
        _os_log_impl(&dword_1D9F69000, v8, OS_LOG_TYPE_INFO, "Performing XPC activity:%s", buf, 0xCu);
      }

      xpc_activity_set_state(v3, 4);
      v9 = dispatch_group_create();
      [v7 sendMLFeedbackActivity:v9 clientID:0];
      v10 = dispatch_get_global_queue(9, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __50__PRSAnonymousPipelineManager_registerXPCActivity__block_invoke_187;
      block[3] = &unk_1E8595778;
      v14 = v3;
      dispatch_group_notify(v9, v10, block);
    }

    else
    {
      xpc_activity_set_state(v3, 5);
    }

LABEL_12:

    goto LABEL_13;
  }

  v11 = state;
  if (xpc_activity_should_defer(v3) && xpc_activity_should_defer(v3))
  {
    v12 = xpc_activity_set_state(v3, 3);
    if (v12)
    {
      v7 = PRSLogCategoryAnonymousPipeline(v12);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v16 = "com.apple.searchd.sendmlfeedback";
        v17 = 2048;
        v18 = v11;
        _os_log_impl(&dword_1D9F69000, v7, OS_LOG_TYPE_INFO, "Deferring XPC activity:%s, state:%ld", buf, 0x16u);
      }

      goto LABEL_12;
    }
  }

LABEL_13:
  objc_autoreleasePoolPop(v4);
}

void __50__PRSAnonymousPipelineManager_registerXPCActivity__block_invoke_187(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = xpc_activity_set_state(*(a1 + 32), 5);
  v2 = PRSLogCategoryAnonymousPipeline(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "com.apple.searchd.sendmlfeedback";
    _os_log_impl(&dword_1D9F69000, v2, OS_LOG_TYPE_INFO, "Marked XPC activity:%s as done", &v3, 0xCu);
  }
}

- (id)_abandonedItemsFromItems:(id)items withIndexOfEngagedItem:(unint64_t)item
{
  v37 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v6 = objc_opt_new();
  if (item)
  {
    v7 = item - 48;
    if (item > 0x30)
    {
      if (item == 49)
      {
        goto LABEL_29;
      }

      v25 = [itemsCopy objectAtIndexedSubscript:0];
      [v6 addObject:v25];

      v8 = itemsCopy;
      v9 = v7;
      itemCopy = 48;
    }

    else
    {
      v8 = itemsCopy;
      v9 = 0;
      itemCopy = item;
    }

    goto LABEL_24;
  }

  if (objc_msgSend_count(itemsCopy) < 0x33)
  {
    if (objc_msgSend_count(itemsCopy) < 2)
    {
      goto LABEL_29;
    }

    itemCopy = objc_msgSend_count(itemsCopy) - 1;
    v8 = itemsCopy;
    v9 = 1;
LABEL_24:
    dataCollectionBundle = [v8 subarrayWithRange:{v9, itemCopy}];
    [v6 addObjectsFromArray:dataCollectionBundle];
    goto LABEL_28;
  }

  v11 = [itemsCopy objectAtIndexedSubscript:0];
  dataCollectionBundle = [v11 dataCollectionBundle];

  v13 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v31 = itemsCopy;
  v14 = itemsCopy;
  v15 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v15)
  {
    goto LABEL_18;
  }

  v16 = v15;
  v17 = *v33;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v33 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v32 + 1) + 8 * i);
      dataCollectionBundle2 = [v19 dataCollectionBundle];
      if (![dataCollectionBundle2 isEqualToString:dataCollectionBundle])
      {

LABEL_14:
        v23 = objc_msgSend_count(v6);
        v22 = v6;
        if (v23 > 0x31)
        {
          continue;
        }

        goto LABEL_15;
      }

      v21 = objc_msgSend_count(v13);

      v22 = v13;
      if (v21 >= 0x32)
      {
        goto LABEL_14;
      }

LABEL_15:
      [v22 addObject:v19];
    }

    v16 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
  }

  while (v16);
LABEL_18:

  v24 = objc_msgSend_count(v6);
  if ((objc_msgSend_count(v13) + v24) > 0x32)
  {
    v26 = 50 - objc_msgSend_count(v13);
    v27 = objc_msgSend_count(v6) - v26;
    v28 = [v13 subarrayWithRange:{0, v27}];
    [v6 replaceObjectsInRange:v26 withObjectsFromArray:{v27, v28}];

    itemsCopy = v31;
    if (objc_msgSend_count(v13) > v27)
    {
      v29 = [v13 subarrayWithRange:{v27, objc_msgSend_count(v13) - v27}];
      [v6 addObjectsFromArray:v29];
    }
  }

  else
  {
    [v6 addObjectsFromArray:v13];
    itemsCopy = v31;
  }

LABEL_28:
LABEL_29:

  return v6;
}

- (id)_relativePositionForItem:(id)item inItems:(id)items withIndexOfEngagedItem:(int64_t)engagedItem forClientBundle:(id)bundle
{
  itemsCopy = items;
  bundleCopy = bundle;
  v11 = [itemsCopy indexOfObject:item];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = sNSNotFound;
  }

  else
  {
    v13 = v11;
    if ([bundleCopy isEqualToString:@"com.apple.searchd.suggestions"])
    {
      v14 = 0;
    }

    else
    {
      if (v13 >= engagedItem)
      {
        engagedItemCopy = engagedItem;
      }

      else
      {
        engagedItemCopy = v13;
      }

      if (v13 <= engagedItem)
      {
        engagedItemCopy2 = engagedItem;
      }

      else
      {
        engagedItemCopy2 = v13;
      }

      if (engagedItemCopy >= engagedItemCopy2)
      {
        v17 = 0;
      }

      else
      {
        v17 = 0;
        do
        {
          v18 = [itemsCopy objectAtIndex:engagedItemCopy];
          v17 += ([v18 bundleIDType] >> 19) & 1;

          ++engagedItemCopy;
        }

        while (engagedItemCopy2 != engagedItemCopy);
      }

      if (v13 < engagedItem)
      {
        v14 = v17;
      }

      else
      {
        v14 = -v17;
      }
    }

    v12 = [MEMORY[0x1E696AD98] numberWithInteger:v13 - engagedItem + v14];
  }

  v19 = v12;

  return v19;
}

- (void)_addRelativePositionToFeatureDict:(id)dict relativePosition:(id)position forItem:(id)item debugInfoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  dictCopy = dict;
  itemCopy = item;
  positionCopy = position;
  relativePositionKey = [objc_opt_class() relativePositionKey];
  [dictCopy setObject:positionCopy forKeyedSubscript:relativePositionKey];

  if (enabledCopy)
  {
    identifier = [itemCopy identifier];
    [dictCopy setObject:identifier forKeyedSubscript:@"identifier"];
  }
}

- (void)_addQueryInfoToJSONWriter:(json_writer *)writer withQuery:(id)query cepData:(id)data forClient:(id)client debugInfoAllowed:(BOOL)allowed keyboardPrimaryLanguage:(id)language
{
  allowedCopy = allowed;
  queryCopy = query;
  v12 = PRSLogCategoryAnonymousPipeline(queryCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&dword_1D9F69000, v12, OS_LOG_TYPE_DEFAULT, "[Logging] Writing query info to json writer.", v27, 2u);
  }

  if (allowedCopy)
  {
    json_writer_add_key(writer, "query", 5uLL, 1);
    json_writer_add_string(writer, [queryCopy UTF8String], 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  if (!currentLocale)
  {
    currentLocale = [MEMORY[0x1E695DF58] systemLocale];
  }

  countryCode = [currentLocale countryCode];
  languageCode = [currentLocale languageCode];
  json_writer_add_key(writer, "country_code", 0xCuLL, 1);
  uTF8String = [countryCode UTF8String];
  if (uTF8String)
  {
    v17 = uTF8String;
  }

  else
  {
    v17 = "";
  }

  json_writer_add_string(writer, v17, 0xFFFFFFFFFFFFFFFFLL, 0);
  json_writer_add_key(writer, "language_code", 0xDuLL, 1);
  uTF8String2 = [languageCode UTF8String];
  if (uTF8String2)
  {
    v19 = uTF8String2;
  }

  else
  {
    v19 = "";
  }

  json_writer_add_string(writer, v19, 0xFFFFFFFFFFFFFFFFLL, 0);
  json_writer_add_key(writer, "is_internal", 0xBuLL, 1);
  if ([(PRSAnonymousPipelineManager *)self isInternalDevice])
  {
    v20 = "1";
  }

  else
  {
    v20 = "0";
  }

  json_writer_add_raw_value(writer, v20, 1uLL);
  v21 = MGCopyAnswer();
  v22 = MGCopyAnswer();
  json_writer_add_key(writer, "device_type", 0xBuLL, 1);
  uTF8String3 = [v21 UTF8String];
  if (uTF8String3)
  {
    v24 = uTF8String3;
  }

  else
  {
    v24 = "";
  }

  json_writer_add_string(writer, v24, 0xFFFFFFFFFFFFFFFFLL, 0);
  json_writer_add_key(writer, "device_build_number", 0x13uLL, 1);
  uTF8String4 = [v22 UTF8String];
  if (uTF8String4)
  {
    v26 = uTF8String4;
  }

  else
  {
    v26 = "";
  }

  json_writer_add_string(writer, v26, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (void)_increaseUserDefaultsEngagementCountForBundle:(id)bundle
{
  bundleCopy = bundle;
  userDefaults = [(PRSAnonymousPipelineManager *)self userDefaults];
  v5 = [PRSAnonymousPipelineManager engagementCountKeyForBundle:bundleCopy];

  v6 = [userDefaults objectForKey:v5];
  v7 = v6;
  v8 = &unk_1F55B3BB8;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  integerValue = [v9 integerValue];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue + 1];
  [userDefaults setObject:v11 forKey:v5];
}

- (void)_updateUserDefaultsWithEngagedBundle:(id)bundle andQueryID:(id)d forClientBundle:(id)clientBundle
{
  bundleCopy = bundle;
  dCopy = d;
  if ([clientBundle isEqualToString:@"com.apple.searchd"])
  {
    v8 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.searchd"];
    [v8 setObject:bundleCopy forKey:@"collectedBundleID"];
    if ([dCopy integerValue] != -1)
    {
      [v8 setObject:dCopy forKey:@"lastQueryID"];
    }
  }
}

- (void)_increaseUserDefaultsEngagementCountForDateWithClientBundle:(id)bundle
{
  v25 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  userDefaults = [(PRSAnonymousPipelineManager *)self userDefaults];
  v6 = [PRSAnonymousPipelineManager engagementCountForDateKeyForBundle:bundleCopy];
  v7 = [PRSAnonymousPipelineManager engagementDateKeyForBundle:bundleCopy];

  v8 = [userDefaults objectForKey:v6];
  v9 = [userDefaults objectForKey:v7];
  v10 = +[PRSAnonymousPipelineManager dateFormatter];
  date = [MEMORY[0x1E695DF00] date];
  v12 = [v10 stringFromDate:date];

  if (v9 && [v9 isEqualToString:v12])
  {
    v13 = [v8 integerValue] + 1;
  }

  else
  {
    v13 = 1;
  }

  [userDefaults setObject:v12 forKey:v7];
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:v13];
  [userDefaults setObject:v14 forKey:v6];

  v16 = PRSLogCategoryAnonymousPipeline(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = 134218754;
    integerValue = [v8 integerValue];
    v19 = 2112;
    v20 = v9;
    v21 = 2048;
    v22 = v13;
    v23 = 2112;
    v24 = v12;
    _os_log_debug_impl(&dword_1D9F69000, v16, OS_LOG_TYPE_DEBUG, "[Sampling] Previous count:%lu previous date:%@ new count:%lu new date:%@", &v17, 0x2Au);
  }
}

- (BOOL)_shouldDataCollectForEngagementReservoirSamplingForClientBundle:(id)bundle
{
  v22 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  if ([bundleCopy isEqualToString:@"com.apple.searchd"])
  {
    userDefaults = [(PRSAnonymousPipelineManager *)self userDefaults];
    v6 = [PRSAnonymousPipelineManager engagementCountForDateKeyForBundle:bundleCopy];
    v7 = [PRSAnonymousPipelineManager engagementDateKeyForBundle:bundleCopy];
    v8 = [userDefaults objectForKey:v6];
    v9 = [userDefaults objectForKey:v7];
    if ([v8 integerValue] < 1)
    {
      v12 = 0;
    }

    else
    {
      v10 = arc4random_uniform([v8 integerValue]);
      v11 = v10;
      v12 = v10 == 0;
      v13 = PRSLogCategoryAnonymousPipeline(v10);
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
      if (v11)
      {
        if (v14)
        {
          v16 = 134218498;
          integerValue = [v8 integerValue];
          v18 = 2048;
          v19 = v11;
          v20 = 2112;
          v21 = v9;
          _os_log_debug_impl(&dword_1D9F69000, v13, OS_LOG_TYPE_DEBUG, "[Sampling] Skipping this sample. Engagement count:%lu random num:%lu date:%@", &v16, 0x20u);
        }
      }

      else if (v14)
      {
        [(PRSAnonymousPipelineManager *)v8 _shouldDataCollectForEngagementReservoirSamplingForClientBundle:v9, v13];
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_shouldDataCollectWithEngagedBundle:(id)bundle withQueryId:(id)id forClientBundle:(id)clientBundle
{
  bundleCopy = bundle;
  idCopy = id;
  clientBundleCopy = clientBundle;
  if ([clientBundleCopy isEqualToString:@"com.apple.searchd"])
  {
    v10 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.searchd"];
    v11 = [PRSAnonymousPipelineManager engagementCountKeyForBundle:clientBundleCopy];
    v12 = [v10 objectForKey:v11];

    v13 = [v10 objectForKey:@"lastQueryID"];
    if ([idCopy integerValue] == -1 || (v14 = objc_msgSend(v13, "unsignedLongLongValue"), v14 != objc_msgSend(idCopy, "unsignedLongLongValue")))
    {
      v25 = v12;
      integerValue = [v12 integerValue];
      v17 = [v10 objectForKey:@"collectedBundleID"];
      v18 = +[PRSBagHandler sharedHandler];
      anonymousMetadataUndesiredBundleIDs = [v18 anonymousMetadataUndesiredBundleIDs];
      v20 = [anonymousMetadataUndesiredBundleIDs copy];

      v21 = [v20 containsObject:v17];
      v22 = [v20 containsObject:bundleCopy];
      v23 = v22;
      if (!v21 || !v22)
      {
        goto LABEL_12;
      }

      if (integerValue <= 2)
      {
        integerValue = 2;
      }

      if (arc4random() % integerValue)
      {
        v15 = 0;
      }

      else
      {
LABEL_12:
        v15 = (v17 == 0) | v21 | v23 ^ 1;
      }

      v12 = v25;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 1;
  }

  return v15 & 1;
}

- (void)extractTrainingDataWithItemAtIndex:(unint64_t)index withItems:(id)items withRanker:(id)ranker forQuery:(id)query dataCollectAllowed:(BOOL)allowed queryID:(id)d withCEPData:(id)data forClientBundle:(id)self0 debugInfoEnabled:(BOOL)self1 keyboardPrimaryLanguage:(id)self2 clientID:(id)self3
{
  itemsCopy = items;
  rankerCopy = ranker;
  queryCopy = query;
  dCopy = d;
  dataCopy = data;
  bundleCopy = bundle;
  languageCopy = language;
  iDCopy = iD;
  queue = [(PRSAnonymousPipelineManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __201__PRSAnonymousPipelineManager_extractTrainingDataWithItemAtIndex_withItems_withRanker_forQuery_dataCollectAllowed_queryID_withCEPData_forClientBundle_debugInfoEnabled_keyboardPrimaryLanguage_clientID___block_invoke;
  block[3] = &unk_1E8595ED0;
  block[4] = self;
  v37 = bundleCopy;
  allowedCopy = allowed;
  v38 = itemsCopy;
  v39 = queryCopy;
  v40 = rankerCopy;
  v41 = dataCopy;
  enabledCopy = enabled;
  v42 = languageCopy;
  v43 = dCopy;
  v44 = iDCopy;
  indexCopy = index;
  v35 = iDCopy;
  v26 = dCopy;
  v27 = languageCopy;
  v28 = dataCopy;
  v29 = rankerCopy;
  v30 = queryCopy;
  v31 = itemsCopy;
  v32 = bundleCopy;
  dispatch_async(queue, block);
}

void __201__PRSAnonymousPipelineManager_extractTrainingDataWithItemAtIndex_withItems_withRanker_forQuery_dataCollectAllowed_queryID_withCEPData_forClientBundle_debugInfoEnabled_keyboardPrimaryLanguage_clientID___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _increaseUserDefaultsEngagementCountForBundle:*(a1 + 40)];
  [*(a1 + 32) _increaseUserDefaultsEngagementCountForDateWithClientBundle:*(a1 + 40)];
  if (*(a1 + 112) == 1 && ([*(a1 + 40) isEqualToString:@"com.apple.searchd.suggestions"] & 1) == 0)
  {
    v2 = *(a1 + 104);
    v3 = objc_msgSend_count(*(a1 + 48));
    if (v2 >= v3)
    {
      v7 = PRSLogCategoryAnonymousPipeline(v3);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __201__PRSAnonymousPipelineManager_extractTrainingDataWithItemAtIndex_withItems_withRanker_forQuery_dataCollectAllowed_queryID_withCEPData_forClientBundle_debugInfoEnabled_keyboardPrimaryLanguage_clientID___block_invoke_cold_1((a1 + 104), v7, v9, v10, v11, v12, v13, v14);
      }
    }

    else
    {
      v4 = [*(a1 + 32) _shouldDataCollectForEngagementReservoirSamplingForClientBundle:*(a1 + 40)];
      if (!v4)
      {
        return;
      }

      v5 = PRSLogCategoryAnonymousPipeline(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_msgSend_count(*(a1 + 48));
        *buf = 134217984;
        v17 = v6;
        _os_log_impl(&dword_1D9F69000, v5, OS_LOG_TYPE_DEFAULT, "[Logging] Extracting dataCollection for %lu items", buf, 0xCu);
      }

      v7 = [*(a1 + 48) objectAtIndexedSubscript:*(a1 + 104)];
      v8 = [v7 dataCollectionBundle];
      LOBYTE(v15) = *(a1 + 113);
      [*(a1 + 32) _extractTrainingSamplesForQuery:*(a1 + 56) withIndexOfEngagedItem:*(a1 + 104) withItems:*(a1 + 48) withRanker:*(a1 + 64) withCEPData:*(a1 + 72) forClientBundle:*(a1 + 40) debugInfoEnabled:v15 keyboardPrimaryLanguage:*(a1 + 80)];
      [*(a1 + 32) _updateUserDefaultsWithEngagedBundle:v8 andQueryID:*(a1 + 88) forClientBundle:*(a1 + 40)];
      if ([*(a1 + 32) isInternalDevice])
      {
        [*(a1 + 32) sendMLFeedbackActivity:0 clientID:*(a1 + 96)];
      }
    }
  }
}

- (void)_writeResult:(json_writer *)result item:(id)item
{
  object = item;
  json_writer_add_key(result, "_identifier", 0xBuLL, 1);
  identifier = [object identifier];
  json_writer_add_string(result, [identifier UTF8String], 0xFFFFFFFFFFFFFFFFLL, 0);

  v6 = PRSModelManagerAssociatedObjectKeyForType(1);
  v7 = PRSModelManagerAssociatedObjectKeyForType(2);
  v8 = PRSModelManagerAssociatedObjectKeyForType(3);
  v9 = objc_getAssociatedObject(object, v6);
  v10 = objc_getAssociatedObject(object, v7);
  v11 = objc_getAssociatedObject(object, v8);
  json_writer_add_key(result, "_l2_score", 9uLL, 1);
  v66 = v11;
  [v11 doubleValue];
  json_writer_add_double(result, v12);
  json_writer_add_key(result, "_l2_inputs", 0xAuLL, 1);
  json_writer_begin_dictionary(result);
  if ([v10 unsignedIntegerValue])
  {
    v13 = 0;
    do
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%li", v13];
      uTF8String = [v14 UTF8String];

      v16 = strlen(uTF8String);
      json_writer_add_key(result, uTF8String, v16, 1);
      v17 = [v9 objectAtIndexedSubscript:v13];
      [v17 floatValue];
      json_writer_add_double(result, v18);

      ++v13;
    }

    while (v13 < [v10 unsignedIntegerValue]);
  }

  json_writer_end_dictionary(result);
  v19 = PRSModelManagerAssociatedObjectKeyForType(4);
  v20 = PRSModelManagerAssociatedObjectKeyForType(5);
  v21 = PRSModelManagerAssociatedObjectKeyForType(6);
  v22 = objc_getAssociatedObject(object, v19);
  v23 = objc_getAssociatedObject(object, v20);
  v24 = objc_getAssociatedObject(object, v21);
  json_writer_add_key(result, "_l2e_score", 0xAuLL, 1);
  v65 = v24;
  [v24 doubleValue];
  json_writer_add_double(result, v25);
  json_writer_add_key(result, "_l2e_inputs", 0xBuLL, 1);
  json_writer_begin_dictionary(result);
  if ([v23 unsignedIntegerValue])
  {
    v26 = 0;
    do
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%li", v26];
      uTF8String2 = [v27 UTF8String];

      v29 = strlen(uTF8String2);
      json_writer_add_key(result, uTF8String2, v29, 1);
      v30 = [v22 objectAtIndexedSubscript:v26];
      [v30 floatValue];
      json_writer_add_double(result, v31);

      ++v26;
    }

    while (v26 < [v23 unsignedIntegerValue]);
  }

  json_writer_end_dictionary(result);
  sectionBundleIdentifier = [object sectionBundleIdentifier];
  if ([sectionBundleIdentifier isEqualToString:@"com.apple.mobilemail"])
  {
    v62 = sectionBundleIdentifier;
    v63 = v10;
    v64 = v9;
    v33 = PRSModelManagerAssociatedObjectKeyForType(7);
    v34 = PRSModelManagerAssociatedObjectKeyForType(8);
    v35 = PRSModelManagerAssociatedObjectKeyForType(9);
    v36 = objc_getAssociatedObject(object, v33);
    v37 = objc_getAssociatedObject(object, v34);
    v38 = objc_getAssociatedObject(object, v35);
    json_writer_add_key(result, "_within_bundle_l2_score", 0x17uLL, 1);
    v59 = v38;
    [v38 doubleValue];
    json_writer_add_double(result, v39);
    json_writer_add_key(result, "_within_bundle_l2_inputs", 0x18uLL, 1);
    json_writer_begin_dictionary(result);
    if ([v37 unsignedIntegerValue])
    {
      v40 = 0;
      do
      {
        v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%li", v40];
        uTF8String3 = [v41 UTF8String];

        v43 = strlen(uTF8String3);
        json_writer_add_key(result, uTF8String3, v43, 1);
        v44 = [v36 objectAtIndexedSubscript:v40];
        [v44 floatValue];
        json_writer_add_double(result, v45);

        ++v40;
      }

      while (v40 < [v37 unsignedIntegerValue]);
    }

    v60 = v37;
    v61 = v36;
    json_writer_end_dictionary(result);
    v46 = PRSModelManagerAssociatedObjectKeyForType(10);
    v47 = PRSModelManagerAssociatedObjectKeyForType(11);
    v48 = PRSModelManagerAssociatedObjectKeyForType(12);
    v49 = objc_getAssociatedObject(object, v46);
    v50 = objc_getAssociatedObject(object, v47);
    v51 = objc_getAssociatedObject(object, v48);
    json_writer_add_key(result, "_within_bundle_l2e_score", 0x18uLL, 1);
    [v51 doubleValue];
    json_writer_add_double(result, v52);
    json_writer_add_key(result, "_within_bundle_l2e_inputs", 0x19uLL, 1);
    json_writer_begin_dictionary(result);
    if ([v50 unsignedIntegerValue])
    {
      v53 = 0;
      do
      {
        v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%li", v53];
        uTF8String4 = [v54 UTF8String];

        v56 = strlen(uTF8String4);
        json_writer_add_key(result, uTF8String4, v56, 1);
        v57 = [v49 objectAtIndexedSubscript:v53];
        [v57 floatValue];
        json_writer_add_double(result, v58);

        ++v53;
      }

      while (v53 < [v50 unsignedIntegerValue]);
    }

    json_writer_end_dictionary(result);

    v10 = v63;
    v9 = v64;
    sectionBundleIdentifier = v62;
  }
}

- (void)_extractTrainingSamplesForQuery:(id)query withIndexOfEngagedItem:(unint64_t)item withItems:(id)items withRanker:(id)ranker withCEPData:(id)data forClientBundle:(id)bundle debugInfoEnabled:(BOOL)enabled keyboardPrimaryLanguage:(id)self0
{
  queryCopy = query;
  itemsCopy = items;
  rankerCopy = ranker;
  dataCopy = data;
  bundleCopy = bundle;
  languageCopy = language;
  PRSRankingSDEnabledFlagState(languageCopy, v22);
  queue = [(PRSAnonymousPipelineManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __176__PRSAnonymousPipelineManager__extractTrainingSamplesForQuery_withIndexOfEngagedItem_withItems_withRanker_withCEPData_forClientBundle_debugInfoEnabled_keyboardPrimaryLanguage___block_invoke;
  block[3] = &unk_1E8595EF8;
  v31 = itemsCopy;
  selfCopy = self;
  v33 = bundleCopy;
  v34 = rankerCopy;
  v35 = queryCopy;
  v36 = dataCopy;
  enabledCopy = enabled;
  v37 = languageCopy;
  itemCopy = item;
  v24 = languageCopy;
  v25 = dataCopy;
  v26 = queryCopy;
  v27 = rankerCopy;
  v28 = bundleCopy;
  v29 = itemsCopy;
  dispatch_async(queue, block);
}

void __176__PRSAnonymousPipelineManager__extractTrainingSamplesForQuery_withIndexOfEngagedItem_withItems_withRanker_withCEPData_forClientBundle_debugInfoEnabled_keyboardPrimaryLanguage___block_invoke(char *a1, const char *a2)
{
  v74 = *MEMORY[0x1E69E9840];
  v3 = a1 + 88;
  v2 = *(a1 + 11);
  if (v2 == 0x7FFFFFFFFFFFFFFFLL || (v4 = a1, a1 = objc_msgSend_count(*(a1 + 4), a2), v2 >= a1))
  {
    v6 = PRSLogCategoryAnonymousPipeline(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __201__PRSAnonymousPipelineManager_extractTrainingDataWithItemAtIndex_withItems_withRanker_forQuery_dataCollectAllowed_queryID_withCEPData_forClientBundle_debugInfoEnabled_keyboardPrimaryLanguage_clientID___block_invoke_cold_1(v3, v6, v50, v51, v52, v53, v54, v55);
    }
  }

  else
  {
    v5 = [*(v4 + 5) _abandonedItemsFromItems:*(v4 + 4) withIndexOfEngagedItem:*(v4 + 11)];
    v6 = [v5 mutableCopy];

    if (objc_msgSend_count(v6) >= 0x10)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = objc_msgSend_count(v6);
        [v6 exchangeObjectAtIndex:v8 withObjectAtIndex:v8 + arc4random_uniform(v9 + v7)];
        ++v8;
        --v7;
      }

      while (v7 != -15);
    }

    v10 = objc_msgSend_count(v6);
    if (v10 >= 0xF)
    {
      v11 = 15;
    }

    else
    {
      v11 = v10;
    }

    v12 = [v6 subarrayWithRange:0, v11];
    v13 = objc_msgSend_count(v12);
    v14 = v13 + 1;
    v15 = 14 - v13;
    v16 = objc_msgSend_count(*(v4 + 4));
    if (v15 >= v16 - v14)
    {
      v17 = v16 - v14;
    }

    else
    {
      v17 = v15;
    }

    v18 = objc_opt_new();
    if (v17)
    {
      v19 = [*(v4 + 4) subarrayWithRange:{v14, v17}];
      [v18 addObjectsFromArray:v19];
    }

    v20 = [objc_opt_class() logURLForCurrentTimeAndBundle:*(v4 + 6) forEngagement:1];
    v21 = [v20 path];
    v22 = [v21 stringByAppendingString:@".tmp"];
    v23 = json_writer_create_with_path([v22 UTF8String], 0x10000);
    if (v23)
    {
      v24 = v23;
      v61 = v21;
      json_writer_begin_dictionary(v23);
      v25 = *(v4 + 7);
      if (v25)
      {
        [v25 serializeAnonymousQueryLogFeaturesToJSONWithWriter:v24];
      }

      v60 = v22;
      v62 = v20;
      [*(v4 + 5) _addQueryInfoToJSONWriter:v24 withQuery:*(v4 + 8) cepData:*(v4 + 9) forClient:*(v4 + 6) debugInfoAllowed:v4[96] keyboardPrimaryLanguage:*(v4 + 10)];
      v26 = [*(v4 + 4) objectAtIndexedSubscript:*(v4 + 11)];
      json_writer_add_key(v24, "ENGAGED_RESULT", 0xEuLL, 1);
      json_writer_begin_dictionary(v24);
      v27 = +[PRSL2FeatureVector allowedAttributeSetForAnonPipeline];
      v59 = v26;
      [v26 serializeAnonymousLogFeaturesToJSONWithWriter:v24 allowedAttributeSet:v27];

      json_writer_add_key(v24, "item_pos", 8uLL, 1);
      json_writer_add_uint64(v24, *(v4 + 11));
      if (v4[96] == 1)
      {
        json_writer_add_key(v24, "identifier", 0xAuLL, 1);
        json_writer_add_string(v24, [*(v4 + 8) UTF8String], 0xFFFFFFFFFFFFFFFFLL, 0);
      }

      json_writer_end_dictionary(v24);
      json_writer_add_key(v24, "ABANDONED_RESULTS", 0x11uLL, 1);
      json_writer_begin_array(v24);
      v28 = [*(v4 + 6) isEqualToString:@"com.apple.searchd.suggestions"];
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v63 = v12;
      v29 = v12;
      v30 = [v29 countByEnumeratingWithState:&v68 objects:v73 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v69;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v69 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v68 + 1) + 8 * i);
            v35 = v34;
            if ((v28 & 1) != 0 || ([v34 bundleIDType] & 0x80000) == 0)
            {
              json_writer_begin_dictionary(v24);
              v36 = +[PRSL2FeatureVector allowedAttributeSetForAnonPipeline];
              [v35 serializeAnonymousLogFeaturesToJSONWithWriter:v24 allowedAttributeSet:v36];

              json_writer_end_dictionary(v24);
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v68 objects:v73 count:16];
        }

        while (v31);
      }

      json_writer_end_array(v24);
      json_writer_add_key(v24, "OTHER_RESULTS", 0xDuLL, 1);
      json_writer_begin_array(v24);
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v37 = v18;
      v38 = [v37 countByEnumeratingWithState:&v64 objects:v72 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v65;
        do
        {
          for (j = 0; j != v39; ++j)
          {
            if (*v65 != v40)
            {
              objc_enumerationMutation(v37);
            }

            v42 = *(*(&v64 + 1) + 8 * j);
            v43 = v42;
            if ((v28 & 1) != 0 || ([v42 bundleIDType] & 0x80000) == 0)
            {
              json_writer_begin_dictionary(v24);
              v44 = +[PRSL2FeatureVector allowedAttributeSetForAnonPipeline];
              [v43 serializeAnonymousLogFeaturesToJSONWithWriter:v24 allowedAttributeSet:v44];

              json_writer_end_dictionary(v24);
            }
          }

          v39 = [v37 countByEnumeratingWithState:&v64 objects:v72 count:16];
        }

        while (v39);
      }

      json_writer_end_array(v24);
      json_writer_end_dictionary(v24);
      json_writer_flush(v24);
      err = json_writer_get_err(v24);
      json_writer_dispose(v24);
      v22 = v60;
      [v60 UTF8String];
      v46 = compress_file_in_place();
      if (err | v46)
      {
        v47 = v46;
        v48 = PRSLogCategoryAnonymousPipeline(v46);
        v20 = v62;
        v49 = v59;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          __176__PRSAnonymousPipelineManager__extractTrainingSamplesForQuery_withIndexOfEngagedItem_withItems_withRanker_withCEPData_forClientBundle_debugInfoEnabled_keyboardPrimaryLanguage___block_invoke_cold_1(err, v47, v48);
        }

        unlink([v60 UTF8String]);
        v12 = v63;
        v21 = v61;
      }

      else
      {
        v56 = [v60 UTF8String];
        v21 = v61;
        v57 = [v61 UTF8String];
        rename(v56, v57, v58);
        v12 = v63;
        v20 = v62;
        v49 = v59;
      }
    }
  }
}

- (BOOL)dateIsExpired:(id)expired
{
  v3 = MEMORY[0x1E695DF00];
  expiredCopy = expired;
  v5 = [v3 dateWithTimeIntervalSinceNow:-604800.0];
  v6 = [expiredCopy earlierDate:v5];

  return v6 == expiredCopy;
}

- (void)deleteCandidateLogs
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v2 = +[PRSAnonymousPipelineManager candidateLogsBasePath];
  [defaultManager removeItemAtPath:v2 error:0];
}

- (void)deleteExpiredSubmittedLogs
{
  v24[1] = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = +[PRSAnonymousPipelineManager submittedLogsURL];
  v24[0] = *MEMORY[0x1E695EBE8];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v22 = 0;
  v16 = v4;
  v6 = [defaultManager contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:v5 options:0 error:&v22];
  v7 = v22;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [PRSAnonymousPipelineManager dateFromFileURL:v13];
        if ([(PRSAnonymousPipelineManager *)self dateIsExpired:v14])
        {
          v17 = v7;
          [defaultManager removeItemAtURL:v13 error:&v17];
          v15 = v17;

          v7 = v15;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v10);
  }
}

- (id)retrieveFeedbackURLToSendInDirectory:(id)directory
{
  v31[1] = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v31[0] = *MEMORY[0x1E695EBE8];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  v29 = 0;
  v6 = [defaultManager contentsOfDirectoryAtURL:directoryCopy includingPropertiesForKeys:v5 options:0 error:&v29];
  v7 = v29;

  if (v7)
  {
    v9 = PRSLogCategoryAnonymousPipeline(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(PRSAnonymousPipelineManager *)v7 retrieveFeedbackURLToSendInDirectory:v9, v10, v11, v12, v13, v14, v15];
    }

    goto LABEL_4;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v6;
  v17 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (!v17)
  {
LABEL_4:
    v16 = 0;
    goto LABEL_16;
  }

  v18 = v17;
  v24 = directoryCopy;
  v19 = *v26;
  while (2)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v26 != v19)
      {
        objc_enumerationMutation(v9);
      }

      v21 = *(*(&v25 + 1) + 8 * i);
      path = [v21 path];
      if ([path hasSuffix:@".json"])
      {
        v16 = v21;

        goto LABEL_15;
      }
    }

    v18 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v18)
    {
      continue;
    }

    break;
  }

  v16 = 0;
LABEL_15:
  directoryCopy = v24;
LABEL_16:

  return v16;
}

- (void)cleanUp
{
  v15 = *MEMORY[0x1E69E9840];
  userDefaults = [(PRSAnonymousPipelineManager *)self userDefaults];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = +[PRSAnonymousPipelineManager allowedBundles];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [PRSAnonymousPipelineManager engagementCountKeyForBundle:*(*(&v10 + 1) + 8 * v8)];
        [userDefaults setObject:&unk_1F55B3BB8 forKey:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [userDefaults removeObjectForKey:@"collectedBundleID"];
  [userDefaults removeObjectForKey:@"lastQueryID"];
  [(PRSAnonymousPipelineManager *)self deleteCandidateLogs];
  [(PRSAnonymousPipelineManager *)self deleteExpiredSubmittedLogs];
}

+ (id)submitttedSpotlightReportsError:(id *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = +[PRSAnonymousPipelineManager submittedLogsURL];
  v12[0] = *MEMORY[0x1E695EBE8];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v11 = 0;
  v7 = [defaultManager contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:v6 options:0 error:&v11];
  v8 = v11;

  if (error && v8)
  {
    v9 = v8;
    *error = v8;
  }

  return v7;
}

- (void)queryWillFinishWithItems:(id)items forClient:(id)client forQuery:(id)query anonymousDataCollectionAllowed:(BOOL)allowed
{
  itemsCopy = items;
  clientCopy = client;
  queryCopy = query;
  queue = [(PRSAnonymousPipelineManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__PRSAnonymousPipelineManager_queryWillFinishWithItems_forClient_forQuery_anonymousDataCollectionAllowed___block_invoke;
  block[3] = &unk_1E8595F20;
  block[4] = self;
  v18 = clientCopy;
  allowedCopy = allowed;
  v19 = itemsCopy;
  v20 = queryCopy;
  v14 = queryCopy;
  v15 = itemsCopy;
  v16 = clientCopy;
  dispatch_async(queue, block);
}

void __106__PRSAnonymousPipelineManager_queryWillFinishWithItems_forClient_forQuery_anonymousDataCollectionAllowed___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) submissionEnabled])
  {
    v2 = [PRSAnonymousPipelineManager _dataCollectionAllowedForBundle:*(a1 + 40)];
    if (v2)
    {
      if (*(a1 + 64) == 1)
      {
        v3 = PRSLogCategoryAnonymousPipeline(v2);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          v4 = objc_msgSend_count(*(a1 + 48));
          v5 = *(a1 + 40);
          v6 = *(a1 + 56);
          *buf = 134218498;
          v14 = v4;
          v15 = 2112;
          v16 = v5;
          v17 = 2112;
          v18 = v6;
          _os_log_impl(&dword_1D9F69000, v3, OS_LOG_TYPE_INFO, "QueryWillFinish with %lu items client:%@ query:%@", buf, 0x20u);
        }

        [*(a1 + 32) setLastTopHitQueryString:*(a1 + 56)];
        [*(a1 + 32) setLastTopHitQueryItems:*(a1 + 48)];
        v7 = [*(a1 + 32) topHitDataCollectionTimer];

        if (v7)
        {
          v8 = [*(a1 + 32) topHitDataCollectionTimer];
          dispatch_source_cancel(v8);
        }

        v9 = [*(a1 + 32) queue];
        v10 = dispatch_source_create(MEMORY[0x1E69E9710], 1uLL, 0, v9);

        v11 = dispatch_time(0, 15000000000);
        dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __106__PRSAnonymousPipelineManager_queryWillFinishWithItems_forClient_forQuery_anonymousDataCollectionAllowed___block_invoke_243;
        handler[3] = &unk_1E8595778;
        handler[4] = *(a1 + 32);
        dispatch_source_set_event_handler(v10, handler);
        [*(a1 + 32) setTopHitDataCollectionTimer:v10];
        dispatch_resume(v10);
      }
    }
  }
}

uint64_t __106__PRSAnonymousPipelineManager_queryWillFinishWithItems_forClient_forQuery_anonymousDataCollectionAllowed___block_invoke_243(uint64_t a1)
{
  [*(a1 + 32) setLastTopHitQueryItems:0];
  v2 = *(a1 + 32);

  return [v2 setLastTopHitQueryString:0];
}

- (void)userEngagedItemWithIdentifier:(id)identifier forBundle:(id)bundle forQuery:(id)query
{
  v28 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  bundleCopy = bundle;
  queryCopy = query;
  v11 = PRSLogCategoryAnonymousPipeline(queryCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v23 = identifierCopy;
    v24 = 2112;
    v25 = bundleCopy;
    v26 = 2112;
    v27 = queryCopy;
    _os_log_impl(&dword_1D9F69000, v11, OS_LOG_TYPE_DEFAULT, "UserEngagedItem id:%@ bundle:%@ query:%@", buf, 0x20u);
  }

  v12 = queryCopy;
  queue = [(PRSAnonymousPipelineManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__PRSAnonymousPipelineManager_userEngagedItemWithIdentifier_forBundle_forQuery___block_invoke;
  block[3] = &unk_1E85957F0;
  block[4] = self;
  v14 = v12;
  v18 = v14;
  v19 = bundleCopy;
  v20 = identifierCopy;
  v21 = v14;
  v15 = identifierCopy;
  v16 = bundleCopy;
  dispatch_async(queue, block);
}

void __80__PRSAnonymousPipelineManager_userEngagedItemWithIdentifier_forBundle_forQuery___block_invoke(uint64_t a1)
{
  v13 = [*(a1 + 32) lastTopHitQueryString];
  if (![v13 isEqualToString:*(a1 + 40)])
  {
LABEL_11:

    return;
  }

  v2 = [PRSAnonymousPipelineManager _dataCollectionAllowedForBundle:*(a1 + 48)];

  if (v2)
  {
    v3 = [*(a1 + 32) lastTopHitQueryItems];
    v4 = objc_msgSend_count(v3);

    if (v4)
    {
      v5 = 0;
      while (1)
      {
        v6 = [*(a1 + 32) lastTopHitQueryItems];
        v7 = [v6 objectAtIndexedSubscript:v5];

        v8 = [v7 identifier];
        v9 = [v8 isEqualToString:*(a1 + 56)];

        if (v9)
        {
          break;
        }

        ++v5;
        v10 = [*(a1 + 32) lastTopHitQueryItems];
        v11 = objc_msgSend_count(v10);

        if (v5 >= v11)
        {
          return;
        }
      }

      if (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v12 = *(a1 + 32);
        v13 = [v12 lastTopHitQueryItems];
        [v12 extractTrainingDataWithItemAtIndex:v5 withItems:0 withRanker:0 forQuery:? dataCollectAllowed:? forClientBundle:? keyboardPrimaryLanguage:? clientID:?];
        goto LABEL_11;
      }
    }
  }
}

@end