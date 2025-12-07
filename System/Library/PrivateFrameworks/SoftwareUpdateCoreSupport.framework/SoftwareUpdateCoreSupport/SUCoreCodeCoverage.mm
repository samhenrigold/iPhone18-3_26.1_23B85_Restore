@interface SUCoreCodeCoverage
+ (id)getCodeCoveragePathForName:(id)name;
+ (void)_handleSignal:(int)signal forName:(id)name;
+ (void)dumpCodeCoverageForName:(id)name;
+ (void)initializeForName:(id)name;
+ (void)resetCodeCoverageForName:(id)name;
@end

@implementation SUCoreCodeCoverage

+ (void)initializeForName:(id)name
{
  v3 = +[SUCoreLog sharedLogger];
  oslog = [v3 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[SUCoreCodeCoverage] Code coverage is disabled (SUCore not running in debug)", v5, 2u);
  }
}

+ (void)_handleSignal:(int)signal forName:(id)name
{
  v10 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v6 = +[SUCoreLog sharedLogger];
  oslog = [v6 oslog];

  v8 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
  if (signal == 31)
  {
    if (v8)
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[SUCoreCodeCoverage] Signal handler received SIGUSR2, resetting code coverage", v9, 2u);
    }

    [SUCoreCodeCoverage resetCodeCoverageForName:nameCopy];
  }

  else if (signal == 30)
  {
    if (v8)
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[SUCoreCodeCoverage] Signal handler received SIGUSR1, dumping code coverage", v9, 2u);
    }

    [SUCoreCodeCoverage dumpCodeCoverageForName:nameCopy];
  }

  else
  {
    if (v8)
    {
      v9[0] = 67109120;
      v9[1] = signal;
      _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[SUCoreCodeCoverage] Unhandled signal: %d (ignored)", v9, 8u);
    }
  }
}

+ (id)getCodeCoveragePathForName:(id)name
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (!name)
  {
    v15 = 0;
    goto LABEL_11;
  }

  v3 = MEMORY[0x1E696AB78];
  nameCopy = name;
  v5 = objc_alloc_init(v3);
  [v5 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
  v6 = MEMORY[0x1E696AEC0];
  v7 = getpid();
  date = [MEMORY[0x1E695DF00] date];
  v9 = [v5 stringFromDate:date];
  v10 = [v6 stringWithFormat:@"%@/%@.%d.%@.profraw", @"/tmp/ASUCodeCoverage", nameCopy, v7, v9];

  v22 = *MEMORY[0x1E696A370];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:511];
  v23[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([defaultManager fileExistsAtPath:@"/tmp/ASUCodeCoverage"])
  {

    v14 = 0;
  }

  else
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v21 = 0;
    v17 = [defaultManager2 createDirectoryAtPath:@"/tmp/ASUCodeCoverage" withIntermediateDirectories:0 attributes:v12 error:&v21];
    v14 = v21;

    if ((v17 & 1) == 0)
    {
      v18 = +[SUCoreLog sharedLogger];
      oslog = [v18 oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        [(SUCoreCodeCoverage *)v14 getCodeCoveragePathForName:oslog];
      }

      v15 = 0;
      goto LABEL_10;
    }
  }

  v15 = v10;
LABEL_10:

LABEL_11:

  return v15;
}

+ (void)dumpCodeCoverageForName:(id)name
{
  v3 = +[SUCoreLog sharedLogger];
  oslog = [v3 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[SUCoreCodeCoverage] Code coverage is disabled (SUCore not running in debug)", v5, 2u);
  }
}

+ (void)resetCodeCoverageForName:(id)name
{
  v3 = +[SUCoreLog sharedLogger];
  oslog = [v3 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[SUCoreCodeCoverage] Code coverage is disabled (SUCore not running in debug)", v5, 2u);
  }
}

+ (void)getCodeCoveragePathForName:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1E0F71000, a2, OS_LOG_TYPE_ERROR, "[SUCoreCodeCoverage] Unable to create output directory: '%{public}@'", &v2, 0xCu);
}

@end