@interface BMCoreDuetDiscoverabilitySignalsSource
- (void)sendEvent:(id)event;
@end

@implementation BMCoreDuetDiscoverabilitySignalsSource

- (void)sendEvent:(id)event
{
  v66[1] = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(BMCoreDuetDiscoverabilitySignalsSource *)self sendEvent:eventCopy, v5];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = eventCopy;
    identifier = [v6 identifier];
    bundleID = [v6 bundleID];
    context = [v6 context];
    userInfo = [v6 userInfo];
    v8 = MGCopyAnswer();
    if (v8)
    {
      v48 = [@"iOS-" stringByAppendingString:v8];
    }

    else
    {
      v48 = 0;
    }

    if (identifier && bundleID && v48)
    {
      v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:CFAbsoluteTimeGetCurrent()];
      v10 = objc_alloc(MEMORY[0x1E695DF90]);
      v66[0] = v48;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:1];
      osBuild = [get_DKDiscoverabilitySignalsMetadataKeyClass() osBuild];
      v65 = osBuild;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
      v46 = [v10 initWithObjects:v11 forKeys:v13];

      if (context)
      {
        context2 = [get_DKDiscoverabilitySignalsMetadataKeyClass() context];
        [v46 setObject:context forKeyedSubscript:context2];
      }

      if (userInfo)
      {
        userInfo2 = [get_DKDiscoverabilitySignalsMetadataKeyClass() userInfo];
        [v46 setObject:userInfo forKeyedSubscript:userInfo2];
      }

      v59 = 0;
      v60 = &v59;
      v61 = 0x2050000000;
      v16 = get_DKSourceClass_softClass;
      v62 = get_DKSourceClass_softClass;
      if (!get_DKSourceClass_softClass)
      {
        v54 = MEMORY[0x1E69E9820];
        v55 = 3221225472;
        v56 = __get_DKSourceClass_block_invoke;
        v57 = &unk_1E6E52EB0;
        v58 = &v59;
        __get_DKSourceClass_block_invoke(&v54);
        v16 = v60[3];
      }

      v17 = v16;
      _Block_object_dispose(&v59, 8);
      v45 = [[v16 alloc] initWithIdentifier:0 bundleIdentifier:bundleID itemIdentifier:0 groupIdentifier:0 deviceIdentifier:0 userIdentifier:0];
      v59 = 0;
      v60 = &v59;
      v61 = 0x2050000000;
      v18 = get_DKEventClass_softClass_2;
      v62 = get_DKEventClass_softClass_2;
      if (!get_DKEventClass_softClass_2)
      {
        v54 = MEMORY[0x1E69E9820];
        v55 = 3221225472;
        v56 = __get_DKEventClass_block_invoke_2;
        v57 = &unk_1E6E52EB0;
        v58 = &v59;
        __get_DKEventClass_block_invoke_2(&v54);
        v18 = v60[3];
      }

      v19 = v18;
      _Block_object_dispose(&v59, 8);
      v59 = 0;
      v60 = &v59;
      v61 = 0x2050000000;
      v20 = get_DKSystemEventStreamsClass_softClass_1;
      v62 = get_DKSystemEventStreamsClass_softClass_1;
      if (!get_DKSystemEventStreamsClass_softClass_1)
      {
        v54 = MEMORY[0x1E69E9820];
        v55 = 3221225472;
        v56 = __get_DKSystemEventStreamsClass_block_invoke_1;
        v57 = &unk_1E6E52EB0;
        v58 = &v59;
        __get_DKSystemEventStreamsClass_block_invoke_1(&v54);
        v20 = v60[3];
      }

      v21 = v20;
      _Block_object_dispose(&v59, 8);
      discoverabilitySignalsStream = [v20 discoverabilitySignalsStream];
      v23 = [v46 copy];
      v44 = [v18 eventWithStream:discoverabilitySignalsStream source:v45 startDate:v9 endDate:v9 identifierStringValue:identifier metadata:v23];

      if (userInfo)
      {
        v53 = 0;
        v24 = [MEMORY[0x1E696ACB0] dataWithJSONObject:userInfo options:0 error:&v53];
        v25 = v53;
        if (v25)
        {
          v26 = __biome_log_for_category();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            [BMCoreDuetDiscoverabilitySignalsSource sendEvent:];
          }
        }
      }

      else
      {
        v24 = 0;
      }

      v59 = 0;
      v60 = &v59;
      v61 = 0x2050000000;
      v27 = getBMDiscoverabilitySignalsClass_softClass;
      v62 = getBMDiscoverabilitySignalsClass_softClass;
      if (!getBMDiscoverabilitySignalsClass_softClass)
      {
        v54 = MEMORY[0x1E69E9820];
        v55 = 3221225472;
        v56 = __getBMDiscoverabilitySignalsClass_block_invoke;
        v57 = &unk_1E6E52EB0;
        v58 = &v59;
        __getBMDiscoverabilitySignalsClass_block_invoke(&v54);
        v27 = v60[3];
      }

      v28 = v27;
      _Block_object_dispose(&v59, 8);
      v29 = [v27 alloc];
      identifier2 = [v6 identifier];
      context3 = [v6 context];
      v32 = [v29 initWithContentIdentifier:identifier2 context:context3 osBuild:v48 userInfo:v24];

      v33 = BMRootLibraryBridge();
      v34 = [v33 streamWithIdentifier:@"Discoverability.Signals" error:0];

      source = [v34 source];
      [source sendEvent:v32];

      v36 = objc_alloc(MEMORY[0x1E695DF90]);
      v64[0] = identifier;
      v64[1] = bundleID;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
      v38 = [v36 initWithObjects:v37 forKeys:&unk_1EF309260];

      if (context)
      {
        [v38 setObject:context forKeyedSubscript:@"context"];
      }

      if (userInfo)
      {
        [v38 setObject:userInfo forKeyedSubscript:@"userInfo"];
      }

      v59 = 0;
      v60 = &v59;
      v61 = 0x2050000000;
      v39 = get_DKKnowledgeStoreClass_softClass_0;
      v62 = get_DKKnowledgeStoreClass_softClass_0;
      if (!get_DKKnowledgeStoreClass_softClass_0)
      {
        v54 = MEMORY[0x1E69E9820];
        v55 = 3221225472;
        v56 = __get_DKKnowledgeStoreClass_block_invoke_0;
        v57 = &unk_1E6E52EB0;
        v58 = &v59;
        __get_DKKnowledgeStoreClass_block_invoke_0(&v54);
        v39 = v60[3];
      }

      v40 = v39;
      _Block_object_dispose(&v59, 8);
      userKnowledgeStore = [v39 userKnowledgeStore];
      v63 = v44;
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __52__BMCoreDuetDiscoverabilitySignalsSource_sendEvent___block_invoke;
      v51[3] = &unk_1E6E53900;
      v52 = v38;
      v43 = v38;
      [userKnowledgeStore saveObjects:v42 responseQueue:0 withCompletion:v51];
    }

    else
    {
      v9 = __biome_log_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [BMCoreDuetDiscoverabilitySignalsSource sendEvent:];
      }
    }
  }

  else
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [BMCoreDuetDiscoverabilitySignalsSource sendEvent:v6];
    }
  }
}

