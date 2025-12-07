@interface _DKPrivacyPolicyEnforcer
+ (id)privacyPolicyEnforcer;
- (id)enforcePrivacy:(id)privacy;
@end

@implementation _DKPrivacyPolicyEnforcer

+ (id)privacyPolicyEnforcer
{
  if (privacyPolicyEnforcer_onceToken != -1)
  {
    +[_DKPrivacyPolicyEnforcer privacyPolicyEnforcer];
  }

  v3 = privacyPolicyEnforcer_enforcer;

  return v3;
}

- (id)enforcePrivacy:(id)privacy
{
  v63 = *MEMORY[0x1E69E9840];
  privacyCopy = privacy;
  array = [MEMORY[0x1E695DF70] array];
  v4 = MEMORY[0x1E696AE18];
  v5 = +[_CDSiriLearningSettings sharedInstance];
  allLearningDisabledBundleIDs = [v5 allLearningDisabledBundleIDs];
  v7 = [v4 predicateWithFormat:@"SELF.source.bundleID IN %@", allLearningDisabledBundleIDs];

  if (+[_CDDeviceInfo isRunningOnInternalBuild])
  {
    v8 = [privacyCopy filteredArrayUsingPredicate:v7];
    if ([v8 count])
    {
      v9 = MEMORY[0x1E695DFD8];
      v10 = [v8 valueForKeyPath:@"source.bundleID"];
      v11 = [v9 setWithArray:v10];

      v12 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v62 = v11;
        _os_log_impl(&dword_191750000, v12, OS_LOG_TYPE_INFO, "Filtered objects for bundles with Siri Learning disabled: %@", buf, 0xCu);
      }
    }
  }

  v48 = v7;
  v13 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v7];
  v14 = [privacyCopy filteredArrayUsingPredicate:v13];

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (v16)
  {
    v17 = v16;
    v55 = *v57;
    v18 = 0x1E7366000uLL;
    v49 = v15;
    do
    {
      v19 = 0;
      v50 = v17;
      do
      {
        if (*v57 != v55)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v56 + 1) + 8 * v19);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v20;
          stream = [v20 stream];
          name = [stream name];

          v23 = [_CDEventStreams privacyPolicyForEventStreamName:name];
          if (!v23)
          {
            v23 = +[_CDPrivacyPolicy sharedPrivacyPolicy];
          }

          if (![v23 canPersistOnStorage])
          {

            goto LABEL_22;
          }

          [v23 temporalPrecision];
          v24 = v20;
          if (v25 != 0.0)
          {
            startDate = [v20 startDate];
            [startDate timeIntervalSinceReferenceDate];
            v28 = v27;

            [v23 temporalPrecision];
            v30 = v29 * floor(v28 / v29);
            endDate = [v20 endDate];
            [endDate timeIntervalSinceReferenceDate];
            v33 = v32;

            [v23 temporalPrecision];
            v35 = v34 * floor(v33 / v34);
            v52 = *(v18 + 1528);
            stream2 = [v20 stream];
            source = [v20 source];
            v53 = name;
            v37 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v30];
            v38 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v35];
            value = [v20 value];
            [v20 confidence];
            v41 = v40;
            [v20 metadata];
            v43 = v42 = v18;
            v24 = [v52 eventWithStream:stream2 source:source startDate:v37 endDate:v38 value:value confidence:v43 metadata:v41];

            v18 = v42;
            v17 = v50;

            v15 = v49;
            [v24 setShouldSync:{objc_msgSend(v20, "shouldSync")}];
            uUID = [v20 UUID];
            [v24 setUUID:uUID];

            [v24 setCompatibilityVersion:{objc_msgSend(v20, "compatibilityVersion")}];
            timeZone = [v20 timeZone];
            [v24 setTimeZone:timeZone];

            name = v53;
          }

          v20 = v24;
        }

        if (!v20)
        {
          goto LABEL_23;
        }

        [array addObject:v20];
LABEL_22:

LABEL_23:
        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v56 objects:v60 count:16];
    }

    while (v17);
  }

  v46 = [array copy];

  return v46;
}

@end