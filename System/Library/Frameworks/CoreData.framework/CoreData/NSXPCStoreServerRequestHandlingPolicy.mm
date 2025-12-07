@interface NSXPCStoreServerRequestHandlingPolicy
+ (void)initialize;
- (id)_coreProcessFetchRequest:(void *)request fromClientWithContext:(void *)context error:;
- (id)prefetchRelationships:(void *)relationships forFetch:(void *)fetch sourceOIDs:(void *)ds fromClientWithContext:;
- (id)processFaultForObjectWithID:(id)d fromClientWithContext:(id)context error:(id *)error;
- (id)processFaultForRelationshipWithName:(id)name onObjectWithID:(id)d fromClientWithContext:(id)context error:(id *)error;
- (id)processRequest:(id)request fromClientWithContext:(id)context error:(id *)error;
- (id)restrictingPullChangeHistoryPredicateForEntity:(id)entity fromClientWithContext:(id)context;
- (void)processObtainRequest:(void *)request inContext:(void *)context error:;
@end

@implementation NSXPCStoreServerRequestHandlingPolicy

+ (void)initialize
{
  objc_opt_self();
  if (objc_opt_class() == self)
  {
    _MergedGlobals_64 = [MEMORY[0x1E696AE18] predicateWithValue:1];
    qword_1ED4BE8B0 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  }
}

- (id)restrictingPullChangeHistoryPredicateForEntity:(id)entity fromClientWithContext:(id)context
{
  result = [(NSXPCStoreServerRequestHandlingPolicy *)self restrictingReadPredicateForEntity:entity fromClientWithContext:context];
  if (result)
  {
    if (qword_1ED4BE8B0 != result && _MergedGlobals_64 != result)
    {
      return _MergedGlobals_64;
    }
  }

  return result;
}

- (id)_coreProcessFetchRequest:(void *)request fromClientWithContext:(void *)context error:
{
  v80 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v63 = 0;
  v64 = &v63;
  v65 = 0x3052000000;
  v66 = __Block_byref_object_copy__1;
  v67 = __Block_byref_object_dispose__1;
  v68 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3052000000;
  v60 = __Block_byref_object_copy__1;
  v61 = __Block_byref_object_dispose__1;
  v62 = 0;
  v47 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  managedObjectContext = [request managedObjectContext];
  [a2 _resolveEntityWithContext:managedObjectContext];
  if ([a2 resultType])
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v9 = [objc_msgSend(a2 "propertiesToFetch")] != 0;
    relationshipKeyPathsForPrefetching = [a2 relationshipKeyPathsForPrefetching];
    if (relationshipKeyPathsForPrefetching)
    {
      v8 = [_PFRoutines _coalescedPrefetchKeypaths:relationshipKeyPathsForPrefetching];
      if (![v8 count])
      {
        v8 = 0;
      }

      if (+[NSXPCStoreServer debugDefault])
      {
        v22 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            LogStream = _PFLogGetLogStream(1);
            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v8;
              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Coalesced prefetch keypaths to : %@\n", &buf, 0xCu);
            }
          }

          else
          {
            v45 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v8;
              _os_log_impl(&dword_18565F000, v45, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Coalesced prefetch keypaths to : %@\n", &buf, 0xCu);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v46 = 1;
        }

        else
        {
          v46 = 8;
        }

        _NSCoreDataLog_console(v46, "Coalesced prefetch keypaths to : %@", v8);
        objc_autoreleasePoolPop(v22);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  [a2 setRelationshipKeyPathsForPrefetching:0];
  includesPropertyValues = [a2 includesPropertyValues];
  if (v8)
  {
    v11 = includesPropertyValues;
  }

  else
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0 && [v8 count])
  {
    [a2 setIncludesPropertyValues:1];
  }

  persistentStoreCoordinator = [managedObjectContext persistentStoreCoordinator];
  v13 = persistentStoreCoordinator;
  if (request)
  {
    v14 = request[4];
  }

  else
  {
    v14 = 0;
  }

  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __94__NSXPCStoreServerRequestHandlingPolicy__coreProcessFetchRequest_fromClientWithContext_error___block_invoke;
  v52[3] = &unk_1E6EC1628;
  v52[4] = a2;
  v52[5] = v14;
  v52[8] = &v63;
  v52[9] = &v57;
  v52[10] = &v53;
  v52[6] = managedObjectContext;
  v52[7] = self;
  [persistentStoreCoordinator performBlockAndWait:v52];
  v15 = v64[5];
  v16 = v58[5];
  v17 = v64[5];
  v18 = v17 != 0;
  if (v17)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v76 = 0x3052000000;
    v77 = __Block_byref_object_copy__1;
    v78 = __Block_byref_object_dispose__1;
    v79 = 0;
    if (v8)
    {
      if (!v9)
      {
        [a2 setResultType:1];
      }

      v19 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      *v69 = 0;
      v70 = v69;
      v71 = 0x3052000000;
      v72 = __Block_byref_object_copy__1;
      v73 = __Block_byref_object_dispose__1;
      v74 = 0;
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __94__NSXPCStoreServerRequestHandlingPolicy__coreProcessFetchRequest_fromClientWithContext_error___block_invoke_8;
      v50[3] = &unk_1E6EC1650;
      v51 = v9;
      v50[6] = v69;
      v50[7] = &v63;
      v50[4] = a2;
      v50[5] = v14;
      v50[8] = &buf;
      [v13 performBlockAndWait:v50];
      v20 = [(NSXPCStoreServerRequestHandlingPolicy *)self prefetchRelationships:v8 forFetch:a2 sourceOIDs:*(v70 + 5) fromClientWithContext:request];

      [v19 drain];
      _Block_object_dispose(v69, 8);
    }

    else
    {
      v20 = 0;
    }

    if ((v54[3] & 1) == 0)
    {
      v26 = v64[5];
      [a2 resultType];
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v26, v20, 0}];
      v64[5] = v27;
    }

    if (*(*(&buf + 1) + 40))
    {
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __94__NSXPCStoreServerRequestHandlingPolicy__coreProcessFetchRequest_fromClientWithContext_error___block_invoke_2;
      v49[3] = &unk_1E6EC1330;
      v49[4] = v14;
      v49[5] = &buf;
      [v13 performBlockAndWait:v49];
    }

    if (+[NSXPCStoreServer debugDefault])
    {
      v28 = objc_autoreleasePoolPush();
      _pflogInitialize(8);
      if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v29 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = [v64[5] count];
            *v69 = 67109120;
            *&v69[4] = v30;
            _os_log_error_impl(&dword_18565F000, v29, OS_LOG_TYPE_ERROR, "CoreData: error: Process fetch request got %d results.\n", v69, 8u);
          }
        }

        else
        {
          v31 = _PFLogGetLogStream(8);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = [v64[5] count];
            *v69 = 67109120;
            *&v69[4] = v32;
            _os_log_impl(&dword_18565F000, v31, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Process fetch request got %d results.\n", v69, 8u);
          }
        }
      }

      v33 = v64[5];
      if (_pflogging_catastrophic_mode)
      {
        v34 = [v33 count];
        v35 = 1;
      }

      else
      {
        v34 = [v33 count];
        v35 = 8;
      }

      _NSCoreDataLog_console(v35, "Process fetch request got %d results.", v34);
      objc_autoreleasePoolPop(v28);
    }

    _Block_object_dispose(&buf, 8);
  }

  else if (+[NSXPCStoreServer debugDefault])
  {
    v24 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v25 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_error_impl(&dword_18565F000, v25, OS_LOG_TYPE_ERROR, "CoreData: error: Process fetch request got nil result (check system log for details).\n", &buf, 2u);
        }
      }

      else
      {
        v36 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_18565F000, v36, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Process fetch request got nil result (check system log for details).\n", &buf, 2u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v37 = 1;
    }

    else
    {
      v37 = 8;
    }

    _NSCoreDataLog_console(v37, "Process fetch request got nil result (check system log for details).");
    objc_autoreleasePoolPop(v24);
  }

  _Block_object_dispose(&v53, 8);
  v38 = v64[5];
  v39 = v58[5];
  if (context)
  {
    v40 = v58[5];
    if (v40)
    {
      *context = v40;
    }
  }

  [v47 drain];
  v41 = 0;
  v42 = v58[5];
  if (v18)
  {
    v43 = v64[5];
  }

  else
  {
    v43 = 0;
  }

  _Block_object_dispose(&v57, 8);
  _Block_object_dispose(&v63, 8);
  return v43;
}

id __94__NSXPCStoreServerRequestHandlingPolicy__coreProcessFetchRequest_fromClientWithContext_error___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) resultType] == 4)
  {
    *(*(*(a1 + 80) + 8) + 24) = 1;
    v2 = +[_NSXPCStoreUtilities newSecureArchivedDataWithRootObject:](_NSXPCStoreUtilities, [*(a1 + 48) executeFetchRequest:*(a1 + 32) error:*(*(a1 + 72) + 8) + 40]);
    v3 = *(a1 + 56);
    [*(a1 + 32) resultType];
    if (v3)
    {
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v2, 0, 0}];
    }

    else
    {
      v4 = 0;
    }

    *(*(*(a1 + 64) + 8) + 40) = v4;
    v5 = *(*(*(a1 + 64) + 8) + 40);
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 40) = [(NSSQLCore *)*(a1 + 40) _newRowDataForXPCFetch:0 variables:*(a1 + 48) context:(*(*(a1 + 72) + 8) + 40) error:?];
    v6 = *(*(*(a1 + 64) + 8) + 40);
  }

  return *(*(*(a1 + 72) + 8) + 40);
}

void __94__NSXPCStoreServerRequestHandlingPolicy__coreProcessFetchRequest_fromClientWithContext_error___block_invoke_8(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 72))
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = [_NSXPCStoreUtilities _decodeResultSetData:*(a1 + 32) forFetchRequest:0 options:*(a1 + 40) store:0 context:(*(*(a1 + 64) + 8) + 40) rowCacheRows:0 error:?];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(_PFArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [v2 addObject:{objc_msgSend(*(*(&v10 + 1) + 8 * i), "valueAtIndex:", 0)}];
        }

        v5 = [(_PFArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    *(*(*(a1 + 48) + 8) + 40) = v2;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 40) = [_NSXPCStoreUtilities _decodeResultSetData:*(a1 + 32) forFetchRequest:0 options:*(a1 + 40) store:0 context:(*(*(a1 + 64) + 8) + 40) rowCacheRows:0 error:?];
    v8 = *(a1 + 40);
    v9 = *(*(*(a1 + 64) + 8) + 40);

    [(NSSQLCore *)v8 _cacheRows:v9];
  }
}

