@interface SUAddiTunesPassOperation
- (SUAddiTunesPassOperation)initWithViewController:(id)controller;
- (void)addPassesViewControllerDidFinish:(id)finish;
- (void)run;
@end

@implementation SUAddiTunesPassOperation

- (SUAddiTunesPassOperation)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = SUAddiTunesPassOperation;
  v6 = [(SUAddiTunesPassOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authenticationContext, controller);
  }

  return v7;
}

- (void)run
{
  v68 = *MEMORY[0x1E69E9840];
  defaultStore = [MEMORY[0x1E69D4890] defaultStore];
  activeAccount = [defaultStore activeAccount];
  iTunesPassSerialNumber = [activeAccount ITunesPassSerialNumber];

  if (!iTunesPassSerialNumber)
  {
LABEL_12:
    v15 = objc_alloc(MEMORY[0x1E69E4770]);
    v16 = [MEMORY[0x1E69D49F8] contextWithBagType:0];
    v6 = [v15 initWithBagContext:v16];

    [v6 start];
    uRLBag = [v6 URLBag];
    v8 = uRLBag;
    if (!uRLBag)
    {
      mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog = [mEMORY[0x1E69D4938] shouldLog];
      if ([mEMORY[0x1E69D4938] shouldLogToDisk])
      {
        LODWORD(v41) = shouldLog | 2;
      }

      else
      {
        LODWORD(v41) = shouldLog;
      }

      oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v41 = v41;
      }

      else
      {
        v41 &= 2u;
      }

      if (!v41)
      {
        goto LABEL_65;
      }

      v64 = 138543362;
      v65 = objc_opt_class();
      v13 = v65;
      v14 = _os_log_send_and_compose_impl(v41, 0, 0, 0, &dword_1C21AF000, oSLogObject, 16, "%{public}@: Could not load bag", &v64, 12);
      goto LABEL_40;
    }

    mEMORY[0x1E69D4938] = [uRLBag valueForKey:@"getAddCreditPassUrl"];
    if ([mEMORY[0x1E69D4938] length])
    {
      v18 = [MEMORY[0x1E695DFF8] URLWithString:mEMORY[0x1E69D4938]];
      if (v18)
      {
        oSLogObject = v18;
        v19 = objc_alloc_init(MEMORY[0x1E69E47E0]);
        provider = [MEMORY[0x1E69E4738] provider];
        [v19 setDataProvider:provider];

        authenticationContext = [(SUAddiTunesPassOperation *)self authenticationContext];
        [v19 setAuthenticationContext:authenticationContext];

        v22 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURL:oSLogObject];
        [v19 setRequestProperties:v22];

        v63 = 0;
        v58 = v19;
        [(SUAddiTunesPassOperation *)self runSubOperation:v19 returningError:&v63];
        v23 = v63;
        if (v23 || ([v19 dataProvider], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "output"), v25 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v25, v23 = 0, v24, (isKindOfClass & 1) == 0))
        {
          mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
          LODWORD(v44) = [mEMORY[0x1E69D4938]2 shouldLog];
          if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
          {
            LODWORD(v44) = v44 | 2;
          }

          v45 = mEMORY[0x1E69D4938]2;
          oSLogObject2 = [mEMORY[0x1E69D4938]2 OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
          {
            v44 = v44;
          }

          else
          {
            v44 &= 2u;
          }

          if (v44)
          {
            v46 = objc_opt_class();
            v64 = 138543618;
            v65 = v46;
            v66 = 2114;
            v56 = v23;
            v67 = v23;
            v47 = v46;
            v48 = _os_log_send_and_compose_impl(v44, 0, 0, 0, &dword_1C21AF000, oSLogObject2, 16, "%{public}@: Failed to retrieve iTunes Pass data. Error: %{public}@", &v64, 22);

            if (!v48)
            {
              v23 = v56;
              v34 = v45;
LABEL_64:

              goto LABEL_65;
            }

            oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v48 encoding:4];
            free(v48);
            v34 = v45;
            SSFileLog();
            v23 = v56;
          }

          else
          {
            v34 = v45;
          }

LABEL_63:

          goto LABEL_64;
        }

        dataProvider = [v19 dataProvider];
        output = [dataProvider output];

        v62 = 0;
        v55 = output;
        oSLogObject2 = [objc_alloc(ISWeakLinkedClassForString()) initWithData:output error:&v62];
        v23 = v62;
        if (oSLogObject2)
        {
          [(SUAddiTunesPassOperation *)self setPresentedPass:oSLogObject2];
          v30 = dispatch_semaphore_create(0);
          [(SUAddiTunesPassOperation *)self setSemaphore:v30];

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __31__SUAddiTunesPassOperation_run__block_invoke;
          block[3] = &unk_1E81644A8;
          v60 = oSLogObject2;
          selfCopy = self;
          dispatch_async(MEMORY[0x1E69E96A0], block);
          semaphore = [(SUAddiTunesPassOperation *)self semaphore];
          dispatch_semaphore_wait(semaphore, 0xFFFFFFFFFFFFFFFFLL);

          if ([(SUAddiTunesPassOperation *)self addedCard])
          {
            presentedPass = [(SUAddiTunesPassOperation *)self presentedPass];
            [(SUAddiTunesPassOperation *)self setPass:presentedPass];

            [(SUAddiTunesPassOperation *)self setSuccess:1];
          }

          mEMORY[0x1E69D4938]3 = v60;
          goto LABEL_21;
        }

        mEMORY[0x1E69D4938]3 = [MEMORY[0x1E69D4938] sharedConfig];
        LODWORD(v49) = [mEMORY[0x1E69D4938]3 shouldLog];
        if ([mEMORY[0x1E69D4938]3 shouldLogToDisk])
        {
          LODWORD(v49) = v49 | 2;
        }

        oSLogObject3 = [mEMORY[0x1E69D4938]3 OSLogObject];
        if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
        {
          v49 = v49;
        }

        else
        {
          v49 &= 2u;
        }

        if (v49)
        {
          v57 = v23;
          v50 = objc_opt_class();
          v64 = 138543362;
          v65 = v50;
          v51 = v50;
          v52 = _os_log_send_and_compose_impl(v49, 0, 0, 0, &dword_1C21AF000, oSLogObject3, 16, "%{public}@: Failed to decode iTunes Pass", &v64, 12);

          if (!v52)
          {
            v23 = v57;
LABEL_21:
            v34 = v55;
LABEL_62:

            goto LABEL_63;
          }

          v53 = [MEMORY[0x1E696AEC0] stringWithCString:v52 encoding:4];
          free(v52);
          SSFileLog();
          v34 = v55;
          v23 = v57;
        }

        else
        {
          v53 = oSLogObject3;
          v34 = v55;
        }

        goto LABEL_62;
      }
    }

    oSLogObject = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog2 = [oSLogObject shouldLog];
    if ([oSLogObject shouldLogToDisk])
    {
      LODWORD(v36) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v36) = shouldLog2;
    }

    v12OSLogObject = [oSLogObject OSLogObject];
    if (os_log_type_enabled(v12OSLogObject, OS_LOG_TYPE_ERROR))
    {
      v36 = v36;
    }

    else
    {
      v36 &= 2u;
    }

    if (v36)
    {
      v64 = 138543362;
      v65 = objc_opt_class();
      v38 = v65;
      v39 = _os_log_send_and_compose_impl(v36, 0, 0, 0, &dword_1C21AF000, v12OSLogObject, 16, "%{public}@: Store credit bag key not available", &v64, 12);

      if (!v39)
      {
LABEL_65:

        goto LABEL_66;
      }

      v12OSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v39 encoding:4];
      free(v39);
      SSFileLog();
    }

    goto LABEL_65;
  }

  v6 = objc_alloc_init(ISWeakLinkedClassForString());
  v7 = [v6 passWithPassTypeIdentifier:@"pass.com.apple.itunes.storecredit" serialNumber:iTunesPassSerialNumber];
  if (!v7)
  {

    goto LABEL_12;
  }

  v8 = v7;
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog3 = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    LODWORD(v11) = shouldLog3 | 2;
  }

  else
  {
    LODWORD(v11) = shouldLog3;
  }

  oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v11 = v11;
  }

  else
  {
    v11 &= 2u;
  }

  if (!v11)
  {
    goto LABEL_65;
  }

  v64 = 138543362;
  v65 = objc_opt_class();
  v13 = v65;
  v14 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_1C21AF000, oSLogObject, 16, "%{public}@: iTunes Pass already exists", &v64, 12);
