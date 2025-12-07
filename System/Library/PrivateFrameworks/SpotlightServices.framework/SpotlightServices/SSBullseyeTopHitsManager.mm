@interface SSBullseyeTopHitsManager
+ (id)dedupeWebURLSuggestionsFromSections:(id)sections;
- (SSBullseyeTopHitsManager)initWithQueryId:(int64_t)id categoryToResultMapping:(id)mapping currentTopHitSection:(id)section queryContext:(id)context ranker:(id)ranker;
- (id)bullseyeTopHitSection;
- (id)bullseyeTopHitSections:(id)sections maxTopHitsCount:(int)count minThresholdForBigResult:(double)result needExceptionForSafariSection:(BOOL)section;
- (id)tagOrFilterHiddenSectionsForClient:(id)client isCommittedSearch:(BOOL)search maxVisibleSections:(int64_t)sections maxTopHitsCount:(int)count minThresholdForBigResult:(double)result topHitSection:(id *)section;
@end

@implementation SSBullseyeTopHitsManager

- (SSBullseyeTopHitsManager)initWithQueryId:(int64_t)id categoryToResultMapping:(id)mapping currentTopHitSection:(id)section queryContext:(id)context ranker:(id)ranker
{
  v31 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  sectionCopy = section;
  contextCopy = context;
  rankerCopy = ranker;
  v29.receiver = self;
  v29.super_class = SSBullseyeTopHitsManager;
  v17 = [(SSBullseyeTopHitsManager *)&v29 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_categoryToResultMapping, mapping);
    v18->_queryID = id;
    objc_storeStrong(&v18->_topHitSection, section);
    objc_storeStrong(&v18->_queryContext, context);
    objc_storeStrong(&v18->_ranker, ranker);
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v19 = mappingCopy;
    v20 = [v19 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v26;
      do
      {
        v23 = 0;
        do
        {
          if (*v26 != v22)
          {
            objc_enumerationMutation(v19);
          }

          SSScreenTimeStatusForBundleIDWithCompletionHandler(*(*(&v25 + 1) + 8 * v23++), 0);
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v21);
    }
  }

  return v18;
}

