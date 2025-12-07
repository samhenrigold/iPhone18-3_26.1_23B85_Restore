@interface UARPDynamicAssetAnalyticsEvent
+ (id)tag;
- (BOOL)decomposeUARP;
- (UARPDynamicAssetAnalyticsEvent)init;
- (UARPDynamicAssetAnalyticsEvent)initWithURL:(id)l;
- (id)description;
- (void)send;
@end

@implementation UARPDynamicAssetAnalyticsEvent

- (UARPDynamicAssetAnalyticsEvent)init
{
  [(UARPDynamicAssetAnalyticsEvent *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (UARPDynamicAssetAnalyticsEvent)initWithURL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = UARPDynamicAssetAnalyticsEvent;
  v5 = [(UARPDynamicAssetAnalyticsEvent *)&v11 init];
  if (v5)
  {
    v6 = [lCopy copy];
    url = v5->_url;
    v5->_url = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    events = v5->_events;
    v5->_events = v8;
  }

  return v5;
}

- (id)description
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"Analytics Events %@\n", self->_events];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_events;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 appendFormat:@"Analytics Event %@\n", *(*(&v10 + 1) + 8 * i)];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)decomposeUARP
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [[UARPSuperBinaryAsset alloc] initWithURL:self->_url];
  asset = self->_asset;
  self->_asset = v3;

  if (![(UARPSuperBinaryAsset *)self->_asset expandHeadersAndTLVs:0])
  {
    return 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  payloads = [(UARPSuperBinaryAsset *)self->_asset payloads];
  v6 = [payloads countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (!v6)
  {
    goto LABEL_19;
  }

  v8 = v6;
  v9 = *v26;
  v10 = MEMORY[0x277D86220];
  *&v7 = 138412290;
  v24 = v7;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v26 != v9)
      {
        objc_enumerationMutation(payloads);
      }

      v12 = *(*(&v25 + 1) + 8 * i);
      tlvs = [(NSMutableArray *)v12 tlvs];
      v14 = [UARPSuperBinaryAssetTLV findTLVWithType:1483412481 tlvs:tlvs];

      if (v14)
      {
        valueAsNumber = [v14 valueAsNumber];
        if (!valueAsNumber)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [UARPDynamicAssetAnalyticsEvent decomposeUARP];
          }

          goto LABEL_27;
        }

        v16 = valueAsNumber;
        if ([valueAsNumber unsignedIntegerValue])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [UARPDynamicAssetAnalyticsEvent decomposeUARP];
          }

          goto LABEL_27;
        }
      }

      else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = v24;
        v30 = v12;
        _os_log_impl(&dword_247AA7000, v10, OS_LOG_TYPE_INFO, "Process TICS assuming JSON : %@", buf, 0xCu);
      }

      [(NSMutableArray *)v12 rangePayload];
      v18 = [(UARPSuperBinaryAsset *)self->_asset payloadData:v12 range:0 error:v17, 0];
      v19 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v18 options:0 error:0];
      if (!v19 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {

LABEL_27:
        return 0;
      }

      v20 = v19;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = v24;
        v30 = v20;
        _os_log_impl(&dword_247AA7000, v10, OS_LOG_TYPE_INFO, "Analytics object : %@", buf, 0xCu);
      }

      [(NSMutableArray *)self->_events addObject:v20];
    }

    v8 = [payloads countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_19:

  v21 = 1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    events = self->_events;
    *buf = 138412290;
    v30 = events;
    _os_log_impl(&dword_247AA7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "All Analytics objects for this asset: %@", buf, 0xCu);
  }

  return v21;
}

- (void)send
{
  v32 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_events;
  v15 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v31 count:16];
  if (v15)
  {
    v14 = *v23;
    v2 = MEMORY[0x277D86220];
    do
    {
      v3 = 0;
      do
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = v3;
        v4 = *(*(&v22 + 1) + 8 * v3);
        allKeys = [v4 allKeys];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v6 = [allKeys countByEnumeratingWithState:&v18 objects:v30 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v19;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v19 != v8)
              {
                objc_enumerationMutation(allKeys);
              }

              v10 = *(*(&v18 + 1) + 8 * i);
              v11 = [v4 objectForKeyedSubscript:v10];
              if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v27 = v10;
                v28 = 2112;
                v29 = v11;
                _os_log_impl(&dword_247AA7000, v2, OS_LOG_TYPE_INFO, "Posting Analytics %@ : %@", buf, 0x16u);
              }

              v17 = v11;
              v12 = v11;
              AnalyticsSendEventLazy();
            }

            v7 = [allKeys countByEnumeratingWithState:&v18 objects:v30 count:16];
          }

          while (v7);
        }

        v3 = v16 + 1;
      }

      while (v16 + 1 != v15);
      v15 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v31 count:16];
    }

    while (v15);
  }
}

+ (id)tag
{
  v2 = uarpAssetTagStructAnalytics();
  v3 = [[UARPAssetTag alloc] initWithChar1:*v2 char2:v2[1] char3:v2[2] char4:v2[3]];

  return v3;
}

@end