void __52__BMCoreDuetDiscoverabilitySignalsSource_sendEvent___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v6 = get_CDContextualKeyPathClass_softClass;
    v21 = get_CDContextualKeyPathClass_softClass;
    if (!get_CDContextualKeyPathClass_softClass)
    {
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __get_CDContextualKeyPathClass_block_invoke;
      v16 = &unk_1E6E52EB0;
      v17 = &v18;
      __get_CDContextualKeyPathClass_block_invoke(&v13);
      v6 = v19[3];
    }

    v7 = v6;
    _Block_object_dispose(&v18, 8);
    v8 = [v6 ephemeralKeyPathWithKey:@"/discoverability/signals/dataDictionary"];
    v9 = [*(a1 + 32) copy];
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v10 = get_CDClientContextClass_softClass_0;
    v21 = get_CDClientContextClass_softClass_0;
    if (!get_CDClientContextClass_softClass_0)
    {
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __get_CDClientContextClass_block_invoke_0;
      v16 = &unk_1E6E52EB0;
      v17 = &v18;
      __get_CDClientContextClass_block_invoke_0(&v13);
      v10 = v19[3];
    }

    v11 = v10;
    _Block_object_dispose(&v18, 8);
    v12 = [v10 userContext];
    [v12 setObject:v9 forKeyedSubscript:v8];
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __52__BMCoreDuetDiscoverabilitySignalsSource_sendEvent___block_invoke_cold_1();
    }
  }
}

@end