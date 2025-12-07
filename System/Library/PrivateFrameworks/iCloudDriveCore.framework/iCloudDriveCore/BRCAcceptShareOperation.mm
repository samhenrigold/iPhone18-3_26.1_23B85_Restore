@interface BRCAcceptShareOperation
- (BRCAcceptShareOperation)initWithShareMetadata:(id)metadata syncContext:(id)context sessionContext:(id)sessionContext;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BRCAcceptShareOperation

- (BRCAcceptShareOperation)initWithShareMetadata:(id)metadata syncContext:(id)context sessionContext:(id)sessionContext
{
  metadataCopy = metadata;
  v13.receiver = self;
  v13.super_class = BRCAcceptShareOperation;
  v10 = [(_BRCOperation *)&v13 initWithName:@"share/accept" syncContext:context sessionContext:sessionContext];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_shareMetadata, metadata);
  }

  return v11;
}

- (void)main
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBC158]);
  v10[0] = self->_shareMetadata;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v5 = [v3 initWithShareMetadatas:v4];

  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy__6;
  v8[4] = __Block_byref_object_dispose__6;
  v9 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__BRCAcceptShareOperation_main__block_invoke;
  v7[3] = &unk_278500D78;
  v7[4] = v8;
  [v5 setPerShareCompletionBlock:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__BRCAcceptShareOperation_main__block_invoke_2;
  v6[3] = &unk_278500DA0;
  v6[4] = self;
  v6[5] = v8;
  [v5 setAcceptSharesCompletionBlock:v6];
  [(_BRCOperation *)self addSubOperation:v5];
  _Block_object_dispose(v8, 8);
}

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  acceptShareCompletionBlock = [(BRCAcceptShareOperation *)self acceptShareCompletionBlock];

  if (acceptShareCompletionBlock)
  {
    acceptShareCompletionBlock2 = [(BRCAcceptShareOperation *)self acceptShareCompletionBlock];
    (acceptShareCompletionBlock2)[2](acceptShareCompletionBlock2, resultCopy, errorCopy);
  }

  v10.receiver = self;
  v10.super_class = BRCAcceptShareOperation;
  [(_BRCOperation *)&v10 finishWithResult:resultCopy error:errorCopy];
}

@end