- (id)prefetchRelationships:(void *)relationships forFetch:(void *)fetch sourceOIDs:(void *)ds fromClientWithContext:
{
  v265[1] = *MEMORY[0x1E69E9840];
  if (+[NSXPCStoreServer debugDefault])
  {
    v7 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          *&buf[4] = a2;
          *&buf[12] = 2112;
          *&buf[14] = relationships;
          *&buf[22] = 2112;
          fetchCopy2 = fetch;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Prefetching keypaths %@, for fetch %@, sources %@\n", buf, 0x20u);
        }
      }

      else
      {
        v9 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          *&buf[4] = a2;
          *&buf[12] = 2112;
          *&buf[14] = relationships;
          *&buf[22] = 2112;
          fetchCopy2 = fetch;
          _os_log_impl(&dword_18565F000, v9, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Prefetching keypaths %@, for fetch %@, sources %@\n", buf, 0x20u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v10 = 1;
    }

    else
    {
      v10 = 8;
    }

    _NSCoreDataLog_console(v10, "Prefetching keypaths %@, for fetch %@, sources %@", a2, relationships, fetch);
    objc_autoreleasePoolPop(v7);
  }

  result = [fetch count];
  if (result)
  {
    result = [a2 count];
    if (result)
    {
      v154 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v146 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      entity = [relationships entity];
      v187 = 0u;
      v188 = 0u;
      v185 = 0u;
      v186 = 0u;
      v148 = [a2 countByEnumeratingWithState:&v185 objects:v235 count:16];
      if (!v148)
      {
        goto LABEL_227;
      }

      v147 = *v186;
      while (1)
      {
        for (i = 0; i != v148; ++i)
        {
          if (*v186 != v147)
          {
            objc_enumerationMutation(a2);
          }

          v170 = *(*(&v185 + 1) + 8 * i);
          context = objc_autoreleasePoolPush();
          v12 = [a2 objectForKey:v170];
          if ([v12 count])
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }

          v153 = v13;
          if (+[NSXPCStoreServer debugDefault])
          {
            v14 = objc_autoreleasePoolPush();
            _pflogInitialize(8);
            if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
            {
              if (_pflogging_catastrophic_mode)
              {
                v15 = _PFLogGetLogStream(1);
                if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  *&buf[4] = v170;
                  *&buf[12] = 2112;
                  *&buf[14] = v153;
                  _os_log_error_impl(&dword_18565F000, v15, OS_LOG_TYPE_ERROR, "CoreData: error: Prefetching %@, subkeypaths = %@\n", buf, 0x16u);
                }
              }

              else
              {
                v16 = _PFLogGetLogStream(8);
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  *&buf[4] = v170;
                  *&buf[12] = 2112;
                  *&buf[14] = v153;
                  _os_log_impl(&dword_18565F000, v16, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Prefetching %@, subkeypaths = %@\n", buf, 0x16u);
                }
              }
            }

            if (_pflogging_catastrophic_mode)
            {
              v17 = 1;
            }

            else
            {
              v17 = 8;
            }

            _NSCoreDataLog_console(v17, "Prefetching %@, subkeypaths = %@", v170, v153);
            objc_autoreleasePoolPop(v14);
          }

          dictionary = [MEMORY[0x1E695DF90] dictionary];
          if (entity && [objc_msgSend(entity "propertiesByName")])
          {
            [dictionary setObject:fetch forKey:{objc_msgSend(entity, "name")}];
          }

          else
          {
            if (![objc_msgSend(entity "subentitiesByName")])
            {
              goto LABEL_225;
            }

            v132 = [objc_msgSend(entity "subentities")];
            array = [MEMORY[0x1E695DF70] array];
            while ([v132 count])
            {
              v133 = [v132 objectAtIndex:0];
              [v132 removeObjectAtIndex:0];
              if ([objc_msgSend(v133 "relationshipsByName")])
              {
                [array addObject:v133];
              }

              else if ([objc_msgSend(v133 "subentitiesByName")])
              {
                [v132 addObjectsFromArray:{objc_msgSend(v133, "subentities")}];
              }
            }

            if ([array count])
            {
              v183 = 0u;
              v184 = 0u;
              v181 = 0u;
              v182 = 0u;
              v169 = [array countByEnumeratingWithState:&v181 objects:v234 count:16];
              if (v169)
              {
                v134 = 0;
                v165 = *v182;
                do
                {
                  v135 = 0;
                  do
                  {
                    if (*v182 != v165)
                    {
                      v136 = v135;
                      objc_enumerationMutation(array);
                      v135 = v136;
                    }

                    v172 = v135;
                    v137 = *(*(&v181 + 1) + 8 * v135);
                    v138 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    v179 = 0u;
                    v180 = 0u;
                    v177 = 0u;
                    v178 = 0u;
                    v139 = [fetch countByEnumeratingWithState:&v177 objects:v233 count:16];
                    if (v139)
                    {
                      v140 = *v178;
                      do
                      {
                        for (j = 0; j != v139; ++j)
                        {
                          if (*v178 != v140)
                          {
                            objc_enumerationMutation(fetch);
                          }

                          v142 = *(*(&v177 + 1) + 8 * j);
                          entity2 = [v142 entity];
                          v144 = entity2;
                          v145 = entity2 == v137 || entity2 == v134;
                          if (v145 || [entity2 isKindOfEntity:v137])
                          {
                            [v138 addObject:v142];
                            if (v144 != v137)
                            {
                              v134 = v144;
                            }
                          }
                        }

                        v139 = [fetch countByEnumeratingWithState:&v177 objects:v233 count:16];
                      }

                      while (v139);
                    }

                    if ([v138 count])
                    {
                      [dictionary setObject:v138 forKey:{objc_msgSend(v137, "name")}];
                    }

                    v135 = v172 + 1;
                  }

                  while (v172 + 1 != v169);
                  v169 = [array countByEnumeratingWithState:&v181 objects:v234 count:16];
                }

                while (v169);
              }
            }
          }

          if ([dictionary count])
          {
            v175 = 0u;
            v176 = 0u;
            v173 = 0u;
            v174 = 0u;
            v164 = [dictionary countByEnumeratingWithState:&v173 objects:v232 count:16];
            if (v164)
            {
              v160 = *v174;
              do
              {
                v18 = 0;
                do
                {
                  if (*v174 != v160)
                  {
                    objc_enumerationMutation(dictionary);
                  }

                  v19 = *(*(&v173 + 1) + 8 * v18);
                  v20 = objc_autoreleasePoolPush();
                  v171 = [objc_msgSend(objc_msgSend(entity "managedObjectModel")];
                  if (v171)
                  {
                    v21 = [dictionary objectForKey:v19];
                    managedObjectContext = [ds managedObjectContext];
                    persistentStoreCoordinator = [managedObjectContext persistentStoreCoordinator];
                    if (ds && (v22 = ds[4]) != 0)
                    {
                      v155 = v22[6];
                      v156 = ds[4];
                      v23 = _sqlCoreLookupSQLEntityForEntityDescription(v22, v171);
                      v24 = v23;
                      if (v23)
                      {
                        v25 = [*(v23 + 40) objectForKey:v170];
                        v162 = 0;
LABEL_49:
                        v26 = [(NSEntityDescription *)v171 _relationshipNamed:v170];
                        if (!v25 || !v26 || ![v21 count])
                        {
                          v31 = MEMORY[0x1E695DEC8];
                          name = [v171 name];
                          v33 = [v31 arrayWithObjects:{v170, name, NSArray_EmptyArray, 0}];
                          goto LABEL_178;
                        }

                        v27 = *(v25 + 56);
                        v226 = 0;
                        v227 = &v226;
                        v228 = 0x3052000000;
                        v229 = __Block_byref_object_copy__1;
                        v230 = __Block_byref_object_dispose__1;
                        v231 = 0;
                        v220 = 0;
                        v221 = &v220;
                        v222 = 0x3052000000;
                        v223 = __Block_byref_object_copy__1;
                        v224 = __Block_byref_object_dispose__1;
                        v225 = 0;
                        v214 = 0;
                        v215 = &v214;
                        v216 = 0x3052000000;
                        v217 = __Block_byref_object_copy__1;
                        v218 = __Block_byref_object_dispose__1;
                        v219 = NSArray_EmptyArray;
                        v208 = 0;
                        v209 = &v208;
                        v210 = 0x3052000000;
                        v211 = __Block_byref_object_copy__1;
                        v212 = __Block_byref_object_dispose__1;
                        v213 = 0;
                        v158 = v20;
                        v159 = v18;
                        if (v27 && v27[24] == 7)
                        {
                          if (+[NSXPCStoreServer debugDefault])
                          {
                            v28 = objc_autoreleasePoolPush();
                            _pflogInitialize(8);
                            if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
                            {
                              if (_pflogging_catastrophic_mode)
                              {
                                v29 = _PFLogGetLogStream(1);
                                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                                {
                                  name2 = [v27 name];
                                  *v260 = 138412290;
                                  *&v260[4] = name2;
                                  _os_log_error_impl(&dword_18565F000, v29, OS_LOG_TYPE_ERROR, "CoreData: error: Prefetching inverse to-one relationship %@.\n", v260, 0xCu);
                                }
                              }

                              else
                              {
                                v63 = _PFLogGetLogStream(8);
                                if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
                                {
                                  name3 = [v27 name];
                                  *v260 = 138412290;
                                  *&v260[4] = name3;
                                  _os_log_impl(&dword_18565F000, v63, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Prefetching inverse to-one relationship %@.\n", v260, 0xCu);
                                }
                              }
                            }

                            if (_pflogging_catastrophic_mode)
                            {
                              name4 = [v27 name];
                              v66 = 1;
                            }

                            else
                            {
                              name4 = [v27 name];
                              v66 = 8;
                            }

                            _NSCoreDataLog_console(v66, "Prefetching inverse to-one relationship %@.", name4);
                            objc_autoreleasePoolPop(v28);
                          }

                          v67 = [ds inverseIsToOnePrefetchRequestForRelationshipNamed:v170 onEntity:v171];
                          v227[5] = v67;
                          v264 = @"destinations";
                          v265[0] = [MEMORY[0x1E696ABC8] expressionForConstantValue:v21];
                          v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v265 forKeys:&v264 count:1];
LABEL_98:
                          v221[5] = v68;

                          v209[5] = 0;
                          *v260 = 0;
                          *&v260[8] = v260;
                          *&v260[16] = 0x3052000000;
                          v261 = __Block_byref_object_copy__1;
                          v262 = __Block_byref_object_dispose__1;
                          v263 = 0;
                          v201 = 0;
                          v202 = &v201;
                          v203 = 0x3052000000;
                          v204 = __Block_byref_object_copy__1;
                          v205 = __Block_byref_object_dispose__1;
                          v206 = 0;
                          v195 = 0;
                          v196 = &v195;
                          v197 = 0x3052000000;
                          v198 = __Block_byref_object_copy__1;
                          v199 = __Block_byref_object_dispose__1;
                          v200 = 0;
                          v191 = 0;
                          v192 = &v191;
                          v193 = 0x2020000000;
                          v194 = 0;
                          v69 = v227[5];
                          if (!v69)
                          {
                            goto LABEL_101;
                          }

                          v70 = [self restrictingReadPredicateForEntity:objc_msgSend(v69 fromClientWithContext:{"entity"), ds}];
                          if (_MergedGlobals_64 != v70)
                          {
                            v227[5] = 0;
                            goto LABEL_101;
                          }

                          if (v227[5])
                          {
                            *buf = MEMORY[0x1E69E9820];
                            *&buf[8] = 3221225472;
                            *&buf[16] = __141__NSXPCStoreServerRequestHandlingPolicy__prefetchRelationshipKey_sourceEntityDescription_sourceObjectIDs_prefetchRelationshipKeys_inContext___block_invoke_59;
                            fetchCopy2 = &unk_1E6EC16C8;
                            v252 = &v226;
                            v253 = v260;
                            v246 = v156;
                            v247 = managedObjectContext;
                            v254 = &v220;
                            v255 = &v208;
                            v256 = &v201;
                            v257 = &v195;
                            v248 = v153;
                            v249 = v170;
                            v258 = &v214;
                            v259 = &v191;
                            v250 = v155;
                            v251 = v171;
                            [persistentStoreCoordinator performBlockAndWait:buf];
                            if (+[NSXPCStoreServer debugDefault])
                            {
                              v79 = objc_autoreleasePoolPush();
                              _pflogInitialize(8);
                              if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
                              {
                                if (_pflogging_catastrophic_mode)
                                {
                                  v80 = _PFLogGetLogStream(1);
                                  if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
                                  {
                                    name5 = [v171 name];
                                    v82 = [*(*&v260[8] + 40) length];
                                    *v236 = 138412802;
                                    v237 = name5;
                                    v238 = 2112;
                                    v239 = v170;
                                    v240 = 2048;
                                    v241 = v82;
                                    _os_log_error_impl(&dword_18565F000, v80, OS_LOG_TYPE_ERROR, "CoreData: error: Prefetched for source entity %@, key '%@'.  Got data with length %lu.\n", v236, 0x20u);
                                  }
                                }

                                else
                                {
                                  v125 = _PFLogGetLogStream(8);
                                  if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
                                  {
                                    name6 = [v171 name];
                                    v127 = [*(*&v260[8] + 40) length];
                                    *v236 = 138412802;
                                    v237 = name6;
                                    v238 = 2112;
                                    v239 = v170;
                                    v240 = 2048;
                                    v241 = v127;
                                    _os_log_impl(&dword_18565F000, v125, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Prefetched for source entity %@, key '%@'.  Got data with length %lu.\n", v236, 0x20u);
                                  }
                                }
                              }

                              if (_pflogging_catastrophic_mode)
                              {
                                name7 = [v171 name];
                                v129 = [*(*&v260[8] + 40) length];
                                v130 = 1;
                              }

                              else
                              {
                                name7 = [v171 name];
                                v129 = [*(*&v260[8] + 40) length];
                                v130 = 8;
                              }

                              _NSCoreDataLog_console(v130, "Prefetched for source entity %@, key '%@'.  Got data with length %lu.", name7, v170, v129);
                              objc_autoreleasePoolPop(v79);
                            }

                            v71 = *&v260[8];
                            if (*(v192 + 24) == 1)
                            {

                              *(*&v260[8] + 40) = 0;
                              v77 = MEMORY[0x1E695DEC8];
                              name8 = [v171 name];
                              goto LABEL_113;
                            }
                          }

                          else
                          {
LABEL_101:
                            v71 = *&v260[8];
                          }

                          if (*(v71 + 40))
                          {
                            if (v153)
                            {
                              if (+[NSXPCStoreServer debugDefault])
                              {
                                v72 = objc_autoreleasePoolPush();
                                _pflogInitialize(8);
                                if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
                                {
                                  if (_pflogging_catastrophic_mode)
                                  {
                                    v73 = _PFLogGetLogStream(1);
                                    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                                    {
                                      v74 = v227[5];
                                      v75 = v209[5];
                                      v76 = v202[5];
                                      *v236 = 138413058;
                                      v237 = v153;
                                      v238 = 2112;
                                      v239 = v74;
                                      v240 = 2112;
                                      v241 = v75;
                                      v242 = 2112;
                                      v243 = v76;
                                      _os_log_error_impl(&dword_18565F000, v73, OS_LOG_TYPE_ERROR, "CoreData: error: Recursively prefetching subkeys %@ of fetch %@ using OIDs %@ for objects %@\n", v236, 0x2Au);
                                    }
                                  }

                                  else
                                  {
                                    v84 = _PFLogGetLogStream(8);
                                    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
                                    {
                                      v85 = v227[5];
                                      v86 = v209[5];
                                      v87 = v202[5];
                                      *v236 = 138413058;
                                      v237 = v153;
                                      v238 = 2112;
                                      v239 = v85;
                                      v240 = 2112;
                                      v241 = v86;
                                      v242 = 2112;
                                      v243 = v87;
                                      _os_log_impl(&dword_18565F000, v84, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Recursively prefetching subkeys %@ of fetch %@ using OIDs %@ for objects %@\n", v236, 0x2Au);
                                    }
                                  }
                                }

                                if (_pflogging_catastrophic_mode)
                                {
                                  v88 = 1;
                                }

                                else
                                {
                                  v88 = 8;
                                }

                                _NSCoreDataLog_console(v88, "Recursively prefetching subkeys %@ of fetch %@ using OIDs %@ for objects %@", v153, v227[5], v209[5], v202[5]);
                                objc_autoreleasePoolPop(v72);
                              }

                              v89 = [_PFRoutines newArrayOfObjectIDsFromCollection:?];
                              v83 = [(NSXPCStoreServerRequestHandlingPolicy *)self prefetchRelationships:v153 forFetch:v227[5] sourceOIDs:v89 fromClientWithContext:ds];
                            }

                            else
                            {
                              v83 = 0;
                            }

                            if (+[NSXPCStoreServer debugDefault])
                            {
                              v90 = objc_autoreleasePoolPush();
                              _pflogInitialize(8);
                              if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
                              {
                                if (_pflogging_catastrophic_mode)
                                {
                                  v91 = _PFLogGetLogStream(1);
                                  if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
                                  {
                                    name9 = [v171 name];
                                    *v236 = 138412546;
                                    v237 = name9;
                                    v238 = 2112;
                                    v239 = v170;
                                    _os_log_error_impl(&dword_18565F000, v91, OS_LOG_TYPE_ERROR, "CoreData: error: Done prefetching for %@, %@\n", v236, 0x16u);
                                  }
                                }

                                else
                                {
                                  v93 = _PFLogGetLogStream(8);
                                  if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                                  {
                                    name10 = [v171 name];
                                    *v236 = 138412546;
                                    v237 = name10;
                                    v238 = 2112;
                                    v239 = v170;
                                    _os_log_impl(&dword_18565F000, v93, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Done prefetching for %@, %@\n", v236, 0x16u);
                                  }
                                }
                              }

                              if (_pflogging_catastrophic_mode)
                              {
                                name11 = [v171 name];
                                v96 = 1;
                              }

                              else
                              {
                                name11 = [v171 name];
                                v96 = 8;
                              }

                              _NSCoreDataLog_console(v96, "Done prefetching for %@, %@", name11, v170);
                              objc_autoreleasePoolPop(v90);
                            }

                            v97 = MEMORY[0x1E695DEC8];
                            name12 = [v171 name];
                            v33 = [v97 arrayWithObjects:{v170, name12, v215[5], *(*&v260[8] + 40), v83, 0}];

                            if (v196[5])
                            {
                              v189[0] = MEMORY[0x1E69E9820];
                              v189[1] = 3221225472;
                              v189[2] = __141__NSXPCStoreServerRequestHandlingPolicy__prefetchRelationshipKey_sourceEntityDescription_sourceObjectIDs_prefetchRelationshipKeys_inContext___block_invoke_69;
                              v189[3] = &unk_1E6EC1330;
                              v189[4] = v156;
                              v189[5] = &v195;
                              [persistentStoreCoordinator performBlockAndWait:v189];
                            }
                          }

                          else
                          {

                            if (v196[5])
                            {
                              v190[0] = MEMORY[0x1E69E9820];
                              v190[1] = 3221225472;
                              v190[2] = __141__NSXPCStoreServerRequestHandlingPolicy__prefetchRelationshipKey_sourceEntityDescription_sourceObjectIDs_prefetchRelationshipKeys_inContext___block_invoke_65;
                              v190[3] = &unk_1E6EC1330;
                              v190[4] = v156;
                              v190[5] = &v195;
                              [persistentStoreCoordinator performBlockAndWait:v190];
                            }

                            v77 = MEMORY[0x1E695DEC8];
                            name8 = [v171 name];
LABEL_113:
                            v33 = [v77 arrayWithObjects:{v170, name8, NSArray_EmptyArray, 0}];
                          }

                          _Block_object_dispose(&v191, 8);
                          _Block_object_dispose(&v195, 8);
                          _Block_object_dispose(&v201, 8);
                          _Block_object_dispose(v260, 8);
LABEL_177:
                          _Block_object_dispose(&v208, 8);
                          _Block_object_dispose(&v214, 8);
                          _Block_object_dispose(&v220, 8);
                          _Block_object_dispose(&v226, 8);
LABEL_178:
                          [v154 addObject:v33];
                          goto LABEL_179;
                        }

                        v34 = *(v25 + 24);
                        if (v34 != 7)
                        {
                          if (v34 == 9)
                          {
                            v35 = [objc_alloc(MEMORY[0x1E696ACC0]) initWithObject:{objc_msgSend(*(v25 + 56), "name")}];
                            v36 = [objc_alloc(MEMORY[0x1E696ACB8]) initWithKeyPath:v35];

                            v37 = [v21 objectAtIndex:0];
                            v38 = [objc_alloc(MEMORY[0x1E696AB40]) initWithObject:v37];
                            v39 = [objc_alloc(MEMORY[0x1E696AB18]) initWithLeftExpression:v38 rightExpression:v36 modifier:0 type:10 options:0];

                            v40 = objc_alloc_init(NSFetchRequest);
                            -[NSFetchRequest setEntity:](v40, "setEntity:", [objc_msgSend(v25 "destinationEntity")]);
                            [(NSFetchRequest *)v40 setPredicate:v39];

                            v41 = v40;
                            v215[5] = 0;
                            v207[0] = MEMORY[0x1E69E9820];
                            v207[1] = 3221225472;
                            v207[2] = __141__NSXPCStoreServerRequestHandlingPolicy__prefetchRelationshipKey_sourceEntityDescription_sourceObjectIDs_prefetchRelationshipKeys_inContext___block_invoke;
                            v207[3] = &unk_1E6EC16A0;
                            v207[4] = v156;
                            v207[5] = v40;
                            v207[7] = &v214;
                            v207[6] = v21;
                            [persistentStoreCoordinator performBlockAndWait:v207];
                            if (+[NSXPCStoreServer debugDefault])
                            {
                              v42 = objc_autoreleasePoolPush();
                              _pflogInitialize(8);
                              if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
                              {
                                if (_pflogging_catastrophic_mode)
                                {
                                  v43 = _PFLogGetLogStream(1);
                                  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                                  {
                                    name13 = [v25 name];
                                    v45 = [v215[5] count];
                                    *v260 = 138412546;
                                    *&v260[4] = name13;
                                    *&v260[12] = 2048;
                                    *&v260[14] = v45;
                                    _os_log_error_impl(&dword_18565F000, v43, OS_LOG_TYPE_ERROR, "CoreData: error: Prefetched for many-to-many relationship %@.  Got %lu rows\n", v260, 0x16u);
                                  }
                                }

                                else
                                {
                                  v99 = _PFLogGetLogStream(8);
                                  if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
                                  {
                                    name14 = [v25 name];
                                    v101 = [v215[5] count];
                                    *v260 = 138412546;
                                    *&v260[4] = name14;
                                    *&v260[12] = 2048;
                                    *&v260[14] = v101;
                                    _os_log_impl(&dword_18565F000, v99, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Prefetched for many-to-many relationship %@.  Got %lu rows\n", v260, 0x16u);
                                  }
                                }
                              }

                              if (_pflogging_catastrophic_mode)
                              {
                                name15 = [v25 name];
                                v103 = [v215[5] count];
                                v104 = 1;
                              }

                              else
                              {
                                name15 = [v25 name];
                                v103 = [v215[5] count];
                                v104 = 8;
                              }

                              _NSCoreDataLog_console(v104, "Prefetched for many-to-many relationship %@.  Got %lu rows", name15, v103);
                              objc_autoreleasePoolPop(v42);
                              v105 = objc_autoreleasePoolPush();
                              _pflogInitialize(8);
                              if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
                              {
                                if (_pflogging_catastrophic_mode)
                                {
                                  v106 = _PFLogGetLogStream(1);
                                  if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                                  {
                                    v107 = v215[5];
                                    *v260 = 138412290;
                                    *&v260[4] = v107;
                                    _os_log_error_impl(&dword_18565F000, v106, OS_LOG_TYPE_ERROR, "CoreData: error: Which means oidSets %@\n", v260, 0xCu);
                                  }
                                }

                                else
                                {
                                  v108 = _PFLogGetLogStream(8);
                                  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v109 = v215[5];
                                    *v260 = 138412290;
                                    *&v260[4] = v109;
                                    _os_log_impl(&dword_18565F000, v108, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Which means oidSets %@\n", v260, 0xCu);
                                  }
                                }
                              }

                              if (_pflogging_catastrophic_mode)
                              {
                                v110 = 1;
                              }

                              else
                              {
                                v110 = 8;
                              }

                              _NSCoreDataLog_console(v110, "Which means oidSets %@", v215[5]);
                              objc_autoreleasePoolPop(v105);
                            }

                            v111 = [v215[5] count];
                            v112 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v111 + 256];
                            v209[5] = v112;
                            if (v111)
                            {
                              for (k = 0; k < v111; k += 2)
                              {
                                v114 = [v215[5] objectAtIndex:k + 1];
                                [v209[5] addObjectsFromArray:v114];
                              }

                              v112 = v209[5];
                            }

                            if ([v112 count])
                            {
                              v115 = [ds manyToManyPrefetchRequestsForRelationshipNamed:v170 onEntity:v171];
                              v227[5] = v115;
                              v264 = @"mtmObjects";
                              v265[0] = [MEMORY[0x1E696ABC8] expressionForConstantValue:v209[5]];
                              v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v265 forKeys:&v264 count:1];
                              goto LABEL_98;
                            }

                            goto LABEL_175;
                          }

                          v56 = MEMORY[0x1E695DEC8];
                          name16 = [v171 name];
                          v58 = [v56 arrayWithObjects:{v170, name16, NSArray_EmptyArray, 0}];
LABEL_176:
                          v33 = v58;
                          goto LABEL_177;
                        }

                        v46 = [v21 count];
                        v47 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v46];
                        v209[5] = v47;
                        if (!v46)
                        {
LABEL_85:
                          if (+[NSXPCStoreServer debugDefault])
                          {
                            v59 = objc_autoreleasePoolPush();
                            _pflogInitialize(8);
                            if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
                            {
                              if (_pflogging_catastrophic_mode)
                              {
                                v60 = _PFLogGetLogStream(1);
                                if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
                                {
                                  name17 = [v25 name];
                                  v62 = [v209[5] count];
                                  *v260 = 138412546;
                                  *&v260[4] = name17;
                                  *&v260[12] = 2048;
                                  *&v260[14] = v62;
                                  _os_log_error_impl(&dword_18565F000, v60, OS_LOG_TYPE_ERROR, "CoreData: error: Prefetched for one-to-many relationship %@.  Got %lu rows\n", v260, 0x16u);
                                }
                              }

                              else
                              {
                                v116 = _PFLogGetLogStream(8);
                                if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
                                {
                                  name18 = [v25 name];
                                  v118 = [v209[5] count];
                                  *v260 = 138412546;
                                  *&v260[4] = name18;
                                  *&v260[12] = 2048;
                                  *&v260[14] = v118;
                                  _os_log_impl(&dword_18565F000, v116, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Prefetched for one-to-many relationship %@.  Got %lu rows\n", v260, 0x16u);
                                }
                              }
                            }

                            if (_pflogging_catastrophic_mode)
                            {
                              name19 = [v25 name];
                              v120 = [v209[5] count];
                              v121 = 1;
                            }

                            else
                            {
                              name19 = [v25 name];
                              v120 = [v209[5] count];
                              v121 = 8;
                            }

                            _NSCoreDataLog_console(v121, "Prefetched for one-to-many relationship %@.  Got %lu rows", name19, v120);
                            objc_autoreleasePoolPop(v59);
                          }

                          if ([v209[5] count])
                          {
                            v122 = [ds manyToOnePrefetchRequestForRelationshipNamed:v170 onEntity:v171];
                            v227[5] = v122;
                            v264 = @"objects";
                            v265[0] = [MEMORY[0x1E696ABC8] expressionForConstantValue:v209[5]];
                            v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v265 forKeys:&v264 count:1];
                            goto LABEL_98;
                          }

LABEL_175:

                          v123 = MEMORY[0x1E695DEC8];
                          name20 = [v171 name];
                          v58 = [v123 arrayWithObjects:{v170, name20, NSArray_EmptyArray, 0}];
                          goto LABEL_176;
                        }

                        v48 = 0;
                        while (2)
                        {
                          v49 = objc_autoreleasePoolPush();
                          v50 = [v21 objectAtIndex:v48];
                          *v260 = 0;
                          v51 = [managedObjectContext objectRegisteredForID:v50];
                          if (v51)
                          {
                            slot = [v25 slot];
                            if (v162)
                            {
                              v53 = 0;
                            }

                            else
                            {
                              v53 = *(v24 + 192);
                            }

                            entity3 = [v51 entity];
                            v55 = v53 + slot;
                            if (entity3 != v171)
                            {
                              v55 = [entity3 _offsetRelationshipIndex:v53 + slot fromSuperEntity:? andIsToMany:?];
                            }

                            if ((_PF_InternalToOneRelationshipForeignKeyCache(v51, v55, v260) & 1) == 0 || !*v260)
                            {
LABEL_81:
                              objc_autoreleasePoolPop(v49);
                              ++v48;
                              v20 = v158;
                              v18 = v159;
                              if (v46 == v48)
                              {
                                goto LABEL_85;
                              }

                              continue;
                            }
                          }

                          else
                          {
                            *v260 = [objc_msgSend(objc_msgSend(managedObjectContext existingObjectWithID:v50 error:{0), "primitiveValueForKey:", v170), "objectID"}];
                            if (!*v260)
                            {
                              goto LABEL_81;
                            }
                          }

                          break;
                        }

                        [v209[5] addObject:?];
                        goto LABEL_81;
                      }
                    }

                    else
                    {
                      v24 = 0;
                      v155 = 0;
                      v156 = 0;
                    }

                    v25 = 0;
                    v162 = 1;
                    goto LABEL_49;
                  }

LABEL_179:
                  objc_autoreleasePoolPop(v20);
                  ++v18;
                }

                while (v18 != v164);
                v131 = [dictionary countByEnumeratingWithState:&v173 objects:v232 count:16];
                v164 = v131;
              }

              while (v131);
            }
          }

LABEL_225:
          objc_autoreleasePoolPop(context);
        }

        v148 = [a2 countByEnumeratingWithState:&v185 objects:v235 count:16];
        if (!v148)
        {
LABEL_227:
          [v146 drain];
          return v154;
        }
      }
    }
  }

  return result;
}

