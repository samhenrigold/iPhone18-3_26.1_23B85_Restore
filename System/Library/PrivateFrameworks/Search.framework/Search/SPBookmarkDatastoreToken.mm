@interface SPBookmarkDatastoreToken
- (SPBookmarkDatastoreToken)initWithStore:(id)store;
- (void)begin:(id)begin;
@end

@implementation SPBookmarkDatastoreToken

- (SPBookmarkDatastoreToken)initWithStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = SPBookmarkDatastoreToken;
  v6 = [(SPBookmarkDatastoreToken *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
    v7->_type = 3;
  }

  return v7;
}

- (void)begin:(id)begin
{
  beginCopy = begin;
  v5 = si_tracing_current_span();
  v6 = *(v5 + 16);
  v55 = *v5;
  v56 = v6;
  v57 = *(v5 + 32);
  v7 = *v5;
  spanid = si_tracing_calc_next_spanid();
  v9 = *(v5 + 8);
  *v5 = v7;
  *(v5 + 8) = spanid;
  *(v5 + 16) = v9;
  *(v5 + 28) = 102;
  *(v5 + 32) = "[SPBookmarkDatastoreToken begin:]";
  si_tracing_log_span_begin();
  queryContext = [beginCopy queryContext];
  getTrimmedSearchString = [queryContext getTrimmedSearchString];
  v12 = [getTrimmedSearchString mutableCopy];

  v13 = SSEnableSpotlightTopHitPersonalizedRanking();
  objc_initWeak(&location, beginCopy);
  disabledBundles = [queryContext disabledBundles];
  v15 = PRSRankingSafariBundleString;
  if ([disabledBundles containsObject:PRSRankingSafariBundleString])
  {

LABEL_6:
    v18 = +[SDController workQueue];
    v52[1] = _NSConcreteStackBlock;
    v52[2] = 3221225472;
    v52[3] = sub_10002D540;
    v52[4] = &unk_100091E58;
    objc_copyWeak(&v53, &location);
    v52[5] = self;
    md_tracing_dispatch_async_propagating();

    objc_destroyWeak(&v53);
    goto LABEL_24;
  }

  v16 = looksLikeURL();

  if ((v16 & 1) == 0)
  {
    goto LABEL_6;
  }

  if ([v12 containsString:@"://"])
  {
    v17 = v12;
  }

  else
  {
    v17 = [NSString stringWithFormat:@"https://%@", v12];
  }

  v19 = v17;
  v49 = [NSURL URLWithString:v17];
  v48 = v19;
  if (v49 && ([v49 scheme], (v20 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(v49, "host"), v21 = objc_claimAutoreleasedReturnValue(), v22 = v21 == 0, v21, v20, !v22))
  {
    v23 = objc_opt_new();
    v47 = objc_opt_new();
    v46 = objc_opt_new();
    [v46 setIconType:1];
    [v47 setThumbnail:v46];
    v24 = [SFRichText textWithString:v12];
    [v47 setTitle:v24];

    v25 = [SFPunchout punchoutWithURL:v49];
    v61 = v25;
    v26 = [NSArray arrayWithObjects:&v61 count:1];
    [v47 setPunchoutOptions:v26];

    v27 = [SFRichText textWithString:v12];
    v60 = v27;
    v28 = [NSArray arrayWithObjects:&v60 count:1];
    [v47 setDescriptions:v28];

    v29 = objc_opt_new();
    [v23 setInlineCard:v29];

    v59 = v47;
    v30 = [NSArray arrayWithObjects:&v59 count:1];
    inlineCard = [v23 inlineCard];
    [inlineCard setCardSections:v30];

    [v23 setContentURL:v48];
    [v23 setApplicationBundleIdentifier:v15];
    [v23 setSectionBundleIdentifier:v15];
    [v23 setResultBundleId:PRSRankingUserTypedURLBundleString];
    [v23 setType:2];
    [v23 setQueryId:{objc_msgSend(beginCopy, "queryIdent")}];
    v32 = [@"userTypedURL-" stringByAppendingString:v12];
    [v23 setIdentifier:v32];

    [v23 setProtectionClass:NSFileProtectionCompleteUntilFirstUserAuthentication];
    if ((v13 & 1) == 0)
    {
      [v23 setIsSafariTopHit:1];
      [v23 setTopHit:SSSetTopHitWithReasonString()];
    }

    [v23 setForceNoTopHit:0];
    host = [v49 host];
    [v23 setCompletion:host];

    v34 = SSCompactRankingAttrsAlloc();
    SSCompactRankingAttrsUpdateValue();
    SSCompactRankingAttrsUpdateValue();
    SSCompactRankingAttrsUpdateValue();
    v35 = [[PRSRankingItem alloc] initWithAttrs:v34];
    [v23 setRankingItem:v35];

    if (v13)
    {
      rankingItem = [v23 rankingItem];
      [rankingItem setBundleIDType:{objc_msgSend(rankingItem, "bundleIDType") | 0x80}];
    }

    v37 = objc_opt_new();
    [v37 setMaxInitiallyVisibleResults:1];
    [v37 setBundleIdentifier:v15];
    v38 = [LSApplicationProxy applicationProxyForIdentifier:v15];
    localizedName = [v38 localizedName];
    [v37 setTitle:localizedName];

    v58 = v23;
    v40 = [NSArray arrayWithObjects:&v58 count:1];
    [v37 setResults:v40];

    if (v13)
    {
      [v37 setDomain:1];
    }

    if (!self->_cancelled)
    {
      v41 = +[SDController workQueue];
      objc_copyWeak(v51, &location);
      v50 = v37;
      md_tracing_dispatch_async_propagating();

      objc_destroyWeak(v51);
    }
  }

  else
  {
    v42 = +[SDController workQueue];
    v51[1] = _NSConcreteStackBlock;
    v51[2] = 3221225472;
    v51[3] = sub_10002D598;
    v51[4] = &unk_100091E58;
    objc_copyWeak(v52, &location);
    v51[5] = self;
    md_tracing_dispatch_async_propagating();

    v43 = SPLogForSPLogCategoryDefault();
    v44 = gSPLogInfoAsDefault;
    if (os_log_type_enabled(v43, ((gSPLogInfoAsDefault & 1) == 0)))
    {
      *buf = 138412290;
      v63 = v19;
      _os_log_impl(&_mh_execute_header, v43, ((v44 & 1) == 0), "Failed to create URL from query %@", buf, 0xCu);
    }

    objc_destroyWeak(v52);
  }

LABEL_24:
  objc_destroyWeak(&location);

  si_tracing_log_span_end();
  v45 = v56;
  *v5 = v55;
  *(v5 + 16) = v45;
  *(v5 + 32) = v57;
}

@end