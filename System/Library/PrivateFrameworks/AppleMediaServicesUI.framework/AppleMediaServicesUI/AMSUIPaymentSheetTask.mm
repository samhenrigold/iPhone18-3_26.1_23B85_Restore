@interface AMSUIPaymentSheetTask
- (id)presentationSceneBundleIdentifierForPaymentAuthorizationController:(id)controller;
- (id)presentationSceneIdentifierForPaymentAuthorizationController:(id)controller;
- (id)presentationWindowForPaymentAuthorizationController:(id)controller;
- (void)_didDismissPaymentAuthorizationController:(id)controller;
- (void)paymentAuthorizationControllerDidFinish:(id)finish;
@end

@implementation AMSUIPaymentSheetTask

- (void)_didDismissPaymentAuthorizationController:(id)controller
{
  v17 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedPurchaseConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = AMSLogKey();
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    if (v7)
    {
      v10 = AMSLogKey();
      a2 = NSStringFromSelector(a2);
      [v8 stringWithFormat:@"%@: [%@] %@ ", v9, v10, a2];
    }

    else
    {
      v10 = NSStringFromSelector(a2);
      [v8 stringWithFormat:@"%@: %@ ", v9, v10];
    }
    v11 = ;
    v12 = AMSHashIfNeeded();
    *buf = 138543618;
    v14 = v11;
    v15 = 2114;
    v16 = v12;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@controller: %{public}@", buf, 0x16u);
    if (v7)
    {

      v11 = a2;
    }
  }
}

- (void)paymentAuthorizationControllerDidFinish:(id)finish
{
  v3.receiver = self;
  v3.super_class = AMSUIPaymentSheetTask;
  [(AMSPaymentSheetTask *)&v3 paymentAuthorizationControllerDidFinish:finish];
}

