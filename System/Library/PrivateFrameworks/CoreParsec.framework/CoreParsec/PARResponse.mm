@interface PARResponse
+ (id)responseFromData:(id)data session:(id)session request:(id)request;
+ (id)responseFromJSON:(id)n session:(id)session;
+ (id)responseFromReply:(id)reply;
- (PARResponse)initWithReply:(id)reply;
- (PARResponse)initWithReply:(id)reply factory:(id)factory responseData:(id)data;
@end

@implementation PARResponse

- (PARResponse)initWithReply:(id)reply factory:(id)factory responseData:(id)data
{
  replyCopy = reply;
  swift_unknownObjectRetain();
  dataCopy = data;
  sub_1B11218CC();

  return PARResponse.init(reply:factory:responseData:)(replyCopy, factory);
}

- (PARResponse)initWithReply:(id)reply
{
  replyCopy = reply;
  v11.receiver = self;
  v11.super_class = PARResponse;
  v6 = [(PARResponse *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reply, reply);
    rawResponse = [replyCopy rawResponse];
    rawResponse = v7->_rawResponse;
    v7->_rawResponse = rawResponse;
  }

  return v7;
}

+ (id)responseFromReply:(id)reply
{
  v125 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  task = [replyCopy task];
  request = [task request];

  [request scale];
  if (v4 > 0.0)
  {
    [replyCopy scale];
    if (v5 == 0.0)
    {
      [request scale];
      [replyCopy setScale:?];
    }
  }

  [replyCopy scale];
  v7 = v6;
  queryId = [request queryId];
  task2 = [replyCopy task];
  session = [task2 session];

  context = objc_autoreleasePoolPush();
  configuration = [session configuration];
  factory = [configuration factory];
  v11 = factory;
  if (factory)
  {
    v12 = factory;
  }

  else
  {
    v12 = objc_alloc_init(PARDefaultFactory);
  }

  v95 = v12;

  v13 = [[PARResponse alloc] initWithReply:replyCopy];
  rawResponse = [(PARResponse *)v13 rawResponse];
  firstObject = [rawResponse firstObject];
  v101 = firstObject;
  if (firstObject)
  {
    v15 = [firstObject parsec_stringForKey:@"prefix"];
    prefix = v13->_prefix;
    v13->_prefix = v15;

    v17 = [v101 parsec_stringForKey:@"query"];
    query = v13->_query;
    v13->_query = v17;

    v19 = [v101 parsec_stringForKey:@"server_completion"];
    serverCompletion = v13->_serverCompletion;
    v13->_serverCompletion = v19;

    v100 = [v101 parsec_dictionaryForKey:@"engagement_scores"];
    v89 = [v100 parsec_numberForKey:@"version"];
    v88 = [v100 parsec_numberForKey:@"serverScore"];
    v87 = [v100 parsec_numberForKey:@"serverScoreConfidence"];
    v86 = [v100 parsec_numberForKey:@"localScore"];
    v85 = [v100 parsec_numberForKey:@"localScoreConfidence"];
    v90 = [v100 parsec_arrayForKey:@"domainEngagementScores"];
    v84 = [v90 parsec_mapObjectsUsingBlock:&__block_literal_global_1896];
    v21 = [objc_alloc(MEMORY[0x1E69CA070]) initWithVersion:v89 serverScore:v88 severScoreConfidence:v87 localScore:v86 localScoreConfidence:v85 domainScores:v84];
    engagementSignal = v13->_engagementSignal;
    v13->_engagementSignal = v21;

    v23 = [v101 parsec_stringForKey:@"sqf"];
    parsec_base64DecodedData = [v23 parsec_base64DecodedData];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v79 = 0;
LABEL_32:
      v40 = [v101 parsec_dictionaryForKey:@"l3b"];
      serverFeatures = v13->_serverFeatures;
      v13->_serverFeatures = v40;

      v83 = [v101 parsec_arrayForKey:@"suggestions"];
      v117[0] = MEMORY[0x1E69E9820];
      v117[1] = 3221225472;
      v117[2] = __33__PARResponse_responseFromReply___block_invoke_2;
      v117[3] = &unk_1E7AC67F0;
      v42 = replyCopy;
      v118 = v42;
      v43 = [v83 parsec_mapObjectsUsingBlock:v117];
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v45 = v43;
      v46 = [v45 countByEnumeratingWithState:&v113 objects:v124 count:16];
      if (v46)
      {
        v47 = *v114;
        do
        {
          for (i = 0; i != v46; ++i)
          {
            if (*v114 != v47)
            {
              objc_enumerationMutation(v45);
            }

            v49 = *(*(&v113 + 1) + 8 * i);
            detailText = [v49 detailText];
            suggestion = [v49 suggestion];
            [dictionary setObject:detailText forKeyedSubscript:suggestion];
          }

          v46 = [v45 countByEnumeratingWithState:&v113 objects:v124 count:16];
        }

        while (v46);
      }

      obj = objc_alloc_init(MEMORY[0x1E695DF70]);
      if ([v45 count])
      {
        firstObject2 = [v45 firstObject];
        [obj insertObject:firstObject2 atIndex:0];

        if ([v45 count] >= 2)
        {
          v53 = [v45 subarrayWithRange:{1, objc_msgSend(v45, "count") - 1}];
          [obj addObjectsFromArray:v53];
        }
      }

      objc_storeStrong(&v13->_suggestions, obj);
      v13->_suggestionsAreBlended = [v101 parsec_BOOLForKey:@"suggestions_are_blended"];
      v82 = [v101 parsec_arrayForKey:@"corrections"];
      v54 = [v82 parsec_mapObjectsUsingBlock:&__block_literal_global_64];
      corrections = v13->_corrections;
      v13->_corrections = v54;

      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      array = [MEMORY[0x1E695DF70] array];
      v94 = [v101 parsec_arrayForKey:@"results"];
      v58 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v94, "count")}];
      v102[0] = MEMORY[0x1E69E9820];
      v102[1] = 3221225472;
      v102[2] = __33__PARResponse_responseFromReply___block_invoke_4;
      v102[3] = &unk_1E7AC6818;
      v103 = v42;
      v104 = v95;
      v111 = queryId;
      v77 = v79;
      v105 = v77;
      v106 = session;
      v112 = v7;
      v80 = v58;
      v107 = v80;
      v78 = dictionary2;
      v108 = v78;
      v59 = array;
      v109 = v59;
      v60 = v13;
      v110 = v60;
      v61 = [v94 parsec_mapObjectsUsingBlock:v102];
      results = v60->_results;
      v60->_results = v61;

      objc_storeStrong(&v60->_alternativeResults, v58);
      if (PARLogHandleForCategory_onceToken_1898 != -1)
      {
        dispatch_once(&PARLogHandleForCategory_onceToken_1898, &__block_literal_global_331);
      }

      v63 = PARLogHandleForCategory_logHandles_2_1899;
      if (os_log_type_enabled(PARLogHandleForCategory_logHandles_2_1899, OS_LOG_TYPE_INFO))
      {
        v75 = v13->_prefix;
        v64 = v63;
        suggestions = [(PARResponse *)v60 suggestions];
        v65 = [suggestions count];
        results = [(PARResponse *)v60 results];
        v67 = [results count];
        alternativeResults = [(PARResponse *)v60 alternativeResults];
        v69 = [alternativeResults count];
        *buf = 134219011;
        *&buf[4] = queryId;
        *&buf[12] = 2117;
        *&buf[14] = v75;
        *&buf[22] = 2048;
        v122 = v65;
        *v123 = 2048;
        *&v123[2] = v67;
        *&v123[10] = 2048;
        *&v123[12] = v69;
        _os_log_impl(&dword_1B1064000, v64, OS_LOG_TYPE_INFO, "Response for qid:%llu[%{sensitive}@] processed with %lu suggestions, %lu results and %lu alternative results", buf, 0x34u);
      }

      sections = v60->_sections;
      v60->_sections = v59;
      v71 = v59;

      v72 = v110;
      v73 = v60;

      firstObject = v101;
      goto LABEL_47;
    }

    v24 = request;
    queryString = [v24 queryString];
    v26 = parsec_base64DecodedData;
    v27 = queryString;
    v28 = v27;
    if (v26)
    {
      if (v27)
      {
        v29 = v27;
        v120 = 0;
        v30 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v26 options:0 error:&v120];
        v31 = v120;
        if (v31)
        {
          if (PARLogHandleForCategory_onceToken_1898 != -1)
          {
            dispatch_once(&PARLogHandleForCategory_onceToken_1898, &__block_literal_global_331);
          }

          v32 = PARLogHandleForCategory_logHandles_2_1899;
          if (!os_log_type_enabled(PARLogHandleForCategory_logHandles_2_1899, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_29;
          }

          *buf = 138412290;
          *&buf[4] = v31;
          v33 = "error decoding sqf: %@";
          v34 = v32;
          v35 = 12;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v122 = __Block_byref_object_copy_;
            *v123 = __Block_byref_object_dispose_;
            *&v123[8] = 0;
            v119[0] = MEMORY[0x1E69E9820];
            v119[1] = 3221225472;
            v119[2] = __decodeSqf_block_invoke;
            v119[3] = &unk_1E7AC6860;
            v119[4] = v29;
            v119[5] = buf;
            [v30 enumerateObjectsUsingBlock:v119];
            v37 = *(*&buf[8] + 40);
            _Block_object_dispose(buf, 8);

LABEL_30:
            v28 = v29;
            goto LABEL_31;
          }

          if (PARLogHandleForCategory_onceToken_1898 != -1)
          {
            dispatch_once(&PARLogHandleForCategory_onceToken_1898, &__block_literal_global_331);
          }

          v38 = PARLogHandleForCategory_logHandles_2_1899;
          if (!os_log_type_enabled(PARLogHandleForCategory_logHandles_2_1899, OS_LOG_TYPE_ERROR))
          {
LABEL_29:
            v37 = 0;
            goto LABEL_30;
          }

          *buf = 0;
          v33 = "sqf not an array";
          v34 = v38;
          v35 = 2;
        }

        _os_log_error_impl(&dword_1B1064000, v34, OS_LOG_TYPE_ERROR, v33, buf, v35);
        goto LABEL_29;
      }
    }

    else
    {
      if (PARLogHandleForCategory_onceToken_1898 != -1)
      {
        dispatch_once(&PARLogHandleForCategory_onceToken_1898, &__block_literal_global_331);
      }

      v36 = PARLogHandleForCategory_logHandles_2_1899;
      if (os_log_type_enabled(PARLogHandleForCategory_logHandles_2_1899, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1B1064000, v36, OS_LOG_TYPE_DEBUG, "no sqf", buf, 2u);
      }
    }

    v37 = 0;
