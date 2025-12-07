@interface APOdmlBiomeSQLQuery
- (APOdmlBiomeSQLQuery)init;
- (id)getRowsFromResults:(id)results;
- (id)query:(id)query startDate:(id)date endDate:(id)endDate;
@end

@implementation APOdmlBiomeSQLQuery

- (APOdmlBiomeSQLQuery)init
{
  v5.receiver = self;
  v5.super_class = APOdmlBiomeSQLQuery;
  v2 = [(APOdmlBiomeSQLQuery *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CF1A88]);
    [(APOdmlBiomeSQLQuery *)v2 setDatabase:v3];
  }

  return v2;
}

- (id)query:(id)query startDate:(id)date endDate:(id)endDate
{
  v25 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  queryCopy = query;
  database = [(APOdmlBiomeSQLQuery *)self database];
  v12 = [(APOdmlBiomeSQLQuery *)self formatEventName:queryCopy];

  if (dateCopy && endDateCopy)
  {
    [dateCopy timeIntervalSince1970];
    v14 = v13;
    [endDateCopy timeIntervalSince1970];
    v16 = [database executeQuery:{@"SELECT * FROM %@ WHERE eventTimestamp > %f AND eventTimestamp < %f", v12, v14, v15}];

    error = [v16 error];

    if (error)
    {
      v18 = OdmlLogForCategory(2uLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = [database executeQuery:{@"SELECT * FROM %@", v12}];

    error2 = [v16 error];

    if (error2)
    {
      v18 = OdmlLogForCategory(2uLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
LABEL_8:
        error3 = [v16 error];
        *buf = 138412290;
        v24 = error3;
        _os_log_impl(&dword_260ECB000, v18, OS_LOG_TYPE_DEFAULT, "Biome SQL query error: %@", buf, 0xCu);
      }

LABEL_9:

      v21 = 0;
      goto LABEL_11;
    }
  }

  v21 = [(APOdmlBiomeSQLQuery *)self getRowsFromResults:v16];
LABEL_11:

  return v21;
}

- (id)getRowsFromResults:(id)results
{
  resultsCopy = results;
  array = [MEMORY[0x277CBEB18] array];
  if ([resultsCopy next])
  {
    do
    {
      v5 = [resultsCopy row];
      [array addObject:v5];
    }

    while (([resultsCopy next] & 1) != 0);
  }

  v6 = [array copy];

  return v6;
}

@end