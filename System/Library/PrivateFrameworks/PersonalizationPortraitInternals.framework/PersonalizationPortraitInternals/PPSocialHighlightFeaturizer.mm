@interface PPSocialHighlightFeaturizer
+ (double)_intervalForBucketedString:(uint64_t)string;
+ (id)_feedbackFeaturesForPublisher:(void *)publisher highlights:(void *)highlights features:;
+ (id)_flattenArraysInDictionary:(void *)dictionary keyPath:;
+ (id)_lastInteractionsByContactForHighlights:(void *)highlights bundlePredicate:(void *)predicate mechanismPredicate:(void *)mechanismPredicate interactionStore:;
+ (id)trialSpecifiedFeatures;
- (PPSocialHighlightFeaturizer)initWithFeatureValues:(id)values;
- (PPSocialHighlightFeaturizer)initWithFeedbackPublisher:(id)publisher topicStore:(id)store interactionStore:(id)interactionStore significantContactHandles:(id)handles features:(id)features highlights:(id)highlights;
- (id)featurizeHighlights:(id)highlights;
@end

@implementation PPSocialHighlightFeaturizer

+ (id)trialSpecifiedFeatures
{
  v2 = +[PPTrialWrapper sharedInstance];
  v3 = [v2 plistForFactorName:@"social_highlight_ranker.plist" namespaceName:@"PERSONALIZATION_PORTRAIT_SOCIAL_HIGHLIGHT"];

  v4 = [v3 objectForKeyedSubscript:@"*"];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v4];
  }

  else
  {
    v6 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_23224A000, v6, OS_LOG_TYPE_ERROR, "PPSocialHighlightFeaturizer: unable to load ranker from Trial.", v8, 2u);
    }

    v5 = 0;
  }

  return v5;
}

- (id)featurizeHighlights:(id)highlights
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__PPSocialHighlightFeaturizer_featurizeHighlights___block_invoke;
  v5[3] = &unk_278974FB0;
  v5[4] = self;
  v3 = [highlights _pas_mappedArrayWithTransform:v5];

  return v3;
}

id __51__PPSocialHighlightFeaturizer_featurizeHighlights___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 highlightIdentifier];

  if (v4)
  {
    v5 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = *(*(a1 + 32) + 8);
    v6 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:v10];
          v12 = [v11 valueForHighlight:v3];

          v13 = objc_opt_new();
          [v13 setName:v10];
          [v12 doubleValue];
          [v13 setValue:?];
          [v5 addObject:v13];
        }

        v7 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v7);
    }

    [v3 setCalculatedFeatures:v5];
    v14 = v3;
  }

  else
  {
    v5 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightFeaturizer: encountered highlight without an identifier.", buf, 2u);
    }

    v14 = 0;
  }

  return v14;
}

- (PPSocialHighlightFeaturizer)initWithFeedbackPublisher:(id)publisher topicStore:(id)store interactionStore:(id)interactionStore significantContactHandles:(id)handles features:(id)features highlights:(id)highlights
{
  v370 = *MEMORY[0x277D85DE8];
  publisherCopy = publisher;
  storeCopy = store;
  interactionStoreCopy = interactionStore;
  featuresCopy = features;
  highlightsCopy = highlights;
  handlesCopy = handles;
  v277 = objc_opt_new();
  v274 = publisherCopy;
  if (publisherCopy)
  {
    v16 = publisherCopy;
  }

  else
  {
    v17 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightFeaturizer: no feedback publisher provided.", buf, 2u);
    }

    v16 = 0;
  }

  v18 = [PPSocialHighlightFeaturizer _feedbackFeaturesForPublisher:v16 highlights:highlightsCopy features:featuresCopy];
  [v277 addEntriesFromDictionary:v18];

  v283 = featuresCopy;
  v284 = highlightsCopy;
  if (interactionStoreCopy)
  {
    v309 = interactionStoreCopy;
    v304 = highlightsCopy;
    v19 = featuresCopy;
    v20 = 0x27896F000uLL;
    objc_opt_self();
    v21 = objc_opt_new();
    *v355 = 0u;
    v356 = 0u;
    v357 = 0u;
    v358 = 0u;
    obj = v19;
    v319 = [obj countByEnumeratingWithState:v355 objects:&v363 count:16];
    if (!v319)
    {
      goto LABEL_28;
    }

    v314 = *v356;
    v294 = *MEMORY[0x277D3A658];
    v299 = v21;
    while (1)
    {
      for (i = 0; i != v319; ++i)
      {
        if (*v356 != v314)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*&v355[8] + 8 * i);
        v24 = objc_autoreleasePoolPush();
        if ([v23 isEqualToString:@"lastMessagesInteractionWithSenderSecondsBeforeNow"])
        {
          context = v24;
          v25 = v304;
          v26 = v309;
          objc_opt_self();
          v27 = objc_autoreleasePoolPush();
          v28 = MEMORY[0x277CCAC30];
          *buf = v294;
          [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];
          v30 = v29 = v20;
          v31 = [v28 predicateWithFormat:@"bundleId == %@" argumentArray:v30];

          objc_autoreleasePoolPop(v27);
          v32 = [(PPSocialHighlightFeaturizer *)*(v29 + 3448) _lastInteractionsByContactForHighlights:v25 bundlePredicate:v31 mechanismPredicate:0 interactionStore:v26];
        }

        else
        {
          if (![v23 isEqualToString:@"lastNonMessagesInteractionWithSenderSecondsBeforeNow"])
          {
            goto LABEL_26;
          }

          context = v24;
          v33 = v20;
          v285 = v304;
          v34 = v309;
          objc_opt_self();
          v35 = objc_autoreleasePoolPush();
          v36 = MEMORY[0x277CCAC30];
          *buf = &unk_2847855F8;
          v37 = [MEMORY[0x277CBEA60] arrayWithObjects:buf count:1];
          v38 = [v36 predicateWithFormat:@"mechanism in %@" argumentArray:v37];

          objc_autoreleasePoolPop(v35);
          v39 = objc_autoreleasePoolPush();
          v40 = MEMORY[0x277CCAC30];
          *&aBlock = v294;
          v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&aBlock count:1];
          v42 = [v40 predicateWithFormat:@"bundleId != %@" argumentArray:v41];

          objc_autoreleasePoolPop(v39);
          v32 = [(PPSocialHighlightFeaturizer *)*(v33 + 3448) _lastInteractionsByContactForHighlights:v285 bundlePredicate:v42 mechanismPredicate:v38 interactionStore:v34];
        }

        v43 = MEMORY[0x277CBEC10];
        if (v32)
        {
          v43 = v32;
        }

        v44 = v43;

        v45 = v44;
        objc_opt_self();
        v46 = objc_opt_new();
        aBlock = 0u;
        v360 = 0u;
        v361 = 0u;
        v362 = 0u;
        v47 = v45;
        v48 = [v47 countByEnumeratingWithState:&aBlock objects:buf count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v360;
          do
          {
            for (j = 0; j != v49; ++j)
            {
              if (*v360 != v50)
              {
                objc_enumerationMutation(v47);
              }

              v52 = *(*(&aBlock + 1) + 8 * j);
              v53 = MEMORY[0x277CCABB0];
              v54 = [v47 objectForKeyedSubscript:v52];
              [v54 timeIntervalSinceNow];
              v56 = [v53 numberWithDouble:-v55];
              [v46 setObject:v56 forKeyedSubscript:v52];
            }

            v49 = [v47 countByEnumeratingWithState:&aBlock objects:buf count:16];
          }

          while (v49);
        }

        v57 = [[PPSocialHighlightStaticFeatureProvider alloc] initWithComputedFeatures:v46 highlightKeyBlock:&__block_literal_global_18];
        v21 = v299;
        [v299 setObject:v57 forKeyedSubscript:v23];

        v20 = 0x27896F000;
        v24 = context;
LABEL_26:
        objc_autoreleasePoolPop(v24);
      }

      v319 = [obj countByEnumeratingWithState:v355 objects:&v363 count:16];
      if (!v319)
      {
LABEL_28:

        [v277 addEntriesFromDictionary:v21];
        featuresCopy = v283;
        goto LABEL_31;
      }
    }
  }

  v21 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v21, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightFeaturizer: no interaction store provided.", buf, 2u);
  }