LABEL_31:
    v79 = v28;

    rawSqf = v13->_rawSqf;
    v13->_rawSqf = v37;

    goto LABEL_32;
  }

LABEL_47:

  objc_autoreleasePoolPop(context);

  return v13;
}

id __33__PARResponse_responseFromReply___block_invoke_4(uint64_t a1, void *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 sf_asSearchResult:*(a1 + 32) factory:*(a1 + 40)];
  [v4 setQueryId:*(a1 + 96)];
  [v4 setUserInput:*(a1 + 48)];
  v5 = [v3 parsec_stringForKey:@"fbr"];
  [v4 setFbr:v5];

  v6 = [v3 parsec_stringForKey:@"more_results_url"];
  if ([v6 length])
  {
    v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];
    if (v7)
    {
      v8 = [v3 parsec_stringForKey:@"more_results_label"];
      v9 = [PARAsyncMoreResults moreResults:v7 label:v8 session:*(a1 + 56) scale:*(a1 + 96) queryId:*(a1 + 96) clientQueryId:*(a1 + 104)];
      [v4 setMoreResults:v9];
    }
  }

  if ([v4 type] == 26)
  {
    [*(a1 + 64) addObject:v4];
    v10 = 0;
  }

  else
  {
    v11 = [v4 sectionHeader];

    if (v11)
    {
      v12 = *(a1 + 72);
      v13 = [v4 sectionHeader];
      v14 = [v12 objectForKey:v13];

      if (!v14)
      {
        v14 = objc_alloc_init(MEMORY[0x1E69CA390]);
        v15 = [v4 sectionHeader];
        [v14 setTitle:v15];

        v16 = [v4 sectionBundleIdentifier];
        [v14 setBundleIdentifier:v16];

        v17 = *(a1 + 72);
        v18 = [v14 title];
        [v17 setObject:v14 forKey:v18];

        [*(a1 + 80) addObject:v14];
      }

      v19 = [v14 moreText];

      if (!v19)
      {
        v20 = [v4 sectionHeaderMore];
        [v14 setMoreText:v20];
      }

      [v14 setIsInitiallyHidden:{objc_msgSend(v3, "parsec_BOOLForKey:", @"initially_hidden"}];
      v21 = [v3 parsec_numberForKey:@"maxInitiallyVisibleResults"];
      v22 = v21;
      if (v21)
      {
        [v14 setMaxInitiallyVisibleResults:{objc_msgSend(v21, "unsignedIntValue")}];
      }

      v23 = [v14 results];
      v24 = v23;
      if (v23)
      {
        v25 = v23;
      }

      else
      {
        v25 = [MEMORY[0x1E695DF70] array];
      }

      v26 = v25;

      [v26 addObject:v4];
      [v14 setResults:v26];
      v27 = [v4 inlineCard];
      v28 = [v27 cardSections];
      v29 = [v28 firstObject];

      if (v29)
      {
        v30 = [v4 inlineCard];
        v31 = [v30 cardSections];
        v32 = [v31 firstObject];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = [v32 titleButtonItem];
          [v14 setTitleButtonItem:v33];
        }
      }

      v34 = [v3 parsec_stringForKey:@"more_results_button"];
      v35 = [v34 parsec_base64DecodedData];

      if (v35)
      {
        v36 = [objc_alloc(MEMORY[0x1E69CA5F0]) initWithData:v35];
        if (v36)
        {
          v37 = [objc_alloc(MEMORY[0x1E69C9F90]) initWithProtobuf:v36];
          [v14 setButton:v37];
          [v4 setMoreResultsButton:v37];
        }
      }
    }

    [v4 setIntendedQuery:*(*(a1 + 88) + 32)];
    v38 = *(*(a1 + 88) + 96);
    if (v38 && [v38 count])
    {
      v39 = [*(*(a1 + 88) + 96) firstObject];
      v40 = [v39 suggestion];
      [v4 setCorrectedQuery:v40];
    }

    v41 = [v4 card];

    if (!v41)
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v42 = [v4 inlineCard];
      v43 = [v42 cardSections];

      v44 = [v43 countByEnumeratingWithState:&v56 objects:v60 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v57;
        while (2)
        {
          for (i = 0; i != v45; ++i)
          {
            if (*v57 != v46)
            {
              objc_enumerationMutation(v43);
            }

            v48 = *(*(&v56 + 1) + 8 * i);
            v49 = [v48 nextCard];

            if (v49)
            {
              v50 = [v48 nextCard];
              [v4 setCard:v50];

              goto LABEL_40;
            }
          }

          v45 = [v43 countByEnumeratingWithState:&v56 objects:v60 count:16];
          if (v45)
          {
            continue;
          }

          break;
        }
      }

LABEL_40:
    }

    v51 = [v4 card];
    recursiveSetQueryId(v51, *(a1 + 96));

    v52 = [v4 inlineCard];
    recursiveSetQueryId(v52, *(a1 + 96));

    v53 = [v4 compactCard];
    recursiveSetQueryId(v53, *(a1 + 96));

    v54 = [v4 tophitCard];
    recursiveSetQueryId(v54, *(a1 + 96));

    v10 = v4;
  }

  return v10;
}

