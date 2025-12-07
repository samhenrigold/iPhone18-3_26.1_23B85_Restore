@interface STHistoryAnalyzer
+ (BOOL)_changedObjectBelongsToFamily:(id)family context:(id)context;
- (BOOL)_isChangeInteresting:(id)interesting;
- (id)deltasForStore:(id)store inManagedObjectContext:(id)context sinceToken:(id)token ignoreAuthor:(id)author finalToken:(id *)finalToken error:(id *)error;
@end

@implementation STHistoryAnalyzer

- (id)deltasForStore:(id)store inManagedObjectContext:(id)context sinceToken:(id)token ignoreAuthor:(id)author finalToken:(id *)finalToken error:(id *)error
{
  finalTokenCopy = finalToken;
  v135[1] = *MEMORY[0x1E69E9840];
  storeCopy = store;
  contextCopy = context;
  tokenCopy = token;
  authorCopy = author;
  v104 = objc_opt_new();
  v15 = +[STLog mirroring];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [STHistoryAnalyzer deltasForStore:storeCopy inManagedObjectContext:tokenCopy sinceToken:v15 ignoreAuthor:? finalToken:? error:?];
  }

  v16 = [MEMORY[0x1E695D698] fetchHistoryAfterToken:tokenCopy];
  v135[0] = storeCopy;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v135 count:1];
  [v16 setAffectedStores:v17];

  [v16 setResultType:5];
  v123 = 0;
  v94 = v16;
  v18 = [contextCopy executeRequest:v16 error:&v123];
  v19 = v123;
  v103 = storeCopy;
  v105 = contextCopy;
  v95 = tokenCopy;
  v92 = v19;
  v93 = v18;
  if (v18)
  {
    result = [v18 result];
    v21 = +[STLog mirroring];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [STHistoryAnalyzer deltasForStore:result inManagedObjectContext:v21 sinceToken:? ignoreAuthor:? finalToken:? error:?];
    }

    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    obj = result;
    v22 = [obj countByEnumeratingWithState:&v119 objects:v134 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = 0;
      token2 = 0;
      v26 = *v120;
      v97 = *v120;
      v98 = authorCopy;
      while (1)
      {
        v27 = 0;
        v99 = v23;
        do
        {
          if (*v120 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v109 = *(*(&v119 + 1) + 8 * v27);
          v28 = objc_autoreleasePoolPush();
          v29 = +[STLog mirroring];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            author = [v109 author];
            token = [v109 token];
            *buf = 138543618;
            v126 = author;
            v127 = 2114;
            v128 = token;
            _os_log_debug_impl(&dword_1B831F000, v29, OS_LOG_TYPE_DEBUG, "Transaction author: %{public}@, token: %{public}@", buf, 0x16u);
          }

          if (!authorCopy || ([v109 author], v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "isEqualToString:", authorCopy), v30, !v31))
          {
            v102 = v28;
            v32 = [STLog mirroring:finalTokenCopy];
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              [STHistoryAnalyzer deltasForStore:v133 inManagedObjectContext:v109 sinceToken:? ignoreAuthor:? finalToken:? error:?];
            }

            v115 = 0u;
            v116 = 0u;
            v113 = 0u;
            v114 = 0u;
            changes = [v109 changes];
            v33 = [changes countByEnumeratingWithState:&v113 objects:v132 count:16];
            if (!v33)
            {
LABEL_84:
              v28 = v102;
              goto LABEL_85;
            }

            v34 = v33;
            v101 = v27;
            v108 = *v114;
            while (2)
            {
              v35 = 0;
LABEL_22:
              v36 = token2;
              v37 = v24;
              if (*v114 != v108)
              {
                objc_enumerationMutation(changes);
              }

              v38 = *(*(&v113 + 1) + 8 * v35);
              token2 = [v109 token];

              if (![(STHistoryAnalyzer *)self _isChangeInteresting:v38])
              {
                syncableRootObject = +[STLog mirroring];
                if (os_log_type_enabled(syncableRootObject, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543362;
                  v126 = v38;
                  _os_log_debug_impl(&dword_1B831F000, syncableRootObject, OS_LOG_TYPE_DEBUG, "Skipping uninteresting change: %{public}@", buf, 0xCu);
                }

LABEL_35:
                v24 = v37;
                goto LABEL_36;
              }

              changeType = [v38 changeType];
              changedObjectID = [v38 changedObjectID];
              v41 = changedObjectID;
              if (changeType == 2)
              {
                entity = [changedObjectID entity];
                userInfo = [entity userInfo];
                v44 = [userInfo objectForKeyedSubscript:@"isMirrored"];
                v45 = [v44 isEqualToString:@"YES"];

                if (v45)
                {
                  tombstone = [v38 tombstone];
                  syncableRootObject = [tombstone objectForKeyedSubscript:@"uniqueIdentifier"];

                  if (syncableRootObject)
                  {
                    v48 = +[STLog mirroring];
                    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
                    {
                      configurationName = [v103 configurationName];
                      *buf = 138543618;
                      v126 = configurationName;
                      v127 = 2114;
                      v128 = syncableRootObject;
                      _os_log_debug_impl(&dword_1B831F000, v48, OS_LOG_TYPE_DEBUG, "Detected change for store: %{public}@, Delete: %{public}@", buf, 0x16u);
                    }

                    v49 = [v104 objectForKeyedSubscript:syncableRootObject];

                    if (!v49)
                    {
                      v50 = [[STDelta alloc] initWithUniqueIdentifier:syncableRootObject];
                      [v104 setObject:v50 forKeyedSubscript:syncableRootObject];
                    }

                    v51 = [v104 objectForKeyedSubscript:syncableRootObject];
                    [v51 deleted];
                  }
                }

                else
                {
                  syncableRootObject = +[STLog mirroring];
                  if (os_log_type_enabled(syncableRootObject, OS_LOG_TYPE_DEBUG))
                  {
                    [STHistoryAnalyzer deltasForStore:v131 inManagedObjectContext:v38 sinceToken:? ignoreAuthor:? finalToken:? error:?];
                  }
                }

                goto LABEL_35;
              }

              v112 = v37;
              syncableRootObject = [v105 existingObjectWithID:changedObjectID error:&v112];
              v24 = v112;

              entity2 = [syncableRootObject entity];
              name = [entity2 name];
              v54 = [name isEqualToString:@"RMCloudActivation"];

              if (v54)
              {
                v55 = syncableRootObject;
                if ([v55 activationType])
                {

                  goto LABEL_41;
                }

                v66 = +[STLog mirroring];
                if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543362;
                  v126 = v55;
                  _os_log_debug_impl(&dword_1B831F000, v66, OS_LOG_TYPE_DEBUG, "Skipping legacy STCloudActivation: %{public}@", buf, 0xCu);
                }

LABEL_78:
                syncableRootObject = v55;
LABEL_79:

                goto LABEL_36;
              }

LABEL_41:
              if ([syncableRootObject conformsToProtocol:&unk_1F305ED50])
              {
                v56 = syncableRootObject;
                if (!v56)
                {
                  v55 = +[STLog mirroring];
                  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                  {
                    [STHistoryAnalyzer deltasForStore:v111 inManagedObjectContext:v55 sinceToken:? ignoreAuthor:? finalToken:? error:?];
                  }

                  syncableRootObject = 0;
                  goto LABEL_79;
                }

                v57 = v56;
                updatedProperties = [v38 updatedProperties];
                v59 = [updatedProperties valueForKey:@"name"];

                v60 = +[STLog mirroring];
                if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
                {
                  configurationName2 = [v103 configurationName];
                  changedObjectID2 = [v38 changedObjectID];
                  *buf = 138543874;
                  v126 = configurationName2;
                  v127 = 2114;
                  v128 = changedObjectID2;
                  v129 = 2114;
                  v130 = v59;
                  _os_log_debug_impl(&dword_1B831F000, v60, OS_LOG_TYPE_DEBUG, "Detected change (subobject) for store: %{public}@, Changed subobject id: %{public}@, Properties: %{public}@", buf, 0x20u);
                }

                syncableRootObject = [v57 syncableRootObject];
              }

              if (![syncableRootObject conformsToProtocol:&unk_1F305E290])
              {
LABEL_36:

                if (v34 == ++v35)
                {
                  v82 = [changes countByEnumeratingWithState:&v113 objects:v132 count:16];
                  v34 = v82;
                  if (!v82)
                  {
                    authorCopy = v98;
                    v23 = v99;
                    v26 = v97;
                    v27 = v101;
                    goto LABEL_84;
                  }

                  continue;
                }

                goto LABEL_22;
              }

              break;
            }

            entity3 = [syncableRootObject entity];
            userInfo2 = [entity3 userInfo];
            v63 = [userInfo2 objectForKeyedSubscript:@"isMirrored"];
            v64 = [v63 isEqualToString:@"YES"];

            if ((v64 & 1) == 0)
            {
              v55 = +[STLog mirroring];
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
              {
                [STHistoryAnalyzer deltasForStore:v124 inManagedObjectContext:v38 sinceToken:? ignoreAuthor:? finalToken:? error:?];
              }

              goto LABEL_79;
            }

            if ([STHistoryAnalyzer _changedObjectBelongsToFamily:syncableRootObject context:v105])
            {
              v55 = +[STLog mirroring];
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                objectID = [syncableRootObject objectID];
                *buf = 138543362;
                v126 = objectID;
                _os_log_impl(&dword_1B831F000, v55, OS_LOG_TYPE_DEFAULT, "Ignoring changed object belonging to family: %{public}@", buf, 0xCu);
              }

              goto LABEL_79;
            }

            v55 = syncableRootObject;
            [v55 updateUniqueIdentifier];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
LABEL_67:
              dictionaryRepresentation = [v55 dictionaryRepresentation];
              v69 = [v55 valueForKey:@"uniqueIdentifier"];
              if (v69)
              {
                v73 = [v104 objectForKeyedSubscript:v69];

                if (!v73)
                {
                  v74 = [[STDelta alloc] initWithUniqueIdentifier:v69];
                  [v104 setObject:v74 forKeyedSubscript:v69];
                }

                v75 = [v104 objectForKeyedSubscript:v69];
                [v75 changedWithDictionary:dictionaryRepresentation];

                v72 = +[STLog mirroring];
                if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
                {
                  configurationName3 = [v103 configurationName];
                  *buf = 138543618;
                  v126 = configurationName3;
                  v127 = 2114;
                  v128 = v69;
                  _os_log_debug_impl(&dword_1B831F000, v72, OS_LOG_TYPE_DEBUG, "Detected change for store: %{public}@, Change: %{public}@", buf, 0x16u);
                }
              }

              else
              {
                v72 = +[STLog mirroring];
                if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543362;
                  v126 = v55;
                  _os_log_debug_impl(&dword_1B831F000, v72, OS_LOG_TYPE_DEBUG, "Skipping change because object has no uniqueIdentifier: %{public}@", buf, 0xCu);
                }
              }

              goto LABEL_77;
            }

            dictionaryRepresentation = v55;
            device = [dictionaryRepresentation device];
            v69 = device;
            if (device)
            {
              identifier = [device identifier];

              v71 = +[STLog mirroring];
              v72 = v71;
              if (identifier)
              {
                if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v126 = dictionaryRepresentation;
                  _os_log_impl(&dword_1B831F000, v72, OS_LOG_TYPE_DEFAULT, "Found valid STUserDeviceState: %{public}@", buf, 0xCu);
                }

                goto LABEL_67;
              }

              if (!os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
              {
LABEL_77:

                goto LABEL_78;
              }

              *buf = 138543362;
              v126 = dictionaryRepresentation;
              v78 = v72;
              v79 = "Skipping STUserDeviceState with device.identifier = nil : %{public}@";
            }

            else
            {
              v72 = +[STLog mirroring];
              if (!os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
              {
                goto LABEL_77;
              }

              *buf = 138543362;
              v126 = dictionaryRepresentation;
              v78 = v72;
              v79 = "Skipping STUserDeviceState with device = nil : %{public}@";
            }

            _os_log_fault_impl(&dword_1B831F000, v78, OS_LOG_TYPE_FAULT, v79, buf, 0xCu);
            goto LABEL_77;
          }

          changes = +[STLog mirroring];
          if (os_log_type_enabled(changes, OS_LOG_TYPE_DEBUG))
          {
            [STHistoryAnalyzer deltasForStore:v118 inManagedObjectContext:changes sinceToken:? ignoreAuthor:? finalToken:? error:?];
          }

