@interface SPCoreSpotlightDatastore
+ (BOOL)_isKeyboardCJK:(id)k;
+ (SPCoreSpotlightDatastore)sharedInstance;
+ (id)_makeUniqueFetchAttributesWithAttributes:(id)attributes extraAttributes:(id)extraAttributes;
+ (id)removedDuplicatePhotosSectionsFromSections:(id)sections isPhotosScopedSearch:(BOOL)search;
+ (id)sectionWithBundleIdentifier:(id)identifier andAddToMap:(id)map;
+ (void)_handleRemoteProxyError:(id)error;
+ (void)initialize;
+ (void)modifyBatchSize:(unint64_t *)size batchIncrement:(unint64_t *)increment batches:(unint64_t *)batches withSectionsCount:(unint64_t)count;
+ (void)setButtonOnPhotosInAppSection:(id)section withQuery:(id)query queryString:(id)string queryParams:(id)params;
+ (void)updatePhoneFavorites;
- (BOOL)topHitNominatedByPommesScoringforBundleIdentifier:(id)identifier;
- (id)_topHitQueryParametersForSearchString:(id)string searchEntities:(id)entities contextIdentifier:(id)identifier queryKind:(unint64_t)kind needsFuzzy:(BOOL)fuzzy checkForMath:(BOOL)math isCJK:(BOOL)k disableNLP:(BOOL)self0 disableOCR:(BOOL)self1 previousQueryKind:(unint64_t)self2 clientBundle:(id)self3 keyboardLanguage:(id)self4 queryID:(int64_t)self5;
- (id)coreSpotlightQueryTaskWithQuery:(id)query reuseTask:(id)task;
- (id)performQuery:(id)query isCorrectedQuery:(BOOL)correctedQuery reuseTask:(id)task needsFuzzy:(BOOL)fuzzy pommesRewrite:(id)rewrite embeddingsRequery:(BOOL)requery;
- (id)rankingQueriesAddingQueryTerms:(id)terms rankingQueries:(id)queries;
- (id)taskForTopHitQueryWithQueryString:(id)string queryContext:(id)context eventHandler:(id)handler resultsHandler:(id)resultsHandler completionHandler:(id)completionHandler;
- (id)taskForTopHitQueryWithQueryString:(id)string queryContext:(id)context resultsHandler:(id)handler completionHandler:(id)completionHandler;
- (void)activate;
- (void)clearInput;
- (void)deactivate;
- (void)dealloc;
- (void)hideIrrelevantCalendarResultsForSection:(id)section;
- (void)performQueryRewriteForQuery:(id)query withCorrection:(id)correction task:(id)task;
- (void)preheat;
- (void)processSection:(id)section forQuery:(id)query rawQuery:(id)rawQuery usingTopHitThreshold:;
- (void)processUserActivitiesForSection:(id)section;
- (void)removeDuplicatesInSection:(id)section query:(id)query;
- (void)sortResultsInSection:(id)section currentTime:(double)time;
- (void)updateCoreSuggestionsSection:(id)section;
- (void)updateMailVIPList;
@end

@implementation SPCoreSpotlightDatastore

+ (SPCoreSpotlightDatastore)sharedInstance
{
  if (qword_1000A8448 != -1)
  {
    sub_100062FC4();
  }

  v3 = qword_1000A8440;

  return v3;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    selfCopy = self;
    v3 = SSSectionIdentifierSyndicatedPhotos;
    v51[0] = SSSectionIdentifierSyndicatedLinks;
    v51[1] = SSSectionIdentifierSyndicatedPhotos;
    v4 = SSSectionIdentifierSyndicatedPhotosMessages;
    v5 = SSSectionIdentifierSyndicatedPhotosNotes;
    v51[2] = SSSectionIdentifierSyndicatedPhotosMessages;
    v51[3] = SSSectionIdentifierSyndicatedPhotosNotes;
    v6 = SSSectionIdentifierSyndicatedPhotosFiles;
    v7 = SSSectionIdentifierSyndicatedPhotosFromPhotos;
    v51[4] = SSSectionIdentifierSyndicatedPhotosFiles;
    v51[5] = SSSectionIdentifierSyndicatedPhotosFromPhotos;
    v8 = SSPhotosBundleIdentifier;
    v51[6] = SSContactsBundleIdentifier;
    v51[7] = SSPhotosBundleIdentifier;
    v9 = [NSArray arrayWithObjects:v51 count:8];
    v10 = [NSSet setWithArray:v9];
    v11 = qword_1000A8460;
    qword_1000A8460 = v10;

    v12 = [[NSSet alloc] initWithObjects:{@"com.apple.application", @"com.apple.mobilesafari", @"com.apple.Preferences", @"com.apple.MobileAddressBook", @"com.apple.shortcuts", 0}];
    v13 = qword_1000A8470;
    qword_1000A8470 = v12;

    v50[0] = v3;
    v50[1] = v4;
    v50[2] = v5;
    v50[3] = v6;
    v50[4] = v7;
    v50[5] = v8;
    v14 = [NSArray arrayWithObjects:v50 count:6];
    v15 = [NSSet setWithArray:v14];
    v16 = qword_1000A8468;
    qword_1000A8468 = v15;

    v17 = [NSSet alloc];
    v49 = v3;
    v18 = [NSArray arrayWithObjects:&v49 count:1];
    v19 = [v17 initWithArray:v18];
    v20 = qword_1000A8450;
    qword_1000A8450 = v19;

    v21 = [NSSet alloc];
    v48[0] = v4;
    v48[1] = v5;
    v48[2] = v6;
    v48[3] = v7;
    v22 = [NSArray arrayWithObjects:v48 count:4];
    v23 = [v21 initWithArray:v22];
    v24 = qword_1000A8458;
    qword_1000A8458 = v23;

    v25 = [NSBundle bundleForClass:objc_opt_class()];
    v26 = qword_1000A8478;
    qword_1000A8478 = v25;

    v27 = [NSUserDefaults alloc];
    v28 = [v27 initWithSuiteName:SpotlightDaemonBundleID];
    v29 = qword_1000A8480;
    qword_1000A8480 = v28;

    byte_1000A8488 = os_variant_has_internal_diagnostics();
    qword_1000A8490 = [qword_1000A8480 integerForKey:@"meContactExists"];
    v30 = [qword_1000A8480 objectForKey:@"meContactIdentifier"];
    v31 = qword_1000A8428;
    qword_1000A8428 = v30;

    v32 = [qword_1000A8480 objectForKey:@"meEmailAddresses"];
    v33 = qword_1000A8430;
    qword_1000A8430 = v32;

    v34 = dispatch_group_create();
    v35 = qword_1000A8498;
    qword_1000A8498 = v34;

    if (byte_1000A8488 == 1)
    {
      v36 = NSHomeDirectory();
      v37 = [v36 stringByAppendingString:@"/Library/Logs/CrashReporter/DiagnosticLogs/Search/Ranking"];

      v38 = +[NSFileManager defaultManager];
      [v38 createDirectoryAtPath:v37 withIntermediateDirectories:1 attributes:0 error:0];
    }

    v39 = +[SRResourcesManager sharedResourcesManager];
    [v39 loadAllParameters];

    +[SSRankingManager reloadRankingParametersFromTrial];
    +[SSRankingManager getSuggestionsRankingThresholds];
    SISetCompletionRankingWeights();
    v40 = qword_1000A8498;
    v41 = dispatch_get_global_queue(17, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100033300;
    block[3] = &unk_1000923B0;
    block[4] = selfCopy;
    dispatch_group_async(v40, v41, block);

    v42 = [NSOrderedSet alloc];
    v43 = rankingAttributeNameArray();
    v44 = [v42 initWithArray:v43];
    v45 = qword_1000A84B0;
    qword_1000A84B0 = v44;
  }
}

+ (void)_handleRemoteProxyError:(id)error
{
  errorCopy = error;
  v4 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_100063054(errorCopy);
  }
}

- (void)updateMailVIPList
{
  v3 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MSDVIPServicesProtocol];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000338C8;
  v8[3] = &unk_100091E30;
  v8[4] = self;
  v4 = [MSXPCService remoteProxyForXPCInterface:v3 connectionErrorHandler:v8];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003391C;
  v6[3] = &unk_100093300;
  v7 = os_transaction_create();
  v5 = v7;
  [v4 orderedVIPAddressesAndUnreadCountsWithCompletion:v6];
}

+ (void)updatePhoneFavorites
{
  v2 = +[CNFavorites sharedInstance];
  entries = [v2 entries];
  v4 = [entries copy];

  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        contactProperty = [*(*(&v16 + 1) + 8 * v10) contactProperty];
        contact = [contactProperty contact];

        identifier = [contact identifier];
        [v5 addObject:identifier];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  os_unfair_lock_lock(&unk_1000A84B8);
  v14 = [v5 copy];
  v15 = qword_1000A8438;
  qword_1000A8438 = v14;

  os_unfair_lock_unlock(&unk_1000A84B8);
}

- (void)dealloc
{
  notify_cancel(self->_changedToken);
  v3.receiver = self;
  v3.super_class = SPCoreSpotlightDatastore;
  [(SPCoreSpotlightDatastore *)&v3 dealloc];
}

- (void)preheat
{
  v2 = si_tracing_current_span();
  v9 = *v2;
  v10 = *(v2 + 16);
  v11 = *(v2 + 32);
  v3 = *v2;
  spanid = si_tracing_calc_next_spanid();
  v5 = *(v2 + 8);
  *v2 = v3;
  *(v2 + 8) = spanid;
  *(v2 + 16) = v5;
  *(v2 + 28) = 102;
  *(v2 + 32) = "[SPCoreSpotlightDatastore preheat]";
  si_tracing_log_span_begin();
  v6 = +[SDController rankQueue];
  v7 = qos_class_self();
  v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v7, 0, &stru_100093320);
  tracing_dispatch_async();

  si_tracing_log_span_end();
  *v2 = v9;
  *(v2 + 16) = v10;
  *(v2 + 32) = v11;
}

- (void)activate
{
  v3 = si_tracing_current_span();
  v4 = *(v3 + 16);
  v32 = *v3;
  v33 = v4;
  v34 = *(v3 + 32);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "[SPCoreSpotlightDatastore activate]";
  si_tracing_log_span_begin();
  v8 = *(self + 8);
  if ((v8 & 0x20) == 0)
  {
    v9 = +[SDController workQueue];
    v10 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, &stru_100093340);
    tracing_dispatch_async();

    if (*(self + 57))
    {
      v11 = dispatch_get_global_queue(25, 0);
      tracing_dispatch_async();

      *(self + 57) &= ~1u;
    }

    v12 = +[PRSModelManager sharedModelManager];
    [v12 activate];

    v13 = +[CSFileProviderContainerCache sharedInstance];
    [v13 refreshCache];

    v14 = +[MCProfileConnection sharedConnection];
    *(self + 8) = *(self + 8) & 0xFB | (4 * ([v14 effectiveBoolValueForSetting:MCFeatureExplicitContentAllowed] != 2));
    *(self + 8) = *(self + 8) & 0xF7 | (8 * ([v14 effectiveBoolValueForSetting:MCFeatureMusicVideosAllowed] != 2));
    v15 = [v14 effectiveValueForSetting:MCFeatureMaximumMoviesRating];
    maxMovieRating = self->_maxMovieRating;
    self->_maxMovieRating = v15;

    v17 = [v14 effectiveValueForSetting:MCFeatureMaximumTVShowsRating];
    maxTVShowRating = self->_maxTVShowRating;
    self->_maxTVShowRating = v17;

    if ([v14 isBookstoreEroticaAllowed])
    {
      v19 = 16;
    }

    else
    {
      v19 = 0;
    }

    *(self + 8) = *(self + 8) & 0xEF | v19;
    v20 = SPFastHiddenAppsGetNoBuild();
    v21 = [v20 mutableCopy];

    v22 = +[SDAppUninstallMonitor applicationsExcludedFromUninstall];
    [v21 minusSet:v22];

    v23 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v36 = [v21 count];
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%lu hiddenApps set during activate", buf, 0xCu);
    }

    allObjects = [v21 allObjects];
    v25 = qword_1000A84C0;
    qword_1000A84C0 = allObjects;

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100034434;
    block[3] = &unk_1000921C8;
    block[4] = self;
    if (qword_1000A84C8 != -1)
    {
      dispatch_once(&qword_1000A84C8, block);
    }

    v8 = *(self + 8);
  }

  *(self + 8) = v8 | 0x20;
  v26 = atomic_load(&dword_1000A8420);
  if (v26 <= 0)
  {
    [(SPCoreSpotlightDatastore *)self preheat];
    atomic_store(1u, &dword_1000A8420);
  }

  else
  {
    atomic_fetch_add(&dword_1000A8420, 1u);
  }

  os_unfair_lock_lock(&unk_1000A84D0);
  v27 = +[SSRankingFeedbackHandler copyRenderEngagementCounts];
  renderEngagementCounts = self->_renderEngagementCounts;
  self->_renderEngagementCounts = v27;

  os_unfair_lock_unlock(&unk_1000A84D0);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100034510;
  v30[3] = &unk_1000921C8;
  v30[4] = self;
  if (qword_1000A84D8 != -1)
  {
    dispatch_once(&qword_1000A84D8, v30);
  }

  si_tracing_log_span_end();
  v29 = v33;
  *v3 = v32;
  *(v3 + 16) = v29;
  *(v3 + 32) = v34;
}

- (void)deactivate
{
  v3 = si_tracing_current_span();
  v15 = *v3;
  v16 = *(v3 + 16);
  v17 = *(v3 + 32);
  v4 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v6 = *(v3 + 8);
  *v3 = v4;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v6;
  *(v3 + 28) = 102;
  *(v3 + 32) = "[SPCoreSpotlightDatastore deactivate]";
  si_tracing_log_span_begin();
  v7 = *(self + 8);
  if ((v7 & 0x20) != 0)
  {
    v8 = +[SRResourcesManager sharedResourcesManager];
    [v8 loadAllParameters];

    +[SSRankingManager reloadRankingParametersFromTrial];
    +[SSRankingManager getSuggestionsRankingThresholds];
    SISetCompletionRankingWeights();
    v9 = +[PRSModelManager sharedModelManager];
    [v9 deactivate];

    v10 = +[PRSModelManager sharedModelManager];
    [v10 triggerUpdate];

    [(SPCoreSpotlightDatastore *)self updateMailVIPList];
    [objc_opt_class() updatePhoneFavorites];
    os_unfair_lock_lock(&unk_1000A84B8);
    v11 = qword_1000A84A0;
    v12 = qword_1000A8438;
    os_unfair_lock_unlock(&unk_1000A84B8);
    [PRSQueryRankingConfiguration updateMailVIP:v11 phoneFavorites:v12 meEmailAddresses:qword_1000A8430];
    +[PRSRankingItemRanker clearState];
    v13 = +[SDController workQueue];
    v14 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, &stru_100093380);
    tracing_dispatch_async();

    v7 = *(self + 8);
  }

  *(self + 8) = v7 & 0xDF;
  si_tracing_log_span_end();
  *v3 = v15;
  *(v3 + 16) = v16;
  *(v3 + 32) = v17;
}

- (void)clearInput
{
  v3 = si_tracing_current_span();
  v9 = *v3;
  v10 = *(v3 + 16);
  v11 = *(v3 + 32);
  v4 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v6 = *(v3 + 8);
  *v3 = v4;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v6;
  *(v3 + 28) = 102;
  *(v3 + 32) = "[SPCoreSpotlightDatastore clearInput]";
  si_tracing_log_span_begin();
  os_unfair_lock_lock(&unk_1000A84D0);
  v7 = +[SSRankingFeedbackHandler copyRenderEngagementCounts];
  renderEngagementCounts = self->_renderEngagementCounts;
  self->_renderEngagementCounts = v7;

  os_unfair_lock_unlock(&unk_1000A84D0);
  si_tracing_log_span_end();
  *v3 = v9;
  *(v3 + 16) = v10;
  *(v3 + 32) = v11;
}

- (void)updateCoreSuggestionsSection:(id)section
{
  sectionCopy = section;
  v3 = si_tracing_current_span();
  v4 = *(v3 + 16);
  v39 = *v3;
  v40 = v4;
  v41 = *(v3 + 32);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "[SPCoreSpotlightDatastore updateCoreSuggestionsSection:]";
  si_tracing_log_span_begin();
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  results = [sectionCopy results];
  v9 = [results countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v9)
  {
    relatedBundleID2 = 0;
    v11 = *v36;
    while (2)
    {
      v12 = 0;
      v13 = relatedBundleID2;
      do
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(results);
        }

        v14 = *(*(&v35 + 1) + 8 * v12);
        if (v13)
        {
          relatedBundleID = [*(*(&v35 + 1) + 8 * v12) relatedBundleID];
          v16 = [v13 isEqualToString:relatedBundleID];

          if ((v16 & 1) == 0)
          {

            goto LABEL_14;
          }
        }

        relatedBundleID2 = [v14 relatedBundleID];

        v12 = v12 + 1;
        v13 = relatedBundleID2;
      }

      while (v9 != v12);
      v9 = [results countByEnumeratingWithState:&v35 objects:v43 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

    if (relatedBundleID2)
    {
      v28 = [SDLocUtilities displayNameForBundleIdentifer:relatedBundleID2];
      if (v28)
      {
        v17 = [qword_1000A8478 localizedStringForKey:@"DOMAIN_PSEUDOCONTACT_TEMPLATE" value:&stru_100094040 table:@"Search"];
        v29 = [NSString stringWithFormat:v17, v28];

        v18 = 0;
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_14:

    relatedBundleID2 = 0;
  }

  v29 = [qword_1000A8478 localizedStringForKey:@"DOMAIN_PSEUDOCONTACT_APPS" value:&stru_100094040 table:@"Search"];
  v28 = 0;
  v18 = 1;
LABEL_16:
  [sectionCopy setTitle:v29];
  if (v18)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    results2 = [sectionCopy results];
    v20 = [results2 countByEnumeratingWithState:&v31 objects:v42 count:16];
    if (v20)
    {
      v21 = *v32;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(results2);
          }

          v23 = *(*(&v31 + 1) + 8 * i);
          relatedBundleID3 = [v23 relatedBundleID];

          if (relatedBundleID3)
          {
            relatedBundleID4 = [v23 relatedBundleID];
            v26 = [SDLocUtilities displayNameForBundleIdentifer:relatedBundleID4];
            [v23 setFootnote:v26];
          }
        }

        v20 = [results2 countByEnumeratingWithState:&v31 objects:v42 count:16];
      }

      while (v20);
    }
  }

  si_tracing_log_span_end();
  v27 = v40;
  *v3 = v39;
  *(v3 + 16) = v27;
  *(v3 + 32) = v41;
}

- (BOOL)topHitNominatedByPommesScoringforBundleIdentifier:(id)identifier
{
  v3 = qword_1000A84E8;
  identifierCopy = identifier;
  if (v3 != -1)
  {
    sub_1000631B4();
  }

  v5 = [qword_1000A84E0 containsObject:identifierCopy];

  return v5;
}

