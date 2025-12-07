@interface FCCKTestMultiFetchQueryEndpoint
- (id)_collectRecordIDsFromRecords:(id)records linkKeysByRecordType:(id)type;
- (id)_collectRecordsWithRecords:(id)records recordIDs:(id)ds linkKeysByRecordType:(id)type visitedRecordIDs:(id)iDs missingRecordIDs:(id)recordIDs;
- (void)handleQueryOperation:(id)operation withRecords:(id)records droppedFeeds:(id)feeds;
@end

@implementation FCCKTestMultiFetchQueryEndpoint

- (void)handleQueryOperation:(id)operation withRecords:(id)records droppedFeeds:(id)feeds
{
  v118 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  recordsCopy = records;
  feedsCopy = feeds;
  query = [operationCopy query];
  objc_opt_class();
  v77 = query;
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

  v79 = recordsCopy;
  v76 = v13;
  if (v13 && [v13 compoundPredicateType] == 1)
  {
    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unexpected feed query predicate type"];
    *buf = 136315906;
    v111 = "[FCCKTestMultiFetchQueryEndpoint handleQueryOperation:withRecords:droppedFeeds:]";
    v112 = 2080;
    v113 = "FCCKTestContentDatabase.m";
    v114 = 1024;
    v115 = 1287;
    v116 = 2114;
    v117 = v38;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v13)
    {
      goto LABEL_10;
    }
  }

  else if (v13)
  {
LABEL_10:
    selfCopy = self;
    v74 = operationCopy;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    subpredicates = [v13 subpredicates];
    v15 = [subpredicates countByEnumeratingWithState:&v102 objects:v109 count:16];
    if (!v15)
    {
      v81 = 0;
      obj = 0;
      v17 = 0;
      goto LABEL_33;
    }

    v16 = v15;
    v81 = 0;
    obj = 0;
    v17 = 0;
    v18 = *v103;
    while (1)
    {
      v19 = 0;
      do
      {
        if (*v103 != v18)
        {
          objc_enumerationMutation(subpredicates);
        }

        v20 = *(*(&v102 + 1) + 8 * v19);
        objc_opt_class();
        if (!v20 || (objc_opt_isKindOfClass() & 1) == 0)
        {
          v21 = 0;
          goto LABEL_22;
        }

        v21 = v20;
        if ([v21 predicateOperatorType] != 99)
        {
          goto LABEL_22;
        }

        rightExpression = [v21 rightExpression];
        if ([rightExpression expressionType] == 3)
        {
          keyPath = [rightExpression keyPath];
          v24 = [keyPath isEqualToString:@"recordIDs"];

          if (v24)
          {
            leftExpression = [v21 leftExpression];
            constantValue = [leftExpression constantValue];
            v27 = v17;
            v17 = constantValue;
LABEL_28:

            goto LABEL_29;
          }

          keyPath2 = [rightExpression keyPath];
          v29 = [keyPath2 isEqualToString:@"recordTypes"];

          if (v29)
          {
            leftExpression = [v21 leftExpression];
            constantValue2 = [leftExpression constantValue];
            v27 = obj;
            obj = constantValue2;
            goto LABEL_28;
          }

          keyPath3 = [rightExpression keyPath];
          v32 = [keyPath3 isEqualToString:@"fetchFields"];

          if (v32)
          {
            leftExpression = [v21 leftExpression];
            constantValue3 = [leftExpression constantValue];
            v27 = v81;
            v81 = constantValue3;
            goto LABEL_28;
          }
        }

LABEL_29:

LABEL_22:
        ++v19;
      }

      while (v16 != v19);
      v34 = [subpredicates countByEnumeratingWithState:&v102 objects:v109 count:16];
      v16 = v34;
      if (!v34)
      {
LABEL_33:

        self = selfCopy;
        operationCopy = v74;
        recordsCopy = v79;
        v35 = v17;
        v36 = v81;
        v37 = obj;
        goto LABEL_36;
      }
    }
  }

  v36 = 0;
  v37 = 0;
  v35 = 0;