LABEL_85:

          objc_autoreleasePoolPop(v28);
          ++v27;
        }

        while (v27 != v23);
        v23 = [obj countByEnumeratingWithState:&v119 objects:v134 count:16];
        if (!v23)
        {
          goto LABEL_92;
        }
      }
    }

    v24 = 0;
    token2 = 0;
LABEL_92:

    if (finalTokenCopy && token2)
    {
      v87 = token2;
      *finalTokenCopy = token2;
    }
  }

  else
  {
    v85 = v19;
    v86 = +[STLog mirroring];
    if (os_log_type_enabled(v86, OS_LOG_TYPE_FAULT))
    {
      [STHistoryAnalyzer deltasForStore:inManagedObjectContext:sinceToken:ignoreAuthor:finalToken:error:];
    }

    v24 = v85;
    token2 = 0;
  }

  if (error && v24)
  {
    v88 = v24;
    *error = v24;
  }

  v89 = v104;

  return v104;
}

- (BOOL)_isChangeInteresting:(id)interesting
{
  v23 = *MEMORY[0x1E69E9840];
  interestingCopy = interesting;
  if ([interestingCopy changeType] == 1)
  {
    updatedProperties = [interestingCopy updatedProperties];
    updatedProperties3 = [updatedProperties count];

    if (updatedProperties3)
    {
      v6 = objc_alloc(MEMORY[0x1E695DFA8]);
      updatedProperties2 = [interestingCopy updatedProperties];
      v8 = [v6 initWithCapacity:{objc_msgSend(updatedProperties2, "count")}];

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      updatedProperties3 = [interestingCopy updatedProperties];
      v9 = [updatedProperties3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(updatedProperties3);
            }

            v13 = *(*(&v18 + 1) + 8 * i);
            name = [v13 name];
            v15 = [name hasPrefix:@"ck"];

            if ((v15 & 1) == 0)
            {
              name2 = [v13 name];
              [v8 addObject:name2];
            }
          }

          v10 = [updatedProperties3 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v10);
      }

      LOBYTE(updatedProperties3) = [v8 count] != 0;
    }
  }

  else
  {
    LOBYTE(updatedProperties3) = 1;
  }

  return updatedProperties3;
}

