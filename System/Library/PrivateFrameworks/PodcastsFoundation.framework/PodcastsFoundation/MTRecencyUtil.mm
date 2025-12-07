@interface MTRecencyUtil
+ (double)_lastDatePlayedIfNotFutureDate:(double)date podcast:(id)podcast;
+ (double)scoreFromModifiedDate:(double)date;
+ (id)_nextEpisodeForUnplayedPodcast:(id)podcast serial:(BOOL)serial filter:(id)filter ctx:(id)ctx;
+ (id)_upNextForPodcast:(id)podcast serial:(BOOL)serial excludeExplicit:(int64_t)explicit ctx:(id)ctx;
+ (id)_upNextResultForUnfollowedPodcast:(id)podcast filter:(id)filter ctx:(id)ctx;
+ (id)_upNextResultForUnplayedFollowedPodcast:(id)podcast nextEpisodeForUnplayedShow:(id)show newestEpisodeWithShowBump:(id)bump mostRecentlyPlayed:(id)played filter:(id)filter serial:(BOOL)serial ctx:(id)ctx;
+ (id)_upNextScoreWithLastModifiedDate:(double)date lastDatePlayed:(double)played filter:(id)filter podcast:(id)podcast ctx:(id)ctx;
+ (id)caughtUpNextEpisodeForPodcast:(id)podcast nextEpisodeForUnplayedShow:(id)show mostRecentlyPlayedLastDatePlayed:(double)played serial:(BOOL)serial filter:(id)filter;
+ (id)episodesForListenNowWithContext:(id)context limit:(int64_t)limit;
+ (id)mostRecentlySavedUnplayedEpisodeForPodcast:(id)podcast filter:(id)filter ctx:(id)ctx;
+ (id)nextEpisodeForPodcast:(id)podcast mostRecentlyPlayed:(id)played caughtUpNextEpisode:(id)episode serial:(BOOL)serial filter:(id)filter;
+ (id)upNextForPodcastUuid:(id)uuid excludeExplicit:(int64_t)explicit ctx:(id)ctx;
+ (void)setCombinedScoreOnScore:(id)score total:(double)total;
+ (void)setModifiedDateValuesOnScore:(id)score modifiedDate:(double)date modifiedDateWeight:(double)weight total:(double)total;
+ (void)setPercentOfEpsFromShowPlayedValuesOnScore:(id)score podcast:(id)podcast ctx:(id)ctx percentEpsFromShowPlayedWeight:(double)weight total:(double)total;
+ (void)setPercentOfTotalListeningValuesOnScore:(id)score podcast:(id)podcast ctx:(id)ctx percentEpsTotalPlayedWeight:(double)weight total:(double)total;
+ (void)unsafeUpdateRelatedFieldsIfUpNextChangedForPodcast:(id)podcast upNextResult:(id)result ctx:(id)ctx;
@end

@implementation MTRecencyUtil