LABEL_36:
  v39 = MEMORY[0x1E695DF20];
  v99[0] = MEMORY[0x1E69E9820];
  v99[1] = 3221225472;
  v99[2] = __81__FCCKTestMultiFetchQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke;
  v99[3] = &unk_1E7C37D00;
  v40 = v37;
  v100 = v40;
  v83 = v36;
  v101 = v83;
  v41 = [v39 fc_dictionary:v99];
  v42 = [MEMORY[0x1E695DFA8] set];
  v43 = [MEMORY[0x1E695DFA8] set];
  v80 = v42;
  v82 = v41;
  v44 = [(FCCKTestMultiFetchQueryEndpoint *)self _collectRecordsWithRecords:recordsCopy recordIDs:v35 linkKeysByRecordType:v41 visitedRecordIDs:v43 missingRecordIDs:v42];

  desiredKeys = [operationCopy desiredKeys];

  if (desiredKeys)
  {
    v73 = v40;
    v75 = v35;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v71 = v44;
    obja = v44;
    v46 = [obja countByEnumeratingWithState:&v95 objects:v108 count:16];
    if (v46)
    {
      v47 = v46;
      v86 = *v96;
      do
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v96 != v86)
          {
            objc_enumerationMutation(obja);
          }

          v49 = *(*(&v95 + 1) + 8 * i);
          v50 = MEMORY[0x1E695DFD8];
          v51 = operationCopy;
          desiredKeys2 = [operationCopy desiredKeys];
          v53 = [v50 setWithArray:desiredKeys2];

          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          changedKeys = [v49 changedKeys];
          v55 = [changedKeys countByEnumeratingWithState:&v91 objects:v107 count:16];
          if (v55)
          {
            v56 = v55;
            v57 = *v92;
            do
            {
              for (j = 0; j != v56; ++j)
              {
                if (*v92 != v57)
                {
                  objc_enumerationMutation(changedKeys);
                }

                v59 = *(*(&v91 + 1) + 8 * j);
                if (([v53 containsObject:v59] & 1) == 0)
                {
                  [v49 setObject:0 forKeyedSubscript:v59];
                }
              }

              v56 = [changedKeys countByEnumeratingWithState:&v91 objects:v107 count:16];
            }

            while (v56);
          }

          operationCopy = v51;
        }

        v47 = [obja countByEnumeratingWithState:&v95 objects:v108 count:16];
      }

      while (v47);
    }

    recordsCopy = v79;
    v40 = v73;
    v35 = v75;
    v44 = v71;
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v60 = v44;
  v61 = [v60 countByEnumeratingWithState:&v87 objects:v106 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v88;
    do
    {
      for (k = 0; k != v62; ++k)
      {
        if (*v88 != v63)
        {
          objc_enumerationMutation(v60);
        }

        v65 = *(*(&v87 + 1) + 8 * k);
        recordFetchedBlock = [operationCopy recordFetchedBlock];
        recordFetchedBlock[2](recordFetchedBlock, v65);
      }

      v62 = [v60 countByEnumeratingWithState:&v87 objects:v106 count:16];
    }

    while (v62);
  }

  v67 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"Results"];
  allObjects = [v80 allObjects];
  [v67 setObject:allObjects forKeyedSubscript:@"notFound"];

  recordFetchedBlock2 = [operationCopy recordFetchedBlock];
  (recordFetchedBlock2)[2](recordFetchedBlock2, v67);

  queryCompletionBlock = [operationCopy queryCompletionBlock];
  queryCompletionBlock[2](queryCompletionBlock, 0, 0);
}

void __81__FCCKTestMultiFetchQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__FCCKTestMultiFetchQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke_2;
  v7[3] = &unk_1E7C43470;
  v8 = v3;
  v6 = v3;
  [v5 fc_enumerateSideBySideWithArray:v4 reverse:0 block:v7];
}

