@interface ESSharedCalendarContext
- (ESSharedCalendarContext)initWithCalendarID:(id)d accountID:(id)iD queue:(id)queue completionBlock:(id)block;
- (void)finishedWithError:(id)error;
@end

@implementation ESSharedCalendarContext

- (ESSharedCalendarContext)initWithCalendarID:(id)d accountID:(id)iD queue:(id)queue completionBlock:(id)block
{
  dCopy = d;
  iDCopy = iD;
  queueCopy = queue;
  blockCopy = block;
  if (!dCopy)
  {
    [ESSharedCalendarContext initWithCalendarID:accountID:queue:completionBlock:];
  }

  if (!iDCopy)
  {
    [ESSharedCalendarContext initWithCalendarID:accountID:queue:completionBlock:];
  }

  v15 = blockCopy;
  v21.receiver = self;
  v21.super_class = ESSharedCalendarContext;
  v16 = [(ESSharedCalendarContext *)&v21 init];
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
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    calendarID = self->_calendarID;
    accountID = self->_accountID;
    *buf = 138412546;
    v17 = calendarID;
    v18 = 2112;
    v19 = accountID;
    _os_log_impl(&dword_24A1B8000, v5, v6, "Share of calendar ID %@ for account %@ completed.", buf, 0x16u);
  }

  if (!errorCopy && [(ESSharedCalendarContext *)self shouldSyncCalendar])
  {
    v9 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__ESSharedCalendarContext_finishedWithError___block_invoke;
    block[3] = &unk_278FCFB40;
    block[4] = self;
    dispatch_async(v9, block);
  }

  if (self->_completionBlock)
  {
    queue = self->_queue;
    if (queue)
    {
      v11 = queue;
    }

    else
    {
      v11 = dispatch_get_global_queue(0, 0);
    }

    v12 = v11;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __45__ESSharedCalendarContext_finishedWithError___block_invoke_2;
    v13[3] = &unk_278FCFB18;
    v13[4] = self;
    v14 = errorCopy;
    dispatch_async(v12, v13);
  }
}

void __45__ESSharedCalendarContext_finishedWithError___block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = +[ESDConnection sharedConnection];
  v4[0] = *(*(a1 + 32) + 16);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [v2 updateContentsOfFoldersWithKeys:v3 forAccountID:*(*(a1 + 32) + 24) andDataclass:4 isUserRequested:1];
}

@end