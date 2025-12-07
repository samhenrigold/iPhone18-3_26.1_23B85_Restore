@interface BMCoreRoutineProvider
- (id)locationEvents;
@end

@implementation BMCoreRoutineProvider

- (id)locationEvents
{
  defaultManager = [MEMORY[0x277D01280] defaultManager];
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  array = [MEMORY[0x277CBEB18] array];
  v4 = dispatch_semaphore_create(0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__BMCoreRoutineProvider_locationEvents__block_invoke;
  v8[3] = &unk_278D06670;
  v10 = &v11;
  v5 = v4;
  v9 = v5;
  [defaultManager fetchLocationsOfInterestVisitedSinceDate:v3 withHandler:v8];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __39__BMCoreRoutineProvider_locationEvents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v33 = v5;
    v39 = a1;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v5;
    v36 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v36)
    {
      v35 = *v50;
      do
      {
        v7 = 0;
        do
        {
          if (*v50 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v37 = v7;
          v8 = *(*(&v49 + 1) + 8 * v7);
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v41 = v8;
          v38 = [v8 visits];
          v42 = [v38 countByEnumeratingWithState:&v45 objects:v53 count:16];
          if (v42)
          {
            v40 = *v46;
            do
            {
              for (i = 0; i != v42; ++i)
              {
                if (*v46 != v40)
                {
                  objc_enumerationMutation(v38);
                }

                v10 = *(*(&v45 + 1) + 8 * i);
                v11 = objc_autoreleasePoolPush();
                v12 = [v41 identifier];
                v13 = [v12 UUIDString];

                if (v13)
                {
                  v44 = v11;
                  v14 = +[BMItemType locationIdentifier];
                  v43 = [BMItem itemWithType:v14 stringValue:v13];

                  v15 = [BMEvent alloc];
                  v16 = [v10 entryDate];
                  v17 = [v10 exitDate];
                  v18 = [(BMEvent *)v15 initWithStartDate:v16 endDate:v17 item:v43];

                  [*(*(*(v39 + 40) + 8) + 40) addObject:v18];
                  v19 = [BMItem alloc];
                  v20 = +[BMItemType enterLocation];
                  v21 = [(BMItem *)v19 initWithType:v20 value:v13];

                  v22 = [BMEvent alloc];
                  v23 = [v10 entryDate];
                  v24 = [v10 entryDate];
                  v25 = [(BMEvent *)v22 initWithStartDate:v23 endDate:v24 item:v21];

                  [*(*(*(v39 + 40) + 8) + 40) addObject:v25];
                  v26 = [BMItem alloc];
                  v27 = +[BMItemType exitLocation];
                  v28 = [(BMItem *)v26 initWithType:v27 value:v13];

                  v29 = [BMEvent alloc];
                  v30 = [v10 exitDate];
                  v31 = [v10 exitDate];
                  v32 = [(BMEvent *)v29 initWithStartDate:v30 endDate:v31 item:v28];

                  v11 = v44;
                  [*(*(*(v39 + 40) + 8) + 40) addObject:v32];
                }

                objc_autoreleasePoolPop(v11);
              }

              v42 = [v38 countByEnumeratingWithState:&v45 objects:v53 count:16];
            }

            while (v42);
          }

          v7 = v37 + 1;
        }

        while (v37 + 1 != v36);
        v36 = [obj countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v36);
    }

    v6 = 0;
    v5 = v33;
    a1 = v39;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

@end