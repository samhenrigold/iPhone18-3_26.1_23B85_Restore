@interface MCMContainerSchemaActionMoveContents
+ (id)actionIdentifier;
- (BOOL)performWithError:(id *)error;
- (MCMContainerSchemaActionMoveContents)initWithSourcePathArgument:(id)argument destinationPathArgument:(id)pathArgument destFinalPathArgument:(id)finalPathArgument context:(id)context;
- (NSString)description;
@end

@implementation MCMContainerSchemaActionMoveContents

- (BOOL)performWithError:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  path = [(NSURL *)self->_sourceURL path];
  path2 = [(NSURL *)self->_destURL path];
  if ([path isEqualToString:path2])
  {
    v7 = container_log_handle_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v19 = path;
      v20 = 2112;
      v21 = 0;
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "ignoring attempt to move [%@] to itself: %@", buf, 0x16u);
    }

    v8 = 0;
    v9 = 1;
  }

  else
  {
    v10 = self->_sourceURL;
    destURL = self->_destURL;
    v16 = v10;
    v17 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57__MCMContainerSchemaActionMoveContents_performWithError___block_invoke;
    v15[3] = &unk_1E86B10E0;
    v15[4] = self;
    v12 = v10;
    v9 = [(MCMContainerSchemaActionBase *)self fixAndRetryIfPermissionsErrorWithURL:destURL error:&v17 duringBlock:v15];
    v8 = v17;

    if (error && !v9)
    {
      v13 = v8;
      v9 = 0;
      *error = v8;
    }
  }

  return v9;
}

BOOL __57__MCMContainerSchemaActionMoveContents_performWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v36 = a2;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__7315;
  v50 = __Block_byref_object_dispose__7316;
  v51 = 0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v44[4] = &v46;
  v45 = 0;
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __57__MCMContainerSchemaActionMoveContents_performWithError___block_invoke_1;
  v44[3] = &unk_1E86B1090;
  v6 = [v4 fixAndRetryIfPermissionsErrorWithURL:v5 error:&v45 duringBlock:v44];
  v7 = v45;
  v8 = v7;
  if (v6)
  {
    v9 = *(a1 + 32);
    v43 = v8;
    v10 = [v9 makedirAtURL:v36 followTerminalSymlink:1 error:&v43];
    v11 = v43;

    if (v10)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v12 = v47[5];
      v13 = [v12 countByEnumeratingWithState:&v59 objects:v58 count:16];
      if (v13)
      {
        LOBYTE(v14) = 0;
        v35 = *v60;
        obj = v12;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v60 != v35)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v59 + 1) + 8 * i);
            v17 = *(a1 + 40);
            v18 = [v16 lastPathComponent];
            v19 = [v17 URLByAppendingPathComponent:v18 isDirectory:0];

            v20 = [v16 lastPathComponent];
            v21 = [v36 URLByAppendingPathComponent:v20 isDirectory:0];

            v42 = 0;
            v22 = +[MCMFileManager defaultManager];
            v41 = v11;
            LOBYTE(v20) = [v22 itemAtURL:v21 followSymlinks:1 exists:&v42 isDirectory:0 error:&v41];
            v23 = v41;

            if ((v20 & 1) == 0)
            {
              v11 = v23;
LABEL_25:

              v8 = v11;
              v27 = obj;
              goto LABEL_26;
            }

            if (v42 == 1)
            {
              v24 = *(a1 + 32);
              v40 = v23;
              v25 = [v24 backupFileURL:v21 error:&v40];
              v11 = v40;

              v23 = v11;
              if (!v25)
              {
                goto LABEL_25;
              }
            }

            v26 = *(a1 + 32);
            v39 = v23;
            v37[0] = MEMORY[0x1E69E9820];
            v37[1] = 3221225472;
            v37[2] = __57__MCMContainerSchemaActionMoveContents_performWithError___block_invoke_2;
            v37[3] = &unk_1E86B10B8;
            v21 = v21;
            v38 = v21;
            LOBYTE(v26) = [v26 fixAndRetryIfPermissionsErrorWithURL:v19 error:&v39 duringBlock:v37];
            v11 = v39;

            if ((v26 & 1) == 0)
            {
              v28 = container_log_handle_for_category();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                v31 = [v19 path];
                v32 = [v21 path];
                *buf = 138412802;
                v53 = v31;
                v54 = 2112;
                v55 = v32;
                v56 = 2112;
                v57 = v11;
                _os_log_error_impl(&dword_1DF2C3000, v28, OS_LOG_TYPE_ERROR, "failed to move [%@] to [%@]: %@", buf, 0x20u);
              }

              LOBYTE(v14) = 0;
              goto LABEL_25;
            }

            LOBYTE(v14) = 1;
          }

          v12 = obj;
          v13 = [obj countByEnumeratingWithState:&v59 objects:v58 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_18;
    }

    LOBYTE(v14) = 0;
    v8 = v11;
  }

  else
  {
    v27 = [v7 domain];
    if ([v27 isEqualToString:*MEMORY[0x1E696A798]])
    {
      v14 = [v8 code] == 2;

      if (v14)
      {

        v11 = 0;
LABEL_18:
        LOBYTE(v14) = 1;
        goto LABEL_31;
      }
    }

    else
    {
      LOBYTE(v14) = 0;
LABEL_26:
    }
  }

  if (a3 && !v14)
  {
    v29 = v8;
    LOBYTE(v14) = 0;
    *a3 = v8;
  }

  v11 = v8;
LABEL_31:
  _Block_object_dispose(&v46, 8);

  return v14;
}

BOOL __57__MCMContainerSchemaActionMoveContents_performWithError___block_invoke_1(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = +[MCMFileManager defaultManager];
  v7 = [v6 urlsForItemsInDirectoryAtURL:v5 error:a3];

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return *(*(*(a1 + 32) + 8) + 40) != 0;
}

uint64_t __57__MCMContainerSchemaActionMoveContents_performWithError___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
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

- (MCMContainerSchemaActionMoveContents)initWithSourcePathArgument:(id)argument destinationPathArgument:(id)pathArgument destFinalPathArgument:(id)finalPathArgument context:(id)context
{
  v18 = *MEMORY[0x1E69E9840];
  argumentCopy = argument;
  pathArgumentCopy = pathArgument;
  v17.receiver = self;
  v17.super_class = MCMContainerSchemaActionMoveContents;
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

  return @"move-contents";
}

@end