- (id)bullseyeTopHitSection
{
  v13 = *MEMORY[0x1E69E9840];
  relatedSectionBundleIdentifier = [(SFMutableResultSection *)self->_topHitSection relatedSectionBundleIdentifier];
  if (relatedSectionBundleIdentifier)
  {
    v4 = [(NSDictionary *)self->_categoryToResultMapping objectForKey:relatedSectionBundleIdentifier];
    if (v4)
    {
      v5 = PRSLogCategoryDefault();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        queryID = self->_queryID;
        title = [v4 title];
        v10[0] = 67109378;
        v10[1] = queryID;
        v11 = 2112;
        v12 = title;
        _os_log_impl(&dword_1D9F69000, v5, OS_LOG_TYPE_INFO, "### [%d] top hit section title:%@", v10, 0x12u);
      }

      v8 = [(SSBullseyeTopHitsManager *)self bullseyeSectionForTopHit:v4 initiallyHidden:0 checkForTopHit:0 thresholdCounter:0];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)bullseyeTopHitSections:(id)sections maxTopHitsCount:(int)count minThresholdForBigResult:(double)result needExceptionForSafariSection:(BOOL)section
{
  v185 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  v9 = +[SSRankingManager getTopHitsContinuationThresholds];
  v139 = +[SSRankingManager getForbiddenSecondSections];
  v10 = +[SSRankingManager getPoorSecondSections];
  v143 = objc_msgSend_count(sectionsCopy);
  v11 = objc_msgSend_count(v9);
  v146 = SSMaxSectionsBelowSuggestions(v11);
  v12 = PRSLogCategoryDefault();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 1.5047e-36;
    v180 = v11;
    v181 = 2112;
    *v182 = v9;
    _os_log_impl(&dword_1D9F69000, v12, OS_LOG_TYPE_INFO, "### [%d] %@", buf, 0x12u);
  }

  if (!v11)
  {
    v14 = 0;
    goto LABEL_176;
  }

  v138 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v142 = sectionsCopy;
  countCopy = count;
  v122 = v9;
  v123 = v11;
  v120 = v10;
  sectionCopy = section;
  if (v146)
  {
    v145 = 0;
    v13 = v143;
  }

  else
  {
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v15 = sectionsCopy;
    v16 = [v15 countByEnumeratingWithState:&v172 objects:v184 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v173;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v173 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v172 + 1) + 8 * i);
          bundleIdentifier = [v20 bundleIdentifier];
          v22 = [bundleIdentifier isEqualToString:@"com.apple.searchd.suggestions"];

          if (v22)
          {
            v145 = v20;
            count = countCopy;
            goto LABEL_18;
          }

          v13 = v143;
        }

        v17 = [v15 countByEnumeratingWithState:&v172 objects:v184 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }

      v145 = 0;
      count = countCopy;
    }

    else
    {
      v145 = 0;
LABEL_18:
      v13 = v143;
    }

    sectionsCopy = v142;
  }

  v124 = 0;
  v140 = 0;
  v23 = 0;
  v127 = 0;
  v132 = 0;
  v131 = 0;
  v141 = 1;
  do
  {
    if (!v13 || v23 >= count)
    {
      goto LABEL_163;
    }

    v152 = 0;
    v137 = 0;
    v24 = 0;
    do
    {
      v25 = [sectionsCopy objectAtIndexedSubscript:v24];
      bundleIdentifier2 = [v25 bundleIdentifier];
      domain = [v25 domain];
      if (domain == 2 && (v152 & 1) != 0)
      {
        goto LABEL_51;
      }

      v147 = domain;
      v153 = v23;
      v154 = bundleIdentifier2;
      bundleIdentifier3 = [v25 bundleIdentifier];
      v29 = v25;
      v30 = [bundleIdentifier3 isEqualToString:@"com.apple.spotlight.tophits"];

      if (v30)
      {
        bundleIdentifier4 = objc_opt_new();
        v168 = 0u;
        v169 = 0u;
        v170 = 0u;
        v171 = 0u;
        v150 = v29;
        resultSet = [v29 resultSet];
        v33 = [resultSet countByEnumeratingWithState:&v168 objects:v183 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v169;
          do
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v169 != v35)
              {
                objc_enumerationMutation(resultSet);
              }

              v37 = *(*(&v168 + 1) + 8 * j);
              applicationBundleIdentifier = [v37 applicationBundleIdentifier];
              v39 = SSScreenTimeStatusForBundleIDWithCompletionHandler(applicationBundleIdentifier, 0);

              if ((v39 & 1) == 0)
              {
                [bundleIdentifier4 addObject:v37];
              }
            }

            v34 = [resultSet countByEnumeratingWithState:&v168 objects:v183 count:16];
          }

          while (v34);
        }

        v40 = objc_msgSend_count(bundleIdentifier4);
        v41 = v40 == 0;
        if (v40)
        {
          v25 = v150;
          [v150 setResultSet:bundleIdentifier4];
          v41 = 0;
          sectionsCopy = v142;
          v13 = v143;
          count = countCopy;
        }

        else
        {
          sectionsCopy = v142;
          v13 = v143;
          count = countCopy;
          v25 = v150;
        }
      }

      else
      {
        bundleIdentifier4 = [v29 bundleIdentifier];
        v41 = SSScreenTimeStatusForBundleIDWithCompletionHandler(bundleIdentifier4, 0);
        v25 = v29;
      }

      if (v25 == v145 && v146 == 0)
      {
        v23 = v153;
LABEL_50:
        bundleIdentifier2 = v154;
        goto LABEL_51;
      }

      v23 = v153;
      if (v41)
      {
        goto LABEL_50;
      }

      bundleIdentifier5 = [v25 bundleIdentifier];
      IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos(bundleIdentifier5);

      if (IsSyndicatedPhotos)
      {
        goto LABEL_50;
      }

      bundleIdentifier6 = [v25 bundleIdentifier];
      v151 = v25;
      if ([bundleIdentifier6 isEqualToString:@"com.apple.spotlight.tophits"])
      {
        relatedSectionBundleIdentifier = [v25 relatedSectionBundleIdentifier];
        v47 = SSSectionIsSyndicatedPhotos(relatedSectionBundleIdentifier);

        if (v47)
        {
          goto LABEL_162;
        }
      }

      else
      {
      }

      bundleIdentifier2 = v154;
      if (v141 & 1) == 0 && ([v154 isEqualToString:@"com.apple.application"])
      {
        v25 = v151;
        goto LABEL_51;
      }

      v25 = v151;
      if (v153 >= 1 && v154 && [v139 containsObject:v154])
      {
        if (![v154 isEqualToString:@"com.apple.Preferences"])
        {
          goto LABEL_51;
        }

        resultSet2 = [v151 resultSet];
        firstObject = [resultSet2 firstObject];

        if (!firstObject || ([firstObject rankingItem], v50 = objc_claimAutoreleasedReturnValue(), v51 = objc_msgSend(v50, "topHitReason") & 0xF, v50, !v51))
        {
          bundleIdentifier2 = v154;
          goto LABEL_160;
        }
      }

      firstObject = [v151 title];
      v52 = PRSLogCategoryDefault();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        queryID = self->_queryID;
        *buf = 1.5048e-36;
        v180 = queryID;
        v181 = 1024;
        *v182 = v24;
        *&v182[4] = 2112;
        *&v182[6] = firstObject;
        _os_log_impl(&dword_1D9F69000, v52, OS_LOG_TYPE_INFO, "### [%d] section[%d] title:%@", buf, 0x18u);
      }

      if (v147 == 3)
      {
        v135 = 0;
      }

      else
      {
        v135 = (v147 == 2) ^ (v147 != 10);
      }

      bundleIdentifier7 = [v151 bundleIdentifier];
      v55 = [bundleIdentifier7 isEqualToString:@"com.apple.searchd.suggestions"];

      v137 |= v55;
      v166 = 0u;
      v167 = 0u;
      v164 = 0u;
      v165 = 0u;
      resultSet3 = [v151 resultSet];
      v57 = [resultSet3 countByEnumeratingWithState:&v164 objects:v178 count:16];
      if (v57)
      {
        v58 = v57;
        v59 = *v165;
        do
        {
          for (k = 0; k != v58; ++k)
          {
            if (*v165 != v59)
            {
              objc_enumerationMutation(resultSet3);
            }

            v61 = *(*(&v164 + 1) + 8 * k);
            v163 = 3233;
            *buf = (v24 - (v137 & 1));
            v180 = 0;
            rankingItem = [v61 rankingItem];
            v63 = rankingItem;
            if (rankingItem)
            {
              l2FeatureVector = [rankingItem L2FeatureVector];
              [l2FeatureVector setScores:buf forFeatures:&v163 count:1];
            }
          }

          v58 = [resultSet3 countByEnumeratingWithState:&v164 objects:v178 count:16];
        }

        while (v58);
      }

      v25 = v151;
      v23 = v153;
      v65 = [(SSBullseyeTopHitsManager *)self bullseyeSectionForTopHit:v151 initiallyHidden:0 checkForTopHit:v135 boostSafari:(v131 & 1) == 0 thresholdCounter:v153 existingResults:v138 allowMultipleTopHits:v146 == 0];
      if (!v132)
      {
        v132 = objc_opt_new();
      }

      count = countCopy;
      v13 = v143;
      v133 = v65;
      if (![v65 resultsCount])
      {
        v152 |= v147 == 2;
        bundleIdentifier2 = v154;
        goto LABEL_159;
      }

      resultSet4 = [v65 resultSet];
      firstObject2 = [resultSet4 firstObject];

      if (!firstObject2)
      {
        bundleIdentifier2 = v154;
        goto LABEL_158;
      }

      v68 = v147 != 2;
      v148 = v147 == 2;
      v69 = firstObject2;
      v131 |= [firstObject2 isSafariTopHit];
      rankingItem2 = [firstObject2 rankingItem];
      l2FeatureVector2 = [rankingItem2 L2FeatureVector];
      [l2FeatureVector2 originalL2Score];
      v73 = v72;

      [v69 sectionBundleIdentifier];
      v126 = v125 = v69;
      preferTopPlatter = [v69 preferTopPlatter];
      v75 = preferTopPlatter;
      if (v153 > 0 || (v68 & preferTopPlatter & 1) != 0 || (v148 & preferTopPlatter & 1) != 0)
      {
        sectionsCopy = v142;
        if (v153 > 0)
        {
          goto LABEL_96;
        }
      }

      else
      {
        sectionsCopy = v142;
        if (([v126 isEqualToString:@"com.apple.application"] & 1) == 0 && (objc_msgSend(v139, "containsObject:", v126) & 1) == 0)
        {
          rankingItem3 = [v69 rankingItem];
          topHitReason = [rankingItem3 topHitReason];

          if (!topHitReason)
          {
LABEL_96:
            if (v146)
            {
LABEL_112:
              LODWORD(v81) = 0;
            }

            else
            {
              if (!v127)
              {
                v127 = objc_opt_new();
              }

              v161 = 0u;
              v162 = 0u;
              v159 = 0u;
              v160 = 0u;
              resultSet5 = [v133 resultSet];
              v79 = [resultSet5 countByEnumeratingWithState:&v159 objects:v177 count:16];
              if (v79)
              {
                v80 = v79;
                v117 = firstObject;
                LODWORD(v81) = 0;
                v82 = *v160;
                do
                {
                  for (m = 0; m != v80; ++m)
                  {
                    if (*v160 != v82)
                    {
                      objc_enumerationMutation(resultSet5);
                    }

                    v84 = *(*(&v159 + 1) + 8 * m);
                    [v84 setUsesCompactDisplay:{objc_msgSend(v84, "shouldUseCompactDisplay") | objc_msgSend(v84, "usesCompactDisplay")}];
                    if (v140 > countCopy)
                    {
                      goto LABEL_109;
                    }

                    if (([v138 containsObject:v84] & 1) == 0)
                    {
                      [v127 addObject:v84];
                      ++v140;
                      LODWORD(v81) = v81 + 1;
                      [v138 addObject:v84];
                    }
                  }

                  v80 = [resultSet5 countByEnumeratingWithState:&v159 objects:v177 count:16];
                }

                while (v80);
LABEL_109:
                count = countCopy;
                LODWORD(v23) = v153;
                firstObject = v117;
              }

              else
              {
                LODWORD(v81) = 0;
                LODWORD(v23) = v153;
              }

LABEL_151:
            }

            v13 = v143;
LABEL_153:
            if (v123 <= v23)
            {
              goto LABEL_155;
            }

            v103 = v73;
            v104 = [v122 objectAtIndexedSubscript:v23];
            [v104 doubleValue];
            v106 = v105;

            if (v106 >= v103)
            {
              goto LABEL_155;
            }

LABEL_162:
            break;
          }
        }
      }

      if (v75)
      {
        if (objc_msgSend_count(v132))
        {
          goto LABEL_112;
        }
      }

      else
      {
        resultSet5 = [v125 sectionBundleIdentifier];
        if ([v120 containsObject:resultSet5])
        {
          v85 = objc_msgSend_count(v132);

          if (v85)
          {
            goto LABEL_112;
          }
        }

        else
        {
          rankingItem4 = [v125 rankingItem];
          if (![rankingItem4 topHitReason])
          {

            LODWORD(v81) = 0;
            goto LABEL_151;
          }

          v87 = objc_msgSend_count(v132);

          if (v87)
          {
            goto LABEL_112;
          }
        }
      }

      v13 = v143;
      v118 = firstObject;
      if ([v154 isEqualToString:@"com.apple.spotlight.tophits"])
      {
        relatedSectionBundleIdentifier2 = [v151 relatedSectionBundleIdentifier];
        v89 = [relatedSectionBundleIdentifier2 isEqualToString:@"com.apple.application"];

        v141 &= v89 ^ 1;
      }

      [v132 addObject:v133];
      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      resultSet6 = [v133 resultSet];
      v149 = [resultSet6 countByEnumeratingWithState:&v155 objects:v176 count:16];
      v91 = 0;
      v81 = 0;
      if (!v149)
      {
        goto LABEL_147;
      }

      v136 = 0;
      v128 = 0;
      v121 = 0;
      v134 = *v156;
      while (2)
      {
        for (n = 0; n != v149; ++n)
        {
          if (*v156 != v134)
          {
            objc_enumerationMutation(resultSet6);
          }

          v23 = *(*(&v155 + 1) + 8 * n);
          [v23 setUsesCompactDisplay:{objc_msgSend(v23, "shouldUseCompactDisplay") | objc_msgSend(v23, "usesCompactDisplay")}];
          [v138 addObject:v23];
          sectionBundleIdentifier = [v23 sectionBundleIdentifier];
          if ([sectionBundleIdentifier isEqualToString:@"com.apple.application"])
          {
            if ((v91 & 1) == 0)
            {
              v91 = 1;
            }

            if (v136)
            {
              v81 = v81;
            }

            else
            {
              v81 = (v81 + 1);
            }

            v94 = v140;
            if ((v136 & 1) == 0)
            {
              v94 = v140 + 1;
            }

            v140 = v94;
            v136 = 1;
            LODWORD(v23) = v153;
          }

          else
          {
            if (v140 > countCopy)
            {

              v13 = v143;
              LODWORD(v23) = v153;
              goto LABEL_147;
            }

            if ([sectionBundleIdentifier isEqualToString:@"com.apple.mobiletimer"])
            {
              v129 = v91;
              v95 = v81;
              v81 = resultSet6;
              rankingItem5 = [v23 rankingItem];
              l2FeatureVector3 = [rankingItem5 L2FeatureVector];
              [l2FeatureVector3 scoreForFeature:1982];
              v99 = v98;

              if (v99 == 0.0)
              {
                LODWORD(v23) = v153;
                v128 |= v153 == 0;
                resultSet6 = v81;
                LODWORD(v81) = v95;
              }

              else
              {
                resultSet6 = v81;
                if ((v99 != 1.0 || (v128 & 1) == 0) | v121 & 1)
                {
                  LODWORD(v23) = v153;
                  v81 = v95;
                  v91 = v129;
                  goto LABEL_143;
                }

                [v23 setUsesCompactDisplay:1];
                v100 = v127;
                LODWORD(v81) = v95;
                if (!v127)
                {
                  v100 = objc_opt_new();
                }

                v127 = v100;
                [v100 addObject:v23];
                [v138 addObject:v23];
                v121 = 1;
                LODWORD(v23) = v153;
              }

              v91 = v129;
            }

            else
            {
              LODWORD(v23) = v153;
            }

            ++v140;
            v81 = (v81 + 1);
          }

LABEL_143:
        }

        v149 = [resultSet6 countByEnumeratingWithState:&v155 objects:v176 count:16];
        if (v149)
        {
          continue;
        }

        break;
      }

      v13 = v143;
