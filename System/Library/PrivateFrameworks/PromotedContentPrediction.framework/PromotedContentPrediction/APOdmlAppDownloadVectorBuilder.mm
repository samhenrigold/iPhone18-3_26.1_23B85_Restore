@interface APOdmlAppDownloadVectorBuilder
- (double)weightForEvents:(id)events;
- (id)eventsBetween:(id)between and:(id)and;
@end

@implementation APOdmlAppDownloadVectorBuilder

- (id)eventsBetween:(id)between and:(id)and
{
  andCopy = and;
  betweenCopy = between;
  v7 = objc_alloc_init(APOdmlBiomeSQLQuery);
  v8 = [(APOdmlBiomeSQLQuery *)v7 query:@"App.Install" startDate:betweenCopy endDate:andCopy];

  return v8;
}

- (double)weightForEvents:(id)events
{
  v24 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  date = [MEMORY[0x277CBEAA8] date];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = eventsCopy;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = [*(*(&v19 + 1) + 8 * i) objectForKey:{@"absoluteTimestamp", v19}];
        v13 = MEMORY[0x277CBEAA8];
        [v12 doubleValue];
        v14 = [v13 dateWithTimeIntervalSince1970:?];
        [date timeIntervalSinceDate:v14];
        v16 = v15;

        [(APOdmlVectorBuilder *)self exponentialDecayConstant];
        v10 = v10 + exp(v16 / -86400.0 * v17);
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  return v10;
}

@end