- (void)processSection:(id)section forQuery:(id)query rawQuery:(id)rawQuery usingTopHitThreshold:
{
  v7 = v6;
  v8 = v5;
  sectionCopy = section;
  queryCopy = query;
  rawQueryCopy = rawQuery;
  v12 = si_tracing_current_span();
  v13 = *(v12 + 16);
  v140 = *v12;
  v141 = v13;
  v142 = *(v12 + 32);
  v14 = *v12;
  spanid = si_tracing_calc_next_spanid();
  v16 = *(v12 + 8);
  *v12 = v14;
  *(v12 + 8) = spanid;
  *(v12 + 16) = v16;
  *(v12 + 28) = 102;
  *(v12 + 32) = "[SPCoreSpotlightDatastore processSection:forQuery:rawQuery:usingTopHitThreshold:]";
  si_tracing_log_span_begin();
  v112 = v12;
  isPeopleSearch = [queryCopy isPeopleSearch];
  v18 = SPMaxVisibleResultsCountPerSection();
  bundleIdentifier = [sectionCopy bundleIdentifier];
  IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos();

  v21 = 50;
  if (!IsSyndicatedPhotos)
  {
    v21 = v18;
  }

  if (!(isPeopleSearch & 1 | ((IsSyndicatedPhotos & 1) == 0)))
  {
    isPhotosSearch = [queryCopy isPhotosSearch];
    v21 = 20;
    if (isPhotosSearch)
    {
      v21 = 50;
    }
  }

  if (isPeopleSearch)
  {
    v21 = 50;
  }

  if (v21 <= 0)
  {
    v23 = 3;
  }

  else
  {
    v23 = v21;
  }

  [sectionCopy setMaxInitiallyVisibleResults:v23];
  bundleIdentifier2 = [sectionCopy bundleIdentifier];
  v114 = [SDLocUtilities displayNameForBundleIdentifer:bundleIdentifier2];

  if (v114)
  {
    [sectionCopy setTitle:v114];
  }

  bundleIdentifier3 = [sectionCopy bundleIdentifier];
  v26 = [bundleIdentifier3 isEqualToString:CoreSuggestionsBundleID];

  if (v26)
  {
    [(SPCoreSpotlightDatastore *)self updateCoreSuggestionsSection:sectionCopy];
  }

  title = [sectionCopy title];

  if (!title)
  {
    [sectionCopy setTitle:@"?"];
    [sectionCopy setResults:&__NSArray0__struct];
  }

  bundleIdentifier4 = [sectionCopy bundleIdentifier];
  v29 = [bundleIdentifier4 isEqual:SafariBundleID];

  v110 = v29;
  if (v29)
  {
    EvaluatorWithBlock = _MDCreateSimpleQueryEvaluatorWithBlock();
    if (EvaluatorWithBlock)
    {
      _MDSimpleQuerySetWidcardAttributes();
    }

    v113 = EvaluatorWithBlock;
    v119 = objc_alloc_init(NSMutableSet);
    v117 = objc_alloc_init(NSMutableDictionary);
    v115 = objc_alloc_init(NSMutableSet);
    v123 = objc_alloc_init(NSMutableDictionary);
    v121 = objc_alloc_init(NSMutableSet);
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    resultSet = [sectionCopy resultSet];
    v32 = [resultSet countByEnumeratingWithState:&v136 objects:v147 count:16];
    if (v32)
    {
      obj = resultSet;
      v130 = *v137;
      do
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v137 != v130)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(*(&v136 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            contentURL = [v34 contentURL];
            if (contentURL)
            {
              title2 = [v34 title];
              text = [title2 text];
              v38 = text == 0;

              if (!v38)
              {
                contentURL2 = [v34 contentURL];
                v40 = [NSURL URLWithString:contentURL2];

                if (!v40)
                {
                  goto LABEL_62;
                }

                v41 = [NSURLComponents componentsWithURL:v40 resolvingAgainstBaseURL:1];
                v42 = v41;
                if (!v41)
                {
                  goto LABEL_61;
                }

                [v41 setQuery:0];
                [v42 setFragment:0];
                v126 = v42;
                string = [v42 string];
                v128 = [v123 objectForKey:?];
                title3 = [v34 title];
                text2 = [title3 text];
                v127 = [v128 objectForKey:text2];

                if (v127)
                {
                  contentURL3 = [v127 contentURL];
                  v46 = [contentURL3 length];
                  contentURL4 = [v34 contentURL];
                  LOBYTE(v46) = v46 > [contentURL4 length];

                  if (v46)
                  {
                    [v121 addObject:v127];
                    title4 = [v34 title];
                    text3 = [title4 text];
                    [v128 setObject:v34 forKey:text3];
                    goto LABEL_59;
                  }

                  [v121 addObject:v34];
LABEL_60:

                  v42 = v126;
LABEL_61:

LABEL_62:
                  continue;
                }

                if (!v128)
                {
                  v128 = objc_alloc_init(NSMutableDictionary);
                  [v123 setObject:v128 forKey:string];
                }

                title5 = [v34 title];
                text4 = [title5 text];
                [v128 setObject:v34 forKey:text4];

                [v126 setPath:@"/"];
                v51 = [v126 URL];
                text3 = [v51 host];
                scheme = [v51 scheme];
                v122 = v51;
                if (scheme)
                {
                  v53 = text3 == 0;
                }

                else
                {
                  v53 = 1;
                }

                v54 = !v53;

                if ((v54 & 1) == 0)
                {
                  goto LABEL_58;
                }

                scheme2 = [v122 scheme];
                v118 = [scheme2 caseInsensitiveCompare:@"https"];

                title4 = v122;
                if ([v122 isEqual:v40])
                {
                  [v119 addObject:text3];
                  [v117 removeObjectForKey:text3];
                  [v115 removeObject:text3];
LABEL_59:

                  goto LABEL_60;
                }

                if ([v119 containsObject:text3])
                {
                  goto LABEL_59;
                }

                v56 = [v117 objectForKeyedSubscript:text3];
                if (v56)
                {
                  v57 = [v115 containsObject:text3];
                  if (v118)
                  {
                    v58 = 1;
                  }

                  else
                  {
                    v58 = v57;
                  }

                  if ((v113 == 0) | v58 & 1)
                  {
                    goto LABEL_58;
                  }
                }

                else if (!v113)
                {
LABEL_58:
                  title4 = v122;
                  goto LABEL_59;
                }

                if (_MDSimpleQueryObjectMatches())
                {
                  title6 = [v34 title];
                  text5 = [title6 text];
                  v61 = _MDStringPrefixOfString() == -1;

                  if (v61)
                  {
                    v62 = objc_opt_new();
                    v109 = objc_opt_new();
                    v107 = objc_opt_new();
                    [v107 setBundleIdentifier:SafariBundleID];
                    [v109 setThumbnail:v107];
                    v63 = [SFRichText textWithString:text3];
                    [v109 setTitle:v63];

                    v64 = [SFPunchout punchoutWithURL:v122];
                    v146 = v64;
                    v65 = [NSArray arrayWithObjects:&v146 count:1];
                    [v109 setPunchoutOptions:v65];

                    v66 = [SFRichText textWithString:text3];
                    v145 = v66;
                    v67 = [NSArray arrayWithObjects:&v145 count:1];
                    [v109 setDescriptions:v67];

                    v68 = objc_opt_new();
                    [v62 setInlineCard:v68];

                    v144 = v109;
                    v69 = [NSArray arrayWithObjects:&v144 count:1];
                    inlineCard = [v62 inlineCard];
                    [inlineCard setCardSections:v69];

                    absoluteString = [v122 absoluteString];
                    [v62 setContentURL:absoluteString];
                    [v62 setTopHit:{objc_msgSend(v34, "topHit")}];
                    [v62 setForceNoTopHit:{objc_msgSend(v34, "forceNoTopHit")}];
                    score = [v34 score];
                    [v62 setScore:{score, v72}];
                    protectionClass = [v34 protectionClass];
                    [v62 setProtectionClass:protectionClass];

                    [v34 rankingScore];
                    [v62 setRankingScore:?];
                    applicationBundleIdentifier = [v34 applicationBundleIdentifier];
                    [v62 setApplicationBundleIdentifier:applicationBundleIdentifier];

                    sectionBundleIdentifier = [v34 sectionBundleIdentifier];
                    [v62 setSectionBundleIdentifier:sectionBundleIdentifier];

                    resultBundleId = [v34 resultBundleId];
                    [v62 setResultBundleId:resultBundleId];

                    [v62 setType:{objc_msgSend(v34, "type")}];
                    [v62 setQueryId:{objc_msgSend(v34, "queryId")}];
                    [v62 setCompletedQuery:text3];
                    [v62 setCompletion:text3];
                    v77 = SyntheticBookmarkIdentifierPrefix;
                    identifier = [v34 identifier];
                    v79 = [(__CFString *)v77 stringByAppendingString:identifier];
                    [v62 setIdentifier:v79];

                    rankingItem = [v34 rankingItem];
                    [rankingItem attributes];
                    v81 = SSCompactRankingAttrsCopy();

                    SSCompactRankingAttrsUpdateValue();
                    SSCompactRankingAttrsUpdateValue();
                    SSCompactRankingAttrsUpdateValue();
                    v82 = [[PRSRankingItem alloc] initWithAttrs:v81];
                    [v62 setRankingItem:v82];

                    rankingItem2 = [v34 rankingItem];
                    l2FeatureVector = [rankingItem2 L2FeatureVector];
                    [l2FeatureVector originalL2Score];
                    v85 = v84;
                    rankingItem3 = [v62 rankingItem];
                    l2FeatureVector2 = [rankingItem3 L2FeatureVector];
                    LODWORD(v88) = v85;
                    [l2FeatureVector2 setOriginalL2Score:v88];

                    [v117 setObject:v62 forKey:text3];
                    if (!v118)
                    {
                      [v115 addObject:text3];
                    }
                  }
                }

                goto LABEL_58;
              }
            }
          }
        }

        resultSet = obj;
        v32 = [obj countByEnumeratingWithState:&v136 objects:v147 count:16];
      }

      while (v32);
    }

    if (v113)
    {
      _MDSimpleQueryDeallocate();
    }

    if ([v117 count])
    {
      allValues = [v117 allValues];
      resultSet2 = [sectionCopy resultSet];
      [resultSet2 addObjectsFromArray:allValues];
    }

    resultSet3 = [sectionCopy resultSet];
    [resultSet3 minusSet:v121];
  }

  v131 = SSEnableSpotlightTopHitPersonalizedRanking();
  if (v131)
  {
    bundleIdentifier5 = [sectionCopy bundleIdentifier];
    v93 = [(SPCoreSpotlightDatastore *)self topHitNominatedByPommesScoringforBundleIdentifier:bundleIdentifier5];
  }

  else
  {
    v93 = 0;
  }

  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  resultSet4 = [sectionCopy resultSet];
  v95 = [resultSet4 countByEnumeratingWithState:&v132 objects:v143 count:16];
  if (v95)
  {
    v96 = *v133;
    do
    {
      for (j = 0; j != v95; j = j + 1)
      {
        if (*v133 != v96)
        {
          objc_enumerationMutation(resultSet4);
        }

        v98 = *(*(&v132 + 1) + 8 * j);
        score2 = [v98 score];
        if (score2 & v8 | v100 & v7)
        {
          v101 = v93;
        }

        else
        {
          v101 = 1;
        }

        if ((v101 & 1) == 0 && [v98 topHit] != 2)
        {
          [v98 setTopHit:1];
        }

        bundleIdentifier6 = [sectionCopy bundleIdentifier];
        [v98 setSectionBundleIdentifier:bundleIdentifier6];
      }

      v95 = [resultSet4 countByEnumeratingWithState:&v132 objects:v143 count:16];
    }

    while (v95);
  }

  if (!(v131 & 1 | ((v110 & 1) == 0)))
  {
    queryContext = [queryCopy queryContext];
    searchString = [queryContext searchString];
    [SSRankingManager determineTopHitsForSafariSection:sectionCopy forQuery:searchString];

    [SSRankingManager moveSafariTopHitsToTopOfSection:sectionCopy];
  }

  [queryCopy currentTime];
  [(SPCoreSpotlightDatastore *)self sortResultsInSection:sectionCopy currentTime:?];
  [(SPCoreSpotlightDatastore *)self processUserActivitiesForSection:sectionCopy];
  [(SPCoreSpotlightDatastore *)self removeDuplicatesInSection:sectionCopy query:queryCopy];

  si_tracing_log_span_end();
  v105 = v141;
  *v112 = v140;
  *(v112 + 16) = v105;
  *(v112 + 32) = v142;
}

- (void)hideIrrelevantCalendarResultsForSection:(id)section
{
  sectionCopy = section;
  v4 = si_tracing_current_span();
  v5 = *(v4 + 16);
  v46 = *v4;
  v47 = v5;
  v48 = *(v4 + 32);
  v6 = *v4;
  spanid = si_tracing_calc_next_spanid();
  v8 = *(v4 + 8);
  *v4 = v6;
  *(v4 + 8) = spanid;
  *(v4 + 16) = v8;
  *(v4 + 28) = 102;
  *(v4 + 32) = "[SPCoreSpotlightDatastore hideIrrelevantCalendarResultsForSection:]";
  si_tracing_log_span_begin();
  v28 = v4;
  v32 = objc_alloc_init(NSMutableArray);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  resultSet = [sectionCopy resultSet];
  v10 = [resultSet countByEnumeratingWithState:&v42 objects:v49 count:16];
  v29 = sectionCopy;
  v11 = 0;
  if (v10)
  {
    v33 = 0;
    v34 = 0;
    obj = resultSet;
    v31 = 0;
    v12 = 0;
    v13 = 0;
    v35 = *v43;
    while (1)
    {
      v36 = v10;
      v14 = 0;
      v15 = v11;
      do
      {
        if (*v43 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v42 + 1) + 8 * v14);
        v40 = -1;
        v41 = -1;
        v38 = -1;
        v39 = -1;
        v37 = -1;
        interestingDate = [v16 interestingDate];
        compatibilityTitle = [v16 compatibilityTitle];
        if (!interestingDate)
        {
          v11 = v15;
LABEL_29:
          [v32 addObject:v16];
          goto LABEL_30;
        }

        v19 = +[SSDateFormatManager calendar];
        [v19 getEra:0 year:&v41 month:&v40 day:&v39 fromDate:interestingDate];

        v20 = +[SSDateFormatManager calendar];
        [v20 getEra:0 yearForWeekOfYear:0 weekOfYear:&v37 weekday:&v38 fromDate:interestingDate];

        domainIdentifier = [v16 domainIdentifier];
        v11 = domainIdentifier;
        v22 = 0;
        if (compatibilityTitle && domainIdentifier)
        {
          if ([v15 isEqualToString:domainIdentifier] && objc_msgSend(v13, "isEqualToString:", compatibilityTitle))
          {
            v22 = v38 == v33 || v39 == v34;
            if (v41 == v12 && v40 == v31)
            {
              v25 = v39 == v34 + 1 || v39 == v34 - 1;
              v22 |= v25;
            }
          }

          else
          {
            v22 = 0;
          }
        }

        v26 = compatibilityTitle;

        v33 = v38;
        v34 = v39;
        v31 = v40;
        v13 = v26;
        v12 = v41;
        if ((v22 & 1) == 0)
        {
          goto LABEL_29;
        }

LABEL_30:

        v14 = v14 + 1;
        v15 = v11;
      }

      while (v36 != v14);
      resultSet = obj;
      v10 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
      if (!v10)
      {
        goto LABEL_34;
      }
    }
  }

  v13 = 0;
LABEL_34:

  [v29 clearResults];
  [v29 addResultsFromArray:v32];

  si_tracing_log_span_end();
  v27 = v47;
  *v28 = v46;
  *(v28 + 16) = v27;
  *(v28 + 32) = v48;
}

