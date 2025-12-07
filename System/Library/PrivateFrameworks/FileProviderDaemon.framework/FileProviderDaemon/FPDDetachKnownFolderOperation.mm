@interface FPDDetachKnownFolderOperation
- (FPDDetachKnownFolderOperation)initWithKnownFolder:(id)folder server:(id)server request:(id)request;
- (void)main;
@end

@implementation FPDDetachKnownFolderOperation

- (FPDDetachKnownFolderOperation)initWithKnownFolder:(id)folder server:(id)server request:(id)request
{
  folderCopy = folder;
  serverCopy = server;
  requestCopy = request;
  v15.receiver = self;
  v15.super_class = FPDDetachKnownFolderOperation;
  v12 = [(FPOperation *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_knownFolders, folder);
    objc_storeStrong(&v13->_server, server);
    objc_storeStrong(&v13->_request, request);
  }

  return v13;
}

- (void)main
{
  v28 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = 304;
  obj = self->_knownFolders;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v24;
    while (2)
    {
      v7 = 0;
      v8 = v5;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v23 + 1) + 8 * v7);
        v22 = 0;
        extensionManager = [(FPDServer *)self->_server extensionManager];
        logicalLocation = [v9 logicalLocation];
        v5 = [extensionManager domainForURL:logicalLocation reason:&v22];

        if (v8 && v5 != v8)
        {
          logicalLocation2 = [v9 logicalLocation];
          v13 = FPProviderNotFoundErrorForURL();
          [(FPOperation *)self finishWithResult:0 error:v13];

          goto LABEL_17;
        }

        ++v7;
        v8 = v5;
      }

      while (v4 != v7);
      v4 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v5 = 0;
  }

  defaultBackend = [v5 defaultBackend];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    defaultBackend2 = [v5 defaultBackend];
    v17 = *(&self->super.super.super.isa + v19);
    request = self->_request;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __37__FPDDetachKnownFolderOperation_main__block_invoke;
    v21[3] = &unk_1E83BDFC8;
    v21[4] = self;
    [defaultBackend2 detachKnownFolders:v17 request:request completionHandler:v21];
  }

  else
  {
    defaultBackend2 = FPNotSupportedError();
    [(FPOperation *)self finishWithResult:0 error:defaultBackend2];
  }

  v8 = v5;
LABEL_17:
}

@end