LABEL_147:

      v101 = v133;
      v102 = v131 | ~(v91 & sectionCopy);
      v124 = v101;
      count = countCopy;
      firstObject = v118;
      if (v102)
      {
        goto LABEL_153;
      }

LABEL_155:
      v23 = (v81 + v23);
      if (v81)
      {
        v24 = 0;
      }

      v25 = v151;
      bundleIdentifier2 = v154;
      firstObject2 = v125;
LABEL_158:

LABEL_159:
LABEL_160:

LABEL_51:
      ++v24;
    }

    while (v24 < v13 && v23 < count);
LABEL_163:
    v107 = v23;
    v23 = 1;
  }

  while (!v107);
  v9 = v122;
  v10 = v120;
  if (objc_msgSend_count(v127))
  {
    if (v146)
    {
      results = v124;
      if (!results)
      {
        v109 = [SFMutableResultSection alloc];
        v110 = [v142 objectAtIndexedSubscript:0];
        results = [(SFMutableResultSection *)v109 initWithSection:v110];

        resultSet7 = [(SFMutableResultSection *)results resultSet];
        [resultSet7 removeAllObjects];

        [v132 addObject:results];
      }

      resultSet8 = [(SFMutableResultSection *)results resultSet];
      [resultSet8 addObjectsFromArray:v127];
    }

    else
    {
      results = [v145 results];
      if (objc_msgSend_count(results))
      {
        v113 = MEMORY[0x1E695DF70];
        firstObject3 = [(SFMutableResultSection *)results firstObject];
        resultSet8 = [v113 arrayWithObject:firstObject3];

        [resultSet8 addObjectsFromArray:v127];
        if (objc_msgSend_count(results) >= 2)
        {
          v115 = [(SFMutableResultSection *)results subarrayWithRange:1, objc_msgSend_count(results) - 1];
          [resultSet8 addObjectsFromArray:v115];
        }
      }

      else
      {
        resultSet8 = v127;
      }

      [v145 setResults:resultSet8];
    }

    sectionsCopy = v142;
  }

  v14 = v132;

