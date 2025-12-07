@interface AMSUIWebFetchTelephonyAction
- (AMSUIWebFetchTelephonyAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebFetchTelephonyAction

- (AMSUIWebFetchTelephonyAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = AMSUIWebFetchTelephonyAction;
  v7 = [(AMSUIWebAction *)&v11 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"suppressPhoneNumber"];
    if (objc_opt_respondsToSelector())
    {
      v9 = [objectCopy objectForKeyedSubscript:@"suppressPhoneNumber"];
      v7->_suppressPhoneNumber = [v9 BOOLValue];
    }

    else
    {
      v7->_suppressPhoneNumber = 0;
    }
  }

  return v7;
}

- (id)runAction
{
  v56 = *MEMORY[0x1E69E9840];
  v47.receiver = self;
  v47.super_class = AMSUIWebFetchTelephonyAction;
  runAction = [(AMSUIWebAction *)&v47 runAction];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    *buf = 138543618;
    v51 = v6;
    v52 = 2114;
    v53 = v7;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching telephony...", buf, 0x16u);
  }

  context = [(AMSUIWebAction *)self context];
  dataProvider = [context dataProvider];
  telephony = [dataProvider telephony];

  if (telephony)
  {
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968]2)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      *buf = 138543618;
      v51 = v13;
      v52 = 2114;
      v53 = v14;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully fetched telephony", buf, 0x16u);
    }

    if ([(AMSUIWebFetchTelephonyAction *)self suppressPhoneNumber])
    {
      mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!mEMORY[0x1E698C968]3)
      {
        mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject3 = [mEMORY[0x1E698C968]3 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v18 = AMSLogKey();
        *buf = 138543618;
        v51 = v17;
        v52 = 2114;
        v53 = v18;
        _os_log_impl(&dword_1BB036000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Suppressing phone number", buf, 0x16u);
      }

      phoneNumber = 0;
    }

    else
    {
      phoneNumber = [telephony phoneNumber];
      if (phoneNumber)
      {
        v26 = [telephony formattedPhoneNumber:phoneNumber];
LABEL_24:
        v27 = MEMORY[0x1E698CAD0];
        if (v26)
        {
          v28 = v26;
        }

        else
        {
          v28 = &stru_1F3921360;
        }

        v49[0] = v28;
        v48[0] = @"formattedPhoneNumber";
        v48[1] = @"mobileCountryCode";
        countryCode = [telephony countryCode];
        v30 = countryCode;
        if (countryCode)
        {
          v31 = countryCode;
        }

        else
        {
          v31 = &stru_1F3921360;
        }

        v49[1] = v31;
        v48[2] = @"mobileNetworkCode";
        networkCode = [telephony networkCode];
        v33 = networkCode;
        if (networkCode)
        {
          v34 = networkCode;
        }

        else
        {
          v34 = &stru_1F3921360;
        }

        if (phoneNumber)
        {
          v35 = phoneNumber;
        }

        else
        {
          v35 = &stru_1F3921360;
        }

        v49[2] = v34;
        v49[3] = v35;
        v48[3] = @"phoneNumber";
        v48[4] = @"providerName";
        providerName = [telephony providerName];
        v37 = providerName;
        if (providerName)
        {
          v38 = providerName;
        }

        else
        {
          v38 = &stru_1F3921360;
        }

        v49[4] = v38;
        v48[5] = @"radioTechnology";
        radioTechnology = [telephony radioTechnology];
        v40 = radioTechnology;
        if (radioTechnology)
        {
          v41 = radioTechnology;
        }

        else
        {
          v41 = &stru_1F3921360;
        }

        v49[5] = v41;
        v48[6] = @"radioType";
        radioType = [telephony radioType];
        v43 = radioType;
        if (radioType)
        {
          v44 = radioType;
        }

        else
        {
          v44 = &stru_1F3921360;
        }

        v49[6] = v44;
        v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:7];
        v25 = [v27 promiseWithResult:v45];

        goto LABEL_46;
      }
    }

    v26 = 0;
    goto LABEL_24;
  }

  phoneNumber = AMSError();
  mEMORY[0x1E698C968]4 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!mEMORY[0x1E698C968]4)
  {
    mEMORY[0x1E698C968]4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject4 = [mEMORY[0x1E698C968]4 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
  {
    v22 = objc_opt_class();
    v23 = AMSLogKey();
    v24 = AMSLogableError();
    *buf = 138543874;
    v51 = v22;
    v52 = 2114;
    v53 = v23;
    v54 = 2114;
    v55 = v24;
    _os_log_impl(&dword_1BB036000, oSLogObject4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch telephony: %{public}@", buf, 0x20u);
  }

  v25 = [MEMORY[0x1E698CAD0] promiseWithError:phoneNumber];
LABEL_46:

  return v25;
}

@end