- (id)presentationSceneIdentifierForPaymentAuthorizationController:(id)controller
{
  v114 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v6 = 0x1E698C000uLL;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedPurchaseConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = AMSLogKey();
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_opt_class();
    if (v9)
    {
      v12 = AMSLogKey();
      v3 = NSStringFromSelector(a2);
      [v10 stringWithFormat:@"%@: [%@] %@ ", v11, v12, v3];
    }

    else
    {
      v12 = NSStringFromSelector(a2);
      [v10 stringWithFormat:@"%@: %@ ", v11, v12];
    }
    v13 = ;
    v14 = AMSHashIfNeeded();
    *buf = 138543618;
    v107 = v13;
    v108 = 2114;
    v109 = v14;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@controller: %{public}@", buf, 0x16u);
    if (v9)
    {

      v13 = v3;
    }

    v6 = 0x1E698C000uLL;
  }

  purchaseInfo = [(AMSPaymentSheetTask *)self purchaseInfo];
  delegate = [purchaseInfo delegate];

  v101 = delegate;
  if (!delegate)
  {
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
    if (!mEMORY[0x1E698C968]2)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_49;
    }

    v27 = AMSLogKey();
    delegate = MEMORY[0x1E696AEC0];
    v28 = objc_opt_class();
    if (v27)
    {
      v29 = AMSLogKey();
      purchaseInfo = NSStringFromSelector(a2);
      [delegate stringWithFormat:@"%@: [%@] %@ ", v28, v29, purchaseInfo];
    }

    else
    {
      v29 = NSStringFromSelector(a2);
      [delegate stringWithFormat:@"%@: %@ ", v28, v29];
    }
    v30 = ;
    *buf = 138543362;
    v107 = v30;
    _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@Delegate is nil", buf, 0xCu);
    if (v27)
    {

      v30 = purchaseInfo;
    }

    goto LABEL_48;
  }

  v17 = &selRef_reportMetricsForContext_;
  if (([delegate conformsToProtocol:&unk_1F3997F38] & 1) == 0)
  {
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
    if (!mEMORY[0x1E698C968]2)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_49;
    }

    v100 = controllerCopy;
    v31 = AMSLogKey();
    v32 = MEMORY[0x1E696AEC0];
    v33 = objc_opt_class();
    if (v31)
    {
      v34 = AMSLogKey();
      v6 = NSStringFromSelector(a2);
      [v32 stringWithFormat:@"%@: [%@] %@ ", v33, v34, v6];
    }

    else
    {
      v34 = NSStringFromSelector(a2);
      [v32 stringWithFormat:@"%@: %@ ", v33, v34];
    }
    v35 = ;
    purchaseInfo = AMSHashIfNeeded();
    delegate = NSStringFromProtocol(&unk_1F3997F38);
    *buf = 138543874;
    v107 = v35;
    v108 = 2114;
    v109 = purchaseInfo;
    v110 = 2114;
    v111 = delegate;
    _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@Delegate %{public}@ does not conform to %{public}@, cannot return window.", buf, 0x20u);
    if (v31)
    {

      v35 = v6;
    }

    goto LABEL_47;
  }

  if (objc_opt_respondsToSelector())
  {
    mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
    if (!mEMORY[0x1E698C968]3)
    {
      mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject3 = [mEMORY[0x1E698C968]3 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v99 = controllerCopy;
      v20 = AMSLogKey();
      v21 = MEMORY[0x1E696AEC0];
      v22 = objc_opt_class();
      if (v20)
      {
        v23 = AMSLogKey();
        v17 = NSStringFromSelector(a2);
        [v21 stringWithFormat:@"%@: [%@] %@ ", v22, v23, v17];
      }

      else
      {
        v23 = NSStringFromSelector(a2);
        [v21 stringWithFormat:@"%@: %@ ", v22, v23];
      }
      v24 = ;
      v72 = AMSHashIfNeeded();
      v73 = NSStringFromSelector(sel_purchase_handleSceneIdentifierRequest_error_);
      *buf = 138543874;
      v107 = v24;
      v108 = 2114;
      v109 = v72;
      v110 = 2114;
      v111 = v73;
      _os_log_impl(&dword_1BB036000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@Calling into delegate: %{public}@, selector: %{public}@", buf, 0x20u);
      if (v20)
      {

        v24 = v17;
      }

      controllerCopy = v99;
      v6 = 0x1E698C000uLL;
    }

    purchaseInfo = [(AMSPaymentSheetTask *)self purchaseInfo];
    delegate = [purchaseInfo purchase];
    v74 = +[AMSUISceneIdentifierRequest sceneIdentifierRequest];
    v105 = 0;
    v54 = [v101 purchase:delegate handleSceneIdentifierRequest:v74 error:&v105];
    v75 = v105;

    if (!v75)
    {
LABEL_117:

      if (v54)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    }

    mEMORY[0x1E698C968]4 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
    if (!mEMORY[0x1E698C968]4)
    {
      mEMORY[0x1E698C968]4 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject4 = [mEMORY[0x1E698C968]4 OSLogObject];
    if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_115;
    }

    v78 = controllerCopy;
    v79 = AMSLogKey();
    v80 = MEMORY[0x1E696AEC0];
    v81 = objc_opt_class();
    v82 = v81;
    if (v79)
    {
      purchaseInfo = AMSLogKey();
      [v80 stringWithFormat:@"%@: [%@] ", v82, purchaseInfo];
    }

    else
    {
      [v80 stringWithFormat:@"%@: ", v81];
    }
    v83 = ;
    delegate = AMSLogableError();
    *buf = 138543618;
    v107 = v83;
    v108 = 2114;
    v109 = delegate;
    _os_log_impl(&dword_1BB036000, oSLogObject4, OS_LOG_TYPE_ERROR, "%{public}@Sync scene identifier request failed with error: %{public}@", buf, 0x16u);
    if (v79)
    {

      v83 = purchaseInfo;
    }

    controllerCopy = v78;
LABEL_114:
    v6 = 0x1E698C000;
LABEL_115:

LABEL_116:
    goto LABEL_117;
  }

  purchaseInfo = objc_opt_respondsToSelector();
  mEMORY[0x1E698C968]5 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
  mEMORY[0x1E698C968]2 = mEMORY[0x1E698C968]5;
  if (purchaseInfo)
  {
    if (!mEMORY[0x1E698C968]5)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject5 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
    {
      v98 = controllerCopy;
      v38 = AMSLogKey();
      v39 = MEMORY[0x1E696AEC0];
      v40 = objc_opt_class();
      if (v38)
      {
        v41 = AMSLogKey();
        v17 = NSStringFromSelector(a2);
        [v39 stringWithFormat:@"%@: [%@] %@ ", v40, v41, v17];
      }

      else
      {
        v41 = NSStringFromSelector(a2);
        [v39 stringWithFormat:@"%@: %@ ", v40, v41];
      }
      v42 = ;
      v84 = AMSHashIfNeeded();
      v85 = NSStringFromSelector(sel_purchase_handleSceneIdentifierRequest_completion_);
      *buf = 138543874;
      v107 = v42;
      v108 = 2114;
      v109 = v84;
      v110 = 2114;
      v111 = v85;
      _os_log_impl(&dword_1BB036000, oSLogObject5, OS_LOG_TYPE_DEFAULT, "%{public}@Calling into delegate: %{public}@, selector: %{public}@", buf, 0x20u);
      if (v38)
      {

        v42 = v17;
      }

      controllerCopy = v98;
      v6 = 0x1E698C000uLL;
    }

    v75 = objc_alloc_init(MEMORY[0x1E698CAD0]);
    purchaseInfo = [(AMSPaymentSheetTask *)self purchaseInfo];
    delegate = [purchaseInfo purchase];
    v86 = +[AMSUISceneIdentifierRequest sceneIdentifierRequest];
    completionHandlerAdapter = [v75 completionHandlerAdapter];
    [v101 purchase:delegate handleSceneIdentifierRequest:v86 completion:completionHandlerAdapter];

    v104 = 0;
    v54 = [v75 resultWithError:&v104];
    mEMORY[0x1E698C968]4 = v104;
    if (!mEMORY[0x1E698C968]4)
    {
      goto LABEL_116;
    }

    oSLogObject4 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
    if (!oSLogObject4)
    {
      oSLogObject4 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v77OSLogObject = [oSLogObject4 OSLogObject];
    if (os_log_type_enabled(v77OSLogObject, OS_LOG_TYPE_ERROR))
    {
      v89 = controllerCopy;
      v90 = AMSLogKey();
      v91 = MEMORY[0x1E696AEC0];
      v92 = objc_opt_class();
      v93 = v92;
      if (v90)
      {
        v98 = AMSLogKey();
        [v91 stringWithFormat:@"%@: [%@] ", v93, v98];
      }

      else
      {
        [v91 stringWithFormat:@"%@: ", v92];
      }
      purchaseInfo = ;
      delegate = AMSLogableError();
      *buf = 138543618;
      v107 = purchaseInfo;
      v108 = 2114;
      v109 = delegate;
      _os_log_impl(&dword_1BB036000, v77OSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Scene identifier request failed with error: %{public}@", buf, 0x16u);
      if (v90)
      {

        purchaseInfo = v98;
      }

      controllerCopy = v89;
    }

    goto LABEL_114;
  }

  if (!mEMORY[0x1E698C968]5)
  {
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v100 = controllerCopy;
    v43 = AMSLogKey();
    v44 = MEMORY[0x1E696AEC0];
    delegate = objc_opt_class();
    v45 = v43;
    if (v43)
    {
      v46 = AMSLogKey();
      v96 = NSStringFromSelector(a2);
      v97 = v46;
      [v44 stringWithFormat:@"%@: [%@] %@ ", delegate, v46, v96];
    }

    else
    {
      v97 = NSStringFromSelector(a2);
      [v44 stringWithFormat:@"%@: %@ ", delegate, v97];
    }
    v47 = ;
    v94 = AMSHashIfNeeded();
    v95 = NSStringFromSelector(sel_purchase_handleSceneIdentifierRequest_completion_);
    purchaseInfo = NSStringFromSelector(sel_purchase_handleSceneIdentifierRequest_error_);
    *buf = 138544130;
    v107 = v47;
    v108 = 2114;
    v109 = v94;
    v110 = 2114;
    v111 = v95;
    v112 = 2114;
    v113 = purchaseInfo;
    _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@Delegate %{public}@ does not implement %{public}@ or %{public}@, cannot return window.", buf, 0x2Au);
    if (v45)
    {

      v47 = v96;
    }

LABEL_47:
    controllerCopy = v100;
LABEL_48:
    v6 = 0x1E698C000uLL;
  }

LABEL_49:

LABEL_50:
  sharedPurchaseConfig = [*(v6 + 2408) sharedPurchaseConfig];
  if (!sharedPurchaseConfig)
  {
    sharedPurchaseConfig = [*(v6 + 2408) sharedConfig];
  }

  oSLogObject6 = [sharedPurchaseConfig OSLogObject];
  if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
  {
    v50 = AMSLogKey();
    delegate = MEMORY[0x1E696AEC0];
    v51 = objc_opt_class();
    if (v50)
    {
      v52 = AMSLogKey();
      purchaseInfo = NSStringFromSelector(a2);
      [delegate stringWithFormat:@"%@: [%@] %@ ", v51, v52, purchaseInfo];
    }

    else
    {
      v52 = NSStringFromSelector(a2);
      [delegate stringWithFormat:@"%@: %@ ", v51, v52];
    }
    v53 = ;
    *buf = 138543362;
    v107 = v53;
    _os_log_impl(&dword_1BB036000, oSLogObject6, OS_LOG_TYPE_DEFAULT, "%{public}@Falling back to superclass", buf, 0xCu);
    if (v50)
    {

      v53 = purchaseInfo;
    }

    v6 = 0x1E698C000uLL;
  }

  v103.receiver = self;
  v103.super_class = AMSUIPaymentSheetTask;
  v54 = [(AMSPaymentSheetTask *)&v103 presentationSceneIdentifierForPaymentAuthorizationController:controllerCopy];
  sharedPurchaseConfig2 = [*(v6 + 2408) sharedPurchaseConfig];
  if (!sharedPurchaseConfig2)
  {
    sharedPurchaseConfig2 = [*(v6 + 2408) sharedConfig];
  }

  oSLogObject7 = [sharedPurchaseConfig2 OSLogObject];
  if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEFAULT))
  {
    v57 = controllerCopy;
    v58 = AMSLogKey();
    v59 = MEMORY[0x1E696AEC0];
    v60 = objc_opt_class();
    if (v58)
    {
      v61 = AMSLogKey();
      purchaseInfo = NSStringFromSelector(a2);
      [v59 stringWithFormat:@"%@: [%@] %@ ", v60, v61, purchaseInfo];
    }

    else
    {
      v61 = NSStringFromSelector(a2);
      [v59 stringWithFormat:@"%@: %@ ", v60, v61];
    }
    v62 = ;
    delegate = AMSHashIfNeeded();
    *buf = 138543618;
    v107 = v62;
    v108 = 2114;
    v109 = delegate;
    _os_log_impl(&dword_1BB036000, oSLogObject7, OS_LOG_TYPE_DEFAULT, "%{public}@Superclass returned scene identifier %{public}@", buf, 0x16u);
    if (v58)
    {

      v62 = purchaseInfo;
    }

    controllerCopy = v57;
    v6 = 0x1E698C000uLL;
  }

LABEL_69:
  sharedPurchaseConfig3 = [*(v6 + 2408) sharedPurchaseConfig];
  if (!sharedPurchaseConfig3)
  {
    sharedPurchaseConfig3 = [*(v6 + 2408) sharedConfig];
  }

  oSLogObject8 = [sharedPurchaseConfig3 OSLogObject];
  if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_DEFAULT))
  {
    v65 = AMSLogKey();
    v66 = MEMORY[0x1E696AEC0];
    v67 = objc_opt_class();
    if (v65)
    {
      v68 = AMSLogKey();
      delegate = NSStringFromSelector(a2);
      [v66 stringWithFormat:@"%@: [%@] %@ ", v67, v68, delegate];
    }

    else
    {
      v68 = NSStringFromSelector(a2);
      [v66 stringWithFormat:@"%@: %@ ", v67, v68];
    }
    v69 = ;
    v70 = AMSHashIfNeeded();
    *buf = 138543618;
    v107 = v69;
    v108 = 2114;
    v109 = v70;
    _os_log_impl(&dword_1BB036000, oSLogObject8, OS_LOG_TYPE_DEFAULT, "%{public}@ returning scene identifier %{public}@", buf, 0x16u);
    if (v65)
    {

      v69 = delegate;
    }
  }

  return v54;
}

