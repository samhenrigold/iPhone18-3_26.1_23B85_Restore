@interface NSDate(CPLArchiver)
- (id)plistArchiveWithCPLArchiver:()CPLArchiver;
- (uint64_t)initWithCPLArchiver:()CPLArchiver;
@end

@implementation NSDate(CPLArchiver)

- (uint64_t)initWithCPLArchiver:()CPLArchiver
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        archiverContext = [v4 archiverContext];
        v9 = objc_opt_class();
        v10 = v4[2];
        *buf = 138412802;
        v20 = archiverContext;
        v21 = 2112;
        v22 = v9;
        v23 = 2112;
        v24 = v10;
        v11 = v9;
        _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_ERROR, "%@: Incorrect number for NSDate. Found %@: '%@'", buf, 0x20u);
      }
    }

    v12 = objc_opt_class();
    _CPLArchiverFailure(v4, @"Incorrect number for NSDate. Found %@: '%@'", v13, v14, v15, v16, v17, v18, v12);
  }

  [v4[2] doubleValue];
  v5 = [self initWithTimeIntervalSinceReferenceDate:?];

  return v5;
}

- (id)plistArchiveWithCPLArchiver:()CPLArchiver
{
  if ([a3 forDisplay])
  {
    [self description];
  }

  else
  {
    v5 = MEMORY[0x1E696AD98];
    [self timeIntervalSinceReferenceDate];
    [v5 numberWithDouble:?];
  }
  v4 = ;

  return v4;
}

@end