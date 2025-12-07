@interface PBCodable(CPLArchiver)
- (id)plistArchiveWithCPLArchiver:()CPLArchiver;
- (uint64_t)initWithCPLArchiver:()CPLArchiver;
@end

@implementation PBCodable(CPLArchiver)

- (uint64_t)initWithCPLArchiver:()CPLArchiver
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        archiverContext = [v4 archiverContext];
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = objc_opt_class();
        v14 = v4[2];
        *buf = 138413058;
        v25 = archiverContext;
        v26 = 2112;
        v27 = v12;
        v28 = 2112;
        v29 = v13;
        v30 = 2112;
        v31 = v14;
        v15 = v13;
        _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "%@: Incorrect string for %@. Found %@: '%@'", buf, 0x2Au);
      }
    }

    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    objc_opt_class();
    _CPLArchiverFailure(v4, @"Incorrect string for %@. Found %@: '%@'", v18, v19, v20, v21, v22, v23, v17);
  }

  v5 = objc_opt_class();
  v6 = [(CPLArchiver *)v4 _decodeKey:v5 class:v4[2] inDictionary:?];
  v7 = [self initWithData:v6];

  return v7;
}

- (id)plistArchiveWithCPLArchiver:()CPLArchiver
{
  v4 = MEMORY[0x1E695DF90];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  data = [self data];
  v8 = [(CPLArchiver *)v5 _encodeKey:?];

  [v6 setObject:data forKeyedSubscript:v8];

  return v6;
}

@end