- (id)presentationSceneBundleIdentifierForPaymentAuthorizationController:(id)controller
{
  v92 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v6 = 0x1E698C000uLL;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedPurchaseConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = AMSLogKey();
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_opt_class();
    if (v9)
    {
      v12 = AMSLogKey();
      v3 = NSStringFromSelector(a2);
      [v10 stringWithFormat:@"%@: [%@] %@ ", v11, v12, v3];
    }

    else
    {
      v12 = NSStringFromSelector(a2);
      [v10 stringWithFormat:@"%@: %@ ", v11, v12];
    }
    v13 = ;
    v14 = AMSHashIfNeeded();
    *buf = 138543618;
    v87 = v13;
    v88 = 2114;
    v89 = v14;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@controller: %{public}@", buf, 0x16u);
    if (v9)
    {

      v13 = v3;
    }
  }

  purchaseInfo = [(AMSPaymentSheetTask *)self purchaseInfo];
  delegate = [purchaseInfo delegate];

  if (![delegate conformsToProtocol:&unk_1F3997F38] || (objc_opt_respondsToSelector() & 1) == 0)
  {
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
    mEMORY[0x1E698C968]3 = mEMORY[0x1E698C968]2;
    if (delegate)
    {
      if (!mEMORY[0x1E698C968]2)
      {
        mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject2 = [mEMORY[0x1E698C968]3 OSLogObject];
      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_37;
      }

      v80 = controllerCopy;
      v27 = AMSLogKey();
      v28 = MEMORY[0x1E696AEC0];
      v29 = objc_opt_class();
      if (v27)
      {
        v30 = AMSLogKey();
        purchaseInfo = NSStringFromSelector(a2);
        [v28 stringWithFormat:@"%@: [%@] %@ ", v29, v30, purchaseInfo];
      }

      else
      {
        v30 = NSStringFromSelector(a2);
        [v28 stringWithFormat:@"%@: %@ ", v29, v30];
      }
      v31 = ;
      v37 = NSStringFromSelector(sel_purchase_handleSceneBundleIdentifierRequest_completion_);
      v38 = AMSHashIfNeeded();
      *buf = 138543874;
      v87 = v31;
      v88 = 2114;
      v89 = v37;
      v90 = 2114;
      v91 = v38;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@Delegate does not implement %{public}@. delegate: %{public}@", buf, 0x20u);
      if (v27)
      {

        v31 = purchaseInfo;
      }

      controllerCopy = v80;
    }

    else
    {
      if (!mEMORY[0x1E698C968]2)
      {
        mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject2 = [mEMORY[0x1E698C968]3 OSLogObject];
      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_37;
      }

      v32 = AMSLogKey();
      v33 = MEMORY[0x1E696AEC0];
      v34 = objc_opt_class();
      if (v32)
      {
        v35 = AMSLogKey();
        purchaseInfo = NSStringFromSelector(a2);
        [v33 stringWithFormat:@"%@: [%@] %@ ", v34, v35, purchaseInfo];
      }

      else
      {
        v35 = NSStringFromSelector(a2);
        [v33 stringWithFormat:@"%@: %@ ", v34, v35];
      }
      v36 = ;
      *buf = 138543362;
      v87 = v36;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEBUG, "%{public}@Delegate is nil", buf, 0xCu);
      if (v32)
      {

        v36 = purchaseInfo;
      }
    }

    v6 = 0x1E698C000uLL;