- (void)removeDuplicatesInSection:(id)section query:(id)query
{
  sectionCopy = section;
  queryCopy = query;
  v7 = si_tracing_current_span();
  v8 = *(v7 + 16);
  v81 = *v7;
  v82 = v8;
  v83 = *(v7 + 32);
  v9 = *v7;
  spanid = si_tracing_calc_next_spanid();
  v11 = *(v7 + 8);
  *v7 = v9;
  *(v7 + 8) = spanid;
  *(v7 + 16) = v11;
  *(v7 + 28) = 102;
  *(v7 + 32) = "[SPCoreSpotlightDatastore removeDuplicatesInSection:query:]";
  si_tracing_log_span_begin();
  v63 = v7;
  results = [sectionCopy results];
  v13 = [results copy];

  v14 = objc_alloc_init(NSMutableSet);
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = v13;
  v15 = [obj countByEnumeratingWithState:&v77 objects:v90 count:16];
  if (v15)
  {
    v16 = *v78;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v78 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v77 + 1) + 8 * i);
        sectionBundleIdentifier = [v18 sectionBundleIdentifier];
        externalIdentifier = [v18 externalIdentifier];
        if (externalIdentifier)
        {
          if ([v14 containsObject:externalIdentifier])
          {
            [sectionCopy removeResults:v18];
            v19 = SPLogForSPLogCategoryQuery();
            v20 = v19;
            if (gSPLogDebugAsDefault)
            {
              v21 = OS_LOG_TYPE_DEFAULT;
            }

            else
            {
              v21 = OS_LOG_TYPE_DEBUG;
            }

            if (os_log_type_enabled(v19, v21))
            {
              *buf = 138412546;
              v87 = sectionBundleIdentifier;
              v88 = 2112;
              v89 = externalIdentifier;
              _os_log_impl(&_mh_execute_header, v20, v21, "Remove duplicate for %@ / %@", buf, 0x16u);
            }
          }

          else
          {
            [v14 addObject:externalIdentifier];
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v77 objects:v90 count:16];
    }

    while (v15);
  }

  queryContext = [queryCopy queryContext];
  if ([queryContext isSearchToolClient])
  {
LABEL_34:
  }

  else
  {
    bundleIdentifier = [sectionCopy bundleIdentifier];
    v23 = [bundleIdentifier isEqualToString:PRSRankingMessagesBundleString];

    if (v23)
    {
      [v14 removeAllObjects];
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      queryContext = obj;
      v24 = [queryContext countByEnumeratingWithState:&v73 objects:v85 count:16];
      if (!v24)
      {
        goto LABEL_34;
      }

      accountIdentifier = 0;
      v26 = *v74;
      sectionBundleIdentifier = &OBJC_IVAR___SPParsecDatastore__sessionStartTime;
      externalIdentifier = &OBJC_IVAR___SPParsecDatastore__sessionStartTime;
      while (1)
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v74 != v26)
          {
            objc_enumerationMutation(queryContext);
          }

          v28 = *(*(&v73 + 1) + 8 * j);
          domainIdentifier = [v28 domainIdentifier];

          v30 = [domainIdentifier isEqualToString:MessagesAttachmentDomain];
          if ((v30 | [domainIdentifier isEqualToString:MessagesChatDomain]))
          {
            accountIdentifier = [v28 accountIdentifier];

            if (!accountIdentifier)
            {
              continue;
            }
          }

          else
          {
            accountIdentifier = domainIdentifier;
            if (!domainIdentifier)
            {
              continue;
            }
          }

          if ([v14 containsObject:accountIdentifier])
          {
            [sectionCopy removeResults:v28];
          }

          else
          {
            [v14 addObject:accountIdentifier];
          }
        }

        v24 = [queryContext countByEnumeratingWithState:&v73 objects:v85 count:16];
        if (!v24)
        {

          goto LABEL_34;
        }
      }
    }
  }

  queryContext2 = [queryCopy queryContext];
  if ([queryContext2 isSearchToolClient])
  {
    goto LABEL_51;
  }

  bundleIdentifier2 = [sectionCopy bundleIdentifier];
  v33 = [bundleIdentifier2 isEqualToString:PRSRankingPodcastsBundleString];

  if (v33)
  {
    [v14 removeAllObjects];
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    queryContext2 = obj;
    v34 = [queryContext2 countByEnumeratingWithState:&v69 objects:v84 count:16];
    if (!v34)
    {
      goto LABEL_51;
    }

    v35 = *v70;
    while (1)
    {
      for (k = 0; k != v34; k = k + 1)
      {
        if (*v70 != v35)
        {
          objc_enumerationMutation(queryContext2);
        }

        externalIdentifier = *(*(&v69 + 1) + 8 * k);
        stringForDedupe = [externalIdentifier stringForDedupe];
        if (stringForDedupe)
        {
          domainIdentifier2 = [externalIdentifier domainIdentifier];
          if ([domainIdentifier2 isEqualToString:@"com.apple.siri.interactions"])
          {
          }

          else
          {
            domainIdentifier3 = [externalIdentifier domainIdentifier];
            sectionBundleIdentifier = [domainIdentifier3 isEqualToString:@"com.apple.siri.upcomingmedia"];

            if (!sectionBundleIdentifier)
            {
              continue;
            }
          }

          stringForDedupe2 = [externalIdentifier stringForDedupe];
          v41 = [v14 containsObject:stringForDedupe2];

          if (v41)
          {
            [sectionCopy removeResults:externalIdentifier];
          }

          else
          {
            stringForDedupe3 = [externalIdentifier stringForDedupe];
            [v14 addObject:stringForDedupe3];
          }
        }
      }

      v34 = [queryContext2 countByEnumeratingWithState:&v69 objects:v84 count:16];
      if (!v34)
      {
LABEL_51:

        break;
      }
    }
  }

  bundleIdentifier3 = [sectionCopy bundleIdentifier];
  v44 = SSPommesRankingForSectionBundle();

  if (v44)
  {
    queryContext3 = [queryCopy queryContext];
    searchString = [queryContext3 searchString];
    SSRearrangeDuplicatesInSection();
  }

  if (SSEnableSpotlightTopHitPersonalizedRanking())
  {
    queryContext4 = [queryCopy queryContext];
    searchEntities = [queryContext4 searchEntities];
    v49 = [searchEntities count];
    if (v49 && ([queryCopy queryContext], sectionBundleIdentifier = objc_claimAutoreleasedReturnValue(), objc_msgSend(sectionBundleIdentifier, "searchEntities"), queryContext2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(queryContext2, "lastObject"), externalIdentifier = objc_claimAutoreleasedReturnValue(), (objc_msgSend(externalIdentifier, "isScopedSearch") & 1) != 0))
    {
      isAdvancedSyntax = 1;
    }

    else
    {
      queryContext5 = [queryCopy queryContext];
      isAdvancedSyntax = [queryContext5 isAdvancedSyntax];

      if (!v49)
      {
LABEL_60:

        queryContext6 = [queryCopy queryContext];
        searchString2 = [queryContext6 searchString];
        queryContext7 = [queryCopy queryContext];
        queryIdent = [queryContext7 queryIdent];
        queryContext8 = [queryCopy queryContext];
        searchEntities2 = [queryContext8 searchEntities];
        v57 = [searchEntities2 count];
        queryContext9 = [queryCopy queryContext];
        [queryContext9 currentTime];
        v60 = v59;
        queryContext10 = [queryCopy queryContext];
        +[PRSRankingItemRanker thresholdResultsInSection:userQuery:queryID:isEntitiesSearch:currentTime:isScopedSearch:isSearchToolClient:](PRSRankingItemRanker, "thresholdResultsInSection:userQuery:queryID:isEntitiesSearch:currentTime:isScopedSearch:isSearchToolClient:", sectionCopy, searchString2, queryIdent, v57 != 0, isAdvancedSyntax, [queryContext10 isSearchToolClient], v60);

        goto LABEL_61;
      }
    }

    goto LABEL_60;
  }

LABEL_61:

  si_tracing_log_span_end();
  v62 = v82;
  *v63 = v81;
  *(v63 + 16) = v62;
  *(v63 + 32) = v83;
}

- (void)processUserActivitiesForSection:(id)section
{
  sectionCopy = section;
  v3 = si_tracing_current_span();
  v4 = *(v3 + 16);
  v118 = *v3;
  v119 = v4;
  v120 = *(v3 + 32);
  v5 = *v3;
  spanid = si_tracing_calc_next_spanid();
  v7 = *(v3 + 8);
  *v3 = v5;
  *(v3 + 8) = spanid;
  *(v3 + 16) = v7;
  *(v3 + 28) = 102;
  *(v3 + 32) = "[SPCoreSpotlightDatastore processUserActivitiesForSection:]";
  si_tracing_log_span_begin();
  v89 = v3;
  v95 = objc_alloc_init(NSMutableDictionary);
  v93 = objc_alloc_init(NSMutableSet);
  results = [sectionCopy results];
  v9 = [results copy];

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v114 objects:v127 count:16];
  if (v11)
  {
    v12 = *v115;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v115 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v114 + 1) + 8 * i);
        externalIdentifier = [v14 externalIdentifier];
        if (!externalIdentifier)
        {
          v16 = SPLogForSPLogCategoryDefault();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v126 = v14;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "result missing identifier %@", buf, 0xCu);
          }
        }

        userActivityRequiredString = [v14 userActivityRequiredString];
        if (externalIdentifier)
        {
          v18 = userActivityRequiredString == 0;
        }

        else
        {
          v18 = 0;
        }

        v19 = v18;

        if (v19)
        {
          [v95 setObject:v14 forKey:externalIdentifier];
          compatibilityTitle = [v14 compatibilityTitle];
          if (compatibilityTitle)
          {
            [v93 addObject:compatibilityTitle];
          }
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v114 objects:v127 count:16];
    }

    while (v11);
  }

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v21 = v10;
  v22 = [v21 countByEnumeratingWithState:&v110 objects:v124 count:16];
  if (v22)
  {
    v23 = *v111;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v111 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v110 + 1) + 8 * j);
        relatedUniqueIdentifier = [v25 relatedUniqueIdentifier];
        if (relatedUniqueIdentifier)
        {
          userActivityRequiredString2 = [v25 userActivityRequiredString];
          v28 = userActivityRequiredString2 == 0;

          if (v28)
          {
            v29 = [v95 objectForKey:relatedUniqueIdentifier];
            v30 = v29 == 0;

            if (v30)
            {
              [v95 setObject:v25 forKey:relatedUniqueIdentifier];
              compatibilityTitle2 = [v25 compatibilityTitle];
              if (compatibilityTitle2)
              {
                [v93 addObject:compatibilityTitle2];
              }
            }
          }
        }
      }

      v22 = [v21 countByEnumeratingWithState:&v110 objects:v124 count:16];
    }

    while (v22);
  }

  v90 = objc_alloc_init(NSMutableDictionary);
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  obj = v21;
  v32 = [obj countByEnumeratingWithState:&v106 objects:v123 count:16];
  if (v32)
  {
    v96 = *v107;
    do
    {
      v97 = v32;
      for (k = 0; k != v97; k = k + 1)
      {
        if (*v107 != v96)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v106 + 1) + 8 * k);
        compatibilityTitle3 = [v34 compatibilityTitle];
        if (!compatibilityTitle3 && ([v34 hasDetail] & 1) == 0)
        {
          sectionBundleIdentifier = [v34 sectionBundleIdentifier];
          IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos();
          if (IsSyndicatedPhotos && ([v34 contentType], v91 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v91, "isEqualToString:", @"public.item")))
          {
          }

          else
          {
            identifier = [v34 identifier];
            v39 = [identifier hasPrefix:SyntheticBookmarkIdentifierPrefix];

            if (IsSyndicatedPhotos)
            {
            }

            if ((v39 & 1) == 0)
            {
              [sectionCopy removeResults:v34];
              goto LABEL_68;
            }
          }
        }

        userActivityRequiredString3 = [v34 userActivityRequiredString];

        if (userActivityRequiredString3)
        {
          relatedUniqueIdentifier2 = [v34 relatedUniqueIdentifier];
          if (relatedUniqueIdentifier2)
          {
            fileProviderIdentifier = [v34 fileProviderIdentifier];

            if (!fileProviderIdentifier)
            {
              v43 = [v95 objectForKey:relatedUniqueIdentifier2];
              v44 = v43;
              if (v43)
              {
                score = [v43 score];
                v47 = v46;
                score2 = [v34 score];
                [v44 setScore:{__PAIR128__(v49, score2) + __PAIR128__(v47, score)}];
                [sectionCopy removeResults:v34];
                if (([v44 hasAssociatedUserActivity] & 1) == 0)
                {
                  [v44 setPubliclyIndexable:{objc_msgSend(v34, "publiclyIndexable")}];
                  [v44 setHasAssociatedUserActivity:1];
                  launchDates = [v34 launchDates];
                  [v44 setLaunchDates:launchDates];
                  goto LABEL_65;
                }
              }

              else
              {
                v51 = [v90 objectForKey:relatedUniqueIdentifier2];
                launchDates = v51;
                if (v51)
                {
                  score3 = [v51 score];
                  v54 = v53;
                  score4 = [v34 score];
                  v56 = score4;
                  v58 = v57;
                  if (__PAIR128__(v57, score4) >= __PAIR128__(v54, score3))
                  {
                    buddyScore = [v34 buddyScore];
                    [v34 setBuddyScore:{__PAIR128__(v62, buddyScore) + __PAIR128__(v54, score3)}];
                    [sectionCopy removeResults:launchDates];
                    [v90 setObject:v34 forKey:relatedUniqueIdentifier2];
                  }

                  else
                  {
                    buddyScore2 = [launchDates buddyScore];
                    [launchDates setBuddyScore:{__PAIR128__(v60, buddyScore2) + __PAIR128__(v58, v56)}];
                    [sectionCopy removeResults:v34];
                  }
                }

                else
                {
                  [v90 setObject:v34 forKey:relatedUniqueIdentifier2];
                }

LABEL_65:
              }
            }
          }

          else if (compatibilityTitle3)
          {
            if ([v93 containsObject:compatibilityTitle3] && (objc_msgSend(v34, "hasDetail") & 1) == 0)
            {
              [sectionCopy removeResults:v34];
            }

            else
            {
              [v93 addObject:compatibilityTitle3];
            }
          }
        }

LABEL_68:
      }

      v32 = [obj countByEnumeratingWithState:&v106 objects:v123 count:16];
    }

    while (v32);
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  resultSet = [sectionCopy resultSet];
  v64 = [resultSet countByEnumeratingWithState:&v102 objects:v122 count:16];
  if (v64)
  {
    v65 = *v103;
    do
    {
      for (m = 0; m != v64; m = m + 1)
      {
        if (*v103 != v65)
        {
          objc_enumerationMutation(resultSet);
        }

        v67 = *(*(&v102 + 1) + 8 * m);
        score5 = [v67 score];
        v70 = v69;
        buddyScore3 = [v67 buddyScore];
        [v67 setScore:{__PAIR128__(v72, buddyScore3) + __PAIR128__(v70, score5)}];
      }

      v64 = [resultSet countByEnumeratingWithState:&v102 objects:v122 count:16];
    }

    while (v64);
  }

  v73 = objc_alloc_init(NSMutableDictionary);
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v74 = obj;
  v75 = [v74 countByEnumeratingWithState:&v98 objects:v121 count:16];
  if (v75)
  {
    v76 = *v99;
    do
    {
      for (n = 0; n != v75; n = n + 1)
      {
        if (*v99 != v76)
        {
          objc_enumerationMutation(v74);
        }

        v78 = *(*(&v98 + 1) + 8 * n);
        itemIdentifier = [v78 itemIdentifier];

        if (itemIdentifier)
        {
          itemIdentifier2 = [v78 itemIdentifier];
          v81 = [v73 objectForKey:itemIdentifier2];

          if (v81)
          {
            score6 = [v81 score];
            v84 = v83;
            score7 = [v78 score];
            if (__PAIR128__(v86, score7) < __PAIR128__(v84, score6))
            {
              [sectionCopy removeResults:v78];
LABEL_88:

              continue;
            }

            [sectionCopy removeResults:v81];
          }

          itemIdentifier3 = [v78 itemIdentifier];
          [v73 setObject:v78 forKey:itemIdentifier3];

          goto LABEL_88;
        }
      }

      v75 = [v74 countByEnumeratingWithState:&v98 objects:v121 count:16];
    }

    while (v75);
  }

  si_tracing_log_span_end();
  v88 = v119;
  *v89 = v118;
  *(v89 + 16) = v88;
  *(v89 + 32) = v120;
}

- (void)sortResultsInSection:(id)section currentTime:(double)time
{
  sectionCopy = section;
  v6 = si_tracing_current_span();
  v13 = *v6;
  v14 = *(v6 + 16);
  v15 = *(v6 + 32);
  v7 = *v6;
  spanid = si_tracing_calc_next_spanid();
  v9 = *(v6 + 8);
  *v6 = v7;
  *(v6 + 8) = spanid;
  *(v6 + 16) = v9;
  *(v6 + 28) = 102;
  *(v6 + 32) = "[SPCoreSpotlightDatastore sortResultsInSection:currentTime:]";
  si_tracing_log_span_begin();
  [PRSRankingItemRanker sortResultsInSection:sectionCopy currentTime:time];
  bundleIdentifier = [sectionCopy bundleIdentifier];
  v11 = [bundleIdentifier isEqual:SSCalendarBundleIdentifier];

  if (v11)
  {
    [(SPCoreSpotlightDatastore *)self hideIrrelevantCalendarResultsForSection:sectionCopy];
  }

  si_tracing_log_span_end();
  *v6 = v13;
  *(v6 + 16) = v14;
  *(v6 + 32) = v15;
}

- (id)rankingQueriesAddingQueryTerms:(id)terms rankingQueries:(id)queries
{
  termsCopy = terms;
  queriesCopy = queries;
  v7 = [termsCopy count];
  if (v7)
  {
    v8 = [termsCopy objectAtIndex:v7 - 1];
    v9 = [queriesCopy arrayByAddingObject:v8];

    queriesCopy = v9;
  }

  return queriesCopy;
}

- (id)_topHitQueryParametersForSearchString:(id)string searchEntities:(id)entities contextIdentifier:(id)identifier queryKind:(unint64_t)kind needsFuzzy:(BOOL)fuzzy checkForMath:(BOOL)math isCJK:(BOOL)k disableNLP:(BOOL)self0 disableOCR:(BOOL)self1 previousQueryKind:(unint64_t)self2 clientBundle:(id)self3 keyboardLanguage:(id)self4 queryID:(int64_t)self5
{
  mathCopy = math;
  fuzzyCopy = fuzzy;
  stringCopy = string;
  entitiesCopy = entities;
  identifierCopy = identifier;
  bundleCopy = bundle;
  languageCopy = language;
  v18 = si_tracing_current_span();
  v19 = *(v18 + 16);
  v147 = *v18;
  v148 = v19;
  v149 = *(v18 + 32);
  v20 = *v18;
  spanid = si_tracing_calc_next_spanid();
  v22 = *(v18 + 8);
  *v18 = v20;
  *(v18 + 8) = spanid;
  *(v18 + 16) = v22;
  *(v18 + 28) = 102;
  *(v18 + 32) = "[SPCoreSpotlightDatastore _topHitQueryParametersForSearchString:searchEntities:contextIdentifier:queryKind:needsFuzzy:checkForMath:isCJK:disableNLP:disableOCR:previousQueryKind:clientBundle:keyboardLanguage:queryID:]";
  si_tracing_log_span_begin();
  v119 = v18;
  v23 = SPLogForSPLogCategoryDefault();
  v24 = v23;
  if (gSPLogDebugAsDefault)
  {
    v25 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v25 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v23, v25))
  {
    *buf = 67109120;
    LODWORD(v151) = qos_class_self();
    _os_log_impl(&_mh_execute_header, v24, v25, "[SPCoreSpotlightDatastore]QOS _topHitQueryParameters: %d", buf, 8u);
  }

  v26 = objc_opt_new();
  [v26 setObject:&__kCFBooleanFalse forKey:@"isNLQuery"];
  [v26 setObject:&__kCFBooleanFalse forKey:@"isAdvancedSyntax"];
  [v26 setObject:&__kCFBooleanFalse forKey:@"isMath"];
  [v26 setObject:&__NSArray0__struct forKey:@"suggestions"];
  [v26 setObject:&__NSDictionary0__struct forKey:@"rankCategories"];
  [v26 setObject:&__NSDictionary0__struct forKey:@"rankTerms"];
  [v26 setObject:&__NSArray0__struct forKey:@"queryTerms"];
  [v26 setObject:&stru_100094040 forKey:@"query"];
  [v26 setObject:&stru_100094040 forKey:@"completionString"];
  [v26 setObject:&off_100098AC8 forKey:@"completionCount"];
  [v26 setObject:&off_100098AC8 forKey:@"completionOptions"];
  [v26 setObject:&__NSArray0__struct forKey:@"completionAttributes"];
  v127 = v26;
  if (!qword_1000A8490 && !qword_1000A8428)
  {
    dispatch_group_wait(qword_1000A8498, 0xFFFFFFFFFFFFFFFFLL);
  }

  v27 = stringCopy;
  v115 = [v27 length];
  v126 = v27;
  v114 = [v27 length];
  v134 = objc_opt_new();
  v133 = objc_opt_new();
  v124 = objc_opt_new();
  v132 = objc_opt_new();
  v131 = objc_opt_new();
  if (entitiesCopy && [entitiesCopy count] && objc_msgSend(entitiesCopy, "count"))
  {
    v145 = 0u;
    v146 = 0u;
    v144 = 0u;
    v143 = 0u;
    obj = entitiesCopy;
    v28 = [obj countByEnumeratingWithState:&v143 objects:v155 count:16];
    if (v28)
    {
      v29 = *v144;
      queryString = v27;
      do
      {
        v31 = 0;
        v32 = queryString;
        do
        {
          if (*v144 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v143 + 1) + 8 * v31);
          queryString = [v33 queryString];

          spotlightQueryString = [v33 spotlightQueryString];
          if (spotlightQueryString)
          {
            [v134 addObject:spotlightQueryString];
          }

          spotlightFilterQueries = [v33 spotlightFilterQueries];
          if (spotlightFilterQueries)
          {
            [v133 addObjectsFromArray:spotlightFilterQueries];
          }

          spotlightRankCategories = [v33 spotlightRankCategories];
          if (spotlightRankCategories)
          {
            [v131 addEntriesFromDictionary:spotlightRankCategories];
          }

          spotlightRankTerms = [v33 spotlightRankTerms];
          if (spotlightRankTerms)
          {
            [v132 addEntriesFromDictionary:spotlightRankTerms];
          }

          isScopedSearch = [v33 isScopedSearch];
          bOOLValue2 = objc_msgSend_isNLPEntitySearch(v33);

          v31 = v31 + 1;
          v32 = queryString;
        }

        while (v28 != v31);
        v28 = [obj countByEnumeratingWithState:&v143 objects:v155 count:16];
      }

      while (v28);
    }

    else
    {
      bOOLValue2 = 0;
      isScopedSearch = 0;
      queryString = v126;
    }

    v41 = [v132 keysSortedByValueUsingSelector:"compare:"];
    [v124 addObjectsFromArray:v41];

    v40 = queryString;
  }

  else
  {
    bOOLValue2 = 0;
    isScopedSearch = 0;
    v40 = v126;
  }

  v117 = v40;
  if (![v40 length] || !((objc_msgSend(v134, "count") == 0) | isScopedSearch & 1))
  {
    bOOLValue = 0;
    obja = v126;
    goto LABEL_124;
  }

  if (kind - 1 < 8 && ((0xE3u >> (kind - 1)) & 1) != 0)
  {
    v42 = 0;
    goto LABEL_48;
  }

  if (queryKind - 1 < 2)
  {
    if (kind != 10)
    {
      goto LABEL_43;
    }

LABEL_42:
    v42 = 0;
    goto LABEL_48;
  }

  if (kind == 10 && queryKind - 6 < 3)
  {
    goto LABEL_42;
  }

