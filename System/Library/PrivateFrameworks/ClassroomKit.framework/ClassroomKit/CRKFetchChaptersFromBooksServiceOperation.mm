@interface CRKFetchChaptersFromBooksServiceOperation
- (CRKFetchChaptersFromBooksServiceOperation)initWithRequest:(id)request;
- (void)main;
@end

@implementation CRKFetchChaptersFromBooksServiceOperation

- (CRKFetchChaptersFromBooksServiceOperation)initWithRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = CRKFetchChaptersFromBooksServiceOperation;
  v6 = [(CRKFetchChaptersFromBooksServiceOperation *)&v9 init];
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
  block[2] = __49__CRKFetchChaptersFromBooksServiceOperation_main__block_invoke;
  block[3] = &unk_278DC10F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __49__CRKFetchChaptersFromBooksServiceOperation_main__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_new();
  v4 = *(a1 + 32);
  v5 = *(v4 + 376);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__CRKFetchChaptersFromBooksServiceOperation_main__block_invoke_2;
  v6[3] = &unk_278DC2ED0;
  v6[4] = v4;
  [v3 fetchChaptersWithRequest:v5 completion:v6];
}

uint64_t __49__CRKFetchChaptersFromBooksServiceOperation_main__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
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