LABEL_31:

  if (!storeCopy)
  {
    v98 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v98, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightFeaturizer: no topic store provided.", buf, 2u);
    }

    v99 = v284;
    goto LABEL_153;
  }

  v58 = storeCopy;
  v59 = v284;
  v60 = featuresCopy;
  objc_opt_self();
  v61 = objc_autoreleasePoolPush();
  v62 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"meanTopicScore", @"medianTopicScore", @"topicCount", @"maxTopicScore", @"minTopicScore", 0}];
  objc_autoreleasePoolPop(v61);
  v270 = v62;
  v271 = v60;
  if (![v62 intersectsSet:v60])
  {
    v98 = MEMORY[0x277CBEC10];
    v99 = v284;
    goto LABEL_152;
  }

  v63 = v59;
  v280 = v58;
  v267 = objc_opt_self();
  v64 = objc_opt_new();
  v269 = objc_opt_new();
  v342 = 0u;
  v343 = 0u;
  v344 = 0u;
  v345 = 0u;
  v65 = v63;
  v66 = [v65 countByEnumeratingWithState:&v342 objects:&v363 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = *v343;
    do
    {
      for (k = 0; k != v67; ++k)
      {
        if (*v343 != v68)
        {
          objc_enumerationMutation(v65);
        }

        v70 = *(*(&v342 + 1) + 8 * k);
        v71 = objc_autoreleasePoolPush();
        attributionIdentifier = [v70 attributionIdentifier];

        if (attributionIdentifier)
        {
          highlightIdentifier = [v70 highlightIdentifier];
          attributionIdentifier2 = [v70 attributionIdentifier];
          [v64 setObject:highlightIdentifier forKeyedSubscript:attributionIdentifier2];
        }

        objc_autoreleasePoolPop(v71);
      }

      v67 = [v65 countByEnumeratingWithState:&v342 objects:&v363 count:16];
    }

    while (v67);
  }

  v278 = v59;
  v279 = v58;
  if ([v64 count])
  {
    v75 = objc_opt_new();
    v76 = objc_opt_new();
    v77 = objc_alloc(MEMORY[0x277CBEB98]);
    allKeys = [v64 allKeys];
    v79 = [v77 initWithArray:allKeys];
    [v76 setMatchingDocumentIds:v79];

    [v76 setLimit:50];
    v368 = 0;
    *&v346 = MEMORY[0x277D85DD0];
    *(&v346 + 1) = 3221225472;
    *&v347 = __79__PPSocialHighlightFeaturizer__topicScoresMatchingSocialHighlights_topicStore___block_invoke;
    *(&v347 + 1) = &unk_278974FF8;
    v80 = v75;
    *&v348 = v80;
    v300 = v269;
    *(&v348 + 1) = v300;
    v81 = v64;
    *&v349 = v81;
    *(&v349 + 1) = sel__topicScoresMatchingSocialHighlights_topicStore_;
    v350 = v267;
    v265 = v76;
    LOBYTE(v79) = [v280 iterTopicRecordsWithQuery:v76 error:&v368 block:&v346];
    v266 = v368;
    featuresCopy = v283;
    v268 = v80;
    if (v79)
    {
      if ([v80 count])
      {
        v305 = v65;
        v295 = v64;
        v82 = v80;
        v83 = v280;
        objc_opt_self();
        v84 = objc_autoreleasePoolPush();
        v85 = v83;
        cachedTopicScores = [v83 cachedTopicScores];
        objc_autoreleasePoolPop(v84);
        v87 = objc_opt_new();
        aBlock = 0u;
        v360 = 0u;
        v361 = 0u;
        v362 = 0u;
        v88 = v82;
        v89 = [v88 countByEnumeratingWithState:&aBlock objects:buf count:16];
        if (v89)
        {
          v90 = v89;
          v91 = *v360;
          while (2)
          {
            for (m = 0; m != v90; ++m)
            {
              if (*v360 != v91)
              {
                objc_enumerationMutation(v88);
              }

              v93 = *(*(&aBlock + 1) + 8 * m);
              v94 = [cachedTopicScores objectForKeyedSubscript:v93];

              if (!v94)
              {
                v103 = pp_social_highlights_log_handle();
                v97 = v85;
                if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                {
                  *v355 = 0;
                  _os_log_impl(&dword_23224A000, v103, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightFeaturizer: missing QID overlap with the cache, will rerank.", v355, 2u);
                }

                v96 = 0;
                v64 = v295;
                goto LABEL_67;
              }

              v95 = [cachedTopicScores objectForKeyedSubscript:v93];
              [v87 setObject:v95 forKeyedSubscript:v93];
            }

            v90 = [v88 countByEnumeratingWithState:&aBlock objects:buf count:16];
            if (v90)
            {
              continue;
            }

            break;
          }
        }

        v96 = v87;
        v64 = v295;
        v97 = v85;
LABEL_67:

        if (v96)
        {
          v59 = v278;
        }

        else
        {
          contexta = objc_autoreleasePoolPush();
          v104 = pp_social_highlights_log_handle();
          if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23224A000, v104, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightFeaturizer: topic cache is invalid, performing reranking", buf, 2u);
          }

          v96 = objc_opt_new();
          v105 = objc_opt_new();
          [v265 setMatchingTopicIds:v88];
          [v265 setLimit:50];
          v367 = v266;
          v320 = v105;
          v106 = [v97 rankedTopicsWithQuery:v105 error:&v367];
          v316 = v367;

          v340 = 0u;
          v341 = 0u;
          v338 = 0u;
          v339 = 0u;
          v107 = v106;
          v108 = [v107 countByEnumeratingWithState:&v338 objects:buf count:16];
          v59 = v278;
          if (v108)
          {
            v109 = v108;
            v110 = *v339;
            do
            {
              for (n = 0; n != v109; ++n)
              {
                if (*v339 != v110)
                {
                  objc_enumerationMutation(v107);
                }

                v112 = *(*(&v338 + 1) + 8 * n);
                v113 = MEMORY[0x277CCABB0];
                [v112 score];
                v114 = [v113 numberWithDouble:?];
                item = [v112 item];
                topicIdentifier = [item topicIdentifier];
                [v96 setObject:v114 forKeyedSubscript:topicIdentifier];
              }

              v109 = [v107 countByEnumeratingWithState:&v338 objects:buf count:16];
            }

            while (v109);
          }

          objc_autoreleasePoolPop(contexta);
          v266 = v316;
          v64 = v295;
        }

        v117 = MEMORY[0x277CBEA60];
        v118 = [v81 count];
        v119 = [v117 _pas_proxyArrayWithObject:MEMORY[0x277CBEBF8] repetitions:v118];
        v120 = objc_alloc(MEMORY[0x277CBEB38]);
        allValues = [v81 allValues];
        v264 = v119;
        v315 = [v120 initWithObjects:v119 forKeys:allValues];

        v336 = 0u;
        v337 = 0u;
        v334 = 0u;
        v335 = 0u;
        v102 = v96;
        v99 = v284;
        v58 = v279;
        v122 = v300;
        v65 = v305;
        v310 = [v102 countByEnumeratingWithState:&v334 objects:&aBlock count:16];
        if (v310)
        {
          v123 = *v335;
          v286 = *v335;
          obja = v102;
          do
          {
            v124 = 0;
            do
            {
              if (*v335 != v123)
              {
                objc_enumerationMutation(v102);
              }

              v321 = v124;
              v125 = *(*(&v334 + 1) + 8 * v124);
              v126 = [v122 objectForKeyedSubscript:v125];
              v127 = [v102 objectForKeyedSubscript:v125];
              contextb = v126;
              if (v127)
              {
                if (v126)
                {
                  goto LABEL_89;
                }
              }

              else
              {
                currentHandler = [MEMORY[0x277CCA890] currentHandler];
                [currentHandler handleFailureInMethod:sel__topicScoresMatchingSocialHighlights_topicStore_ object:v267 file:@"PPSocialHighlightFeaturizer.m" lineNumber:525 description:@"Iterating through keys should always result in a value"];

                v126 = contextb;
                if (contextb)
                {
LABEL_89:
                  v332 = 0u;
                  v333 = 0u;
                  v330 = 0u;
                  v331 = 0u;
                  v128 = v126;
                  v129 = [v128 countByEnumeratingWithState:&v330 objects:v355 count:16];
                  if (v129)
                  {
                    v130 = v129;
                    v131 = *v331;
                    do
                    {
                      for (ii = 0; ii != v130; ++ii)
                      {
                        if (*v331 != v131)
                        {
                          objc_enumerationMutation(v128);
                        }

                        v133 = *(*(&v330 + 1) + 8 * ii);
                        v134 = objc_autoreleasePoolPush();
                        v135 = [v315 objectForKeyedSubscript:v133];
                        v136 = [v135 arrayByAddingObject:v127];
                        [v315 setObject:v136 forKeyedSubscript:v133];

                        objc_autoreleasePoolPop(v134);
                      }

                      v130 = [v128 countByEnumeratingWithState:&v330 objects:v355 count:16];
                    }

                    while (v130);
                    v99 = v284;
                    v123 = v286;
                    v59 = v278;
                    v58 = v279;
                    v64 = v295;
                    v122 = v300;
                    v102 = obja;
                  }

                  goto LABEL_100;
                }
              }

              v128 = pp_social_highlights_log_handle();
              if (os_log_type_enabled(v128, OS_LOG_TYPE_DEBUG))
              {
                *v351 = 138739971;
                *&v351[4] = v125;
                _os_log_debug_impl(&dword_23224A000, v128, OS_LOG_TYPE_DEBUG, "PPSocialHighlightFeaturizer: no highlights found for QID: %{sensitive}@", v351, 0xCu);
              }

LABEL_100:

              v124 = v321 + 1;
              v65 = v305;
            }

            while (v321 + 1 != v310);
            v310 = [v102 countByEnumeratingWithState:&v334 objects:&aBlock count:16];
          }

          while (v310);
        }

        v101 = 0x27896F000uLL;
        featuresCopy = v283;
      }

      else
      {
        v102 = pp_social_highlights_log_handle();
        if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23224A000, v102, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightRanker: found no QIDs from any highlight.", buf, 2u);
        }

        v315 = MEMORY[0x277CBEC10];
        v101 = 0x27896F000;
        v99 = v284;
      }
    }

    else
    {
      v102 = pp_social_highlights_log_handle();
      v101 = 0x27896F000;
      v99 = v284;
      if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v266;
        _os_log_error_impl(&dword_23224A000, v102, OS_LOG_TYPE_ERROR, "PPSocialHighlightRanker: error querying topic store: %@", buf, 0xCu);
      }

      v315 = MEMORY[0x277CBEC10];
    }
  }

  else
  {
    v100 = pp_social_highlights_log_handle();
    featuresCopy = v283;
    v268 = v100;
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v100, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightFeaturizer: not performing topic scoring features due to no highlights", buf, 2u);
    }

    v315 = MEMORY[0x277CBEC10];
    v101 = 0x27896F000;
    v99 = v284;
  }

  v98 = objc_opt_new();
  *v355 = 0u;
  v356 = 0u;
  v357 = 0u;
  v358 = 0u;
  v281 = v271;
  objb = [v281 countByEnumeratingWithState:v355 objects:buf count:16];
  if (!objb)
  {
    goto LABEL_151;
  }

  v287 = *v356;
  v282 = v98;
  do
  {
    v138 = 0;
    do
    {
      if (*v356 != v287)
      {
        objc_enumerationMutation(v281);
      }

      v139 = *(*&v355[8] + 8 * v138);
      v140 = objc_autoreleasePoolPush();
      v301 = v140;
      v306 = v138;
      v296 = v139;
      if ([v139 isEqualToString:@"topicCount"])
      {
        v141 = objc_opt_new();
        v346 = 0u;
        v347 = 0u;
        v348 = 0u;
        v349 = 0u;
        v142 = v315;
        v143 = [v142 countByEnumeratingWithState:&v346 objects:&v363 count:16];
        if (v143)
        {
          v144 = v143;
          v145 = *v347;
          do
          {
            for (jj = 0; jj != v144; ++jj)
            {
              if (*v347 != v145)
              {
                objc_enumerationMutation(v142);
              }

              v147 = *(*(&v346 + 1) + 8 * jj);
              v148 = MEMORY[0x277CCABB0];
              v149 = [v142 objectForKeyedSubscript:v147];
              v150 = [v148 numberWithUnsignedInteger:{objc_msgSend(v149, "count")}];
              [v141 setObject:v150 forKeyedSubscript:v147];
            }

            v144 = [v142 countByEnumeratingWithState:&v346 objects:&v363 count:16];
          }

          while (v144);
        }

        featuresCopy = v283;
        v99 = v284;
        v98 = v282;
        goto LABEL_143;
      }

      if ([v139 isEqualToString:@"meanTopicScore"])
      {
        v151 = *(v101 + 3448);
        v152 = v315;
        v153 = @"@avg.self";
        goto LABEL_120;
      }

      if ([v139 isEqualToString:@"medianTopicScore"])
      {
        v141 = objc_opt_new();
        v342 = 0u;
        v343 = 0u;
        v344 = 0u;
        v345 = 0u;
        v154 = v315;
        contextc = [v154 countByEnumeratingWithState:&v342 objects:&aBlock count:16];
        if (contextc)
        {
          v322 = *v343;
          do
          {
            for (kk = 0; kk != contextc; kk = kk + 1)
            {
              if (*v343 != v322)
              {
                objc_enumerationMutation(v154);
              }

              v156 = *(*(&v342 + 1) + 8 * kk);
              v157 = [v154 objectForKeyedSubscript:v156];
              objc_opt_self();
              v158 = objc_autoreleasePoolPush();
              if ([v157 count])
              {
                if ([v157 count] == 1)
                {
                  v159 = [v157 objectAtIndexedSubscript:0];
                }

                else if ([v157 count] == 2)
                {
                  v160 = MEMORY[0x277CCABB0];
                  v161 = [v157 objectAtIndexedSubscript:0];
                  [v161 doubleValue];
                  v163 = v162;
                  v164 = [v157 objectAtIndexedSubscript:1];
                  [v164 doubleValue];
                  v159 = [v160 numberWithDouble:(v163 + v165) * 0.5];
                }

                else
                {
                  v166 = [v157 sortedArrayUsingComparator:&__block_literal_global_33];
                  v167 = [v166 count] >> 1;
                  if ([v166 count])
                  {
                    v159 = [v166 objectAtIndexedSubscript:v167];
                  }

                  else
                  {
                    v311 = MEMORY[0x277CCABB0];
                    v168 = [v166 objectAtIndexedSubscript:v167];
                    [v168 doubleValue];
                    v170 = v169;
                    v171 = [v166 objectAtIndexedSubscript:v167 - 1];
                    [v171 doubleValue];
                    v159 = [v311 numberWithDouble:(v170 + v172) * 0.5];
                  }
                }
              }

              else
              {
                v159 = 0;
              }

              objc_autoreleasePoolPop(v158);

              if (v159)
              {
                v173 = v159;
              }

              else
              {
                v173 = &unk_284784110;
              }

              [v141 setObject:v173 forKeyedSubscript:v156];
            }

            contextc = [v154 countByEnumeratingWithState:&v342 objects:&aBlock count:16];
          }

          while (contextc);
        }

        featuresCopy = v283;
        v99 = v284;
        v59 = v278;
        v58 = v279;
        v98 = v282;
        goto LABEL_143;
      }

      if ([v139 isEqualToString:@"maxTopicScore"])
      {
        v151 = *(v101 + 3448);
        v152 = v315;
        v153 = @"@max.self";
        goto LABEL_120;
      }

      if ([v139 isEqualToString:@"minTopicScore"])
      {
        v151 = *(v101 + 3448);
        v152 = v315;
        v153 = @"@min.self";
LABEL_120:
        v141 = [(PPSocialHighlightFeaturizer *)v151 _flattenArraysInDictionary:v152 keyPath:v153];
LABEL_143:
        v174 = [[PPSocialHighlightStaticFeatureProvider alloc] initWithComputedFeatures:v141 highlightKeyBlock:&__block_literal_global_13183];
        [v98 setObject:v174 forKeyedSubscript:v296];

        v101 = 0x27896F000uLL;
        v140 = v301;
        v138 = v306;
      }

      objc_autoreleasePoolPop(v140);
      v138 = v138 + 1;
    }

    while (v138 != objb);
    v175 = [v281 countByEnumeratingWithState:v355 objects:buf count:16];
    objb = v175;
  }

  while (v175);