+ (BOOL)_changedObjectBelongsToFamily:(id)family context:(id)context
{
  familyCopy = family;
  contextCopy = context;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = familyCopy;
    v8 = +[STFamilyOrganization fetchRequest];
    v16 = 0;
    dsid = [v8 execute:&v16];
    user = v16;
    if (!dsid)
    {
      firstObject = +[STLog mirroring];
      if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
      {
        +[STHistoryAnalyzer _changedObjectBelongsToFamily:context:];
      }

      LOBYTE(v13) = 0;
      goto LABEL_11;
    }

    firstObject = [dsid firstObject];
    organization = [v7 organization];
    LOBYTE(v13) = [organization isEqual:firstObject];
  }

  else
  {
    v15 = 0;
    v8 = [STCoreUser fetchLocalUserInContext:contextCopy error:&v15];
    v7 = v15;
    if (!v8)
    {
      user = +[STLog mirroring];
      if (os_log_type_enabled(user, OS_LOG_TYPE_ERROR))
      {
        +[STHistoryAnalyzer _changedObjectBelongsToFamily:context:];
      }

      LOBYTE(v13) = 0;
      goto LABEL_15;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      user = [familyCopy user];
      dsid = [user dsid];
      firstObject = [v8 dsid];
      v13 = [dsid isEqualToNumber:firstObject] ^ 1;
      goto LABEL_11;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      LOBYTE(v13) = 0;
      goto LABEL_16;
    }

    user = [familyCopy userDeviceState];
    dsid = [user user];
    firstObject = [dsid dsid];
    organization = [v8 dsid];
    v13 = [firstObject isEqualToNumber:organization]^ 1;
  }

