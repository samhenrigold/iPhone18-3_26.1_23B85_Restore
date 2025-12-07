@interface SPDaemonQueryToken
- (SPDaemonQueryDelegate)delegate;
- (SPDaemonQueryToken)initWithQuery:(id)query queue:(id)queue delegate:(id)delegate;
- (void)handleLocalQueryWithResultSet:(id)set;
- (void)handleMessage:(id)message;
@end

@implementation SPDaemonQueryToken

- (void)handleMessage:(id)message
{
  v83 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  if (handleMessage__onceToken != -1)
  {
    [SPDaemonQueryToken handleMessage:];
  }

  info = [messageCopy info];
  v6 = [info objectForKey:@"QID"];
  unsignedIntValue = [v6 unsignedIntValue];
  queryID = self->_queryID;

  if (unsignedIntValue == queryID)
  {
    name = [messageCopy name];
    v10 = [name isEqualToString:@"Suggestions"];

    if (v10)
    {
      v11 = [messageCopy rootObjectOfClasses:handleMessage__allowedSuggestions];
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __36__SPDaemonQueryToken_handleMessage___block_invoke_2;
      block[3] = &unk_1E82F8E68;
      block[4] = self;
      v81 = v11;
      v13 = v11;
      v14 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
      dispatch_async(queue, v14);

      v15 = v81;
LABEL_8:

      goto LABEL_9;
    }

    name2 = [messageCopy name];
    v17 = [name2 isEqualToString:@"LocalSuggestions"];

    if (v17)
    {
      v18 = [messageCopy rootObjectOfClasses:handleMessage__allowedLocalSuggestions];
      v19 = self->_queue;
      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = __36__SPDaemonQueryToken_handleMessage___block_invoke_3;
      v78[3] = &unk_1E82F8E68;
      v78[4] = self;
      v79 = v18;
      v13 = v18;
      v20 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, v78);
      dispatch_async(v19, v20);

      v15 = v79;
      goto LABEL_8;
    }

    name3 = [messageCopy name];
    v22 = [name3 isEqualToString:@"DebugRanking"];

    if (v22)
    {
      info2 = [messageCopy info];
      v24 = [info2 objectForKeyedSubscript:@"RD"];
      v25 = self->_queue;
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __36__SPDaemonQueryToken_handleMessage___block_invoke_32;
      v76[3] = &unk_1E82F8E68;
      v76[4] = self;
      v77 = v24;
      v26 = v24;
      dispatch_async(v25, v76);
    }

    else
    {
      name4 = [messageCopy name];
      v28 = [name4 isEqualToString:@"SearchResults"];

      if (v28)
      {
        selfCopy = self;
        info3 = [messageCopy info];
        v29 = [info3 objectForKeyedSubscript:@"TBC"];
        intValue = [v29 intValue];
        v31 = intValue;

        v32 = [MEMORY[0x1E695DF70] arrayWithCapacity:intValue];
        v33 = MEMORY[0x1E695E738];
        if (intValue)
        {
          v34 = *MEMORY[0x1E695E738];
          v35 = v31;
          do
          {
            [v32 addObject:v34];
            --v35;
          }

          while (v35);
        }

        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 3221225472;
        v73[2] = __36__SPDaemonQueryToken_handleMessage___block_invoke_2_40;
        v73[3] = &unk_1E82F9170;
        v74 = messageCopy;
        v36 = v32;
        v75 = v36;
        dispatch_apply(v31, 0, v73);
        v37 = objc_opt_new();
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v38 = v36;
        v39 = [v38 countByEnumeratingWithState:&v69 objects:v82 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = 0;
          v42 = *v70;
          v43 = *v33;
          do
          {
            for (i = 0; i != v40; ++i)
            {
              if (*v70 != v42)
              {
                objc_enumerationMutation(v38);
              }

              v45 = *(*(&v69 + 1) + 8 * i);
              if (v45 != v43)
              {
                resultSections = [*(*(&v69 + 1) + 8 * i) resultSections];
                [v37 addObjectsFromArray:resultSections];

                stableSections = [v45 stableSections];

                if (stableSections)
                {
                  stableSections2 = [v45 stableSections];

                  v41 = stableSections2;
                }
              }
            }

            v40 = [v38 countByEnumeratingWithState:&v69 objects:v82 count:16];
          }

          while (v40);
        }

        else
        {
          v41 = 0;
        }

        v55 = [[SPResultSet alloc] initWithSections:v37 stableSections:v41];
        v56 = selfCopy->_queue;
        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 3221225472;
        v66[2] = __36__SPDaemonQueryToken_handleMessage___block_invoke_3_42;
        v66[3] = &unk_1E82F9018;
        v66[4] = selfCopy;
        v67 = info3;
        v68 = v55;
        v57 = v55;
        v58 = info3;
        v59 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, v66);
        dispatch_async(v56, v59);
      }

      else
      {
        name5 = [messageCopy name];
        v50 = [name5 isEqualToString:@"SearchReset"];

        if (v50)
        {
          v51 = self->_queue;
          v65[0] = MEMORY[0x1E69E9820];
          v65[1] = 3221225472;
          v65[2] = __36__SPDaemonQueryToken_handleMessage___block_invoke_4;
          v65[3] = &unk_1E82F8F28;
          v65[4] = self;
          dispatch_async(v51, v65);
        }

        else
        {
          name6 = [messageCopy name];
          v53 = [name6 isEqualToString:@"SearchError"];

          if (v53)
          {
            v54 = self->_queue;
            v62[0] = MEMORY[0x1E69E9820];
            v62[1] = 3221225472;
            v62[2] = __36__SPDaemonQueryToken_handleMessage___block_invoke_5;
            v62[3] = &unk_1E82F8E68;
            v63 = messageCopy;
            selfCopy2 = self;
            dispatch_async(v54, v62);
          }
        }
      }
    }
  }