id __95__NSXPCStoreServerRequestHandlingPolicy__coreFaultForObjectWithID_fromClientWithContext_error___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 40) = [*(a1 + 32) newValuesForObjectWithID:*(a1 + 40) withContext:*(a1 + 48) error:*(*(a1 + 64) + 8) + 40];
  *(*(*(a1 + 72) + 8) + 40) = [*(*(*(a1 + 56) + 8) + 40) _snapshot];
  v2 = *(*(*(a1 + 64) + 8) + 40);

  return v2;
}

- (id)processFaultForObjectWithID:(id)d fromClientWithContext:(id)context error:(id *)error
{
  v41 = 0;
  v9 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v10 = -[NSXPCStoreServerRequestHandlingPolicy restrictingReadPredicateForEntity:fromClientWithContext:](self, "restrictingReadPredicateForEntity:fromClientWithContext:", [d entity], context);
  v11 = v10;
  if (v10)
  {
    if (qword_1ED4BE8B0 == v10)
    {
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:{&unk_1EF435A70, 0}];
    }

    else
    {
      if (_MergedGlobals_64 != v10)
      {
        v12 = objc_alloc_init(NSFetchRequest);
        -[NSFetchRequest setEntity:](v12, "setEntity:", [d entity]);
        expressionForEvaluatedObject = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
        v14 = [MEMORY[0x1E696ABC8] expressionForConstantValue:d];
        v15 = [MEMORY[0x1E696AB18] predicateWithLeftExpression:expressionForEvaluatedObject rightExpression:v14 modifier:0 type:4 options:0];
        -[NSFetchRequest setPredicate:](v12, "setPredicate:", [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", v15, v11, 0)}]);
        v16 = [(NSXPCStoreServerRequestHandlingPolicy *)self _coreProcessFetchRequest:v12 fromClientWithContext:context error:&v41];
        v17 = 1;
        goto LABEL_30;
      }

      v19 = MEMORY[0x1E695DEC8];
      if (self)
      {
        managedObjectContext = [context managedObjectContext];
        persistentStoreCoordinator = [managedObjectContext persistentStoreCoordinator];
        if (context)
        {
          v22 = *(context + 4);
        }

        else
        {
          v22 = 0;
        }

        v55 = 0;
        v56 = &v55;
        v57 = 0x3052000000;
        v58 = __Block_byref_object_copy__1;
        v59 = __Block_byref_object_dispose__1;
        v60 = 0;
        v49 = 0;
        v50 = &v49;
        v51 = 0x3052000000;
        v52 = __Block_byref_object_copy__1;
        v53 = __Block_byref_object_dispose__1;
        v54 = 0;
        v43 = 0;
        v44 = &v43;
        v45 = 0x3052000000;
        v46 = __Block_byref_object_copy__1;
        v47 = __Block_byref_object_dispose__1;
        v48 = 0;
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __95__NSXPCStoreServerRequestHandlingPolicy__coreFaultForObjectWithID_fromClientWithContext_error___block_invoke;
        v42[3] = &unk_1E6EC1678;
        v42[4] = v22;
        v42[5] = d;
        v42[6] = managedObjectContext;
        v42[7] = &v55;
        v42[8] = &v43;
        v42[9] = &v49;
        [persistentStoreCoordinator performBlockAndWait:v42];
        v23 = v44[5];
        if (v56[5])
        {
          array = [MEMORY[0x1E695DF70] array];
          v25 = [objc_msgSend(d "entity")];
          v26 = v25;
          v27 = *(v25 + 56);
          if (v27)
          {
            v28 = *(v25 + 48);
            do
            {
              snapshot_get_value_as_object(v50[5], v28);
              null = v29;
              if (!v29)
              {
                null = [MEMORY[0x1E695DFB0] null];
              }

              [array addObject:null];
              LODWORD(v28) = v28 + 1;
              --v27;
            }

            while (v27);
          }

          v31 = *(v26 + 104);
          if (v31)
          {
            v32 = *(v26 + 96);
            do
            {
              snapshot_get_value_as_object(v50[5], v32);
              null2 = v33;
              if (!v33)
              {
                null2 = [MEMORY[0x1E695DFB0] null];
              }

              [array addObject:null2];
              LODWORD(v32) = v32 + 1;
              --v31;
            }

            while (v31);
          }

          [array addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", *(v50[5] + 12))}];
        }

        else
        {
          array = 0;
        }

        if (v44[5])
        {
          v41 = v44[5];
        }

        _Block_object_dispose(&v43, 8);
        _Block_object_dispose(&v49, 8);
        _Block_object_dispose(&v55, 8);
      }

      else
      {
        array = 0;
      }

      v18 = [v19 arrayWithObjects:{&unk_1EF435A70, array, 0}];
    }

    v16 = v18;
    v17 = 0;
    context = v18;
    goto LABEL_30;
  }

  v17 = 0;
  v16 = 0;
  context = 0;
  if (error)
  {
    v41 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134092 userInfo:0];
  }

LABEL_30:
  v35 = v16;
  v36 = v41;
  if (error && v41)
  {
    *error = v41;
  }

  [v9 drain];
  v37 = v41;
  v38 = 0;
  v39 = v16;
  if (v17)
  {
    return [MEMORY[0x1E695DEC8] arrayWithObjects:{&unk_1EF435A88, v16, 0}];
  }

  return context;
}

- (id)processFaultForRelationshipWithName:(id)name onObjectWithID:(id)d fromClientWithContext:(id)context error:(id *)error
{
  v74 = *MEMORY[0x1E69E9840];
  v69 = 0;
  v68 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (!self)
  {
    goto LABEL_59;
  }

  v11 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  entity = [d entity];
  if (entity)
  {
    if (atomic_load((entity + 124)))
    {
      v14 = *(entity + 72);
    }

    else
    {
      do
      {
        v14 = entity;
        entity = [entity superentity];
      }

      while (entity);
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = [(NSXPCStoreServerRequestHandlingPolicy *)self restrictingReadPredicateForEntity:v14 fromClientWithContext:context];
  if (v15)
  {
    v16 = [objc_msgSend(context "managedObjectContext")];
    if (v16)
    {
      if ([v15 evaluateWithObject:v16])
      {
        v17 = 0;
        v18 = 1;
      }

      else
      {
        if (+[NSXPCStoreServer debugDefault])
        {
          v22 = objc_autoreleasePoolPush();
          _pflogInitialize(8);
          if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
          {
            if (_pflogging_catastrophic_mode)
            {
              LogStream = _PFLogGetLogStream(1);
              if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Source object does not match restricting predicate, so returning an error\n", buf, 2u);
              }
            }

            else
            {
              v26 = _PFLogGetLogStream(8);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18565F000, v26, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Source object does not match restricting predicate, so returning an error\n", buf, 2u);
              }
            }
          }

          if (_pflogging_catastrophic_mode)
          {
            v27 = 1;
          }

          else
          {
            v27 = 8;
          }

          _NSCoreDataLog_console(v27, "Source object does not match restricting predicate, so returning an error");
          objc_autoreleasePoolPop(v22);
        }

        v17 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134093 userInfo:0];
        v18 = 0;
      }

      goto LABEL_38;
    }

    if (+[NSXPCStoreServer debugDefault])
    {
      v20 = objc_autoreleasePoolPush();
      _pflogInitialize(8);
      if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v21 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            dCopy2 = d;
            _os_log_error_impl(&dword_18565F000, v21, OS_LOG_TYPE_ERROR, "CoreData: error: Source object %@ does not exist for relationship fault.\n", buf, 0xCu);
          }
        }

        else
        {
          v24 = _PFLogGetLogStream(8);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            dCopy2 = d;
            _os_log_impl(&dword_18565F000, v24, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Source object %@ does not exist for relationship fault.\n", buf, 0xCu);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v25 = 1;
      }

      else
      {
        v25 = 8;
      }

      _NSCoreDataLog_console(v25, "Source object %@ does not exist for relationship fault.", d);
      objc_autoreleasePoolPop(v20);
    }

    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134093 userInfo:0];
  }

  else
  {
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134092 userInfo:0];
  }

  v17 = v19;
  v18 = 0;
  v16 = 0;
