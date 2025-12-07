@interface RepairToolURLFactory
- (RepairToolURLFactory)initWithRequestItems:(id)items;
- (id)urlRequest;
@end

@implementation RepairToolURLFactory

- (RepairToolURLFactory)initWithRequestItems:(id)items
{
  itemsCopy = items;
  v9.receiver = self;
  v9.super_class = RepairToolURLFactory;
  v6 = [(RepairToolURLFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestItems, items);
    v7->_currentIndex = 0;
  }

  return v7;
}

- (id)urlRequest
{
  v29 = *MEMORY[0x277D85DE8];
  requestItems = [(RepairToolURLFactory *)self requestItems];
  v4 = [requestItems count];
  currentIndex = [(RepairToolURLFactory *)self currentIndex];

  if (v4 >= currentIndex)
  {
    requestItems2 = [(RepairToolURLFactory *)self requestItems];
    v8 = [requestItems2 objectAtIndexedSubscript:{-[RepairToolURLFactory currentIndex](self, "currentIndex")}];

    v9 = MEMORY[0x277CBEBC0];
    destination = [v8 destination];
    v11 = [v9 URLWithString:destination];

    v23 = v11;
    v6 = [MEMORY[0x277CCAB70] requestWithURL:v11];
    [v6 setHTTPMethod:@"POST"];
    token = [v8 token];
    [v6 setValue:token forHTTPHeaderField:@"X-Apple-File-Upload-Token"];

    encryptionKey = [v8 encryptionKey];
    [v6 setValue:encryptionKey forHTTPHeaderField:@"X-Apple-Encrypted-key"];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    extraHeaders = [v8 extraHeaders];
    v15 = [extraHeaders countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(extraHeaders);
          }

          v19 = *(*(&v24 + 1) + 8 * i);
          extraHeaders2 = [v8 extraHeaders];
          v21 = [extraHeaders2 objectForKeyedSubscript:v19];
          [v6 setValue:v21 forHTTPHeaderField:v19];
        }

        v16 = [extraHeaders countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v16);
    }

    [(RepairToolURLFactory *)self setCurrentIndex:[(RepairToolURLFactory *)self currentIndex]+ 1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end