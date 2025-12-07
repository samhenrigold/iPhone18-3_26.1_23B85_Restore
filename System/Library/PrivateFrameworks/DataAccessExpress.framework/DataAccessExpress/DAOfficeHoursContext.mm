@interface DAOfficeHoursContext
- (BOOL)isFetch;
- (void)abortWithError:(id)error;
- (void)finishFetchWithOfficeHours:(id)hours error:(id)error;
- (void)finishSetWithError:(id)error;
@end

@implementation DAOfficeHoursContext

- (BOOL)isFetch
{
  fetchCompletionBlock = [(DAOfficeHoursContext *)self fetchCompletionBlock];
  v3 = fetchCompletionBlock != 0;

  return v3;
}

- (void)finishFetchWithOfficeHours:(id)hours error:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  hoursCopy = hours;
  errorCopy = error;
  v8 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    accountID = self->_accountID;
    *buf = 138543362;
    v18 = accountID;
    _os_log_impl(&dword_2243BD000, v8, OS_LOG_TYPE_DEBUG, "Fetch of office hours for account %{public}@ completed.", buf, 0xCu);
  }

  fetchCompletionBlock = [(DAOfficeHoursContext *)self fetchCompletionBlock];

  if (fetchCompletionBlock)
  {
    queue = self->_queue;
    if (queue)
    {
      v12 = queue;
    }

    else
    {
      v12 = dispatch_get_global_queue(0, 0);
    }

    v13 = v12;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__DAOfficeHoursContext_finishFetchWithOfficeHours_error___block_invoke;
    block[3] = &unk_27851FF28;
    block[4] = self;
    v15 = hoursCopy;
    v16 = errorCopy;
    dispatch_async(v13, block);
  }
}

void __57__DAOfficeHoursContext_finishFetchWithOfficeHours_error___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) fetchCompletionBlock];
  v2 = [*(a1 + 32) accountID];
  (*(v3 + 2))(v3, v2, *(a1 + 40), *(a1 + 48));
}

- (void)finishSetWithError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = DALoggingwithCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    accountID = self->_accountID;
    *buf = 138543362;
    v14 = accountID;
    _os_log_impl(&dword_2243BD000, v5, OS_LOG_TYPE_DEBUG, "Setting of office hours for account %{public}@ completed.", buf, 0xCu);
  }

  setCompletionBlock = [(DAOfficeHoursContext *)self setCompletionBlock];

  if (setCompletionBlock)
  {
    queue = self->_queue;
    if (queue)
    {
      v9 = queue;
    }

    else
    {
      v9 = dispatch_get_global_queue(0, 0);
    }

    v10 = v9;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __43__DAOfficeHoursContext_finishSetWithError___block_invoke;
    v11[3] = &unk_27851FED8;
    v11[4] = self;
    v12 = errorCopy;
    dispatch_async(v10, v11);
  }
}

void __43__DAOfficeHoursContext_finishSetWithError___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) setCompletionBlock];
  v2 = [*(a1 + 32) accountID];
  v3[2](v3, v2, *(a1 + 40));
}

- (void)abortWithError:(id)error
{
  errorCopy = error;
  fetchCompletionBlock = [(DAOfficeHoursContext *)self fetchCompletionBlock];

  if (fetchCompletionBlock)
  {
    [(DAOfficeHoursContext *)self finishFetchWithOfficeHours:0 error:errorCopy];
  }

  else
  {
    setCompletionBlock = [(DAOfficeHoursContext *)self setCompletionBlock];

    if (setCompletionBlock)
    {
      [(DAOfficeHoursContext *)self finishSetWithError:errorCopy];
    }
  }
}

@end