@interface HMDMediaPropertyResponse
+ (id)groupedProfileResponses:(id)responses;
+ (id)propertyResponsesFromRequests:(id)requests error:(id)error;
+ (id)responseWithRequest:(id)request error:(id)error;
+ (id)responseWithRequest:(id)request value:(id)value updatedTime:(id)time;
+ (id)responsesFromSerializedResponse:(id)response requests:(id)requests home:(id)home;
+ (id)serializeResponses:(id)responses;
- (HMDMediaPropertyResponse)initWithRequest:(id)request error:(id)error;
- (HMDMediaPropertyResponse)initWithRequest:(id)request value:(id)value updatedTime:(id)time;
- (id)description;
@end

@implementation HMDMediaPropertyResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  request = [(HMDMediaPropertyResponse *)self request];
  value = [(HMDMediaPropertyResponse *)self value];
  error = [(HMDMediaPropertyResponse *)self error];
  v7 = [v3 stringWithFormat:@"<MPRes: %@ (val: %@, err: %@)>", request, value, error];

  return v7;
}

- (HMDMediaPropertyResponse)initWithRequest:(id)request value:(id)value updatedTime:(id)time
{
  requestCopy = request;
  valueCopy = value;
  v16.receiver = self;
  v16.super_class = HMDMediaPropertyResponse;
  v10 = [(HMDMediaPropertyResponse *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_request, request);
    objc_storeStrong(&v11->_value, value);
    valueUpdatedTime = v11->_valueUpdatedTime;
    if (valueUpdatedTime)
    {
      date = valueUpdatedTime;
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    v14 = v11->_valueUpdatedTime;
    v11->_valueUpdatedTime = date;
  }

  return v11;
}

- (HMDMediaPropertyResponse)initWithRequest:(id)request error:(id)error
{
  requestCopy = request;
  errorCopy = error;
  v12.receiver = self;
  v12.super_class = HMDMediaPropertyResponse;
  v9 = [(HMDMediaPropertyResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    objc_storeStrong(&v10->_error, error);
  }

  return v10;
}

+ (id)responseWithRequest:(id)request value:(id)value updatedTime:(id)time
{
  timeCopy = time;
  valueCopy = value;
  requestCopy = request;
  v11 = [[self alloc] initWithRequest:requestCopy value:valueCopy updatedTime:timeCopy];

  return v11;
}

+ (id)responseWithRequest:(id)request error:(id)error
{
  errorCopy = error;
  requestCopy = request;
  v8 = [[self alloc] initWithRequest:requestCopy error:errorCopy];

  return v8;
}

+ (id)responsesFromSerializedResponse:(id)response requests:(id)requests home:(id)home
{
  v69 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  requestsCopy = requests;
  homeCopy = home;
  array = [MEMORY[0x277CBEB18] array];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v36 = responseCopy;
  obj = [responseCopy allKeys];
  v39 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (v39)
  {
    v37 = *v59;
    *&v8 = 138543618;
    v34 = v8;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v59 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v58 + 1) + 8 * i);
        v49 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v10];
        v42 = [homeCopy mediaProfileWithUUID:?];
        if (v42)
        {
          v40 = i;
          v11 = [v36 objectForKeyedSubscript:v10];
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          allKeys = [v11 allKeys];
          v47 = [allKeys countByEnumeratingWithState:&v54 objects:v63 count:16];
          if (v47)
          {
            v45 = *v55;
            v46 = v11;
            do
            {
              v12 = 0;
              do
              {
                if (*v55 != v45)
                {
                  objc_enumerationMutation(allKeys);
                }

                v48 = v12;
                v13 = *(*(&v54 + 1) + 8 * v12);
                v50 = 0u;
                v51 = 0u;
                v52 = 0u;
                v53 = 0u;
                v14 = requestsCopy;
                v15 = [v14 countByEnumeratingWithState:&v50 objects:v62 count:16];
                if (v15)
                {
                  v16 = v15;
                  v17 = *v51;
LABEL_14:
                  v18 = 0;
                  while (1)
                  {
                    if (*v51 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v19 = *(*(&v50 + 1) + 8 * v18);
                    mediaProfile = [v19 mediaProfile];
                    uniqueIdentifier = [mediaProfile uniqueIdentifier];
                    if ([uniqueIdentifier isEqual:v49])
                    {
                      property = [v19 property];
                      v23 = [v13 isEqual:property];

                      if (v23)
                      {
                        v24 = v19;

                        if (v24)
                        {
                          goto LABEL_26;
                        }

                        goto LABEL_25;
                      }
                    }

                    else
                    {
                    }

                    if (v16 == ++v18)
                    {
                      v16 = [v14 countByEnumeratingWithState:&v50 objects:v62 count:16];
                      if (v16)
                      {
                        goto LABEL_14;
                      }

                      break;
                    }
                  }
                }

LABEL_25:
                v24 = [HMDMediaPropertyRequest requestWithProperty:v13 mediaProfile:v42, v34];
LABEL_26:
                v11 = v46;
                v25 = [v46 errorFromDataForKey:v13];
                if (v25)
                {
                  v26 = [HMDMediaPropertyResponse responseWithRequest:v24 error:v25];
                }

                else
                {
                  v27 = [v46 objectForKeyedSubscript:v13];
                  date = [MEMORY[0x277CBEAA8] date];
                  v26 = [HMDMediaPropertyResponse responseWithRequest:v24 value:v27 updatedTime:date];
                }

                [array addObject:v26];

                v12 = v48 + 1;
              }

              while (v48 + 1 != v47);
              v47 = [allKeys countByEnumeratingWithState:&v54 objects:v63 count:16];
            }

            while (v47);
          }

          i = v40;
        }

        else
        {
          v29 = objc_autoreleasePoolPush();
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = HMFGetLogIdentifier();
            *buf = v34;
            v65 = v31;
            v66 = 2112;
            v67 = v10;
            _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@deserializeMediaResponse: Cannot find mediaProfile with identifier %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v29);
        }
      }

      v39 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
    }

    while (v39);
  }

  v32 = [HMDMediaPropertyResponse groupedProfileResponses:array];

  return v32;
}