LABEL_11:
LABEL_15:

LABEL_16:
  return v13;
}

- (void)deltasForStore:(NSObject *)a3 inManagedObjectContext:sinceToken:ignoreAuthor:finalToken:error:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [a1 configurationName];
  OUTLINED_FUNCTION_2();
  v7 = 2114;
  v8 = a2;
  _os_log_debug_impl(&dword_1B831F000, a3, OS_LOG_TYPE_DEBUG, "deltasForStore: %{public}@, token passed in: %{public}@", v6, 0x16u);
}

- (void)deltasForStore:(void *)a1 inManagedObjectContext:(NSObject *)a2 sinceToken:ignoreAuthor:finalToken:error:.cold.2(void *a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1B831F000, a2, OS_LOG_TYPE_DEBUG, "Transactions to process: %lu", v3, 0xCu);
}

- (void)deltasForStore:(os_log_t)log inManagedObjectContext:sinceToken:ignoreAuthor:finalToken:error:.cold.3(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_1B831F000, log, OS_LOG_TYPE_DEBUG, "Skipping transaction due to author", buf, 2u);
}

- (void)deltasForStore:(uint64_t)a1 inManagedObjectContext:(uint64_t)a2 sinceToken:ignoreAuthor:finalToken:error:.cold.4(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_4(a1 a2)];
  v5 = [v4 count];
  *v3 = 134217984;
  *v2 = v5;
  OUTLINED_FUNCTION_6(&dword_1B831F000, v6, v7, "Transaction changes to process: %lu");
}

