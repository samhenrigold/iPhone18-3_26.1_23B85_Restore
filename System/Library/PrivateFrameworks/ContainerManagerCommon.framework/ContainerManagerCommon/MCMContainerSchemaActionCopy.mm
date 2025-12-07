@interface MCMContainerSchemaActionCopy
+ (id)actionIdentifier;
- (BOOL)performWithError:(id *)error;
- (MCMContainerSchemaActionCopy)initWithSourcePathArgument:(id)argument destinationPathArgument:(id)pathArgument destFinalPathArgument:(id)finalPathArgument context:(id)context;
- (NSString)description;
@end

@implementation MCMContainerSchemaActionCopy

- (BOOL)performWithError:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  path = [(NSURL *)self->_sourceURL path];
  path2 = [(NSURL *)self->_destURL path];
  if ([path isEqualToString:path2])
  {
    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = path;
      v21 = 2114;
      v22 = 0;
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "ignoring attempt to copy [%@] to itself: %{public}@", buf, 0x16u);
    }

    v8 = 0;
    goto LABEL_6;
  }

  v9 = self->_sourceURL;
  destURL = self->_destURL;
  v17 = v9;
  v18 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __49__MCMContainerSchemaActionCopy_performWithError___block_invoke;
  v16[3] = &unk_1E86B10E0;
  v16[4] = self;
  v11 = v9;
  LOBYTE(destURL) = [(MCMContainerSchemaActionBase *)self fixAndRetryIfPermissionsErrorWithURL:destURL error:&v18 duringBlock:v16];
  v8 = v18;

  if (destURL)
  {
LABEL_6:
    v12 = 1;
    goto LABEL_7;
  }

  v14 = container_log_handle_for_category();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v20 = path;
    v21 = 2112;
    v22 = path2;
    v23 = 2114;
    v24 = v8;
    _os_log_error_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_ERROR, "failed to copy [%@] to [%@]: %{public}@", buf, 0x20u);
  }

  if (error)
  {
    v15 = v8;
    v12 = 0;
    *error = v8;
  }

  else
  {
    v12 = 0;
  }

LABEL_7:

  return v12;
}

uint64_t __49__MCMContainerSchemaActionCopy_performWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 URLByDeletingLastPathComponent];
  v7 = *(a1 + 32);
  v26[0] = 0;
  v8 = [v7 makedirAtURL:v6 followTerminalSymlink:1 error:v26];
  v9 = v26[0];
  if (v8)
  {
    v25 = 0;
    v10 = +[MCMFileManager defaultManager];
    v24 = v9;
    v11 = [v10 itemAtURL:v5 followSymlinks:1 exists:&v25 isDirectory:0 error:&v24];
    v12 = v24;

    if (!v11)
    {
      v17 = 0;
      v9 = v12;
      if (!a3)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    if (v25 != 1)
    {
      goto LABEL_6;
    }

    v13 = *(a1 + 32);
    v23 = v12;
    v14 = [v13 backupFileURL:v5 error:&v23];
    v9 = v23;

    if (v14)
    {
      v12 = v9;
LABEL_6:
      v16 = *(a1 + 32);
      v15 = *(a1 + 40);
      v22 = v12;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __49__MCMContainerSchemaActionCopy_performWithError___block_invoke_2;
      v20[3] = &unk_1E86B10B8;
      v21 = v5;
      v17 = [v16 fixAndRetryIfPermissionsErrorWithURL:v15 error:&v22 duringBlock:v20];
      v9 = v22;

      if (!a3)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }
  }

  v17 = 0;
  if (!a3)
  {
    goto LABEL_13;
  }

LABEL_11:
  if ((v17 & 1) == 0)
  {
    v18 = v9;
    *a3 = v9;
  }

LABEL_13:

  return v17;
}

uint64_t __49__MCMContainerSchemaActionCopy_performWithError___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = +[MCMFileManager defaultManager];
  v7 = [v6 copyItemIfExistsAtURL:v5 toURL:*(a1 + 32) error:a3];

  return v7;
}

- (NSString)description
{
  actionIdentifier = [objc_opt_class() actionIdentifier];
  path = [(NSURL *)self->_sourceURL path];
  path2 = [(NSURL *)self->_destURL path];
  v6 = [actionIdentifier stringByAppendingFormat:@" [%@] → [%@]", path, path2];

  return v6;
}

- (MCMContainerSchemaActionCopy)initWithSourcePathArgument:(id)argument destinationPathArgument:(id)pathArgument destFinalPathArgument:(id)finalPathArgument context:(id)context
{
  v18 = *MEMORY[0x1E69E9840];
  argumentCopy = argument;
  pathArgumentCopy = pathArgument;
  v17.receiver = self;
  v17.super_class = MCMContainerSchemaActionCopy;
  v11 = [(MCMContainerSchemaActionBase *)&v17 initWithContext:context];
  if (v11)
  {
    fileURL = [argumentCopy fileURL];
    sourceURL = v11->_sourceURL;
    v11->_sourceURL = fileURL;

    fileURL2 = [pathArgumentCopy fileURL];
    destURL = v11->_destURL;
    v11->_destURL = fileURL2;

    if (!v11->_sourceURL || !v11->_destURL)
    {

      v11 = 0;
    }
  }

  return v11;
}

+ (id)actionIdentifier
{

  return @"copy";
}

@end