LABEL_43:
  if (kind == 11 && bundleCopy)
  {
    v42 = 0;
    if (fuzzyCopy)
    {
      v42 = [bundleCopy isEqualToString:PRSRankingSearchBundleString] ^ 1;
    }
  }

  else
  {
    v42 = 0;
  }

LABEL_48:
  BYTE3(v104) = v42;
  BYTE2(v104) = mathCopy;
  BYTE1(v104) = isScopedSearch;
  LOBYTE(v104) = r;
  v43 = SSDefaultQueryParseResultsForQueryString();
  v111 = v43;
  if (v43)
  {
    v44 = [v43 objectForKeyedSubscript:{@"query", v104}];
    if (SSEnableAppSearchV2() && (kind > 0xA || ((1 << kind) & 0x430) == 0))
    {
      v45 = SPFastApplicationsNamesGetNoBuild();
      if ([v45 count])
      {
        v46 = getAppCorrectionIfAny();
        v109 = v45;
        if ([v46 count])
        {
          v141 = 0u;
          v142 = 0u;
          v139 = 0u;
          v140 = 0u;
          objb = v46;
          v47 = [objb countByEnumeratingWithState:&v139 objects:v154 count:16];
          v105 = v46;
          if (v47)
          {
            v48 = *v140;
            do
            {
              v49 = v47;
              v50 = 0;
              v51 = v44;
              do
              {
                if (*v140 != v48)
                {
                  objc_enumerationMutation(objb);
                }

                v52 = *(*(&v139 + 1) + 8 * v50);
                v53 = SPLogForSPLogCategoryDefault();
                if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                {
                  v54 = CSRedactString();
                  v55 = CSRedactString();
                  *buf = 138412546;
                  v151 = v54;
                  v152 = 2112;
                  v153 = v55;
                  _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] <AppSpellCorrection> query: %@, app correction: %@", buf, 0x16u);
                }

                v44 = [v51 stringByAppendingFormat:@" || ((kMDItemDisplayName=%@cwd) && (kMDItemContentType == com.apple.application", v52];

                v50 = v50 + 1;
                v51 = v44;
              }

              while (v49 != v50);
              v47 = [objb countByEnumeratingWithState:&v139 objects:v154 count:16];
            }

            while (v47);
          }

          v46 = v105;
        }

        v45 = v109;
      }
    }

    obja = [v111 objectForKeyedSubscript:@"completionString"];

    if (mathCopy)
    {
      v56 = [v111 objectForKeyedSubscript:@"isMath"];
      if (v56)
      {
        v57 = [v111 objectForKeyedSubscript:@"isMath"];
        bOOLValue = [v57 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    v44 = 0;
    bOOLValue = 0;
    obja = v126;
  }

  v58 = 0;
  v59 = 0;
  if (v115 >= 3 && !p)
  {
    v60 = +[NSMutableDictionary dictionary];
    v61 = v60;
    if (identifierCopy)
    {
      [v60 setObject:identifierCopy forKeyedSubscript:@"kMDQueryOptionContextIdentifier"];
    }

    if ([languageCopy length])
    {
      [v61 setValue:languageCopy forKey:@"keyboardLanguage"];
    }

    v62 = [NSNumber numberWithInteger:d];
    [v61 setValue:v62 forKey:@"queryID"];

    v106 = SSGetCurrentLocale();
    if (v106)
    {
      languageIdentifier = [v106 languageIdentifier];
      v64 = [languageIdentifier length] == 0;

      if (!v64)
      {
        languageIdentifier2 = [v106 languageIdentifier];
        [v61 setValue:languageIdentifier2 forKey:@"localeLanguage"];
      }
    }

    v66 = bundleCopy;
    if ([v66 hasPrefix:@"com.apple.omniSearch"] & 1) != 0 || (objc_msgSend(v66, "hasPrefix:", @"com.apple.intelligenceflow"))
    {
    }

    else
    {
      v90 = [v66 hasPrefix:@"com.apple.ondeviceeval"];

      if (!v90)
      {
        goto LABEL_86;
      }
    }

    [v61 setValue:&__kCFBooleanTrue forKey:@"isSearchToolClient"];
LABEL_86:
    v67 = SSQueryParseResultsForQueryString();
    v68 = v67;
    if (v67)
    {
      v113 = [v67 objectForKeyedSubscript:@"nlQuery"];
      v59 = [v68 objectForKeyedSubscript:@"annQuery"];
      v69 = [v68 objectForKeyedSubscript:@"isNLQuery"];
      bOOLValue2 = [v69 BOOLValue];

      v110 = [v68 objectForKeyedSubscript:@"rankCategories"];
      v70 = [v68 objectForKeyedSubscript:@"rankTerms"];
      v108 = [v68 objectForKeyedSubscript:@"queryTerms"];
      v107 = [v68 objectForKeyedSubscript:@"suggestions"];
      v71 = [v68 objectForKeyedSubscript:@"filterQueries"];
      if ([v71 count])
      {
        [v127 setObject:v71 forKey:@"filterQueries"];
      }

      v72 = [v68 objectForKeyedSubscript:@"queryUnderstandingOutput"];
      [v127 setObject:v72 forKey:@"queryUnderstandingOutput"];
      v58 = v72 != 0;
    }

    else
    {
      v59 = 0;
      v58 = 0;
      v113 = 0;
      v107 = 0;
      v108 = 0;
      v70 = 0;
      v110 = 0;
    }

    goto LABEL_93;
  }

  v68 = 0;
  v113 = 0;
  v107 = 0;
  v108 = 0;
  v70 = 0;
  v110 = 0;
LABEL_93:
  if (!v44)
  {
    v138 = 0;
    v73 = SSPhraseQueryEscapeString();
    v74 = 0;
    if (v115 > 2)
    {
      v75 = 1;
    }

    else
    {
      v75 = isScopedSearch;
    }

    if (v75 == 1)
    {
      [NSString stringWithFormat:@"(**=%@*cwdt)", v73];
    }

    else
    {
      [NSString stringWithFormat:@"((*=%@*cwdt) || (kMDItemTextContent=%@cwdt))", v73, v73];
    }
    v44 = ;
  }

  v76 = v44;
  v77 = v76;
  if (((v113 != 0) & bOOLValue2) == 1)
  {
    if (v110)
    {
      [v131 addEntriesFromDictionary:v110];
    }

    if (v70)
    {
      [v132 addEntriesFromDictionary:v70];
    }

    if (v108)
    {
      [v124 addObjectsFromArray:v108];
    }

    v78 = v77;
    if ([v113 length])
    {
      v78 = [NSString stringWithFormat:@"(%@ || %@)", v113, v77];
    }

    if (v107)
    {
      [v127 setObject:v107 forKey:@"suggestions"];
    }

    bOOLValue2 = 1;
  }

  else
  {
    v78 = v76;
    if (v58)
    {
      if (v110)
      {
        [v131 addEntriesFromDictionary:v110];
      }

      if (v70)
      {
        [v132 addEntriesFromDictionary:v70];
      }

      bOOLValue2 = 1;
      v78 = v77;
    }
  }

  if ([v59 length])
  {
    v79 = [NSString stringWithFormat:@"(%@ || %@)", v59, v78];

    v78 = v79;
  }

  if (!v78)
  {
    v78 = @"*=*";
  }

  [v134 addObject:v78];

  v40 = v117;
LABEL_124:
  v80 = _os_feature_enabled_impl();
  v81 = _os_feature_enabled_impl();
  if (kind - 1 <= 1)
  {
    v82 = v81;
    v83 = [v40 length];
    v84 = v83 > 3;
    if (v83 <= 3 && ((v80 ^ 1) & 1) == 0)
    {
      v84 = [v40 length] != 0;
    }

    if (v84 && v114)
    {
      v136[0] = _NSConcreteStackBlock;
      v136[1] = 3221225472;
      v136[2] = sub_1000387C8;
      v136[3] = &unk_100093400;
      v137 = v80;
      v85 = v136;
      if (qword_1000A8500 != -1)
      {
        dispatch_once(&qword_1000A8500, v85);
      }

      if (v80)
      {
        if (v82)
        {
          v86 = 16768;
        }

        else
        {
          v86 = 384;
        }

        v87 = qword_1000A84F0;
        v88 = 50;
        goto LABEL_154;
      }

      v89 = SIGetCompletionOptionsFromRankingWeights();
      v86 = v89;
      if (v114 > 5)
      {
        if (v114 <= 8)
        {
          v91 = 40;
          if (v114 == 6)
          {
            v91 = 25;
          }

          if (v114 == 8)
          {
            v88 = 50;
          }

          else
          {
            v88 = v91;
          }
        }

        else
        {
          v88 = 65;
        }

        goto LABEL_153;
      }

      if (v89)
      {
        if (v114 == 5)
        {
          goto LABEL_140;
        }
      }

      else if (v114 >= 3)
      {
LABEL_140:
        v88 = 20;
        goto LABEL_153;
      }

      v87 = qword_1000A84F8;
      v88 = 20;
      if (v87)
      {
LABEL_154:
        [v127 setObject:obja forKey:@"completionString"];
        v92 = [NSNumber numberWithUnsignedInt:v86];
        [v127 setObject:v92 forKey:@"completionOptions"];

        v93 = [NSNumber numberWithInteger:v88];
        [v127 setObject:v93 forKey:@"completionCount"];

        [v127 setObject:v87 forKey:@"completionAttributes"];
        goto LABEL_155;
      }

LABEL_153:
      v87 = qword_1000A84F0;
      v86 = v86 | 0x60;
      goto LABEL_154;
    }
  }

LABEL_155:
  if ([v134 count])
  {
    v94 = [v134 componentsJoinedByString:@" && "];
  }

  else
  {
    v94 = @"(true)");
  }

  if ([v133 count])
  {
    v95 = [v133 componentsJoinedByString:@" && "];

    if (v95)
    {
      v96 = [NSString stringWithFormat:@"((%@) && (%@))", v94, v95];

      v94 = v96;
    }
  }

  else
  {
    v95 = 0;
  }

  [v127 setObject:v131 forKey:@"rankCategories"];
  [v127 setObject:v132 forKey:@"rankTerms"];
  [v127 setObject:v124 forKey:@"queryTerms"];
  v97 = [NSNumber numberWithBool:bOOLValue2];
  [v127 setObject:v97 forKey:@"isNLQuery"];

  v98 = [NSNumber numberWithBool:0];
  [v127 setObject:v98 forKey:@"isAdvancedSyntax"];

  v99 = [NSNumber numberWithBool:bOOLValue];
  [v127 setObject:v99 forKey:@"isMath"];

  [v127 setObject:v94 forKey:@"query"];
  v135 = v127;
  _checkMatch(bOOLValue2, bundleCopy, languageCopy, v126, v94, fuzzyCopy, &v135);
  v100 = v135;

  v101 = v100;
  si_tracing_log_span_end();
  v102 = v148;
  *v119 = v147;
  *(v119 + 16) = v102;
  *(v119 + 32) = v149;

  return v101;
}

- (id)coreSpotlightQueryTaskWithQuery:(id)query reuseTask:(id)task
{
  queryCopy = query;
  taskCopy = task;
  v8 = taskCopy;
  if (taskCopy)
  {
    v9 = taskCopy;
    [(SPCoreSpotlightQueryTask *)v9 reset];
  }

  else
  {
    v9 = [[SPCoreSpotlightQueryTask alloc] initWithStore:self resultPipe:queryCopy];
    [(SPCoreSpotlightQueryTask *)v9 setPriorityIndexEnabled:self->_priorityIndexEnabled];
  }

  return v9;
}

- (id)performQuery:(id)query isCorrectedQuery:(BOOL)correctedQuery reuseTask:(id)task needsFuzzy:(BOOL)fuzzy pommesRewrite:(id)rewrite embeddingsRequery:(BOOL)requery
{
  requeryCopy = requery;
  fuzzyCopy = fuzzy;
  queryCopy = query;
  taskCopy = task;
  rewriteCopy = rewrite;
  v11 = si_tracing_current_span();
  v12 = *(v11 + 16);
  v489 = *v11;
  v490 = v12;
  v491 = *(v11 + 32);
  v382 = v11;
  v13 = *v11;
  spanid = si_tracing_calc_next_spanid();
  v15 = *(v382 + 8);
  *v382 = v13;
  *(v382 + 8) = spanid;
  *(v382 + 16) = v15;
  *(v382 + 28) = 102;
  *(v382 + 32) = "[SPCoreSpotlightDatastore performQuery:isCorrectedQuery:reuseTask:needsFuzzy:pommesRewrite:embeddingsRequery:]";
  si_tracing_log_span_begin();
  v383 = queryCopy;
  if (qword_1000A8520 != -1)
  {
    sub_1000631C8();
  }

  v16 = SPLogForSPLogCategoryDefault();
  v17 = v16;
  if (gSPLogDebugAsDefault)
  {
    v18 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v18 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v16, v18))
  {
    *buf = 67109120;
    *&buf[4] = qos_class_self();
    _os_log_impl(&_mh_execute_header, v17, v18, "QOS performQuery: %d", buf, 8u);
  }

  v19 = [[NSUUID alloc] initWithUUIDString:@"E3D90047-9384-482F-8CAF-739CA04382BE"];
  [queryCopy queryIdent];
  SSDefaultsLogForTrigger();

  if (qword_1000A8530 != -1)
  {
    sub_1000631DC();
  }

  queryContext = [queryCopy queryContext];
  getTrimmedSearchString = [queryContext getTrimmedSearchString];

  queryContext2 = [queryCopy queryContext];
  queryKind = [queryContext2 queryKind];

  queryContext3 = [queryCopy queryContext];
  [queryContext3 whyQuery];

  if (![getTrimmedSearchString length] && (queryKind - 9) >= 0xFFFFFFFFFFFFFFFBLL)
  {
    v23 = 0;
    goto LABEL_267;
  }

  [queryCopy externalID];
  kdebug_trace();
  v24 = SPLogForSPLogCategoryTelemetry();
  externalID = [queryCopy externalID];
  if (externalID && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_BEGIN, externalID, "coreSpotlightLatency", " enableTelemetry=YES ", buf, 2u);
  }

  v485[0] = 0;
  v485[1] = v485;
  v485[2] = 0x3810000000;
  v485[3] = &unk_1000860FE;
  v486 = 0;
  v488 = 0;
  v487 = 0;
  v26 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v488 = 0;
  v486 = v26;
  v487 = 0;
  if ((*(self + 8) & 0x20) != 0)
  {
    atomic_fetch_add(&dword_1000A8420, 1u);
  }

  else
  {
    [(SPCoreSpotlightDatastore *)self activate];
  }

  [queryCopy currentTime];
  v28 = v27;
  queryContext4 = [queryCopy queryContext];
  searchString = [queryContext4 searchString];

  if (byte_1000A8488 == 1)
  {
    [qword_1000A8480 setObject:searchString forKey:@"lastQueryString"];
  }

  if ([queryCopy isCJK])
  {
    v30 = 2;
  }

  else
  {
    v30 = 0;
  }

  *(self + 8) = *(self + 8) & 0xFD | v30;
  if (([queryCopy previousQueryKind] == 1 || objc_msgSend(queryCopy, "previousQueryKind") == 2) && queryKind == 10)
  {
    queryKind = [queryCopy previousQueryKind];
  }

  queryContext5 = [queryCopy queryContext];
  v32 = [queryContext5 deviceAuthenticationState] == 2;

  if (v32)
  {
    v33 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Skipping corespotlight query because of biometryLockout", buf, 2u);
    }

    v34 = [(SPCoreSpotlightDatastore *)self coreSpotlightQueryTaskWithQuery:queryCopy reuseTask:taskCopy];
    [v34 finish];
    v23 = 0;

    goto LABEL_266;
  }

  v35 = SPLogForSPLogCategoryDefault();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [queryCopy hash];
    *buf = 134217984;
    *&buf[4] = v36;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#query corespotlight start (qid: %lld)", buf, 0xCu);
  }

  v367 = sub_10004B314(v37);
  itemRanker = [queryCopy itemRanker];
  os_unfair_lock_lock(&unk_1000A84B8);
  v355 = qword_1000A8438;
  v356 = qword_1000A84A0;
  os_unfair_lock_unlock(&unk_1000A84B8);
  queryContext6 = [queryCopy queryContext];
  searchEntities = [queryContext6 searchEntities];
  if (!searchEntities)
  {

    goto LABEL_41;
  }

  queryContext7 = [v383 queryContext];
  searchEntities2 = [queryContext7 searchEntities];
  v42 = [searchEntities2 count] == 0;

  if (v42)
  {
LABEL_41:
    tokenText = 0;
    v357 = 0;
    goto LABEL_42;
  }

  queryContext8 = [v383 queryContext];
  searchEntities3 = [queryContext8 searchEntities];
  lastObject = [searchEntities3 lastObject];

  LODWORD(queryContext8) = [lastObject isScopedSearch];
  tokenText = [lastObject tokenText];
  currentSearchString = [lastObject currentSearchString];

  if (queryContext8)
  {
    v47 = 8;
  }

  else
  {
    v47 = 0;
  }

  v357 = v47;
  searchString = currentSearchString;