LABEL_176:

  return v14;
}

- (id)tagOrFilterHiddenSectionsForClient:(id)client isCommittedSearch:(BOOL)search maxVisibleSections:(int64_t)sections maxTopHitsCount:(int)count minThresholdForBigResult:(double)result topHitSection:(id *)section
{
  searchCopy = search;
  v334[16] = *MEMORY[0x1E69E9840];
  clientCopy = client;
  selfCopy = self;
  v243 = searchCopy;
  sectionsCopy = sections;
  if (searchCopy)
  {
    v238 = clientCopy;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_75;
  }

  LODWORD(v282) = count;
  v296 = 0u;
  v297 = 0u;
  v294 = 0u;
  v295 = 0u;
  text = clientCopy;
  v18 = [text countByEnumeratingWithState:&v294 objects:v334 count:16];
  sectionCopy = section;
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = 0;
    v22 = *v295;
    v23 = @"com.apple.application";
    v24 = @"com.apple.mobilesafari";
    *&v285 = @"com.apple.application";
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v295 != v22)
        {
          objc_enumerationMutation(text);
        }

        v26 = *(*(&v294 + 1) + 8 * i);
        bundleIdentifier = [v26 bundleIdentifier];
        if ([bundleIdentifier isEqualToString:v23])
        {
          v21 = 1;
        }

        else
        {
          [v26 relatedSectionBundleIdentifier];
          LODWORD(score) = v21;
          v28 = v20;
          v29 = v24;
          v30 = v19;
          v32 = v31 = v22;
          v33 = [v32 isEqualToString:v23];

          v22 = v31;
          v19 = v30;
          v24 = v29;
          v20 = v28;
          v21 = v33 | score;
        }

        bundleIdentifier2 = [v26 bundleIdentifier];
        v35 = [bundleIdentifier2 isEqualToString:v24];

        v20 |= v35;
        if (v21 & 1) != 0 && (v20)
        {
          v36 = 1;
          goto LABEL_17;
        }

        v23 = v285;
      }

      v19 = [text countByEnumeratingWithState:&v294 objects:v334 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }

    v36 = 0;
