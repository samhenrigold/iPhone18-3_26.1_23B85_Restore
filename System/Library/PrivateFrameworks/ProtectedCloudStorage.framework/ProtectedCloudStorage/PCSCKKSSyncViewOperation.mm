@interface PCSCKKSSyncViewOperation
- (BOOL)ensureControl;
- (PCSCKKSSyncViewOperation)initWithItemModifyContext:(id)context;
- (void)checkTLKStatus;
- (void)start;
- (void)syncView;
@end

@implementation PCSCKKSSyncViewOperation

- (PCSCKKSSyncViewOperation)initWithItemModifyContext:(id)context
{
  contextCopy = context;
  if ((PCSCurrentPersonaMatchesDSIDFromSet([contextCopy set]) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "dsid does not match current persona's account dsid", buf, 2u);
    }

    goto LABEL_8;
  }

  if (!contextCopy || ([contextCopy serviceContexts], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, !v7) || (v12.receiver = self, v12.super_class = PCSCKKSSyncViewOperation, v8 = -[PCSCKKSSyncViewOperation init](&v12, sel_init), (self = v8) == 0))
  {
LABEL_8:
    selfCopy = 0;
    goto LABEL_9;
  }

  objc_storeStrong(&v8->_context, context);
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SyncViewOperation"];
  [(PCSCKKSSyncViewOperation *)self setName:v9];

  self = self;
  selfCopy = self;
LABEL_9:

  return selfCopy;
}

- (void)start
{
  PCSMigrationLog([(PCSCKKSItemModifyContext *)self->_context log], @"Starting: %s", "[PCSCKKSSyncViewOperation start]");
  if ([(PCSCKKSOperation *)self startOperation])
  {
    context = [(PCSCKKSSyncViewOperation *)self context];
    v4 = PCSCurrentPersonaMatchesDSIDFromSet([context set]);

    if (v4)
    {
      if ([(PCSCKKSItemModifyContext *)self->_context sync])
      {

        [(PCSCKKSSyncViewOperation *)self checkTLKStatus];
      }

      else
      {

        [(PCSCKKSOperation *)self completeOperation];
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "dsid does not match current persona's account dsid", buf, 2u);
      }

      [(PCSCKKSOperation *)self completeOperation];
    }
  }
}

- (BOOL)ensureControl
{
  v15[1] = *MEMORY[0x1E69E9840];
  context = [(PCSCKKSSyncViewOperation *)self context];
  v4 = PCSCurrentPersonaMatchesDSIDFromSet([context set]);

  if ((v4 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "dsid does not match current persona's account dsid", buf, 2u);
    }

    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:kPCSErrorDomain code:46 userInfo:&unk_1F2998368];
    [(PCSCKKSOperation *)self setError:v6];
    goto LABEL_10;
  }

  v12 = 0;
  v5 = [MEMORY[0x1E697AA20] controlObject:&v12];
  v6 = v12;
  [(PCSCKKSSyncViewOperation *)self setCKKSControl:v5];

  cKKSControl = [(PCSCKKSSyncViewOperation *)self CKKSControl];
  v8 = cKKSControl != 0;

  if (!cKKSControl)
  {
    if (v6)
    {
      v14 = *MEMORY[0x1E696AA08];
      v15[0] = v6;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    }

    else
    {
      v9 = 0;
    }

    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:kPCSErrorDomain code:109 userInfo:v9];
    [(PCSCKKSOperation *)self setError:v10];

LABEL_10:
    v8 = 0;
  }

  return v8;
}

- (void)checkTLKStatus
{
  v31[1] = *MEMORY[0x1E69E9840];
  if ([(PCSCKKSSyncViewOperation *)self ensureControl])
  {
    context = [(PCSCKKSSyncViewOperation *)self context];
    v4 = PCSCurrentPersonaMatchesDSIDFromSet([context set]);

    if (v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      context2 = [(PCSCKKSSyncViewOperation *)self context];
      serviceContexts = [context2 serviceContexts];

      v8 = [serviceContexts countByEnumeratingWithState:&v23 objects:v29 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v24;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v24 != v10)
            {
              objc_enumerationMutation(serviceContexts);
            }

            v12 = PCSServiceItemGetCKKSViewByName(*(*(&v23 + 1) + 8 * i));
            [v5 addObject:v12];
          }

          v9 = [serviceContexts countByEnumeratingWithState:&v23 objects:v29 count:16];
        }

        while (v9);
      }

      allObjects = [v5 allObjects];
      v14 = [allObjects sortedArrayUsingSelector:sel_compare_];
      v15 = [v14 componentsJoinedByString:{@", "}];

      v16 = pcsLogObjForScope("ckks");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v28 = v15;
        _os_log_impl(&dword_1B229C000, v16, OS_LOG_TYPE_DEFAULT, "Checking if CKKS reports bad state for active views (%{public}@)", buf, 0xCu);
      }

      cKKSControl = [(PCSCKKSSyncViewOperation *)self CKKSControl];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __42__PCSCKKSSyncViewOperation_checkTLKStatus__block_invoke;
      v22[3] = &unk_1E7B190E8;
      v22[4] = self;
      [cKKSControl rpcKnownBadStateForViews:allObjects reply:v22];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "dsid does not match current persona's account dsid", buf, 2u);
      }

      v18 = MEMORY[0x1E696ABC0];
      v19 = kPCSErrorDomain;
      v30 = *MEMORY[0x1E696A578];
      v31[0] = @"dsid does not match current persona's account dsid";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      v21 = [v18 errorWithDomain:v19 code:146 userInfo:v20];
      [(PCSCKKSOperation *)self setError:v21];

      [(PCSCKKSOperation *)self completeOperation];
    }
  }

  else
  {

    [(PCSCKKSOperation *)self completeOperation];
  }
}