+ (id)upNextForPodcastUuid:(id)uuid excludeExplicit:(int64_t)explicit ctx:(id)ctx
{
  uuidCopy = uuid;
  ctxCopy = ctx;
  if ([uuidCopy length])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__10;
    v22 = __Block_byref_object_dispose__10;
    v23 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__MTRecencyUtil_upNextForPodcastUuid_excludeExplicit_ctx___block_invoke;
    v12[3] = &unk_1E856B5E0;
    v13 = ctxCopy;
    v14 = uuidCopy;
    v15 = &v18;
    selfCopy = self;
    explicitCopy = explicit;
    [v13 performBlockAndWait:v12];
    v10 = v19[5];

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __58__MTRecencyUtil_upNextForPodcastUuid_excludeExplicit_ctx___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) podcastForUuid:*(a1 + 40)];
  if (([v5 hidden] & 1) == 0)
  {
    v2 = [*(a1 + 56) _upNextForPodcast:v5 serial:objc_msgSend(v5 excludeExplicit:"playbackNewestToOldest") ^ 1 ctx:{*(a1 + 64), *(a1 + 32)}];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

+ (id)_upNextForPodcast:(id)podcast serial:(BOOL)serial excludeExplicit:(int64_t)explicit ctx:(id)ctx
{
  serialCopy = serial;
  podcastCopy = podcast;
  ctxCopy = ctx;
  if ([podcastCopy shouldBeHiddenFromUpNext])
  {
    v12 = 0;
    goto LABEL_51;
  }

  v13 = objc_alloc_init(MTUpNextResult);
  v14 = objc_opt_new();
  [v14 setExcludeExplicit:explicit];
  [v14 setExcludeUnentitled:1];
  [v14 setExcludeGhostEpisodes:1];
  if ([podcastCopy subscribed])
  {
LABEL_4:
    v15 = [podcastCopy mostRecentlyPlayedEpisodeWithFilter:v14];
    if (([(MTUpNextResult *)v15 isUnplayed]& 1) != 0)
    {
      isPlayheadPartiallyPlayed = 1;
    }

    else
    {
      isPlayheadPartiallyPlayed = [(MTUpNextResult *)v15 isPlayheadPartiallyPlayed];
    }

    [(MTUpNextResult *)v15 lastDatePlayed];
    if (v18 <= 0.0)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    }

    else
    {
      [(MTUpNextResult *)v15 lastDatePlayed];
    }

    v20 = v19;
    v21 = [MTRecencyUtil _nextEpisodeForUnplayedPodcast:podcastCopy serial:serialCopy filter:v14 ctx:ctxCopy];
    v22 = v21;
    if (serialCopy)
    {
      if (v15)
      {
        v52 = isPlayheadPartiallyPlayed;
        v54 = v21;
        v23 = [podcastCopy highestNumberedEpisodePublishedBefore:v14 filter:v20];
        v24 = 0;
LABEL_25:
        v34 = [self caughtUpNextEpisodeForPodcast:podcastCopy nextEpisodeForUnplayedShow:v54 mostRecentlyPlayedLastDatePlayed:serialCopy serial:v14 filter:v20];
        v53 = v23;
        isVisuallyPlayed = [v23 isVisuallyPlayed];
        v36 = v34;
        if (isVisuallyPlayed && v34)
        {
          [(MTUpNextResult *)v13 updateFor:v34];
          v33 = v24;
          if (serialCopy)
          {
            v37 = v34;
          }

          else
          {
            v37 = v24;
          }

          [v37 pubDate];
          if (v20 >= v44)
          {
            v44 = v20;
          }

          v45 = v13;
        }

        else
        {
          v33 = v24;
          if (!v52 || (serialCopy & 1) == 0 && ([v34 firstTimeAvailable], v36 = v34, v20 < v38))
          {
            v34 = v36;
            v39 = [self nextEpisodeForPodcast:podcastCopy mostRecentlyPlayed:v15 caughtUpNextEpisode:v36 serial:serialCopy filter:v14];
            v22 = v54;
            if (!v39)
            {
              v12 = 0;
              goto LABEL_48;
            }

            v40 = v39;
            [(MTUpNextResult *)v13 updateFor:v39];
            if ((serialCopy & 1) == 0)
            {
              [v33 pubDate];
              if (v41 >= v20)
              {
                v20 = v41;
              }
            }

            [(MTUpNextResult *)v13 setModifiedDate:v20];
            [(MTUpNextResult *)v13 modifiedDate];
            v42 = 0x1E8567000;
            [MTRecencyUtil scoreFromModifiedDate:?];
            [(MTUpNextResult *)v13 setModifiedDateScore:?];

LABEL_47:
            v46 = *(v42 + 1632);
            [(MTUpNextResult *)v13 modifiedDate];
            v48 = v47;
            [(MTUpNextResult *)v15 lastDatePlayed];
            v50 = [v46 _upNextScoreWithLastModifiedDate:v14 lastDatePlayed:podcastCopy filter:ctxCopy podcast:v48 ctx:v49];
            [(MTUpNextResult *)v13 setUpNextScore:v50];
            v12 = v13;

LABEL_48:
            goto LABEL_49;
          }

          v34 = v36;
          [(MTUpNextResult *)v13 updateFor:v15];
          v45 = v13;
          v44 = v20;
        }

        [(MTUpNextResult *)v45 setModifiedDate:v44];
        v42 = 0x1E8567000uLL;
        [(MTUpNextResult *)v13 modifiedDate];
        [MTRecencyUtil scoreFromModifiedDate:?];
        [(MTUpNextResult *)v13 setModifiedDateScore:?];
        v22 = v54;
        goto LABEL_47;
      }

      v33 = 0;
    }

    else
    {
      [(MTUpNextResult *)v15 lastDatePlayed];
      v26 = v25 <= 0.0;
      v27 = v20;
      if (v26)
      {
        [podcastCopy addedDate];
      }

      v52 = isPlayheadPartiallyPlayed;
      v28 = [podcastCopy episodesPublishedAfter:v14 filter:4 limit:0 sortAsc:v27];
      if ([v28 count] < 4)
      {
        v29 = v22;
      }

      else
      {
        v29 = [v28 objectAtIndexedSubscript:2];
      }

      v33 = v29;

      if (v15)
      {
        v54 = v22;
        v24 = v33;
        v23 = [podcastCopy episodePublishedBefore:v14 filter:v20];
        goto LABEL_25;
      }
    }

    v12 = [self _upNextResultForUnplayedFollowedPodcast:podcastCopy nextEpisodeForUnplayedShow:v22 newestEpisodeWithShowBump:v33 mostRecentlyPlayed:0 filter:v14 serial:serialCopy ctx:ctxCopy];
LABEL_49:

    goto LABEL_50;
  }

  v17 = [self _upNextResultForUnfollowedPodcast:podcastCopy filter:v14 ctx:ctxCopy];
  v15 = v17;
  if (v17)
  {
    v15 = v17;
    v12 = v15;
  }

  else
  {
    [podcastCopy lastDatePlayed];
    v31 = v30;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    if (v31 >= v32 + -7776000.0)
    {
      showTypeInFeed = [podcastCopy showTypeInFeed];

      v12 = 0;
      if (showTypeInFeed)
      {
        serialCopy = [podcastCopy isSerialShowTypeInFeed];
        goto LABEL_4;
      }
    }

    else
    {
      v12 = 0;
    }
  }

LABEL_50:

LABEL_51:

  return v12;
}

