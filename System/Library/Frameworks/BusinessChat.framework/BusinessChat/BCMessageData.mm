@interface BCMessageData
- (BCMessageData)initWithUrl:(id)url data:(id)data;
- (NSArray)imagesArray;
- (NSDictionary)combinedDictionary;
- (void)decodeData:(void *)data dictionaryKey:;
@end

@implementation BCMessageData

- (BCMessageData)initWithUrl:(id)url data:(id)data
{
  urlCopy = url;
  v39 = *MEMORY[0x277D85DE8];
  urlCopy2 = url;
  dataCopy = data;
  v9 = LogCategory_Daemon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [urlCopy2 description];
    v11 = [dataCopy description];
    *buf = 138412546;
    v36 = v10;
    v37 = 2112;
    v38 = v11;
    _os_log_impl(&dword_236EA0000, v9, OS_LOG_TYPE_DEFAULT, "BCMessageData: initWithUrl: %@ data: %@", buf, 0x16u);
  }

  v33.receiver = self;
  v33.super_class = BCMessageData;
  v12 = [(BCMessageData *)&v33 init];
  if (v12)
  {
    if (urlCopy2)
    {
      v25 = dataCopy;
      v26 = urlCopy;
      dataCopy2 = data;
      v28 = urlCopy2;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v24 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:urlCopy2 resolvingAgainstBaseURL:0];
      queryItems = [v24 queryItems];
      v14 = [queryItems countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v30;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v30 != v16)
            {
              objc_enumerationMutation(queryItems);
            }

            v18 = *(*(&v29 + 1) + 8 * i);
            value = [v18 value];
            normalizedBase64Encoded = [(NSString *)value normalizedBase64Encoded];
            v21 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:normalizedBase64Encoded options:0];
            name = [v18 name];
            [(BCMessageData *)v12 decodeData:v21 dictionaryKey:name];
          }

          v15 = [queryItems countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v15);
      }

      data = dataCopy2;
      urlCopy2 = v28;
      dataCopy = v25;
      urlCopy = v26;
    }

    if (dataCopy)
    {
      [(BCMessageData *)v12 decodeData:dataCopy dictionaryKey:@"data"];
    }

    objc_storeStrong(&v12->_url, urlCopy);
    objc_storeStrong(&v12->_data, data);
  }

  return v12;
}

- (void)decodeData:(void *)data dictionaryKey:
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  dataCopy = data;
  v7 = LogCategory_Daemon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = dataCopy;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_236EA0000, v7, OS_LOG_TYPE_DEFAULT, "BCMessageData: decodeDataKey %@ %@", buf, 0x16u);
  }

  v14 = 0;
  v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:4 error:&v14];
  v9 = v14;
  if (v9)
  {
    v10 = LogCategory_Daemon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = dataCopy;
      v17 = 2112;
      v18 = v9;
      _os_log_error_impl(&dword_236EA0000, v10, OS_LOG_TYPE_ERROR, "BCMessageData: error serializing JSON for key %@, error: %@", buf, 0x16u);
    }
  }

  else if ([dataCopy isEqualToString:@"replyMessage"])
  {
    v11 = v8;
    v10 = self[4];
    self[4] = v11;
  }

  else if ([dataCopy isEqualToString:@"receivedMessage"])
  {
    v12 = v8;
    v10 = self[5];
    self[5] = v12;
  }

  else if ([dataCopy isEqualToString:@"data"])
  {
    v13 = v8;
    v10 = self[3];
    self[3] = v13;
  }

  else
  {
    v10 = LogCategory_Daemon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = dataCopy;
      _os_log_impl(&dword_236EA0000, v10, OS_LOG_TYPE_DEFAULT, "BCMessageData: unrecognized key in the url %@", buf, 0xCu);
    }
  }
}

- (NSDictionary)combinedDictionary
{
  jsonDictionary = [(BCMessageData *)self jsonDictionary];
  v4 = [jsonDictionary mutableCopy];

  replyMessageDictionary = [(BCMessageData *)self replyMessageDictionary];

  if (replyMessageDictionary)
  {
    replyMessageDictionary2 = [(BCMessageData *)self replyMessageDictionary];
    [v4 setObject:replyMessageDictionary2 forKeyedSubscript:@"replyMessage"];
  }

  receivedMessageDictionary = [(BCMessageData *)self receivedMessageDictionary];

  if (receivedMessageDictionary)
  {
    receivedMessageDictionary2 = [(BCMessageData *)self receivedMessageDictionary];
    [v4 setObject:receivedMessageDictionary2 forKeyedSubscript:@"receivedMessage"];
  }

  return v4;
}

- (NSArray)imagesArray
{
  jsonDictionary = [(BCMessageData *)self jsonDictionary];
  v3 = [jsonDictionary objectForKeyedSubscript:@"images"];

  return v3;
}

@end