LABEL_9:
}

uint64_t __36__SPDaemonQueryToken_handleMessage___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v1 = handleMessage__allowedClasses;
  handleMessage__allowedClasses = v0;

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  v5 = handleMessage__allowedSuggestions;
  handleMessage__allowedSuggestions = v4;

  v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v7 = handleMessage__allowedLocalSuggestions;
  handleMessage__allowedLocalSuggestions = v6;

  return MEMORY[0x1EEE66BB8](v6, v7);
}

void __36__SPDaemonQueryToken_handleMessage___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 searchDaemonSuggestionsArray:*(a1 + 40)];
  }
}

void __36__SPDaemonQueryToken_handleMessage___block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  v3 = SPLogForSPLogCategoryDefault(v2);
  v4 = v3;
  if (gSPLogDebugAsDefault)
  {
    v5 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v5 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v3, v5))
  {
    v6 = *(a1 + 40);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1C81BF000, v4, v5, "Local suggestions: %@", &v7, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [v2 searchDaemonLocalSuggestionsData:*(a1 + 40)];
  }
}

void __36__SPDaemonQueryToken_handleMessage___block_invoke_32(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 searchDaemonRankingLog:*(a1 + 40)];
}

uint64_t __36__SPDaemonQueryToken_handleMessage___block_invoke_2_40(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectsOfClasses:handleMessage__allowedClasses atIndex:a2];
  v5 = v4;
  if (v4)
  {
    v7 = v4;
    v4 = [*(a1 + 40) setObject:v4 atIndexedSubscript:a2];
    v5 = v7;
  }

  return MEMORY[0x1EEE66BB8](v4, v5);
}