LABEL_42:
  v48 = objc_opt_new();
  [v48 setFetchAttributes:v367];
  [v383 currentTime];
  [v48 setCurrentTime:?];
  queryContext9 = [v383 queryContext];
  keyboardPrimaryLanguage = [queryContext9 keyboardPrimaryLanguage];
  [v48 setKeyboardLanguage:keyboardPrimaryLanguage];

  searchQueryContext = [rewriteCopy searchQueryContext];
  rewriteContext = [searchQueryContext rewriteContext];
  [v48 setRewriteContext:rewriteContext];

  [v48 setEntitledAttributes:7];
  [v48 setDisableNLP:0];
  [v48 setQueryID:{objc_msgSend(v383, "hash")}];
  [v48 setUserQuery:searchString];
  queryContext10 = [v383 queryContext];
  [v48 setFetchl2Signals:{objc_msgSend(queryContext10, "fetchL2Signals")}];

  [v48 setPriorityIndexQuery:1];
  queryContext11 = [v383 queryContext];
  [v48 setEnableInstantAnswers:{objc_msgSend(queryContext11, "enablePersonalAnswers")}];

  maxCount = [v383 maxCount];
  if (maxCount == 13)
  {
    v56 = 20;
  }

  else
  {
    v360 = maxCount;
    if (maxCount != 50)
    {
      goto LABEL_47;
    }

    v56 = 100;
  }

  v360 = v56;
