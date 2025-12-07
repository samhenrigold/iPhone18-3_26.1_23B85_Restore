@interface CRKFetchBooksFromBooksServiceOperation
+ (id)defaultRequest;
- (CRKFetchBooksFromBooksServiceOperation)init;
- (CRKFetchBooksFromBooksServiceOperation)initWithRequest:(id)request;
- (void)main;
@end

@implementation CRKFetchBooksFromBooksServiceOperation

+ (id)defaultRequest
{
  v2 = objc_opt_new();
  [v2 setIncludeImages:1];

  return v2;
}

- (CRKFetchBooksFromBooksServiceOperation)init
{
  defaultRequest = [objc_opt_class() defaultRequest];
  v4 = [(CRKFetchBooksFromBooksServiceOperation *)self initWithRequest:defaultRequest];

  return v4;
}

- (CRKFetchBooksFromBooksServiceOperation)initWithRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = CRKFetchBooksFromBooksServiceOperation;
  v6 = [(CRKFetchBooksFromBooksServiceOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mRequest, request);
  }

  return v7;
}

- (void)main
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__CRKFetchBooksFromBooksServiceOperation_main__block_invoke;
  block[3] = &unk_278DC10F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __46__CRKFetchBooksFromBooksServiceOperation_main__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_new();
  v4 = *(a1 + 32);
  v5 = *(v4 + 376);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__CRKFetchBooksFromBooksServiceOperation_main__block_invoke_2;
  v6[3] = &unk_278DC2EF8;
  v6[4] = v4;
  [v3 fetchBooksWithRequest:v5 completion:v6];
}

uint64_t __46__CRKFetchBooksFromBooksServiceOperation_main__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return [v3 endOperationWithError:?];
  }

  else
  {
    return [v3 endOperationWithResultObject:a2];
  }
}

@end