LABEL_151:

LABEL_152:
  [v277 addEntriesFromDictionary:v98];
LABEL_153:

  objc = v99;
  contextd = handlesCopy;
  v176 = featuresCopy;
  objc_opt_self();
  v312 = objc_opt_new();
  v363 = 0u;
  v364 = 0u;
  v365 = 0u;
  v366 = 0u;
  v307 = v176;
  v177 = [v307 countByEnumeratingWithState:&v363 objects:buf count:16];
  if (!v177)
  {
    goto LABEL_189;
  }

  v178 = v177;
  v179 = *v364;
  while (2)
  {
    v180 = 0;
    while (2)
    {
      if (*v364 != v179)
      {
        objc_enumerationMutation(v307);
      }

      v181 = *(*(&v363 + 1) + 8 * v180);
      v182 = objc_autoreleasePoolPush();
      v183 = v181;
      v184 = contextd;
      objc_opt_self();
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 3221225472;
      *&v360 = __93__PPSocialHighlightFeaturizer__highlightFeatureProviderForFeature_significantContactHandles___block_invoke;
      *(&v360 + 1) = &unk_278975138;
      v185 = v183;
      *&v361 = v185;
      v186 = _Block_copy(&aBlock);
      *v355 = MEMORY[0x277D85DD0];
      *&v355[8] = 3221225472;
      *&v356 = __93__PPSocialHighlightFeaturizer__highlightFeatureProviderForFeature_significantContactHandles___block_invoke_2;
      *(&v356 + 1) = &unk_278975138;
      v187 = v185;
      *&v357 = v187;
      v188 = _Block_copy(v355);
      if ([v187 isEqualToString:@"creationDateSecondsBeforeNow"])
      {
        v189 = [PPSocialHighlightPropertyValueProvider alloc];
        v190 = &__block_literal_global_159;
        goto LABEL_168;
      }

      if ([v187 isEqualToString:@"highlightDateSecondsBeforeNow"])
      {
        v189 = [PPSocialHighlightPropertyValueProvider alloc];
        v190 = &__block_literal_global_162;
        goto LABEL_168;
      }

      if ([v187 isEqualToString:@"isManuallySyndicated"])
      {
        v189 = [PPSocialHighlightPropertyValueProvider alloc];
        v190 = &__block_literal_global_164_13190;
        goto LABEL_168;
      }

      if ([v187 hasPrefix:@"creationDateInInterval"])
      {
        v189 = [PPSocialHighlightPropertyValueProvider alloc];
        v190 = v186;
        goto LABEL_168;
      }

      if (![v187 hasPrefix:@"highlightDateInInterval"])
      {
        *&v346 = MEMORY[0x277D85DD0];
        *(&v346 + 1) = 3221225472;
        *&v347 = __93__PPSocialHighlightFeaturizer__highlightFeatureProviderForFeature_significantContactHandles___block_invoke_172;
        *(&v347 + 1) = &unk_278975138;
        *&v348 = v184;
        v192 = _Block_copy(&v346);
        v302 = v192;
        if ([v187 isEqualToString:@"messagesThreadHasDisplayName"])
        {
          v193 = [PPSocialHighlightPropertyValueProvider alloc];
          v194 = &__block_literal_global_167_13191;
        }

        else if ([v187 isEqualToString:@"messagesThreadHasGroupPhoto"])
        {
          v193 = [PPSocialHighlightPropertyValueProvider alloc];
          v194 = &__block_literal_global_169_13192;
        }

        else if ([v187 isEqualToString:@"messagesConversationAutoDonating"])
        {
          v193 = [PPSocialHighlightPropertyValueProvider alloc];
          v194 = &__block_literal_global_171;
        }

        else if ([v187 isEqualToString:@"isContactSignificant"])
        {
          v193 = [PPSocialHighlightPropertyValueProvider alloc];
          v194 = v192;
        }

        else if ([v187 isEqualToString:@"sentFromMe"])
        {
          v193 = [PPSocialHighlightPropertyValueProvider alloc];
          v194 = &__block_literal_global_174;
        }

        else
        {
          if (![v187 isEqualToString:@"isCollaboration"])
          {
            v191 = 0;
            goto LABEL_186;
          }

          v193 = [PPSocialHighlightPropertyValueProvider alloc];
          v194 = &__block_literal_global_176;
        }

        v191 = [(PPSocialHighlightPropertyValueProvider *)v193 initWithProvidingBlock:v194];
LABEL_186:

        goto LABEL_169;
      }

      v189 = [PPSocialHighlightPropertyValueProvider alloc];
      v190 = v188;
LABEL_168:
      v191 = [(PPSocialHighlightPropertyValueProvider *)v189 initWithProvidingBlock:v190];
LABEL_169:

      if (v191)
      {
        [v312 setObject:v191 forKeyedSubscript:v187];
      }

      objc_autoreleasePoolPop(v182);
      if (v178 != ++v180)
      {
        continue;
      }

      break;
    }

    v195 = [v307 countByEnumeratingWithState:&v363 objects:buf count:16];
    v178 = v195;
    if (v195)
    {
      continue;
    }

    break;
  }