+ (id)_upNextResultForUnfollowedPodcast:(id)podcast filter:(id)filter ctx:(id)ctx
{
  podcastCopy = podcast;
  filterCopy = filter;
  ctxCopy = ctx;
  v10 = [podcastCopy mostRecentlyPlayedEpisodeWithFilter:filterCopy];
  [v10 lastDatePlayed];
  v12 = v11;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v14 = v13;
  if ([v10 isPlayheadPartiallyPlayed] && v12 > v14 + -7776000.0)
  {
    v15 = objc_alloc_init(MTUpNextResult);
    [(MTUpNextResult *)v15 updateFor:v10];
    [v10 lastDatePlayed];
    [(MTUpNextResult *)v15 setModifiedDate:?];
    [(MTUpNextResult *)v15 modifiedDate];
    [MTRecencyUtil scoreFromModifiedDate:?];
    [(MTUpNextResult *)v15 setModifiedDateScore:?];
    goto LABEL_10;
  }

  if ([podcastCopy savedEpisodesCount] >= 1)
  {
    v16 = [MTRecencyUtil mostRecentlySavedUnplayedEpisodeForPodcast:podcastCopy filter:filterCopy ctx:ctxCopy];
    v17 = v16;
    if (v16)
    {
      [v16 lastBookmarkedDate];
      v19 = v18;
      [podcastCopy lastDatePlayed];
      if (v19 > v20)
      {
        v15 = objc_alloc_init(MTUpNextResult);
        [(MTUpNextResult *)v15 updateFor:v17];
        [v17 lastBookmarkedDate];
        [(MTUpNextResult *)v15 setModifiedDate:?];
        [(MTUpNextResult *)v15 modifiedDate];
        [MTRecencyUtil scoreFromModifiedDate:?];
        [(MTUpNextResult *)v15 setModifiedDateScore:?];

        goto LABEL_10;
      }
    }
  }

  v15 = 0;
LABEL_10:

  return v15;
}

