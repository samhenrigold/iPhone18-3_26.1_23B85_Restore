@interface WBSFileLockFactoryPOSIX
- (id)coordinationLockURL:(id)l;
- (id)lockURL:(id)l error:(id *)error;
@end

@implementation WBSFileLockFactoryPOSIX

- (id)coordinationLockURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  v5 = [scheme isEqualToString:@"file"];

  if (v5)
  {
    path = [lCopy path];
    v9 = [path length];

    if (v9)
    {
      v10 = MEMORY[0x1E695DFF8];
      absoluteString = [lCopy absoluteString];
      v12 = [absoluteString stringByAppendingString:@"-lock"];
      v13 = [v10 URLWithString:v12];

      goto LABEL_7;
    }
  }

  else
  {
    v14 = WBS_LOG_CHANNEL_PREFIXHistory(v6, v7);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(WBSFileLockFactoryPOSIX *)lCopy coordinationLockURL:v14, v15, v16, v17, v18, v19, v20];
    }
  }

  v13 = 0;
LABEL_7:

  return v13;
}

- (id)lockURL:(id)l error:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  lCopy = l;
  scheme = [lCopy scheme];
  v8 = [scheme isEqualToString:@"file"];

  if ((v8 & 1) == 0)
  {
    if (error)
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
      *error = v9;
    }

    v18 = WBS_LOG_CHANNEL_PREFIXHistory(v9, v10);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(WBSFileLockFactoryPOSIX *)lCopy coordinationLockURL:v18, v19, v20, v21, v22, v23, v24];
    }

    goto LABEL_14;
  }

  v11 = [(WBSFileLockFactoryPOSIX *)self coordinationLockURL:lCopy];
  fileSystemRepresentation = [v11 fileSystemRepresentation];

  if (!fileSystemRepresentation)
  {
    if (error)
    {
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
      *error = v13;
    }

    v25 = WBS_LOG_CHANNEL_PREFIXHistory(v13, v14);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [(WBSFileLockFactoryPOSIX *)lCopy lockURL:v25 error:v26, v27, v28, v29, v30, v31];
    }

    goto LABEL_14;
  }

  v15 = open(fileSystemRepresentation, 512, 438);
  if (v15 != -1)
  {
    v16 = v15;
    if (flock(v15, 6) != -1)
    {
      v17 = [[WBSFileLockPOSIX alloc] initWithFileDescriptor:v16];
      goto LABEL_15;
    }

    v40 = *__error();
    v41 = close(v16);
    v43 = WBS_LOG_CHANNEL_PREFIXHistory(v41, v42);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = v43;
      v45 = *__error();
      *buf = 136380931;
      v47 = fileSystemRepresentation;
      v48 = 1024;
      v49 = v45;
      _os_log_impl(&dword_1BB6F3000, v44, OS_LOG_TYPE_INFO, "Failed to acquire coordination lock at %{private}s: %{errno}d", buf, 0x12u);
    }

    if (error)
    {
      v38 = MEMORY[0x1E696ABC0];
      v39 = *MEMORY[0x1E696A798];
      v37 = v40;
      goto LABEL_26;
    }

LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v33 = __error();
  v34 = *v33;
  v36 = WBS_LOG_CHANNEL_PREFIXHistory(v33, v35);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    *buf = 136380931;
    v47 = fileSystemRepresentation;
    v48 = 1024;
    v49 = v34;
    _os_log_impl(&dword_1BB6F3000, v36, OS_LOG_TYPE_INFO, "Failed to open coordination lock at %{private}s: %{errno}d", buf, 0x12u);
  }

  if (!error)
  {
    goto LABEL_14;
  }

  v37 = v34;
  v38 = MEMORY[0x1E696ABC0];
  v39 = *MEMORY[0x1E696A798];
LABEL_26:
  [v38 errorWithDomain:v39 code:v37 userInfo:0];
  *error = v17 = 0;
LABEL_15:

  return v17;
}

- (void)coordinationLockURL:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138477827;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_6(&dword_1BB6F3000, a2, a3, "Unsupported scheme: %{private}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)lockURL:(uint64_t)a3 error:(uint64_t)a4 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138477827;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_6(&dword_1BB6F3000, a2, a3, "Invalid URL: %{private}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end