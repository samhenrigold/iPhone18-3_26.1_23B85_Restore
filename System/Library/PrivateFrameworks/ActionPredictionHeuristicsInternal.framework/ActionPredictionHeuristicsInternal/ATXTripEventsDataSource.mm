@interface ATXTripEventsDataSource
- (ATXTripEventsDataSource)initWithDevice:(id)device;
- (id)fetchTripEventsFromStartDate:(id)date endDate:(id)endDate error:(id *)error;
- (void)getLocationForMostRelevantTripInRangeFrom:(id)from to:(id)to callback:(id)callback;
@end

@implementation ATXTripEventsDataSource

- (ATXTripEventsDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = ATXTripEventsDataSource;
  v6 = [(ATXTripEventsDataSource *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v8 = objc_opt_new();
    eventStore = v7->_eventStore;
    v7->_eventStore = v8;
  }

  return v7;
}

- (id)fetchTripEventsFromStartDate:(id)date endDate:(id)endDate error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  if (ATXHeuristicCanLearnFromApp(&unk_2850BA290))
  {
    *buf = 0;
    v24 = buf;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__0;
    v27 = __Block_byref_object_dispose__0;
    v28 = objc_opt_new();
    v10 = objc_alloc_init(MEMORY[0x277D3A568]);
    [v10 setFromDate:dateCopy];
    [v10 setToDate:endDateCopy];
    [v10 setTripOptions:0];
    eventStore = self->_eventStore;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __70__ATXTripEventsDataSource_fetchTripEventsFromStartDate_endDate_error___block_invoke;
    v21[3] = &unk_278C3CC48;
    v21[4] = buf;
    v22 = 0;
    [(PPEventStore *)eventStore iterScoredEventsWithQuery:v10 error:&v22 block:v21];
    v12 = v22;
    if (v12)
    {
      v13 = __atxlog_handle_heuristic();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v29 = 138412802;
        v30 = v12;
        v31 = 2114;
        v32 = dateCopy;
        v33 = 2114;
        v34 = endDateCopy;
        _os_log_error_impl(&dword_23E3EA000, v13, OS_LOG_TYPE_ERROR, "Error when fetching trip events from PersonalPortrait: %@ from %{public}@ to %{public}@", v29, 0x20u);
      }

      if (error)
      {
        v14 = v12;
        v15 = 0;
        *error = v12;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v17 = __atxlog_handle_heuristic();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [*(v24 + 5) count];
        v19 = *(v24 + 5);
        *v29 = 134218754;
        v30 = v18;
        v31 = 2114;
        v32 = dateCopy;
        v33 = 2114;
        v34 = endDateCopy;
        v35 = 2112;
        v36 = v19;
        _os_log_impl(&dword_23E3EA000, v17, OS_LOG_TYPE_DEFAULT, "Got %tu trip events from PersonalPortrait from %{public}@ to %{public}@: %@", v29, 0x2Au);
      }

      v15 = *(v24 + 5);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v16 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v16, OS_LOG_TYPE_DEFAULT, "Calendar is not learnable for trip event fetching", buf, 2u);
    }

    v15 = MEMORY[0x277CBEBF8];
  }

  return v15;
}

void __70__ATXTripEventsDataSource_fetchTripEventsFromStartDate_endDate_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }

  else
  {
    v4 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __70__ATXTripEventsDataSource_fetchTripEventsFromStartDate_endDate_error___block_invoke_cold_1(v3, v4);
    }
  }
}

