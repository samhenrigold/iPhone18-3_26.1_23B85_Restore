@interface ATXFlightStatusDataSource
- (ATXFlightStatusDataSource)initWithDevice:(id)device;
- (BOOL)_flightIDIsValid:(id)valid;
- (void)flightStatusForFlight:(id)flight callback:(id)callback;
@end

@implementation ATXFlightStatusDataSource

- (ATXFlightStatusDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = ATXFlightStatusDataSource;
  v6 = [(ATXFlightStatusDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (BOOL)_flightIDIsValid:(id)valid
{
  validCopy = valid;
  v4 = [validCopy objectForKeyedSubscript:@"airlineCode"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_11:
    v17 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ATXFlightStatusDataSource _flightIDIsValid:];
    }

    goto LABEL_13;
  }

  v5 = [validCopy objectForKeyedSubscript:@"airlineCode"];
  v6 = [v5 isEqualToString:&stru_2850AD368];

  if (v6)
  {
    goto LABEL_11;
  }

  v7 = [validCopy objectForKeyedSubscript:@"arrivalAirportCode"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_16:
    v17 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ATXFlightStatusDataSource _flightIDIsValid:];
    }

    goto LABEL_13;
  }

  v8 = [validCopy objectForKeyedSubscript:@"arrivalAirportCode"];
  v9 = [v8 isEqualToString:&stru_2850AD368];

  if (v9)
  {
    goto LABEL_16;
  }

  v10 = [validCopy objectForKeyedSubscript:@"flightNumber"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_19:
    v17 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ATXFlightStatusDataSource _flightIDIsValid:];
    }

    goto LABEL_13;
  }

  v11 = [validCopy objectForKeyedSubscript:@"flightNumber"];
  v12 = [v11 isEqual:&unk_2850BA4D0];

  if (v12)
  {
    goto LABEL_19;
  }

  v13 = [validCopy objectForKeyedSubscript:@"expectedDepartureTimestamp"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_22:
    v17 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [ATXFlightStatusDataSource _flightIDIsValid:];
    }

LABEL_13:

    v16 = 0;
    goto LABEL_14;
  }

  v14 = [validCopy objectForKeyedSubscript:@"expectedDepartureTimestamp"];
  v15 = [v14 isEqual:&unk_2850BA4D0];

  if (v15)
  {
    goto LABEL_22;
  }

  v16 = 1;
LABEL_14:

  return v16;
}

- (void)flightStatusForFlight:(id)flight callback:(id)callback
{
  flightCopy = flight;
  callbackCopy = callback;
  v8 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ATXFlightStatusDataSource flightStatusForFlight:flightCopy callback:v8];
  }

  if (![(ATXFlightStatusDataSource *)self _flightIDIsValid:flightCopy])
  {
    v16 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ATXFlightStatusDataSource flightStatusForFlight:callback:];
    }

    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA050];
    v19 = 2048;
    goto LABEL_12;
  }

  if (!objc_opt_class())
  {
    v20 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [ATXFlightStatusDataSource flightStatusForFlight:callback:];
    }

    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA050];
    v19 = 3328;
LABEL_12:
    v11 = [v17 errorWithDomain:v18 code:v19 userInfo:0];
    callbackCopy[2](callbackCopy, 0, v11);
    goto LABEL_13;
  }

  v9 = objc_alloc(MEMORY[0x277CBEAA8]);
  v10 = [flightCopy objectForKeyedSubscript:@"expectedDepartureTimestamp"];
  [v10 doubleValue];
  v11 = [v9 initWithTimeIntervalSinceReferenceDate:?];

  v12 = [MEMORY[0x277D0A9C8] flightFactoryClassWithProvider:*MEMORY[0x277D0A9C0]];
  v13 = [flightCopy objectForKeyedSubscript:@"flightNumber"];
  unsignedIntegerValue = [v13 unsignedIntegerValue];
  v15 = [flightCopy objectForKeyedSubscript:@"airlineCode"];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __60__ATXFlightStatusDataSource_flightStatusForFlight_callback___block_invoke;
  v21[3] = &unk_278C3D2F8;
  v23 = callbackCopy;
  v22 = flightCopy;
  [v12 loadFlightsWithNumber:unsignedIntegerValue airlineCode:v15 date:v11 dateType:1 completionHandler:v21];

LABEL_13:
}

