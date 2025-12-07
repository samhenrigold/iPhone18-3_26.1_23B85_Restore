@interface TPSDialAssistController
- (BOOL)supportsDialAssistForSubscriptionContext:(id)context;
- (TPSDialAssistController)init;
@end

@implementation TPSDialAssistController

- (TPSDialAssistController)init
{
  v6.receiver = self;
  v6.super_class = TPSDialAssistController;
  v2 = [(TPSDialAssistController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(TPSCarrierBundleController);
    carrierBundleController = v2->_carrierBundleController;
    v2->_carrierBundleController = v3;
  }

  return v2;
}

- (BOOL)supportsDialAssistForSubscriptionContext:(id)context
{
  contextCopy = context;
  carrierBundleController = [(TPSDialAssistController *)self carrierBundleController];
  v17 = 0;
  v7 = [carrierBundleController objectForKey:@"ShowDialAssist" subscriptionContext:contextCopy error:&v17];

  v8 = v17;
  if (v8)
  {
    v11 = TPSDialAssistLog(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = v14;
      v16 = NSStringFromSelector(a2);
      *buf = 138412802;
      v19 = v14;
      v20 = 2112;
      v21 = v16;
      v22 = 2112;
      v23 = v8;
      _os_log_error_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "[%@ %@] failed with error %@.", buf, 0x20u);
    }
  }

  else
  {
    if (!v7)
    {
      bOOLValue = 1;
      goto LABEL_6;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v7 BOOLValue];
      goto LABEL_6;
    }
  }

  bOOLValue = 0;
LABEL_6:

  return bOOLValue;
}

@end