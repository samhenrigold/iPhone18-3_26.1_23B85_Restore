@interface _UICoreMediaOverridePIDManager
+ (id)sharedInstance;
- (_UICoreMediaOverridePIDManager)init;
- (id)acquireOverrideAssertionWithPID:(void *)d forReason:;
- (id)debugDescription;
- (id)succinctDescription;
- (void)evaluateActiveOverridePID;
@end

@implementation _UICoreMediaOverridePIDManager

+ (id)sharedInstance
{
  objc_opt_self();
  if (qword_1ED49D808 != -1)
  {
    dispatch_once(&qword_1ED49D808, &__block_literal_global_143);
  }

  v1 = _MergedGlobals_1054;

  return v1;
}

- (_UICoreMediaOverridePIDManager)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s is not allowed", "-[_UICoreMediaOverridePIDManager init]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"_UICoreMediaOverridePIDManager.m";
    v17 = 1024;
    v18 = 47;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)acquireOverrideAssertionWithPID:(void *)d forReason:
{
  v31 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (self)
  {
    BSDispatchQueueAssertMain();
    if (a2 <= 0)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to acquire media override assertion for pid %d", a2];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(sel_acquireOverrideAssertionWithPID_forReason_);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *location = 138544642;
        *&location[4] = v13;
        v21 = 2114;
        v22 = v15;
        v23 = 2048;
        selfCopy = self;
        v25 = 2114;
        v26 = @"_UICoreMediaOverridePIDManager.m";
        v27 = 1024;
        v28 = 53;
        v29 = 2114;
        v30 = v12;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", location, 0x3Au);
      }

      v16 = v12;
      [v12 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189621448);
    }

    v6 = [[_UICoreMediaOverridePIDAssertionToken alloc] initWithPID:a2 reason:dCopy];
    objc_initWeak(location, self);
    v7 = objc_alloc(MEMORY[0x1E698E778]);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __76___UICoreMediaOverridePIDManager_acquireOverrideAssertionWithPID_forReason___block_invoke;
    v17[3] = &unk_1E71030A0;
    objc_copyWeak(&v19, location);
    v8 = v6;
    v18 = v8;
    v9 = [v7 initWithIdentifier:@"com.apple.UIKit._UICoreMediaOverridePIDManager" forReason:dCopy invalidationBlock:v17];
    [self[2] addObject:v8];
    [(_UICoreMediaOverridePIDManager *)self evaluateActiveOverridePID];

    objc_destroyWeak(&v19);
    objc_destroyWeak(location);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)evaluateActiveOverridePID
{
  v34 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  lastObject = [*(self + 16) lastObject];
  v25 = lastObject;
  if (lastObject)
  {
    if (*(self + 8) == lastObject[2])
    {
      goto LABEL_21;
    }

    v4 = lastObject;
    *(self + 8) = v25[2];
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  }

  else
  {
    if (*(self + 8) == -1)
    {
      goto LABEL_21;
    }

    v5 = 0;
    *(self + 8) = -1;
  }

  v6 = *(__UILogGetCategoryCachedImpl("UICoreMediaOverridePIDManager", &qword_1ED49D810) + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    if (v25)
    {
      v8 = *(v25 + 2);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = v9;
    v11 = @"assertions invalidated";
    if (v9)
    {
      v11 = v9;
    }

    *buf = 138412546;
    *&buf[4] = v5;
    *&buf[12] = 2112;
    *&buf[14] = v11;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "Using %@ for core media override pid: %@", buf, 0x16u);
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v12 = qword_1ED49D820;
  v30 = qword_1ED49D820;
  if (!qword_1ED49D820)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getAVSystemControllerClass_block_invoke;
    v32 = &unk_1E70F2F20;
    v33 = &v27;
    __getAVSystemControllerClass_block_invoke(buf);
    v12 = v28[3];
  }

  v13 = v12;
  _Block_object_dispose(&v27, 8);
  sharedAVSystemController = [v12 sharedAVSystemController];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v15 = qword_1ED49D828;
  v30 = qword_1ED49D828;
  if (!qword_1ED49D828)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getAVSystemController_PIDToInheritApplicationStateFromSymbolLoc_block_invoke;
    v32 = &unk_1E70F2F20;
    v33 = &v27;
    v16 = MediaExperienceLibrary();
    v17 = dlsym(v16, "AVSystemController_PIDToInheritApplicationStateFrom");
    *(v33[1] + 24) = v17;
    qword_1ED49D828 = *(v33[1] + 24);
    v15 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (!v15)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_PIDToInheritApplicationStateFrom(void)"];
    [currentHandler handleFailureInFunction:v24 file:@"_UICoreMediaOverridePIDManager.m" lineNumber:19 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v18 = *v15;
  v26 = 0;
  v19 = v18;
  v20 = [sharedAVSystemController setAttribute:v5 forKey:v19 error:&v26];
  v21 = v26;

  if ((v20 & 1) == 0)
  {
    v22 = *(__UILogGetCategoryCachedImpl("UICoreMediaOverridePIDManager", &qword_1ED49D818) + 8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v5;
      *&buf[12] = 2112;
      *&buf[14] = v21;
      _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "Failed to inherit CoreMedia permissions from %@: %@", buf, 0x16u);
    }
  }

LABEL_21:
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:succinctStyle];

  return v5;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  debugStyle = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:debugStyle];

  return v5;
}

@end