void __60__ATXFlightStatusDataSource_flightStatusForFlight_callback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v75 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6 && [v5 count])
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v9 = v5;
    v52 = [v9 countByEnumeratingWithState:&v63 objects:v74 count:16];
    if (v52)
    {
      v10 = *v64;
      v56 = v5;
      v57 = a1;
      v55 = v9;
      v51 = *v64;
      do
      {
        v11 = 0;
        do
        {
          if (*v64 != v10)
          {
            objc_enumerationMutation(v9);
          }

          v53 = v11;
          v12 = *(*(&v63 + 1) + 8 * v11);
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          obj = [v12 legs];
          v13 = [obj countByEnumeratingWithState:&v59 objects:v73 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v60;
            while (2)
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v60 != v15)
                {
                  objc_enumerationMutation(obj);
                }

                v17 = *(*(&v59 + 1) + 8 * i);
                v18 = [v17 arrival];
                v19 = [v18 airport];
                v20 = [v19 IATACode];

                if (v20)
                {
                  v21 = [*(a1 + 32) objectForKeyedSubscript:@"arrivalAirportCode"];
                  v22 = [v20 isEqualToString:v21];

                  if (v22)
                  {
                    v23 = [v17 departure];
                    v24 = [v23 time];
                    v25 = [v24 date];

                    v26 = [v17 departure];
                    v27 = [v26 delayFromSchedule];

                    v28 = [v17 arrival];
                    v29 = [v28 time];
                    v30 = [v29 date];

                    v31 = [v17 arrival];
                    v32 = [v31 delayFromSchedule];

                    v33 = [v17 arrival];
                    v34 = [v33 airport];
                    [v34 location];
                    v36 = v35;
                    v38 = v37;

                    if (v25 && v27 && v30 && v32)
                    {
                      v71[0] = @"estimatedDepartureTimestamp";
                      v42 = MEMORY[0x277CCABB0];
                      v54 = v25;
                      [v25 timeIntervalSinceReferenceDate];
                      v43 = [v42 numberWithDouble:?];
                      v72[0] = v43;
                      v72[1] = v27;
                      v71[1] = @"departureDelay";
                      v71[2] = @"arrivalAirport";
                      v72[2] = v20;
                      v71[3] = @"estimatedArrivalTimestamp";
                      v44 = MEMORY[0x277CCABB0];
                      [v30 timeIntervalSinceReferenceDate];
                      v45 = [v44 numberWithDouble:?];
                      v72[3] = v45;
                      v72[4] = v32;
                      v71[4] = @"arrivalDelay";
                      v71[5] = @"arrivalAirportLocation";
                      v69[0] = @"lat";
                      v46 = [MEMORY[0x277CCABB0] numberWithDouble:v36];
                      v69[1] = @"lon";
                      v70[0] = v46;
                      v47 = [MEMORY[0x277CCABB0] numberWithDouble:v38];
                      v70[1] = v47;
                      v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:2];
                      v72[5] = v48;
                      v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:6];

                      v50 = __atxlog_handle_heuristic();
                      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412290;
                        v68 = v49;
                        _os_log_impl(&dword_23E3EA000, v50, OS_LOG_TYPE_INFO, "Received metadata about the flight from FlightUtilities. Flight card: %@", buf, 0xCu);
                      }

                      (*(*(v57 + 40) + 16))();
                      v6 = 0;
                      v5 = v56;
                      goto LABEL_36;
                    }

                    a1 = v57;
                  }
                }
              }

              v14 = [obj countByEnumeratingWithState:&v59 objects:v73 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }

          v11 = v53 + 1;
          v6 = 0;
          v5 = v56;
          v9 = v55;
          v10 = v51;
        }

        while (v53 + 1 != v52);
        v52 = [v55 countByEnumeratingWithState:&v63 objects:v74 count:16];
      }

      while (v52);
    }

    v39 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      __60__ATXFlightStatusDataSource_flightStatusForFlight_callback___block_invoke_cold_1();
    }

    v40 = *(a1 + 40);
    v41 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:2048 userInfo:0];
    (*(v40 + 16))(v40, 0, v41);
    goto LABEL_32;
  }

  v7 = __atxlog_handle_heuristic();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __60__ATXFlightStatusDataSource_flightStatusForFlight_callback___block_invoke_cold_2(v6, v7);
  }

  v8 = *(a1 + 40);
  if (!v6)
  {
    v41 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:2048 userInfo:0];
    (*(v8 + 16))(v8, 0, v41);
LABEL_32:

    goto LABEL_36;
  }

  (*(v8 + 16))(*(a1 + 40), 0, v6);
LABEL_36:
}

- (void)flightStatusForFlight:(uint64_t)a1 callback:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_DEBUG, "Requested flight status with flightID: %@", &v2, 0xCu);
}

void __60__ATXFlightStatusDataSource_flightStatusForFlight_callback___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23E3EA000, a2, OS_LOG_TYPE_ERROR, "Encountered an error, or got back no flights -- Error: %@", &v2, 0xCu);
}

@end