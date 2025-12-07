@interface CADDiagnosticsCalDAVSpotlightLogCollector
- (id)findAllLogFiles:(id)files;
- (id)parseFilenameDates:(id)dates context:(id)context;
- (id)sortAndTrimLogFiles:(id)files context:(id)context;
- (void)collect:(id)collect;
- (void)determineExpectedOutputFiles:(id)files;
@end

@implementation CADDiagnosticsCalDAVSpotlightLogCollector

- (void)determineExpectedOutputFiles:(id)files
{
  v21 = *MEMORY[0x277D85DE8];
  filesCopy = files;
  v5 = [(CADDiagnosticsCalDAVSpotlightLogCollector *)self findAllLogFiles:filesCopy];
  [filesCopy log:{@"Found %lu spotlight logs", objc_msgSend(v5, "count")}];
  v6 = [(CADDiagnosticsCalDAVSpotlightLogCollector *)self sortAndTrimLogFiles:v5 context:filesCopy];
  [filesCopy log:{@"Including %lu spotlight logs", objc_msgSend(v6, "count")}];
  objc_storeStrong(&self->_orderedInputURLs, v6);
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        lastPathComponent = [*(*(&v16 + 1) + 8 * v12) lastPathComponent];
        v14 = [filesCopy temporaryFileForName:lastPathComponent];
        [filesCopy setStatus:0 forFile:v14];
        [(NSArray *)v7 addObject:v14];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  orderedOutputURLs = self->_orderedOutputURLs;
  self->_orderedOutputURLs = v7;
}

- (id)findAllLogFiles:(id)files
{
  v26 = *MEMORY[0x277D85DE8];
  filesCopy = files;
  v4 = DACustomLogDirectory();
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v24 = 0;
  v6 = [defaultManager contentsOfDirectoryAtPath:v4 error:&v24];
  v7 = v24;

  if (!v6)
  {
    [filesCopy logError:{@"Unable to find spotlight logs: %@", v7}];
  }

  v16 = v7;
  v17 = v4;
  v19 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4 isDirectory:1];
  v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if ([v13 hasPrefix:@"SpotlightLog"] && (objc_msgSend(v13, "containsString:", @"-latest") & 1) == 0)
        {
          v14 = [v19 URLByAppendingPathComponent:v13];
          if (v14)
          {
            [filesCopy log:{@"Found log file %@", v13}];
            [v18 addObject:v14];
          }

          else
          {
            [filesCopy logError:{@"Unable to construct URL for file %@; skipping", v13}];
          }
        }

        else
        {
          [filesCopy log:{@"Ignoring irrelevant file %@", v13}];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v10);
  }

  return v18;
}

- (id)sortAndTrimLogFiles:(id)files context:(id)context
{
  contextCopy = context;
  filesCopy = files;
  v8 = [filesCopy mutableCopy];
  v9 = [(CADDiagnosticsCalDAVSpotlightLogCollector *)self parseFilenameDates:filesCopy context:contextCopy];

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __73__CADDiagnosticsCalDAVSpotlightLogCollector_sortAndTrimLogFiles_context___block_invoke;
  v15 = &unk_27851AF80;
  v10 = v9;
  v16 = v10;
  [v8 sortUsingComparator:&v12];
  if ([v8 count] >= 0x15)
  {
    [contextCopy log:{@"Too many spotlight logs; only including the most recent %i", 20, v12, v13, v14, v15}];
    [v8 removeObjectsInRange:{20, objc_msgSend(v8, "count") - 20}];
  }

  return v8;
}

uint64_t __73__CADDiagnosticsCalDAVSpotlightLogCollector_sortAndTrimLogFiles_context___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:0.0];
  }

  v10 = v9;

  v11 = [*(a1 + 32) objectForKeyedSubscript:v6];

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:0.0];
  }

  v13 = v12;

  v14 = [v13 compare:v10];
  return v14;
}

- (id)parseFilenameDates:(id)dates context:(id)context
{
  v30 = *MEMORY[0x277D85DE8];
  datesCopy = dates;
  contextCopy = context;
  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v6 setDateStyle:1];
  v22 = v6;
  [v6 setDateFormat:@"yyyy_MM_dd_HH_mm_ssZZZ"];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = datesCopy;
  v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        lastPathComponent = [v11 lastPathComponent];
        v13 = [lastPathComponent rangeOfString:@".log"];
        v14 = [lastPathComponent rangeOfString:@"_"];
        if (v13 == 0x7FFFFFFFFFFFFFFFLL || v14 == 0x7FFFFFFFFFFFFFFFLL || v14 >= v13)
        {
          [contextCopy logError:{@"Unexpected log file name: %@", lastPathComponent}];
        }

        else
        {
          v17 = [lastPathComponent substringWithRange:{v14 + 1, v13 + ~v14}];
          v18 = [v22 dateFromString:v17];
          v19 = v18;
          if (v18)
          {
            [v21 setObject:v18 forKeyedSubscript:v11];
          }

          else
          {
            [contextCopy logError:{@"Couldn't parse %@ into a date", v17}];
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  return v21;
}

- (void)collect:(id)collect
{
  v24 = *MEMORY[0x277D85DE8];
  collectCopy = collect;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  selfCopy = self;
  obj = self->_orderedInputURLs;
  v5 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v20;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v20 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v19 + 1) + 8 * v9);
      v11 = [(NSArray *)selfCopy->_orderedOutputURLs objectAtIndexedSubscript:v7];
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v18 = 0;
      v13 = [defaultManager copyItemAtURL:v10 toURL:v11 error:&v18];
      v14 = v18;

      if (v13)
      {
        [collectCopy setStatus:2 forFile:v11];
      }

      else
      {
        [collectCopy logError:{@"Failed to copy log from %@ to %@: %@", v10, v11, v14}];
      }

      canceled = [collectCopy canceled];

      if (canceled)
      {
        break;
      }

      ++v7;
      if (v6 == ++v9)
      {
        v6 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

@end