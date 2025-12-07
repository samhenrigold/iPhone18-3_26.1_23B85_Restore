@interface _DKTombstonePolicy
+ (id)defaultPolicy;
- (NSArray)propertiesToFetchForTombstones;
- (NSPredicate)predicateForEventsRequiredToBeTombstoned;
- (_DKTombstonePolicy)initWithRequirements:(id)requirements;
- (id)tombstonesForEvents:(id)events resultingFromRequirementsWithIdentifiers:(id *)identifiers;
- (id)tombstonesForPartialEvents:(id)events resultingFromRequirementsWithIdentifiers:(id *)identifiers;
- (void)eventPredicateForEventsRequiredToBeTombstoned;
@end

@implementation _DKTombstonePolicy

- (NSArray)propertiesToFetchForTombstones
{
  v24 = *MEMORY[0x1E69E9840];
  propertiesToFetchForTombstones = self->_propertiesToFetchForTombstones;
  if (!propertiesToFetchForTombstones)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{@"objectID", @"uuid", @"streamName", 0}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    requirements = [(_DKTombstonePolicy *)self requirements];
    v6 = [requirements countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(requirements);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          propertiesToFetch = [v10 propertiesToFetch];
          if (propertiesToFetch)
          {
            v12 = propertiesToFetch;
            propertiesToFetch2 = [v10 propertiesToFetch];
            v14 = [propertiesToFetch2 count];

            if (v14)
            {
              propertiesToFetch3 = [v10 propertiesToFetch];
              [v4 addObjectsFromArray:propertiesToFetch3];
            }
          }
        }

        v7 = [requirements countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    v16 = [v4 copy];
    v17 = self->_propertiesToFetchForTombstones;
    self->_propertiesToFetchForTombstones = v16;

    propertiesToFetchForTombstones = self->_propertiesToFetchForTombstones;
  }

  return propertiesToFetchForTombstones;
}

+ (id)defaultPolicy
{
  v11[5] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(objc_opt_class());
  v3 = +[(_DKTombstoneRequirement *)_DKSyncStreamsTombstoneRequirement];
  v4 = +[(_DKTombstoneRequirement *)_DKAppIntentsStreamTombstoneRequirement];
  v11[1] = v4;
  v5 = +[(_DKTombstoneRequirement *)_DKAppActivityStreamTombstoneRequirement];
  v11[2] = v5;
  v6 = +[(_DKTombstoneRequirement *)_DKEligibleForPredictionTombstoneRequirement];
  v11[3] = v6;
  v7 = +[(_DKTombstoneRequirement *)_DKAppUsageTombstoneRequirement];
  v11[4] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:5];
  v9 = [v2 initWithRequirements:v8];

  return v9;
}

- (_DKTombstonePolicy)initWithRequirements:(id)requirements
{
  requirementsCopy = requirements;
  v9.receiver = self;
  v9.super_class = _DKTombstonePolicy;
  v6 = [(_DKTombstonePolicy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requirements, requirements);
  }

  return v7;
}

- (NSPredicate)predicateForEventsRequiredToBeTombstoned
{
  v23 = *MEMORY[0x1E69E9840];
  predicateForEventsRequiredToBeTombstoned = self->_predicateForEventsRequiredToBeTombstoned;
  if (!predicateForEventsRequiredToBeTombstoned)
  {
    v4 = objc_alloc(MEMORY[0x1E695DF70]);
    v5 = [MEMORY[0x1E696AE18] predicateWithValue:0];
    v6 = [v4 initWithObjects:{v5, 0}];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    requirements = [(_DKTombstonePolicy *)self requirements];
    v8 = [requirements countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(requirements);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          predicate = [v12 predicate];

          if (predicate)
          {
            predicate2 = [v12 predicate];
            [v6 addObject:predicate2];
          }
        }

        v9 = [requirements countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    v15 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v6];
    v16 = self->_predicateForEventsRequiredToBeTombstoned;
    self->_predicateForEventsRequiredToBeTombstoned = v15;

    predicateForEventsRequiredToBeTombstoned = self->_predicateForEventsRequiredToBeTombstoned;
  }

  return predicateForEventsRequiredToBeTombstoned;
}

