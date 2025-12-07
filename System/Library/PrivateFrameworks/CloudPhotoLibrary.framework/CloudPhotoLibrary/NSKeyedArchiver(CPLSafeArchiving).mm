@interface NSKeyedArchiver(CPLSafeArchiving)
+ (id)cpl_archivedDataWithRootObject:()CPLSafeArchiving;
@end

@implementation NSKeyedArchiver(CPLSafeArchiving)

+ (id)cpl_archivedDataWithRootObject:()CPLSafeArchiving
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v8 = 0;
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v8];
  v5 = v8;
  if (!v4 && (_CPLSilentLogging & 1) == 0)
  {
    v6 = __CPLArchiverOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v10 = v3;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_1DC05A000, v6, OS_LOG_TYPE_ERROR, "Failed to create archiver for %@: %@", buf, 0x16u);
    }
  }

  return v4;
}

@end