LABEL_47:
  v57 = SPLogForSPLogCategoryDefault();
  v58 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v57, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    *buf = 67109120;
    *&buf[4] = v360;
    _os_log_impl(&_mh_execute_header, v57, ((v58 & 1) == 0), "Rank count:%d", buf, 8u);
  }

  if (([v383 cancelled] & 1) == 0)
  {
    if (correctedQuery || fuzzyCopy || requeryCopy)
    {
      [v383 setPreviousQueryKind:queryKind];
      queryKind = 10;
    }

    if (requeryCopy)
    {
      v59 = [[NSMutableArray alloc] initWithCapacity:5];
      v484 = v59;
      v60 = [itemRanker requery:&v484];
      v345 = v484;

      [itemRanker resetWithSearchString:v60];
      v61 = SPLogForSPLogCategoryDefault();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v60;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Word embeddings on, new search string = %@", buf, 0xCu);
      }

      searchString = v60;
    }

    else
    {
      v345 = 0;
    }

    queryContext12 = [v383 queryContext];
    searchEntities4 = [queryContext12 searchEntities];
    connection = [v383 connection];
    bundleID = [connection bundleID];
    v64 = *(self + 8);
    disableNLP = [v48 disableNLP];
    queryContext13 = [v383 queryContext];
    disableOCR = [queryContext13 disableOCR];
    previousQueryKind = [v383 previousQueryKind];
    itemRanker2 = [v383 itemRanker];
    keyboardLanguage = [itemRanker2 keyboardLanguage];
    queryID = [v383 queryID];
    v346 = PRSRankingSearchBundleString;
    BYTE2(v296) = disableOCR;
    BYTE1(v296) = disableNLP;
    LOBYTE(v296) = (v64 & 2) != 0;
    v370 = [SPCoreSpotlightDatastore _topHitQueryParametersForSearchString:"_topHitQueryParametersForSearchString:searchEntities:contextIdentifier:queryKind:needsFuzzy:checkForMath:isCJK:disableNLP:disableOCR:previousQueryKind:clientBundle:keyboardLanguage:queryID:" searchEntities:searchString contextIdentifier:searchEntities4 queryKind:bundleID needsFuzzy:queryKind checkForMath:fuzzyCopy isCJK:1 disableNLP:v296 disableOCR:previousQueryKind previousQueryKind:PRSRankingSearchBundleString clientBundle:keyboardLanguage keyboardLanguage:queryID queryID:?];

    v72 = [v370 objectForKeyedSubscript:@"queryUnderstandingOutput"];
    queryContext14 = [v383 queryContext];
    [queryContext14 setQueryUnderstandingOutput:v72];

    v74 = [v370 objectForKeyedSubscript:@"queryUnderstandingOutput"];
    [v48 setQueryUnderstandingOutput:v74];

    v363 = [v370 objectForKeyedSubscript:@"query"];
    v343 = [v370 objectForKeyedSubscript:@"filterQueries"];
    v342 = [v370 objectForKeyedSubscript:@"suggestions"];
    v75 = [v370 objectForKeyedSubscript:@"isMath"];
    bOOLValue = [v75 BOOLValue];

    v76 = [v370 objectForKeyedSubscript:@"isNLQuery"];
    bOOLValue2 = [v76 BOOLValue];

    queryContext15 = [v383 queryContext];
    isSearchToolClient = [queryContext15 isSearchToolClient];

    if ([v48 enableInstantAnswers])
    {
      isSearchToolClient2 = 1;
    }

    else
    {
      queryContext16 = [v383 queryContext];
      isSearchToolClient2 = [queryContext16 isSearchToolClient];
    }

    v81 = *(self + 8);
    queryContext17 = [v383 queryContext];
    v83 = +[CSInstantAnswers isInstantAnswerTriggerQuery:isCJK:isSearchTool:](CSInstantAnswers, "isInstantAnswerTriggerQuery:isCJK:isSearchTool:", searchString, (v81 >> 1) & 1, [queryContext17 isSearchToolClient]);

    if ((isSearchToolClient2 | isSearchToolClient))
    {
      v84 = +[SPCoreSpotlightIndexer sharedInstance];
      v483 = 0;
      v482 = 0;
      [v84 processSearchString:searchString intoTrimmedString:&v483 andTokens:&v482];
      v349 = v483;
      v352 = v482;
    }

    else
    {
      v352 = 0;
      v349 = 0;
    }

    queryUnderstandingOutput = [v48 queryUnderstandingOutput];
    v353 = [CSPersonalAnswers personalAnswersEventIntentForQUOutput:queryUnderstandingOutput isDebugLoggingEnabled:0];

    if (v353)
    {
      v86 = isSearchToolClient2;
    }

    else
    {
      v86 = 0;
    }

    if ((v86 & v83 & 1) == 0)
    {
      [v48 setDisableBundles:&off_100099078];
    }

    v87 = logForCSLogCategoryQuery();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      v88 = CSRedactString();
      *buf = 138412802;
      *&buf[4] = v88;
      *&buf[12] = 1024;
      *&buf[14] = isSearchToolClient2;
      *&buf[18] = 1024;
      *&buf[20] = v83;
      _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "[personal answers][query] For Query = %@, personalAnswersAllowed = %d, isPersonalAnswersTriggeringQuery = %d", buf, 0x18u);
    }

    if ((isSearchToolClient2 & v83) != 1)
    {
      goto LABEL_109;
    }

    if ([CSInstantAnswers overrideParsedQuery:searchString])
    {
      v89 = logForCSLogCategoryQuery();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
      {
        v90 = CSRedactString();
        *buf = 138412290;
        *&buf[4] = v90;
        _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "[personal answers][query] Overriding parsed query for searchString = %@", buf, 0xCu);
      }
    }

    v91 = logForCSLogCategoryQuery();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
    {
      v92 = CSRedactString();
      *buf = 138412290;
      *&buf[4] = v92;
      _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "[personal answers][query] using fallback personalAnswerQuery for searchString = %@", buf, 0xCu);
    }

    if ([v352 count] >= 2)
    {
      v93 = 2;
    }

    else
    {
      v93 = 3;
    }

    v94 = *(self + 8);
    if ((v94 & 2) != 0)
    {
      if ([v349 length] < 3)
      {
        v95 = 1;
LABEL_90:
        v96 = +[NSMutableSet set];
        v97 = [CSPersonalAnswers personalAnswersFallbackQueries:v352 queryComponents:&__NSArray0__struct searchString:v349 answerAttributeIntents:v96 isShortQuery:v95 locale:@"en"];
        if (v97)
        {
          v98 = [CSPersonalAnswers attributesFromIntent:v96];
          fetchAttributes = [v48 fetchAttributes];
          allObjects = [v98 allObjects];
          v101 = [fetchAttributes arrayByAddingObjectsFromArray:allObjects];
          [v48 setFetchAttributes:v101];

          [v48 setInstantAnswersBundleIDs:&off_100099090];
          [v48 setInstantAnswersQueries:v97];
          v102 = logForCSLogCategoryQuery();
          if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
          {
            sub_100063204();
          }

          [v48 setDisableBundles:&__NSArray0__struct];
          if (!v353)
          {
            v103 = objc_opt_new();
            v104 = [NSString alloc];
            v105 = [v104 initWithFormat:@"(%@ != %@)", MDItemBundleID, @"com.apple.spotlight.events"];
            [v103 addObject:v363];
            [v103 addObject:v105];
            v106 = [v103 componentsJoinedByString:@" && "];

            v363 = v106;
          }

          v107 = logForCSLogCategoryQuery();
          if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
          {
            v108 = CSRedactString();
            *buf = 138412290;
            *&buf[4] = v108;
            _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "[personal answers][query] Modified queryString = %@", buf, 0xCu);
          }

          v109 = logForCSLogCategoryQuery();
          if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
          {
            sub_100063278();
          }

          allObjects2 = [v96 allObjects];
          [v48 setAnswerAttributes:allObjects2];

          allObjects3 = [v96 allObjects];
          queryContext18 = [v383 queryContext];
          [queryContext18 setAnswerAttributes:allObjects3];
        }

        queryContext19 = [v383 queryContext];
        answerAttributes = [queryContext19 answerAttributes];
        if ([answerAttributes count])
        {
          v115 = 1;
        }

        else
        {
          v115 = v353 == 0;
        }

        v116 = !v115;

        if (v116)
        {
          v117 = [CSPersonalAnswers attributeIntentsFromQU:v353];
          queryContext20 = [v383 queryContext];
          [queryContext20 setAnswerAttributes:v117];
        }

LABEL_109:
        if (isSearchToolClient)
        {
          v119 = +[SPCoreSpotlightIndexer sharedInstance];
          v120 = objc_opt_respondsToSelector();

          if (v120)
          {
            v121 = +[SPCoreSpotlightIndexer sharedInstance];
            [v121 rewriteFirstPassQueryWithQueryString:v363 context:v48 trimmedSearchStringTokens:v352 populateDateSynonyms:1];
          }
        }

        [v48 setMaxCount:v360];
        [v48 setGrouped:v360 != 0];
        if (requeryCopy && searchString)
        {
          if ([v345 count])
          {
            v122 = [v345 componentsJoinedByString:@" || "];
            v122 = [NSString stringWithFormat:@"(%@ || %@)", v363, v122];

            v363 = v122;
          }

          v124 = SPLogForSPLogCategoryDefault();
          if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v363;
            _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "Word embeddings on, new query string = %@", buf, 0xCu);
          }
        }

        v125 = [v370 objectForKeyedSubscript:@"completionString"];
        v126 = [v125 length];

        if (v126)
        {
          v127 = [v370 objectForKeyedSubscript:@"completionString"];
          [v48 setCompletionString:v127];

          v128 = [v370 objectForKeyedSubscript:@"completionCount"];
          [v48 setCompletionResultCount:{objc_msgSend(v128, "intValue")}];

          v129 = [v370 objectForKeyedSubscript:@"completionOptions"];
          [v48 setCompletionOptions:{objc_msgSend(v129, "unsignedIntValue")}];

          v130 = [v370 objectForKeyedSubscript:@"completionAttributes"];
          [v48 setCompletionAttributes:v130];
        }

        v131 = SPLogForSPLogCategoryDefault();
        v132 = v131;
        if (gSPLogDebugAsDefault)
        {
          v133 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          v133 = OS_LOG_TYPE_DEBUG;
        }

        if (os_log_type_enabled(v131, v133))
        {
          dominantRankingQueryCount = [v48 dominantRankingQueryCount];
          dominatedRankingQueryCount = [v48 dominatedRankingQueryCount];
          shortcutBit = [v48 shortcutBit];
          highMatchBit = [v48 highMatchBit];
          lowMatchBit = [v48 lowMatchBit];
          highRecencyBit = [v48 highRecencyBit];
          lowRecencyBit = [v48 lowRecencyBit];
          *buf = 134219520;
          *&buf[4] = dominantRankingQueryCount;
          *&buf[12] = 2048;
          *&buf[14] = dominatedRankingQueryCount;
          *&buf[22] = 2048;
          v503 = shortcutBit;
          *v504 = 2048;
          *&v504[2] = highMatchBit;
          *&v504[10] = 2048;
          *&v504[12] = lowMatchBit;
          v505 = 2048;
          v506 = highRecencyBit;
          v507 = 2048;
          v508 = lowRecencyBit;
          _os_log_impl(&_mh_execute_header, v132, v133, "dominantRankingQueryCount:%ld dominatedRankingQueryCount:%ld shortcutBit:%ld, highMatchBit:%ld, lowMatchBit:%ld, highRecencyBit:%ld, lowRecencyBit:%ld", buf, 0x48u);
        }

        v141 = SPLogForSPLogCategoryDefault();
        v142 = v141;
        if (gSPLogDebugAsDefault)
        {
          v143 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          v143 = OS_LOG_TYPE_DEBUG;
        }

        if (os_log_type_enabled(v141, v143))
        {
          rankingQueries = [v48 rankingQueries];
          *buf = 138412802;
          *&buf[4] = v363;
          *&buf[12] = 2112;
          *&buf[14] = rankingQueries;
          *&buf[22] = 2048;
          v503 = v360;
          _os_log_impl(&_mh_execute_header, v142, v143, "Query string: %@\n\tRanking: %@\n\tmaxCount:%lld", buf, 0x20u);
        }

        v478 = 0;
        v479 = &v478;
        v480 = 0x2020000000;
        isPeopleSearch = [v383 isPeopleSearch];
        v145 = qword_1000A8428;
        v146 = qword_1000A8430;
        previousQueryKind2 = queryKind;
        if (queryKind == 10)
        {
          previousQueryKind2 = [v383 previousQueryKind];
        }

        v148 = *(v479 + 24);
        keyboardLanguage2 = [v48 keyboardLanguage];
        v376 = [itemRanker rankingConfigurationWithMeContact:v145 emailAddresses:v146 phoneFavorites:v355 vipList:v356 clientBundle:v346 spotlightQuery:v363 userQuery:searchString tokenString:tokenText queryKind:previousQueryKind2 flags:v148 | v357 keyboardLanguage:keyboardLanguage2];

        completionString = [v48 completionString];

        if (completionString)
        {
          fuzzyMatchMask = [v376 fuzzyMatchMask];
          [v48 setFuzzyMask:{fuzzyMatchMask, v152}];
          fuzzyMatchCheck = [v376 fuzzyMatchCheck];
          [v48 setFuzzyMatch:{fuzzyMatchCheck, v154}];
        }

        rankingQueries2 = [v376 rankingQueries];
        v156 = [v370 objectForKeyedSubscript:@"queryTerms"];
        v344 = [v370 objectForKeyedSubscript:@"rankCategories"];
        v157 = [rankingQueries2 count];
        v341 = v156;
        if (bOOLValue2)
        {
          if (v156)
          {
            v158 = PRSRankingItemRankerAddJunkFilter();
            v159 = [(SPCoreSpotlightDatastore *)self rankingQueriesAddingQueryTerms:v158 rankingQueries:rankingQueries2];

            rankingQueries2 = v159;
          }

          if (v344)
          {
            v160 = [v344 keysSortedByValueUsingSelector:"compare:"];
            [itemRanker setRankCategories:v160];
          }

          [itemRanker setIsNLSearch:1];
        }

        v161 = [rankingQueries2 count];
        [v48 setParseUserQuery:bOOLValue2];
        [v48 setRankingQueries:rankingQueries2];
        [v48 setStrongRankingQueryCount:{objc_msgSend(v376, "strongRankingQueryCount")}];
        v358 = v161 - v157;
        [v48 setDominantRankingQueryCount:{objc_msgSend(v376, "dominantRankingQueryCount") + v161 - v157}];
        [v48 setDominatedRankingQueryCount:{objc_msgSend(v376, "dominatedRankingQueryCount")}];
        [v48 setShortcutBit:{objc_msgSend(v376, "shortcutBit")}];
        [v48 setHighMatchBit:{objc_msgSend(v376, "highMatchBit")}];
        [v48 setLowMatchBit:{objc_msgSend(v376, "lowMatchBit")}];
        [v48 setHighRecencyBit:{objc_msgSend(v376, "highRecencyBit")}];
        [v48 setLowRecencyBit:{objc_msgSend(v376, "lowRecencyBit")}];
        v340 = rankingQueries2;
        requiredAttributes = [v376 requiredAttributes];
        array = [requiredAttributes array];

        fetchAttributes2 = [v48 fetchAttributes];
        v164 = [NSSet setWithArray:fetchAttributes2];

        v165 = objc_opt_class();
        fetchAttributes3 = [v48 fetchAttributes];
        v167 = [v165 _makeUniqueFetchAttributesWithAttributes:fetchAttributes3 extraAttributes:array];
        [v48 setFetchAttributes:v167];

        fetchAttributes4 = [v48 fetchAttributes];
        v169 = [fetchAttributes4 count];

        Mutable = CFBitVectorCreateMutable(kCFAllocatorDefault, v169);
        CFBitVectorSetCount(Mutable, v169);
        v476 = 0u;
        v477 = 0u;
        v474 = 0u;
        v475 = 0u;
        fetchAttributes5 = [v48 fetchAttributes];
        v172 = [fetchAttributes5 countByEnumeratingWithState:&v474 objects:v501 count:16];
        if (v172)
        {
          v173 = 0;
          v174 = *v475;
          do
          {
            for (i = 0; i != v172; i = i + 1)
            {
              if (*v475 != v174)
              {
                objc_enumerationMutation(fetchAttributes5);
              }

              v176 = *(*(&v474 + 1) + 8 * i);
              fetchAttributes6 = [v48 fetchAttributes];
              v178 = [fetchAttributes6 objectAtIndex:v173];
              if (v178 != v176)
              {
                __assert_rtn("[SPCoreSpotlightDatastore performQuery:isCorrectedQuery:reuseTask:needsFuzzy:pommesRewrite:embeddingsRequery:]", "SPCoreSpotlightDatastore.m", 3242, "[queryContext.fetchAttributes objectAtIndex:(NSUInteger)bvi] == s");
              }

              if ([v164 containsObject:v176])
              {
                CFBitVectorSetBitAtIndex(Mutable, v173, 1u);
              }

              ++v173;
            }

            v172 = [fetchAttributes5 countByEnumeratingWithState:&v474 objects:v501 count:16];
          }

          while (v172);

          [v48 setNonTopHitFetchAttributeIndexesBits:Mutable];
        }

        else
        {
        }

        v179 = 0;
        v180 = "[originalFetchSet containsObject:[queryContext.fetchAttributes objectAtIndex:(NSUInteger)i]]";
        while (v179 < CFBitVectorGetCount(Mutable))
        {
          if (CFBitVectorGetBitAtIndex(Mutable, v179))
          {
            fetchAttributes7 = [v48 fetchAttributes];
            v182 = [fetchAttributes7 objectAtIndex:v179];
            if (([v164 containsObject:v182] & 1) == 0)
            {
              v295 = 3254;
              goto LABEL_271;
            }
          }

          else
          {
            fetchAttributes7 = [v48 fetchAttributes];
            v182 = [fetchAttributes7 objectAtIndex:v179];
            if ([v164 containsObject:v182])
            {
              v295 = 3256;
              v180 = "![originalFetchSet containsObject:[queryContext.fetchAttributes objectAtIndex:(NSUInteger)i]]";
LABEL_271:
              __assert_rtn("[SPCoreSpotlightDatastore performQuery:isCorrectedQuery:reuseTask:needsFuzzy:pommesRewrite:embeddingsRequery:]", "SPCoreSpotlightDatastore.m", v295, v180);
            }
          }

          ++v179;
        }

        CFRelease(Mutable);
        if (!v363)
        {
          v23 = 0;
LABEL_264:

          _Block_object_dispose(&v478, 8);
          goto LABEL_265;
        }

        [v383 setAllowAnonymousDataCollection:{objc_msgSend(v376, "allowAnonymousDataCollection")}];
        [v48 setInternal:1];
        [v48 setLowPriority:0];
        v183 = v358 + [v376 rankingBitCount] - 3;
        v184 = -1 << v183;
        v185 = (v183 & 0x40) == 0;
        if ((v183 & 0x40) != 0)
        {
          v186 = 0;
        }

        else
        {
          v186 = -1 << v183;
        }

        v187 = v184 | (0x7FFFFFFFFFFFFFFFuLL >> ~v183);
        if (v185)
        {
          v188 = v187;
        }

        else
        {
          v188 = v184;
        }

        v189 = SPLogForSPLogCategoryDefault();
        v190 = v189;
        v330 = v188;
        v331 = v186;
        if (gSPLogDebugAsDefault)
        {
          v191 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          v191 = OS_LOG_TYPE_DEBUG;
        }

        if (os_log_type_enabled(v189, v191))
        {
          rankingQueries3 = [v48 rankingQueries];
          v193 = [rankingQueries3 count];
          *buf = 67109120;
          *&buf[4] = v193;
          _os_log_impl(&_mh_execute_header, v190, v191, "ranking queries count %d", buf, 8u);
        }

        v359 = +[NSMutableArray array];
        [v359 addObject:@"kMDItemDisableSearchInSpotlight!=1"];
        if ([v343 count])
        {
          [v359 addObjectsFromArray:v343];
        }

        if ((*(self + 8) & 4) != 0)
        {
          v194 = @"!(kMDItemContentRating=1 && (_kMDItemBundleID=com.apple.mobileslideshow || _kMDItemBundleID=com.apple.MobileSMS))";
        }

        else
        {
          v194 = @"(kMDItemContentRating!=1)";
        }

        [v359 addObject:v194];
        v195 = *(self + 8);
        if ((v195 & 8) == 0)
        {
          cSMediaTypeMusicVideo = [NSString stringWithFormat:@"(%@ != %@)", MDItemMediaTypes, CSMediaTypeMusicVideo];
          [v359 addObject:cSMediaTypeMusicVideo];

          v195 = *(self + 8);
        }

        if ((v195 & 0x10) == 0)
        {
          [v359 addObject:@"(!(_kMDItemBundleID=com.apple.iBooks && kMDItemGenre=Erotica))"];
        }

        if ([v383 parsecAvailable])
        {
          [v359 addObject:@"(!(_kMDItemBundleID=com.apple.Maps))"];
        }

        queryContext21 = [v383 queryContext];
        v198 = [queryContext21 deviceAuthenticationState] == 0;

        if (!v198)
        {
          v500[0] = SPApplicationBundleIdGeneralApplication;
          v500[1] = SPApplicationBundleIdGeneralAppClips;
          v500[2] = PRSRankingShortcutsBundleString;
          v199 = [NSArray arrayWithObjects:v500 count:3];
          [v48 setBundleIDs:v199];

          v499 = NSFileProtectionCompleteUntilFirstUserAuthentication;
          v200 = [NSArray arrayWithObjects:&v499 count:1];
          [v48 setProtectionClasses:v200];

LABEL_201:
          [v359 addObject:@"(_kMDItemUserActivityType != com.apple.stocks.v2.ForYouFeed && _kMDItemUserActivityType != com.apple.stocks.v2.SymbolFeed"];
          fileProviderDomainFilterQueries = +[SPCoreSpotlightIndexer sharedInstance];
          v210 = objc_opt_respondsToSelector();

          if (v210)
          {
            v211 = +[SPCoreSpotlightIndexer sharedInstance];
            fileProviderDomainFilterQueries = [v211 fileProviderDomainFilterQueries];

            if (fileProviderDomainFilterQueries)
            {
              [v359 addObjectsFromArray:fileProviderDomainFilterQueries];
            }
          }

          [v359 addObject:@"(kMDItemIsTrashed!=1)"];
          if ([v359 count])
          {
            filterQueries = [v48 filterQueries];
            if (filterQueries)
            {
              fileProviderDomainFilterQueries = [v48 filterQueries];
              v213 = [fileProviderDomainFilterQueries arrayByAddingObjectsFromArray:v359];
            }

            else
            {
              v213 = v359;
            }

            [v48 setFilterQueries:v213];
            if (filterQueries)
            {
            }
          }

          [v359 addObject:@"(_kMDItemUserActivityType != com.apple.stocks.v2.ForYouFeed && _kMDItemUserActivityType != com.apple.stocks.v2.SymbolFeed"];
          disabledBundles = [v383 disabledBundles];
          if ([disabledBundles count])
          {
            v215 = [disabledBundles arrayByAddingObjectsFromArray:qword_1000A84C0];
          }

          else
          {
            v215 = qword_1000A84C0;
          }

          v216 = v215;

          v217 = PRSRankingPeopleFindMyBundleString;
          v218 = [v216 containsObject:PRSRankingPeopleFindMyBundleString];
          v219 = PRSRankingFindMyBundleString;
          v220 = [v216 containsObject:PRSRankingFindMyBundleString];
          if (!(v220 & 1 | ((v218 & 1) == 0)) || (v219 = v217, !(v218 & 1 | ((v220 & 1) == 0))))
          {
            v221 = [v216 arrayByAddingObject:v219];

            v216 = v221;
          }

          if ([v216 containsObject:PRSRankingContactsBundleString])
          {
            v222 = PRSRankingPersonBundleString;
            if (([v216 containsObject:PRSRankingPersonBundleString] & 1) == 0)
            {
              v223 = [v216 arrayByAddingObject:v222];

              v216 = v223;
            }
          }

          disableBundles = [v48 disableBundles];
          v225 = [disableBundles arrayByAddingObjectsFromArray:v216];
          [v48 setDisableBundles:v225];
          v333 = v216;

          disabledApps = [v383 disabledApps];
          if ([disabledApps count])
          {
            v336 = [NSSet setWithArray:disabledApps];
          }

          else
          {
            v336 = 0;
          }

          bundleIDs = [v48 bundleIDs];
          v227 = [bundleIDs count] == 0;

          if (v227)
          {
            [v48 setPommes:1];
          }

          else
          {
            queryContext22 = [v383 queryContext];
            isSearchToolClient3 = [queryContext22 isSearchToolClient];

            if (isSearchToolClient3)
            {
              +[SDPommesFeature allBundleIDsUsingPommesRankingSearchTool];
            }

            else
            {
              +[SDPommesFeature allBundleIDsUsingPommesRanking];
            }
            v230 = ;
            v231 = [NSSet setWithArray:v230];

            bundleIDs2 = [v48 bundleIDs];
            v233 = [NSSet setWithArray:bundleIDs2];

            [v48 setPommes:{objc_msgSend(v231, "intersectsSet:", v233)}];
          }

          queryContext23 = [v383 queryContext];
          hasMarkedText = [queryContext23 hasMarkedText];

          if (hasMarkedText)
          {
            queryContext24 = [v383 queryContext];
            markedTextArray = [queryContext24 markedTextArray];
            [v48 setMarkedTextArray:markedTextArray];
          }

          if ([v383 cancelled])
          {
            v23 = 0;
          }

          else
          {
            v238 = SPLogForSPLogCategoryQuery();
            v239 = v238;
            if (gSPLogDebugAsDefault)
            {
              v240 = OS_LOG_TYPE_DEFAULT;
            }

            else
            {
              v240 = OS_LOG_TYPE_DEBUG;
            }

            if (os_log_type_enabled(v238, v240))
            {
              *buf = 138412546;
              *&buf[4] = v363;
              *&buf[12] = 2112;
              *&buf[14] = v333;
              _os_log_impl(&_mh_execute_header, v239, v240, "Starting query:%@, disabledBundleIds:%@", buf, 0x16u);
            }

            v334 = [(SPCoreSpotlightDatastore *)self coreSpotlightQueryTaskWithQuery:v383 reuseTask:taskCopy];
            rankingQueries4 = [v48 rankingQueries];
            rankingInfo = [v334 rankingInfo];
            [rankingInfo setRankingQueries:rankingQueries4];

            v472 = 0u;
            v473 = 0u;
            v470 = 0u;
            v471 = 0u;
            rankingQueries5 = [v48 rankingQueries];
            v244 = [rankingQueries5 countByEnumeratingWithState:&v470 objects:v498 count:16];
            if (v244)
            {
              v245 = *v471;
              do
              {
                for (j = 0; j != v244; j = j + 1)
                {
                  if (*v471 != v245)
                  {
                    objc_enumerationMutation(rankingQueries5);
                  }

                  v247 = *(*(&v470 + 1) + 8 * j);
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v248 = [v247 objectForKey:@"kCIBitCount"];
                      [v248 integerValue];
                    }
                  }
                }

                v244 = [rankingQueries5 countByEnumeratingWithState:&v470 objects:v498 count:16];
              }

              while (v244);
            }

            queryContext25 = [v383 queryContext];
            searchEntities5 = [queryContext25 searchEntities];
            rankingInfo2 = [v334 rankingInfo];
            [rankingInfo2 setDisableResultTruncation:searchEntities5 == 0];

            [v334 beginQuery:v383];
            v469[0] = 0;
            v469[1] = v469;
            v469[2] = 0x2020000000;
            v469[3] = 0;
            v347 = objc_opt_new();
            LOBYTE(queryContext25) = [v383 isPhotosSearch];
            v252 = [objc_opt_class() sectionWithBundleIdentifier:SSSectionIdentifierSyndicatedLinks andAddToMap:v347];
            v253 = [objc_opt_class() sectionWithBundleIdentifier:SSSectionIdentifierSyndicatedPhotos andAddToMap:v347];
            [objc_opt_class() setButtonOnPhotosInAppSection:v253 withQuery:v383 queryString:v363 queryParams:v370];
            [v253 setDoNotFold:0];
            v324 = [objc_opt_class() sectionWithBundleIdentifier:SSSectionIdentifierSyndicatedPhotosMessages andAddToMap:v347];
            v322 = [objc_opt_class() sectionWithBundleIdentifier:SSSectionIdentifierSyndicatedPhotosNotes andAddToMap:v347];
            v321 = [objc_opt_class() sectionWithBundleIdentifier:SSSectionIdentifierSyndicatedPhotosFiles andAddToMap:v347];
            v320 = [objc_opt_class() sectionWithBundleIdentifier:SSSectionIdentifierSyndicatedPhotosFromPhotos andAddToMap:v347];
            v254 = [objc_opt_class() sectionWithBundleIdentifier:SSContactsBundleIdentifier andAddToMap:v347];
            [v254 setDoNotFold:0];
            v319 = v254;
            v318 = [objc_opt_class() sectionWithBundleIdentifier:SSPeopleBundleIdentifier andAddToMap:v347];
            v317 = [objc_opt_class() sectionWithBundleIdentifier:SSPhotosBundleIdentifier andAddToMap:v347];
            fetchAttributes8 = [v48 fetchAttributes];
            v256 = [fetchAttributes8 count];
            v314 = v253;
            v315 = v252;
            v316 = queryContext25;
            v312 = objc_opt_new();
            v257 = objc_alloc_init(NSMutableIndexSet);
            if (v256)
            {
              for (k = 0; k != v256; ++k)
              {
                requiredAttributes2 = [v376 requiredAttributes];
                v260 = [fetchAttributes8 objectAtIndexedSubscript:k];
                v261 = [requiredAttributes2 containsObject:v260];

                if (v261)
                {
                  [v257 addIndex:k];
                }
              }
            }

            v467[0] = 0;
            v467[1] = v467;
            v467[2] = 0x2020000000;
            v468 = 0;
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v503 = sub_10003C26C;
            *v504 = sub_10003C27C;
            *&v504[8] = objc_opt_new();
            queryContext26 = [v383 queryContext];
            v329 = [SSSuggestionResultBuilder buildResultsWithSuggestionsData:v342 queryContext:queryContext26];

            [*(*&buf[8] + 40) addObjectsFromArray:v329];
            v309 = [[NSMapTable alloc] initWithKeyOptions:66307 valueOptions:0 capacity:256];
            v263 = [[NSPointerFunctions alloc] initWithOptions:258];
            [v263 setAcquireFunction:0];
            [v263 setRelinquishFunction:sub_10003C284];
            v264 = [NSMapTable alloc];
            v265 = [[NSPointerFunctions alloc] initWithOptions:66307];
            v306 = [v264 initWithKeyPointerFunctions:v265 valuePointerFunctions:v263 capacity:256];
            v328 = v263;

            v266 = [NSMapTable alloc];
            v267 = [[NSPointerFunctions alloc] initWithOptions:66307];
            v268 = [v266 initWithKeyPointerFunctions:v267 valuePointerFunctions:v263 capacity:256];

            v269 = [[SFClientTimingFeedback alloc] initWithEvent:@"com.apple.searchd.feature.extraction" timeInterval:0 queryId:{objc_msgSend(v48, "queryID")}];
            v304 = [[SFClientTimingFeedback alloc] initWithEvent:@"com.apple.searchd.indomain.score.computation" timeInterval:0 queryId:{objc_msgSend(v48, "queryID")}];
            v305 = v269;
            v466[0] = 0;
            v466[1] = v466;
            v466[2] = 0x2020000000;
            v466[3] = 0;
            v270 = *(v382 + 16);
            v463 = *v382;
            v464 = v270;
            v465 = *(v382 + 32);
            v457 = 0;
            v458 = &v457;
            v459 = 0x3032000000;
            v460 = sub_10003C288;
            v461 = sub_10003C2B4;
            v462 = 0;
            v448[0] = _NSConcreteStackBlock;
            v448[1] = 3221225472;
            v448[2] = sub_10003C2BC;
            v448[3] = &unk_100093490;
            v271 = *v382;
            v272 = *(v382 + 16);
            v456 = *(v382 + 32);
            v455 = v272;
            v454 = v271;
            val = v383;
            v449 = val;
            v335 = v334;
            v450 = v335;
            v451 = &v457;
            v452 = v467;
            v453 = buf;
            v326 = [v448 copy];
            v438[0] = _NSConcreteStackBlock;
            v438[1] = 3221225472;
            v438[2] = sub_10003CAB4;
            v438[3] = &unk_1000934B8;
            v443 = v463;
            v444 = v464;
            v445 = v465;
            v446 = v28;
            v447 = v360;
            v310 = v309;
            v439 = v310;
            v442 = &v478;
            v273 = v306;
            v440 = v273;
            v307 = v268;
            v441 = v307;
            v361 = objc_retainBlock(v438);
            os_unfair_lock_lock(&unk_1000A84D0);
            v302 = [(NSDictionary *)self->_renderEngagementCounts copy];
            os_unfair_lock_unlock(&unk_1000A84D0);
            objc_initWeak(&location, val);
            objc_initWeak(&from, v335);
            *v492 = 0;
            v493 = v492;
            v494 = 0x3032000000;
            v495 = sub_10003C26C;
            v496 = sub_10003C27C;
            v497 = 0;
            v274 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
            v275 = dispatch_queue_attr_make_with_overcommit();
            v276 = qos_class_self();
            v277 = dispatch_queue_attr_make_with_qos_class(v275, v276, 0);
            v278 = dispatch_queue_create("result processing", v277);

            v391[0] = _NSConcreteStackBlock;
            v391[1] = 3221225472;
            v391[2] = sub_10003DFA8;
            v391[3] = &unk_1000935D0;
            v425 = v463;
            v426 = v464;
            v427 = v465;
            objc_copyWeak(&v423, &location);
            objc_copyWeak(&v424, &from);
            v301 = v278;
            v392 = v301;
            v299 = v310;
            v393 = v299;
            v300 = v273;
            v394 = v300;
            v308 = v307;
            v395 = v308;
            v396 = searchString;
            v397 = v336;
            v417 = v492;
            v428 = v256;
            v298 = v257;
            v398 = v298;
            v279 = v48;
            v399 = v279;
            v400 = itemRanker;
            v311 = v302;
            v401 = v311;
            v297 = v347;
            v402 = v297;
            v348 = v312;
            v403 = v348;
            v418 = v469;
            v303 = v324;
            v404 = v303;
            v313 = v322;
            v405 = v313;
            v323 = v321;
            v406 = v323;
            v280 = v317;
            v429 = queryKind;
            v419 = v467;
            v325 = v280;
            v407 = v280;
            selfCopy = self;
            v431 = requeryCopy;
            v432 = bOOLValue;
            v281 = v363;
            v409 = v281;
            correctedQueryCopy = correctedQuery;
            v434 = v316;
            v435 = fuzzyCopy;
            v391[5] = v330;
            v391[4] = v331;
            v369 = v319;
            v410 = v369;
            v372 = v318;
            v411 = v372;
            v332 = v315;
            v412 = v332;
            v338 = v314;
            v413 = v338;
            v366 = v320;
            v414 = v366;
            v420 = buf;
            v421 = v466;
            v422 = v485;
            v282 = v304;
            v415 = v282;
            v379 = v305;
            v416 = v379;
            v430 = v28;
            v283 = objc_retainBlock(v391);
            v284 = v458[5];
            v458[5] = v283;

            objc_initWeak(&v390, self);
            v285 = +[SPCoreSpotlightIndexer sharedInstance];
            v384[0] = _NSConcreteStackBlock;
            v384[1] = 3221225472;
            v384[2] = sub_100042660;
            v384[3] = &unk_1000935F8;
            objc_copyWeak(&v385, &v390);
            objc_copyWeak(&v386, &from);
            v387 = v463;
            v388 = v464;
            v389 = v465;
            v384[4] = &v457;
            v286 = [v285 taskForTopHitQueryWithQueryString:v281 queryContext:v279 eventHandler:v361 resultsHandler:v326 completionHandler:v384];
            [v335 setJob:v286];

            objc_destroyWeak(&v386);
            objc_destroyWeak(&v385);
            objc_destroyWeak(&v390);

            objc_destroyWeak(&v424);
            objc_destroyWeak(&v423);

            _Block_object_dispose(v492, 8);
            objc_destroyWeak(&from);
            objc_destroyWeak(&location);
            if ([val cancelled])
            {
              v23 = 0;
            }

            else
            {
              v287 = SPLogForSPLogCategoryDefault();
              v288 = v287;
              if (gSPLogDebugAsDefault)
              {
                v289 = OS_LOG_TYPE_DEFAULT;
              }

              else
              {
                v289 = OS_LOG_TYPE_DEBUG;
              }

              if (os_log_type_enabled(v287, v289))
              {
                v290 = qos_class_self();
                *v492 = 67109120;
                *&v492[4] = v290;
                _os_log_impl(&_mh_execute_header, v288, v289, "QOS pre startQueryTask: %d", v492, 8u);
              }

              v291 = +[SPCoreSpotlightIndexer sharedInstance];
              v292 = [v335 job];
              [v291 startQueryTask:v292];

              v23 = v335;
            }

            _Block_object_dispose(&v457, 8);
            _Block_object_dispose(v466, 8);

            _Block_object_dispose(buf, 8);
            _Block_object_dispose(v467, 8);

            _Block_object_dispose(v469, 8);
          }

          goto LABEL_264;
        }

        maxMovieRating = self->_maxMovieRating;
        if (maxMovieRating && [(NSNumber *)maxMovieRating intValue]<= 999)
        {
          intValue = [(NSNumber *)self->_maxMovieRating intValue];
          v202 = [NSString stringWithFormat:@"(%@!=%@ || %@<=%d)", MDItemMediaTypes, CSMediaTypeMovie, MDItemExtendedContentRating, intValue];
          [v359 addObject:v202];
        }

        maxTVShowRating = self->_maxTVShowRating;
        if (maxTVShowRating && [(NSNumber *)maxTVShowRating intValue]<= 999)
        {
          intValue2 = [(NSNumber *)self->_maxTVShowRating intValue];
          v205 = [NSString stringWithFormat:@"(%@!=%@ || %@<=%d)", MDItemMediaTypes, CSMediaTypeTVShow, MDItemExtendedContentRating, intValue2];
          [v359 addObject:v205];
        }

        contentFilters = [v383 contentFilters];
        if (!contentFilters)
        {
          goto LABEL_201;
        }

        if (contentFilters)
        {
          if ((contentFilters & 2) != 0)
          {
            v208 = @"(kMDItemIsLocal=1 || _kMDItemBundleID!=com.apple.Music || _kMDItemBundleID!=com.apple.videos)";
          }

          else
          {
            v208 = @"(kMDItemIsLocal=1 || _kMDItemBundleID!=com.apple.Music)";
          }
        }

        else
        {
          if ((contentFilters & 2) == 0)
          {
            goto LABEL_201;
          }

          v208 = @"(kMDItemIsLocal=1 || _kMDItemBundleID!=com.apple.videos)";
        }

        [v359 addObject:v208];
        goto LABEL_201;
      }

      v94 = *(self + 8);
    }

    v95 = (v94 & 2) == 0 && [v349 length] <= v93;
    goto LABEL_90;
  }

  v23 = 0;