LABEL_189:

  [v277 addEntriesFromDictionary:v312];
  v196 = objc;
  v197 = v307;
  objc_opt_self();
  v313 = objc_opt_new();
  v342 = 0u;
  v343 = 0u;
  v344 = 0u;
  v345 = 0u;
  objd = v197;
  v308 = [objd countByEnumeratingWithState:&v342 objects:buf count:16];
  if (v308)
  {
    v303 = *v343;
    v288 = v196;
    do
    {
      for (mm = 0; mm != v308; mm = mm + 1)
      {
        if (*v343 != v303)
        {
          objc_enumerationMutation(objd);
        }

        v199 = *(*(&v342 + 1) + 8 * mm);
        v200 = objc_autoreleasePoolPush();
        if ([v199 isEqualToString:@"countDistinctHighlights"])
        {
          v201 = objc_alloc(MEMORY[0x277CBEB98]);
          v202 = [v196 _pas_mappedArrayWithTransform:&__block_literal_global_68];
          v203 = [v201 initWithArray:v202];

          v204 = [PPSocialHighlightStaticFeatureProvider alloc];
          v367 = &stru_284759D38;
          v205 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v203, "count")}];
          v368 = v205;
          v206 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v368 forKeys:&v367 count:1];
          v207 = [(PPSocialHighlightStaticFeatureProvider *)v204 initWithComputedFeatures:v206 highlightKeyBlock:&__block_literal_global_11_13181];
          [v313 setObject:v207 forKeyedSubscript:v199];
        }

        if ([v199 isEqualToString:@"countThreadsWithHighlightIdentifier"])
        {
          v317 = mm;
          v323 = v200;
          v208 = objc_opt_new();
          v338 = 0u;
          v339 = 0u;
          v340 = 0u;
          v341 = 0u;
          v209 = v196;
          v210 = v196;
          v211 = [v210 countByEnumeratingWithState:&v338 objects:&v363 count:16];
          if (v211)
          {
            v212 = v211;
            v213 = *v339;
            do
            {
              for (nn = 0; nn != v212; ++nn)
              {
                if (*v339 != v213)
                {
                  objc_enumerationMutation(v210);
                }

                v215 = *(*(&v338 + 1) + 8 * nn);
                highlightIdentifier2 = [v215 highlightIdentifier];

                if (highlightIdentifier2)
                {
                  highlightIdentifier3 = [v215 highlightIdentifier];
                  v218 = [v208 objectForKeyedSubscript:highlightIdentifier3];

                  if (!v218)
                  {
                    v219 = objc_opt_new();
                    highlightIdentifier4 = [v215 highlightIdentifier];
                    [v208 setObject:v219 forKeyedSubscript:highlightIdentifier4];
                  }

                  domainIdentifier = [v215 domainIdentifier];

                  if (domainIdentifier)
                  {
                    highlightIdentifier5 = [v215 highlightIdentifier];
                    v223 = [v208 objectForKeyedSubscript:highlightIdentifier5];
                    domainIdentifier2 = [v215 domainIdentifier];
                    [v223 addObject:domainIdentifier2];
                  }
                }
              }

              v212 = [v210 countByEnumeratingWithState:&v338 objects:&v363 count:16];
            }

            while (v212);
          }

          v225 = objc_opt_new();
          v334 = 0u;
          v335 = 0u;
          v336 = 0u;
          v337 = 0u;
          v226 = v208;
          v227 = [v226 countByEnumeratingWithState:&v334 objects:&aBlock count:16];
          if (v227)
          {
            v228 = v227;
            v229 = *v335;
            do
            {
              for (i1 = 0; i1 != v228; ++i1)
              {
                if (*v335 != v229)
                {
                  objc_enumerationMutation(v226);
                }

                v231 = *(*(&v334 + 1) + 8 * i1);
                v232 = MEMORY[0x277CCABB0];
                v233 = [v226 objectForKeyedSubscript:v231];
                v234 = [v232 numberWithUnsignedInteger:{objc_msgSend(v233, "count")}];
                [v225 setObject:v234 forKeyedSubscript:v231];
              }

              v228 = [v226 countByEnumeratingWithState:&v334 objects:&aBlock count:16];
            }

            while (v228);
          }

          v235 = [[PPSocialHighlightStaticFeatureProvider alloc] initWithComputedFeatures:v225 highlightKeyBlock:&__block_literal_global_13183];
          [v313 setObject:v235 forKeyedSubscript:v199];

          mm = v317;
          v196 = v209;
        }

        else if ([v199 isEqualToString:@"countManualHighlightsFromSender"])
        {
          v297 = v199;
          v318 = mm;
          v323 = v200;
          v226 = objc_opt_new();
          v330 = 0u;
          v331 = 0u;
          v332 = 0u;
          v333 = 0u;
          contexte = v196;
          v236 = [contexte countByEnumeratingWithState:&v330 objects:v355 count:16];
          if (v236)
          {
            v237 = v236;
            v238 = *v331;
            do
            {
              for (i2 = 0; i2 != v237; ++i2)
              {
                if (*v331 != v238)
                {
                  objc_enumerationMutation(contexte);
                }

                v240 = *(*(&v330 + 1) + 8 * i2);
                if ([v240 highlightType] == 2)
                {
                  sender = [v240 sender];
                  handle = [sender handle];

                  if (handle)
                  {
                    v243 = MEMORY[0x277CCABB0];
                    sender2 = [v240 sender];
                    handle2 = [sender2 handle];
                    v246 = [v226 objectForKeyedSubscript:handle2];
                    v247 = [v243 numberWithInteger:{objc_msgSend(v246, "integerValue") + 1}];
                    sender3 = [v240 sender];
                    handle3 = [sender3 handle];
                    [v226 setObject:v247 forKeyedSubscript:handle3];
                  }
                }
              }

              v237 = [contexte countByEnumeratingWithState:&v330 objects:v355 count:16];
            }

            while (v237);
          }

          v225 = [[PPSocialHighlightStaticFeatureProvider alloc] initWithComputedFeatures:v226 highlightKeyBlock:&__block_literal_global_18];
          [v313 setObject:v225 forKeyedSubscript:v297];
          v196 = v288;
          mm = v318;
        }

        else
        {
          if (![v199 isEqualToString:@"countManualHighlightsFromThread"])
          {
            goto LABEL_242;
          }

          v298 = v199;
          v323 = v200;
          v226 = objc_opt_new();
          *v351 = 0u;
          v352 = 0u;
          v353 = 0u;
          v354 = 0u;
          v250 = v196;
          v251 = [v250 countByEnumeratingWithState:v351 objects:&v346 count:16];
          if (v251)
          {
            v252 = v251;
            v253 = *v352;
            do
            {
              for (i3 = 0; i3 != v252; ++i3)
              {
                if (*v352 != v253)
                {
                  objc_enumerationMutation(v250);
                }

                v255 = *(*&v351[8] + 8 * i3);
                if ([v255 highlightType] == 2)
                {
                  domainIdentifier3 = [v255 domainIdentifier];

                  if (domainIdentifier3)
                  {
                    v257 = MEMORY[0x277CCABB0];
                    domainIdentifier4 = [v255 domainIdentifier];
                    v259 = [v226 objectForKeyedSubscript:domainIdentifier4];
                    v260 = [v257 numberWithInteger:{objc_msgSend(v259, "integerValue") + 1}];
                    domainIdentifier5 = [v255 domainIdentifier];
                    [v226 setObject:v260 forKeyedSubscript:domainIdentifier5];
                  }
                }
              }

              v252 = [v250 countByEnumeratingWithState:v351 objects:&v346 count:16];
            }

            while (v252);
          }

          v225 = [[PPSocialHighlightStaticFeatureProvider alloc] initWithComputedFeatures:v226 highlightKeyBlock:&__block_literal_global_16];
          [v313 setObject:v225 forKeyedSubscript:v298];
          v196 = v288;
        }

        v200 = v323;