LABEL_38:
  v28 = v17;
  v29 = v16;
  [v11 drain];
  if (v17)
  {
    v69 = v17;
  }

  v30 = v17;
  if (!v18)
  {
    goto LABEL_58;
  }

  v31 = v16;
  if (!v31)
  {
    goto LABEL_58;
  }

  managedObjectContext = [context managedObjectContext];
  v32 = -[NSEntityDescription _relationshipNamed:]([d entity], name);
  v33 = v32;
  if (v32)
  {
    destinationEntity = [v32 destinationEntity];
    v35 = destinationEntity;
    if (destinationEntity)
    {
      if (atomic_load((destinationEntity + 124)))
      {
        v37 = *(destinationEntity + 72);
      }

      else
      {
        do
        {
          v37 = destinationEntity;
          destinationEntity = [destinationEntity superentity];
        }

        while (destinationEntity);
      }
    }

    else
    {
      v37 = 0;
    }

    v41 = [(NSXPCStoreServerRequestHandlingPolicy *)self restrictingReadPredicateForEntity:v37 fromClientWithContext:context];
    if (v41)
    {
      if ([MEMORY[0x1E696AE18] predicateWithValue:1] == v41)
      {
        v55 = objc_msgSend_valueForKey_(v31);
        if (v55)
        {
          array = objc_msgSend_valueForKey_(v55);
          goto LABEL_88;
        }

        if ([v33 isToMany])
        {
LABEL_69:
          array = [MEMORY[0x1E695DEC8] array];
          goto LABEL_88;
        }
      }

      else
      {
        if ([MEMORY[0x1E696AE18] predicateWithValue:0] != v41)
        {
          inverseRelationship = [v33 inverseRelationship];
          v43 = objc_alloc_init(NSFetchRequest);
          [(NSFetchRequest *)v43 setResultType:1];
          [(NSFetchRequest *)v43 setIncludesPropertyValues:0];
          if (inverseRelationship)
          {
            isToMany = [inverseRelationship isToMany];
            v45 = MEMORY[0x1E696AE18];
            if (isToMany)
            {
              name = [inverseRelationship name];
              v47 = @"%@ IN %K";
              dCopy3 = d;
              d = name;
            }

            else
            {
              dCopy3 = [inverseRelationship name];
              v47 = @"%K == %@";
            }

            v63 = [v45 predicateWithFormat:v47, dCopy3, d];
            v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v63, v41, 0}];
            v65 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v64];
            [(NSFetchRequest *)v43 setEntity:v35];
            [(NSFetchRequest *)v43 setPredicate:v65];
          }

          else
          {
            if (context)
            {
              v57 = *(context + 4);
            }

            else
            {
              v57 = 0;
            }

            v58 = [v57 newValueForRelationship:v33 forObjectWithID:d withContext:managedObjectContext error:&v69];
            if (!v58 || [MEMORY[0x1E695DFB0] null] == v58)
            {
              v62 = [(NSXPCStoreServerRequestHandlingPolicy *)self restrictingReadPredicateForEntity:v35 fromClientWithContext:context];
            }

            else
            {
              if ([v33 isToMany])
              {
                v59 = @"self IN %@";
              }

              else
              {
                v59 = @"self == %@";
              }

              v60 = [MEMORY[0x1E696AE18] predicateWithFormat:v59, v58];
              v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v60, v41, 0}];
              v62 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v61];
            }

            v66 = v62;
            [(NSFetchRequest *)v43 setEntity:v35];
            [(NSFetchRequest *)v43 setPredicate:v66];
          }

          [(NSFetchRequest *)v43 setResultType:1];
          v49 = [managedObjectContext executeFetchRequest:v43 error:&v69];
          if ([v33 isToMany])
          {
            goto LABEL_89;
          }

          if ([v49 count])
          {
            array = [v49 lastObject];
          }

          else
          {
            array = [MEMORY[0x1E695DFB0] null];
          }

