@interface DEDaemonHelper
+ (id)generateSandboxExtensionWithDestinationDir:(id)dir pingTarget:(id)target;
@end

@implementation DEDaemonHelper

+ (id)generateSandboxExtensionWithDestinationDir:(id)dir pingTarget:(id)target
{
  dirCopy = dir;
  targetCopy = target;
  v7 = dispatch_semaphore_create(0);
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v37 = MEMORY[0x277D85DD0];
  v38 = 3221225472;
  v39 = __72__DEDaemonHelper_generateSandboxExtensionWithDestinationDir_pingTarget___block_invoke;
  v40 = &unk_278F63A88;
  v42 = &v43;
  v8 = v7;
  v41 = v8;
  [targetCopy ping:&v37];
  v9 = dispatch_time(0, 30000000000);
  v10 = dispatch_semaphore_wait(v8, v9);
  if (v10)
  {
    v11 = Log_1(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(DEDaemonHelper *)v11 generateSandboxExtensionWithDestinationDir:v12 pingTarget:v13, v14, v15, v16, v17, v18];
    }

LABEL_4:
    v19 = 0;
    goto LABEL_5;
  }

  if (!*(v44 + 6))
  {
    v11 = Log_1(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(DEDaemonHelper *)v11 generateSandboxExtensionWithDestinationDir:v30 pingTarget:v31, v32, v33, v34, v35, v36];
    }

    goto LABEL_4;
  }

  v21 = [dirCopy generateSandboxExtensionForProcess:{v37, v38, v39, v40}];
  v11 = v21;
  if (!v21 || (v21 = [v21 length]) == 0)
  {
    v22 = Log_1(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(DEDaemonHelper *)v22 generateSandboxExtensionWithDestinationDir:v23 pingTarget:v24, v25, v26, v27, v28, v29];
    }

    goto LABEL_4;
  }

  v11 = v11;
  v19 = v11;
LABEL_5:

  _Block_object_dispose(&v43, 8);

  return v19;
}

@end