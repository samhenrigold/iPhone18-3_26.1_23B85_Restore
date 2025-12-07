@interface LSServerOpenStagingIOPersonality
- (id)mainSystemContainerURL;
- (id)mainUserContainerURL;
- (id)makeStagingDirectoryNodeInContainer:(id)container error:(id *)error;
- (optional<LaunchServices::StagingDirectoryInfo>)stagingDirectoryInfoForPersonaUniqueString:(SEL)string error:(id)error;
- (optional<unsigned)stagingDirectoryKeyForFileHandle:(id)handle error:(id *)error;
- (optional<unsigned)stagingDirectoryKeyForNode:(id)node error:(id *)error;
@end

@implementation LSServerOpenStagingIOPersonality

- (id)mainUserContainerURL
{
  SharedInstance = __LSDefaultsGetSharedInstance(self, a2);

  return [SharedInstance userContainerURL];
}

- (id)mainSystemContainerURL
{
  SharedInstance = __LSDefaultsGetSharedInstance(self, a2);

  return [SharedInstance systemContainerURL];
}

- (id)makeStagingDirectoryNodeInContainer:(id)container error:(id *)error
{
  v5 = makeStagingDirectoryURLInContainer(container);
  if (v5)
  {
    v10 = 0;
    v6 = [[FSNode alloc] initWithURL:v5 flags:8 error:&v10];
    v7 = v10;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  if (error && !v6)
  {
    v8 = v7;
    *error = v7;
  }

  return v6;
}

- (optional<LaunchServices::StagingDirectoryInfo>)stagingDirectoryInfoForPersonaUniqueString:(SEL)string error:(id)error
{
  v29[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v25 = errorCopy;
  retstr->var0.var0 = 0;
  retstr->var1 = 0;
  container_query_create();
  container_query_set_class();
  [errorCopy UTF8String];
  container_query_set_persona_unique_string();
  container_query_operation_set_flags();
  if (!container_query_get_single_result())
  {
    container_query_get_last_error();
    v16 = container_error_copy_unlocalized_description();
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v16];
    free(v16);
    LODWORD(v16) = container_error_get_posix_errno();
    v28 = @"ContainerErrorDescription";
    v29[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v16, v12, "[LSServerOpenStagingIOPersonality stagingDirectoryInfoForPersonaUniqueString:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenStagingDirectoryManager.mm", 126);
    goto LABEL_20;
  }

  path = container_get_path();
  v9 = path;
  if (path)
  {
    v10 = _LSDefaultLog(path);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [LSServerOpenStagingIOPersonality stagingDirectoryInfoForPersonaUniqueString:v9 error:v10];
    }

    v11 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithFileSystemRepresentation:v9 isDirectory:1 relativeToURL:0];
    v12 = makeStagingDirectoryURLInContainer(v11);
    if (v12)
    {
      v24 = -1;
      v13 = container_copy_sandbox_token();
      if (v13)
      {
        v24 = sandbox_extension_consume();
        if (v24 < 0)
        {
          v17 = __error();
          v18 = *v17;
          v19 = _LSDefaultLog(v17);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            [LSServerOpenStagingIOPersonality stagingDirectoryInfoForPersonaUniqueString:v18 error:v19];
          }

          v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], v18, 0, "[LSServerOpenStagingIOPersonality stagingDirectoryInfoForPersonaUniqueString:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenStagingDirectoryManager.mm", 142);
          free(v13);
          goto LABEL_20;
        }

        free(v13);
      }

      v22 = 0;
      v14 = [[FSNode alloc] initWithURL:v12 flags:8 error:&v22];
      v15 = v22;
      v23 = v14;
      if (v14)
      {
        std::optional<LaunchServices::OpenStaging::StagingDirectoryInfo>::emplace[abi:nn200100]<NSString * {__strong}&,FSNode * {__strong}&,long long &,void>(retstr, &v25, &v23, &v24);
      }

      if (!retstr->var1 && (v24 & 0x8000000000000000) == 0)
      {
        sandbox_extension_release();
      }
    }

    else
    {
      v15 = 0;
    }

LABEL_20:

    goto LABEL_21;
  }

  v26 = *MEMORY[0x1E696A278];
  v27 = @"No path in container";
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 96, v11, "[LSServerOpenStagingIOPersonality stagingDirectoryInfoForPersonaUniqueString:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenStagingDirectoryManager.mm", 158);
LABEL_21:

  if (a5 && !retstr->var1)
  {
    v20 = v15;
    *a5 = v15;
  }

  return result;
}

- (optional<unsigned)stagingDirectoryKeyForNode:(id)node error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  nodeCopy = node;
  v16 = 0;
  v6 = [nodeCopy getFileSystemRepresentation:v17 error:&v16];
  v7 = v16;
  if (v6)
  {
    if (!statfs(v17, &v18))
    {
      v11 = v18.f_fsid.val[0] & 0xFFFFFFFFFFFFFF00;
      v13 = LOBYTE(v18.f_fsid.val[0]);
      v12 = 1;
      goto LABEL_8;
    }

    v8 = __error();
    v9 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], *v8, 0, "[LSServerOpenStagingIOPersonality stagingDirectoryKeyForNode:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenStagingDirectoryManager.mm", 194);

    v7 = v9;
  }

  if (error)
  {
    v10 = v7;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    *error = v7;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

LABEL_8:

  v14.__val_ = v13 | v11;
  v15 = v12;
  result.__engaged_ = v15;
  result.var0 = v14;
  return result;
}

- (optional<unsigned)stagingDirectoryKeyForFileHandle:(id)handle error:(id *)error
{
  v14 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  if (fstatfs([handleCopy fileDescriptor], &v13))
  {
    v6 = __error();
    v7 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], *v6, 0, "[LSServerOpenStagingIOPersonality stagingDirectoryKeyForFileHandle:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenStagingDirectoryManager.mm", 211);
    if (error)
    {
      v7 = v7;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      *error = v7;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    v7 = 0;
    v8 = v13.f_fsid.val[0] & 0xFFFFFFFFFFFFFF00;
    v10 = LOBYTE(v13.f_fsid.val[0]);
    v9 = 1;
  }

  v11.__val_ = v10 | v8;
  v12 = v9;
  result.__engaged_ = v12;
  result.var0 = v11;
  return result;
}

- (void)stagingDirectoryInfoForPersonaUniqueString:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136446467;
  v3 = "[LSServerOpenStagingIOPersonality stagingDirectoryInfoForPersonaUniqueString:error:]";
  v4 = 2081;
  v5 = a1;
  _os_log_debug_impl(&dword_18162D000, a2, OS_LOG_TYPE_DEBUG, "%{public}s: got user container URL %{private}s from containermanagerd", &v2, 0x16u);
}

- (void)stagingDirectoryInfoForPersonaUniqueString:(int)a1 error:(NSObject *)a2 .cold.2(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136446466;
  v3 = "[LSServerOpenStagingIOPersonality stagingDirectoryInfoForPersonaUniqueString:error:]";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "%{public}s: Failed to consume container sandbox token, errno = %{darwin.errno}d", &v2, 0x12u);
}

@end