LABEL_17:
    self = selfCopy;
    section = sectionCopy;
  }

  else
  {
    v36 = 0;
  }

  score = objc_opt_new();
  v37 = [(SSBullseyeTopHitsManager *)self bullseyeTopHitSections:text maxTopHitsCount:v282 minThresholdForBigResult:v36 needExceptionForSafariSection:result];
  v290 = 0u;
  v291 = 0u;
  v292 = 0u;
  v293 = 0u;
  v38 = text;
  v16 = [v38 countByEnumeratingWithState:&v290 objects:v333 count:16];
  v282 = v37;
  if (!v16)
  {
    v48 = 0;
    goto LABEL_38;
  }

  v39 = 0;
  v40 = *v291;
  while (2)
  {
    for (j = 0; j != v16; j = (j + 1))
    {
      if (*v291 != v40)
      {
        objc_enumerationMutation(v38);
      }

      v42 = *(*(&v290 + 1) + 8 * j);
      bundleIdentifier3 = [v42 bundleIdentifier];
      v44 = [bundleIdentifier3 isEqualToString:@"com.apple.searchd.suggestions"];

      if (v44)
      {
        v45 = v42;

        v39 = v45;
      }

      bundleIdentifier4 = [v42 bundleIdentifier];
      IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos(bundleIdentifier4);

      if (IsSyndicatedPhotos)
      {
        resultSet = [v42 resultSet];
        firstObject = [resultSet firstObject];

        rankingItem = [firstObject rankingItem];
        if ([rankingItem photosMatch])
        {
        }

        else
        {
          rankingItem2 = [firstObject rankingItem];
          photosExactMatch = [rankingItem2 photosExactMatch];

          if (!photosExactMatch)
          {
            v48 = 0;
            goto LABEL_36;
          }
        }

        v48 = v42;
LABEL_36:
        self = selfCopy;

        goto LABEL_37;
      }
    }

    v16 = [v38 countByEnumeratingWithState:&v290 objects:v333 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

  v48 = 0;
  self = selfCopy;
LABEL_37:
  v16 = v39;
  section = sectionCopy;
  v37 = v282;
LABEL_38:

  results = [*section results];
  v55 = objc_msgSend_count(results);

  if (v55)
  {
    self->_haveBullseyeTopHitSection = 1;
    if (!objc_msgSend_count(score))
    {
      [score addObject:*section];
    }
  }

  else if (objc_msgSend_count(v37))
  {
    [score addObjectsFromArray:v37];
    firstObject2 = [v37 firstObject];
    [firstObject2 setBundleIdentifier:@"com.apple.spotlight.tophits"];
    v57 = firstObject2;
    *section = firstObject2;
    self->_haveBullseyeTopHitSection = 1;
  }

  v234 = v48;
  if (v16)
  {
    [score addObject:v16];
  }

  if (!sectionsCopy)
  {

    v68 = v38;
    v69 = 0;
    v238 = v68;
    v17 = v234;
    goto LABEL_206;
  }

  v58 = *section;
  results2 = [(SFMutableResultSection *)v58 results];
  v276 = v58;
  if (objc_msgSend_count(results2) != 1)
  {

    firstObject3 = 0;
    goto LABEL_55;
  }

  results3 = [(SFMutableResultSection *)v58 results];
  firstObject3 = [results3 firstObject];

  if (!firstObject3)
  {
LABEL_55:
    text = firstObject3;
    sectionHeader = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v70 = [sectionHeader localizedStringForKey:@"DOMAIN_TOPHIT" value:&stru_1F556FE60 table:@"SpotlightServices"];
    v67 = v276;
    [(SFResultSection *)v276 setTitle:v70];

    goto LABEL_56;
  }

  v62 = v16;
  sectionBundleIdentifier = [firstObject3 sectionBundleIdentifier];
  if ([sectionBundleIdentifier isEqualToString:@"com.apple.datadetector.quick_actions"])
  {
    goto LABEL_51;
  }

  [firstObject3 sectionBundleIdentifier];
  v65 = v64 = firstObject3;
  if (![v65 isEqualToString:@"com.apple.calculation"])
  {
    sectionBundleIdentifier2 = [v64 sectionBundleIdentifier];
    LODWORD(v285) = [sectionBundleIdentifier2 isEqualToString:@"com.apple.conversion"];

    firstObject3 = v64;
    if (v285)
    {
      goto LABEL_52;
    }

    v16 = v62;
    goto LABEL_55;
  }

  firstObject3 = v64;
LABEL_51:

LABEL_52:
  text = firstObject3;
  sectionHeader = [firstObject3 sectionHeader];
  v67 = v276;
  [(SFResultSection *)v276 setTitle:sectionHeader];
  v16 = v62;
LABEL_56:

  v71 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v72 = [v71 localizedStringForKey:@"SUGGESTIONS" value:&stru_1F556FE60 table:@"SpotlightServices"];

  results4 = [(SFMutableResultSection *)v67 results];
  v74 = objc_msgSend_count(results4);

  v15 = v67;
  v235 = v16;
  sectionCopy = v72;
  if (v74)
  {
    [(SFResultSection *)v16 setSubtitle:v72];
  }

  else
  {
    [(SFResultSection *)v16 setTitle:v72];
  }

  v288 = 0u;
  v289 = 0u;
  v286 = 0u;
  v287 = 0u;
  v75 = v38;
  v76 = [v75 countByEnumeratingWithState:&v286 objects:v332 count:16];
  if (v76)
  {
    v77 = v76;
    v78 = *v287;
    *&v285 = @"com.apple.searchd.suggestions";
    do
    {
      for (k = 0; k != v77; ++k)
      {
        if (*v287 != v78)
        {
          objc_enumerationMutation(v75);
        }

        v80 = *(*(&v286 + 1) + 8 * k);
        if (v80 != v15)
        {
          bundleIdentifier5 = [*(*(&v286 + 1) + 8 * k) bundleIdentifier];
          if ([bundleIdentifier5 isEqualToString:@"com.apple.spotlight.tophits"])
          {
          }

          else
          {
            bundleIdentifier6 = [(SFResultSection *)v80 bundleIdentifier];
            v83 = [bundleIdentifier6 isEqualToString:v285];

            v15 = v276;
            if ((v83 & 1) == 0)
            {
              if (selfCopy->_haveBullseyeTopHitSection && (-[SFMutableResultSection resultSet](v80, "resultSet"), v84 = objc_claimAutoreleasedReturnValue(), -[SFMutableResultSection resultSet](v276, "resultSet"), v85 = objc_claimAutoreleasedReturnValue(), v86 = [v84 intersectsOrderedSet:v85], v85, v15 = v276, v84, v86))
              {
                resultSet2 = [(SFMutableResultSection *)v276 resultSet];
                v88 = [(SFMutableResultSection *)v80 copySectionRemovingResults:resultSet2];

                [score addObject:v88];
                v15 = v276;
              }

              else
              {
                [score addObject:v80];
              }
            }
          }
        }
      }

      v77 = [v75 countByEnumeratingWithState:&v286 objects:v332 count:16];
    }

    while (v77);
  }

  v89 = score;
  v238 = v89;

  self = selfCopy;
  v17 = v234;
  v16 = v235;
LABEL_75:
  queryKind = [(SPSearchQueryContext *)self->_queryContext queryKind];
  whyQuery = [(SPSearchQueryContext *)self->_queryContext whyQuery];
  v92 = PRSLogCategoryDefault();
  v235 = v16;
  v276 = v15;
  if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
  {
    queryID = self->_queryID;
    searchString = [(SPSearchQueryContext *)self->_queryContext searchString];
    v95 = SSRedactString(searchString, 0);
    v298 = 67109890;
    *v299 = queryID;
    v16 = v235;
    *&v299[4] = 1024;
    *&v299[6] = queryKind;
    *v300 = 2112;
    *&v300[2] = v95;
    *&v300[10] = 2048;
    *&v300[12] = whyQuery;
    _os_log_impl(&dword_1D9F69000, v92, OS_LOG_TYPE_INFO, "### [%d] sections %d %@ %lu", &v298, 0x22u);

    v15 = v276;
    self = selfCopy;
  }

  v251 = objc_opt_new();
  v96 = v238;
  v245 = objc_msgSend_count(v238);
  relatedSectionBundleIdentifier = [(SFMutableResultSection *)self->_topHitSection relatedSectionBundleIdentifier];
  v231 = relatedSectionBundleIdentifier;
  if (relatedSectionBundleIdentifier)
  {
    v236 = [(NSDictionary *)self->_categoryToResultMapping objectForKeyedSubscript:relatedSectionBundleIdentifier];
  }

  else
  {
    v236 = 0;
  }

  v98 = sectionsCopy;
  ImportantBits = PRSRankingQueryImportantBits(1);
  v255 = v100;
  v256 = ImportantBits;
  v230 = &v228;
  v101 = v245;
  v237 = &v228 - ((8 * v245 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = 8 * v245;
  bzero(v237, 8 * v245);
  if (v101 < 1)
  {
LABEL_199:
    v259 = 0;
    goto LABEL_200;
  }

  v247 = 0;
  v103 = 0;
  v241 = 0;
  v249 = 0;
  v104 = 0;
  v254 = @"com.apple.mobilesafari";
  v232 = @"com.apple.parsec.related_search";
  *&v102 = 138412546;
  v228 = v102;
  *&v102 = 67109890;
  v233 = v102;
  *&v102 = 67113218;
  v244 = v102;
  *&v102 = 67114242;
  v253 = v102;
  v234 = v17;
  while (2)
  {
    v259 = v103;
    v105 = [v96 objectAtIndexedSubscript:{v104, v228}];
    v106 = v105;
    if (v98 && !v243)
    {
      if (v105 == v15 || v105 == v16)
      {
        v107 = v105;
        [v251 addObject:?];
        v106 = v107;
        ++v98;
        goto LABEL_186;
      }

      goto LABEL_91;
    }

    if (v104)
    {
      if (v105 == v236 || v243 && v105 == self->_topHitSection)
      {
        goto LABEL_186;
      }

LABEL_91:
      v108 = 0;
    }

    else if (v105 == self->_topHitSection)
    {
      v109 = v98;
      v110 = v236;
      v111 = v105;
      v112 = v236;

      if (!v110)
      {
        v211 = PRSLogCategoryDefault();
        v104 = 0;
        if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
        {
          topHitSection = self->_topHitSection;
          v298 = v228;
          *v299 = v231;
          *&v299[8] = 2112;
          *v300 = topHitSection;
          _os_log_impl(&dword_1D9F69000, v211, OS_LOG_TYPE_DEFAULT, "### missing results section %@ for %@", &v298, 0x16u);
        }

        v106 = 0;
        v98 = v109;
        v96 = v238;
        goto LABEL_186;
      }

      v108 = 1;
      v106 = v112;
      v98 = v109;
      v96 = v238;
      v104 = 0;
    }

    else
    {
      v108 = 1;
    }

    if (v17)
    {
      v113 = v17 == v106;
    }

    else
    {
      v113 = 0;
    }

    v114 = v113;
    if (v114 & v249)
    {
      v249 = 1;
      goto LABEL_186;
    }

    v239 = v108;
    v252 = v106;
    v269 = v104;
    sectionsCopy = v98;
    v115 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
    {
      v116 = self->_queryID;
      v117 = v252;
      maxInitiallyVisibleResults = [(SFResultSection *)v252 maxInitiallyVisibleResults];
      title = [(SFResultSection *)v117 title];
      v298 = v233;
      *v299 = v116;
      v15 = v276;
      *&v299[4] = 1024;
      *&v299[6] = v269;
      *v300 = 1024;
      *&v300[2] = maxInitiallyVisibleResults;
      *&v300[6] = 2112;
      *&v300[8] = title;
      _os_log_impl(&dword_1D9F69000, v115, OS_LOG_TYPE_DEFAULT, "### [%d] section[%d] maxInitiallyVisibleResults[%d] %@", &v298, 0x1Eu);
    }

    v120 = [SFMutableResultSection alloc];
    v121 = v252;
    v122 = [(SFMutableResultSection *)v120 initWithPrototype:v252];
    v123 = objc_opt_new();
    v242 = v122;
    [(SFMutableResultSection *)v122 setResultSet:v123];
    resultSet3 = [(SFMutableResultSection *)v121 resultSet];
    v124 = objc_msgSend_count(resultSet3);
    maxInitiallyVisibleResults2 = [(SFResultSection *)v121 maxInitiallyVisibleResults];
    v277 = v124;
    v260 = v123;
    if (v124 < 1)
    {
      v181 = objc_msgSend_count(v123);
      if ((v239 & 1) == 0)
      {
        [(SFResultSection *)v242 isInitiallyHidden];
      }

      v182 = 1;
      goto LABEL_161;
    }

    v125 = 0;
    v126 = 0;
    while (2)
    {
      v127 = [resultSet3 objectAtIndex:v125];
      score = [v127 score];
      v129 = v128;
      [v127 l2score];
      v131 = v130;
      rankingItem3 = [v127 rankingItem];
      l2FeatureVector = [rankingItem3 L2FeatureVector];
      [l2FeatureVector originalL2Score];
      v135 = v134;

      LODWORD(sectionCopy) = [rankingItem3 eligibleForDemotion];
      shouldHideUnderShowMore = [rankingItem3 shouldHideUnderShowMore];
      recentForTopHit = [rankingItem3 recentForTopHit];
      recentForAboveThresholdTopHit = [rankingItem3 recentForAboveThresholdTopHit];
      if (([rankingItem3 bundleIDType] & 0x100) != 0)
      {
        v137 = v123;
        selfCopy2 = self;
        [rankingItem3 L2FeatureVector];
        v140 = v139 = shouldHideUnderShowMore;
        [v140 scoreForFeature:1];
        v142 = v141;

        l2FeatureVector2 = [rankingItem3 L2FeatureVector];
        [l2FeatureVector2 scoreForFeature:41];
        v145 = v144;

        if (v139)
        {
          self = selfCopy2;
          queryTermLength = [(PRSRankingItemRanker *)selfCopy2->_ranker queryTermLength];
          v147 = +[PRSRankingItemRanker spellCorrectedAppMinQueryLen];
          v148 = v142 != 1.0;
          if (v145 != 0.0)
          {
            v148 = 1;
          }

          if (queryTermLength <= v147)
          {
            v148 = 1;
          }

          LODWORD(v285) = v148;
        }

        else
        {
          LODWORD(v285) = 0;
          self = selfCopy2;
        }

        v123 = v137;
      }

      else
      {
        LODWORD(v285) = shouldHideUnderShowMore;
      }

      topHit = [v127 topHit];
      title2 = [v127 title];
      text = [title2 text];

      v151 = score | v129;
      v282 = PRSLogCategoryDefault();
      v152 = os_log_type_enabled(v282, OS_LOG_TYPE_DEFAULT);
      if (!v151)
      {
        if (v152)
        {
          v156 = self->_queryID;
          score = [v127 sectionBundleIdentifier];
          applicationBundleIdentifier = [v127 applicationBundleIdentifier];
          identifier = [v127 identifier];
          sectionBundleIdentifier3 = [v127 sectionBundleIdentifier];
          applicationBundleIdentifier2 = SSRedactSuggestionIdentifier(identifier, sectionBundleIdentifier3);
          sectionBundleIdentifier4 = [v127 sectionBundleIdentifier];
          v275 = v126;
          v274 = topHit;
          v271 = identifier;
          v267 = sectionBundleIdentifier4;
          v268 = sectionBundleIdentifier3;
          LODWORD(sectionBundleIdentifier6) = v156;
          if (sectionBundleIdentifier4 && ([v127 sectionBundleIdentifier], v250 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v250, "isEqualToString:", v254) & 1) != 0))
          {
            v160 = text;
            v265 = 0;
            v161 = @"(private)";
          }

          else
          {
            v265 = 1;
            v160 = text;
            v161 = SSRedactString(text, 1);
            v248 = v161;
          }

          rankingItem4 = [v127 rankingItem];
          rankingItem5 = [v127 rankingItem];
          attributes = [rankingItem5 attributes];
          rankingItem6 = [v127 rankingItem];
          Count = SSCompactRankingAttrsGetCount([rankingItem6 attributes]);
          v298 = v244;
          *v299 = sectionBundleIdentifier6;
          *&v299[4] = 1024;
          *&v299[6] = v269;
          *v300 = 1024;
          *&v300[2] = v125;
          *&v300[6] = 1024;
          *&v300[8] = v274;
          *&v300[12] = 1024;
          *&v300[14] = v285;
          *&v300[18] = 1024;
          v301 = sectionCopy;
          v302 = 1024;
          v303 = recentForTopHit;
          v304 = 1024;
          v305 = recentForAboveThresholdTopHit;
          v306 = 2112;
          v307 = score;
          v308 = 2112;
          v309 = applicationBundleIdentifier;
          v310 = 2112;
          v311 = applicationBundleIdentifier2;
          v312 = 2048;
          v313 = v135;
          v314 = 2048;
          v315 = v131;
          v316 = 2112;
          v317 = v161;
          v318 = 2048;
          v319 = rankingItem4;
          v320 = 2048;
          v321 = attributes;
          v322 = 2048;
          v323 = Count;
          _os_log_impl(&dword_1D9F69000, v282, OS_LOG_TYPE_DEFAULT, "### [%d] result[%d,%d] %d %d %d %d %d %@ %@ %@ %f %f %@ (%p, %p, %lu)", &v298, 0x8Cu);

          if (v265)
          {
          }

          v123 = v260;
          v126 = v275;
          v178 = v267;
          v179 = v268;
          if (v267)
          {
          }

          v180 = applicationBundleIdentifier2;
          self = selfCopy;
          goto LABEL_140;
        }

LABEL_127:
        v160 = text;
LABEL_140:
        v172 = v285;
        v168 = v282;
        goto LABEL_141;
      }

      if (!v152)
      {
        goto LABEL_127;
      }

      v153 = self->_queryID;
      applicationBundleIdentifier = [v127 sectionBundleIdentifier];
      applicationBundleIdentifier2 = [v127 applicationBundleIdentifier];
      identifier2 = [v127 identifier];
      sectionBundleIdentifier5 = [v127 sectionBundleIdentifier];
      v271 = SSRedactSuggestionIdentifier(identifier2, sectionBundleIdentifier5);
      sectionBundleIdentifier6 = [v127 sectionBundleIdentifier];
      v267 = sectionBundleIdentifier5;
      v275 = v126;
      v274 = topHit;
      v268 = identifier2;
      v264 = v153;
      if (sectionBundleIdentifier6 && ([v127 sectionBundleIdentifier], v258 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v258, "isEqualToString:", v254) & 1) != 0))
      {
        v265 = 0;
        v263 = @"(private)";
      }

      else
      {
        v265 = 1;
        v257 = SSRedactString(text, 1);
        v263 = v257;
      }

      v261 = v129 & v255;
      v162 = score;
      v262 = score & v256;
      rankingItem7 = [v127 rankingItem];
      rankingItem8 = [v127 rankingItem];
      attributes2 = [rankingItem8 attributes];
      rankingItem9 = [v127 rankingItem];
      v167 = SSCompactRankingAttrsGetCount([rankingItem9 attributes]);
      v298 = v253;
      *v299 = v264;
      *&v299[4] = 1024;
      *&v299[6] = v269;
      *v300 = 1024;
      *&v300[2] = v125;
      *&v300[6] = 1024;
      *&v300[8] = v274;
      *&v300[12] = 1024;
      *&v300[14] = v285;
      *&v300[18] = 1024;
      v301 = sectionCopy;
      v302 = 1024;
      v303 = recentForTopHit;
      v304 = 1024;
      v305 = recentForAboveThresholdTopHit;
      v306 = 2112;
      v307 = applicationBundleIdentifier;
      v308 = 2112;
      v309 = applicationBundleIdentifier2;
      v310 = 2112;
      v311 = v271;
      v312 = 2048;
      v313 = v135;
      v314 = 2048;
      v315 = v131;
      v316 = 2048;
      v317 = v129;
      v318 = 2048;
      v319 = v162;
      v320 = 2048;
      v321 = v261;
      v322 = 2048;
      v323 = v262;
      v324 = 2112;
      v325 = v263;
      v326 = 2048;
      v327 = rankingItem7;
      v328 = 2048;
      v329 = attributes2;
      v330 = 2048;
      v331 = v167;
      v168 = v282;
      _os_log_impl(&dword_1D9F69000, v282, OS_LOG_TYPE_DEFAULT, "### [%d] result[%d,%d] %d %d %d %d %d %@ %@ %@ %f %f 0x%16.16llx%16.16llx 0x%16.16llx%16.16llx %@ (%p, %p, %lu)", &v298, 0xB4u);

      if (v265)
      {
      }

      v160 = text;
      v123 = v260;
      v126 = v275;
      v169 = sectionBundleIdentifier6;
      v170 = v267;
      if (sectionBundleIdentifier6)
      {
      }

      v171 = v271;
      self = selfCopy;
      v172 = v285;
LABEL_141:

      [v123 addObject:v127];
      v126 += v172 ^ 1u;

      if (v277 != ++v125)
      {
        continue;
      }

      break;
    }

    v181 = objc_msgSend_count(v123);
    if (v239)
    {
      v17 = v234;
      v16 = v235;
      if (!v126)
      {
        v182 = 1;
        goto LABEL_160;
      }

LABEL_150:
      initiallyVisibleSectionSentCount = self->_initiallyVisibleSectionSentCount;
      v185 = objc_msgSend_count(v251);
      if (initiallyVisibleSectionSentCount + v247 + v185 >= sectionsCopy)
      {
        bundleIdentifier7 = [(SFResultSection *)v242 bundleIdentifier];
        v182 = [bundleIdentifier7 isEqualToString:v232] ^ 1;
      }

      else
      {
        v182 = 0;
      }

      goto LABEL_154;
    }

    isInitiallyHidden = [(SFResultSection *)v242 isInitiallyHidden];
    v17 = v234;
    v16 = v235;
    if (!isInitiallyHidden && v126)
    {
      goto LABEL_150;
    }

    v182 = 1;
    if (!v126)
    {
LABEL_160:
      v15 = v276;
LABEL_161:
      v189 = maxInitiallyVisibleResults2;
      goto LABEL_162;
    }

LABEL_154:
    bundleIdentifier8 = [(SFResultSection *)v242 bundleIdentifier];
    v188 = SSSectionIsSyndicatedPhotos(bundleIdentifier8);

    v189 = maxInitiallyVisibleResults2;
    if (v126 >= maxInitiallyVisibleResults2)
    {
      v190 = maxInitiallyVisibleResults2;
    }

    else
    {
      v190 = v126;
    }

    if ((v188 & 1) == 0)
    {
      v189 = v190;
    }

    v15 = v276;
LABEL_162:
    if (v189 >= v181)
    {
      v191 = 0;
    }

    else
    {
      v191 = v189;
    }

    v192 = objc_msgSend_count(v251);
    v193 = v259;
    if (v17)
    {
      v194 = v192 - v259 + self->_initiallyVisibleSectionSentCount == sectionsCopy - 1;
    }

    else
    {
      v194 = 0;
    }

    v195 = !v194;
    if ((v195 | v241 | v249))
    {
LABEL_181:
      if (v182)
      {
        v207 = v193 + 1;
        v208 = v242;
        objc_storeStrong(&v237[8 * v193], v242);
        v259 = v207;
      }

      else
      {
        v208 = v242;
      }

      v209 = v17 == v252;
      [(SFResultSection *)v208 setIsInitiallyHidden:v182];
      [(SFResultSection *)v208 setMaxInitiallyVisibleResults:v191];
      [v251 addObject:v208];
      v241 |= v209;
      v104 = v269;
    }

    else
    {
      v196 = [[SFMutableResultSection alloc] initWithPrototype:v17];
      v197 = objc_opt_new();
      [(SFMutableResultSection *)v196 setResultSet:v197];
      resultSet4 = [(SFMutableResultSection *)v17 resultSet];
      v199 = objc_msgSend_count(resultSet4);
      if (v199 >= 1)
      {
        v200 = v199;
        for (m = 0; m != v200; ++m)
        {
          v202 = [resultSet4 objectAtIndex:m];
          [v197 addObject:v202];
        }
      }

      v203 = v17 == v252;
      [(SFResultSection *)v196 setIsInitiallyHidden:[(SFResultSection *)v17 isInitiallyHidden]];
      [v251 addObject:v196];
      v16 = v235;
      v123 = v260;
      if (((v203 | v182) & 1) == 0)
      {
        v204 = selfCopy->_initiallyVisibleSectionSentCount;
        v205 = objc_msgSend_count(v251);
        if (v204 + v247 + v205 >= sectionsCopy)
        {
          bundleIdentifier9 = [(SFResultSection *)v242 bundleIdentifier];
          v182 = [bundleIdentifier9 isEqualToString:v232] ^ 1;
        }

        else
        {
          v182 = 0;
        }
      }

      v249 = 1;
      if (v17 != v252)
      {
        self = selfCopy;
        v15 = v276;
        v193 = v259;
        goto LABEL_181;
      }

      v241 = 0;
      v104 = v269;
      self = selfCopy;
      v15 = v276;
      v208 = v242;
    }

    v98 = sectionsCopy;
    v96 = v238;
    v106 = v252;
LABEL_186:

    ++v104;
    v103 = v259;
    v247 = -v259;
    if (v104 != v245)
    {
      continue;
    }

    break;
  }

  if (!v259)
  {
    goto LABEL_199;
  }

  if ((self->_initiallyHiddenSectionSentCount + v259) <= 1)
  {
    v213 = 0;
    *&v210 = 134218498;
    v285 = v210;
    do
    {
      v214 = *&v237[8 * v213];
      [v214 setIsInitiallyHidden:0];
      v215 = SSGeneralLog();
      if (os_log_type_enabled(v215, OS_LOG_TYPE_DEFAULT))
      {
        bundleIdentifier10 = [v214 bundleIdentifier];
        v298 = v285;
        *v299 = v213;
        *&v299[8] = 2112;
        *v300 = bundleIdentifier10;
        *&v300[8] = 1024;
        *&v300[10] = 2;
        _os_log_impl(&dword_1D9F69000, v215, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] Unhiding section (%lu) %@ due to minimum hiding quota (%d)", &v298, 0x1Cu);
      }

      ++v213;
    }

    while (v259 != v213);
    v259 = 0;
    self = selfCopy;
    v16 = v235;
  }

