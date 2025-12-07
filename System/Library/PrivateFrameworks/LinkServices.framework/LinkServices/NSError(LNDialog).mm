@interface NSError(LNDialog)
- (id)ln_dialog;
@end

@implementation NSError(LNDialog)

- (id)ln_dialog
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ACD0];
  v3 = objc_opt_class();
  userInfo = [self userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"LNContextDialogData"];
  v10 = 0;
  v6 = [v2 unarchivedObjectOfClass:v3 fromData:v5 error:&v10];
  v7 = v10;

  if (v7)
  {
    v8 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v12 = @"LNContextDialogData";
      v13 = 2114;
      v14 = v7;
    }
  }

  return v6;
}

@end