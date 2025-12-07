@interface UIAppSpecificUserInterfaceStyle
@end

@implementation UIAppSpecificUserInterfaceStyle

void ___UIAppSpecificUserInterfaceStyle_block_invoke()
{
  v12 = *MEMORY[0x1E69E9840];
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    qword_1EA9931D8 = 1;
    return;
  }

  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 objectForInfoDictionaryKey:@"UIUserInterfaceStyle"];

  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }
  }

  v2 = dyld_program_sdk_at_least();

  if (!v2)
  {
    v1 = @"Light";
LABEL_7:
    isEqualToString = objc_msgSend_isEqualToString_(v1);
    goto LABEL_8;
  }

  v1 = @"Automatic";
  isEqualToString = objc_msgSend_isEqualToString_(@"Automatic");
LABEL_8:
  if (isEqualToString)
  {
    v4 = 0;
  }

  else if (objc_msgSend_isEqualToString_(v1))
  {
    v4 = 2;
  }

  else
  {
    if ((objc_msgSend_isEqualToString_(v1) & 1) == 0)
    {
      v5 = *(__UILogGetCategoryCachedImpl("UIInterfaceStyle", &qword_1EA9931E8) + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = 138543874;
        v7 = v1;
        v8 = 2114;
        v9 = @"UIUserInterfaceStyle";
        v10 = 2114;
        v11 = @"Light";
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "'%{public}@' is not a recognized value for %{public}@. Defaulting to %{public}@.", &v6, 0x20u);
      }
    }

    v4 = 1;
  }

  qword_1EA9931D8 = v4;
}

@end