- (void)getLocationForMostRelevantTripInRangeFrom:(id)from to:(id)to callback:(id)callback
{
  v72 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  toCopy = to;
  callbackCopy = callback;
  v62 = 0;
  v11 = [(ATXTripEventsDataSource *)self fetchTripEventsFromStartDate:fromCopy endDate:toCopy error:&v62];
  v12 = v62;
  if (v11 && [v11 count])
  {
    v49 = v12;
    v52 = fromCopy;
    v53 = callbackCopy;
    v51 = toCopy;
    v13 = objc_opt_new();
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v50 = v11;
    v14 = v11;
    v15 = [v14 countByEnumeratingWithState:&v58 objects:v71 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v59;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v59 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v58 + 1) + 8 * i);
          startDate = [v19 startDate];
          v21 = [MEMORY[0x277CBEAA8] now];
          v22 = [startDate compare:v21];

          if (v22 == 1)
          {
            [v13 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v58 objects:v71 count:16];
      }

      while (v16);
    }

    v23 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v13 count];
      *buf = 134217984;
      v70 = v24;
      _os_log_impl(&dword_23E3EA000, v23, OS_LOG_TYPE_DEFAULT, "Got %tu trip events after discarding old trips.", buf, 0xCu);
    }

    v25 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
    v68 = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];
    v27 = [v13 sortedArrayUsingDescriptors:v26];

    if ([v27 count])
    {
      v48 = v27;
      v28 = [v27 objectAtIndexedSubscript:0];
      v29 = __atxlog_handle_heuristic();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v70 = v28;
        _os_log_impl(&dword_23E3EA000, v29, OS_LOG_TYPE_DEFAULT, "Considering first trip: %@", buf, 0xCu);
      }

      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      tripParts = [v28 tripParts];
      v31 = [tripParts countByEnumeratingWithState:&v54 objects:v67 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = 0;
        v34 = *v55;
        do
        {
          for (j = 0; j != v32; ++j)
          {
            if (*v55 != v34)
            {
              objc_enumerationMutation(tripParts);
            }

            v36 = *(*(&v54 + 1) + 8 * j);
            if ([v36 tripMode] == 2)
            {
              mainLocation = [v36 mainLocation];

              v33 = mainLocation;
            }
          }

          v32 = [tripParts countByEnumeratingWithState:&v54 objects:v67 count:16];
        }

        while (v32);

        v27 = v48;
        if (v33)
        {
          name = [v33 name];
          if (name)
          {

            toCopy = v51;
            fromCopy = v52;
            callbackCopy = v53;
          }

          else
          {
            locality = [v33 locality];

            toCopy = v51;
            fromCopy = v52;
            callbackCopy = v53;
            if (!locality)
            {
              v63 = @"location";
              v64 = v33;
              v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
              (*(v53 + 2))(v53, v47, 0);

              v12 = v49;
              v11 = v50;
LABEL_43:

              goto LABEL_44;
            }
          }

          v42 = v25;
          v65[0] = @"location";
          v65[1] = @"locality";
          v66[0] = v33;
          [v33 locality];
          v44 = v43 = callbackCopy;
          name2 = v44;
          if (!v44)
          {
            name2 = [v33 name];
          }

          v66[1] = name2;
          v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:2];
          v43[2](v43, v46, 0);

          if (!v44)
          {
          }

          callbackCopy = v53;
          v12 = v49;
          v11 = v50;
          v25 = v42;
          v27 = v48;
          goto LABEL_43;
        }
      }

      else
      {
      }
    }

    v40 = __atxlog_handle_heuristic();
    toCopy = v51;
    fromCopy = v52;
    v12 = v49;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E3EA000, v40, OS_LOG_TYPE_DEFAULT, "No selected placemark for trips", buf, 2u);
    }

    callbackCopy = v53;
    (*(v53 + 2))(v53, 0, 0);
    v33 = 0;
    v11 = v50;
    goto LABEL_43;
  }

  if (v12)
  {
    v39 = v12;
  }

  else
  {
    v39 = 0;
  }

  (*(callbackCopy + 2))(callbackCopy, 0, v39);
LABEL_44:
}

void __70__ATXTripEventsDataSource_fetchTripEventsFromStartDate_endDate_error___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138543362;
  v6 = v4;
  _os_log_fault_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_FAULT, "Expect trip event for trip query but got %{public}@", &v5, 0xCu);
}

@end