uint64_t __42__PCSCKKSSyncViewOperation_checkTLKStatus__block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = pcsLogObjForScope("ckks");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2 > 1)
  {
    switch(a2)
    {
      case 2:
        if (v5)
        {
          LOWORD(v9[0]) = 0;
          _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "CKKS response for active views: Needs unlock", v9, 2u);
        }

        v6 = 132;
        goto LABEL_25;
      case 3:
        if (v5)
        {
          LOWORD(v9[0]) = 0;
          _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "CKKS response for active views: wait for Octagon", v9, 2u);
        }

        v6 = 156;
        goto LABEL_25;
      case 4:
        if (v5)
        {
          LOWORD(v9[0]) = 0;
          _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "CKKS response for active views: no CloudKit account", v9, 2u);
        }

        v6 = 157;
LABEL_25:

        v8 = [MEMORY[0x1E696ABC0] errorWithDomain:kPCSErrorDomain code:v6 userInfo:0];
        [*(a1 + 32) setError:v8];

        return [*(a1 + 32) completeOperation];
    }

LABEL_22:
    if (v5)
    {
      v9[0] = 67109120;
      v9[1] = a2;
      _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "CKKS response for active views: unknown but likely fatal error: %d", v9, 8u);
    }

    v6 = 133;
    goto LABEL_25;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      if (v5)
      {
        LOWORD(v9[0]) = 0;
        _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "CKKS response for active views: TLKs missing", v9, 2u);
      }

      v6 = 108;
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (v5)
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&dword_1B229C000, v4, OS_LOG_TYPE_DEFAULT, "CKKS response for active views: Likely good", v9, 2u);
  }

  return [*(a1 + 32) syncView];
}

- (void)syncView
{
  v27[1] = *MEMORY[0x1E69E9840];
  if ([(PCSCKKSSyncViewOperation *)self ensureControl])
  {
    context = [(PCSCKKSSyncViewOperation *)self context];
    v4 = PCSCurrentPersonaMatchesDSIDFromSet([context set]);

    if (v4)
    {
      v5 = pcsLogObjForScope("ckks");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B229C000, v5, OS_LOG_TYPE_DEFAULT, "Syncing ckks views", buf, 2u);
      }

      context2 = [(PCSCKKSSyncViewOperation *)self context];
      v7 = [context2 mtt];
      v8 = [v7 measurePoint:@"CKKSSyncView"];

      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __36__PCSCKKSSyncViewOperation_syncView__block_invoke;
      v22 = &unk_1E7B19110;
      selfCopy = self;
      v24 = v8;
      v9 = v8;
      v10 = MEMORY[0x1B2745320](&v19);
      v11 = [(PCSCKKSSyncViewOperation *)self context:v19];
      forceSync = [v11 forceSync];

      cKKSControl = [(PCSCKKSSyncViewOperation *)self CKKSControl];
      v14 = cKKSControl;
      if (forceSync)
      {
        [cKKSControl rpcFetchAndProcessChanges:0 reply:v10];
      }

      else
      {
        [cKKSControl rpcFetchAndProcessChangesIfNoRecentFetch:0 reply:v10];
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B229C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "dsid does not match current persona's account dsid", buf, 2u);
      }

      v15 = MEMORY[0x1E696ABC0];
      v16 = kPCSErrorDomain;
      v26 = *MEMORY[0x1E696A578];
      v27[0] = @"dsid does not match current persona's account dsid";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      v18 = [v15 errorWithDomain:v16 code:146 userInfo:v17];
      [(PCSCKKSOperation *)self setError:v18];

      [(PCSCKKSOperation *)self completeOperation];
    }
  }

  else
  {

    [(PCSCKKSOperation *)self completeOperation];
  }
}

void __36__PCSCKKSSyncViewOperation_syncView__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) context];
  v4 = [v3 log];
  if (v5)
  {
    PCSMigrationLog(v4, @"Syncing CKKS views failed with: %@", v5);

    [*(a1 + 32) setError:v5];
  }

  else
  {
    PCSMigrationLog(v4, @"Syncing CKKS views successful");
  }

  [*(a1 + 40) complete:v5 == 0];
  [*(a1 + 32) completeOperation];
}

@end