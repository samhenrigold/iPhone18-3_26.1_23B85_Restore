@interface MCMContainerSchemaActionCopyContents
+ (id)actionIdentifier;
- (BOOL)performWithError:(id *)error;
- (MCMContainerSchemaActionCopyContents)initWithSourcePathArgument:(id)argument destinationPathArgument:(id)pathArgument destFinalPathArgument:(id)finalPathArgument context:(id)context;
- (NSString)description;
@end

@implementation MCMContainerSchemaActionCopyContents

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
      _os_log_error_impl(&dword_1DF2C3000, v7, OS_LOG_TYPE_ERROR, "ignoring attempt to copy [%@] to itself: %@", buf, 0x16u);
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
    v15[2] = __57__MCMContainerSchemaActionCopyContents_performWithError___block_invoke;
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

uint64_t __57__MCMContainerSchemaActionCopyContents_performWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v70 = *MEMORY[0x1E69E9840];
  v43 = a2;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__14291;
  v57 = __Block_byref_object_dispose__14292;
  v58 = 0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v51[4] = &v53;
  v52 = 0;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __57__MCMContainerSchemaActionCopyContents_performWithError___block_invoke_1;
  v51[3] = &unk_1E86B1090;
  v6 = [v4 fixAndRetryIfPermissionsErrorWithURL:v5 error:&v52 duringBlock:v51];
  v7 = v52;
  v8 = v7;
  if (v6)
  {
    v9 = *(a1 + 32);
    v50 = v8;
    v10 = [v9 makedirAtURL:v43 followTerminalSymlink:1 error:&v50];
    v11 = v50;

    if (v10)
    {
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v12 = v54[5];
      v13 = [v12 countByEnumeratingWithState:&v66 objects:v65 count:16];
      if (v13)
      {
        v42 = *v67;
        *&v14 = 138412802;
        v39 = v14;
        obj = v12;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v67 != v42)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v66 + 1) + 8 * i);
            v17 = *(a1 + 40);
            v18 = [v16 lastPathComponent];
            v19 = [v17 URLByAppendingPathComponent:v18 isDirectory:0];

            v20 = [v16 lastPathComponent];
            v21 = [v43 URLByAppendingPathComponent:v20 isDirectory:0];

            v49 = 0;
            v22 = +[MCMFileManager defaultManager];
            v48 = v11;
            LOBYTE(v17) = [v22 itemAtURL:v21 followSymlinks:1 exists:&v49 isDirectory:0 error:&v48];
            v23 = v48;

            if ((v17 & 1) == 0)
            {
              v11 = v23;
LABEL_27:

              v32 = obj;
              goto LABEL_28;
            }

            if (v49 == 1)
            {
              v24 = *(a1 + 32);
              v47 = v23;
              v25 = [v24 backupFileURL:v21 error:&v47];
              v11 = v47;

              if (!v25)
              {
                goto LABEL_27;
              }
            }

            else
            {
              v11 = v23;
            }

            v26 = *(a1 + 32);
            v46 = 0;
            v44[0] = MEMORY[0x1E69E9820];
            v44[1] = 3221225472;
            v44[2] = __57__MCMContainerSchemaActionCopyContents_performWithError___block_invoke_2;
            v44[3] = &unk_1E86B10B8;
            v27 = v21;
            v45 = v27;
            LOBYTE(v26) = [v26 fixAndRetryIfPermissionsErrorWithURL:v19 error:&v46 duringBlock:v44];
            v28 = v46;
            if ((v26 & 1) == 0)
            {
              v29 = container_log_handle_for_category();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                v30 = [v19 path];
                v31 = [v27 path];
                *buf = v39;
                v60 = v30;
                v61 = 2112;
                v62 = v31;
                v63 = 2112;
                v64 = v28;
                _os_log_error_impl(&dword_1DF2C3000, v29, OS_LOG_TYPE_ERROR, "failed to copy [%@] to [%@]: %@", buf, 0x20u);
              }
            }
          }

          v12 = obj;
          v13 = [obj countByEnumeratingWithState:&v66 objects:v65 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_23;
    }
  }

  else
  {
    v32 = [v7 domain];
    if ([v32 isEqualToString:*MEMORY[0x1E696A798]])
    {
      v33 = [v8 code];
      v34 = v32;
      v35 = v33 == 2;

      if (v35)
      {

        v11 = 0;
LABEL_23:
        v36 = 1;
        goto LABEL_32;
      }

      v11 = v8;
    }

    else
    {
      v11 = v8;
LABEL_28:
    }
  }

  if (a3)
  {
    v37 = v11;
    v36 = 0;
    *a3 = v11;
  }

  else
  {
    v36 = 0;
  }

LABEL_32:

  _Block_object_dispose(&v53, 8);
  return v36;
}

BOOL __57__MCMContainerSchemaActionCopyContents_performWithError___block_invoke_1(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = +[MCMFileManager defaultManager];
  v7 = [v6 urlsForItemsInDirectoryAtURL:v5 error:a3];

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return *(*(*(a1 + 32) + 8) + 40) != 0;
}

uint64_t __57__MCMContainerSchemaActionCopyContents_performWithError___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
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

- (MCMContainerSchemaActionCopyContents)initWithSourcePathArgument:(id)argument destinationPathArgument:(id)pathArgument destFinalPathArgument:(id)finalPathArgument context:(id)context
{
  v18 = *MEMORY[0x1E69E9840];
  argumentCopy = argument;
  pathArgumentCopy = pathArgument;
  v17.receiver = self;
  v17.super_class = MCMContainerSchemaActionCopyContents;
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

  return @"copy-contents";
}

@end