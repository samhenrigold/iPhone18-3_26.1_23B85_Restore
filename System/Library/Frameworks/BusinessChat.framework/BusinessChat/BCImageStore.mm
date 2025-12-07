@interface BCImageStore
- (BCImageStore)initWithArray:(id)array;
- (BCImageStore)initWithData:(id)data;
- (BCImageStore)initWithImages:(id)images;
- (id)generateImageDictionaryFromArray:(void *)array;
@end

@implementation BCImageStore

- (BCImageStore)initWithData:(id)data
{
  v19 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v6 = LogCategory_Daemon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [dataCopy description];
    *buf = 138412290;
    v18 = v7;
    _os_log_impl(&dword_236EA0000, v6, OS_LOG_TYPE_DEFAULT, "BCImageStore: initWithData %@", buf, 0xCu);
  }

  v16.receiver = self;
  v16.super_class = BCImageStore;
  v8 = [(BCImageStore *)&v16 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:0 error:0];
    v10 = [v9 objectForKeyedSubscript:@"images"];
    [(BCImageStore *)v8 setRawArray:v10];
    v11 = [BCImageStore generateImageDictionaryFromArray:v10];
    [(BCImageStore *)v8 setDictionary:v11];

    objc_storeStrong(&v8->_data, data);
  }

  dictionary = [(BCImageStore *)v8 dictionary];
  if (dictionary)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v14;
}

- (id)generateImageDictionaryFromArray:(void *)array
{
  v37 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (arrayCopy)
  {
    v27 = arrayCopy;
    v28 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = arrayCopy;
    v3 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = @"data";
      v6 = @"identifier";
      v7 = *v33;
      do
      {
        v8 = 0;
        v29 = v4;
        do
        {
          if (*v33 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v32 + 1) + 8 * v8);
          v10 = [v9 objectForKeyedSubscript:{v5, v27}];
          v11 = [v9 objectForKeyedSubscript:v6];
          if (v11)
          {
            v12 = v10 == 0;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            v13 = LogCategory_Daemon();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_236EA0000, v13, OS_LOG_TYPE_ERROR, "BCImageStore: image is missing data or identifier", buf, 2u);
            }
          }

          else
          {
            v14 = v6;
            v15 = v5;
            v16 = objc_alloc(MEMORY[0x277CBEA90]);
            v17 = v10;
            v18 = [v17 length];
            if ((v18 & 0xFFFFFFFFFFFFFFFCLL) == 0xFFFFFFFFFFFFFFFCLL)
            {
              v19 = v17;
            }

            else
            {
              v19 = [v17 stringByPaddingToLength:(v18 & 0xFFFFFFFFFFFFFFFCLL) + 4 withString:@"=" startingAtIndex:0];
            }

            v20 = v19;

            v13 = [v16 initWithBase64EncodedString:v20 options:0];
            if (v13)
            {
              v21 = [BCImage alloc];
              v22 = [v9 objectForKeyedSubscript:@"description"];
              v23 = [(BCImage *)v21 initWithImageData:v13 identifier:v11 description:v22];

              [v28 setObject:v23 forKeyedSubscript:v11];
            }

            else
            {
              v23 = LogCategory_Daemon();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&dword_236EA0000, v23, OS_LOG_TYPE_ERROR, "BCImageStore: image data cannot be decoded", buf, 2u);
              }
            }

            v5 = v15;

            v6 = v14;
            v4 = v29;
          }

          ++v8;
        }

        while (v4 != v8);
        v4 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v4);
    }

    allKeys = [v28 allKeys];
    if ([allKeys count])
    {
      v25 = v28;
    }

    else
    {
      v25 = 0;
    }

    v2 = v25;

    arrayCopy = v27;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BCImageStore)initWithArray:(id)array
{
  v17 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v5 = LogCategory_Daemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = arrayCopy;
    _os_log_impl(&dword_236EA0000, v5, OS_LOG_TYPE_DEFAULT, "BCImageStore: initWithArray %@", buf, 0xCu);
  }

  v14.receiver = self;
  v14.super_class = BCImageStore;
  v6 = [(BCImageStore *)&v14 init];
  v7 = v6;
  if (v6)
  {
    [(BCImageStore *)v6 setRawArray:arrayCopy];
    v8 = [BCImageStore generateImageDictionaryFromArray:arrayCopy];
    [(BCImageStore *)v7 setDictionary:v8];

    data = v7->_data;
    v7->_data = 0;
  }

  dictionary = [(BCImageStore *)v7 dictionary];
  if (dictionary)
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v12;
}

- (BCImageStore)initWithImages:(id)images
{
  v25 = *MEMORY[0x277D85DE8];
  imagesCopy = images;
  v5 = LogCategory_Daemon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = imagesCopy;
    _os_log_impl(&dword_236EA0000, v5, OS_LOG_TYPE_DEFAULT, "BCImageStore: initWithImages %@", buf, 0xCu);
  }

  v21.receiver = self;
  v21.super_class = BCImageStore;
  v6 = [(BCImageStore *)&v21 init];
  if (v6)
  {
    v7 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = imagesCopy;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          identifier = [v13 identifier];
          [v7 setObject:v13 forKey:identifier];
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }

    [(BCImageStore *)v6 setDictionary:v7];
    [(BCImageStore *)v6 setRawArray:0];
    data = v6->_data;
    v6->_data = 0;
  }

  return v6;
}

@end