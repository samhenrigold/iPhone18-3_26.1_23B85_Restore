@interface SDSuggestionBrowser
+ (id)asyncBrowserWithSessionID:(id)d context:(id)context queue:(id)queue timeout:(double)timeout;
+ (id)browserWithSessionID:(id)d context:(id)context;
+ (void)initializeCache;
- (NSArray)peopleSuggestionNodes;
- (NSArray)peopleSuggestions;
- (SDSuggestionBrowser)initWithSessionID:(id)d context:(id)context asynchronous:(BOOL)asynchronous queue:(id)queue timeout:(double)timeout;
- (SDSuggestionBrowserDelegate)delegate;
- (SDXPCHelperConnection)helperConnection;
- (id)_createAttachmentsForURLsBeingShared:(id)shared typeIdentifiersBeingShared:(id)beingShared photosAssetIDs:(id)ds processedImageResultsData:(id)data sandboxExtensionsByfileURLPath:(id)path;
- (id)_createPeopleSuggestionNodesForSuggestions:(id)suggestions;
- (id)_createPeopleSuggestionsForSuggestions:(id)suggestions;
- (id)_createPlaceholderSuggestions;
- (id)_createPredictionContextWithContext:(id)context;
- (id)_createSuggestionsForDuetSuggestions:(id)suggestions;
- (id)_extractTextFromFileURL:(id)l;
- (id)_extractTextFromTextFileURL:(id)l;
- (id)_peopleSuggestionForIdentifier:(id)identifier outIndex:(int64_t *)index;
- (id)_peopleSuggestionNodeForNodeIdentifier:(id)identifier outIndex:(int64_t *)index;
- (void)_didFetchDuetSuggestions:(id)suggestions;
- (void)_fetchDuetSuggestionsWithPreheating:(BOOL)preheating;
- (void)_fetchSuggestionsIfNeeded;
- (void)_loadIconForSuggestionNode:(id)node outIcon:(CGImage *)icon outIconData:(id *)data;
- (void)_provideFeedbackForNodeAtIndex:(id)index bundleID:(id)d suggestion:(id)suggestion selectedActionBundleID:(id)iD abandoned:(BOOL)abandoned;
- (void)provideFeedbackForPeopleSuggestion:(id)suggestion;
- (void)provideFeedbackForPeopleSuggestionIdentifier:(id)identifier;
- (void)provideFeedbackForPeopleSuggestionNodeIdentifier:(id)identifier;
- (void)setSuggestions:(id)suggestions;
- (void)suggestLessPeopleSuggestionIdentifier:(id)identifier;
@end

@implementation SDSuggestionBrowser

+ (void)initializeCache
{
  v2 = sub_10011C258();
  v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", +[SDStatusMonitor shareSheetMaxSuggestions]);
  [v2 initializePSSuggesterCacheWithMaxSuggestionCount:v3];
}

+ (id)asyncBrowserWithSessionID:(id)d context:(id)context queue:(id)queue timeout:(double)timeout
{
  queueCopy = queue;
  contextCopy = context;
  dCopy = d;
  v13 = [[self alloc] initWithSessionID:dCopy context:contextCopy asynchronous:1 queue:queueCopy timeout:timeout];

  return v13;
}

+ (id)browserWithSessionID:(id)d context:(id)context
{
  contextCopy = context;
  dCopy = d;
  v8 = [[self alloc] initWithSessionID:dCopy context:contextCopy asynchronous:0 queue:0 timeout:0.0];

  return v8;
}

