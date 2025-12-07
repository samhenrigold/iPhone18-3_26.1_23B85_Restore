@interface BRCFetchCKShareMetadataOperation
- (BRCFetchCKShareMetadataOperation)initWithShareLink:(id)link sessionContext:(id)context;
- (void)main;
@end

@implementation BRCFetchCKShareMetadataOperation

- (BRCFetchCKShareMetadataOperation)initWithShareLink:(id)link sessionContext:(id)context
{
  linkCopy = link;
  contextCopy = context;
  syncContextProvider = [contextCopy syncContextProvider];
  sharedMetadataSyncContext = [syncContextProvider sharedMetadataSyncContext];
  v13.receiver = self;
  v13.super_class = BRCFetchCKShareMetadataOperation;
  v11 = [(_BRCOperation *)&v13 initWithName:@"fetch-ck-share" syncContext:sharedMetadataSyncContext sessionContext:contextCopy];

  if (v11)
  {
    objc_storeStrong(&v11->_shareLink, link);
    [(_BRCOperation *)v11 setNonDiscretionary:1];
  }

  return v11;
}

- (void)main
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBC3F8]);
  v12[0] = self->_shareLink;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v5 = [v3 initWithShareURLs:v4];

  [v5 setShouldFetchRootRecord:0];
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__11;
  v10[4] = __Block_byref_object_dispose__11;
  v11 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy__11;
  v8[4] = __Block_byref_object_dispose__11;
  v9 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__BRCFetchCKShareMetadataOperation_main__block_invoke;
  v7[3] = &unk_2785017C8;
  v7[4] = v10;
  v7[5] = v8;
  [v5 setPerShareMetadataBlock:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__BRCFetchCKShareMetadataOperation_main__block_invoke_2;
  v6[3] = &unk_2785017F0;
  v6[4] = self;
  v6[5] = v8;
  v6[6] = v10;
  [v5 setFetchShareMetadataCompletionBlock:v6];
  [(_BRCOperation *)self addSubOperation:v5];
  _Block_object_dispose(v8, 8);

  _Block_object_dispose(v10, 8);
}

void __40__BRCFetchCKShareMetadataOperation_main__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;
  v12 = v6;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
}

void __40__BRCFetchCKShareMetadataOperation_main__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v4 = v3;
LABEL_4:
    [*(a1 + 32) completedWithResult:0 error:v4];

    goto LABEL_5;
  }

  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (v4)
  {
    goto LABEL_4;
  }

  [*(a1 + 32) completedWithResult:*(*(*(a1 + 48) + 8) + 40) error:0];
LABEL_5:
}

@end