void __81__FCCKTestMultiFetchQueryEndpoint_handleQueryOperation_withRecords_droppedFeeds___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v5 length])
  {
    v6 = [v5 componentsSeparatedByString:{@", "}];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
  }
}

- (id)_collectRecordsWithRecords:(id)records recordIDs:(id)ds linkKeysByRecordType:(id)type visitedRecordIDs:(id)iDs missingRecordIDs:(id)recordIDs
{
  v37 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  dsCopy = ds;
  typeCopy = type;
  iDsCopy = iDs;
  recordIDsCopy = recordIDs;
  if (!recordsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "records"];
    *buf = 136315906;
    v30 = "[FCCKTestMultiFetchQueryEndpoint _collectRecordsWithRecords:recordIDs:linkKeysByRecordType:visitedRecordIDs:missingRecordIDs:]";
    v31 = 2080;
    v32 = "FCCKTestContentDatabase.m";
    v33 = 1024;
    v34 = 1374;
    v35 = 2114;
    v36 = v26;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (dsCopy)
    {
      goto LABEL_6;
    }
  }

  else if (dsCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "recordIDs"];
    *buf = 136315906;
    v30 = "[FCCKTestMultiFetchQueryEndpoint _collectRecordsWithRecords:recordIDs:linkKeysByRecordType:visitedRecordIDs:missingRecordIDs:]";
    v31 = 2080;
    v32 = "FCCKTestContentDatabase.m";
    v33 = 1024;
    v34 = 1375;
    v35 = 2114;
    v36 = v27;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!typeCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "linkKeysByRecordType"];
    *buf = 136315906;
    v30 = "[FCCKTestMultiFetchQueryEndpoint _collectRecordsWithRecords:recordIDs:linkKeysByRecordType:visitedRecordIDs:missingRecordIDs:]";
    v31 = 2080;
    v32 = "FCCKTestContentDatabase.m";
    v33 = 1024;
    v34 = 1376;
    v35 = 2114;
    v36 = v28;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  [recordIDsCopy addObjectsFromArray:dsCopy];
  v17 = FCLookupRecordByNames(recordsCopy, dsCopy);
  v18 = [v17 fc_arrayByTransformingWithBlock:&__block_literal_global_119];
  [recordIDsCopy fc_removeObjectsFromArray:v18];

  v19 = [(FCCKTestMultiFetchQueryEndpoint *)self _collectRecordIDsFromRecords:v17 linkKeysByRecordType:typeCopy];
  allObjects = [iDsCopy allObjects];
  v21 = [v19 fc_arrayByRemovingObjectsInArray:allObjects];

  if ([v21 count])
  {
    [iDsCopy addObjectsFromArray:v21];
    v22 = [(FCCKTestMultiFetchQueryEndpoint *)self _collectRecordsWithRecords:recordsCopy recordIDs:v21 linkKeysByRecordType:typeCopy visitedRecordIDs:iDsCopy missingRecordIDs:recordIDsCopy];
    v23 = [v17 arrayByAddingObjectsFromArray:v22];
  }

  else
  {
    v23 = v17;
  }

  v24 = v23;

  return v23;
}

id __127__FCCKTestMultiFetchQueryEndpoint__collectRecordsWithRecords_recordIDs_linkKeysByRecordType_visitedRecordIDs_missingRecordIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 recordID];
  v3 = [v2 recordName];

  return v3;
}