- (SDSuggestionBrowser)initWithSessionID:(id)d context:(id)context asynchronous:(BOOL)asynchronous queue:(id)queue timeout:(double)timeout
{
  dCopy = d;
  contextCopy = context;
  queueCopy = queue;
  v40.receiver = self;
  v40.super_class = SDSuggestionBrowser;
  v15 = [(SDSuggestionBrowser *)&v40 init];
  if (v15)
  {
    v16 = [dCopy copy];
    sessionID = v15->_sessionID;
    v15->_sessionID = v16;

    objc_storeStrong(&v15->_queue, queue);
    v15->_isAsynchronous = asynchronous;
    v15->_timeout = timeout;
    v18 = [(SDSuggestionBrowser *)v15 _createPredictionContextWithContext:contextCopy];
    predictionContext = v15->_predictionContext;
    v15->_predictionContext = v18;

    [(_PSPredictionContext *)v15->_predictionContext setSessionID:dCopy];
    v46 = 0;
    v47 = &v46;
    v48 = 0x2050000000;
    v20 = qword_100989E18;
    v49 = qword_100989E18;
    if (!qword_100989E18)
    {
      *buf = _NSConcreteStackBlock;
      v42 = 3221225472;
      v43 = sub_10011F9E0;
      v44 = &unk_1008CDA20;
      v45 = &v46;
      sub_10011F9E0(buf);
      v20 = v47[3];
    }

    v21 = v20;
    _Block_object_dispose(&v46, 8);
    defaultConfiguration = [v20 defaultConfiguration];
    [defaultConfiguration setMaximumNumberOfSuggestions:{+[SDStatusMonitor shareSheetMaxSuggestions](SDStatusMonitor, "shareSheetMaxSuggestions")}];
    v23 = [objc_alloc(sub_10011C258()) initWithDaemonUsingConfiguration:defaultConfiguration];
    suggester = v15->_suggester;
    v15->_suggester = v23;

    v25 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v26 = dispatch_queue_create("com.apple.sharingd.suggestionBrowser.primedSuggestions", v25);
    primedSuggestionsQueue = v15->_primedSuggestionsQueue;
    v15->_primedSuggestionsQueue = v26;

    if (v15->_isAsynchronous)
    {
      v29 = share_sheet_log(v28);
      v30 = share_sheet_log(v29);
      v31 = os_signpost_id_make_with_pointer(v30, v15);

      if (v31 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, OS_SIGNPOST_INTERVAL_BEGIN, v31, "CandidatesForShareSheetRanking", " enableTelemetry=YES ", buf, 2u);
      }

      candidatesForShareSheetRanking = [(_PSSuggester *)v15->_suggester candidatesForShareSheetRanking];
      v33 = share_sheet_log(candidatesForShareSheetRanking);
      v34 = share_sheet_log(v33);
      v35 = os_signpost_id_make_with_pointer(v34, v15);

      if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, OS_SIGNPOST_INTERVAL_END, v35, "CandidatesForShareSheetRanking", " enableTelemetry=YES ", buf, 2u);
      }

      v36 = [candidatesForShareSheetRanking count];
      v15->_canExpectSuggestions = v36 != 0;
      if (v36)
      {
        _createPlaceholderSuggestions = [(SDSuggestionBrowser *)v15 _createPlaceholderSuggestions];
        suggestions = v15->_suggestions;
        v15->_suggestions = _createPlaceholderSuggestions;
      }
    }

    else
    {
      v15->_canExpectSuggestions = 1;
    }

    [(SDSuggestionBrowser *)v15 _fetchDuetSuggestionsWithPreheating:1];
  }

  return v15;
}

- (id)_createPredictionContextWithContext:(id)context
{
  contextCopy = context;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v5 = qword_100989E20;
  v24 = qword_100989E20;
  if (!qword_100989E20)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v26 = sub_10011FA38;
    v27 = &unk_1008CDA20;
    v28 = &v21;
    sub_10011FA38(&buf);
    v5 = v22[3];
  }

  v6 = v5;
  _Block_object_dispose(&v21, 8);
  v7 = objc_alloc_init(v5);
  [v7 setShowPotentialFamilyMembers:{objc_msgSend(contextCopy, "shouldSuggestFamilyMembers", v21)}];
  [v7 setIsSharePlayAvailable:{objc_msgSend(contextCopy, "isSharePlayAvailable")}];
  if ([contextCopy supportsCollaboration])
  {
    v8 = _os_feature_enabled_impl();
  }

  else
  {
    v8 = 0;
  }

  [v7 setIsCollaborationAvailable:v8];
  peopleSuggestionBundleIds = [contextCopy peopleSuggestionBundleIds];
  [v7 setSuggestionsFilteredByBundleIds:peopleSuggestionBundleIds];

  urlsBeingShared = [contextCopy urlsBeingShared];
  typeIdentifiersBeingShared = [contextCopy typeIdentifiersBeingShared];
  photosAssetIDs = [contextCopy photosAssetIDs];
  processedImageResultsData = [contextCopy processedImageResultsData];
  sandboxExtensionsByfileURLPath = [contextCopy sandboxExtensionsByfileURLPath];
  v15 = [(SDSuggestionBrowser *)self _createAttachmentsForURLsBeingShared:urlsBeingShared typeIdentifiersBeingShared:typeIdentifiersBeingShared photosAssetIDs:photosAssetIDs processedImageResultsData:processedImageResultsData sandboxExtensionsByfileURLPath:sandboxExtensionsByfileURLPath];

  v17 = share_sheet_log(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138477827;
    *(&buf + 4) = v15;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Attachments in PredictionContext for People Suggestion = %{private}@", &buf, 0xCu);
  }

  [v7 setAttachments:v15];
  bundleID = [contextCopy bundleID];
  [v7 setBundleID:bundleID];

  v19 = +[NSDate date];
  [v7 setSuggestionDate:v19];

  return v7;
}