LABEL_37:

LABEL_38:
    sharedPurchaseConfig = [*(v6 + 2408) sharedPurchaseConfig];
    if (!sharedPurchaseConfig)
    {
      sharedPurchaseConfig = [*(v6 + 2408) sharedConfig];
    }

    oSLogObject3 = [sharedPurchaseConfig OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v41 = AMSLogKey();
      v42 = MEMORY[0x1E696AEC0];
      v43 = objc_opt_class();
      if (v41)
      {
        v44 = AMSLogKey();
        purchaseInfo = NSStringFromSelector(a2);
        [v42 stringWithFormat:@"%@: [%@] %@ ", v43, v44, purchaseInfo];
      }

      else
      {
        v44 = NSStringFromSelector(a2);
        [v42 stringWithFormat:@"%@: %@ ", v43, v44];
      }
      v45 = ;
      *buf = 138543362;
      v87 = v45;
      _os_log_impl(&dword_1BB036000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@Falling back to superclass", buf, 0xCu);
      if (v41)
      {

        v45 = purchaseInfo;
      }

      v6 = 0x1E698C000uLL;
    }

    v84.receiver = self;
    v84.super_class = AMSUIPaymentSheetTask;
    v46 = [(AMSPaymentSheetTask *)&v84 presentationSceneBundleIdentifierForPaymentAuthorizationController:controllerCopy];
    sharedPurchaseConfig2 = [*(v6 + 2408) sharedPurchaseConfig];
    if (!sharedPurchaseConfig2)
    {
      sharedPurchaseConfig2 = [*(v6 + 2408) sharedConfig];
    }

    oSLogObject4 = [sharedPurchaseConfig2 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v81 = delegate;
      v49 = controllerCopy;
      v50 = AMSLogKey();
      v51 = MEMORY[0x1E696AEC0];
      v52 = objc_opt_class();
      if (v50)
      {
        v53 = AMSLogKey();
        purchaseInfo = NSStringFromSelector(a2);
        [v51 stringWithFormat:@"%@: [%@] %@ ", v52, v53, purchaseInfo];
      }

      else
      {
        v53 = NSStringFromSelector(a2);
        [v51 stringWithFormat:@"%@: %@ ", v52, v53];
      }
      v54 = ;
      v55 = AMSHashIfNeeded();
      *buf = 138543618;
      v87 = v54;
      v88 = 2114;
      v89 = v55;
      _os_log_impl(&dword_1BB036000, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@Superclass returned scene bundle identifier %{public}@", buf, 0x16u);
      if (v50)
      {

        v54 = purchaseInfo;
      }

      controllerCopy = v49;
      v6 = 0x1E698C000uLL;
      delegate = v81;
    }

    goto LABEL_57;
  }

  mEMORY[0x1E698C968]4 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
  if (!mEMORY[0x1E698C968]4)
  {
    mEMORY[0x1E698C968]4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject5 = [mEMORY[0x1E698C968]4 OSLogObject];
  if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
  {
    v19 = AMSLogKey();
    v20 = MEMORY[0x1E696AEC0];
    v21 = objc_opt_class();
    if (v19)
    {
      v22 = AMSLogKey();
      purchaseInfo = NSStringFromSelector(a2);
      [v20 stringWithFormat:@"%@: [%@] %@ ", v21, v22, purchaseInfo];
    }

    else
    {
      v22 = NSStringFromSelector(a2);
      [v20 stringWithFormat:@"%@: %@ ", v21, v22];
    }
    v23 = ;
    v65 = AMSHashIfNeeded();
    *buf = 138543618;
    v87 = v23;
    v88 = 2114;
    v89 = v65;
    _os_log_impl(&dword_1BB036000, oSLogObject5, OS_LOG_TYPE_DEFAULT, "%{public}@Calling into delegate: %{public}@", buf, 0x16u);
    if (v19)
    {

      v23 = purchaseInfo;
    }

    v6 = 0x1E698C000uLL;
  }

  v66 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  purchaseInfo = [(AMSPaymentSheetTask *)self purchaseInfo];
  purchase = [purchaseInfo purchase];
  v68 = +[AMSUISceneBundleIdentifierRequest bundleIdentifierRequest];
  completionHandlerAdapter = [v66 completionHandlerAdapter];
  [delegate purchase:purchase handleSceneBundleIdentifierRequest:v68 completion:completionHandlerAdapter];

  v85 = 0;
  v46 = [v66 resultWithError:&v85];
  v70 = v85;
  if (v70)
  {
    mEMORY[0x1E698C968]5 = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968]5)
    {
      mEMORY[0x1E698C968]5 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject6 = [mEMORY[0x1E698C968]5 OSLogObject];
    if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
    {
      v82 = delegate;
      v73 = controllerCopy;
      v74 = AMSLogKey();
      v75 = MEMORY[0x1E696AEC0];
      v76 = objc_opt_class();
      v77 = v76;
      if (v74)
      {
        v79 = AMSLogKey();
        [v75 stringWithFormat:@"%@: [%@] ", v77, v79];
      }

      else
      {
        [v75 stringWithFormat:@"%@: ", v76];
      }
      purchaseInfo = ;
      v78 = AMSLogableError();
      *buf = 138543618;
      v87 = purchaseInfo;
      v88 = 2114;
      v89 = v78;
      _os_log_impl(&dword_1BB036000, oSLogObject6, OS_LOG_TYPE_ERROR, "%{public}@Scene identifier request failed with error: %{public}@", buf, 0x16u);
      if (v74)
      {

        purchaseInfo = v79;
      }

      controllerCopy = v73;
      delegate = v82;
    }

    v6 = 0x1E698C000;
  }

  if (!v46)
  {
    goto LABEL_38;
  }

LABEL_57:
  sharedPurchaseConfig3 = [*(v6 + 2408) sharedPurchaseConfig];
  if (!sharedPurchaseConfig3)
  {
    sharedPurchaseConfig3 = [*(v6 + 2408) sharedConfig];
  }

  oSLogObject7 = [sharedPurchaseConfig3 OSLogObject];
  if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEFAULT))
  {
    v58 = AMSLogKey();
    v59 = MEMORY[0x1E696AEC0];
    v60 = objc_opt_class();
    if (v58)
    {
      v61 = AMSLogKey();
      purchaseInfo = NSStringFromSelector(a2);
      [v59 stringWithFormat:@"%@: [%@] %@ ", v60, v61, purchaseInfo];
    }

    else
    {
      v61 = NSStringFromSelector(a2);
      [v59 stringWithFormat:@"%@: %@ ", v60, v61];
    }
    v62 = ;
    v63 = AMSHashIfNeeded();
    *buf = 138543618;
    v87 = v62;
    v88 = 2114;
    v89 = v63;
    _os_log_impl(&dword_1BB036000, oSLogObject7, OS_LOG_TYPE_DEFAULT, "%{public}@ returning scene bundle identifier %{public}@", buf, 0x16u);
    if (v58)
    {

      v62 = purchaseInfo;
    }
  }

  return v46;
}