LABEL_88:
          v49 = array;
LABEL_89:
          LODWORD(self) = 1;
          goto LABEL_60;
        }

        if ([v33 isToMany])
        {
          goto LABEL_69;
        }
      }

      array = [MEMORY[0x1E695DFB0] null];
      goto LABEL_88;
    }

    if (error)
    {
      v40 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134092 userInfo:0];
      goto LABEL_57;
    }

    goto LABEL_58;
  }

  if (!error)
  {
LABEL_58:
    LODWORD(self) = 0;
LABEL_59:
    v49 = 0;
    goto LABEL_60;
  }

  v38 = MEMORY[0x1E696ABC0];
  v70[0] = @"relationship name";
  v70[1] = @"objectID";
  v71[0] = name;
  v71[1] = d;
  v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:v70 count:2];
  v40 = [v38 errorWithDomain:*MEMORY[0x1E696A250] code:134094 userInfo:v39];
LABEL_57:
  LODWORD(self) = 0;
  v49 = 0;
  v69 = v40;
LABEL_60:
  v50 = v49;
  v51 = v69;
  [v68 drain];
  v52 = v69;
  if (error && v69)
  {
    *error = v69;
  }

  v53 = v52;
  if (self)
  {
    return v49;
  }

  else
  {
    return 0;
  }
}

