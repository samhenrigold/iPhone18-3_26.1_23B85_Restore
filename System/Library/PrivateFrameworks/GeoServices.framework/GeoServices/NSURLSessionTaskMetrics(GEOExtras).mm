@interface NSURLSessionTaskMetrics(GEOExtras)
- (GEOClientMetrics)_geo_clientMetrics;
- (id)_geo_remoteAddressAndPort;
@end

@implementation NSURLSessionTaskMetrics(GEOExtras)

- (GEOClientMetrics)_geo_clientMetrics
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(GEOClientMetrics);
  v3 = objc_alloc_init(GEOClientNetworkMetrics);
  v35 = v2;
  [(GEOClientMetrics *)v2 setNetworkMetrics:v3];
  _geo_remoteAddressAndPort = [self _geo_remoteAddressAndPort];
  [(GEOClientNetworkMetrics *)v3 setServiceIpAddress:_geo_remoteAddressAndPort];

  -[GEOClientNetworkMetrics setRedirectCount:](v3, "setRedirectCount:", [self redirectCount]);
  taskInterval = [self taskInterval];
  startDate = [taskInterval startDate];
  [startDate timeIntervalSince1970];
  [(GEOClientNetworkMetrics *)v3 setRequestStart:?];

  taskInterval2 = [self taskInterval];
  endDate = [taskInterval2 endDate];
  [endDate timeIntervalSince1970];
  [(GEOClientNetworkMetrics *)v3 setRequestEnd:?];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  transactionMetrics = [self transactionMetrics];
  v10 = [transactionMetrics countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(transactionMetrics);
        }

        v14 = *(*(&v36 + 1) + 8 * i);
        v15 = objc_alloc_init(GEOClientNetworkTransactionMetrics);
        [(GEOClientNetworkMetrics *)v3 addTransactionMetrics:v15];
        response = [v14 response];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          response2 = [v14 response];
          -[GEOClientNetworkMetrics setHttpResponseCode:](v3, "setHttpResponseCode:", [response2 statusCode]);
        }

        fetchStartDate = [v14 fetchStartDate];
        [fetchStartDate timeIntervalSince1970];
        [(GEOClientNetworkTransactionMetrics *)v15 setFetchStart:?];

        domainLookupStartDate = [v14 domainLookupStartDate];
        [domainLookupStartDate timeIntervalSince1970];
        [(GEOClientNetworkTransactionMetrics *)v15 setDomainLookupStart:?];

        domainLookupEndDate = [v14 domainLookupEndDate];
        [domainLookupEndDate timeIntervalSince1970];
        [(GEOClientNetworkTransactionMetrics *)v15 setDomainLookupEnd:?];

        connectStartDate = [v14 connectStartDate];
        [connectStartDate timeIntervalSince1970];
        [(GEOClientNetworkTransactionMetrics *)v15 setConnectStart:?];

        connectEndDate = [v14 connectEndDate];
        [connectEndDate timeIntervalSince1970];
        [(GEOClientNetworkTransactionMetrics *)v15 setConnectEnd:?];

        secureConnectionStartDate = [v14 secureConnectionStartDate];
        [secureConnectionStartDate timeIntervalSince1970];
        [(GEOClientNetworkTransactionMetrics *)v15 setSecureConnectStart:?];

        secureConnectionEndDate = [v14 secureConnectionEndDate];
        [secureConnectionEndDate timeIntervalSince1970];
        [(GEOClientNetworkTransactionMetrics *)v15 setSecureConnectEnd:?];

        requestStartDate = [v14 requestStartDate];
        [requestStartDate timeIntervalSince1970];
        [(GEOClientNetworkTransactionMetrics *)v15 setRequestStart:?];

        requestEndDate = [v14 requestEndDate];
        [requestEndDate timeIntervalSince1970];
        [(GEOClientNetworkTransactionMetrics *)v15 setRequestEnd:?];

        responseStartDate = [v14 responseStartDate];
        [responseStartDate timeIntervalSince1970];
        [(GEOClientNetworkTransactionMetrics *)v15 setResponseStart:?];

        responseEndDate = [v14 responseEndDate];
        [responseEndDate timeIntervalSince1970];
        [(GEOClientNetworkTransactionMetrics *)v15 setResponseEnd:?];

        -[GEOClientNetworkTransactionMetrics setProxyConnection:](v15, "setProxyConnection:", [v14 isProxyConnection]);
        -[GEOClientNetworkTransactionMetrics setReusedConnection:](v15, "setReusedConnection:", [v14 isReusedConnection]);
        networkProtocolName = [v14 networkProtocolName];
        lowercaseString = [networkProtocolName lowercaseString];

        if ([lowercaseString isEqualToString:@"http/1.1"])
        {
          v32 = 1;
        }

        else if ([lowercaseString isEqualToString:@"h2"])
        {
          v32 = 2;
        }

        else if ([lowercaseString isEqualToString:@"h2c"])
        {
          v32 = 3;
        }

        else if ([lowercaseString isEqualToString:@"spdy/1"])
        {
          v32 = 4;
        }

        else if ([lowercaseString isEqualToString:@"spdy/2"])
        {
          v32 = 5;
        }

        else
        {
          if (![lowercaseString isEqualToString:@"spdy/3"])
          {
            goto LABEL_21;
          }

          v32 = 6;
        }

        [(GEOClientNetworkTransactionMetrics *)v15 setProtocolName:v32];
LABEL_21:
        resourceFetchType = [v14 resourceFetchType];
        if (resourceFetchType <= 3)
        {
          [(GEOClientNetworkTransactionMetrics *)v15 setResourceFetchType:resourceFetchType];
        }

        -[GEOClientNetworkTransactionMetrics setIsMultipath:](v15, "setIsMultipath:", [v14 isMultipath]);
        -[GEOClientNetworkTransactionMetrics setUsedCellular:](v15, "setUsedCellular:", [v14 isCellular]);
      }

      v11 = [transactionMetrics countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v11);
  }

  return v35;
}

- (id)_geo_remoteAddressAndPort
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  transactionMetrics = [self transactionMetrics];
  v2 = [transactionMetrics countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = *v14;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v14 != v3)
        {
          objc_enumerationMutation(transactionMetrics);
        }

        v5 = *(*(&v13 + 1) + 8 * i);
        remoteAddress = [v5 remoteAddress];
        if (remoteAddress)
        {
          v7 = remoteAddress;
          remoteAddress2 = [v5 remoteAddress];

          if (remoteAddress2)
          {
            v9 = MEMORY[0x1E696AEC0];
            remoteAddress3 = [v5 remoteAddress];
            remotePort = [v5 remotePort];
            v2 = [v9 stringWithFormat:@"%@:%@", remoteAddress3, remotePort];

            goto LABEL_12;
          }
        }
      }

      v2 = [transactionMetrics countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v2;
}

@end