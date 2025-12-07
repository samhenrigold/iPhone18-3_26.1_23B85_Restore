@interface FCCKTestFeedQueryEndpoint
- (void)handleQueryOperation:(id)operation withRecords:(id)records droppedFeeds:(id)feeds;
@end

@implementation FCCKTestFeedQueryEndpoint

- (void)handleQueryOperation:(id)operation withRecords:(id)records droppedFeeds:(id)feeds
{
  v301 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  recordsCopy = records;
  feedsCopy = feeds;
  query = [operationCopy query];
  objc_opt_class();
  v164 = query;
  predicate = [query predicate];
  if (predicate)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = predicate;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v163 = v13;
  if (v13 && [v13 compoundPredicateType] == 1)
  {
    goto LABEL_11;
  }

  v14 = MEMORY[0x1E69E9C10];
  v15 = MEMORY[0x1E69E9C10];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v159 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unexpected feed query predicate type"];
    *buf = 136315906;
    v294 = "[FCCKTestFeedQueryEndpoint handleQueryOperation:withRecords:droppedFeeds:]";
    v295 = 2080;
    v296 = "FCCKTestContentDatabase.m";
    v297 = 1024;
    v298 = 637;
    v299 = 2114;
    v300 = v159;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if (v13)
  {
LABEL_11:
    v279 = 0u;
    v278 = 0u;
    v277 = 0u;
    v276 = 0u;
    subpredicates = [v13 subpredicates];
    v17 = [subpredicates countByEnumeratingWithState:&v276 objects:v292 count:16];
    if (!v17)
    {
      v193 = 0;
      v194 = 0;
      v185 = 0;
      v188 = 0;
      v203 = 0;
      goto LABEL_39;
    }

    v18 = v17;
    v193 = 0;
    v194 = 0;
    v185 = 0;
    v188 = 0;
    v203 = 0;
    v19 = *v277;
    v212 = subpredicates;
    while (1)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v277 != v19)
        {
          objc_enumerationMutation(subpredicates);
        }

        keyPath = *(*(&v276 + 1) + 8 * i);
        objc_opt_class();
        if (!keyPath || (objc_opt_isKindOfClass() & 1) == 0)
        {
          v21 = 0;
          goto LABEL_35;
        }

        v21 = keyPath;
        predicateOperatorType = [v21 predicateOperatorType];
        if (predicateOperatorType != 99)
        {
          if (predicateOperatorType != 4)
          {
            goto LABEL_35;
          }

          leftExpression = [v21 leftExpression];
          keyPath = [leftExpression keyPath];
          v24 = [keyPath isEqualToString:@"tagField"];

          if (!v24)
          {
LABEL_33:
            subpredicates = v212;
            goto LABEL_34;
          }

          keyPath = [v21 rightExpression];
          constantValue = [keyPath constantValue];
          v26 = v193;
          v193 = constantValue;
          goto LABEL_32;
        }

        leftExpression = [v21 rightExpression];
        if ([leftExpression expressionType] == 3)
        {
          keyPath2 = [leftExpression keyPath];
          v28 = [keyPath2 isEqualToString:@"tagID"];

          if (v28)
          {
            keyPath = [v21 leftExpression];
            constantValue2 = [keyPath constantValue];
            v26 = v203;
            v203 = constantValue2;
          }

          else
          {
            keyPath3 = [leftExpression keyPath];
            v31 = [keyPath3 isEqualToString:@"cursor"];

            if (v31)
            {
              keyPath = [v21 leftExpression];
              constantValue3 = [keyPath constantValue];
              v26 = v194;
              v194 = constantValue3;
            }

            else
            {
              keyPath4 = [leftExpression keyPath];
              v34 = [keyPath4 isEqualToString:@"minOrder"];

              if (v34)
              {
                keyPath = [v21 leftExpression];
                constantValue4 = [keyPath constantValue];
                v26 = v188;
                v188 = constantValue4;
              }

              else
              {
                keyPath5 = [leftExpression keyPath];
                keyPath = [keyPath5 isEqualToString:@"hardLimit"];

                if (!keyPath)
                {
                  goto LABEL_33;
                }

                keyPath = [v21 leftExpression];
                constantValue5 = [keyPath constantValue];
                v26 = v185;
                v185 = constantValue5;
              }
            }
          }

LABEL_32:
          subpredicates = v212;
        }

LABEL_34:

LABEL_35:
      }

      v18 = [subpredicates countByEnumeratingWithState:&v276 objects:v292 count:16];
      if (!v18)
      {
LABEL_39:

        v38 = v203;
        goto LABEL_41;
      }
    }
  }

  v193 = 0;
  v194 = 0;
  v185 = 0;
  v188 = 0;
  v38 = 0;
