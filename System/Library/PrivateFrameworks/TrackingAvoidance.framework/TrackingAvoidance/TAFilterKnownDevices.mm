@interface TAFilterKnownDevices
+ (id)removeAndProcessBackgroundDetections:(id)detections deviceRecord:(id)record;
+ (id)removeDuplicateSuspiciousDevices:(id)devices;
+ (id)removeIssuedDevices:(id)devices deviceRecord:(id)record;
+ (id)removeKnownSuspiciousDevices:(id)devices deviceRecord:(id)record;
+ (id)removeMetricsFromKnownDevices:(id)devices deviceRecord:(id)record;
@end

@implementation TAFilterKnownDevices

+ (id)removeKnownSuspiciousDevices:(id)devices deviceRecord:(id)record
{
  v51 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  recordCopy = record;
  v7 = recordCopy;
  v8 = MEMORY[0x277CBEBF8];
  if (devicesCopy && recordCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v30 = devicesCopy;
    obj = devicesCopy;
    v9 = [obj countByEnumeratingWithState:&v36 objects:v50 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v37;
      v32 = *v37;
      do
      {
        v12 = 0;
        v33 = v10;
        do
        {
          if (*v37 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v36 + 1) + 8 * v12);
          if (v13)
          {
            address = [*(*(&v36 + 1) + 8 * v12) address];
            v15 = [v7 isKnownDevice:address];

            address2 = [v13 address];
            v17 = [v7 getDeviceNotificationState:address2];

            if ([v13 immediacyType] == 2)
            {
              address3 = [v13 address];
              v35 = [v7 hasStagedImmediateDetections:address3] ^ 1;
            }

            else
            {
              v35 = 0;
            }

            v19 = TAStatusLog;
            if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
            {
              v20 = v19;
              address4 = [v13 address];
              *buf = 68290563;
              *v41 = 0;
              *&v41[4] = 2082;
              *&v41[6] = "";
              *&v41[14] = 2113;
              *&v41[16] = address4;
              *&v41[24] = 1026;
              *&v41[26] = v15;
              v42 = 1026;
              v43 = v17 == 0;
              v44 = 1026;
              v45 = v17 == 4;
              v46 = 1026;
              v47 = v17 == 3;
              v11 = v32;
              v10 = v33;
              v48 = 1026;
              v49 = v35;
              _os_log_impl(&dword_26F2E2000, v20, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#TAFilterKnownDevices decisions, address:%{private}@, isKnownDevice:%{public}hhd, isUnknownState:%{public}hhd, isPendingReprompt:%{public}hhd, isStaged:%{public}hhd, isFirstImmediateType:%{public}hhd}", buf, 0x3Au);
            }

            if ((v15 & 1) == 0 && ((v17 | 4) == 4 || ((v17 == 3) & v35) == 1))
            {
              [array addObject:v13];
            }

            else
            {
              v22 = TAStatusLog;
              if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
              {
                v23 = v22;
                address5 = [v13 address];
                hexString = [address5 hexString];
                if (v15)
                {
                  v26 = "known device";
                }

                else
                {
                  v26 = "unknown device";
                }

                v27 = [TADeviceRecord notificationInternalStateToString:v17];
                *buf = 138478339;
                *v41 = hexString;
                *&v41[8] = 2082;
                *&v41[10] = v26;
                *&v41[18] = 2114;
                *&v41[20] = v27;
                _os_log_debug_impl(&dword_26F2E2000, v23, OS_LOG_TYPE_DEBUG, "#TAFilterKnownDevices not surfacing notification for %{private}@ due to %{public}s and device state %{public}@", buf, 0x20u);
              }
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v28 = [obj countByEnumeratingWithState:&v36 objects:v50 count:16];
        v10 = v28;
      }

      while (v28);
    }

    v8 = [array copy];
    devicesCopy = v30;
  }

  return v8;
}

+ (id)removeDuplicateSuspiciousDevices:(id)devices
{
  v35 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  if (devicesCopy)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = devicesCopy;
    v5 = devicesCopy;
    v6 = [v5 countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (!v6)
    {
      goto LABEL_21;
    }

    v7 = v6;
    v8 = *v25;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        if (v10)
        {
          if (![*(*(&v24 + 1) + 8 * i) immediacyType])
          {
            v15 = TAStatusLog;
            if (!os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
            {
              continue;
            }

            *buf = 68289283;
            v29 = 0;
            v30 = 2082;
            v31 = "";
            v32 = 2117;
            v33 = v10;
            v12 = v15;
            v13 = OS_LOG_TYPE_ERROR;
            v14 = "{msg%{public}.0s:#TAFilterKnownDevices got TANotificationImmediacyTypeNever device, detection:%{sensitive}@}";
            goto LABEL_14;
          }

          if ([v10 immediacyType] == 3)
          {
            v11 = TAStatusLog;
            if (!os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_FAULT))
            {
              continue;
            }

            *buf = 68289283;
            v29 = 0;
            v30 = 2082;
            v31 = "";
            v32 = 2117;
            v33 = v10;
            v12 = v11;
            v13 = OS_LOG_TYPE_FAULT;
            v14 = "{msg%{public}.0s:#TAFilterKnownDevices got background immediate type. This is unexpected, detection:%{sensitive}@}";
LABEL_14:
            _os_log_impl(&dword_26F2E2000, v12, v13, v14, buf, 0x1Cu);
            continue;
          }

          address = [v10 address];
          v17 = [dictionary objectForKey:address];

          if (!v17 || (v18 = [v17 immediacyType], objc_msgSend(v10, "immediacyType") > v18))
          {
            address2 = [v10 address];
            [dictionary setObject:v10 forKey:address2];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v34 count:16];
      if (!v7)
      {
LABEL_21:

        allValues = [dictionary allValues];
        v21 = [allValues copy];

        devicesCopy = v23;
        goto LABEL_23;
      }
    }
  }

  v21 = MEMORY[0x277CBEBF8];
LABEL_23:

  return v21;
}

+ (id)removeIssuedDevices:(id)devices deviceRecord:(id)record
{
  v31 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  recordCopy = record;
  v7 = recordCopy;
  array = MEMORY[0x277CBEBF8];
  if (devicesCopy && recordCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = devicesCopy;
    v9 = devicesCopy;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          address = [v14 address];
          v16 = [v7 getDeviceNotificationState:address];

          if (v16 == 2)
          {
            v17 = TAStatusLog;
            if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289283;
              v25 = 0;
              v26 = 2082;
              v27 = "";
              v28 = 2117;
              v29 = v14;
              _os_log_impl(&dword_26F2E2000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#TAFilterKnownDevices dropping detection due to Issued state, detection:%{sensitive}@}", buf, 0x1Cu);
            }
          }

          else
          {
            [array addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v20 objects:v30 count:16];
      }

      while (v11);
    }

    devicesCopy = v19;
  }

  return array;
}

+ (id)removeMetricsFromKnownDevices:(id)devices deviceRecord:(id)record
{
  v66 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  recordCopy = record;
  v7 = recordCopy;
  v8 = MEMORY[0x277CBEBF8];
  if (devicesCopy && recordCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v40 = devicesCopy;
    obj = devicesCopy;
    v44 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
    if (v44)
    {
      v42 = *v56;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v56 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v55 + 1) + 8 * i);
          v11 = [v10 key];
          v12 = [v11 isEqualToString:@"DonatingInterVisitMetrics"];

          if (v12)
          {
            v45 = v10;
            additionalInformation = [v10 additionalInformation];
            v14 = [additionalInformation mutableCopy];

            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            allKeys = [v14 allKeys];
            v16 = [allKeys countByEnumeratingWithState:&v51 objects:v64 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v52;
              do
              {
                for (j = 0; j != v17; ++j)
                {
                  if (*v52 != v18)
                  {
                    objc_enumerationMutation(allKeys);
                  }

                  v20 = *(*(&v51 + 1) + 8 * j);
                  if ([v7 isKnownDevice:v20])
                  {
                    v21 = TAStatusLog;
                    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
                    {
                      [(TAFilterKnownDevices *)&v62 removeMetricsFromKnownDevices:v21 deviceRecord:v20, &v63];
                    }

                    [v14 removeObjectForKey:v20];
                  }
                }

                v17 = [allKeys countByEnumeratingWithState:&v51 objects:v64 count:16];
              }

              while (v17);
            }

            v22 = [TAOutgoingRequests alloc];
            date = [v45 date];
            v24 = [(TAOutgoingRequests *)v22 initWithRequestKey:@"DonatingInterVisitMetrics" additionalInformation:v14 date:date];

            [array addObject:v24];
          }

          else
          {
            v25 = [v10 key];
            v26 = [v25 isEqualToString:@"DonatingVisitMetrics"];

            if (v26)
            {
              v46 = v10;
              additionalInformation2 = [v10 additionalInformation];
              v28 = [additionalInformation2 mutableCopy];

              v49 = 0u;
              v50 = 0u;
              v47 = 0u;
              v48 = 0u;
              allKeys2 = [v28 allKeys];
              v30 = [allKeys2 countByEnumeratingWithState:&v47 objects:v61 count:16];
              if (v30)
              {
                v31 = v30;
                v32 = *v48;
                do
                {
                  for (k = 0; k != v31; ++k)
                  {
                    if (*v48 != v32)
                    {
                      objc_enumerationMutation(allKeys2);
                    }

                    v34 = *(*(&v47 + 1) + 8 * k);
                    if ([v7 isKnownDevice:v34])
                    {
                      v35 = TAStatusLog;
                      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
                      {
                        [(TAFilterKnownDevices *)&v59 removeMetricsFromKnownDevices:v35 deviceRecord:v34, &v60];
                      }

                      [v28 removeObjectForKey:v34];
                    }
                  }

                  v31 = [allKeys2 countByEnumeratingWithState:&v47 objects:v61 count:16];
                }

                while (v31);
              }

              v36 = [TAOutgoingRequests alloc];
              date2 = [v46 date];
              v38 = [(TAOutgoingRequests *)v36 initWithRequestKey:@"DonatingVisitMetrics" additionalInformation:v28 date:date2];

              [array addObject:v38];
            }

            else
            {
              [array addObject:v10];
            }
          }
        }

        v44 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
      }

      while (v44);
    }

    v8 = [array copy];
    devicesCopy = v40;
  }

  return v8;
}

