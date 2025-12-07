@interface SUCardEnrollmentUpsellOperation
- (SUCardEnrollmentUpsellOperation)initWithViewController:(id)controller;
- (id)_paymentSetupFeature;
- (void)paymentSetupViewControllerDidDismiss;
- (void)run;
@end

@implementation SUCardEnrollmentUpsellOperation

- (SUCardEnrollmentUpsellOperation)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = SUCardEnrollmentUpsellOperation;
  v6 = [(SUCardEnrollmentUpsellOperation *)&v10 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.AppleMediaServices.SUCardEnrollmentUpsellOperation.dispatch", 0);
    dispatchQueue = v6->_dispatchQueue;
    v6->_dispatchQueue = v7;

    objc_storeStrong(&v6->_viewController, controller);
  }

  return v6;
}

- (void)run
{
  v60 = *MEMORY[0x1E69E9840];
  _paymentSetupFeature = [(SUCardEnrollmentUpsellOperation *)self _paymentSetupFeature];
  if (_paymentSetupFeature)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__SUCardEnrollmentUpsellOperation_run__block_invoke;
    block[3] = &unk_1E81644A8;
    block[4] = self;
    mEMORY[0x1E69D4938]5 = _paymentSetupFeature;
    v56 = mEMORY[0x1E69D4938]5;
    dispatch_sync(dispatchQueue, block);
    v6 = objc_alloc_init(ISWeakLinkedClassForString());
    referrerIdentifier = [(SUCardEnrollmentUpsellOperation *)self referrerIdentifier];
    [v6 setReferrerIdentifier:referrerIdentifier];

    v8 = objc_alloc_init(ISWeakLinkedClassForString());
    [v8 setConfiguration:v6];
    v57 = mEMORY[0x1E69D4938]5;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
    [v8 setPaymentSetupFeatures:v9];

    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    mEMORY[0x1E69D4938]2 = mEMORY[0x1E69D4938];
    if (v8)
    {
      if (!mEMORY[0x1E69D4938])
      {
        mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
      }

      shouldLog = [mEMORY[0x1E69D4938]2 shouldLog];
      if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
      {
        LODWORD(v13) = shouldLog | 2;
      }

      else
      {
        LODWORD(v13) = shouldLog;
      }

      oSLogObject = [mEMORY[0x1E69D4938]2 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v13;
      }

      else
      {
        v13 &= 2u;
      }

      if (v13)
      {
        v15 = objc_opt_class();
        v58 = 138543362;
        v59 = v15;
        v16 = v15;
        v17 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_1C21AF000, oSLogObject, 0, "%{public}@: Preparing to display upsell view controller", &v58, 12);

        if (!v17)
        {
          goto LABEL_15;
        }

        oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:4];
        free(v17);
        v47 = oSLogObject;
        SSFileLog();
      }

LABEL_15:
      v18 = dispatch_semaphore_create(0);
      [(SUCardEnrollmentUpsellOperation *)self setSemaphore:v18];

      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __38__SUCardEnrollmentUpsellOperation_run__block_invoke_12;
      v52[3] = &unk_1E81644A8;
      v53 = v8;
      selfCopy = self;
      dispatch_async(MEMORY[0x1E69E96A0], v52);
      semaphore = [(SUCardEnrollmentUpsellOperation *)self semaphore];
      dispatch_semaphore_wait(semaphore, 0xFFFFFFFFFFFFFFFFLL);

      mEMORY[0x1E69D4938]3 = [MEMORY[0x1E69D4938] sharedConfig];
      if (!mEMORY[0x1E69D4938]3)
      {
        mEMORY[0x1E69D4938]3 = [MEMORY[0x1E69D4938] sharedConfig];
      }

      shouldLog2 = [mEMORY[0x1E69D4938]3 shouldLog];
      if ([mEMORY[0x1E69D4938]3 shouldLogToDisk])
      {
        LODWORD(v22) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v22) = shouldLog2;
      }

      oSLogObject2 = [mEMORY[0x1E69D4938]3 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v22;
      }

      else
      {
        v22 &= 2u;
      }

      if (v22)
      {
        v24 = objc_opt_class();
        v58 = 138543362;
        v59 = v24;
        v25 = v24;
        LODWORD(v49) = 12;
        v26 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &dword_1C21AF000, oSLogObject2, 0, "%{public}@: Finishing upsell view controller operation", &v58, v49);

        if (!v26)
        {
          goto LABEL_27;
        }

        oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v26 encoding:4];
        free(v26);
        v48 = oSLogObject2;
        SSFileLog();
      }