- (id)_createAttachmentsForURLsBeingShared:(id)shared typeIdentifiersBeingShared:(id)beingShared photosAssetIDs:(id)ds processedImageResultsData:(id)data sandboxExtensionsByfileURLPath:(id)path
{
  sharedCopy = shared;
  beingSharedCopy = beingShared;
  dsCopy = ds;
  dataCopy = data;
  pathCopy = path;
  v11 = +[NSMutableArray array];
  v70 = 0;
  v71 = &v70;
  v72 = 0x2050000000;
  v12 = qword_100989E28;
  v73 = qword_100989E28;
  if (!qword_100989E28)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10011FA90;
    v79 = &unk_1008CDA20;
    v80 = &v70;
    sub_10011FA90(buf);
    v12 = v71[3];
  }

  v13 = v12;
  _Block_object_dispose(&v70, 8);
  if (v12)
  {
    if ([sharedCopy count])
    {
      v68 = 0uLL;
      v69 = 0uLL;
      v66 = 0uLL;
      v67 = 0uLL;
      v15 = beingSharedCopy;
      v16 = [v15 countByEnumeratingWithState:&v66 objects:v77 count:16];
      if (v16)
      {
        v17 = *v67;
        while (2)
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v67 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v66 + 1) + 8 * i);
            if ([v19 hasSuffix:@"url"])
            {
              v20 = v19;
              goto LABEL_18;
            }
          }

          v16 = [v15 countByEnumeratingWithState:&v66 objects:v77 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      v20 = 0;
LABEL_18:

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      obj = sharedCopy;
      v52 = [obj countByEnumeratingWithState:&v62 objects:v76 count:16];
      if (v52)
      {
        v51 = *v63;
        do
        {
          for (j = 0; j != v52; j = j + 1)
          {
            if (*v63 != v51)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v62 + 1) + 8 * j);
            if ([v20 hasSuffix:@"file-url"])
            {
              v25 = [(SDSuggestionBrowser *)self _extractTextFromFileURL:v24];
            }

            else
            {
              v25 = 0;
            }

            v26 = [[v12 alloc] initWithCreationDate:0 UTI:v20 photoLocalIdentifier:0 identifier:0 cloudIdentifier:0 contentURL:v24 contentText:v25];
            if (objc_opt_respondsToSelector())
            {
              v27 = v26;
              path = [v24 path];
              v29 = [pathCopy objectForKeyedSubscript:path];

              if (v29)
              {
                v31 = share_sheet_log(v30);
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  v32 = [v29 length];
                  *buf = 134218243;
                  *&buf[4] = v32;
                  *&buf[12] = 2113;
                  *&buf[14] = v24;
                  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "adding urlSandboxExtension with length:%lu for url attachment:%{private}@", buf, 0x16u);
                }

                [v27 setContentURLSandboxExtension:v29];
              }
            }

            [v11 addObject:v26];
            if (((dataCopy != 0) & [v20 hasSuffix:@"file-url"]) == 1)
            {
              v33 = [[v12 alloc] initWithCreationDate:0 UTI:@"SDShareSheetImageAnalysisIdentifier" photoLocalIdentifier:0 identifier:0 cloudIdentifier:0 contentURL:v24 contentText:v25 imageData:dataCopy];

              [v11 addObject:v33];
            }

            else
            {
              v33 = v26;
            }
          }

          v52 = [obj countByEnumeratingWithState:&v62 objects:v76 count:16];
        }

        while (v52);
      }
    }

    else
    {
      v60 = 0uLL;
      v61 = 0uLL;
      v58 = 0uLL;
      v59 = 0uLL;
      v34 = beingSharedCopy;
      v35 = [v34 countByEnumeratingWithState:&v58 objects:v75 count:16];
      if (v35)
      {
        v36 = *v59;
        do
        {
          for (k = 0; k != v35; k = k + 1)
          {
            if (*v59 != v36)
            {
              objc_enumerationMutation(v34);
            }

            v38 = [[v12 alloc] initWithCreationDate:0 UTI:*(*(&v58 + 1) + 8 * k) photoLocalIdentifier:0 identifier:0 cloudIdentifier:0 contentURL:0 contentText:0];
            [v11 addObject:v38];
          }

          v35 = [v34 countByEnumeratingWithState:&v58 objects:v75 count:16];
        }

        while (v35);
      }

      if (!dataCopy)
      {
        goto LABEL_48;
      }

      v20 = [[v12 alloc] initWithCreationDate:0 UTI:@"SDShareSheetImageAnalysisIdentifier" photoLocalIdentifier:0 identifier:0 cloudIdentifier:0 contentURL:0 contentText:0 imageData:dataCopy];
      [v11 addObject:v20];
    }

