@interface FISubOperation
- (BOOL)startFileSystemSuboperation:(unsigned int)suboperation newAliasOrFolderName:(id)name propertyList:(OpaquePropertyListRef *)list aliasTarget:(id)target error:(id *)error;
- (BOOL)startTagStampingSuboperation:(unsigned int)suboperation error:(id *)error;
- (FIOperation)operation;
- (FISubOperation)initWithOperation:(id)operation;
- (id)isValidSuboperation:(unsigned int)suboperation callingFunc:(TString)func;
- (void)cancel;
- (void)done;
- (void)postCancelSuboperation;
@end

@implementation FISubOperation

- (FISubOperation)initWithOperation:(id)operation
{
  v14 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  v11.receiver = self;
  v11.super_class = FISubOperation;
  v5 = [(FISubOperation *)&v11 init];
  operationType = [operationCopy operationType];
  if (operationType <= 0xF && ((1 << operationType) & 0x8C00) != 0)
  {
    objc_storeWeak(&v5->_operation, operationCopy);
    v7 = v5;
  }

  else
  {
    operationCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%s' does not support suboperations: %@", Description(operationType), operationCopy];
    v9 = LogObj(8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = operationCopy;
      _os_log_impl(&dword_1E5674000, v9, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (id)isValidSuboperation:(unsigned int)suboperation callingFunc:(TString)func
{
  v31 = *MEMORY[0x1E69E9840];
  operation = [(FISubOperation *)self operation];
  operationType = [operation operationType];
  operationRef = [operation operationRef];
  if (suboperation > 19)
  {
    if (suboperation - 20 >= 3)
    {
      if (suboperation != 23)
      {
        goto LABEL_15;
      }

      v10 = operationType == 15;
    }

    else
    {
      v10 = operationType == 11;
    }
  }

  else
  {
    if (suboperation - 1 >= 8)
    {
      if (suboperation != -1)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v10 = operationType == 10;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_12:
  if (operationRef)
  {
    v12 = 0;
    goto LABEL_21;
  }

LABEL_15:
  if (operationRef)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = Description(operationType);
    [v13 stringWithFormat:@"'%s' and '%s' are not compatible: %@", v14, Description(suboperation), operation];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"The operation has not been scheduled yet: %@", operation];
  }
  v15 = ;
  v12 = ErrorWithOSStatus(4294959224, v15);
  *buf = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], ":", 1, 0x8000100u, 0, *MEMORY[0x1E695E498]);
  v21 = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v21, *buf);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(buf);
  v16 = TString::IndexOf(func.fString.fRef, &v21);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v21);
  v17 = LogObj(8);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    TString::SubString(&v21, func.fString.fRef, 0, v16);
    v18 = v21;
    v19 = Description(suboperation);
    *buf = 138544386;
    *&buf[4] = v18;
    v23 = 2082;
    v24 = v19;
    v25 = 2114;
    v26 = operation;
    v27 = 2114;
    selfCopy = self;
    v29 = 2114;
    v30 = v15;
    _os_log_impl(&dword_1E5674000, v17, OS_LOG_TYPE_ERROR, "%{public}@: %{public}s failed\n\toperation: %{public}@\n\tsuboperation: %{public}@\n\t%{public}@", buf, 0x34u);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v21);
  }

LABEL_21:

  return v12;
}

- (BOOL)startFileSystemSuboperation:(unsigned int)suboperation newAliasOrFolderName:(id)name propertyList:(OpaquePropertyListRef *)list aliasTarget:(id)target error:(id *)error
{
  v10 = *&suboperation;
  v44 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  targetCopy = target;
  TString::TString(&v34, "[FISubOperation startFileSystemSuboperation:newAliasOrFolderName:propertyList:aliasTarget:error:]");
  operation = [(FISubOperation *)self isValidSuboperation:v10 callingFunc:&v34];
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34.fString.fRef);
  if (operation)
  {
    if (error)
    {
      v15 = operation;
      v16 = 0;
      *error = operation;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    if (v10 == 20)
    {

      targetCopy = 0;
      nameCopy = 0;
    }

    operation = [(FISubOperation *)self operation];
    v17 = LogObj(8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription = [targetCopy shortDescription];
      v19 = Description(v10);
      *buf = 136447234;
      *&buf[4] = v19;
      v36 = 2114;
      v37 = operation;
      v38 = 2114;
      selfCopy2 = self;
      v40 = 2114;
      v41 = nameCopy;
      v42 = 2114;
      v43 = shortDescription;
      _os_log_impl(&dword_1E5674000, v17, OS_LOG_TYPE_DEFAULT, "startFileSystemSuboperation: %{public}s\n\toperation: %{public}@\n\tsuboperation: %{public}@\n\tnewAliasOrFolderName: %{public}@\n\taliasTargetNode: %{public}@", buf, 0x34u);
    }

    operationRef = [operation operationRef];
    if (nameCopy)
    {
      v21 = nameCopy;
      v33.fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v33, v21);

      TString::AsDecomposedUnicode(buf, &v33);
      if (*buf && (v22 = CFRetain(*buf), (v23 = static_cf_cast<__CFString const*,void const*>(v22)) != 0))
      {
        v24 = CFAutorelease(v23);
        v25 = static_cf_cast<__CFString const*,void const*>(v24);
      }

      else
      {
        v25 = 0;
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(buf);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v33.fString.fRef);
    }

    else
    {
      v25 = 0;
    }

    v26 = [(FISubOperation *)self nameConflictHandler:self];

    nodeRef = [targetCopy nodeRef];
    if (v26)
    {
      v28 = FileSysOpUniqueNameProc;
    }

    else
    {
      v28 = 0;
    }

    v29 = NodeRequestSuboperationWithStringAndNode(operationRef, v10, v25, v28, &v33, nodeRef, list);
    v16 = v29 == 0;
    if (v29)
    {
      v30 = LogObj(8);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = Description(v10);
        *buf = 136446978;
        *&buf[4] = v31;
        v36 = 2114;
        v37 = operation;
        v38 = 2114;
        selfCopy2 = self;
        v40 = 1024;
        LODWORD(v41) = v29;
        _os_log_impl(&dword_1E5674000, v30, OS_LOG_TYPE_ERROR, "startFileSystemSuboperation: %{public}s failed\n\toperation: %{public}@\n\tsuboperation: %{public}@\n\tstatus: %d", buf, 0x26u);
      }
    }

    if (error)
    {
      *error = ErrorWithOSStatus(v29, 0);
    }
  }

  return v16;
}