+ (id)_upNextResultForUnplayedFollowedPodcast:(id)podcast nextEpisodeForUnplayedShow:(id)show newestEpisodeWithShowBump:(id)bump mostRecentlyPlayed:(id)played filter:(id)filter serial:(BOOL)serial ctx:(id)ctx
{
  serialCopy = serial;
  podcastCopy = podcast;
  showCopy = show;
  bumpCopy = bump;
  if (showCopy)
  {
    ctxCopy = ctx;
    filterCopy = filter;
    playedCopy = played;
    v20 = objc_alloc_init(MTUpNextResult);
    [(MTUpNextResult *)v20 updateFor:showCopy];
    [podcastCopy lastDatePlayed];
    if (v21 == 0.0)
    {
      if (serialCopy)
      {
        [podcastCopy addedDate];
        v23 = v22;
      }

      else
      {
        [bumpCopy pubDate];
        v23 = v26;
        [podcastCopy addedDate];
        if (v23 < v27)
        {
          v23 = v27;
        }
      }
    }

    else if (serialCopy)
    {
      [showCopy pubDate];
      v23 = v24;
      [podcastCopy lastDatePlayed];
      if (v23 >= v25)
      {
        v23 = v25;
      }
    }

    else
    {
      [podcastCopy lastDatePlayed];
      [MTRecencyUtil _lastDatePlayedIfNotFutureDate:podcastCopy podcast:?];
      v29 = v28;
      v23 = v28 + 259200.0;
      [showCopy pubDate];
      if (v30 <= v23)
      {
        [showCopy pubDate];
        if (v31 >= v29)
        {
          v23 = v31;
        }

        else
        {
          v23 = v29;
        }
      }
    }

    [(MTUpNextResult *)v20 setModifiedDate:v23];
    [(MTUpNextResult *)v20 modifiedDate];
    v33 = v32;
    [playedCopy lastDatePlayed];
    v35 = v34;

    v36 = [MTRecencyUtil _upNextScoreWithLastModifiedDate:filterCopy lastDatePlayed:podcastCopy filter:ctxCopy podcast:v33 ctx:v35];

    [(MTUpNextResult *)v20 setUpNextScore:v36];
    [(MTUpNextResult *)v20 modifiedDate];
    [MTRecencyUtil scoreFromModifiedDate:?];
    [(MTUpNextResult *)v20 setModifiedDateScore:?];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (double)scoreFromModifiedDate:(double)date
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v5 = v4 + -7776000.0;
  v6 = date - (v4 + -7776000.0);
  if (v6 >= 0.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  return v7 / (v8 - v5);
}

+ (id)caughtUpNextEpisodeForPodcast:(id)podcast nextEpisodeForUnplayedShow:(id)show mostRecentlyPlayedLastDatePlayed:(double)played serial:(BOOL)serial filter:(id)filter
{
  serialCopy = serial;
  podcastCopy = podcast;
  showCopy = show;
  filterCopy = filter;
  v14 = filterCopy;
  if (serialCopy)
  {
    filterExcludingPlayed = [filterCopy filterExcludingPlayed];
    v16 = [podcastCopy lowestNumberedEpisodePublishedAfter:filterExcludingPlayed filter:played];
  }

  else if (showCopy && ([showCopy isVisuallyPlayed] & 1) == 0)
  {
    v16 = showCopy;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)nextEpisodeForPodcast:(id)podcast mostRecentlyPlayed:(id)played caughtUpNextEpisode:(id)episode serial:(BOOL)serial filter:(id)filter
{
  serialCopy = serial;
  episodeCopy = episode;
  v12 = episodeCopy;
  if (serialCopy)
  {
    v13 = [podcast nextNumberedUnplayedEpisodeAfter:played filter:filter];
  }

  else
  {
    v13 = episodeCopy;
  }

  v14 = v13;

  return v14;
}

+ (void)unsafeUpdateRelatedFieldsIfUpNextChangedForPodcast:(id)podcast upNextResult:(id)result ctx:(id)ctx
{
  v42 = *MEMORY[0x1E69E9840];
  podcastCopy = podcast;
  resultCopy = result;
  ctxCopy = ctx;
  v10 = [ctxCopy podcastForUuid:podcastCopy];
  [resultCopy modifiedDate];
  [v10 setModifiedDate:?];
  v11 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    nextEpisodeUuid = [v10 nextEpisodeUuid];
    episodeUuid = [resultCopy episodeUuid];
    *buf = 138543618;
    v39 = nextEpisodeUuid;
    v40 = 2114;
    v41 = episodeUuid;
    _os_log_impl(&dword_1D8CEC000, v11, OS_LOG_TYPE_DEFAULT, "UpNext result updating podcast nextEpisodeUuid from %{public}@ to %{public}@", buf, 0x16u);
  }

  nextEpisodeUuid2 = [v10 nextEpisodeUuid];
  episodeUuid2 = [resultCopy episodeUuid];
  v16 = episodeUuid2;
  if (nextEpisodeUuid2 == episodeUuid2)
  {

    goto LABEL_8;
  }

  nextEpisodeUuid3 = [v10 nextEpisodeUuid];
  episodeUuid3 = [resultCopy episodeUuid];
  v19 = [nextEpisodeUuid3 isEqualToString:episodeUuid3];

  if ((v19 & 1) == 0)
  {
    episodeUuid4 = [resultCopy episodeUuid];

    if (episodeUuid4)
    {
      episodeUuid5 = [resultCopy episodeUuid];
      nextEpisodeUuid2 = [ctxCopy episodeForUuid:episodeUuid5];

      [nextEpisodeUuid2 setListenNowEpisode:1];
      [resultCopy modifiedDateScore];
      [nextEpisodeUuid2 setModifiedDateScore:?];
LABEL_8:
    }
  }

  v22 = [MTEpisode predicateForListenNowForPodcastUuid:podcastCopy];
  episodeUuid6 = [resultCopy episodeUuid];
  v24 = [MTEpisode predicateForEpisodeUuid:episodeUuid6];
  v25 = [v24 NOT];
  v26 = [v22 AND:v25];

  v27 = [ctxCopy objectsInEntity:@"MTEpisode" predicate:v26 sortDescriptors:0 returnsObjectsAsFaults:0 limit:0];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v28 = [v27 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v34;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v34 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v33 + 1) + 8 * i);
        [v32 setListenNowEpisode:0];
        [v32 setModifiedDateScore:0.0];
      }

      v29 = [v27 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v29);
  }
}