LABEL_242:
        objc_autoreleasePoolPop(v200);
      }

      v308 = [objd countByEnumeratingWithState:&v342 objects:buf count:16];
    }

    while (v308);
  }

  [v277 addEntriesFromDictionary:v313];
  v262 = [(PPSocialHighlightFeaturizer *)self initWithFeatureValues:v277];

  return v262;
}

+ (id)_feedbackFeaturesForPublisher:(void *)publisher highlights:(void *)highlights features:
{
  v58 = *MEMORY[0x277D85DE8];
  v41 = a2;
  publisherCopy = publisher;
  highlightsCopy = highlights;
  v40 = objc_opt_self();
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__13267;
  v55 = __Block_byref_object_dispose__13268;
  v56 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = highlightsCopy;
  v8 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v8)
  {
    v9 = *v48;
    do
    {
      v10 = 0;
      do
      {
        if (*v48 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v47 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = v11;
        v14 = publisherCopy;
        objc_opt_self();
        if ([v13 isEqualToString:@"countHiddenFromThread"])
        {
          v15 = [PPSocialHighlightEngagementProvider alloc];
          v16 = 2;
          goto LABEL_14;
        }

        if ([v13 isEqualToString:@"countEngagedFromThread"])
        {
          v15 = [PPSocialHighlightEngagementProvider alloc];
          v16 = 1;
          goto LABEL_14;
        }

        if ([v13 isEqualToString:@"countOfferedFromThread"])
        {
          v15 = [PPSocialHighlightEngagementProvider alloc];
          v16 = 0;
          goto LABEL_14;
        }

        if ([v13 isEqualToString:@"countEngagedAppFromThread"])
        {
          v15 = [PPSocialHighlightEngagementProvider alloc];
          v16 = 3;
LABEL_14:
          v17 = &__block_literal_global_147;
          v18 = &__block_literal_global_16;
LABEL_15:
          v19 = [(PPSocialHighlightEngagementProvider *)v15 initWithFeedbackType:v16 feedbackGroupByBlock:v17 highlightKeyBlock:v18 highlights:v14];
LABEL_16:
          v20 = v19;
          goto LABEL_17;
        }

        if ([v13 isEqualToString:@"countHiddenFromSender"])
        {
          v15 = [PPSocialHighlightEngagementProvider alloc];
          v16 = 2;
LABEL_31:
          v17 = &__block_literal_global_149;
          v18 = &__block_literal_global_18;
          goto LABEL_15;
        }

        if ([v13 isEqualToString:@"countEngagedFromSender"])
        {
          v15 = [PPSocialHighlightEngagementProvider alloc];
          v16 = 1;
          goto LABEL_31;
        }

        if ([v13 isEqualToString:@"countOfferedFromSender"])
        {
          v15 = [PPSocialHighlightEngagementProvider alloc];
          v16 = 0;
          goto LABEL_31;
        }

        if ([v13 isEqualToString:@"countEngagedAppFromSender"])
        {
          v15 = [PPSocialHighlightEngagementProvider alloc];
          v16 = 3;
          goto LABEL_31;
        }

        if ([v13 isEqualToString:@"countHiddenMatchingDomain"])
        {
          v15 = [PPSocialHighlightEngagementProvider alloc];
          v16 = 2;
LABEL_38:
          v17 = &__block_literal_global_151;
          v18 = &__block_literal_global_20;
          goto LABEL_15;
        }

        if ([v13 isEqualToString:@"countEngagedMatchingDomain"])
        {
          v15 = [PPSocialHighlightEngagementProvider alloc];
          v16 = 1;
          goto LABEL_38;
        }

        if ([v13 isEqualToString:@"countOfferedMatchingDomain"])
        {
          v15 = [PPSocialHighlightEngagementProvider alloc];
          v16 = 0;
          goto LABEL_38;
        }

        if ([v13 isEqualToString:@"countHiddenMatchingDomainFromSender"])
        {
          v15 = [PPSocialHighlightEngagementProvider alloc];
          v16 = 2;
LABEL_45:
          v17 = &__block_literal_global_153;
          v18 = &__block_literal_global_22;
          goto LABEL_15;
        }

        if ([v13 isEqualToString:@"countEngagedMatchingDomainFromSender"])
        {
          v15 = [PPSocialHighlightEngagementProvider alloc];
          v16 = 1;
          goto LABEL_45;
        }

        if ([v13 isEqualToString:@"countOfferedMatchingDomainFromSender"])
        {
          v15 = [PPSocialHighlightEngagementProvider alloc];
          v16 = 0;
          goto LABEL_45;
        }

        if ([v13 hasPrefix:@"countHiddenInInterval"])
        {
          v22 = [PPSocialHighlightEngagementProvider alloc];
          v23 = [PPSocialHighlightFeaturizer _intervalForBucketedString:v13];
          v24 = 2;
          goto LABEL_60;
        }

        if ([v13 hasPrefix:@"countEngagedInInterval"])
        {
          v22 = [PPSocialHighlightEngagementProvider alloc];
          v23 = [PPSocialHighlightFeaturizer _intervalForBucketedString:v13];
          v24 = 1;
          goto LABEL_60;
        }

        if ([v13 hasPrefix:@"countOfferedInInterval"])
        {
          v22 = [PPSocialHighlightEngagementProvider alloc];
          v23 = [PPSocialHighlightFeaturizer _intervalForBucketedString:v13];
          v24 = 0;
          goto LABEL_60;
        }

        if ([v13 hasPrefix:@"countStartedConsumptionInInterval"])
        {
          v22 = [PPSocialHighlightEngagementProvider alloc];
          v23 = [PPSocialHighlightFeaturizer _intervalForBucketedString:v13];
          v24 = 5;
          goto LABEL_60;
        }

        if ([v13 hasPrefix:@"countFinishedConsumptionInInterval"])
        {
          v22 = [PPSocialHighlightEngagementProvider alloc];
          v23 = [PPSocialHighlightFeaturizer _intervalForBucketedString:v13];
          v24 = 6;
          goto LABEL_60;
        }

        if ([v13 hasPrefix:@"countItemDetailViewedInInterval"])
        {
          v22 = [PPSocialHighlightEngagementProvider alloc];
          v23 = [PPSocialHighlightFeaturizer _intervalForBucketedString:v13];
          v24 = 7;
          goto LABEL_60;
        }

        if ([v13 hasPrefix:@"countParentViewedInInterval"])
        {
          v22 = [PPSocialHighlightEngagementProvider alloc];
          v23 = [PPSocialHighlightFeaturizer _intervalForBucketedString:v13];
          v24 = 8;
LABEL_60:
          v25 = &__block_literal_global_143;
          v26 = &__block_literal_global_13183;
LABEL_61:
          v19 = [(PPSocialHighlightEngagementProvider *)v22 initWithFeedbackType:v24 feedbackGroupByBlock:v25 highlightKeyBlock:v26 intervalSinceNow:v14 highlights:v23];
          goto LABEL_16;
        }

        if ([v13 hasPrefix:@"countAppButtonInInterval"])
        {
          v22 = [PPSocialHighlightEngagementProvider alloc];
          v23 = [PPSocialHighlightFeaturizer _intervalForBucketedString:v13];
          v24 = 3;
LABEL_66:
          v25 = &__block_literal_global_145;
          v26 = &__block_literal_global_9;
          goto LABEL_61;
        }

        if ([v13 hasPrefix:@"countActivityButtonInInterval"])
        {
          v22 = [PPSocialHighlightEngagementProvider alloc];
          v23 = [PPSocialHighlightFeaturizer _intervalForBucketedString:v13];
          v24 = 4;
          goto LABEL_66;
        }

        v27 = [v13 isEqualToString:@"mostRecentEngagementSecondsBeforeNow"];
        if ((v27 & 1) != 0 || [v13 isEqualToString:@"earliestEngagementSecondsBeforeNow"])
        {
          v19 = [[PPSocialHighlightTimeSinceEngagementProvider alloc] initWithFeedbackType:1 feedbackGroupByBlock:&__block_literal_global_143 highlightKeyBlock:&__block_literal_global_13183 mostRecent:v27 highlights:v14];
          goto LABEL_16;
        }

        if ([v13 isEqualToString:@"fractionEngagedToOfferedFromSender"])
        {
          v28 = [PPSocialHighlightFractionalEngagementProvider alloc];
          v29 = &__block_literal_global_149;
          v30 = &__block_literal_global_18;
LABEL_74:
          v19 = [(PPSocialHighlightFractionalEngagementProvider *)v28 initWithFeedbackGroupByBlock:v29 highlightKeyBlock:v30 highlights:v14];
          goto LABEL_16;
        }

        if ([v13 isEqualToString:@"fractionEngagedToOfferedFromThread"])
        {
          v28 = [PPSocialHighlightFractionalEngagementProvider alloc];
          v29 = &__block_literal_global_147;
          v30 = &__block_literal_global_16;
          goto LABEL_74;
        }

        v20 = 0;
LABEL_17:

        if (v20)
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:sel__feedbackFeaturesForPublisher_highlights_features_ object:v40 file:@"PPSocialHighlightFeaturizer.m" lineNumber:197 description:{@"Invalid parameter not satisfying: %@", @"[featureProvider respondsToSelector:@selector(applyFeedback:)]"}];
          }

          [v52[5] setObject:v20 forKeyedSubscript:v13];
        }

        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v31 = [obj countByEnumeratingWithState:&v47 objects:v57 count:16];
      v8 = v31;
    }

    while (v31);
  }

  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v46[3] = 0;
  v32 = objc_alloc(MEMORY[0x277CF17B0]);
  v33 = v52[5];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __81__PPSocialHighlightFeaturizer__feedbackFeaturesForPublisher_highlights_features___block_invoke;
  v45[3] = &unk_278974F40;
  v45[4] = v46;
  v34 = [v32 initWithAccumulator:v33 closure:v45];
  v35 = objc_autoreleasePoolPush();
  v36 = [v41 reduce:v34];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __81__PPSocialHighlightFeaturizer__feedbackFeaturesForPublisher_highlights_features___block_invoke_2;
  v44[3] = &unk_278978248;
  v44[4] = v46;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __81__PPSocialHighlightFeaturizer__feedbackFeaturesForPublisher_highlights_features___block_invoke_65;
  v43[3] = &unk_278974F68;
  v43[4] = &v51;
  v37 = [v36 sinkWithCompletion:v44 receiveInput:v43];

  objc_autoreleasePoolPop(v35);
  v38 = v52[5];

  _Block_object_dispose(v46, 8);
  _Block_object_dispose(&v51, 8);

  return v38;
}

