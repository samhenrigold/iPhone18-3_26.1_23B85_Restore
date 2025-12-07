@interface PFCloudKitOptionsValidator
- (BOOL)validateOptions:(void *)options andStoreOptions:(uint64_t *)storeOptions error:;
- (void)dealloc;
@end

@implementation PFCloudKitOptionsValidator

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PFCloudKitOptionsValidator;
  [(PFCloudKitOptionsValidator *)&v3 dealloc];
}

- (BOOL)validateOptions:(void *)options andStoreOptions:(uint64_t *)storeOptions error:
{
  v81[1] = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v7 = objc_autoreleasePoolPush();
  Stream = __PFCloudKitLoggingGetStream();
  v9 = Stream;
  if (__ckLoggingOverride == 17)
  {
    v10 = 17;
  }

  else
  {
    v10 = 2;
  }

  if (__ckLoggingOverride == 16)
  {
    v10 = 16;
  }

  if (__ckLoggingOverride == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (!__ckLoggingOverride)
  {
    v11 = 0;
  }

  if (__ckLoggingOverride <= 0xFu)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  if (os_log_type_enabled(Stream, v12))
  {
    *buf = 136315906;
    v69 = "[PFCloudKitOptionsValidator validateOptions:andStoreOptions:error:]";
    v70 = 1024;
    v71 = 36;
    v72 = 2112;
    v73 = a2;
    v74 = 2112;
    optionsCopy = options;
    _os_log_impl(&dword_18565F000, v9, v12, "CoreData+CloudKit: %s(%d): Validating options: %@\nstoreOptions: %@", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v7);
  containerIdentifier = [a2 containerIdentifier];
  if (!containerIdentifier)
  {
    v27 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A250];
    v76 = *MEMORY[0x1E696A588];
    v77 = @"A container identifier is required for the CloudKit integration.";
    v29 = MEMORY[0x1E695DF20];
    v30 = &v77;
    v31 = &v76;
    goto LABEL_33;
  }

  v14 = containerIdentifier;
  if (![containerIdentifier isNSString])
  {
    v27 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A250];
    v78 = *MEMORY[0x1E696A588];
    v32 = MEMORY[0x1E696AEC0];
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    v79 = objc_msgSend_stringWithFormat_(v32, v34, v14);
    v29 = MEMORY[0x1E695DF20];
    v30 = &v79;
    v31 = &v78;
    goto LABEL_33;
  }

  if (![v14 length])
  {
    v27 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A250];
    v80 = *MEMORY[0x1E696A588];
    v81[0] = @"NSCloudKitMirroringDelegateOptions.containerIdentifier requires a value with a length greather than 0";
    v29 = MEMORY[0x1E695DF20];
    v30 = v81;
    v31 = &v80;
LABEL_33:
    v35 = [v27 errorWithDomain:v28 code:134060 userInfo:{objc_msgSend(v29, "dictionaryWithObjects:forKeys:count:", v30, v31, 1)}];
    if (v35)
    {
      goto LABEL_37;
    }

    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v69 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitOptionsValidator.m";
      v70 = 1024;
      v71 = 87;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v37 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_37;
    }

    *buf = 136315394;
    v69 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitOptionsValidator.m";
    v70 = 1024;
    v71 = 87;
    goto LABEL_58;
  }

  if (![options objectForKey:@"NSPersistentHistoryTrackingKey"])
  {
    v40 = MEMORY[0x1E696ABC0];
    v41 = *MEMORY[0x1E696A250];
    v80 = *MEMORY[0x1E696A588];
    v81[0] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], @"NSPersistentHistoryTrackingKey");
    v35 = [v40 errorWithDomain:v41 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v81, &v80, 1)}];
    if (v35)
    {
      goto LABEL_37;
    }

    v42 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v69 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitOptionsValidator.m";
      v70 = 1024;
      v71 = 105;
      _os_log_error_impl(&dword_18565F000, v42, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v37 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_37;
    }

    *buf = 136315394;
    v69 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitOptionsValidator.m";
    v70 = 1024;
    v71 = 105;
    goto LABEL_58;
  }

  containerOptions = [a2 containerOptions];
  if (containerOptions)
  {
    v16 = containerOptions;
    getCloudKitCKContainerOptionsClass();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v43 = MEMORY[0x1E696ABC0];
      v44 = *MEMORY[0x1E696A250];
      v80 = *MEMORY[0x1E696A588];
      v45 = MEMORY[0x1E696AEC0];
      getCloudKitCKContainerOptionsClass();
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v81[0] = objc_msgSend_stringWithFormat_(v45, v47, v16);
      v35 = [v43 errorWithDomain:v44 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v81, &v80, 1)}];
      if (v35)
      {
        goto LABEL_37;
      }

      v48 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v69 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitOptionsValidator.m";
        v70 = 1024;
        v71 = 132;
        _os_log_error_impl(&dword_18565F000, v48, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v37 = _PFLogGetLogStream(17);
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_37;
      }

      *buf = 136315394;
      v69 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitOptionsValidator.m";
      v70 = 1024;
      v71 = 132;
      goto LABEL_58;
    }
  }

  ckAssetThresholdBytes = [a2 ckAssetThresholdBytes];
  if (ckAssetThresholdBytes)
  {
    v18 = ckAssetThresholdBytes;
    if ([ckAssetThresholdBytes isNSNumber])
    {
      if ([v18 integerValue] > 99)
      {
        goto LABEL_26;
      }

      v49 = MEMORY[0x1E696ABC0];
      v50 = *MEMORY[0x1E696A250];
      v80 = *MEMORY[0x1E696A588];
      v81[0] = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], [MEMORY[0x1E696AD98] numberWithInteger:100], v18);
      v54 = MEMORY[0x1E695DF20];
      v55 = v81;
      v56 = &v80;
    }

    else
    {
      v49 = MEMORY[0x1E696ABC0];
      v50 = *MEMORY[0x1E696A250];
      v78 = *MEMORY[0x1E696A588];
      v51 = MEMORY[0x1E696AEC0];
      v52 = objc_opt_class();
      v53 = NSStringFromClass(v52);
      v79 = objc_msgSend_stringWithFormat_(v51, v53, v18);
      v54 = MEMORY[0x1E695DF20];
      v55 = &v79;
      v56 = &v78;
    }

    v35 = [v49 errorWithDomain:v50 code:134060 userInfo:{objc_msgSend(v54, "dictionaryWithObjects:forKeys:count:", v55, v56, 1)}];
    if (v35)
    {
      goto LABEL_37;
    }

    v63 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v69 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitOptionsValidator.m";
      v70 = 1024;
      v71 = 162;
      _os_log_error_impl(&dword_18565F000, v63, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
    }

    v37 = _PFLogGetLogStream(17);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_37;
    }

    *buf = 136315394;
    v69 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitOptionsValidator.m";
    v70 = 1024;
    v71 = 162;
    goto LABEL_58;
  }