LABEL_200:
  v217 = objc_msgSend_count(v251);
  v218 = v217;
  if (!self->_initiallyVisibleSectionSentCount && !self->_initiallyHiddenSectionSentCount && (!v16 && v259 == v217 || v16 && v259 == v217 - 1))
  {
    v223 = 2;
    if (v16)
    {
      v223 = 3;
    }

    v224 = v217 >= v223 ? v223 : v217;
    if (v217)
    {
      for (n = 0; v224 != n; ++n)
      {
        v226 = [v251 objectAtIndexedSubscript:n];
        if ([v226 isInitiallyHidden])
        {
          [v226 setIsInitiallyHidden:0];
          --v259;
        }

        else if (!v16 || n)
        {

          break;
        }
      }
    }
  }

  v219 = self->_initiallyHiddenSectionSentCount + v259;
  self->_initiallyVisibleSectionSentCount += v218 - v259;
  self->_initiallyHiddenSectionSentCount = v219;
  v68 = [SSBullseyeTopHitsManager dedupeWebURLSuggestionsFromSections:v251];
  v220 = v229;
  if (v245)
  {
    v221 = v237 - 8;
    do
    {

      v220 -= 8;
    }

    while (v220);
  }

  v69 = v276;
LABEL_206:

  return v68;
}