- (id)_collectRecordIDsFromRecords:(id)records linkKeysByRecordType:(id)type
{
  v25 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  typeCopy = type;
  if (!recordsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "records"];
    *buf = 136315906;
    v18 = "[FCCKTestMultiFetchQueryEndpoint _collectRecordIDsFromRecords:linkKeysByRecordType:]";
    v19 = 2080;
    v20 = "FCCKTestContentDatabase.m";
    v21 = 1024;
    v22 = 1408;
    v23 = 2114;
    v24 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (typeCopy)
    {
      goto LABEL_6;
    }
  }

  else if (typeCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "linkKeysByRecordType"];
    *buf = 136315906;
    v18 = "[FCCKTestMultiFetchQueryEndpoint _collectRecordIDsFromRecords:linkKeysByRecordType:]";
    v19 = 2080;
    v20 = "FCCKTestContentDatabase.m";
    v21 = 1024;
    v22 = 1409;
    v23 = 2114;
    v24 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v7 = MEMORY[0x1E695DEC8];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85__FCCKTestMultiFetchQueryEndpoint__collectRecordIDsFromRecords_linkKeysByRecordType___block_invoke;
  v14[3] = &unk_1E7C3B110;
  v15 = recordsCopy;
  v16 = typeCopy;
  v8 = typeCopy;
  v9 = recordsCopy;
  v10 = [v7 fc_array:v14];

  return v10;
}

void __85__FCCKTestMultiFetchQueryEndpoint__collectRecordIDsFromRecords_linkKeysByRecordType___block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v26 = a2;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v23 = a1;
  obj = *(a1 + 32);
  v24 = [obj countByEnumeratingWithState:&v31 objects:v44 count:16];
  if (v24)
  {
    v3 = 0x1E696A000uLL;
    v4 = 0x1E695B000uLL;
    v22 = *v32;
    do
    {
      v5 = 0;
      do
      {
        if (*v32 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v5;
        v6 = *(*(&v31 + 1) + 8 * v5);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v7 = *(v23 + 40);
        v8 = [v6 recordType];
        v9 = [v7 objectForKeyedSubscript:v8];

        v10 = [v9 countByEnumeratingWithState:&v27 objects:v43 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v28;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v28 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = [v6 valueForKey:*(*(&v27 + 1) + 8 * i)];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v26 addObject:v14];
                goto LABEL_24;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v14 recordID];
                v15 = v3;
                v17 = v16 = v4;
                v18 = [v17 recordName];
                [v26 addObject:v18];

                v4 = v16;
                v3 = v15;
                goto LABEL_24;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if ([v14 fc_containsObjectPassingTest:&__block_literal_global_257])
                {
                  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_24;
                  }

                  v19 = [objc_alloc(*(v3 + 3776)) initWithFormat:@"not yet supported"];
                  *buf = 136315906;
                  v36 = "[FCCKTestMultiFetchQueryEndpoint _collectRecordIDsFromRecords:linkKeysByRecordType:]_block_invoke";
                  v37 = 2080;
                  v38 = "FCCKTestContentDatabase.m";
                  v39 = 1024;
                  v40 = 1438;
                  v41 = 2114;
                  v42 = v19;
                  v20 = MEMORY[0x1E69E9C10];
                  goto LABEL_22;
                }

                [v26 addObjectsFromArray:v14];
              }

              else if (v14 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v19 = [objc_alloc(*(v3 + 3776)) initWithFormat:@"not yet supported"];
                *buf = 136315906;
                v36 = "[FCCKTestMultiFetchQueryEndpoint _collectRecordIDsFromRecords:linkKeysByRecordType:]_block_invoke";
                v37 = 2080;
                v38 = "FCCKTestContentDatabase.m";
                v39 = 1024;
                v40 = 1443;
                v41 = 2114;
                v42 = v19;
                v20 = MEMORY[0x1E69E9C10];
LABEL_22:
                _os_log_error_impl(&dword_1B63EF000, v20, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
              }

LABEL_24:
            }

            v11 = [v9 countByEnumeratingWithState:&v27 objects:v43 count:16];
          }

          while (v11);
        }

        v5 = v25 + 1;
      }

      while (v25 + 1 != v24);
      v24 = [obj countByEnumeratingWithState:&v31 objects:v44 count:16];
    }

    while (v24);
  }
}

BOOL __85__FCCKTestMultiFetchQueryEndpoint__collectRecordIDsFromRecords_linkKeysByRecordType___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

@end