+ (id)removeAndProcessBackgroundDetections:(id)detections deviceRecord:(id)record
{
  v22 = *MEMORY[0x277D85DE8];
  detectionsCopy = detections;
  recordCopy = record;
  v7 = recordCopy;
  v8 = MEMORY[0x277CBEBF8];
  if (detectionsCopy && recordCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = detectionsCopy;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v17 + 1) + 8 * i);
          if ([v15 immediacyType] == 3)
          {
            [v7 processBackgroundDetection:v15];
          }

          else
          {
            [array addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    v8 = [array copy];
  }

  return v8;
}

+ (void)removeMetricsFromKnownDevices:(void *)a3 deviceRecord:(void *)a4 .cold.1(_DWORD *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 hexString];
  *a1 = 138477827;
  *a4 = v8;
  OUTLINED_FUNCTION_0(&dword_26F2E2000, v9, v10, "#TATrackingAvoidanceService dropping %{private}@ intervisit metrics since it is from owner, shared, or ignored device");
}

+ (void)removeMetricsFromKnownDevices:(void *)a3 deviceRecord:(void *)a4 .cold.2(_DWORD *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 hexString];
  *a1 = 138477827;
  *a4 = v8;
  OUTLINED_FUNCTION_0(&dword_26F2E2000, v9, v10, "#TAFilterKnownDevices dropping %{private}@ intervisit metrics since it is from owner, shared, or ignored device");
}

@end