void __36__SPDaemonQueryToken_handleMessage___block_invoke_3_42(uint64_t a1)
{
  v30 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 40) objectForKeyedSubscript:@"QDC"];
    v3 = [v2 BOOLValue];

    if (v3)
    {
      *(*(a1 + 32) + 33) = 1;
    }

    v25 = *(a1 + 32);
    v26 = *(a1 + 48);
    v29 = [*(a1 + 40) objectForKeyedSubscript:@"QDR"];
    v23 = [v29 BOOLValue];
    v28 = [*(a1 + 40) objectForKeyedSubscript:@"QDP"];
    v22 = [v28 BOOLValue];
    v27 = [*(a1 + 40) objectForKeyedSubscript:@"QFP"];
    v20 = [v27 BOOLValue];
    v24 = [*(a1 + 40) objectForKeyedSubscript:@"QDU"];
    v19 = [v24 BOOLValue];
    v21 = [*(a1 + 40) objectForKeyedSubscript:@"QDC"];
    v18 = [v21 BOOLValue];
    v4 = [*(a1 + 40) objectForKeyedSubscript:@"DTH"];
    v17 = [v4 BOOLValue];
    v5 = [*(a1 + 40) objectForKeyedSubscript:@"QNC"];
    v6 = [v5 BOOLValue];
    v7 = [*(a1 + 40) objectForKeyedSubscript:@"QFS"];
    v8 = [v7 BOOLValue];
    v9 = [*(a1 + 40) objectForKeyedSubscript:@"BT"];
    [v9 doubleValue];
    v11 = v10;
    v12 = [*(a1 + 40) objectForKeyedSubscript:@"GES"];
    v13 = [*(a1 + 40) objectForKeyedSubscript:@"SAS"];
    v14 = [*(a1 + 40) objectForKeyedSubscript:@"SMIA"];
    BYTE3(v16) = v8;
    BYTE2(v16) = v6;
    BYTE1(v16) = v17;
    LOBYTE(v16) = v18;
    [v30 searchDaemonQuery:v25 gotResultSet:v26 replace:v23 partiallyComplete:v22 priorityFastPath:v20 update:v19 complete:v11 delayedTopHit:v16 unchanged:v12 forceStable:v13 blendingDuration:v14 geoEntityString:? supportedAppScopes:? showMoreInAppInfo:?];

    v15 = [*(a1 + 40) objectForKeyedSubscript:@"QDC"];
    LODWORD(v14) = [v15 BOOLValue];

    if (v14)
    {
      [*(a1 + 32) setQueryFinished:1];
    }
  }
}

void __36__SPDaemonQueryToken_handleMessage___block_invoke_4(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  LODWORD(v2) = 0;
  [v3 searchDaemonQuery:*(a1 + 32) gotResultSet:0 replace:1 partiallyComplete:0 priorityFastPath:0 update:0 complete:0.0 delayedTopHit:v2 unchanged:&stru_1F47D3128 forceStable:0 blendingDuration:0 geoEntityString:? supportedAppScopes:? showMoreInAppInfo:?];
}

void __36__SPDaemonQueryToken_handleMessage___block_invoke_5(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E696ABC0]);
  v3 = [*(a1 + 32) info];
  v4 = [v3 objectForKey:@"ERR"];
  v6 = [v2 initWithDomain:@"SearchError" code:objc_msgSend(v4 userInfo:{"unsignedIntValue"), 0}];

  v5 = [*(a1 + 40) delegate];
  [v5 searchDaemonQuery:*(a1 + 40) encounteredError:v6];
}

- (void)handleLocalQueryWithResultSet:(id)set
{
  setCopy = set;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__SPDaemonQueryToken_handleLocalQueryWithResultSet___block_invoke;
  v8[3] = &unk_1E82F8E68;
  v8[4] = self;
  v9 = setCopy;
  v6 = setCopy;
  v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, v8);
  dispatch_async(queue, v7);
}

void __52__SPDaemonQueryToken_handleLocalQueryWithResultSet___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    *(*(a1 + 32) + 33) = 1;
    LODWORD(v2) = 1;
    [v3 searchDaemonQuery:*(a1 + 32) gotResultSet:*(a1 + 40) replace:1 partiallyComplete:0 priorityFastPath:0 update:0 complete:0.0 delayedTopHit:v2 unchanged:&stru_1F47D3128 forceStable:0 blendingDuration:0 geoEntityString:? supportedAppScopes:? showMoreInAppInfo:?];
    [*(a1 + 32) setQueryFinished:1];
  }
}

- (SPDaemonQueryToken)initWithQuery:(id)query queue:(id)queue delegate:(id)delegate
{
  queryCopy = query;
  queueCopy = queue;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = SPDaemonQueryToken;
  v12 = [(SPDaemonQueryToken *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_query, query);
    v13->_queryID = atomic_fetch_add(__queryTokenGen, 1u);
    objc_storeStrong(&v13->_queue, queue);
    objc_storeWeak(&v13->_delegate, delegateCopy);
  }

  return v13;
}

- (SPDaemonQueryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end