LABEL_48:
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v39 = dsCopy;
    v40 = [v39 countByEnumeratingWithState:&v54 objects:v74 count:16];
    if (v40)
    {
      v41 = *v55;
      do
      {
        for (m = 0; m != v40; m = m + 1)
        {
          if (*v55 != v41)
          {
            objc_enumerationMutation(v39);
          }

          v43 = [[v12 alloc] initWithCreationDate:0 UTI:0 photoLocalIdentifier:*(*(&v54 + 1) + 8 * m) identifier:0 cloudIdentifier:0 contentURL:0 contentText:0];
          [v11 addObject:v43];
        }

        v40 = [v39 countByEnumeratingWithState:&v54 objects:v74 count:16];
      }

      while (v40);
    }

    v22 = [v11 copy];
    goto LABEL_56;
  }

  v21 = share_sheet_log(v14);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    sub_10011FB98();
  }

  v22 = &__NSArray0__struct;
LABEL_56:

  return v22;
}

- (id)_extractTextFromFileURL:(id)l
{
  lCopy = l;
  pathExtension = [lCopy pathExtension];
  if (([pathExtension isEqualToString:@"rtf"] & 1) != 0 || objc_msgSend(pathExtension, "isEqualToString:", @"txt"))
  {
    v6 = [(SDSuggestionBrowser *)self _extractTextFromTextFileURL:lCopy];
LABEL_4:
    v7 = v6;
    goto LABEL_5;
  }

  if ([pathExtension isEqualToString:@"pdf"])
  {
    v6 = [(SDSuggestionBrowser *)self _extractTextFromPDFFileURL:lCopy];
    goto LABEL_4;
  }

  v7 = 0;
LABEL_5:

  return v7;
}

- (id)_extractTextFromTextFileURL:(id)l
{
  lCopy = l;
  v14 = 0;
  v4 = [NSFileHandle fileHandleForReadingFromURL:lCopy error:&v14];
  v5 = v14;
  v6 = v5;
  if (v4)
  {
    v13 = 0;
    v7 = [v4 readDataUpToLength:102400 error:&v13];
    v8 = v13;

    if ([v7 length])
    {
      v9 = [[NSString alloc] initWithData:v7 encoding:4];
      if (v9)
      {
        v10 = v9;
        goto LABEL_15;
      }

      v11 = share_sheet_log(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10011FBD4();
      }
    }

    else
    {
      if (!v8)
      {
LABEL_14:
        v10 = 0;
        goto LABEL_15;
      }

      v11 = share_sheet_log(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10011FC10();
      }
    }

    goto LABEL_14;
  }

  v7 = share_sheet_log(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10011FC84();
  }

  v10 = 0;
  v8 = v6;
LABEL_15:

  return v10;
}