LABEL_265:

LABEL_266:
  _Block_object_dispose(v485, 8);
LABEL_267:

  si_tracing_log_span_end();
  v293 = v490;
  *v382 = v489;
  *(v382 + 16) = v293;
  *(v382 + 32) = v491;

  return v23;
}

+ (void)modifyBatchSize:(unint64_t *)size batchIncrement:(unint64_t *)increment batches:(unint64_t *)batches withSectionsCount:(unint64_t)count
{
  if (qword_1000A8550 != -1)
  {
    sub_100063468();
  }

  v10 = count / 7;
  v11 = count % 7 != 0;
  if (count % 7)
  {
    ++v10;
  }

  if (v10 % dword_1000A8548)
  {
    v12 = 6;
    v13 = 4;
    while (1)
    {
      v10 = count / v12;
      v11 = count % v12 != 0;
      if (count % v12)
      {
        ++v10;
      }

      if (v12 <= 4)
      {
        break;
      }

      --v12;
      if (!(v10 % dword_1000A8548))
      {
        v13 = v12 + 1;
        break;
      }
    }
  }

  else
  {
    v13 = 7;
  }

  *size = v13;
  *increment = v11;
  *batches = v10;
}

+ (id)sectionWithBundleIdentifier:(id)identifier andAddToMap:(id)map
{
  identifierCopy = identifier;
  mapCopy = map;
  v7 = [mapCopy objectForKeyedSubscript:identifierCopy];

  if (v7)
  {
    v8 = [mapCopy objectForKeyedSubscript:identifierCopy];
  }

  else
  {
    v8 = [SFMutableResultSection mutableSectionWithBundleId:identifierCopy];
    [v8 setDomain:1];
    [v8 setDoNotFold:1];
    [mapCopy setObject:v8 forKey:identifierCopy];
  }

  return v8;
}

+ (void)setButtonOnPhotosInAppSection:(id)section withQuery:(id)query queryString:(id)string queryParams:(id)params
{
  queryCopy = query;
  sectionCopy = section;
  queryContext = [queryCopy queryContext];
  searchEntities = [queryContext searchEntities];
  lastObject = [searchEntities lastObject];

  if (lastObject)
  {
    currentSearchString = [lastObject currentSearchString];
  }

  else
  {
    queryContext2 = [queryCopy queryContext];
    currentSearchString = [queryContext2 searchString];
  }

  if (!currentSearchString)
  {
    currentSearchString = &stru_100094040;
  }

  if (([queryCopy isPeopleSearch] & 1) == 0)
  {
    v26 = @"kMDQueryOptionContextIdentifier";
    connection = [queryCopy connection];
    bundleID = [connection bundleID];
    v16 = bundleID;
    if (bundleID)
    {
      v17 = bundleID;
    }

    else
    {
      v17 = &stru_100094040;
    }

    v27 = v17;
    v18 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];

    v19 = SSQueryParserStripKindFromString();

    currentSearchString = v19;
  }

  v20 = [SPSearchEntity searchEntityWithPhotosSearchString:currentSearchString fromSuggestion:0];
  command = [v20 command];
  v22 = objc_opt_new();
  [v22 setSymbolName:@"chevron.forward"];
  v23 = objc_opt_new();
  v24 = [NSBundle bundleForClass:objc_opt_class()];
  v25 = [v24 localizedStringForKey:@"SHOW_MORE" value:&stru_100094040 table:@"SpotlightServices"];
  [v23 setTitle:v25];

  [v23 setImage:v22];
  [v23 setCommand:command];
  [sectionCopy setButton:v23];
}

+ (id)removedDuplicatePhotosSectionsFromSections:(id)sections isPhotosScopedSearch:(BOOL)search
{
  sectionsCopy = sections;
  v6 = sectionsCopy;
  if (search)
  {
    goto LABEL_15;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = [sectionsCopy countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v34;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v34 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v33 + 1) + 8 * i);
      v13 = qword_1000A8458;
      bundleIdentifier = [v12 bundleIdentifier];
      if ([v13 containsObject:bundleIdentifier])
      {
        results = [v12 results];
        v16 = [results count];

        if (v16)
        {
          ++v9;
        }
      }

      else
      {
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
  }

  while (v8);
  if (v9 == 1)
  {
LABEL_15:
    v17 = &qword_1000A8450;
  }

  else
  {
LABEL_16:
    v17 = &qword_1000A8458;
  }

  v18 = *v17;
  v19 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = v6;
  v21 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v30;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v29 + 1) + 8 * j);
        bundleIdentifier2 = [v25 bundleIdentifier];
        v27 = [v18 containsObject:bundleIdentifier2];

        if ((v27 & 1) == 0)
        {
          [v19 addObject:v25];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v22);
  }

  return v19;
}

- (void)performQueryRewriteForQuery:(id)query withCorrection:(id)correction task:(id)task
{
  queryCopy = query;
  correctionCopy = correction;
  taskCopy = task;
  if (([queryCopy cancelled] & 1) == 0)
  {
    v11 = [queryCopy correctedQueryWithCorrection:correctionCopy];
    v12 = SPLogForSPLogCategoryQuery();
    v13 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v12, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      queryContext = [queryCopy queryContext];
      searchString = [queryContext searchString];
      v17 = 138412546;
      v18 = searchString;
      v19 = 2112;
      v20 = correctionCopy;
      _os_log_impl(&_mh_execute_header, v12, ((v13 & 1) == 0), "CoreSpotlight performing rewriting query %@ with correction %@", &v17, 0x16u);
    }

    v16 = [(SPCoreSpotlightDatastore *)self performQuery:v11 isCorrectedQuery:1 reuseTask:taskCopy needsFuzzy:1 pommesRewrite:0 embeddingsRequery:0];
  }
}

