@interface INPersonDeduplicator
+ (id)dedupeINPersons:(id)persons;
@end

@implementation INPersonDeduplicator

+ (id)dedupeINPersons:(id)persons
{
  personsCopy = persons;
  if ([personsCopy count] > 1)
  {
    v5 = objc_alloc_init(NSMutableOrderedSet);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v6 = personsCopy;
    v7 = [v6 countByEnumeratingWithState:&v44 objects:v55 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v45;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v45 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [[INPersonWrapper alloc] initWithINPerson:*(*(&v44 + 1) + 8 * i)];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v44 objects:v55 count:16];
      }

      while (v8);
    }

    v13 = IntentHandlerDefaultLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v6 count];
      v15 = [v5 count];
      *buf = 134218240;
      v52 = v14;
      v53 = 2048;
      v54 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Before deduping: %ld, After deduping: %ld", buf, 0x16u);
    }

    firstObject = [v5 firstObject];
    tuHandle = [firstObject tuHandle];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v18 = v5;
    v19 = [v18 countByEnumeratingWithState:&v40 objects:v50 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v41;
      while (2)
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v41 != v21)
          {
            objc_enumerationMutation(v18);
          }

          tuHandle2 = [*(*(&v40 + 1) + 8 * j) tuHandle];
          v24 = TUHandlesAreCanonicallyEqual();

          if (!v24)
          {

            firstObject2 = objc_alloc_init(NSMutableArray);
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v29 = v18;
            v30 = [v29 countByEnumeratingWithState:&v36 objects:v48 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v37;
              do
              {
                for (k = 0; k != v31; k = k + 1)
                {
                  if (*v37 != v32)
                  {
                    objc_enumerationMutation(v29);
                  }

                  inPerson = [*(*(&v36 + 1) + 8 * k) inPerson];
                  [firstObject2 addObject:inPerson];
                }

                v31 = [v29 countByEnumeratingWithState:&v36 objects:v48 count:16];
              }

              while (v31);
            }

            v4 = [firstObject2 copy];
            goto LABEL_31;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v40 objects:v50 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v26 = IntentHandlerDefaultLog(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "All persons have equivalent handle values", buf, 2u);
    }

    firstObject2 = [v18 firstObject];
    inPerson2 = [firstObject2 inPerson];
    v49 = inPerson2;
    v4 = [NSArray arrayWithObjects:&v49 count:1];

LABEL_31:
  }

  else
  {
    v4 = personsCopy;
  }

  return v4;
}

@end