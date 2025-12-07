@interface AMSUIWebRestrictedFeatureAction
- (AMSUIWebRestrictedFeatureAction)initWithJSObject:(id)object context:(id)context;
- (id)_featureWithIdentifier:(id)identifier;
- (id)runAction;
- (int64_t)_translateState:(int)state;
@end

@implementation AMSUIWebRestrictedFeatureAction

- (AMSUIWebRestrictedFeatureAction)initWithJSObject:(id)object context:(id)context
{
  objectCopy = object;
  v15.receiver = self;
  v15.super_class = AMSUIWebRestrictedFeatureAction;
  v7 = [(AMSUIWebAction *)&v15 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"enabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    enabled = v7->_enabled;
    v7->_enabled = v9;

    v11 = [objectCopy objectForKeyedSubscript:@"identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    identifier = v7->_identifier;
    v7->_identifier = v12;
  }

  return v7;
}

- (id)runAction
{
  v28 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = AMSUIWebRestrictedFeatureAction;
  runAction = [(AMSUIWebAction *)&v19 runAction];
  identifier = [(AMSUIWebRestrictedFeatureAction *)self identifier];
  v5 = [(AMSUIWebRestrictedFeatureAction *)self _featureWithIdentifier:identifier];

  if (v5)
  {
    mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
    enabled = [(AMSUIWebRestrictedFeatureAction *)self enabled];
    if (enabled)
    {
      if (([MEMORY[0x1E698CAC8] BOOLForEntitlement:@"com.apple.managedconfiguration.profiled-access"] & 1) == 0)
      {
        mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
        if (!mEMORY[0x1E698C968])
        {
          mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
        }

        oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          v10 = objc_opt_class();
          v11 = AMSLogKey();
          *buf = 138543874;
          v23 = v10;
          v24 = 2114;
          v25 = v11;
          v26 = 2114;
          v27 = @"com.apple.managedconfiguration.profiled-access";
          _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Missing %{public}@ entitlement", buf, 0x20u);
        }
      }

      [mEMORY[0x1E69ADFB8] setBoolValue:objc_msgSend(enabled forSetting:{"BOOLValue"), v5}];
    }

    v12 = MEMORY[0x1E698CAD0];
    v20[0] = @"locked";
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(mEMORY[0x1E69ADFB8], "isBoolSettingLockedDownByRestrictions:", v5)}];
    v20[1] = @"state";
    v21[0] = v13;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(mEMORY[0x1E69ADFB8], "effectiveBoolValueForSetting:", v5)}];
    v21[1] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v16 = [v12 promiseWithResult:v15];
  }

  else
  {
    v17 = MEMORY[0x1E698CAD0];
    mEMORY[0x1E69ADFB8] = [(AMSUIWebRestrictedFeatureAction *)self _unknownIdentifierError];
    v16 = [v17 promiseWithError:mEMORY[0x1E69ADFB8]];
  }

  return v16;
}

- (id)_featureWithIdentifier:(id)identifier
{
  v3 = _featureWithIdentifier__ams_once_token___COUNTER__;
  identifierCopy = identifier;
  if (v3 != -1)
  {
    [AMSUIWebRestrictedFeatureAction _featureWithIdentifier:];
  }

  v5 = [_featureWithIdentifier__ams_once_object___COUNTER__ objectForKey:identifierCopy];

  return v5;
}

void __58__AMSUIWebRestrictedFeatureAction__featureWithIdentifier___block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = @"explicitContentAllowed";
  v3[0] = *MEMORY[0x1E69ADE68];
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  v1 = _featureWithIdentifier__ams_once_object___COUNTER__;
  _featureWithIdentifier__ams_once_object___COUNTER__ = v0;
}

- (int64_t)_translateState:(int)state
{
  v3 = *&state;
  if (_translateState__ams_once_token___COUNTER__ != -1)
  {
    [AMSUIWebRestrictedFeatureAction _translateState:];
  }

  v4 = _translateState__ams_once_object___COUNTER__;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  v6 = [v4 objectForKey:v5];
  if (objc_opt_respondsToSelector())
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
    v8 = [v4 objectForKey:v7];
    longLongValue = [v8 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  return longLongValue;
}

void __51__AMSUIWebRestrictedFeatureAction__translateState___block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F394A7B0;
  v2[1] = &unk_1F394A7E0;
  v3[0] = &unk_1F394A7C8;
  v3[1] = &unk_1F394A7F8;
  v2[2] = &unk_1F394A810;
  v3[2] = &unk_1F394A828;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = _translateState__ams_once_object___COUNTER__;
  _translateState__ams_once_object___COUNTER__ = v0;
}

@end