+ (id)serializeResponses:(id)responses
{
  v49 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  v33 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(responsesCopy, "count")}];
  v36 = responsesCopy;
  [HMDMediaPropertyResponse groupedProfileResponses:responsesCopy];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v46 = 0u;
  v37 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v37)
  {
    v35 = *v44;
    v32 = *MEMORY[0x277CD0910];
    do
    {
      v4 = 0;
      do
      {
        if (*v44 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v38 = v4;
        v5 = *(*(&v43 + 1) + 8 * v4);
        v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v36, "count")}];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v7 = v5;
        v8 = [v7 countByEnumeratingWithState:&v39 objects:v47 count:16];
        if (v8)
        {
          v9 = v8;
          mediaProfile = 0;
          v11 = *v40;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v40 != v11)
              {
                objc_enumerationMutation(v7);
              }

              v13 = *(*(&v39 + 1) + 8 * i);
              request = [v13 request];
              v15 = request;
              if (!mediaProfile)
              {
                mediaProfile = [request mediaProfile];
              }

              error = [v13 error];

              if (error)
              {
                v17 = MEMORY[0x277CCAAB0];
                error2 = [v13 error];
                value = [v17 archivedDataWithRootObject:error2 requiringSecureCoding:1 error:0];
              }

              else
              {
                value = [v13 value];
              }

              property = [v15 property];
              [v6 setObject:value forKeyedSubscript:property];
            }

            v9 = [v7 countByEnumeratingWithState:&v39 objects:v47 count:16];
          }

          while (v9);
        }

        else
        {
          mediaProfile = 0;
        }

        if ([v6 count])
        {
          v21 = mediaProfile == 0;
        }

        else
        {
          v21 = 1;
        }

        if (!v21)
        {
          uniqueIdentifier = [mediaProfile uniqueIdentifier];
          uUIDString = [uniqueIdentifier UUIDString];

          if (uUIDString)
          {
            mediaSession = [mediaProfile mediaSession];
            sessionIdentifier = [mediaSession sessionIdentifier];
            v26 = sessionIdentifier;
            if (sessionIdentifier)
            {
              v27 = sessionIdentifier;
            }

            else
            {
              v27 = uUIDString;
            }

            v28 = v27;

            [v6 setObject:v28 forKeyedSubscript:v32];
            v29 = objc_msgSend_copy(v6);
            [v33 setObject:v29 forKeyedSubscript:uUIDString];
          }
        }

        v4 = v38 + 1;
      }

      while (v38 + 1 != v37);
      v37 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v37);
  }

  v30 = objc_msgSend_copy(v33);

  return v30;
}

+ (id)groupedProfileResponses:(id)responses
{
  v26 = *MEMORY[0x277D85DE8];
  responsesCopy = responses;
  array = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = responsesCopy;
  v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        request = [v10 request];
        mediaProfile = [request mediaProfile];
        uniqueIdentifier = [mediaProfile uniqueIdentifier];
        v14 = [uniqueIdentifier isEqual:v7];

        if ((v14 & 1) == 0)
        {
          array2 = [MEMORY[0x277CBEB18] array];

          [array addObject:array2];
          uniqueIdentifier2 = [mediaProfile uniqueIdentifier];

          v6 = array2;
          v7 = uniqueIdentifier2;
        }

        [v6 addObject:v10];
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v17 = objc_msgSend_copy(array);

  return v17;
}

+ (id)propertyResponsesFromRequests:(id)requests error:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  errorCopy = error;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(requestsCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = requestsCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [HMDMediaPropertyResponse responseWithRequest:*(*(&v16 + 1) + 8 * i) error:errorCopy, v16];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = objc_msgSend_copy(v7);

  return v14;
}

@end