- (id)tombstonesForPartialEvents:(id)events resultingFromRequirementsWithIdentifiers:(id *)identifiers
{
  v61 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  if (identifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  else
  {
    v6 = 0;
  }

  date = [MEMORY[0x1E695DF00] date];
  v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
  predicateForEventsRequiredToBeTombstoned = [(_DKTombstonePolicy *)self predicateForEventsRequiredToBeTombstoned];
  v38 = eventsCopy;
  v8 = [eventsCopy filteredArrayUsingPredicate:predicateForEventsRequiredToBeTombstoned];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v54;
    v39 = *v54;
    do
    {
      v12 = 0;
      v43 = v10;
      do
      {
        if (*v54 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v53 + 1) + 8 * v12);
        v14 = [v13 objectForKeyedSubscript:@"streamName"];
        v15 = [v13 objectForKeyedSubscript:@"uuid"];
        v16 = v15;
        if (v14)
        {
          v17 = v15 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (!v17)
        {
          v48 = v12;
          v46 = v15;
          v18 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v15];
          +[_DKSystemEventStreams tombstoneStream];
          v20 = v19 = v14;
          v45 = v18;
          v21 = [_DKUUIDIdentifier withUUID:v18];
          v22 = +[_DKTombstoneMetadataKey eventStreamName];
          v58 = v22;
          v59 = v19;
          v47 = v19;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
          v24 = [_DKEvent eventWithStream:v20 startDate:date endDate:date value:v21 metadata:v23];

          if (v24)
          {
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            requirements = [(_DKTombstonePolicy *)self requirements];
            v26 = [requirements countByEnumeratingWithState:&v49 objects:v57 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v50;
              do
              {
                for (i = 0; i != v27; ++i)
                {
                  if (*v50 != v28)
                  {
                    objc_enumerationMutation(requirements);
                  }

                  v30 = *(*(&v49 + 1) + 8 * i);
                  predicate = [v30 predicate];
                  v32 = [predicate evaluateWithObject:v13];

                  if (v32)
                  {
                    [v30 assignPropertiesToTombstone:v24 extractedFromPartialEvent:v13];
                    if (v6)
                    {
                      identifier = [v30 identifier];

                      if (identifier)
                      {
                        identifier2 = [v30 identifier];
                        [v6 addObject:identifier2];
                      }
                    }
                  }
                }

                v27 = [requirements countByEnumeratingWithState:&v49 objects:v57 count:16];
              }

              while (v27);
            }

            [v40 addObject:v24];
            v11 = v39;
          }

          v10 = v43;
          v14 = v47;
          v12 = v48;
          v16 = v46;
        }

        ++v12;
      }

      while (v12 != v10);
      v10 = [obj countByEnumeratingWithState:&v53 objects:v60 count:16];
    }

    while (v10);
  }

  if (v37)
  {
    *v37 = [v6 copy];
  }

  v35 = [v40 copy];

  return v35;
}

- (void)eventPredicateForEventsRequiredToBeTombstoned
{
  v22 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    v2 = self[4];
    if (!v2)
    {
      v3 = objc_alloc(MEMORY[0x1E695DF70]);
      v4 = [MEMORY[0x1E696AE18] predicateWithValue:0];
      v5 = [v3 initWithObjects:{v4, 0}];

      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      requirements = [selfCopy requirements];
      v7 = [requirements countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v18;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v18 != v9)
            {
              objc_enumerationMutation(requirements);
            }

            v11 = *(*(&v17 + 1) + 8 * i);
            eventPredicate = [v11 eventPredicate];
            if (!eventPredicate)
            {
              eventPredicate = [v11 predicate];
              if (!eventPredicate)
              {
                continue;
              }
            }

            v13 = eventPredicate;
            [v5 addObject:eventPredicate];
          }

          v8 = [requirements countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v8);
      }

      v14 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v5];
      v15 = selfCopy[4];
      selfCopy[4] = v14;

      v2 = selfCopy[4];
    }

    self = v2;
  }

  return self;
}

- (id)tombstonesForEvents:(id)events resultingFromRequirementsWithIdentifiers:(id *)identifiers
{
  v59 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  identifiersCopy = identifiers;
  if (identifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  else
  {
    v6 = 0;
  }

  date = [MEMORY[0x1E695DF00] date];
  v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
  eventPredicateForEventsRequiredToBeTombstoned = [(_DKTombstonePolicy *)self eventPredicateForEventsRequiredToBeTombstoned];
  v37 = eventsCopy;
  v8 = [eventsCopy filteredArrayUsingPredicate:eventPredicateForEventsRequiredToBeTombstoned];

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v52;
    v38 = *v52;
    do
    {
      v12 = 0;
      v41 = v10;
      do
      {
        if (*v52 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v51 + 1) + 8 * v12);
        uUID = [v13 UUID];
        stream = [v13 stream];
        name = [stream name];

        if (name && uUID)
        {
          v17 = +[_DKSystemEventStreams tombstoneStream];
          v46 = uUID;
          v18 = [_DKUUIDIdentifier withUUID:uUID];
          v19 = +[_DKTombstoneMetadataKey eventStreamName];
          v56 = v19;
          v57 = name;
          v45 = name;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          v21 = [_DKEvent eventWithStream:v17 startDate:date endDate:date value:v18 metadata:v20];

          if (v21)
          {
            v44 = v12;
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            requirements = [(_DKTombstonePolicy *)self requirements];
            v23 = [requirements countByEnumeratingWithState:&v47 objects:v55 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v48;
              do
              {
                for (i = 0; i != v24; ++i)
                {
                  if (*v48 != v25)
                  {
                    objc_enumerationMutation(requirements);
                  }

                  v27 = *(*(&v47 + 1) + 8 * i);
                  eventPredicate = [v27 eventPredicate];
                  v29 = eventPredicate;
                  if (eventPredicate)
                  {
                    predicate = eventPredicate;
                  }

                  else
                  {
                    predicate = [v27 predicate];
                  }

                  v31 = predicate;

                  if ([v31 evaluateWithObject:v13])
                  {
                    [v27 assignPropertiesToTombstone:v21 extractedFromEvent:v13];
                    if (v6)
                    {
                      identifier = [v27 identifier];

                      if (identifier)
                      {
                        identifier2 = [v27 identifier];
                        [v6 addObject:identifier2];
                      }
                    }
                  }
                }

                v24 = [requirements countByEnumeratingWithState:&v47 objects:v55 count:16];
              }

              while (v24);
            }

            [v39 addObject:v21];
            v10 = v41;
            v11 = v38;
            v12 = v44;
          }

          name = v45;
          uUID = v46;
        }

        ++v12;
      }

      while (v12 != v10);
      v10 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
    }

    while (v10);
  }

  if (identifiersCopy)
  {
    *identifiersCopy = [v6 copy];
  }

  v34 = [v39 copy];

  return v34;
}

@end