void __93__PPSocialHighlightFeaturizer__highlightFeatureProviderForFeature_significantContactHandles___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [PPSocialHighlightFeaturizer _intervalForBucketedString:v2];
  domainAndSenderKey_block_invoke_14(v4, v3);
}

void __93__PPSocialHighlightFeaturizer__highlightFeatureProviderForFeature_significantContactHandles___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [PPSocialHighlightFeaturizer _intervalForBucketedString:v2];
  domainAndSenderKey_block_invoke_15(v4, v3);
}

double __93__PPSocialHighlightFeaturizer__highlightFeatureProviderForFeature_significantContactHandles___block_invoke_172(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sender];
  v5 = [v4 handle];
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v3 sender];
    v8 = [v7 handle];
    if ([v6 containsObject:v8])
    {
      v9 = 1.0;
    }

    else
    {
      v9 = 0.0;
    }
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

+ (double)_intervalForBucketedString:(uint64_t)string
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 componentsSeparatedByString:@":"];

  lastObject = [v3 lastObject];
  [lastObject doubleValue];
  v6 = v5 * 3600.0;

  return v6;
}

+ (id)_flattenArraysInDictionary:(void *)dictionary keyPath:
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a2;
  dictionaryCopy = dictionary;
  objc_opt_self();
  v6 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:{v12, v18}];
        v14 = [v13 valueForKeyPath:dictionaryCopy];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = &unk_284784110;
        }

        [v6 setObject:v16 forKeyedSubscript:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  return v6;
}

