@interface NSDictionary(CPLArchiver)
- (id)initWithCPLArchiver:()CPLArchiver;
@end

@implementation NSDictionary(CPLArchiver)

- (id)initWithCPLArchiver:()CPLArchiver
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [self init];
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
        v11 = v10;
        v12 = objc_opt_class();
        v13 = v4[2];
        *buf = 138413058;
        v23 = archiverContext;
        v24 = 2112;
        v25 = v10;
        v26 = 2112;
        v27 = v12;
        v28 = 2112;
        v29 = v13;
        v14 = v12;
        _os_log_impl(&dword_1DC05A000, v8, OS_LOG_TYPE_ERROR, "%@: Invalid %@. Found %@ in archive: '%@'", buf, 0x2Au);
      }
    }

    v15 = objc_opt_class();
    objc_opt_class();
    _CPLArchiverFailure(v4, @"Invalid %@. Found %@ in archive: '%@'", v16, v17, v18, v19, v20, v21, v15);
  }

  v6 = v4[2];

  return v6;
}

@end