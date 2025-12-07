@interface MCMContainerSchemaActionMove
+ (id)actionIdentifier;
- (BOOL)performWithError:(id *)error;
- (MCMContainerSchemaActionMove)initWithSourcePathArgument:(id)argument destinationPathArgument:(id)pathArgument destFinalPathArgument:(id)finalPathArgument context:(id)context;
- (NSString)description;
@end

@implementation MCMContainerSchemaActionMove

- (BOOL)performWithError:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  path = [(NSURL *)self->_sourceURL path];
  path2 = [(NSURL *)self->_destURL path];
  if ([path isEqualToString:path2])
  {
    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = path;
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "ignoring attempt to move [%@] to itself", buf, 0xCu);
    }

    v8 = 0;
    goto LABEL_6;
  }

  v9 = self->_sourceURL;
  destURL = self->_destURL;
  v22 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __49__MCMContainerSchemaActionMove_performWithError___block_invoke;
  v18[3] = &unk_1E86B06E0;
  v18[4] = self;
  v19 = v9;
  v11 = path2;
  v20 = v11;
  v12 = path;
  v21 = v12;
  v13 = v9;
  LOBYTE(destURL) = [(MCMContainerSchemaActionBase *)self fixAndRetryIfPermissionsErrorWithURL:destURL error:&v22 duringBlock:v18];
  v8 = v22;

  if (destURL)
  {
LABEL_6:
    v14 = 1;
    goto LABEL_7;
  }

  v16 = container_log_handle_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v24 = v12;
    v25 = 2112;
    v26 = v11;
    v27 = 2112;
    v28 = v8;
    _os_log_error_impl(&dword_1DF2C3000, v16, OS_LOG_TYPE_ERROR, "failed to move [%@] to [%@]: %@", buf, 0x20u);
  }

  if (error)
  {
    v17 = v8;
    v14 = 0;
    *error = v8;
  }

  else
  {
    v14 = 0;
  }

LABEL_7:

  return v14;
}

uint64_t __49__MCMContainerSchemaActionMove_performWithError___block_invoke(void *a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__9003;
  v42 = __Block_byref_object_dispose__9004;
  v43 = 0;
  v6 = [v5 URLByDeletingLastPathComponent];
  v7 = a1[4];
  v37 = 0;
  v8 = [v7 makedirAtURL:v6 followTerminalSymlink:1 error:&v37];
  v9 = v37;
  if ((v8 & 1) == 0)
  {
    goto LABEL_19;
  }

  v10 = a1[4];
  v11 = a1[5];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __49__MCMContainerSchemaActionMove_performWithError___block_invoke_1;
  v35[3] = &unk_1E86B1090;
  v35[4] = &v38;
  v36 = v9;
  [v10 fixAndRetryIfPermissionsErrorWithURL:v11 error:&v36 duringBlock:v35];
  v12 = v36;

  v13 = v39[5];
  if (!v13)
  {
    v15 = [v12 domain];
    if ([v15 isEqualToString:*MEMORY[0x1E696A798]])
    {
      v16 = [v12 code] == 2;

      if (v16)
      {

        v17 = container_log_handle_for_category();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v30 = a1[6];
          v29 = a1[7];
          *buf = 138412546;
          v45 = v29;
          v46 = 2112;
          v47 = v30;
          _os_log_debug_impl(&dword_1DF2C3000, v17, OS_LOG_TYPE_DEBUG, "not moving: [%@] because it does not exist; leaving destination [%@]", buf, 0x16u);
        }

        v12 = 0;
        goto LABEL_12;
      }
    }

    else
    {
    }

    goto LABEL_14;
  }

  if (![v13 isEqualToString:a1[6]])
  {
LABEL_14:
    v19 = +[MCMFileManager defaultManager];
    v20 = [v19 itemExistsAtURL:v5];

    if (!v20)
    {
      goto LABEL_17;
    }

    v21 = a1[4];
    v34 = v12;
    v22 = [v21 backupFileURL:v5 error:&v34];
    v9 = v34;

    if (v22)
    {
      v12 = v9;
LABEL_17:
      v24 = a1[4];
      v23 = a1[5];
      v33 = v12;
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __49__MCMContainerSchemaActionMove_performWithError___block_invoke_3;
      v31[3] = &unk_1E86B10B8;
      v32 = v5;
      v18 = [v24 fixAndRetryIfPermissionsErrorWithURL:v23 error:&v33 duringBlock:v31];
      v9 = v33;

      if (!a3)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

LABEL_19:
    v18 = 0;
    if (!a3)
    {
LABEL_22:
      v12 = v9;
      goto LABEL_23;
    }

LABEL_20:
    if ((v18 & 1) == 0)
    {
      v25 = v9;
      v18 = 0;
      *a3 = v9;
    }

    goto LABEL_22;
  }

  v14 = container_log_handle_for_category();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v28 = a1[6];
    v27 = a1[7];
    *buf = 138412546;
    v45 = v27;
    v46 = 2112;
    v47 = v28;
    _os_log_debug_impl(&dword_1DF2C3000, v14, OS_LOG_TYPE_DEBUG, "not moving: [%@] because it is a symlink to [%@]", buf, 0x16u);
  }

LABEL_12:
  v18 = 1;
LABEL_23:
  _Block_object_dispose(&v38, 8);

  return v18;
}

BOOL __49__MCMContainerSchemaActionMove_performWithError___block_invoke_1(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = +[MCMFileManager defaultManager];
  v7 = [v6 targetOfSymbolicLinkAtURL:v5 error:a3];

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return *(*(*(a1 + 32) + 8) + 40) != 0;
}

uint64_t __49__MCMContainerSchemaActionMove_performWithError___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = +[MCMFileManager defaultManager];
  v7 = [v6 moveItemIfExistsAtURL:v5 toURL:*(a1 + 32) error:a3];

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

- (MCMContainerSchemaActionMove)initWithSourcePathArgument:(id)argument destinationPathArgument:(id)pathArgument destFinalPathArgument:(id)finalPathArgument context:(id)context
{
  v18 = *MEMORY[0x1E69E9840];
  argumentCopy = argument;
  pathArgumentCopy = pathArgument;
  v17.receiver = self;
  v17.super_class = MCMContainerSchemaActionMove;
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

  return @"move";
}

@end