void __79__PPSocialHighlightFeaturizer__topicScoresMatchingSocialHighlights_topicStore___block_invoke(void *a1, void *a2)
{
  v24 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = a1[4];
  v5 = [v24 topic];
  v6 = [v5 topicIdentifier];
  [v4 addObject:v6];

  v7 = a1[5];
  v8 = [v24 topic];
  v9 = [v8 topicIdentifier];
  v10 = [v7 objectForKeyedSubscript:v9];

  if (!v10)
  {
    v11 = objc_opt_new();
    v12 = a1[5];
    v13 = [v24 topic];
    v14 = [v13 topicIdentifier];
    [v12 setObject:v11 forKeyedSubscript:v14];
  }

  v15 = a1[6];
  v16 = [v24 source];
  v17 = [v16 documentId];
  v18 = [v15 objectForKeyedSubscript:v17];

  if (!v18)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a1[7] object:a1[8] file:@"PPSocialHighlightFeaturizer.m" lineNumber:495 description:@"Querying for a documents matching the keys of a dictionary should always return topics complying with those keys."];
  }

  v19 = a1[5];
  v20 = [v24 topic];
  v21 = [v20 topicIdentifier];
  v22 = [v19 objectForKeyedSubscript:v21];
  [v22 addObject:v18];

  objc_autoreleasePoolPop(v3);
}