id __141__NSXPCStoreServerRequestHandlingPolicy__prefetchRelationshipKey_sourceEntityDescription_sourceObjectIDs_prefetchRelationshipKeys_inContext___block_invoke(void *a1)
{
  result = [(NSSQLCore *)a1[4] newObjectIDSetsForToManyPrefetchingRequest:a1[6] andSourceObjectIDs:0 orderColumnName:?];
  *(*(a1[7] + 8) + 40) = result;
  return result;
}

void __141__NSXPCStoreServerRequestHandlingPolicy__prefetchRelationshipKey_sourceEntityDescription_sourceObjectIDs_prefetchRelationshipKeys_inContext___block_invoke_59(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  if (+[NSXPCStoreServer debugDefault])
  {
    v2 = objc_autoreleasePoolPush();
    _pflogInitialize(8);
    if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          v4 = *(*(*(a1 + 80) + 8) + 40);
          *buf = 138412290;
          v42 = v4;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Decoding prefetched rows for fetch %@\n", buf, 0xCu);
        }
      }

      else
      {
        v5 = _PFLogGetLogStream(8);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(*(*(a1 + 80) + 8) + 40);
          *buf = 138412290;
          v42 = v6;
          _os_log_impl(&dword_18565F000, v5, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Decoding prefetched rows for fetch %@\n", buf, 0xCu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v7 = 1;
    }

    else
    {
      v7 = 8;
    }

    _NSCoreDataLog_console(v7, "Decoding prefetched rows for fetch %@", *(*(*(a1 + 80) + 8) + 40));
    objc_autoreleasePoolPop(v2);
  }

  *(*(*(a1 + 88) + 8) + 40) = [(NSSQLCore *)*(a1 + 32) _newRowDataForXPCFetch:*(*(*(a1 + 96) + 8) + 40) variables:*(a1 + 40) context:0 error:?];
  if ([*(a1 + 48) count])
  {

    *(*(*(a1 + 104) + 8) + 40) = 0;
    *(*(*(a1 + 112) + 8) + 40) = [_NSXPCStoreUtilities _decodeResultSetData:*(*(*(a1 + 80) + 8) + 40) forFetchRequest:0 options:*(a1 + 32) store:*(a1 + 40) context:(*(*(a1 + 120) + 8) + 40) rowCacheRows:0 error:?];
    [(NSSQLCore *)*(a1 + 32) _cacheRows:?];
    if (*(*(*(a1 + 112) + 8) + 40))
    {
      v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:*(*(*(a1 + 112) + 8) + 40)];
    }

    else
    {
      v8 = 0;
    }

    *(*(*(a1 + 104) + 8) + 40) = v8;
    if ([*(*(*(a1 + 104) + 8) + 40) count])
    {
      if (+[NSXPCStoreServer debugDefault])
      {
        v9 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v10 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              v11 = [*(*(*(a1 + 80) + 8) + 40) entity];
              v12 = *(a1 + 56);
              v13 = *(*(*(a1 + 104) + 8) + 40);
              *buf = 138412802;
              v42 = v11;
              v43 = 2112;
              v44 = v12;
              v45 = 2112;
              v46 = v13;
              _os_log_error_impl(&dword_18565F000, v10, OS_LOG_TYPE_ERROR, "CoreData: error: Prefetched %@/%@ and got %@\n", buf, 0x20u);
            }
          }

          else
          {
            v18 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = [*(*(*(a1 + 80) + 8) + 40) entity];
              v20 = *(a1 + 56);
              v21 = *(*(*(a1 + 104) + 8) + 40);
              *buf = 138412802;
              v42 = v19;
              v43 = 2112;
              v44 = v20;
              v45 = 2112;
              v46 = v21;
              _os_log_impl(&dword_18565F000, v18, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Prefetched %@/%@ and got %@\n", buf, 0x20u);
            }
          }
        }

        v22 = *(*(*(a1 + 80) + 8) + 40);
        if (_pflogging_catastrophic_mode)
        {
          v23 = [v22 entity];
          v24 = 1;
        }

        else
        {
          v23 = [v22 entity];
          v24 = 8;
        }

        _NSCoreDataLog_console(v24, "Prefetched %@/%@ and got %@", v23, *(a1 + 56), *(*(*(a1 + 104) + 8) + 40));
        objc_autoreleasePoolPop(v9);
      }

      if (*(*(*(a1 + 120) + 8) + 40))
      {
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v25 = *(*(*(a1 + 112) + 8) + 40);
        v26 = [v25 countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v26)
        {
          v27 = 0;
          v28 = *v37;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v37 != v28)
              {
                objc_enumerationMutation(v25);
              }

              _PFFaultHandlerFulfillFault(*(a1 + 64), *(*(&v36 + 1) + 8 * i), *(a1 + 40), [*(*(*(a1 + 120) + 8) + 40) objectAtIndex:v27++], 0);
            }

            v26 = [v25 countByEnumeratingWithState:&v36 objects:v40 count:16];
          }

          while (v26);
        }
      }
    }

    else
    {
      if (+[NSXPCStoreServer debugDefault])
      {
        v14 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v15 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v16 = [*(*(*(a1 + 80) + 8) + 40) entity];
              v17 = *(a1 + 56);
              *buf = 138412546;
              v42 = v16;
              v43 = 2112;
              v44 = v17;
              _os_log_error_impl(&dword_18565F000, v15, OS_LOG_TYPE_ERROR, "CoreData: error: Prefetched %@/%@ and got no results, stopping now\n", buf, 0x16u);
            }
          }

          else
          {
            v30 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = [*(*(*(a1 + 80) + 8) + 40) entity];
              v32 = *(a1 + 56);
              *buf = 138412546;
              v42 = v31;
              v43 = 2112;
              v44 = v32;
              _os_log_impl(&dword_18565F000, v30, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Prefetched %@/%@ and got no results, stopping now\n", buf, 0x16u);
            }
          }
        }

        v33 = *(*(*(a1 + 80) + 8) + 40);
        if (_pflogging_catastrophic_mode)
        {
          v34 = [v33 entity];
          v35 = 1;
        }

        else
        {
          v34 = [v33 entity];
          v35 = 8;
        }

        _NSCoreDataLog_console(v35, "Prefetched %@/%@ and got no results, stopping now", v34, *(a1 + 56));
        objc_autoreleasePoolPop(v14);
      }

      [(NSSQLCore *)*(a1 + 32) _uncacheRows:?];
      *(*(*(a1 + 136) + 8) + 24) = 1;
    }
  }
}