+ (id)mostRecentlySavedUnplayedEpisodeForPodcast:(id)podcast filter:(id)filter ctx:(id)ctx
{
  ctxCopy = ctx;
  podcastCopy = podcast;
  v9 = [filter predicateForPodcast:podcastCopy];
  v10 = [MTEpisode predicateForVisuallyPlayed:0];
  v11 = [v9 AND:v10];
  uuid = [podcastCopy uuid];

  v13 = [MTEpisode predicateForBookmarkedEpisodesOnPodcastUuid:uuid];
  v14 = [v11 AND:v13];

  v15 = [MTEpisode sortDescriptorsForLastBookmarkedDateAscending:0];
  v16 = [ctxCopy objectsInEntity:@"MTEpisode" predicate:v14 sortDescriptors:v15 returnsObjectsAsFaults:0 limit:1];

  firstObject = [v16 firstObject];

  return firstObject;
}

+ (id)_nextEpisodeForUnplayedPodcast:(id)podcast serial:(BOOL)serial filter:(id)filter ctx:(id)ctx
{
  filterCopy = filter;
  podcastCopy = podcast;
  episodeTypeFilter = [filterCopy episodeTypeFilter];
  if (serial)
  {
    [filterCopy setEpisodeTypeFilter:1];
    [podcastCopy oldestEpisodeInLatestSeasonOrShowWithFilter:filterCopy];
  }

  else
  {
    [filterCopy setEpisodeTypeFilter:5];
    [podcastCopy newestEpisodeWithFilter:filterCopy];
  }
  v11 = ;

  [filterCopy setEpisodeTypeFilter:episodeTypeFilter];

  return v11;
}