LABEL_27:
      _paymentSetupFeature2 = [(SUCardEnrollmentUpsellOperation *)self _paymentSetupFeature];

      if (_paymentSetupFeature2)
      {
        v28 = self->_dispatchQueue;
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __38__SUCardEnrollmentUpsellOperation_run__block_invoke_14;
        v50[3] = &unk_1E81644A8;
        v50[4] = self;
        v51 = _paymentSetupFeature2;
        dispatch_sync(v28, v50);

LABEL_66:
        mEMORY[0x1E69D4938]2 = v53;
        mEMORY[0x1E69D4938]5 = _paymentSetupFeature2;
        goto LABEL_67;
      }

      mEMORY[0x1E69D4938]4 = [MEMORY[0x1E69D4938] sharedConfig];
      if (!mEMORY[0x1E69D4938]4)
      {
        mEMORY[0x1E69D4938]4 = [MEMORY[0x1E69D4938] sharedConfig];
      }

      shouldLog3 = [mEMORY[0x1E69D4938]4 shouldLog];
      if ([mEMORY[0x1E69D4938]4 shouldLogToDisk])
      {
        LODWORD(v42) = shouldLog3 | 2;
      }

      else
      {
        LODWORD(v42) = shouldLog3;
      }

      oSLogObject3 = [mEMORY[0x1E69D4938]4 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v42 = v42;
      }

      else
      {
        v42 &= 2u;
      }

      if (v42)
      {
        v44 = objc_opt_class();
        v58 = 138543362;
        v59 = v44;
        v45 = v44;
        LODWORD(v49) = 12;
        v46 = _os_log_send_and_compose_impl(v42, 0, 0, 0, &dword_1C21AF000, oSLogObject3, 16, "%{public}@: Exiting upsell operation for no payment setup feature on completion", &v58, v49);

        if (!v46)
        {
LABEL_65:

          goto LABEL_66;
        }

        oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v46 encoding:4];
        free(v46);
        SSFileLog();
      }

      goto LABEL_65;
    }

    if (!mEMORY[0x1E69D4938])
    {
      mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
    }

    shouldLog4 = [mEMORY[0x1E69D4938]2 shouldLog];
    if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
    {
      LODWORD(v35) = shouldLog4 | 2;
    }

    else
    {
      LODWORD(v35) = shouldLog4;
    }

    oSLogObject4 = [mEMORY[0x1E69D4938]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
    {
      v35 = v35;
    }

    else
    {
      v35 &= 2u;
    }

    if (v35)
    {
      v37 = objc_opt_class();
      v58 = 138543362;
      v59 = v37;
      v38 = v37;
      v39 = _os_log_send_and_compose_impl(v35, 0, 0, 0, &dword_1C21AF000, oSLogObject4, 16, "%{public}@: Exiting upsell operation for no payment setup request", &v58, 12);

      if (!v39)
      {
LABEL_67:

        goto LABEL_68;
      }

      oSLogObject4 = [MEMORY[0x1E696AEC0] stringWithCString:v39 encoding:4];
      free(v39);
      SSFileLog();
    }

    goto LABEL_67;
  }

  mEMORY[0x1E69D4938]5 = [MEMORY[0x1E69D4938] sharedConfig];
  if (!mEMORY[0x1E69D4938]5)
  {
    mEMORY[0x1E69D4938]5 = [MEMORY[0x1E69D4938] sharedConfig];
  }

  shouldLog5 = [mEMORY[0x1E69D4938]5 shouldLog];
  if ([mEMORY[0x1E69D4938]5 shouldLogToDisk])
  {
    LODWORD(v30) = shouldLog5 | 2;
  }

  else
  {
    LODWORD(v30) = shouldLog5;
  }

  oSLogObject5 = [mEMORY[0x1E69D4938]5 OSLogObject];
  if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
  {
    v30 = v30;
  }

  else
  {
    v30 &= 2u;
  }

  if (!v30)
  {
    goto LABEL_40;
  }

  v58 = 138543362;
  v59 = objc_opt_class();
  v32 = v59;
  v33 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &dword_1C21AF000, oSLogObject5, 16, "%{public}@: Exiting upsell operation for no payment setup feature", &v58, 12);

  if (v33)
  {
    oSLogObject5 = [MEMORY[0x1E696AEC0] stringWithCString:v33 encoding:4];
    free(v33);
    SSFileLog();
LABEL_40:
  }

LABEL_68:
}

