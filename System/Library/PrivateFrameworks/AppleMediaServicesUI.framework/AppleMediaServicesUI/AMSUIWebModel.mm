@interface AMSUIWebModel
+ (CGSize)windowSizeFromJSObject:(id)object key:(id)key;
+ (CGSize)windowSizeFromPageModel:(id)model;
+ (id)backgroundColorFromPageModel:(id)model;
+ (id)impressionEventFromPageModel:(id)model context:(id)context;
+ (id)navigationBarFromPageModel:(id)model context:(id)context;
+ (id)pageModelFromJSObject:(id)object context:(id)context;
@end

@implementation AMSUIWebModel

+ (id)backgroundColorFromPageModel:(id)model
{
  v3 = [model objectForKeyedSubscript:@"backgroundColor"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)impressionEventFromPageModel:(id)model context:(id)context
{
  contextCopy = context;
  v6 = [model objectForKeyedSubscript:@"impressionEvent"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = [[AMSUIWebMetricsEvent alloc] initWithJSObject:v7 context:contextCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)navigationBarFromPageModel:(id)model context:(id)context
{
  contextCopy = context;
  modelCopy = model;
  v7 = [AMSUIWebNavigationBarModel alloc];
  v8 = [modelCopy objectForKeyedSubscript:@"navigationBar"];

  v9 = [(AMSUIWebNavigationBarModel *)v7 initWithJSObject:v8 context:contextCopy];

  return v9;
}

+ (id)pageModelFromJSObject:(id)object context:(id)context
{
  v24[8] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  contextCopy = context;
  v7 = [objectCopy objectForKeyedSubscript:@"modelClass"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v23[0] = @"AMSCameraReaderPageModel";
  v24[0] = objc_opt_class();
  v23[1] = @"AMSDeviceDiagnosticsPageModel";
  v24[1] = objc_opt_class();
  v23[2] = @"AMSDynamicPageModel";
  v24[2] = objc_opt_class();
  v23[3] = @"AMSErrorPageModel";
  v24[3] = objc_opt_class();
  v23[4] = @"AMSLoadingPageModel";
  v24[4] = objc_opt_class();
  v23[5] = @"AMSSafariPageModel";
  v24[5] = objc_opt_class();
  v23[6] = @"AMSRoutePageModel";
  v24[6] = objc_opt_class();
  v23[7] = @"AMSWebPageModel";
  v24[7] = objc_opt_class();
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:8];
  v10 = [v9 objectForKeyedSubscript:v8];
  if (!v10 || (v11 = [[v10 alloc] initWithJSObject:objectCopy context:contextCopy]) == 0)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      logKey = [contextCopy logKey];
      v17 = 138543874;
      v18 = v14;
      v19 = 2114;
      v20 = logKey;
      v21 = 2114;
      v22 = v8;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Invalid page model: %{public}@", &v17, 0x20u);
    }

    v11 = 0;
  }

  return v11;
}

+ (CGSize)windowSizeFromPageModel:(id)model
{
  [self windowSizeFromJSObject:model key:@"windowSize"];
  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGSize)windowSizeFromJSObject:(id)object key:(id)key
{
  v4 = [object objectForKeyedSubscript:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = 0.0;
  v7 = 0.0;
  if ([v5 count] >= 2)
  {
    v8 = [v5 objectAtIndexedSubscript:0];
    if (objc_opt_respondsToSelector())
    {
      v9 = [v5 objectAtIndexedSubscript:0];
      [v9 doubleValue];
      v6 = v10;
    }

    v11 = [v5 objectAtIndexedSubscript:1];
    if (objc_opt_respondsToSelector())
    {
      v12 = [v5 objectAtIndexedSubscript:1];
      [v12 doubleValue];
      v7 = v13;
    }
  }

  v14 = v6;
  v15 = v7;
  result.height = v15;
  result.width = v14;
  return result;
}

@end