+ (double)_lastDatePlayedIfNotFutureDate:(double)date podcast:(id)podcast
{
  podcastCopy = podcast;
  v6 = +[_TtC18PodcastsFoundation17FutureDateChecker sharedInstance];
  v7 = [v6 isFutureWithTimestamp:date];

  if (v7)
  {
    [podcastCopy lastDatePlayed];
    if (v8 <= 0.0)
    {
      [podcastCopy addedDate];
    }

    else
    {
      [podcastCopy modifiedDate];
    }

    date = v9;
  }

  return date;
}

+ (void)setModifiedDateValuesOnScore:(id)score modifiedDate:(double)date modifiedDateWeight:(double)weight total:(double)total
{
  scoreCopy = score;
  [MTRecencyUtil scoreFromModifiedDate:date];
  [scoreCopy setModifiedDateScore:?];
  [scoreCopy setModifiedWeight:weight / total];
}

+ (void)setPercentOfEpsFromShowPlayedValuesOnScore:(id)score podcast:(id)podcast ctx:(id)ctx percentEpsFromShowPlayedWeight:(double)weight total:(double)total
{
  podcastCopy = podcast;
  ctxCopy = ctx;
  scoreCopy = score;
  uuid = [podcastCopy uuid];
  v14 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:uuid];
  v15 = +[MTEpisode predicateForHasAnyVisualPlayState];
  v16 = [v14 AND:v15];

  uuid2 = [podcastCopy uuid];
  v18 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:uuid2];

  if ([podcastCopy isSerialShowTypeInFeed])
  {
    v19 = [ctxCopy countOfObjectsInEntity:@"MTEpisode" predicate:v16];
    v20 = [ctxCopy countOfObjectsInEntity:@"MTEpisode" predicate:v18];
  }

  else
  {
    v21 = MEMORY[0x1E695DF00];
    [podcastCopy addedDate];
    v22 = [v21 dateWithTimeIntervalSinceReferenceDate:?];
    v23 = [MTEpisode predicateForEpisodesPublishedAfterDate:v22];
    v24 = [v16 AND:v23];

    v25 = MEMORY[0x1E695DF00];
    [podcastCopy addedDate];
    v26 = [v25 dateWithTimeIntervalSinceReferenceDate:?];
    v27 = [MTEpisode predicateForEpisodesPublishedAfterDate:v26];
    v28 = [v18 AND:v27];

    v29 = [MTEpisode sortDescriptorsForPubDateAscending:0];
    v30 = [ctxCopy objectsInEntity:@"MTEpisode" predicate:v28 sortDescriptors:v29 returnsObjectsAsFaults:0 limit:50];

    v20 = [v30 count];
    v31 = [v30 filteredArrayUsingPredicate:v24];
    v19 = [v31 count];

    ctxCopy = v29;
    v18 = v28;
    v16 = v24;
  }

  if (v20)
  {
    v32 = v19 / v20 * 100.0;
  }

  else
  {
    v32 = 0.0;
  }

  [scoreCopy setEpisodesFromShowTotalCount:?];
  [scoreCopy setEpisodesFromShowPlayedCount:v19];
  [scoreCopy setEpisodesFromShowPlayedPercent:v32];
  [scoreCopy setEpisodesFromShowWeight:weight / total];
}

+ (void)setPercentOfTotalListeningValuesOnScore:(id)score podcast:(id)podcast ctx:(id)ctx percentEpsTotalPlayedWeight:(double)weight total:(double)total
{
  scoreCopy = score;
  ctxCopy = ctx;
  podcastCopy = podcast;
  v13 = [MTEpisode predicateForVisuallyPlayed:1];
  v14 = +[MTEpisode sortDescriptorsForRecentlyPlayed];
  v15 = [ctxCopy objectsInEntity:@"MTEpisode" predicate:v13 sortDescriptors:v14 returnsObjectsAsFaults:0 limit:100];

  [scoreCopy setAllPlayedEpisodesCount:{objc_msgSend(v15, "count")}];
  uuid = [podcastCopy uuid];

  v17 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:uuid];
  v18 = [v15 filteredArrayUsingPredicate:v17];

  [scoreCopy setAllPlayedEpisodesFromThisShowCount:{objc_msgSend(v18, "count")}];
  [scoreCopy allPlayedEpisodesCount];
  v19 = 0.0;
  if (v20 != 0.0)
  {
    [scoreCopy allPlayedEpisodesFromThisShowCount];
    v22 = v21;
    [scoreCopy allPlayedEpisodesCount];
    v19 = v22 / v23 * 100.0;
  }

  [scoreCopy setAllPlayedEpsWeight:weight / total];
  [scoreCopy setAllPlayedEpsPercent:v19];
}

