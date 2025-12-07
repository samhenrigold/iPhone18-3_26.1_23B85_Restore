@interface NSFileManager
@end

@implementation NSFileManager

void __66__NSFileManager_TRIServer__triRemoveNestedEmptyDirectoriesAtPath___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (rmdir([v3 fileSystemRepresentation]) && *__error() != 66)
  {
    v4 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = __error();
      v6 = strerror(*v5);
      v7 = *__error();
      v8 = 138543874;
      v9 = v3;
      v10 = 2080;
      v11 = v6;
      v12 = 1024;
      v13 = v7;
      _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "Failed remove directory %{public}@: %s (%d)", &v8, 0x1Cu);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

@end