LABEL_41:
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v272 = 0u;
  v273 = 0u;
  v274 = 0u;
  v275 = 0u;
  v39 = v38;
  v40 = [v39 countByEnumeratingWithState:&v272 objects:v291 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v273;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v273 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v272 + 1) + 8 * j);
        v45 = MEMORY[0x1E695DF70];
        keyPath = FCSortedFeedItemRecordsForFeedID(recordsCopy, v44);
        v46 = [v45 arrayWithArray:keyPath];
        [dictionary setObject:v46 forKeyedSubscript:v44];
      }

      v41 = [v39 countByEnumeratingWithState:&v272 objects:v291 count:16];
    }

    while (v41);
  }

  v269[0] = MEMORY[0x1E69E9820];
  v269[1] = 3221225472;
  v269[2] = __75__FCCKTestFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke;
  v269[3] = &unk_1E7C43448;
  v47 = v39;
  v270 = v47;
  v162 = v194;
  v271 = v162;
  v171 = __75__FCCKTestFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke(v269);
  v266[0] = MEMORY[0x1E69E9820];
  v266[1] = 3221225472;
  v266[2] = __75__FCCKTestFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke_2;
  v266[3] = &unk_1E7C43448;
  v48 = v47;
  v267 = v48;
  v161 = v188;
  v268 = v161;
  v187 = __75__FCCKTestFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke_2(v266);
  v263[0] = MEMORY[0x1E69E9820];
  v263[1] = 3221225472;
  v263[2] = __75__FCCKTestFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke_3;
  v263[3] = &unk_1E7C43448;
  v49 = v48;
  v264 = v49;
  v160 = v185;
  v265 = v160;
  v186 = __75__FCCKTestFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke_3(v263);
  v259 = 0u;
  v260 = 0u;
  v261 = 0u;
  v262 = 0u;
  obj = v49;
  v50 = @"order";
  v199 = [obj countByEnumeratingWithState:&v259 objects:v290 count:16];
  if (v199)
  {
    v195 = *v260;
    do
    {
      for (k = 0; k != v199; k = k + 1)
      {
        if (*v260 != v195)
        {
          objc_enumerationMutation(obj);
        }

        v52 = *(*(&v259 + 1) + 8 * k);
        v53 = [v171 objectForKeyedSubscript:{v52, v160, v161, v162, v163}];
        if ([v53 length])
        {
          v208 = k;
          keyPath = [dictionary objectForKeyedSubscript:v52];
          v204 = v53;
          v54 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v53 error:0];
          while ([keyPath count])
          {
            firstObject = [keyPath firstObject];
            v56 = [firstObject objectForKeyedSubscript:@"order"];
            order = [v54 order];
            if ([v56 compare:order] == 1)
            {
            }

            else
            {
              firstObject2 = [keyPath firstObject];
              v59 = [firstObject2 objectForKeyedSubscript:@"subOrder"];
              subOrder = [v54 subOrder];
              v213 = [v59 compare:subOrder];

              v50 = @"order";
              if (v213 != 1)
              {
                break;
              }
            }

            [keyPath fc_removeFirstObject];
          }

          v53 = v204;
          k = v208;
        }
      }

      v199 = [obj countByEnumeratingWithState:&v259 objects:v290 count:16];
    }

    while (v199);
  }

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v255 = 0u;
  v256 = 0u;
  v257 = 0u;
  v258 = 0u;
  v166 = obj;
  v61 = [v166 countByEnumeratingWithState:&v255 objects:v289 count:16];
  if (v61)
  {
    v62 = v61;
    keyPath = *v256;
    do
    {
      for (m = 0; m != v62; ++m)
      {
        if (*v256 != keyPath)
        {
          objc_enumerationMutation(v166);
        }

        v64 = *(*(&v255 + 1) + 8 * m);
        v65 = [dictionary objectForKeyedSubscript:{v64, v160}];
        firstObject3 = [v65 firstObject];

        v67 = [firstObject3 objectForKeyedSubscript:@"order"];
        v50 = v67;
        if (v67)
        {
          v68 = v67;
        }

        else
        {
          v68 = &unk_1F2E70740;
        }

        [dictionary2 setObject:v68 forKeyedSubscript:v64];
      }

      v62 = [v166 countByEnumeratingWithState:&v255 objects:v289 count:16];
    }

    while (v62);
  }

  array = [MEMORY[0x1E695DF70] array];
  v184 = [MEMORY[0x1E696AB50] set];
  v173 = *MEMORY[0x1E695B7A8];
  v176 = array;
  while (2)
  {
    v70 = [array count];
    if (v70 >= [operationCopy resultsLimit] && objc_msgSend(operationCopy, "resultsLimit") != v173)
    {
      goto LABEL_108;
    }

    v253 = 0u;
    v254 = 0u;
    v251 = 0u;
    v252 = 0u;
    v71 = dictionary;
    v205 = [v71 countByEnumeratingWithState:&v251 objects:v288 count:16];
    if (!v205)
    {
      goto LABEL_107;
    }

    obja = 0;
    v72 = 0;
    v196 = v71;
    v200 = *v252;
    do
    {
      v73 = 0;
      do
      {
        v214 = v72;
        if (*v252 != v200)
        {
          objc_enumerationMutation(v71);
        }

        v74 = *(*(&v251 + 1) + 8 * v73);
        v75 = [v71 objectForKeyedSubscript:v74];
        firstObject4 = [v75 firstObject];

        v77 = [v187 objectForKeyedSubscript:v74];
        v78 = [v186 objectForKeyedSubscript:v74];
        if (!firstObject4)
        {
          v72 = v214;
          goto LABEL_100;
        }

        v209 = v78;
        v79 = [firstObject4 objectForKeyedSubscript:@"order"];
        if ([v79 compare:v77] == -1)
        {
          goto LABEL_93;
        }

        if (v214)
        {
          keyPath = [firstObject4 objectForKeyedSubscript:@"order"];
          v50 = [v214 objectForKeyedSubscript:@"order"];
          if ([keyPath compare:v50] != 1)
          {

LABEL_93:
            goto LABEL_94;
          }

          if (![v209 unsignedLongLongValue])
          {

LABEL_95:
            goto LABEL_97;
          }
        }

        else if (![v209 unsignedLongLongValue])
        {
          goto LABEL_95;
        }

        v80 = [v184 countForObject:v74];
        unsignedLongLongValue = [v209 unsignedLongLongValue];
        if (!v214)
        {

          if (v80 >= unsignedLongLongValue)
          {
            v72 = 0;
            goto LABEL_98;
          }

LABEL_97:
          v81 = firstObject4;

          v82 = v74;
          [v184 addObject:v82];
          obja = v82;
          v72 = v81;
LABEL_98:
          v71 = v196;
          goto LABEL_99;
        }

        if (v80 < unsignedLongLongValue)
        {
          goto LABEL_97;
        }

LABEL_94:
        v71 = v196;
        v72 = v214;
LABEL_99:
        v78 = v209;
LABEL_100:

        ++v73;
      }

      while (v205 != v73);
      v83 = [v71 countByEnumeratingWithState:&v251 objects:v288 count:16];
      v205 = v83;
    }

    while (v83);

    if (obja)
    {
      array = v176;
      v84 = v72;
      [v176 addObject:v72];
      v85 = [v71 objectForKeyedSubscript:obja];
      [v85 fc_removeFirstObject];

      continue;
    }

    break;
  }

  v71 = v72;
  array = v176;