+ (void)setCombinedScoreOnScore:(id)score total:(double)total
{
  scoreCopy = score;
  [scoreCopy modifiedDateScore];
  v6 = v5;
  if (total > 0.0)
  {
    [scoreCopy modifiedWeight];
    v8 = v6 * v7;
    [scoreCopy episodesFromShowPlayedPercent];
    v10 = v9;
    [scoreCopy episodesFromShowWeight];
    v12 = v8 + v10 * v11;
    [scoreCopy allPlayedEpsPercent];
    v14 = v13;
    [scoreCopy allPlayedEpsWeight];
    v6 = v12 + v14 * v15;
  }

  [scoreCopy setCombinedScore:v6];
}

+ (id)_upNextScoreWithLastModifiedDate:(double)date lastDatePlayed:(double)played filter:(id)filter podcast:(id)podcast ctx:(id)ctx
{
  podcastCopy = podcast;
  ctxCopy = ctx;
  if (os_feature_enabled_prototype_up_next())
  {
    v12 = objc_alloc_init(MTUpNextScorePrototype);
    _applePodcastsFoundationSettingsUserDefaults = [MEMORY[0x1E695E000] _applePodcastsFoundationSettingsUserDefaults];
    [_applePodcastsFoundationSettingsUserDefaults doubleForKey:@"MTUpNextScoreModifiedDateWeight"];
    v15 = v14;

    _applePodcastsFoundationSettingsUserDefaults2 = [MEMORY[0x1E695E000] _applePodcastsFoundationSettingsUserDefaults];
    [_applePodcastsFoundationSettingsUserDefaults2 doubleForKey:@"MTUpNextScorePercentEpsFromShowPlayedWeight"];
    v18 = v17;

    _applePodcastsFoundationSettingsUserDefaults3 = [MEMORY[0x1E695E000] _applePodcastsFoundationSettingsUserDefaults];
    [_applePodcastsFoundationSettingsUserDefaults3 doubleForKey:@"MTUpNextScorePercentEpsTotalPlayedWeight"];
    v21 = v20;

    [self setModifiedDateValuesOnScore:v12 modifiedDate:date modifiedDateWeight:v15 total:v15 + v18 + v21];
    [self setPercentOfEpsFromShowPlayedValuesOnScore:v12 podcast:podcastCopy ctx:ctxCopy percentEpsFromShowPlayedWeight:v18 total:v15 + v18 + v21];
    [self setPercentOfTotalListeningValuesOnScore:v12 podcast:podcastCopy ctx:ctxCopy percentEpsTotalPlayedWeight:v21 total:v15 + v18 + v21];
    [self setCombinedScoreOnScore:v12 total:v15 + v18 + v21];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)episodesForListenNowWithContext:(id)context limit:(int64_t)limit
{
  contextCopy = context;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__10;
  v17 = __Block_byref_object_dispose__10;
  v18 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__MTRecencyUtil_episodesForListenNowWithContext_limit___block_invoke;
  v9[3] = &unk_1E856B608;
  v11 = &v13;
  v6 = contextCopy;
  v10 = v6;
  limitCopy = limit;
  [v6 performBlockAndWait:v9];
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __55__MTRecencyUtil_episodesForListenNowWithContext_limit___block_invoke(void *a1)
{
  v2 = a1[4];
  v7 = +[MTEpisode predicateForListenNow];
  v3 = +[MTEpisode sortDescriptorsForListenNow];
  v4 = [v2 objectsInEntity:@"MTEpisode" predicate:v7 sortDescriptors:v3 returnsObjectsAsFaults:0 limit:a1[6]];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

@end