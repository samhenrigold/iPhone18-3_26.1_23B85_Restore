@interface DASharedCalendarContext
- (DASharedCalendarContext)initWithCalendarID:(id)d accountID:(id)iD queue:(id)queue completionBlock:(id)block;
- (void)finishedWithError:(id)error;
@end

@implementation DASharedCalendarContext

- (DASharedCalendarContext)initWithCalendarID:(id)d accountID:(id)iD queue:(id)queue completionBlock:(id)block
{
  dCopy = d;
  iDCopy = iD;
  queueCopy = queue;
  blockCopy = block;
  if (!dCopy)
  {
    [DASharedCalendarContext initWithCalendarID:accountID:queue:completionBlock:];
  }

  if (!iDCopy)
  {
    [DASharedCalendarContext initWithCalendarID:accountID:queue:completionBlock:];
  }

  v15 = blockCopy;
  v21.receiver = self;
  v21.super_class = DASharedCalendarContext;
  v16 = [(DASharedCalendarContext *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_calendarID, d);
    objc_storeStrong(&v17->_accountID, iD);
    objc_storeStrong(&v17->_queue, queue);
    v18 = [v15 copy];
    completionBlock = v17->_completionBlock;
    v17->_completionBlock = v18;
  }

  return v17;
}

- (void)finishedWithError:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    calendarID = self->_calendarID;
    accountID = self->_accountID;
    *buf = 138412546;
    v16 = calendarID;
    v17 = 2114;
    v18 = accountID;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Share of calendar ID %@ for account %{public}@ completed.", buf, 0x16u);
  }

  if (!errorCopy && [(DASharedCalendarContext *)self shouldSyncCalendar])
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__DASharedCalendarContext_finishedWithError___block_invoke;
    block[3] = &unk_27851FF00;
    block[4] = self;
    dispatch_async(v8, block);
  }

  if (self->_completionBlock)
  {
    queue = self->_queue;
    if (queue)
    {
      v10 = queue;
    }

    else
    {
      v10 = dispatch_get_global_queue(0, 0);
    }

    v11 = v10;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __45__DASharedCalendarContext_finishedWithError___block_invoke_2;
    v12[3] = &unk_27851FED8;
    v12[4] = self;
    v13 = errorCopy;
    dispatch_async(v11, v12);
  }
}

void __45__DASharedCalendarContext_finishedWithError___block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = +[DADConnection sharedConnection];
  v4[0] = *(*(a1 + 32) + 16);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [v2 updateContentsOfFoldersWithKeys:v3 forAccountID:*(*(a1 + 32) + 24) andDataclass:4 isUserRequested:1];
}

@end