- (id)processRequest:(id)request fromClientWithContext:(id)context error:(id *)error
{
  v140 = *MEMORY[0x1E69E9840];
  requestType = [request requestType];
  if (requestType > 5)
  {
    if (requestType != 6)
    {
      if (requestType != 7)
      {
        if (requestType == 8)
        {
          if (self)
          {
            *buf = 0;
            v17 = objc_autoreleasePoolPush();
            v18 = [objc_msgSend(context "managedObjectContext")];
            v19 = v18;
            v20 = *buf;
            objc_autoreleasePoolPop(v17);
            v21 = *buf;
            if (error && *buf)
            {
              *error = *buf;
            }

            v22 = v21;
            return v18;
          }

          return 0;
        }

        goto LABEL_40;
      }

      if (!self)
      {
        return 0;
      }

      *buf = 0;
      v54 = objc_autoreleasePoolPush();
      fetchRequest = [request fetchRequest];
      managedObjectContext = [context managedObjectContext];
      [fetchRequest _resolveEntityWithContext:managedObjectContext];
      entity = [fetchRequest entity];
      if (entity)
      {
        if (atomic_load((entity + 124)))
        {
          v59 = *(entity + 72);
        }

        else
        {
          do
          {
            v59 = entity;
            entity = [entity superentity];
          }

          while (entity);
        }
      }

      else
      {
        v59 = 0;
      }

      v60 = [(NSXPCStoreServerRequestHandlingPolicy *)self restrictingWritePredicateForEntity:v59 fromClientWithContext:context];
      if (v60)
      {
        if ([MEMORY[0x1E696AE18] predicateWithValue:0] != v60)
        {
          v15 = [managedObjectContext executeRequest:request error:buf];
          v61 = *buf;
LABEL_154:
          v99 = v61;
          v100 = v15;
          objc_autoreleasePoolPop(v54);
          v96 = *buf;
          if (error && *buf)
          {
            *error = *buf;
          }

          goto LABEL_157;
        }

        if (error)
        {
          v71 = MEMORY[0x1E696ABC0];
          v72 = *MEMORY[0x1E696A250];
          v73 = 134030;
          goto LABEL_142;
        }
      }

      else if (error)
      {
        v71 = MEMORY[0x1E696ABC0];
        v72 = *MEMORY[0x1E696A250];
        v73 = 134092;
LABEL_142:
        v61 = [v71 errorWithDomain:v72 code:v73 userInfo:0];
        v15 = 0;
        *buf = v61;
        goto LABEL_154;
      }

      v61 = 0;
      v15 = 0;
      goto LABEL_154;
    }

    if (!self)
    {
      return 0;
    }

    *buf = 0;
    v30 = objc_autoreleasePoolPush();
    managedObjectContext2 = [context managedObjectContext];
    [request _resolveEntityWithContext:managedObjectContext2];
    entity2 = [request entity];
    if (entity2)
    {
      if (atomic_load((entity2 + 124)))
      {
        v34 = *(entity2 + 72);
      }

      else
      {
        do
        {
          v34 = entity2;
          entity2 = [entity2 superentity];
        }

        while (entity2);
      }
    }

    else
    {
      v34 = 0;
    }

    v35 = [(NSXPCStoreServerRequestHandlingPolicy *)self restrictingWritePredicateForEntity:v34 fromClientWithContext:context];
    if (v35)
    {
      if ([MEMORY[0x1E696AE18] predicateWithValue:0] != v35)
      {
        v15 = [managedObjectContext2 executeRequest:request error:buf];
        v36 = *buf;
LABEL_144:
        v94 = v36;
        v95 = v15;
        objc_autoreleasePoolPop(v30);
        v96 = *buf;
        if (error && *buf)
        {
          *error = *buf;
        }

        goto LABEL_157;
      }

      if (error)
      {
        v65 = MEMORY[0x1E696ABC0];
        v66 = *MEMORY[0x1E696A250];
        v67 = 134030;
        goto LABEL_136;
      }
    }

    else if (error)
    {
      v65 = MEMORY[0x1E696ABC0];
      v66 = *MEMORY[0x1E696A250];
      v67 = 134092;
LABEL_136:
      v36 = [v65 errorWithDomain:v66 code:v67 userInfo:0];
      v15 = 0;
      *buf = v36;
      goto LABEL_144;
    }

    v36 = 0;
    v15 = 0;
    goto LABEL_144;
  }

  if (requestType == 1)
  {
    if (self)
    {
      v23 = [objc_msgSend(context "persistentStoreCoordinator")];
      entityName = [request entityName];
      if (v23)
      {
        v25 = [*(v23 + 32) objectForKey:entityName];
      }

      else
      {
        v25 = 0;
      }

      v26 = [(NSXPCStoreServerRequestHandlingPolicy *)self restrictingReadPredicateForEntity:v25 fromClientWithContext:context];
      if (v26)
      {
        v27 = v26;
        if ([qword_1ED4BE8B0 isEqual:v26])
        {
          if (+[NSXPCStoreServer debugDefault])
          {
            v28 = objc_autoreleasePoolPush();
            _pflogInitialize(8);
            if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
            {
              if (_pflogging_catastrophic_mode)
              {
                LogStream = _PFLogGetLogStream(1);
                if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Process fetch request returning no results (predicate is false)\n", buf, 2u);
                }
              }

              else
              {
                v107 = _PFLogGetLogStream(8);
                if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_18565F000, v107, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Process fetch request returning no results (predicate is false)\n", buf, 2u);
                }
              }
            }

            if (_pflogging_catastrophic_mode)
            {
              v108 = 1;
            }

            else
            {
              v108 = 8;
            }

            _NSCoreDataLog_console(v108, "Process fetch request returning no results (predicate is false)");
            objc_autoreleasePoolPop(v28);
          }

          return [MEMORY[0x1E695DEC8] array];
        }

        if (([_MergedGlobals_64 isEqual:v27] & 1) == 0)
        {
          predicate = [request predicate];
          if (predicate)
          {
            v92 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", predicate, v27, 0)}];
            requestCopy2 = request;
          }

          else
          {
            requestCopy2 = request;
            v92 = v27;
          }

          [requestCopy2 setPredicate:v92];
        }

        return [(NSXPCStoreServerRequestHandlingPolicy *)self _coreProcessFetchRequest:request fromClientWithContext:context error:error];
      }

      if (error)
      {
        *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134092 userInfo:0];
      }

      if (+[NSXPCStoreServer debugDefault])
      {
        v63 = objc_autoreleasePoolPush();
        _pflogInitialize(8);
        if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
        {
          if (_pflogging_catastrophic_mode)
          {
            v64 = _PFLogGetLogStream(1);
            if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_18565F000, v64, OS_LOG_TYPE_ERROR, "CoreData: error: Process fetch request aborting (predicate is nil)\n", buf, 2u);
            }
          }

          else
          {
            v105 = _PFLogGetLogStream(8);
            if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_18565F000, v105, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Process fetch request aborting (predicate is nil)\n", buf, 2u);
            }
          }
        }

        if (_pflogging_catastrophic_mode)
        {
          v106 = 1;
        }

        else
        {
          v106 = 8;
        }

        _NSCoreDataLog_console(v106, "Process fetch request aborting (predicate is nil)");
        objc_autoreleasePoolPop(v63);
      }
    }

    return 0;
  }

  if (requestType != 2)
  {
    if (requestType == 5)
    {
      if (self)
      {
        *buf = 0;
        v9 = objc_autoreleasePoolPush();
        managedObjectContext3 = [context managedObjectContext];
        [request _resolveEntityWithContext:managedObjectContext3];
        entity3 = [request entity];
        if (entity3)
        {
          if (atomic_load((entity3 + 124)))
          {
            v13 = *(entity3 + 72);
          }

          else
          {
            do
            {
              v13 = entity3;
              entity3 = [entity3 superentity];
            }

            while (entity3);
          }
        }

        else
        {
          v13 = 0;
        }

        v14 = [(NSXPCStoreServerRequestHandlingPolicy *)self restrictingWritePredicateForEntity:v13 fromClientWithContext:context];
        if (v14)
        {
          if ([MEMORY[0x1E696AE18] predicateWithValue:0] != v14)
          {
            v15 = [managedObjectContext3 executeRequest:request error:buf];
            v16 = *buf;
            goto LABEL_149;
          }

          if (error)
          {
            v68 = MEMORY[0x1E696ABC0];
            v69 = *MEMORY[0x1E696A250];
            v70 = 134030;
            goto LABEL_139;
          }
        }

        else if (error)
        {
          v68 = MEMORY[0x1E696ABC0];
          v69 = *MEMORY[0x1E696A250];
          v70 = 134092;
LABEL_139:
          v16 = [v68 errorWithDomain:v69 code:v70 userInfo:0];
          v15 = 0;
          *buf = v16;
          goto LABEL_149;
        }

        v16 = 0;
        v15 = 0;
LABEL_149:
        v97 = v16;
        v98 = v15;
        objc_autoreleasePoolPop(v9);
        v96 = *buf;
        if (error)
        {
          if (*buf)
          {
            *error = *buf;
          }
        }

LABEL_157:
        v101 = v96;
        return v15;
      }

      return 0;
    }

LABEL_40:
    if (error)
    {
      v37 = [request description];
      if (v37)
      {
        v38 = v37;
      }

      else
      {
        v38 = @"Request description was nil.";
      }

      v124 = 0;
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:0 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", v38, @"Request"}];
      return v124;
    }

    return 0;
  }

  if (!self)
  {
    return 0;
  }

  v137 = 0;
  v117 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  managedObjectContext4 = [context managedObjectContext];
  v125 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v39 addObjectsFromArray:{objc_msgSend(objc_msgSend(request, "insertedObjects"), "allObjects")}];
  [v39 addObjectsFromArray:{objc_msgSend(objc_msgSend(request, "updatedObjects"), "allObjects")}];
  [v39 addObjectsFromArray:{objc_msgSend(objc_msgSend(request, "lockedObjects"), "allObjects")}];
  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  obj = v39;
  v40 = [v39 countByEnumeratingWithState:&v133 objects:buf count:16];
  if (v40)
  {
    v121 = 0;
    v41 = *v134;
    v119 = *MEMORY[0x1E696A250];
    do
    {
      v42 = 0;
      do
      {
        if (*v134 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v43 = *(*(&v133 + 1) + 8 * v42);
        v44 = objc_autoreleasePoolPush();
        objectID = [v43 objectID];
        entity4 = [objectID entity];
        if (entity4)
        {
          if (atomic_load((entity4 + 124)))
          {
            v48 = *(entity4 + 72);
          }

          else
          {
            do
            {
              v48 = entity4;
              entity4 = [entity4 superentity];
            }

            while (entity4);
          }
        }

        else
        {
          v48 = 0;
        }

        name = [v48 name];
        v50 = [(NSXPCStoreServerRequestHandlingPolicy *)self restrictingWritePredicateForEntity:v48 fromClientWithContext:context];
        v51 = v50;
        if (v50)
        {
          if (([v50 evaluateWithObject:v43] & 1) == 0)
          {
            if (![v125 count])
            {
              [v125 setObject:objc_msgSend(MEMORY[0x1E695DF70] forKey:{"array"), @"NSAffectedObjectsErrorKey"}];
            }

            [objc_msgSend(v125 objectForKey:{@"NSAffectedObjectsErrorKey", "addObject:", v43}];
          }

          v52 = [dictionary objectForKey:name];
          if (!v52)
          {
            v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [dictionary setObject:v52 forKey:name];
          }

          [v52 addObject:objectID];
        }

        else
        {
          if (error)
          {
            v137 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:v119 code:134092 userInfo:0];
          }

          v121 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:0];
          v124 = v121;
        }

        objc_autoreleasePoolPop(v44);
        if (!v51)
        {
          v62 = obj;
          goto LABEL_192;
        }

        ++v42;
      }

      while (v42 != v40);
      v53 = [obj countByEnumeratingWithState:&v133 objects:buf count:16];
      v40 = v53;
    }

    while (v53);
  }

  else
  {
    v121 = 0;
  }

  v74 = objc_alloc_init(NSFetchRequest);
  v75 = [[NSManagedObjectContext alloc] initWithConcurrencyType:3];
  [(NSManagedObjectContext *)v75 setUndoManager:0];
  -[NSManagedObjectContext setPersistentStoreCoordinator:](v75, "setPersistentStoreCoordinator:", [managedObjectContext4 persistentStoreCoordinator]);
  obja = [objc_msgSend(managedObjectContext4 "persistentStoreCoordinator")];
  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  v76 = [dictionary countByEnumeratingWithState:&v129 objects:v138 count:16];
  if (!v76)
  {
    goto LABEL_126;
  }

  v120 = *v130;
  v118 = *MEMORY[0x1E696A250];
  while (2)
  {
    for (i = 0; i != v76; ++i)
    {
      if (*v130 != v120)
      {
        objc_enumerationMutation(dictionary);
      }

      v78 = *(*(&v129 + 1) + 8 * i);
      v79 = objc_autoreleasePoolPush();
      v80 = [objc_msgSend(obja "entitiesByName")];
      [(NSFetchRequest *)v74 setEntity:v80];
      v81 = [dictionary objectForKey:v78];
      v82 = [(NSXPCStoreServerRequestHandlingPolicy *)self restrictingReadPredicateForEntity:v80 fromClientWithContext:context];
      if (v82)
      {
        if ([objc_msgSend(MEMORY[0x1E696AE18] predicateWithValue:{0), "isEqual:", v82}])
        {
          if (![v125 count])
          {
            [v125 setObject:objc_msgSend(MEMORY[0x1E695DF70] forKey:{"array"), @"NSAffectedObjectsErrorKey"}];
          }

          [objc_msgSend(v125 objectForKey:{@"NSAffectedObjectsErrorKey", "addObjectsFromArray:", v81}];
        }

        else if ([objc_msgSend(MEMORY[0x1E696AE18] predicateWithValue:{1), "isEqual:", v82}])
        {
          goto LABEL_118;
        }

        if ([v81 count])
        {
          v85 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF IN %@", v81];
        }

        else
        {
          v85 = [MEMORY[0x1E696AE18] predicateWithValue:0];
        }

        v86 = v85;
        v87 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v82];
        -[NSFetchRequest setPredicate:](v74, "setPredicate:", [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", v87, v86, 0)}]);
        v88 = [(NSManagedObjectContext *)v75 executeFetchRequest:v74 error:&v137];
        if (v88)
        {
          if ([(NSArray *)v88 count])
          {
            if (![v125 count])
            {
              [v125 setObject:objc_msgSend(MEMORY[0x1E695DF70] forKey:{"array"), @"NSAffectedObjectsErrorKey"}];
            }

            [objc_msgSend(v125 objectForKey:{@"NSAffectedObjectsErrorKey", "addObjectsFromArray:", v81}];
          }

LABEL_118:
          v84 = 1;
          goto LABEL_123;
        }

        if (error)
        {
          v137 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:v118 code:134030 userInfo:0];
        }

        v83 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:0];
        v84 = 0;
        v121 = v83;
      }

      else
      {
        if (error)
        {
          v137 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:v118 code:134092 userInfo:0];
        }

        v83 = [MEMORY[0x1E696AD98] numberWithBool:0];
        v84 = 0;
      }

      v124 = v83;
LABEL_123:
      objc_autoreleasePoolPop(v79);
      if (!v84)
      {
        v62 = 0;
        goto LABEL_192;
      }
    }

    v76 = [dictionary countByEnumeratingWithState:&v129 objects:v138 count:16];
    if (v76)
    {
      continue;
    }

    break;
  }