- (void)setSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  if (self->_suggestions != suggestionsCopy)
  {
    v6 = suggestionsCopy;
    objc_storeStrong(&self->_suggestions, suggestions);
    [(SDSuggestionBrowser *)self setPeopleSuggestionNodes:0];
    [(SDSuggestionBrowser *)self setPeopleSuggestions:0];
    suggestionsCopy = v6;
  }
}

- (NSArray)peopleSuggestionNodes
{
  [(SDSuggestionBrowser *)self _fetchSuggestionsIfNeeded];
  peopleSuggestionNodes = self->_peopleSuggestionNodes;
  if (!peopleSuggestionNodes)
  {
    suggestions = [(SDSuggestionBrowser *)self suggestions];
    v5 = [(SDSuggestionBrowser *)self _createPeopleSuggestionNodesForSuggestions:suggestions];
    v6 = self->_peopleSuggestionNodes;
    self->_peopleSuggestionNodes = v5;

    peopleSuggestionNodes = self->_peopleSuggestionNodes;
  }

  return peopleSuggestionNodes;
}

- (NSArray)peopleSuggestions
{
  [(SDSuggestionBrowser *)self _fetchSuggestionsIfNeeded];
  peopleSuggestions = self->_peopleSuggestions;
  if (!peopleSuggestions)
  {
    suggestions = [(SDSuggestionBrowser *)self suggestions];
    v5 = [(SDSuggestionBrowser *)self _createPeopleSuggestionsForSuggestions:suggestions];
    v6 = self->_peopleSuggestions;
    self->_peopleSuggestions = v5;

    peopleSuggestions = self->_peopleSuggestions;
  }

  return peopleSuggestions;
}

- (id)_createPlaceholderSuggestions
{
  v2 = +[SDStatusMonitor shareSheetMaxSuggestions];
  for (i = [NSMutableArray arrayWithCapacity:v2];
  {
    v4 = +[SDSuggestion placeholderSuggestion];
    [i addObject:v4];
  }

  v5 = [i copy];

  return v5;
}

- (id)_createSuggestionsForDuetSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [suggestionsCopy count]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = suggestionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [SDSuggestion alloc];
        v12 = [(SDSuggestion *)v11 initWithSuggestion:v10, v17];
        displayName = [(SDSuggestion *)v12 displayName];
        if (displayName)
        {
        }

        else
        {
          formattedHandles = [(SDSuggestion *)v12 formattedHandles];

          if (!formattedHandles)
          {
            goto LABEL_10;
          }
        }

        [v4 addObject:v12];
LABEL_10:
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = [v4 copy];

  return v15;
}

- (id)_createPeopleSuggestionNodesForSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [suggestionsCopy count]);
  objc_initWeak(&location, self);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = suggestionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [[SDSuggestionNode alloc] initWithSuggestion:v10];
        if (([v10 isPlaceholder] & 1) == 0)
        {
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_10011D9A4;
          v14[3] = &unk_1008D0E10;
          objc_copyWeak(&v15, &location);
          [(SDSuggestionNode *)v11 setLoadIconHandler:v14];
          objc_destroyWeak(&v15);
        }

        [v5 addObject:v11];
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v7);
  }

  v12 = [v5 copy];
  objc_destroyWeak(&location);

  return v12;
}