LABEL_26:
  operationMemoryThresholdBytes = [a2 operationMemoryThresholdBytes];
  if (!operationMemoryThresholdBytes)
  {
    return 1;
  }

  v20 = operationMemoryThresholdBytes;
  if ([operationMemoryThresholdBytes isNSNumber])
  {
    longLongValue = [&unk_1EF435E30 longLongValue];
    if ([v20 longLongValue] < longLongValue)
    {
      v22 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A250];
      v78 = *MEMORY[0x1E696A588];
      v79 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], &unk_1EF435E30, v20);
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
      v25 = v22;
      v26 = v23;
      goto LABEL_60;
    }

    longLongValue2 = [v20 longLongValue];
    if (longLongValue2 > [objc_msgSend(a2 "ckAssetThresholdBytes")])
    {
      return 1;
    }

    v65 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v20, [a2 ckAssetThresholdBytes]);
    v66 = MEMORY[0x1E696ABC0];
    v67 = *MEMORY[0x1E696A250];
    v80 = *MEMORY[0x1E696A588];
    v81[0] = v65;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:&v80 count:1];
    v25 = v66;
    v26 = v67;
  }

  else
  {
    v57 = MEMORY[0x1E696ABC0];
    v58 = *MEMORY[0x1E696A250];
    v76 = *MEMORY[0x1E696A588];
    v59 = MEMORY[0x1E696AEC0];
    v60 = objc_opt_class();
    v61 = NSStringFromClass(v60);
    v77 = objc_msgSend_stringWithFormat_(v59, v61, v20);
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    v25 = v57;
    v26 = v58;
  }

LABEL_60:
  v35 = [v25 errorWithDomain:v26 code:134060 userInfo:v24];
  if (v35)
  {
    goto LABEL_37;
  }

  v62 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v69 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitOptionsValidator.m";
    v70 = 1024;
    v71 = 200;
    _os_log_error_impl(&dword_18565F000, v62, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v37 = _PFLogGetLogStream(17);
  if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
  {
    goto LABEL_37;
  }

  *buf = 136315394;
  v69 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitOptionsValidator.m";
  v70 = 1024;
  v71 = 200;
LABEL_58:
  _os_log_fault_impl(&dword_18565F000, v37, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
LABEL_37:
  if (v35)
  {
    if (storeOptions)
    {
      result = 0;
      *storeOptions = v35;
      return result;
    }

    return 0;
  }

  v38 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v69 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitOptionsValidator.m";
    v70 = 1024;
    v71 = 56;
    _os_log_error_impl(&dword_18565F000, v38, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v39 = _PFLogGetLogStream(17);
  result = os_log_type_enabled(v39, OS_LOG_TYPE_FAULT);
  if (result)
  {
    *buf = 136315394;
    v69 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitOptionsValidator.m";
    v70 = 1024;
    v71 = 56;
    _os_log_fault_impl(&dword_18565F000, v39, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    return 0;
  }

  return result;
}

@end