+ (id)_makeUniqueFetchAttributesWithAttributes:(id)attributes extraAttributes:(id)extraAttributes
{
  attributesCopy = attributes;
  extraAttributesCopy = extraAttributes;
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(attributesCopy, "count") + objc_msgSend(extraAttributesCopy, "count")}];
  v8 = [NSMutableSet setWithArray:attributesCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = qword_1000A84B0;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if (([attributesCopy containsObject:{v14, v17}] & 1) != 0 || objc_msgSend(extraAttributesCopy, "containsObject:", v14))
        {
          [v7 addObject:v14];
          [v8 removeObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    allObjects = [v8 allObjects];
    [v7 addObjectsFromArray:allObjects];
  }

  return v7;
}

+ (BOOL)_isKeyboardCJK:(id)k
{
  lowercaseString = [k lowercaseString];
  if ([lowercaseString hasPrefix:@"ja"] & 1) != 0 || (objc_msgSend(lowercaseString, "hasPrefix:", @"zh") & 1) != 0 || (objc_msgSend(lowercaseString, "hasPrefix:", @"ko"))
  {
    v4 = 1;
  }

  else
  {
    v4 = [lowercaseString hasPrefix:@"yue"];
  }

  return v4;
}

- (id)taskForTopHitQueryWithQueryString:(id)string queryContext:(id)context resultsHandler:(id)handler completionHandler:(id)completionHandler
{
  stringCopy = string;
  contextCopy = context;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v364 = 0;
  v365 = &v364;
  v366 = 0x3032000000;
  v367 = sub_10003C26C;
  v368 = sub_10003C27C;
  v169 = stringCopy;
  v369 = v169;
  if (!v365[5])
  {
    __assert_rtn("[SPCoreSpotlightDatastore taskForTopHitQueryWithQueryString:queryContext:resultsHandler:completionHandler:]", "SPCoreSpotlightDatastore.m", 4924, "queryString");
  }

  maxCount = [contextCopy maxCount];
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  if (maxCount)
  {
    v12 = maxCount;
  }

  v174 = v12;
  if ([contextCopy maxRankedResultCount] < 1)
  {
    v14 = 100;
  }

  else
  {
    maxRankedResultCount = [contextCopy maxRankedResultCount];
    v14 = 100;
    if (maxRankedResultCount < 0x64)
    {
      v14 = maxRankedResultCount;
    }
  }

  v180 = v14;
  v193 = contextCopy;
  if ([contextCopy internal])
  {
    bundleIDs = [contextCopy bundleIDs];
    if ([bundleIDs count] == 1)
    {
      [bundleIDs firstObject];
    }

    else
    {
      [contextCopy clientBundleID];
    }
    clientBundleID = ;
  }

  else
  {
    clientBundleID = [contextCopy clientBundleID];
  }

  userQuery = [contextCopy userQuery];
  v173 = [clientBundleID isEqualToString:PRSRankingMailBundleString];
  if (v173)
  {
    v16 = [userQuery length];
    if (v16 < 5)
    {
      v17 = 20;
    }

    else if (v16 <= 8)
    {
      if (v16 == 8)
      {
        v17 = 50;
      }

      else
      {
        v17 = 25;
        if (v16 > 6)
        {
          v17 = 40;
        }
      }
    }

    else
    {
      v17 = 65;
    }

    v180 = v17;
    if ([contextCopy generateSuggestions])
    {
      v18 = [userQuery length];
      v19 = v180;
      if (!v18)
      {
        v19 = 100;
      }

      v180 = v19;
    }
  }

  keyboardLanguage = [contextCopy keyboardLanguage];
  fetchAttributes = [contextCopy fetchAttributes];
  v177 = +[SDSearchQuery isCJK];
  v172 = [SPCoreSpotlightDatastore _isKeyboardCJK:keyboardLanguage];
  v20 = [PRSRankingItemRanker alloc];
  queryID = [contextCopy queryID];
  [contextCopy currentTime];
  v22 = [v20 initWithSearchString:userQuery queryID:queryID language:keyboardLanguage currentTime:?];
  [v22 activate];
  v358 = 0;
  v359 = &v358;
  v360 = 0x3032000000;
  v361 = sub_10003C26C;
  v362 = sub_10003C27C;
  v363 = 0;
  v175 = v22;
  if (userQuery && [contextCopy parseUserQuery])
  {
    if ([contextCopy maxCount])
    {
      maxCount2 = [contextCopy maxCount];
      if (maxCount2 <= v180)
      {
        v24 = v180;
      }

      else
      {
        v24 = maxCount2;
      }
    }

    else
    {
      v24 = 0;
    }

    [contextCopy setMaxCount:v24];
    [contextCopy setGrouped:v180 != 0];
    *(&v168 + 1) = [contextCopy disableNLP];
    LOBYTE(v168) = v177;
    v26 = -[SPCoreSpotlightDatastore _topHitQueryParametersForSearchString:searchEntities:contextIdentifier:queryKind:needsFuzzy:checkForMath:isCJK:disableNLP:disableOCR:previousQueryKind:clientBundle:keyboardLanguage:queryID:](self, "_topHitQueryParametersForSearchString:searchEntities:contextIdentifier:queryKind:needsFuzzy:checkForMath:isCJK:disableNLP:disableOCR:previousQueryKind:clientBundle:keyboardLanguage:queryID:", userQuery, &__NSArray0__struct, v168, 11, clientBundleID, keyboardLanguage, [contextCopy queryID], v169, completionHandlerCopy, handlerCopy);
    v27 = v359[5];
    v359[5] = v26;

    v28 = [v359[5] objectForKeyedSubscript:@"query"];
    v29 = [v28 mutableCopy];

    if ([v29 length] && objc_msgSend(v365[5], "length") && (objc_msgSend(v29, "isEqualToString:", v365[5]) & 1) == 0)
    {
      objc_msgSend(v29, "appendString:", @"&&(");
      [v29 appendString:v365[5]];
      [v29 appendString:@""]);
      v30 = [NSString stringWithFormat:@"(%@)", v29];
      v31 = v365[5];
      v365[5] = v30;
    }
  }

  else
  {
    if (v174 <= v180)
    {
      v25 = v180;
    }

    else
    {
      v25 = v174;
    }

    [contextCopy setMaxCount:v25];
  }

  v352 = 0;
  v353 = &v352;
  v354 = 0x3032000000;
  v355 = sub_10003C26C;
  v356 = sub_10003C27C;
  v357 = 0;
  if (v173)
  {
    os_unfair_lock_lock(&unk_1000A84B8);
    keyboardLanguage3 = qword_1000A8438;
    v33 = qword_1000A84A0;
    os_unfair_lock_unlock(&unk_1000A84B8);
    v34 = qword_1000A8428;
    v35 = qword_1000A8430;
    v36 = v365[5];
    keyboardLanguage2 = [contextCopy keyboardLanguage];
    v38 = [v175 rankingConfigurationWithMeContact:v34 emailAddresses:v35 phoneFavorites:keyboardLanguage3 vipList:v33 clientBundle:clientBundleID spotlightQuery:v36 userQuery:userQuery tokenString:0 queryKind:11 flags:0 keyboardLanguage:keyboardLanguage2];
    v39 = v353[5];
    v353[5] = v38;
  }

  else
  {
    v40 = v365[5];
    keyboardLanguage3 = [contextCopy keyboardLanguage];
    v41 = [v175 rankingConfigurationWithMeContact:0 emailAddresses:0 phoneFavorites:0 vipList:0 clientBundle:clientBundleID spotlightQuery:v40 userQuery:userQuery tokenString:0 queryKind:11 flags:0 keyboardLanguage:keyboardLanguage3];
    v33 = v353[5];
    v353[5] = v41;
  }

  completionString = [contextCopy completionString];

  if (completionString)
  {
    fuzzyMatchMask = [v353[5] fuzzyMatchMask];
    [contextCopy setFuzzyMask:{fuzzyMatchMask, v44}];
    fuzzyMatchCheck = [v353[5] fuzzyMatchCheck];
    [contextCopy setFuzzyMatch:{fuzzyMatchCheck, v46}];
  }

  bundleIDs2 = [contextCopy bundleIDs];
  v48 = [bundleIDs2 count];

  if (v48)
  {
    v49 = +[NSMutableString string];
    objc_msgSend(v49, "appendFormat:", @"FieldMatch(%@,"), MDItemBundleID;
    v351 = 0u;
    v350 = 0u;
    v349 = 0u;
    v348 = 0u;
    bundleIDs3 = [contextCopy bundleIDs];
    v51 = [bundleIDs3 countByEnumeratingWithState:&v348 objects:v378 count:16];
    if (v51)
    {
      v52 = *v349;
      do
      {
        for (i = 0; i != v51; i = i + 1)
        {
          if (*v349 != v52)
          {
            objc_enumerationMutation(bundleIDs3);
          }

          [v49 appendFormat:@"%@, ", *(*(&v348 + 1) + 8 * i)];
        }

        v51 = [bundleIDs3 countByEnumeratingWithState:&v348 objects:v378 count:16];
      }

      while (v51);
    }

    v54 = [v49 substringToIndex:{objc_msgSend(v49, "length") - 1}];
    v55 = [v54 mutableCopy];

    [v55 appendString:@""]);
    v56 = [NSMutableArray arrayWithObject:v55];
    v57 = [v359[5] objectForKeyedSubscript:@"filterQueries"];
    if ([v57 count])
    {
      [v56 addObjectsFromArray:v57];
    }

    filterQueries = [contextCopy filterQueries];
    v59 = filterQueries == 0;

    if (v59)
    {
      [contextCopy setFilterQueries:v56];
    }

    else
    {
      filterQueries2 = [contextCopy filterQueries];
      v61 = [filterQueries2 arrayByAddingObjectsFromArray:v56];
      [contextCopy setFilterQueries:v61];
    }
  }

  v342 = 0;
  v343 = &v342;
  v344 = 0x3032000000;
  v345 = sub_10003C26C;
  v346 = sub_10003C27C;
  rankingQueries = [v353[5] rankingQueries];
  v62 = v359[5];
  v63 = contextCopy;
  if (v62)
  {
    v64 = [v62 objectForKeyedSubscript:@"queryTerms"];
    v65 = [v359[5] objectForKeyedSubscript:@"rankCategories"];
    [v343[5] count];
    v66 = [v359[5] objectForKeyedSubscript:@"isNLQuery"];
    bOOLValue = [v66 BOOLValue];

    if (bOOLValue)
    {
      if (v64)
      {
        v68 = PRSRankingItemRankerAddJunkFilter();
        v69 = [(SPCoreSpotlightDatastore *)self rankingQueriesAddingQueryTerms:v68 rankingQueries:v343[5]];
        v70 = v343[5];
        v343[5] = v69;
      }

      if (v65)
      {
        v71 = [v65 keysSortedByValueUsingSelector:"compare:"];
        [v175 setRankCategories:v71];
      }

      [v175 setIsNLSearch:1];
    }

    [v343[5] count];

    v63 = contextCopy;
  }

  else
  {
    bOOLValue = 0;
  }

  [v63 setParseUserQuery:bOOLValue];
  [v63 setRankingQueries:v343[5]];
  [v63 setStrongRankingQueryCount:{objc_msgSend(v353[5], "strongRankingQueryCount")}];
  [v63 setDominantRankingQueryCount:{objc_msgSend(v353[5], "dominantRankingQueryCount")}];
  [v63 setDominatedRankingQueryCount:{objc_msgSend(v353[5], "dominatedRankingQueryCount")}];
  [v63 setShortcutBit:{objc_msgSend(v353[5], "shortcutBit")}];
  [v63 setHighMatchBit:{objc_msgSend(v353[5], "highMatchBit")}];
  [v63 setLowMatchBit:{objc_msgSend(v353[5], "lowMatchBit")}];
  [v63 setHighRecencyBit:{objc_msgSend(v353[5], "highRecencyBit")}];
  [v63 setLowRecencyBit:{objc_msgSend(v353[5], "lowRecencyBit")}];
  v336 = 0;
  v337 = &v336;
  v338 = 0x3032000000;
  v339 = sub_10003C26C;
  v340 = sub_10003C27C;
  requiredAttributes = [v353[5] requiredAttributes];
  array = [requiredAttributes array];

  bundleIDs4 = [contextCopy bundleIDs];
  if ([bundleIDs4 count] != 1)
  {
    goto LABEL_73;
  }

  bundleIDs5 = [contextCopy bundleIDs];
  v75 = [bundleIDs5 objectAtIndexedSubscript:0];
  IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos();

  if (IsSyndicatedPhotos)
  {
    v77 = +[SSPommesPhotosRanker PhotosRankingRequiredAttributes];
    bundleIDs4 = v337[5];
    v337[5] = v77;
LABEL_73:
  }

  fetchAttributes2 = [contextCopy fetchAttributes];
  v79 = [fetchAttributes2 count];

  fetchAttributes3 = [contextCopy fetchAttributes];
  v192 = [NSSet setWithArray:fetchAttributes3];

  v81 = objc_opt_class();
  fetchAttributes4 = [contextCopy fetchAttributes];
  v83 = [v81 _makeUniqueFetchAttributesWithAttributes:fetchAttributes4 extraAttributes:v337[5]];
  [contextCopy setFetchAttributes:v83];

  fetchAttributes5 = [contextCopy fetchAttributes];
  [contextCopy setTopHitExtraFetchAttributeCount:{objc_msgSend(fetchAttributes5, "count") - v79}];

  fetchAttributes6 = [contextCopy fetchAttributes];
  v86 = [fetchAttributes6 count];

  Mutable = CFBitVectorCreateMutable(kCFAllocatorDefault, v86);
  CFBitVectorSetCount(Mutable, v86);
  v335 = 0u;
  v334 = 0u;
  v333 = 0u;
  v332 = 0u;
  fetchAttributes7 = [contextCopy fetchAttributes];
  v89 = [fetchAttributes7 countByEnumeratingWithState:&v332 objects:v377 count:16];
  if (v89)
  {
    v90 = 0;
    v91 = *v333;
    do
    {
      for (j = 0; j != v89; j = j + 1)
      {
        if (*v333 != v91)
        {
          objc_enumerationMutation(fetchAttributes7);
        }

        v93 = *(*(&v332 + 1) + 8 * j);
        fetchAttributes8 = [v193 fetchAttributes];
        v95 = [fetchAttributes8 objectAtIndex:v90];
        if (v95 != v93)
        {
          __assert_rtn("[SPCoreSpotlightDatastore taskForTopHitQueryWithQueryString:queryContext:resultsHandler:completionHandler:]", "SPCoreSpotlightDatastore.m", 5116, "[queryContext.fetchAttributes objectAtIndex:(NSUInteger)bvi] == s");
        }

        if ([v192 containsObject:v93])
        {
          CFBitVectorSetBitAtIndex(Mutable, v90, 1u);
        }

        ++v90;
      }

      v89 = [fetchAttributes7 countByEnumeratingWithState:&v332 objects:v377 count:16];
    }

    while (v89);

    v96 = v193;
    [v193 setNonTopHitFetchAttributeIndexesBits:Mutable];
  }

  else
  {

    v96 = contextCopy;
  }

  v97 = 0;
  v98 = "[originalFetchSet containsObject:[queryContext.fetchAttributes objectAtIndex:(NSUInteger)i]]";
  while (v97 < CFBitVectorGetCount(Mutable))
  {
    if (CFBitVectorGetBitAtIndex(Mutable, v97))
    {
      fetchAttributes9 = [v96 fetchAttributes];
      v100 = [fetchAttributes9 objectAtIndex:v97];
      if (([v192 containsObject:v100] & 1) == 0)
      {
        v167 = 5128;
        goto LABEL_133;
      }
    }

    else
    {
      fetchAttributes9 = [v96 fetchAttributes];
      v100 = [fetchAttributes9 objectAtIndex:v97];
      if ([v192 containsObject:v100])
      {
        v167 = 5130;
        v98 = "![originalFetchSet containsObject:[queryContext.fetchAttributes objectAtIndex:(NSUInteger)i]]";
LABEL_133:
        __assert_rtn("[SPCoreSpotlightDatastore taskForTopHitQueryWithQueryString:queryContext:resultsHandler:completionHandler:]", "SPCoreSpotlightDatastore.m", v167, v98);
      }
    }

    ++v97;
    v96 = v193;
  }

  CFRelease(Mutable);
  v326 = 0;
  v327 = &v326;
  v328 = 0x3032000000;
  v329 = sub_10003C26C;
  v330 = sub_10003C27C;
  fetchAttributes10 = [v96 fetchAttributes];
  v322 = 0;
  v323 = &v322;
  v324 = 0x2020000000;
  v325 = [v327[5] count];
  v320[0] = 0;
  v320[1] = v320;
  v320[2] = 0x3032000000;
  v320[3] = sub_10003C26C;
  v320[4] = sub_10003C27C;
  v321 = objc_opt_new();
  v318[0] = 0;
  v318[1] = v318;
  v318[2] = 0x3032000000;
  v318[3] = sub_10003C26C;
  v318[4] = sub_10003C27C;
  v319 = objc_opt_new();
  v312 = 0;
  v313 = &v312;
  v314 = 0x3032000000;
  v315 = sub_10003C26C;
  v316 = sub_10003C27C;
  v101 = [NSMutableData alloc];
  v317 = [v101 initWithLength:((8 * v323[3] + 504) >> 6) + 8];
  v308 = 0;
  v309 = &v308;
  v310 = 0x2020000000;
  mutableBytes = [v313[5] mutableBytes];
  v102 = v309[3];
  v103 = v323[3];
  *v102 = v103;
  bzero(v102 + 1, (8 * v103 + 504) >> 6);
  v306 = 0;
  v307[0] = &v306;
  v307[1] = 0x2020000000;
  v307[2] = 0x7FFFFFFFFFFFFFFFLL;
  v304 = 0;
  v305[0] = &v304;
  v305[1] = 0x2020000000;
  v305[2] = 0x7FFFFFFFFFFFFFFFLL;
  v302 = 0;
  v303[0] = &v302;
  v303[1] = 0x2020000000;
  v303[2] = 0x7FFFFFFFFFFFFFFFLL;
  v300 = 0;
  v301[0] = &v300;
  v301[1] = 0x2020000000;
  v301[2] = 0x7FFFFFFFFFFFFFFFLL;
  v298 = 0;
  v299[0] = &v298;
  v299[1] = 0x2020000000;
  v299[2] = 0x7FFFFFFFFFFFFFFFLL;
  v296 = 0;
  v297[0] = &v296;
  v297[1] = 0x2020000000;
  v297[2] = 0x7FFFFFFFFFFFFFFFLL;
  if (v323[3])
  {
    v104 = 0;
    v105 = MDItemContentCreationDate;
    v106 = MDItemBundleID;
    v186 = MDMailConversationID;
    v183 = MDQueryResultScoreL1;
    do
    {
      requiredAttributes2 = [v353[5] requiredAttributes];
      v108 = [v327[5] objectAtIndexedSubscript:v104];
      v109 = [requiredAttributes2 containsObject:v108];

      if (v109)
      {
        v110 = v309[3];
        if (*v110 > v104)
        {
          v110[(v104 >> 6) + 1] |= 1 << v104;
        }
      }

      v111 = [v327[5] objectAtIndexedSubscript:v104];
      v112 = [v111 isEqualToString:v105];

      v113 = v307;
      if (v112 & 1) != 0 || ([v327[5] objectAtIndexedSubscript:v104], v114 = objc_claimAutoreleasedReturnValue(), v115 = objc_msgSend(v114, "isEqualToString:", v106), v114, v113 = v305, (v115) || (objc_msgSend(v327[5], "objectAtIndexedSubscript:", v104), v116 = objc_claimAutoreleasedReturnValue(), v117 = objc_msgSend(v116, "isEqualToString:", @"kMDQueryResultNewMatchedExtraQueriesField"), v116, v113 = v303, (v117) || (objc_msgSend(v327[5], "objectAtIndexedSubscript:", v104), v118 = objc_claimAutoreleasedReturnValue(), v119 = objc_msgSend(v118, "isEqualToString:", @"_kMDItemExternalID"), v118, v113 = v301, (v119) || (objc_msgSend(v327[5], "objectAtIndexedSubscript:", v104), v120 = objc_claimAutoreleasedReturnValue(), v121 = objc_msgSend(v120, "isEqualToString:", v186), v120, v113 = v299, (v121) || (objc_msgSend(v327[5], "objectAtIndexedSubscript:", v104), v122 = objc_claimAutoreleasedReturnValue(), v123 = objc_msgSend(v122, "isEqualToString:", v183), v122, v113 = v297, v123))
      {
        *(*v113 + 24) = v104;
      }

      ++v104;
    }

    while (v104 < v323[3]);
  }

  v294 = 0;
  v295[0] = &v294;
  v295[1] = 0x2020000000;
  v295[2] = 0x7FFFFFFFFFFFFFFFLL;
  v292 = 0;
  v293[0] = &v292;
  v293[1] = 0x2020000000;
  v293[2] = 0x7FFFFFFFFFFFFFFFLL;
  v290 = 0;
  v291[0] = &v290;
  v291[1] = 0x2020000000;
  v291[2] = 0x7FFFFFFFFFFFFFFFLL;
  v284 = 0;
  v285 = &v284;
  v286 = 0x3032000000;
  v287 = sub_10003C26C;
  v288 = sub_10003C27C;
  v289 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [fetchAttributes count]);
  v124 = [NSOrderedSet orderedSetWithArray:v327[5]];
  v283 = 0u;
  v282 = 0u;
  v280 = 0u;
  v281 = 0u;
  obj = fetchAttributes;
  v125 = [obj countByEnumeratingWithState:&v280 objects:v376 count:16];
  if (v125)
  {
    v126 = *v281;
    v189 = MDQueryResultScoreL2;
    v184 = MDQueryResultScoreL1;
    v182 = MDItemPhotosL2Signals;
    do
    {
      for (k = 0; k != v125; k = k + 1)
      {
        if (*v281 != v126)
        {
          objc_enumerationMutation(obj);
        }

        v128 = *(*(&v280 + 1) + 8 * k);
        v129 = [v124 indexOfObject:v128];
        v130 = v285[5];
        v131 = [NSNumber numberWithInteger:v129];
        [v130 addObject:v131];

        if (*(v293[0] + 24) != 0x7FFFFFFFFFFFFFFFLL || (v132 = [v128 isEqualToString:v189], v133 = v293, (v132 & 1) == 0))
        {
          if (*(v295[0] + 24) != 0x7FFFFFFFFFFFFFFFLL || (v134 = [v128 isEqualToString:v184], v133 = v295, (v134 & 1) == 0))
          {
            if (*(v291[0] + 24) != 0x7FFFFFFFFFFFFFFFLL)
            {
              continue;
            }

            v135 = [v128 isEqualToString:v182];
            v133 = v291;
            if (!v135)
            {
              continue;
            }
          }
        }

        *(*v133 + 24) = v129;
      }

      v125 = [obj countByEnumeratingWithState:&v280 objects:v376 count:16];
    }

    while (v125);
  }

  v274 = 0;
  v275 = &v274;
  v276 = 0x3032000000;
  v277 = sub_10003C26C;
  v278 = sub_10003C27C;
  v279 = 0;
  v268[0] = _NSConcreteStackBlock;
  v268[1] = 3221225472;
  v268[2] = sub_1000451D8;
  v268[3] = &unk_100093640;
  v270 = &v284;
  v271 = &v294;
  v272 = &v292;
  v273 = &v290;
  v136 = handlerCopy;
  v269 = v136;
  v137 = objc_retainBlock(v268);
  v257[0] = _NSConcreteStackBlock;
  v257[1] = 3221225472;
  v257[2] = sub_1000455E0;
  v257[3] = &unk_100093690;
  v262 = &v274;
  v138 = v175;
  v258 = v138;
  v263 = v318;
  v264 = v180;
  v265 = v174;
  v139 = v193;
  v259 = v139;
  v266 = v177;
  v140 = clientBundleID;
  v260 = v140;
  v267 = v172;
  v141 = v137;
  v261 = v141;
  v142 = objc_retainBlock(v257);
  v247[0] = _NSConcreteStackBlock;
  v247[1] = 3221225472;
  v247[2] = sub_100045A7C;
  v247[3] = &unk_1000936E0;
  v252 = &v274;
  v143 = v138;
  v248 = v143;
  v254 = v180;
  v144 = v139;
  v249 = v144;
  v145 = v140;
  v250 = v145;
  v253 = &v352;
  v255 = v177;
  v256 = v172;
  v146 = v141;
  v251 = v146;
  v246[0] = 0;
  v246[1] = v246;
  v246[2] = 0x2020000000;
  v246[3] = 0;
  v228[0] = _NSConcreteStackBlock;
  v228[1] = 3221225472;
  v228[2] = sub_10004600C;
  v228[3] = &unk_100093780;
  v233 = v318;
  v147 = objc_retainBlock(v247);
  v229 = v147;
  v148 = v136;
  v230 = v148;
  v234 = v320;
  v194 = v146;
  v231 = v194;
  v235 = &v274;
  v236 = &v322;
  v237 = &v306;
  v238 = &v304;
  v239 = &v302;
  v240 = &v300;
  v241 = &v298;
  v242 = &v296;
  v243 = &v308;
  v244 = &v326;
  v149 = v142;
  v232 = v149;
  v245 = v246;
  v150 = [v228 copy];
  v151 = SPLogForSPLogCategoryQuery();
  v152 = v151;
  if (gSPLogDebugAsDefault)
  {
    v153 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v153 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v151, v153))
  {
    v154 = v365[5];
    *buf = 138412802;
    v371 = userQuery;
    v372 = 2112;
    v373 = v154;
    v374 = 2048;
    v375 = v180;
    _os_log_impl(&_mh_execute_header, v152, v153, "Starting topHit query, searchString:%@, queryString:%@, hitCount:%lu", buf, 0x20u);
  }

  v155 = +[SPCoreSpotlightIndexer sharedInstance];
  v156 = v365[5];
  v195[0] = _NSConcreteStackBlock;
  v195[1] = 3221225472;
  v195[2] = sub_100046C94;
  v195[3] = &unk_1000937F8;
  v206 = v320;
  v157 = completionHandlerCopy;
  v203 = v157;
  v187 = v145;
  v196 = v187;
  v185 = v148;
  v204 = v185;
  v158 = v143;
  v197 = v158;
  v207 = v246;
  v190 = userQuery;
  v198 = v190;
  v159 = v144;
  v224 = v174;
  v208 = &v358;
  v199 = v159;
  selfCopy = self;
  v226 = v177;
  v160 = keyboardLanguage;
  v201 = v160;
  v209 = &v364;
  v227 = v173;
  v210 = &v352;
  v211 = &v342;
  v212 = &v336;
  v213 = &v326;
  v214 = &v322;
  v215 = &v312;
  v216 = &v308;
  v217 = &v306;
  v218 = &v304;
  v219 = &v302;
  v220 = &v300;
  v221 = &v298;
  v222 = &v296;
  v223 = &v284;
  v161 = obj;
  v202 = v161;
  v162 = v150;
  v205 = v162;
  v225 = v180;
  v163 = [v155 taskForTopHitQueryWithQueryString:v156 queryContext:v159 eventHandler:0 resultsHandler:v162 completionHandler:v195];
  v164 = v275[5];
  v275[5] = v163;

  v165 = v275[5];
  _Block_object_dispose(v246, 8);

  _Block_object_dispose(&v274, 8);
  _Block_object_dispose(&v284, 8);

  _Block_object_dispose(&v290, 8);
  _Block_object_dispose(&v292, 8);
  _Block_object_dispose(&v294, 8);
  _Block_object_dispose(&v296, 8);
  _Block_object_dispose(&v298, 8);
  _Block_object_dispose(&v300, 8);
  _Block_object_dispose(&v302, 8);
  _Block_object_dispose(&v304, 8);
  _Block_object_dispose(&v306, 8);
  _Block_object_dispose(&v308, 8);
  _Block_object_dispose(&v312, 8);

  _Block_object_dispose(v318, 8);
  _Block_object_dispose(v320, 8);

  _Block_object_dispose(&v322, 8);
  _Block_object_dispose(&v326, 8);

  _Block_object_dispose(&v336, 8);
  _Block_object_dispose(&v342, 8);

  _Block_object_dispose(&v352, 8);
  _Block_object_dispose(&v358, 8);

  _Block_object_dispose(&v364, 8);

  return v165;
}

- (id)taskForTopHitQueryWithQueryString:(id)string queryContext:(id)context eventHandler:(id)handler resultsHandler:(id)resultsHandler completionHandler:(id)completionHandler
{
  stringCopy = string;
  contextCopy = context;
  handlerCopy = handler;
  resultsHandlerCopy = resultsHandler;
  completionHandlerCopy = completionHandler;
  if (handlerCopy)
  {
    sub_10006352C();
  }

  v17 = completionHandlerCopy;
  v18 = [(SPCoreSpotlightDatastore *)self taskForTopHitQueryWithQueryString:stringCopy queryContext:contextCopy resultsHandler:resultsHandlerCopy completionHandler:completionHandlerCopy];

  return v18;
}

@end