- (id)_createPeopleSuggestionsForSuggestions:(id)suggestions
{
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [suggestions count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  suggestions = [(SDSuggestionBrowser *)self suggestions];
  v6 = [suggestions countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(suggestions);
        }

        createPeopleSuggestion = [*(*(&v13 + 1) + 8 * i) createPeopleSuggestion];
        [v4 addObject:createPeopleSuggestion];
      }

      v7 = [suggestions countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

- (void)_didFetchDuetSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  [(SDSuggestionBrowser *)self setDuetSuggestions:suggestionsCopy];
  v5 = [(SDSuggestionBrowser *)self _createSuggestionsForDuetSuggestions:suggestionsCopy];

  [(SDSuggestionBrowser *)self setSuggestions:v5];
  if ([(SDSuggestionBrowser *)self isAsynchronous])
  {
    delegate = [(SDSuggestionBrowser *)self delegate];
    [delegate suggestionBrowserDidUpdateSuggestions:self];
  }
}

- (void)_fetchSuggestionsIfNeeded
{
  suggestions = [(SDSuggestionBrowser *)self suggestions];

  if (!suggestions)
  {
    primedSuggestionsQueue = [(SDSuggestionBrowser *)self primedSuggestionsQueue];
    dispatch_sync(primedSuggestionsQueue, &stru_1008D0E30);

    suggestions2 = [(SDSuggestionBrowser *)self suggestions];

    if (!suggestions2)
    {

      [(SDSuggestionBrowser *)self _fetchDuetSuggestionsWithPreheating:0];
    }
  }
}

- (void)_fetchDuetSuggestionsWithPreheating:(BOOL)preheating
{
  preheatingCopy = preheating;
  v5 = +[SDStatusMonitor sharedMonitor];
  disablePeopleSuggestions = [v5 disablePeopleSuggestions];

  if (disablePeopleSuggestions)
  {
    v8 = share_sheet_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "People suggestions are disabled", buf, 2u);
    }

LABEL_14:
    [(SDSuggestionBrowser *)self setSuggestions:&__NSArray0__struct];
    return;
  }

  canExpectSuggestions = [(SDSuggestionBrowser *)self canExpectSuggestions];
  v10 = canExpectSuggestions;
  v11 = share_sheet_log(canExpectSuggestions);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if ((v10 & 1) == 0)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "People suggestions are not expected.", buf, 2u);
    }

    goto LABEL_14;
  }

  if (v12)
  {
    sessionID = [(SDSuggestionBrowser *)self sessionID];
    *buf = 138412290;
    v43 = *&sessionID;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Calling into PeopleSuggester for session ID %@", buf, 0xCu);
  }

  v15 = share_sheet_log(v14);
  v16 = os_signpost_id_make_with_pointer(v15, self);

  sub_10011DCC0(v16, 1, preheatingCopy, [(SDSuggestionBrowser *)self isAsynchronous]);
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10011E258;
  v40[3] = &unk_1008D0E58;
  v41 = preheatingCopy;
  v40[4] = self;
  v40[5] = v16;
  v17 = objc_retainBlock(v40);
  if ([(SDSuggestionBrowser *)self isAsynchronous])
  {
    queue = [(SDSuggestionBrowser *)self queue];
    timeout = [(SDSuggestionBrowser *)self timeout];
    if (v20 <= 0.0)
    {
      v22 = 1.79769313e308;
    }

    else
    {
      timeout = [(SDSuggestionBrowser *)self timeout];
      v22 = v21;
    }

    v27 = share_sheet_log(timeout);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v43 = v22;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "fetch people suggestions asynchronously with timeout:%f", buf, 0xCu);
    }

    suggester = self->_suggester;
    predictionContext = self->_predictionContext;
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10011E3AC;
    v37[3] = &unk_1008D0EA8;
    v37[4] = self;
    v38 = queue;
    v39 = v17;
    v30 = v17;
    v23 = queue;
    [(_PSSuggester *)suggester asyncSuggestInteractionsFromContext:predictionContext timeout:v37 completionHandler:v22];
  }

  else
  {
    v31 = _NSConcreteStackBlock;
    v32 = 3221225472;
    v33 = sub_10011E548;
    v34 = &unk_1008CE708;
    selfCopy = self;
    v36 = v17;
    v23 = v17;
    v24 = objc_retainBlock(&v31);
    v25 = v24;
    if (preheatingCopy)
    {
      v26 = [(SDSuggestionBrowser *)self primedSuggestionsQueue:v31];
      dispatch_async(v26, v25);
    }

    else
    {
      (v24[2])(v24);
    }
  }
}

