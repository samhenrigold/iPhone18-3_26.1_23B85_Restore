@interface TRISandboxExtensionFactory
+ (id)extensionTokenForPath:(id)path extensionClass:(unsigned __int8)class;
@end

@implementation TRISandboxExtensionFactory

+ (id)extensionTokenForPath:(id)path extensionClass:(unsigned __int8)class
{
  classCopy = class;
  v21 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  [pathCopy fileSystemRepresentation];
  v6 = sandbox_extension_issue_file();
  if (!v6)
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v13 = __error();
      v14 = strerror(*v13);
      v15 = *__error();
      v17 = 138543874;
      *v18 = pathCopy;
      *&v18[8] = 2080;
      *&v18[10] = v14;
      v19 = 1024;
      v20 = v15;
      _os_log_fault_impl(&dword_26F567000, v11, OS_LOG_TYPE_FAULT, "failed to issue extension for %{public}@ err %s errno %d", &v17, 0x1Cu);
    }

    goto LABEL_11;
  }

  v7 = v6;
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v6 encoding:4];
  free(v7);
  v9 = TRILogCategory_Server();
  v10 = v9;
  if (!v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v17) = 0;
      _os_log_fault_impl(&dword_26F567000, v10, OS_LOG_TYPE_FAULT, "failed to construct sandbox extension with raw token", &v17, 2u);
    }

    v11 = 0;
LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 67109378;
    *v18 = classCopy;
    *&v18[4] = 2080;
    *&v18[6] = [pathCopy fileSystemRepresentation];
    _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "issuing sandbox extension (of type: %d) for path %s", &v17, 0x12u);
  }

  v11 = v8;
  v12 = v11;
LABEL_12:

  return v12;
}

@end