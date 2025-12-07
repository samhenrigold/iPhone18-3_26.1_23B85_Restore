@interface BRShareCopyDocumentURLForRecordID
- (BRShareCopyDocumentURLForRecordID)initWithRecordID:(id)d fileURL:(id)l withServerLookup:(BOOL)lookup;
- (BRShareCopyDocumentURLForRecordID)initWithRecordID:(id)d withServerLookup:(BOOL)lookup;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BRShareCopyDocumentURLForRecordID

- (BRShareCopyDocumentURLForRecordID)initWithRecordID:(id)d withServerLookup:(BOOL)lookup
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = BRShareCopyDocumentURLForRecordID;
  initWithDirectConnection = [(BRShareOperation *)&v11 initWithDirectConnection];
  v9 = initWithDirectConnection;
  if (initWithDirectConnection)
  {
    objc_storeStrong(&initWithDirectConnection->_recordID, d);
    v9->_withServerLookup = lookup;
  }

  return v9;
}

- (BRShareCopyDocumentURLForRecordID)initWithRecordID:(id)d fileURL:(id)l withServerLookup:(BOOL)lookup
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = BRShareCopyDocumentURLForRecordID;
  initWithDirectConnection = [(BRShareOperation *)&v12 initWithDirectConnection];
  v10 = initWithDirectConnection;
  if (initWithDirectConnection)
  {
    objc_storeStrong(&initWithDirectConnection->_recordID, d);
    v10->_withServerLookup = lookup;
  }

  return v10;
}

- (void)main
{
  v3 = brc_bread_crumbs("[BRShareCopyDocumentURLForRecordID main]", 987);
  v4 = brc_default_log(1, 0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [BRShareCopyDocumentURLForRecordID main];
  }

  remoteObject = [(BRShareOperation *)self remoteObject];
  recordID = self->_recordID;
  withServerLookup = self->_withServerLookup;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__BRShareCopyDocumentURLForRecordID_main__block_invoke;
  v8[3] = &unk_1E7A14D20;
  v8[4] = self;
  [remoteObject startOperation:self toCopyDocumentURLForRecordID:recordID syncIfNeeded:withServerLookup reply:v8];
}

void __41__BRShareCopyDocumentURLForRecordID_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 url];
  [v4 completedWithResult:v6 error:v5];
}

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  copyDocumentURLCompletionBlock = [(BRShareCopyDocumentURLForRecordID *)self copyDocumentURLCompletionBlock];
  v9 = copyDocumentURLCompletionBlock;
  if (copyDocumentURLCompletionBlock)
  {
    (*(copyDocumentURLCompletionBlock + 16))(copyDocumentURLCompletionBlock, resultCopy, errorCopy);
    [(BRShareCopyDocumentURLForRecordID *)self setCopyDocumentURLCompletionBlock:0];
  }

  v10.receiver = self;
  v10.super_class = BRShareCopyDocumentURLForRecordID;
  [(BROperation *)&v10 finishWithResult:resultCopy error:errorCopy];
}

@end