- (void)_loadIconForSuggestionNode:(id)node outIcon:(CGImage *)icon outIconData:(id *)data
{
  suggestion = [node suggestion];
  image = [suggestion image];

  if (image)
  {
    v11 = share_sheet_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      displayName = [suggestion displayName];
      *buf = 138412290;
      v46 = displayName;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Contact %@ is a donated suggestion, fetching from intents", buf, 0xCu);
    }

    conversationIdentifier = [suggestion conversationIdentifier];
    v14 = conversationIdentifier;
    if (conversationIdentifier)
    {
      derivedIntentIdentifier = conversationIdentifier;
    }

    else
    {
      derivedIntentIdentifier = [suggestion derivedIntentIdentifier];
    }

    firstObject2 = derivedIntentIdentifier;

    image2 = [suggestion image];
    helperConnection = [(SDSuggestionBrowser *)self helperConnection];
    iconData = sub_100090848(image2, firstObject2, 0, helperConnection);

    if (iconData)
    {
      icon = 0;
      goto LABEL_18;
    }

    v22 = share_sheet_log(v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10011FDA4(firstObject2, suggestion, v22);
    }
  }

  recipients = [suggestion recipients];
  v24 = [recipients count];

  if (v24 < 2)
  {
    v36 = [SharingXPCHelperContactIcon alloc];
    recipients2 = [suggestion recipients];
    firstObject = [recipients2 firstObject];
    contact = [firstObject contact];
    contacts = [(SharingXPCHelperContactIcon *)v36 initWithContact:contact iconData:0 atIndex:0 cacheLookupKey:0];

    v43 = contacts;
    v40 = [NSArray arrayWithObjects:&v43 count:1];
    helperConnection2 = [(SDSuggestionBrowser *)self helperConnection];
    v32 = sub_100090A2C(v40, helperConnection2);

    firstObject2 = [(SharingXPCHelperGroupContactIcon *)v32 firstObject];
  }

  else
  {
    contacts = [suggestion contacts];
    v26 = [(SharingXPCHelperContactIcon *)contacts count];
    transientContactsCount = [suggestion transientContactsCount];
    v28 = share_sheet_log(transientContactsCount);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v26 - transientContactsCount;
      recipients3 = [suggestion recipients];
      v31 = [recipients3 count];
      *buf = 134218240;
      v46 = v29;
      v47 = 2048;
      v48 = v31;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Received %ld out of %ld contacts from group recipients", buf, 0x16u);
    }

    v32 = [[SharingXPCHelperGroupContactIcon alloc] initWithContacts:contacts iconData:0 atIndex:0 cacheLookupKey:0];
    v44 = v32;
    v33 = [NSArray arrayWithObjects:&v44 count:1];
    helperConnection3 = [(SDSuggestionBrowser *)self helperConnection];
    v35 = sub_100090AA0(v33, helperConnection3);

    firstObject2 = [v35 firstObject];
  }

  icon = [firstObject2 icon];
  iconData = [firstObject2 iconData];
LABEL_18:

  *icon = icon;
  v42 = iconData;
  *data = iconData;
}

- (void)_provideFeedbackForNodeAtIndex:(id)index bundleID:(id)d suggestion:(id)suggestion selectedActionBundleID:(id)iD abandoned:(BOOL)abandoned
{
  abandonedCopy = abandoned;
  indexCopy = index;
  dCopy = d;
  suggestionCopy = suggestion;
  iDCopy = iD;
  v16 = [UIActivity _activityImageForActionRepresentationImage:0];
  [v16 size];
  v18 = v17;
  v19 = +[UIScreen mainScreen];
  [v19 bounds];
  v21 = v20;

  duetSuggestions = [(SDSuggestionBrowser *)self duetSuggestions];
  v23 = duetSuggestions;
  if (abandonedCopy)
  {
    duetSuggestions = [sub_10011EC74() abandonment];
    goto LABEL_12;
  }

  if (!indexCopy)
  {
    if (suggestionCopy)
    {
      v27 = objc_alloc(sub_10011EC74());
      v28 = 0;
      v29 = suggestionCopy;
    }

    else
    {
      if (iDCopy)
      {
        v27 = objc_alloc(sub_10011EC74());
        v28 = 1;
        v29 = 0;
        v30 = iDCopy;
        goto LABEL_11;
      }

      if (!dCopy)
      {
        goto LABEL_19;
      }

      v27 = objc_alloc(sub_10011EC74());
      v28 = 4;
      v29 = 0;
    }

    v30 = dCopy;
LABEL_11:
    duetSuggestions = [v27 initWithType:v28 suggestion:v29 transportBundleID:v30];
LABEL_12:
    v26 = duetSuggestions;
    if (duetSuggestions)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  v24 = objc_alloc(sub_10011EC74());
  v25 = [v23 objectAtIndexedSubscript:{objc_msgSend(indexCopy, "unsignedIntValue")}];
  v26 = [v24 initWithType:0 suggestion:v25 transportBundleID:dCopy];

  if (v26)
  {
LABEL_13:
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10011ED54;
    v36[3] = &unk_1008D0ED0;
    v31 = v26;
    v37 = v31;
    selfCopy = self;
    v39 = v23;
    v40 = v21;
    v41 = v18 + 10.0;
    v32 = objc_retainBlock(v36);
    v33 = v32;
    if (indexCopy | suggestionCopy)
    {
      (v32[2])(v32);
    }

    else
    {
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_10011EEE8;
      v34[3] = &unk_1008D08E0;
      v35 = v32;
      dispatch_async(&_dispatch_main_q, v34);
    }

    goto LABEL_21;
  }

LABEL_19:
  v31 = share_sheet_log(duetSuggestions);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
  {
    sub_10011FE68();
  }

LABEL_21:
}

- (void)provideFeedbackForPeopleSuggestionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = 0;
  v5 = [(SDSuggestionBrowser *)self _peopleSuggestionForIdentifier:identifierCopy outIndex:&v8];
  if (v5)
  {
    v6 = [NSNumber numberWithInteger:v8];
    transportBundleIdentifier = [v5 transportBundleIdentifier];
    [(SDSuggestionBrowser *)self provideFeedbackForNodeAtIndex:v6 bundleID:transportBundleIdentifier selectedActionBundleID:0 abandoned:0];
  }

  else
  {
    v6 = share_sheet_log(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10011FEA8();
    }
  }
}