LABEL_40:
  v42 = v14;

  if (v42)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v42 encoding:4];
    free(v42);
    SSFileLog();
    goto LABEL_65;
  }

LABEL_66:
}

void __31__SUAddiTunesPassOperation_run__block_invoke(uint64_t a1)
{
  v3 = [objc_alloc(ISWeakLinkedClassForString()) initWithPass:*(a1 + 32)];
  [v3 setDelegate:*(a1 + 40)];
  v2 = [*(a1 + 40) viewController];
  [v2 presentViewController:v3 animated:1 completion:0];
}

- (void)addPassesViewControllerDidFinish:(id)finish
{
  v28 = *MEMORY[0x1E69E9840];
  finishCopy = finish;
  v5 = objc_alloc_init(ISWeakLinkedClassForString());
  presentedPass = [(SUAddiTunesPassOperation *)self presentedPass];
  v7 = [v5 containsPass:presentedPass];

  if (v7)
  {
    defaultStore = [MEMORY[0x1E69D4890] defaultStore];
    activeAccount = [defaultStore activeAccount];

    presentedPass2 = [(SUAddiTunesPassOperation *)self presentedPass];
    serialNumber = [presentedPass2 serialNumber];
    [activeAccount setITunesPassSerialNumber:serialNumber];

    defaultStore2 = [MEMORY[0x1E69D4890] defaultStore];
    v23 = 0;
    [defaultStore2 saveAccount:activeAccount error:&v23];
    v13 = v23;

    if (!v13)
    {
      [(SUAddiTunesPassOperation *)self setAddedCard:1];
      goto LABEL_15;
    }

    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      LODWORD(v16) = shouldLog | 2;
    }

    else
    {
      LODWORD(v16) = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v16 = v16;
    }

    else
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v18 = objc_opt_class();
      v24 = 138543618;
      v25 = v18;
      v26 = 2114;
      v27 = v13;
      v19 = v18;
      v20 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &dword_1C21AF000, oSLogObject, 16, "%{public}@: Failed to save account. Error: %{public}@", &v24, 22);

      if (!v20)
      {
LABEL_13:

LABEL_15:
        goto LABEL_16;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:4];
      free(v20);
      v22 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_16:
  [finishCopy dismissViewControllerAnimated:1 completion:{0, v22}];
  semaphore = [(SUAddiTunesPassOperation *)self semaphore];
  dispatch_semaphore_signal(semaphore);
}

@end