+ (id)_lastInteractionsByContactForHighlights:(void *)highlights bundlePredicate:(void *)predicate mechanismPredicate:(void *)mechanismPredicate interactionStore:
{
  v99 = *MEMORY[0x277D85DE8];
  v8 = a2;
  highlightsCopy = highlights;
  predicateCopy = predicate;
  mechanismPredicateCopy = mechanismPredicate;
  objc_opt_self();
  v9 = v8;
  objc_opt_self();
  v10 = objc_opt_new();
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v87 objects:v91 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v88;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v88 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v87 + 1) + 8 * i);
        v16 = MEMORY[0x277CFE080];
        sender = [v15 sender];
        handle = [sender handle];
        v19 = [v16 normalizedStringFromContactString:handle];

        if (v19)
        {
          [v10 addObject:v19];
        }

        else
        {
          v20 = pp_social_highlights_log_handle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            highlightIdentifier = [v15 highlightIdentifier];
            LODWORD(buf) = 138412290;
            *(&buf + 4) = highlightIdentifier;
            _os_log_debug_impl(&dword_23224A000, v20, OS_LOG_TYPE_DEBUG, "PPSocialHighlightFeaturizer: no contact for highlight %@, will be unresponsive to recency.", &buf, 0xCu);
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v87 objects:v91 count:16];
    }

    while (v12);
  }

  allObjects = [v10 allObjects];

  if ([allObjects count])
  {
    v23 = objc_autoreleasePoolPush();
    v24 = MEMORY[0x277CCAC30];
    v86 = allObjects;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
    v26 = [v24 predicateWithFormat:@"sender.identifier in %@" argumentArray:v25];

    v27 = MEMORY[0x277CCAC30];
    v85 = allObjects;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];
    v29 = [v27 predicateWithFormat:@"ANY recipients.identifier in %@" argumentArray:v28];

    v30 = objc_alloc(MEMORY[0x277CCA920]);
    v84[0] = v26;
    v84[1] = v29;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:2];
    v32 = [v30 initWithType:2 subpredicates:v31];

    v83[0] = highlightsCopy;
    v83[1] = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:2];
    v34 = [v33 mutableCopy];

    if (predicateCopy)
    {
      [v34 addObject:?];
    }

    v35 = [objc_alloc(MEMORY[0x277CCA920]) initWithType:1 subpredicates:v34];

    objc_autoreleasePoolPop(v23);
    v36 = objc_autoreleasePoolPush();
    v37 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:0];
    v82 = v37;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];

    v77 = 0;
    v69 = v35;
    v39 = [mechanismPredicateCopy queryInteractionsUsingPredicate:v35 sortDescriptors:v38 limit:50 error:&v77];
    v40 = v77;
    v41 = pp_social_highlights_log_handle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = [v39 count];
      *v91 = 134218243;
      v92 = v42;
      v93 = 2117;
      v94 = v39;
      _os_log_impl(&dword_23224A000, v41, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightFeaturizer: found %tu results: %{sensitive}@", v91, 0x16u);
    }

    if (v39)
    {
      if (![obj count] || -[NSObject count](v39, "count"))
      {
        v68 = allObjects;

        objc_autoreleasePoolPop(v36);
        v67 = v39;
        v43 = v39;
        objc_opt_self();
        v44 = objc_opt_new();
        buf = 0u;
        v96 = 0u;
        v97 = 0u;
        v98 = 0u;
        v73 = v43;
        v75 = [v73 countByEnumeratingWithState:&buf objects:v91 count:16];
        if (v75)
        {
          v74 = *v96;
          do
          {
            for (j = 0; j != v75; ++j)
            {
              if (*v96 != v74)
              {
                objc_enumerationMutation(v73);
              }

              v46 = *(*(&buf + 1) + 8 * j);
              startDate = [v46 startDate];

              if (startDate)
              {
                sender2 = [v46 sender];
                identifier = [sender2 identifier];

                recipients = [v46 recipients];
                v51 = [recipients _pas_mappedArrayWithTransform:&__block_literal_global_87];

                if (identifier)
                {
                  v52 = [v44 objectForKeyedSubscript:identifier];

                  if (!v52)
                  {
                    startDate2 = [v46 startDate];
                    [v44 setObject:startDate2 forKeyedSubscript:identifier];
                  }
                }

                v80 = 0u;
                v81 = 0u;
                v78 = 0u;
                v79 = 0u;
                v54 = v51;
                v55 = [v54 countByEnumeratingWithState:&v78 objects:&v87 count:16];
                if (v55)
                {
                  v56 = v55;
                  v57 = *v79;
                  do
                  {
                    for (k = 0; k != v56; ++k)
                    {
                      if (*v79 != v57)
                      {
                        objc_enumerationMutation(v54);
                      }

                      v59 = *(*(&v78 + 1) + 8 * k);
                      v60 = [v44 objectForKeyedSubscript:v59];

                      if (!v60)
                      {
                        startDate3 = [v46 startDate];
                        [v44 setObject:startDate3 forKeyedSubscript:v59];
                      }
                    }

                    v56 = [v54 countByEnumeratingWithState:&v78 objects:&v87 count:16];
                  }

                  while (v56);
                }
              }
            }

            v75 = [v73 countByEnumeratingWithState:&buf objects:v91 count:16];
          }

          while (v75);
        }

        v39 = v67;
        allObjects = v68;
        goto LABEL_50;
      }

      v62 = pp_social_highlights_log_handle();
      if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
LABEL_49:

        objc_autoreleasePoolPop(v36);
        v44 = 0;
LABEL_50:

        goto LABEL_51;
      }

      *v91 = 0;
      v63 = "PPSocialHighlightFeaturizer: interaction store returned no interactions, but highlights should be included in interactions.";
      v64 = v62;
      v65 = 2;
    }

    else
    {
      v62 = pp_social_highlights_log_handle();
      if (!os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      *v91 = 138412290;
      v92 = v40;
      v63 = "PPSocialHighlightFeaturizer: interaction store query failed %@";
      v64 = v62;
      v65 = 12;
    }

    _os_log_error_impl(&dword_23224A000, v64, OS_LOG_TYPE_ERROR, v63, v91, v65);
    goto LABEL_49;
  }

  v39 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *v91 = 0;
    _os_log_impl(&dword_23224A000, v39, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightFeaturizer: no handles found.", v91, 2u);
  }

  v44 = 0;
LABEL_51:

  return v44;
}

id __81__PPSocialHighlightFeaturizer__feedbackFeaturesForPublisher_highlights_features___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v14 = [v7 objectForKeyedSubscript:v12];
        v15 = [v14 applyFeedback:v5];
        [v6 setObject:v15 forKeyedSubscript:v12];

        objc_autoreleasePoolPop(v13);
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  ++*(*(*(a1 + 32) + 8) + 24);

  return v6;
}

void __81__PPSocialHighlightFeaturizer__feedbackFeaturesForPublisher_highlights_features___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 state];
  v5 = pp_social_highlights_log_handle();
  v6 = v5;
  if (v4 == 1)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [v3 error];
      v10 = 138412290;
      v11 = v7;
      _os_log_error_impl(&dword_23224A000, v6, OS_LOG_TYPE_ERROR, "PPSocialHighlightFeaturizer: failed to process feedback: %@", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v10) = 0;
    _os_log_debug_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEBUG, "PPSocialHighlightFeaturizer: successfully processed entire feedback stream.", &v10, 2u);
  }

  v8 = pp_social_highlights_log_handle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(*(a1 + 32) + 8) + 24);
    v10 = 134217984;
    v11 = v9;
    _os_log_impl(&dword_23224A000, v8, OS_LOG_TYPE_DEFAULT, "PPSocialHighlightFeaturizer: completed processing with %tu items passed to aggregator.", &v10, 0xCu);
  }
}

- (PPSocialHighlightFeaturizer)initWithFeatureValues:(id)values
{
  valuesCopy = values;
  v9.receiver = self;
  v9.super_class = PPSocialHighlightFeaturizer;
  v6 = [(PPSocialHighlightFeaturizer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_featureValues, values);
  }

  return v7;
}

@end