- (void)provideFeedbackForPeopleSuggestionNodeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = 0;
  v5 = [(SDSuggestionBrowser *)self _peopleSuggestionNodeForNodeIdentifier:identifierCopy outIndex:&v8];
  if (v5)
  {
    v6 = [NSNumber numberWithInteger:v8];
    bundleID = [v5 bundleID];
    [(SDSuggestionBrowser *)self provideFeedbackForNodeAtIndex:v6 bundleID:bundleID selectedActionBundleID:0 abandoned:0];
  }

  else
  {
    v6 = share_sheet_log(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10011FF18();
    }
  }
}

- (void)provideFeedbackForPeopleSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  bundleID = [suggestionCopy bundleID];
  [(SDSuggestionBrowser *)self _provideFeedbackForNodeAtIndex:0 bundleID:bundleID suggestion:suggestionCopy selectedActionBundleID:0 abandoned:0];
}

- (void)suggestLessPeopleSuggestionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  peopleSuggestionNodes = [(SDSuggestionBrowser *)self peopleSuggestionNodes];
  v6 = [peopleSuggestionNodes mutableCopy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  peopleSuggestionNodes2 = [(SDSuggestionBrowser *)self peopleSuggestionNodes];
  v8 = [peopleSuggestionNodes2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(peopleSuggestionNodes2);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        identifier = [v12 identifier];
        v14 = [identifier isEqualToString:identifierCopy];

        if (v14)
        {
          [v6 removeObject:v12];
          goto LABEL_11;
        }
      }

      v9 = [peopleSuggestionNodes2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [(SDSuggestionBrowser *)self setPeopleSuggestionNodes:v6];
}

- (id)_peopleSuggestionForIdentifier:(id)identifier outIndex:(int64_t *)index
{
  identifierCopy = identifier;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10011F3E4;
  v19 = sub_10011F3F4;
  v20 = 0;
  peopleSuggestions = [(SDSuggestionBrowser *)self peopleSuggestions];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10011F3FC;
  v11[3] = &unk_1008D0EF8;
  v8 = identifierCopy;
  v12 = v8;
  v13 = &v15;
  indexCopy = index;
  [peopleSuggestions enumerateObjectsUsingBlock:v11];

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

- (id)_peopleSuggestionNodeForNodeIdentifier:(id)identifier outIndex:(int64_t *)index
{
  identifierCopy = identifier;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10011F3E4;
  v19 = sub_10011F3F4;
  v20 = 0;
  peopleSuggestionNodes = [(SDSuggestionBrowser *)self peopleSuggestionNodes];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10011F5EC;
  v11[3] = &unk_1008D0F20;
  v8 = identifierCopy;
  v12 = v8;
  v13 = &v15;
  indexCopy = index;
  [peopleSuggestionNodes enumerateObjectsUsingBlock:v11];

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

- (SDSuggestionBrowserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SDXPCHelperConnection)helperConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_helperConnection);

  return WeakRetained;
}

@end