- (BOOL)startTagStampingSuboperation:(unsigned int)suboperation error:(id *)error
{
  v5 = *&suboperation;
  v27 = *MEMORY[0x1E69E9840];
  TString::TString(&v18, "[FISubOperation startTagStampingSuboperation:error:]");
  v7 = [(FISubOperation *)self isValidSuboperation:v5 callingFunc:&v18];
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v18.fString.fRef);
  if (error && v7)
  {
    v8 = v7;
    v9 = 0;
    operation = v7;
LABEL_4:
    *error = v7;
    goto LABEL_5;
  }

  if (v7)
  {
    return 0;
  }

  operation = [(FISubOperation *)self operation];
  v12 = LogObj(8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = Description(v5);
    *buf = 136446722;
    v20 = v13;
    v21 = 2114;
    v22 = operation;
    v23 = 2114;
    selfCopy2 = self;
    _os_log_impl(&dword_1E5674000, v12, OS_LOG_TYPE_DEFAULT, "startTagStampingSuboperation: %{public}s\n\toperation: %{public}@\n\tsuboperation: %{public}@\n", buf, 0x20u);
  }

  v14 = NodeRequestTagStampingOperation([operation operationRef], v5);
  v9 = v14 == 0;
  if (v14)
  {
    v15 = LogObj(8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = Description(v5);
      *buf = 136446978;
      v20 = v16;
      v21 = 2114;
      v22 = operation;
      v23 = 2114;
      selfCopy2 = self;
      v25 = 1024;
      v26 = v14;
      _os_log_impl(&dword_1E5674000, v15, OS_LOG_TYPE_ERROR, "startTagStampingSuboperation: %{public}s failed\n\toperation: %{public}@\n\tsuboperation: %{public}@\n\tstatus: %d", buf, 0x26u);
    }
  }

  if (error)
  {
    v7 = ErrorWithOSStatus(v14, 0);
    v17 = v7;
    goto LABEL_4;
  }

LABEL_5:

  return v9;
}

- (void)done
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = LogObj(8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1E5674000, v3, OS_LOG_TYPE_DEFAULT, "done - %{public}@", &v4, 0xCu);
  }

  [(FISubOperation *)self postCancelSuboperation];
}

- (void)cancel
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = LogObj(8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1E5674000, v3, OS_LOG_TYPE_DEFAULT, "cancel - %{public}@", &v4, 0xCu);
  }

  [(FISubOperation *)self postCancelSuboperation];
}

- (void)postCancelSuboperation
{
  v17 = *MEMORY[0x1E69E9840];
  operation = [(FISubOperation *)self operation];
  if ([operation operationRef])
  {
    operationType = [operation operationType];
    if (operationType == 11)
    {
      v10 = 0;
      v5 = &v10;
      [(FISubOperation *)self startFileSystemSuboperation:0xFFFFFFFFLL newAliasOrFolderName:0 propertyList:0 aliasTarget:0 error:&v10];
    }

    else
    {
      if (operationType != 15)
      {
        goto LABEL_10;
      }

      v9 = 0;
      v5 = &v9;
      [(FISubOperation *)self startTagStampingSuboperation:0xFFFFFFFFLL error:&v9];
    }

    v6 = *v5;
    if (v6)
    {
      v7 = v6;
      v8 = LogObj(8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v12 = operation;
        v13 = 2114;
        selfCopy = self;
        v15 = 2114;
        v16 = v7;
        _os_log_impl(&dword_1E5674000, v8, OS_LOG_TYPE_ERROR, "Cancel failed - %{public}@ %{public}@, error: %{public}@", buf, 0x20u);
      }
    }
  }

LABEL_10:
}

- (FIOperation)operation
{
  WeakRetained = objc_loadWeakRetained(&self->_operation);

  return WeakRetained;
}

@end