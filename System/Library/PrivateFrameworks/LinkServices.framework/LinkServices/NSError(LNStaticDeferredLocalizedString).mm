@interface NSError(LNStaticDeferredLocalizedString)
- (id)ln_staticDeferredLocalizedString;
@end

@implementation NSError(LNStaticDeferredLocalizedString)

- (id)ln_staticDeferredLocalizedString
{
  v17 = *MEMORY[0x1E69E9840];
  userInfo = [self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"LNPerformActionErrorLocalizedStringResourceData"];

  if (v3)
  {
    v4 = MEMORY[0x1E696ACD0];
    v5 = objc_opt_class();
    userInfo2 = [self userInfo];
    v7 = [userInfo2 objectForKeyedSubscript:@"LNPerformActionErrorLocalizedStringResourceData"];
    v12 = 0;
    v8 = [v4 unarchivedObjectOfClass:v5 fromData:v7 error:&v12];
    v9 = v12;

    if (v9)
    {
      v10 = getLNLogCategoryGeneral();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v14 = @"LNPerformActionErrorLocalizedStringResourceData";
        v15 = 2114;
        v16 = v9;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end