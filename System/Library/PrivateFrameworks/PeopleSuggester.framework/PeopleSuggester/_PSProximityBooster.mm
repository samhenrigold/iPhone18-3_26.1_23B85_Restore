@interface _PSProximityBooster
- (_PSProximityBooster)init;
- (id)suggestionsByBoostingNearbySuggestions:(id)suggestions;
- (void)startMonitoringProximity;
- (void)stopMonitoringProximity;
@end

@implementation _PSProximityBooster

- (_PSProximityBooster)init
{
  v8.receiver = self;
  v8.super_class = _PSProximityBooster;
  v2 = [(_PSProximityBooster *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69C6BA8]);
    peopleDiscovery = v2->_peopleDiscovery;
    v2->_peopleDiscovery = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.peoplesuggester.proximitybooster", v5);
    [(RPPeopleDiscovery *)v2->_peopleDiscovery setDispatchQueue:v6];

    [(RPPeopleDiscovery *)v2->_peopleDiscovery setDiscoveryMode:400];
    [(RPPeopleDiscovery *)v2->_peopleDiscovery setDiscoveryFlags:24];
    [(RPPeopleDiscovery *)v2->_peopleDiscovery setChangeFlags:0xFFFFFFFFLL];
    [(RPPeopleDiscovery *)v2->_peopleDiscovery setPersonFoundHandler:&__block_literal_global_14];
    [(RPPeopleDiscovery *)v2->_peopleDiscovery setPersonLostHandler:&__block_literal_global_15];
    [(RPPeopleDiscovery *)v2->_peopleDiscovery setPersonChangedHandler:&__block_literal_global_19_0];
    [(RPPeopleDiscovery *)v2->_peopleDiscovery setInvalidationHandler:&__block_literal_global_24];
    [(RPPeopleDiscovery *)v2->_peopleDiscovery setInterruptionHandler:&__block_literal_global_27];
  }

  return v2;
}

- (void)startMonitoringProximity
{
  peopleDiscovery = [(_PSProximityBooster *)self peopleDiscovery];
  [peopleDiscovery activateWithCompletion:&__block_literal_global_30];
}

- (void)stopMonitoringProximity
{
  peopleDiscovery = [(_PSProximityBooster *)self peopleDiscovery];
  [peopleDiscovery invalidate];
}

- (id)suggestionsByBoostingNearbySuggestions:(id)suggestions
{
  v64 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  v5 = [MEMORY[0x1E695DFA8] set];
  peopleDiscovery = [(_PSProximityBooster *)self peopleDiscovery];
  dispatchQueue = [peopleDiscovery dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62___PSProximityBooster_suggestionsByBoostingNearbySuggestions___block_invoke;
  block[3] = &unk_1E7C25528;
  block[4] = self;
  v41 = v5;
  v55 = v41;
  dispatch_sync(dispatchQueue, block);

  v40 = [suggestionsCopy mutableCopy];
  obj = [MEMORY[0x1E695DFA8] set];
  v44 = suggestionsCopy;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  reverseObjectEnumerator = [suggestionsCopy reverseObjectEnumerator];
  v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v50 objects:v63 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v51;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v51 != v11)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v13 = *(*(&v50 + 1) + 8 * i);
        recipients = [v13 recipients];
        v15 = [recipients count];

        if (v15 == 1)
        {
          recipients2 = [v13 recipients];
          firstObject = [recipients2 firstObject];

          contact = [firstObject contact];
          identifier = [contact identifier];

          if (identifier && [v41 containsObject:identifier])
          {
            [v40 removeObject:v13];
            [v40 insertObject:v13 atIndex:0];
            reason = [v13 reason];
            [reason stringByAppendingString:@" - "];
            v22 = v21 = reverseObjectEnumerator;
            v23 = [v22 stringByAppendingString:@"Proximity Boosted"];
            [v13 setReason:v23];

            reasonType = [v13 reasonType];
            v25 = [reasonType stringByAppendingString:@" - "];
            v26 = [v25 stringByAppendingString:@"Proximity Boosted"];
            [v13 setReasonType:v26];

            reverseObjectEnumerator = v21;
            [obj addObject:identifier];
          }
        }
      }

      v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v50 objects:v63 count:16];
    }

    while (v10);
  }

  v27 = [v40 copy];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obja = obj;
  v28 = [obja countByEnumeratingWithState:&v46 objects:v62 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v47;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v47 != v30)
        {
          objc_enumerationMutation(obja);
        }

        v32 = *(*(&v46 + 1) + 8 * j);
        v45[0] = MEMORY[0x1E69E9820];
        v45[1] = 3221225472;
        v45[2] = __62___PSProximityBooster_suggestionsByBoostingNearbySuggestions___block_invoke_38;
        v45[3] = &unk_1E7C25690;
        v45[4] = v32;
        v33 = MEMORY[0x1B8C8C060](v45);
        v34 = [v44 indexOfObjectPassingTest:v33];
        v35 = [v27 indexOfObjectPassingTest:v33];
        v36 = +[_PSLogging heuristicsChannel];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v34];
          v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v35];
          *buf = 138412802;
          v57 = v32;
          v58 = 2112;
          v59 = v37;
          v60 = 2112;
          v61 = v38;
          _os_log_debug_impl(&dword_1B5ED1000, v36, OS_LOG_TYPE_DEBUG, "Boosting suggestion with contactID %@ from index %@ to index %@", buf, 0x20u);
        }
      }

      v29 = [obja countByEnumeratingWithState:&v46 objects:v62 count:16];
    }

    while (v29);
  }

  return v27;
}

@end