id __33__PARResponse_responseFromReply___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69CA3F0];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 parsec_stringForKey:@"c"];
  v6 = [v3 parsec_stringForKey:@"p"];
  v7 = [v3 parsec_numberForKey:@"s"];
  [v7 doubleValue];
  v8 = [v4 initWithIdentifier:0 suggestion:v5 query:v6 score:1 type:?];

  v9 = [v3 parsec_stringForKey:@"fbr"];

  [v8 setFbr:v9];

  return v8;
}

id __33__PARResponse_responseFromReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 parsec_numberForKey:@"domain"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 intValue];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v2 parsec_numberForKey:@"score"];
  v7 = [v2 parsec_numberForKey:@"scoreConfidence"];

  v8 = [objc_alloc(MEMORY[0x1E69CA038]) initWithDomain:v5 scoreConfidence:v7 score:v6];

  return v8;
}

+ (id)responseFromJSON:(id)n session:(id)session
{
  sessionCopy = session;
  if (n)
  {
    n = [MEMORY[0x1E696ACB0] dataWithJSONObject:n options:0 error:0];
  }

  v7 = [self responseFromData:n session:sessionCopy request:0];

  return v7;
}

+ (id)responseFromData:(id)data session:(id)session request:(id)request
{
  requestCopy = request;
  sessionCopy = session;
  dataCopy = data;
  v10 = objc_alloc_init(PARReply);
  [(PARReply *)v10 setData:dataCopy];

  v11 = objc_alloc_init(PARTask);
  [(PARTask *)v11 setSession:sessionCopy];

  [(PARTask *)v11 setRequest:requestCopy];
  [(PARReply *)v10 setTask:v11];
  v12 = [PARResponse responseFromReply:v10];

  return v12;
}

@end