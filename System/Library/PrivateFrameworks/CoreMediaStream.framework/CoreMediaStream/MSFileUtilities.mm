@interface MSFileUtilities
+ (BOOL)hardlinkOrCopyFileFromPath:(id)path toPath:(id)toPath outError:(id *)error;
@end

@implementation MSFileUtilities

+ (BOOL)hardlinkOrCopyFileFromPath:(id)path toPath:(id)toPath outError:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  toPathCopy = toPath;
  v10 = link([pathCopy fileSystemRepresentation], objc_msgSend(toPathCopy, "fileSystemRepresentation"));
  if (v10 != 18)
  {
    if (!v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v22 = 138543874;
        selfCopy3 = self;
        v24 = 2112;
        v25 = pathCopy;
        v26 = 2112;
        v27 = toPathCopy;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Hardlinked path %@ to %@.", &v22, 0x20u);
      }

      v11 = 1;
      goto LABEL_13;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA5B8];
    v15 = v10;
    v16 = MEMORY[0x277CCACA8];
    v17 = __error();
    v18 = [v16 stringWithUTF8String:strerror(*v17)];
    v19 = [v13 MSErrorWithDomain:v14 code:v15 description:v18];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v22 = 138544130;
      selfCopy3 = self;
      v24 = 2112;
      v25 = pathCopy;
      v26 = 2112;
      v27 = toPathCopy;
      v28 = 2114;
      v29 = v19;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not hardlink path %@ to %@. Error: %{public}@", &v22, 0x2Au);
      if (!error)
      {
        goto LABEL_12;
      }
    }

    else if (!error)
    {
LABEL_12:

      v11 = 0;
      goto LABEL_13;
    }

    v20 = v19;
    *error = v19;
    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v22 = 138543874;
    selfCopy3 = self;
    v24 = 2112;
    v25 = pathCopy;
    v26 = 2112;
    v27 = toPathCopy;
    _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Copying path %@ to %@.", &v22, 0x20u);
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [defaultManager copyItemAtPath:pathCopy toPath:toPathCopy error:error];

LABEL_13:
  return v11;
}

@end