void *__38__SUCardEnrollmentUpsellOperation_run__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69D4938] sharedConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x1E69D4938] sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  v6 = objc_opt_class();
  v7 = MEMORY[0x1E696AD98];
  v8 = *(a1 + 40);
  v9 = v6;
  v10 = [v7 numberWithInteger:{objc_msgSend(v8, "state")}];
  v13 = 138543618;
  v14 = v6;
  v15 = 2114;
  v16 = v10;
  v11 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_1C21AF000, v5, 0, "%{public}@: Initial payment setup feature state: %{public}@", &v13, 22);

  if (v11)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:4];
    free(v11);
    SSFileLog();
LABEL_12:
  }

  result = [*(a1 + 40) state];
  *(*(a1 + 32) + 352) = result;
  return result;
}

void __38__SUCardEnrollmentUpsellOperation_run__block_invoke_12(uint64_t a1)
{
  v3 = [[SUPaymentSetupViewController alloc] initWithPaymentSetupRequest:*(a1 + 32)];
  [(SUPaymentSetupViewController *)v3 setDelegate:*(a1 + 40)];
  v2 = [*(a1 + 40) viewController];
  [v2 presentViewController:v3 animated:0 completion:&__block_literal_global_13];
}

void __38__SUCardEnrollmentUpsellOperation_run__block_invoke_2()
{
  v0 = [MEMORY[0x1E69D4938] sharedConfig];
  if (!v0)
  {
    v0 = [MEMORY[0x1E69D4938] sharedConfig];
  }

  v1 = [v0 shouldLog];
  if ([v0 shouldLogToDisk])
  {
    v2 = v1 | 2;
  }

  else
  {
    v2 = v1;
  }

  v3 = [v0 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v2;
  }

  else
  {
    v4 = v2 & 2;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  v6[0] = 0;
  v5 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_1C21AF000, v3, 0, "SUCardEnrollmentUpsellOperation: Did present upsell view controller", v6, 2);

  if (v5)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithCString:v5 encoding:4];
    free(v5);
    SSFileLog();
LABEL_12:
  }
}

void *__38__SUCardEnrollmentUpsellOperation_run__block_invoke_14(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69D4938] sharedConfig];
  if (!v2)
  {
    v2 = [MEMORY[0x1E69D4938] sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  v6 = objc_opt_class();
  v7 = MEMORY[0x1E696AD98];
  v8 = *(a1 + 40);
  v9 = v6;
  v10 = [v7 numberWithInteger:{objc_msgSend(v8, "state")}];
  v13 = 138543618;
  v14 = v6;
  v15 = 2114;
  v16 = v10;
  v11 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &dword_1C21AF000, v5, 0, "%{public}@: Final payment setup feature state: %{public}@", &v13, 22);

  if (v11)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:4];
    free(v11);
    SSFileLog();
LABEL_12:
  }

  result = [*(a1 + 40) state];
  *(*(a1 + 32) + 352) = result;
  return result;
}

- (id)_paymentSetupFeature
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E698CAB8]);
  referrerIdentifier = [(SUCardEnrollmentUpsellOperation *)self referrerIdentifier];
  v5 = [v3 initWithIdentifier:referrerIdentifier];

  performPaymentSetupFeatureLookup = [v5 performPaymentSetupFeatureLookup];
  v17 = 0;
  v7 = [performPaymentSetupFeatureLookup resultWithError:&v17];
  v8 = v17;

  if (v8)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    if (!mEMORY[0x1E69D4938])
    {
      mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    }

    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      LODWORD(v11) = shouldLog | 2;
    }

    else
    {
      LODWORD(v11) = shouldLog;
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

    if (v11)
    {
      v13 = objc_opt_class();
      v18 = 138543618;
      v19 = v13;
      v20 = 2114;
      v21 = v8;
      v14 = v13;
      v15 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_1C21AF000, oSLogObject, 16, "%{public}@: Failed to find payment setup feature with error: %{public}@", &v18, 22);

      if (!v15)
      {
LABEL_14:

        goto LABEL_15;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:4];
      free(v15);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:

  return v7;
}

- (void)paymentSetupViewControllerDidDismiss
{
  v12 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  if (!mEMORY[0x1E69D4938])
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  }

  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v10 = 138543362;
  v11 = objc_opt_class();
  v7 = v11;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &dword_1C21AF000, oSLogObject, 0, "%{public}@: Upsell view controller delegate called", &v10, 12);

  if (v8)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog();
LABEL_12:
  }

  semaphore = [(SUCardEnrollmentUpsellOperation *)self semaphore];
  dispatch_semaphore_signal(semaphore);
}

@end