+ (id)dedupeWebURLSuggestionsFromSections:(id)sections
{
  v66 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  if (objc_msgSend_count(sectionsCopy) >= 2)
  {
    v55 = objc_opt_new();
    firstObject = [sectionsCopy firstObject];
    bundleIdentifier = [firstObject bundleIdentifier];
    v6 = [bundleIdentifier isEqualToString:@"com.apple.spotlight.tophits"];

    if (v6)
    {
      v49 = sectionsCopy;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v7 = firstObject;
      results = [firstObject results];
      v9 = [results countByEnumeratingWithState:&v60 objects:v65 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v61;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v61 != v11)
            {
              objc_enumerationMutation(results);
            }

            v13 = *(*(&v60 + 1) + 8 * i);
            v14 = [v13 url];
            v15 = v14;
            if (v14)
            {
              firstObject2 = v14;
            }

            else
            {
              punchout = [v13 punchout];
              urls = [punchout urls];
              firstObject2 = [urls firstObject];
            }

            contentURL = [v13 contentURL];
            v20 = contentURL;
            if (contentURL)
            {
              absoluteString = contentURL;
            }

            else
            {
              absoluteString = [firstObject2 absoluteString];
            }

            v22 = absoluteString;

            v23 = strippedURL(v22);
            if (v23)
            {
              [v55 addObject:v23];
            }
          }

          v10 = [results countByEnumeratingWithState:&v60 objects:v65 count:16];
        }

        while (v10);
      }

      sectionsCopy = v49;
      firstObject = v7;
    }

    v24 = [sectionsCopy objectAtIndex:1];
    if (objc_msgSend_count(v55))
    {
      bundleIdentifier2 = [v24 bundleIdentifier];
      v26 = [bundleIdentifier2 isEqualToString:@"com.apple.searchd.suggestions"];

      if (v26)
      {
        v48 = firstObject;
        v50 = sectionsCopy;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v51 = v24;
        results2 = [v24 results];
        v28 = [results2 countByEnumeratingWithState:&v56 objects:v64 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v57;
          v52 = *v57;
          v53 = results2;
          do
          {
            v31 = 0;
            v54 = v29;
            do
            {
              if (*v57 != v30)
              {
                objc_enumerationMutation(results2);
              }

              v32 = *(*(&v56 + 1) + 8 * v31);
              compactCard = [v32 compactCard];
              v34 = compactCard;
              if (compactCard)
              {
                inlineCard = compactCard;
              }

              else
              {
                inlineCard = [v32 inlineCard];
              }

              v36 = inlineCard;

              cardSections = [v36 cardSections];
              firstObject3 = [cardSections firstObject];

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v39 = firstObject3;
                suggestionText = [v39 suggestionText];
                text = [suggestionText text];
                v42 = text;
                if (text)
                {
                  text2 = text;
                }

                else
                {
                  formattedTextPieces = [suggestionText formattedTextPieces];
                  firstObject4 = [formattedTextPieces firstObject];
                  text2 = [firstObject4 text];

                  results2 = v53;
                  v30 = v52;
                }

                if ([v55 containsObject:text2] && objc_msgSend(v39, "suggestionType") == 4)
                {
                  [v51 removeResults:v32];
                }

                v29 = v54;
              }

              ++v31;
            }

            while (v29 != v31);
            v29 = [results2 countByEnumeratingWithState:&v56 objects:v64 count:16];
          }

          while (v29);
        }

        v24 = v51;
        if ([v51 resultsCount])
        {
          sectionsCopy = v50;
        }

        else
        {
          v46 = [v50 mutableCopy];
          [v46 removeObject:v51];

          sectionsCopy = v46;
        }

        firstObject = v48;
      }
    }
  }

  return sectionsCopy;
}

@end