- (id)presentationWindowForPaymentAuthorizationController:(id)controller
{
  v99 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v7 = 0x1E698C000uLL;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedPurchaseConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v10 = AMSLogKey();
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    if (v10)
    {
      v13 = AMSLogKey();
      v3 = NSStringFromSelector(a2);
      [v11 stringWithFormat:@"%@: [%@] %@ ", v12, v13, v3];
    }

    else
    {
      v13 = NSStringFromSelector(a2);
      [v11 stringWithFormat:@"%@: %@ ", v12, v13];
    }
    v4 = ;
    v14 = controllerCopy;
    v15 = AMSHashIfNeeded();
    *buf = 138543618;
    v96 = v4;
    v97 = 2114;
    v98 = v15;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@controller: %{public}@", buf, 0x16u);
    if (v10)
    {

      v4 = v3;
    }

    controllerCopy = v14;
  }

  presentingWindow = [(AMSPaymentSheetTask *)self presentingWindow];
  if (presentingWindow)
  {
    v17 = presentingWindow;
    presentingWindow2 = [(AMSPaymentSheetTask *)self presentingWindow];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
      if (!mEMORY[0x1E698C968]2)
      {
        mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v22 = AMSLogKey();
        v23 = MEMORY[0x1E696AEC0];
        v24 = objc_opt_class();
        if (v22)
        {
          v25 = AMSLogKey();
          v7 = NSStringFromSelector(a2);
          [v23 stringWithFormat:@"%@: [%@] %@ ", v24, v25, v7];
        }

        else
        {
          v25 = NSStringFromSelector(a2);
          [v23 stringWithFormat:@"%@: %@ ", v24, v25];
        }
        v26 = ;
        presentingWindow3 = [(AMSPaymentSheetTask *)self presentingWindow];
        v64 = AMSHashIfNeeded();
        *buf = 138543618;
        v96 = v26;
        v97 = 2114;
        v98 = v64;
        _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@Using self.presentingWindow: %{public}@", buf, 0x16u);

        if (v22)
        {

          v26 = v7;
        }
      }

      presentingWindow4 = [(AMSPaymentSheetTask *)self presentingWindow];
      goto LABEL_80;
    }
  }

  purchaseInfo = [(AMSPaymentSheetTask *)self purchaseInfo];
  delegate = [purchaseInfo delegate];

  if (!delegate)
  {
    mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
    if (!mEMORY[0x1E698C968]3)
    {
      mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject3 = [mEMORY[0x1E698C968]3 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v89 = controllerCopy;
      v41 = AMSLogKey();
      v42 = MEMORY[0x1E696AEC0];
      v43 = objc_opt_class();
      if (v41)
      {
        v44 = AMSLogKey();
        v4 = NSStringFromSelector(a2);
        [v42 stringWithFormat:@"%@: [%@] %@ ", v43, v44, v4];
      }

      else
      {
        v44 = NSStringFromSelector(a2);
        [v42 stringWithFormat:@"%@: %@ ", v43, v44];
      }
      v45 = ;
      *buf = 138543362;
      v96 = v45;
      _os_log_impl(&dword_1BB036000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@Delegate is nil", buf, 0xCu);
      if (v41)
      {

        v45 = v4;
      }

      goto LABEL_58;
    }

LABEL_53:
    presentingWindow4 = 0;
    goto LABEL_69;
  }

  if (([delegate conformsToProtocol:&unk_1F3997F38] & 1) == 0)
  {
    mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
    if (!mEMORY[0x1E698C968]3)
    {
      mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject3 = [mEMORY[0x1E698C968]3 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v90 = controllerCopy;
      v46 = AMSLogKey();
      v47 = MEMORY[0x1E696AEC0];
      v48 = objc_opt_class();
      if (v46)
      {
        v49 = AMSLogKey();
        v4 = NSStringFromSelector(a2);
        [v47 stringWithFormat:@"%@: [%@] %@ ", v48, v49, v4];
      }

      else
      {
        v49 = NSStringFromSelector(a2);
        [v47 stringWithFormat:@"%@: %@ ", v48, v49];
      }
      v50 = ;
      v70 = AMSHashIfNeeded();
      *buf = 138543618;
      v96 = v50;
      v97 = 2114;
      v98 = v70;
      _os_log_impl(&dword_1BB036000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@Delegate %{public}@ does not conforms to protocol AMSUIPurchaseDelegate, cannot return window.", buf, 0x16u);
      if (v46)
      {

        v50 = v4;
      }

      presentingWindow4 = 0;
      controllerCopy = v90;
      goto LABEL_69;
    }

    goto LABEL_53;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      mEMORY[0x1E698C968]3 = objc_alloc_init(MEMORY[0x1E698CAD0]);
      purchaseInfo2 = [(AMSPaymentSheetTask *)self purchaseInfo];
      purchase = [purchaseInfo2 purchase];
      v53 = +[AMSUIWindowRequest windowRequest];
      completionHandlerAdapter = [mEMORY[0x1E698C968]3 completionHandlerAdapter];
      [delegate purchase:purchase handleWindowRequest:v53 completion:completionHandlerAdapter];

      v93 = 0;
      presentingWindow4 = [mEMORY[0x1E698C968]3 resultWithError:&v93];
      oSLogObject3 = v93;
      if (oSLogObject3)
      {
        mEMORY[0x1E698C968]4 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
        if (!mEMORY[0x1E698C968]4)
        {
          mEMORY[0x1E698C968]4 = [MEMORY[0x1E698C968] sharedConfig];
        }

        oSLogObject4 = [mEMORY[0x1E698C968]4 OSLogObject];
        if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
        {
          v91 = controllerCopy;
          v57 = AMSLogKey();
          v58 = MEMORY[0x1E696AEC0];
          v59 = objc_opt_class();
          if (v57)
          {
            AMSLogKey();
            v84 = v58;
            v61 = v60 = v57;
            v85 = NSStringFromSelector(a2);
            v87 = v61;
            v83 = v61;
            v57 = v60;
            [v84 stringWithFormat:@"%@: [%@] %@ ", v59, v83, v85];
          }

          else
          {
            v87 = NSStringFromSelector(a2);
            [v58 stringWithFormat:@"%@: %@ ", v59, v87];
          }
          v62 = ;
          v82 = AMSLogableError();
          *buf = 138543618;
          v96 = v62;
          v97 = 2114;
          v98 = v82;
          _os_log_impl(&dword_1BB036000, oSLogObject4, OS_LOG_TYPE_ERROR, "%{public}@Window request failed with error: %{public}@", buf, 0x16u);
          if (v57)
          {

            v62 = v85;
          }

          controllerCopy = v91;
        }

        goto LABEL_59;
      }

LABEL_69:

      goto LABEL_70;
    }

    mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
    if (!mEMORY[0x1E698C968]3)
    {
      mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject3 = [mEMORY[0x1E698C968]3 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v89 = controllerCopy;
      v65 = AMSLogKey();
      v66 = MEMORY[0x1E696AEC0];
      v67 = objc_opt_class();
      if (v65)
      {
        v68 = AMSLogKey();
        v7 = NSStringFromSelector(a2);
        [v66 stringWithFormat:@"%@: [%@] %@ ", v67, v68, v7];
      }

      else
      {
        v68 = NSStringFromSelector(a2);
        [v66 stringWithFormat:@"%@: %@ ", v67, v68];
      }
      v69 = ;
      v81 = NSStringFromSelector(sel_purchase_handleWindowRequest_completion_);
      *buf = 138543618;
      v96 = v69;
      v97 = 2114;
      v98 = v81;
      _os_log_impl(&dword_1BB036000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@Delegate does not implement %{public}@, cannot return window.", buf, 0x16u);
      if (v65)
      {

        v69 = v7;
      }

LABEL_58:
      presentingWindow4 = 0;
      controllerCopy = v89;
LABEL_59:
      v7 = 0x1E698C000;
      goto LABEL_69;
    }

    goto LABEL_53;
  }

  purchaseInfo3 = [(AMSPaymentSheetTask *)self purchaseInfo];
  purchase2 = [purchaseInfo3 purchase];
  v31 = +[AMSUIWindowRequest windowRequest];
  v94 = 0;
  presentingWindow4 = [delegate purchase:purchase2 handleWindowRequest:v31 error:&v94];
  mEMORY[0x1E698C968]3 = v94;

  if (mEMORY[0x1E698C968]3)
  {
    oSLogObject3 = [MEMORY[0x1E698C968] sharedPurchaseConfig];
    if (!oSLogObject3)
    {
      oSLogObject3 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v34OSLogObject = [oSLogObject3 OSLogObject];
    if (os_log_type_enabled(v34OSLogObject, OS_LOG_TYPE_ERROR))
    {
      v88 = controllerCopy;
      v36 = AMSLogKey();
      v37 = MEMORY[0x1E696AEC0];
      v38 = objc_opt_class();
      if (v36)
      {
        v39 = AMSLogKey();
        v85 = NSStringFromSelector(a2);
        v86 = v39;
        [v37 stringWithFormat:@"%@: [%@] %@ ", v38, v39, v85];
      }

      else
      {
        v86 = NSStringFromSelector(a2);
        [v37 stringWithFormat:@"%@: %@ ", v38, v86];
      }
      v40 = ;
      v71 = AMSLogableError();
      *buf = 138543618;
      v96 = v40;
      v97 = 2114;
      v98 = v71;
      _os_log_impl(&dword_1BB036000, v34OSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Sync Window request failed with error: %{public}@", buf, 0x16u);
      if (v36)
      {

        v40 = v85;
      }

      controllerCopy = v88;
      v7 = 0x1E698C000uLL;
    }

    goto LABEL_69;
  }

LABEL_70:

  sharedPurchaseConfig = [*(v7 + 2408) sharedPurchaseConfig];
  if (!sharedPurchaseConfig)
  {
    sharedPurchaseConfig = [*(v7 + 2408) sharedConfig];
  }

  oSLogObject5 = [sharedPurchaseConfig OSLogObject];
  if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
  {
    v74 = AMSLogKey();
    v75 = MEMORY[0x1E696AEC0];
    v76 = objc_opt_class();
    if (v74)
    {
      v77 = AMSLogKey();
      v7 = NSStringFromSelector(a2);
      [v75 stringWithFormat:@"%@: [%@] %@ ", v76, v77, v7];
    }

    else
    {
      v77 = NSStringFromSelector(a2);
      [v75 stringWithFormat:@"%@: %@ ", v76, v77];
    }
    v78 = ;
    v79 = AMSHashIfNeeded();
    *buf = 138543618;
    v96 = v78;
    v97 = 2114;
    v98 = v79;
    _os_log_impl(&dword_1BB036000, oSLogObject5, OS_LOG_TYPE_DEFAULT, "%{public}@ returning window %{public}@", buf, 0x16u);
    if (v74)
    {

      v78 = v7;
    }
  }

LABEL_80:

  return presentingWindow4;
}

@end