@interface NSObject(CPLArchiver)
- (NSString)storedClassNameForCPLArchiver:()CPLArchiver;
- (id)plistArchiveWithCPLArchiver:()CPLArchiver;
- (void)initWithCPLArchiver:()CPLArchiver;
@end

@implementation NSObject(CPLArchiver)

- (void)initWithCPLArchiver:()CPLArchiver
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        archiverContext = [v4 archiverContext];
        v10 = objc_opt_class();
        v11 = v4[2];
        *buf = 138412802;
        v21 = archiverContext;
        v22 = 2112;
        v23 = v10;
        v24 = 2112;
        v25 = v11;
        v12 = v10;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_ERROR, "%@: Invalid object properties dictionary. Found %@ in archive: '%@'", buf, 0x20u);
      }
    }

    v13 = objc_opt_class();
    _CPLArchiverFailure(v4, @"Invalid object properties dictionary. Found %@ in archive: '%@'", v14, v15, v16, v17, v18, v19, v13);
  }

  v5 = [self init];
  v6 = v5;
  if (v5)
  {
    [v5 cplDecodePropertiesFromCoder:v4];
  }

  return v6;
}

- (id)plistArchiveWithCPLArchiver:()CPLArchiver
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = v5[2];
  objc_storeStrong(v5 + 2, v6);
  v8 = v5[5];
  v9 = v5[4];
  v10 = objc_opt_class();
  v8(v9, sel_addObject_, v10);
  [self cplEncodePropertiesWithCoder:v5];
  (v5[6])(v5[4], sel_removeLastObject);
  v11 = v5[2];
  v5[2] = v7;
  v12 = v7;

  return v6;
}

- (NSString)storedClassNameForCPLArchiver:()CPLArchiver
{
  classForCoder = [self classForCoder];

  return NSStringFromClass(classForCoder);
}

@end