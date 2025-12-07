@interface SKUIAddToWishlistOperation
- (SKUIAddToWishlistOperation)initWithItem:(id)item reason:(int64_t)reason;
- (void)main;
@end

@implementation SKUIAddToWishlistOperation

- (SKUIAddToWishlistOperation)initWithItem:(id)item reason:(int64_t)reason
{
  itemCopy = item;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIAddToWishlistOperation initWithItem:reason:];
  }

  v19.receiver = self;
  v19.super_class = SKUIAddToWishlistOperation;
  v7 = [(SKUIAddToWishlistOperation *)&v19 init];
  if (v7)
  {
    v7->_itemIdentifier = [itemCopy itemIdentifier];
    v7->_reason = reason;
    primaryItemOffer = [itemCopy primaryItemOffer];
    actionParameters = [primaryItemOffer actionParameters];

    if (actionParameters)
    {
      v10 = [MEMORY[0x277CBEBC0] copyDictionaryForQueryString:actionParameters unescapedValues:1];
      requestParameters = v7->_requestParameters;
      v7->_requestParameters = v10;

      [(NSMutableDictionary *)v7->_requestParameters removeObjectForKey:@"salableAdamId"];
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v13 = v7->_requestParameters;
      v7->_requestParameters = v12;
    }

    v14 = v7->_requestParameters;
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", v7->_itemIdentifier];
    [(NSMutableDictionary *)v14 setObject:v15 forKey:@"id"];

    title = [itemCopy title];
    if (title)
    {
      [(NSMutableDictionary *)v7->_requestParameters setObject:title forKey:@"wishlistItemName"];
    }

    itemKindString = [itemCopy itemKindString];

    if (itemKindString)
    {
      [(NSMutableDictionary *)v7->_requestParameters setObject:itemKindString forKey:@"kind"];
    }
  }

  return v7;
}

- (void)main
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277D69BD0]);
  [v3 setAllowedRetryCount:0];
  [v3 setCachePolicy:1];
  [v3 setITunesStoreRequest:1];
  [v3 setRequestParameters:self->_requestParameters];
  [v3 setShouldProcessProtocol:self->_reason == 0];
  [v3 setURLBagKey:@"addToWishlistBaseUrl"];
  [v3 setValue:@"Software" forHTTPHeaderField:*MEMORY[0x277D6A158]];
  v4 = SSVDefaultUserAgent();
  [v3 setValue:v4 forHTTPHeaderField:@"User-Agent"];

  v5 = [(SSURLConnectionRequest *)[SKUIURLConnectionRequest alloc] initWithRequestProperties:v3];
  [(SSURLConnectionRequest *)v5 setShouldMescalSign:1];
  defaultStore = [MEMORY[0x277D69A20] defaultStore];
  activeAccount = [defaultStore activeAccount];

  v8 = [objc_alloc(MEMORY[0x277D69A58]) initWithAccount:activeAccount];
  [(SSURLConnectionRequest *)v5 setAuthenticationContext:v8];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__93;
  v35 = __Block_byref_object_dispose__93;
  v36 = 0;
  v9 = dispatch_semaphore_create(0);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __34__SKUIAddToWishlistOperation_main__block_invoke;
  v28[3] = &unk_2782002B8;
  v30 = &v31;
  v10 = v9;
  v29 = v10;
  [(SKUIURLConnectionRequest *)v5 startWithConnectionResponseBlock:v28];
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  v11 = v32[5];
  if (v11)
  {
    v26 = [MEMORY[0x277CCAC58] propertyListWithData:v11 options:0 format:0 error:0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_19:

      goto LABEL_20;
    }

    v25 = [v26 objectForKey:@"status"];
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38] shouldLogToDisk];
    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    v16 = oSLogObject;
    if (shouldLogToDisk)
    {
      v17 = shouldLog | 2;
    }

    else
    {
      v17 = shouldLog;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v18 = v17;
    }

    else
    {
      v18 = v17 & 2;
    }

    if (v18)
    {
      itemIdentifier = self->_itemIdentifier;
      v37 = 138412546;
      v38 = v25;
      v39 = 2048;
      v40 = itemIdentifier;
      v20 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_215BAE000, v16, 2, "[Wishlist]: Received status: %@ when adding wishlist item: %lld", &v37, 22);

      if (!v20)
      {
LABEL_13:

        if (objc_opt_respondsToSelector())
        {
          if ([v25 integerValue] >= 2)
          {
            v21 = 3;
          }

          else
          {
            v21 = 0;
          }
        }

        else
        {
          v21 = 3;
        }

        v22 = objc_alloc(MEMORY[0x277D69D58]);
        uniqueIdentifier = [activeAccount uniqueIdentifier];
        v24 = [v22 initWithAccountIdentifier:{objc_msgSend(uniqueIdentifier, "longLongValue")}];

        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __34__SKUIAddToWishlistOperation_main__block_invoke_44;
        v27[3] = &unk_2782002E0;
        v27[4] = self;
        v27[5] = v21;
        [v24 performTransactionWithBlock:v27];

        goto LABEL_19;
      }

      v16 = [MEMORY[0x277CCACA8] stringWithCString:v20 encoding:4];
      free(v20);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_20:

  _Block_object_dispose(&v31, 8);
}

intptr_t __34__SKUIAddToWishlistOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bodyData];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

uint64_t __34__SKUIAddToWishlistOperation_main__block_invoke_44(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D69C40];
  v4 = *MEMORY[0x277D6A688];
  v5 = *(*(a1 + 32) + 248);
  v6 = a2;
  v7 = [v3 predicateWithProperty:v4 equalToLongLong:v5];
  v8 = [MEMORY[0x277D69D60] anyInDatabase:v6 predicate:v7];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  [v8 setValue:v9 forProperty:*MEMORY[0x277D6A6A0]];

  return 1;
}

- (void)initWithItem:reason:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIAddToWishlistOperation initWithItem:reason:]";
}

@end