- (void)deltasForStore:(uint64_t)a1 inManagedObjectContext:(uint64_t)a2 sinceToken:ignoreAuthor:finalToken:error:.cold.5(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_4(a1 a2)];
  v5 = [v4 entity];
  v6 = [v5 name];
  *v3 = 138543362;
  *v2 = v6;
  OUTLINED_FUNCTION_6(&dword_1B831F000, v7, v8, "Skipping unmirrored entity change: %{public}@");
}

- (void)deltasForStore:(os_log_t)log inManagedObjectContext:sinceToken:ignoreAuthor:finalToken:error:.cold.6(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_1B831F000, log, OS_LOG_TYPE_DEBUG, "Change is a subobject but has no root, skipping", buf, 2u);
}

- (void)deltasForStore:inManagedObjectContext:sinceToken:ignoreAuthor:finalToken:error:.cold.8()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_1B831F000, v0, OS_LOG_TYPE_FAULT, "fetchHistoryAfterToken failed: %@", v1, 0xCu);
}

+ (void)_changedObjectBelongsToFamily:context:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1B831F000, v0, OS_LOG_TYPE_ERROR, "Failed to fetch the local user: %{public}@", v1, 0xCu);
}

+ (void)_changedObjectBelongsToFamily:context:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1B831F000, v0, OS_LOG_TYPE_ERROR, "Failed to fetch family organizations: %{public}@", v1, 0xCu);
}

@end