LABEL_126:
  if ([v125 count])
  {
    if (error)
    {
      v89 = objc_alloc(MEMORY[0x1E696ABC0]);
      v137 = [v89 initWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:v125];
    }

    v90 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:0];
LABEL_191:
    v62 = 0;
    v124 = v90;
    v121 = v90;
  }

  else
  {
    if (+[NSXPCStoreServer debugDefault])
    {
      v103 = objc_autoreleasePoolPush();
      _pflogInitialize(8);
      if (_NSCoreDataIsLogEnabled(8) && _pflogging_enable_oslog >= 1)
      {
        if (_pflogging_catastrophic_mode)
        {
          v104 = _PFLogGetLogStream(1);
          if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
          {
            *v128 = 0;
            _os_log_error_impl(&dword_18565F000, v104, OS_LOG_TYPE_ERROR, "CoreData: error: Saving.\n", v128, 2u);
          }
        }

        else
        {
          v109 = _PFLogGetLogStream(8);
          if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
          {
            *v128 = 0;
            _os_log_impl(&dword_18565F000, v109, OS_LOG_TYPE_DEFAULT, "CoreData: XPC: Saving.\n", v128, 2u);
          }
        }
      }

      if (_pflogging_catastrophic_mode)
      {
        v110 = 1;
      }

      else
      {
        v110 = 8;
      }

      _NSCoreDataLog_console(v110, "Saving.");
      objc_autoreleasePoolPop(v103);
      NSLog(@"\tInserted = %@", [managedObjectContext4 insertedObjects]);
      NSLog(@"\tUpdated = %@", [managedObjectContext4 updatedObjects]);
      NSLog(@"\tDeleted = %@", [managedObjectContext4 deletedObjects]);
    }

    v111 = [managedObjectContext4 save:&v137];
    v112 = v137;
    if (v111)
    {
      v90 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:1];
      goto LABEL_191;
    }

    v62 = 0;
    v124 = v121;
  }

LABEL_192:

  [v117 drain];
  v113 = v121;
  v114 = v137;
  if (error && v137)
  {
    *error = v137;
  }

  v115 = v114;
  return v124;
}

- (void)processObtainRequest:(void *)request inContext:(void *)context error:
{
  v54 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  context = objc_autoreleasePoolPush();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = a2;
  v39 = [a2 countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v39)
  {
    v5 = 0;
    v37 = *v44;
    v36 = *MEMORY[0x1E696A250];
    while (1)
    {
      v6 = 0;
      do
      {
        if (*v44 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v43 + 1) + 8 * v6);
        v8 = [obj objectForKey:v7];
        v51 = 0;
        v9 = objc_alloc_init(MEMORY[0x1E696AAC8]);
        managedObjectContext = [request managedObjectContext];
        v11 = [objc_msgSend(managedObjectContext "persistentStoreCoordinator")];
        if (!v11)
        {
          v13 = 0;
LABEL_37:
          v15 = 0;
          goto LABEL_12;
        }

        superentity = [*(v11 + 32) objectForKey:v7];
        v13 = superentity;
        if (!superentity)
        {
          goto LABEL_37;
        }

        if (atomic_load((superentity + 124)))
        {
          v15 = *(superentity + 72);
        }

        else
        {
          do
          {
            v15 = superentity;
            superentity = [superentity superentity];
          }

          while (superentity);
        }

LABEL_12:
        v16 = [self restrictingWritePredicateForEntity:v15 fromClientWithContext:request];
        if (!v16)
        {
          v25 = [MEMORY[0x1E696ABC0] errorWithDomain:v36 code:134092 userInfo:0];
LABEL_27:
          v26 = 0;
          v24 = 0;
          v51 = v25;
          goto LABEL_30;
        }

        if ([MEMORY[0x1E696AE18] predicateWithValue:0] == v16)
        {
          v25 = [MEMORY[0x1E696ABC0] errorWithDomain:v36 code:134030 userInfo:0];
          goto LABEL_27;
        }

        unsignedIntegerValue = [v8 unsignedIntegerValue];
        for (i = objc_alloc_init(MEMORY[0x1E695DF70]); unsignedIntegerValue; --unsignedIntegerValue)
        {
          v19 = [[NSManagedObject alloc] initWithEntity:v13 insertIntoManagedObjectContext:managedObjectContext];
          [i addObject:v19];
        }

        if ([managedObjectContext obtainPermanentIDsForObjects:i error:&v51])
        {
          v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v21 = [i countByEnumeratingWithState:&v47 objects:v53 count:16];
          if (v21)
          {
            v22 = *v48;
            do
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v48 != v22)
                {
                  objc_enumerationMutation(i);
                }

                [v20 addObject:{objc_msgSend(*(*(&v47 + 1) + 8 * j), "objectID")}];
              }

              v21 = [i countByEnumeratingWithState:&v47 objects:v53 count:16];
            }

            while (v21);
          }

          v24 = v20;
        }

        else
        {
          v24 = 0;
        }

        v26 = 1;
LABEL_30:
        v27 = v51;
        [v9 drain];
        if (v51)
        {
          v5 = v51;
        }

        v28 = v51;
        if ((v26 & 1) == 0 || (v29 = v24) == 0)
        {
          dictionary = 0;
          goto LABEL_42;
        }

        [dictionary setValue:v29 forKey:v7];
        ++v6;
      }

      while (v6 != v39);
      v30 = [obj countByEnumeratingWithState:&v43 objects:v52 count:16];
      v39 = v30;
      if (!v30)
      {
        goto LABEL_42;
      }
    }
  }

  v5 = 0;
LABEL_42:
  v31 = v5;
  objc_autoreleasePoolPop(context);
  v32 = v5;
  if (context && v5)
  {
    *context = v5;
  }

  return dictionary;
}

@end