LABEL_107:

LABEL_108:
  array2 = [MEMORY[0x1E695DF70] array];
  v247 = 0u;
  v248 = 0u;
  v249 = 0u;
  v250 = 0u;
  v165 = array;
  v174 = [v165 countByEnumeratingWithState:&v247 objects:v287 count:16];
  if (v174)
  {
    v167 = *v248;
    do
    {
      v86 = 0;
      do
      {
        if (*v248 != v167)
        {
          objc_enumerationMutation(v165);
        }

        v182 = v86;
        v87 = *(*(&v247 + 1) + 8 * v86);
        v88 = [v87 objectForKeyedSubscript:@"articleID"];
        v245[0] = MEMORY[0x1E69E9820];
        v245[1] = 3221225472;
        v245[2] = __75__FCCKTestFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke_188;
        v245[3] = &unk_1E7C38030;
        v177 = v88;
        v246 = v177;
        v89 = [recordsCopy fc_firstObjectPassingTest:v245];
        v206 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"FeedItemAndArticle"];
        v241 = 0u;
        v242 = 0u;
        v243 = 0u;
        v244 = 0u;
        changedKeys = [v87 changedKeys];
        v91 = [changedKeys countByEnumeratingWithState:&v241 objects:v286 count:16];
        if (v91)
        {
          v92 = v91;
          v93 = *v242;
          do
          {
            for (n = 0; n != v92; ++n)
            {
              if (*v242 != v93)
              {
                objc_enumerationMutation(changedKeys);
              }

              v95 = *(*(&v241 + 1) + 8 * n);
              v96 = [v87 objectForKeyedSubscript:v95];
              if (v96)
              {
                [v206 setObject:v96 forKeyedSubscript:v95];
              }
            }

            v92 = [changedKeys countByEnumeratingWithState:&v241 objects:v286 count:16];
          }

          while (v92);
        }

        v239 = 0u;
        v240 = 0u;
        v237 = 0u;
        v238 = 0u;
        objb = [v89 changedKeys];
        v201 = [objb countByEnumeratingWithState:&v237 objects:v285 count:16];
        if (v201)
        {
          v197 = *v238;
          do
          {
            v97 = 0;
            do
            {
              if (*v238 != v197)
              {
                objc_enumerationMutation(objb);
              }

              v215 = v97;
              v98 = *(*(&v237 + 1) + 8 * v97);
              v99 = [v89 objectForKeyedSubscript:v98];
              if (v99)
              {
                [v206 setObject:v99 forKeyedSubscript:v98];
              }

              v210 = v99;
              v235 = 0u;
              v236 = 0u;
              v233 = 0u;
              v234 = 0u;
              v100 = v193;
              v101 = [v100 countByEnumeratingWithState:&v233 objects:v284 count:16];
              if (v101)
              {
                v102 = v101;
                v103 = *v234;
                do
                {
                  for (ii = 0; ii != v102; ++ii)
                  {
                    if (*v234 != v103)
                    {
                      objc_enumerationMutation(v100);
                    }

                    v105 = [v89 objectForKeyedSubscript:*(*(&v233 + 1) + 8 * ii)];
                    if (v105)
                    {
                      v106 = FCLookupRecordByName(recordsCopy, v105);
                      if (v106)
                      {
                        recordFetchedBlock = [operationCopy recordFetchedBlock];
                        (recordFetchedBlock)[2](recordFetchedBlock, v106);
                      }
                    }
                  }

                  v102 = [v100 countByEnumeratingWithState:&v233 objects:v284 count:16];
                }

                while (v102);
              }

              v97 = v215 + 1;
            }

            while (v215 + 1 != v201);
            v201 = [objb countByEnumeratingWithState:&v237 objects:v285 count:16];
          }

          while (v201);
        }

        desiredKeys = [operationCopy desiredKeys];

        if (desiredKeys)
        {
          v109 = MEMORY[0x1E695DFD8];
          desiredKeys2 = [operationCopy desiredKeys];
          v111 = [v109 setWithArray:desiredKeys2];

          v231 = 0u;
          v232 = 0u;
          v229 = 0u;
          v230 = 0u;
          changedKeys2 = [v206 changedKeys];
          v113 = [changedKeys2 countByEnumeratingWithState:&v229 objects:v283 count:16];
          if (v113)
          {
            v114 = v113;
            v115 = *v230;
            do
            {
              for (jj = 0; jj != v114; ++jj)
              {
                if (*v230 != v115)
                {
                  objc_enumerationMutation(changedKeys2);
                }

                v117 = *(*(&v229 + 1) + 8 * jj);
                if (([v111 containsObject:v117] & 1) == 0)
                {
                  [v206 setObject:0 forKeyedSubscript:v117];
                }
              }

              v114 = [changedKeys2 countByEnumeratingWithState:&v229 objects:v283 count:16];
            }

            while (v114);
          }
        }

        [v206 setObject:v177 forKeyedSubscript:@"articleID"];
        recordChangeTag = [v89 recordChangeTag];
        [v206 setObject:recordChangeTag forKeyedSubscript:@"articleETag"];

        creationDate = [v89 creationDate];
        [v206 setObject:creationDate forKeyedSubscript:@"articleCreationDate"];

        modificationDate = [v89 modificationDate];
        [v206 setObject:modificationDate forKeyedSubscript:@"articleModDate"];

        [array2 addObject:v206];
        v86 = v182 + 1;
      }

      while (v182 + 1 != v174);
      v174 = [v165 countByEnumeratingWithState:&v247 objects:v287 count:16];
    }

    while (v174);
  }

  v227 = 0u;
  v228 = 0u;
  v225 = 0u;
  v226 = 0u;
  v121 = array2;
  v122 = [v121 countByEnumeratingWithState:&v225 objects:v282 count:16];
  if (v122)
  {
    v123 = v122;
    v124 = *v226;
    do
    {
      for (kk = 0; kk != v123; ++kk)
      {
        if (*v226 != v124)
        {
          objc_enumerationMutation(v121);
        }

        v126 = *(*(&v225 + 1) + 8 * kk);
        recordFetchedBlock2 = [operationCopy recordFetchedBlock];
        recordFetchedBlock2[2](recordFetchedBlock2, v126);
      }

      v123 = [v121 countByEnumeratingWithState:&v225 objects:v282 count:16];
    }

    while (v123);
  }

  v168 = v121;

  array3 = [MEMORY[0x1E695DF70] array];
  array4 = [MEMORY[0x1E695DF70] array];
  objc = [MEMORY[0x1E695DF70] array];
  array5 = [MEMORY[0x1E695DF70] array];
  array6 = [MEMORY[0x1E695DF70] array];
  v221 = 0u;
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  v170 = v166;
  v128 = v187;
  v207 = [v170 countByEnumeratingWithState:&v221 objects:v281 count:16];
  if (v207)
  {
    v175 = *v222;
    do
    {
      for (mm = 0; mm != v207; ++mm)
      {
        if (*v222 != v175)
        {
          objc_enumerationMutation(v170);
        }

        v130 = *(*(&v221 + 1) + 8 * mm);
        v131 = [dictionary objectForKeyedSubscript:v130];
        v216 = [dictionary2 objectForKeyedSubscript:v130];
        v211 = [feedsCopy containsObject:v130];
        if ([v131 count])
        {
          v132 = [v128 objectForKeyedSubscript:v130];
          firstObject5 = [v131 firstObject];
          v134 = [firstObject5 objectForKeyedSubscript:@"order"];
          v135 = [v134 compare:v132] == -1;

          v136 = [v131 count] == 0;
          v137 = objc_alloc_init(FCCKTestContentDatabaseFeedCursor);
          firstObject6 = [v131 firstObject];
          v139 = [firstObject6 objectForKeyedSubscript:@"order"];
          [(FCCKTestContentDatabaseFeedCursor *)v137 setOrder:v139];

          firstObject7 = [v131 firstObject];
          v141 = [firstObject7 objectForKeyedSubscript:@"subOrder"];
          [(FCCKTestContentDatabaseFeedCursor *)v137 setSubOrder:v141];

          v128 = v187;
          data = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v137 requiringSecureCoding:1 error:0];
        }

        else
        {
          data = [MEMORY[0x1E695DEF0] data];
          v135 = 0;
          v136 = 1;
        }

        v143 = [MEMORY[0x1E696AD98] numberWithBool:v135];
        [array3 addObject:v143];

        v144 = [MEMORY[0x1E696AD98] numberWithBool:v136];
        [array4 addObject:v144];

        [array5 addObject:v216];
        [objc addObject:data];
        v145 = [MEMORY[0x1E696AD98] numberWithBool:v211];
        [array6 addObject:v145];
      }

      v207 = [v170 countByEnumeratingWithState:&v221 objects:v281 count:16];
    }

    while (v207);
  }

  v146 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"Results"];
  [v146 setObject:array3 forKeyedSubscript:@"reachedMinOrder"];
  [v146 setObject:array4 forKeyedSubscript:@"reachedEnd"];
  [v146 setObject:objc forKeyedSubscript:@"cursor"];
  [v146 setObject:array5 forKeyedSubscript:@"topOrder"];
  [v146 setObject:array6 forKeyedSubscript:@"feedDropped"];
  desiredKeys3 = [operationCopy desiredKeys];

  if (desiredKeys3)
  {
    v148 = MEMORY[0x1E695DFD8];
    desiredKeys4 = [operationCopy desiredKeys];
    v150 = [v148 setWithArray:desiredKeys4];

    v219 = 0u;
    v220 = 0u;
    v217 = 0u;
    v218 = 0u;
    changedKeys3 = [v146 changedKeys];
    v152 = [changedKeys3 countByEnumeratingWithState:&v217 objects:v280 count:16];
    if (v152)
    {
      v153 = v152;
      v154 = *v218;
      do
      {
        for (nn = 0; nn != v153; ++nn)
        {
          if (*v218 != v154)
          {
            objc_enumerationMutation(changedKeys3);
          }

          v156 = *(*(&v217 + 1) + 8 * nn);
          if (([v150 containsObject:v156] & 1) == 0)
          {
            [v146 setObject:0 forKeyedSubscript:v156];
          }
        }

        v153 = [changedKeys3 countByEnumeratingWithState:&v217 objects:v280 count:16];
      }

      while (v153);
    }

    v128 = v187;
  }

  recordFetchedBlock3 = [operationCopy recordFetchedBlock];
  (recordFetchedBlock3)[2](recordFetchedBlock3, v146);

  queryCompletionBlock = [operationCopy queryCompletionBlock];
  queryCompletionBlock[2](queryCompletionBlock, 0, 0);
}

id __75__FCCKTestFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [*(a1 + 32) count];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = [*(a1 + 32) objectAtIndexedSubscript:i];
      v7 = [*(a1 + 40) objectAtIndexedSubscript:i];
      [v2 setObject:v7 forKeyedSubscript:v6];
    }
  }

  return v2;
}

id __75__FCCKTestFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [*(a1 + 32) count];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = [*(a1 + 32) objectAtIndexedSubscript:i];
      v7 = [*(a1 + 40) objectAtIndexedSubscript:i];
      [v2 setObject:v7 forKeyedSubscript:v6];
    }
  }

  return v2;
}

id __75__FCCKTestFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [*(a1 + 32) count];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = [*(a1 + 32) objectAtIndexedSubscript:i];
      v7 = [*(a1 + 40) objectAtIndexedSubscript:i];
      [v2 setObject:v7 forKeyedSubscript:v6];
    }
  }

  return v2;
}

uint64_t __75__FCCKTestFeedQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke_188(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 recordType];
  if ([v4 isEqualToString:@"Article"])
  {
    v5 = [v3 recordID];
    v6 = [v5 recordName];
    v7 = [v6 isEqualToString:*(a1 + 32)];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end