@interface IXPromisedTransferToPath
- (BOOL)_doInitWithError:(id *)error;
- (BOOL)shouldCopy;
- (BOOL)tryDeltaCopy;
- (IXPromisedTransferToPath)initWithCoder:(id)coder;
- (IXPromisedTransferToPath)initWithName:(id)name client:(unint64_t)client diskSpaceNeeded:(unint64_t)needed;
- (IXPromisedTransferToPath)initWithName:(id)name client:(unint64_t)client diskSpaceNeeded:(unint64_t)needed location:(id)location;
- (IXPromisedTransferToPath)initWithName:(id)name client:(unint64_t)client transferPath:(id)path diskSpaceNeeded:(unint64_t)needed;
- (IXPromisedTransferToPath)initWithName:(id)name client:(unint64_t)client transferPath:(id)path diskSpaceNeeded:(unint64_t)needed location:(id)location;
- (IXPromisedTransferToPath)initWithName:(id)name client:(unint64_t)client transferPath:(id)path diskSpaceNeeded:(unint64_t)needed location:(id)location error:(id *)error;
- (IXPromisedTransferToPath)initWithSeed:(id)seed;
- (NSURL)transferPath;
- (void)encodeWithCoder:(id)coder;
- (void)setComplete:(BOOL)complete;
- (void)setShouldCopy:(BOOL)copy;
- (void)setTransferPath:(id)path;
- (void)setTryDeltaCopy:(BOOL)copy;
@end

@implementation IXPromisedTransferToPath

- (IXPromisedTransferToPath)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = IXPromisedTransferToPath;
  return [(IXOwnedDataPromise *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = IXPromisedTransferToPath;
  [(IXDataPromise *)&v3 encodeWithCoder:coder];
}

- (BOOL)_doInitWithError:(id *)error
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__3;
  v16 = __Block_byref_object_dispose__3;
  v17 = 0;
  v5 = +[IXServerConnection sharedConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__IXPromisedTransferToPath__doInitWithError___block_invoke;
  v11[3] = &unk_1E85C5560;
  v11[4] = &v12;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v11];

  if (v6)
  {
    seed = [(IXDataPromise *)self seed];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45__IXPromisedTransferToPath__doInitWithError___block_invoke_3;
    v10[3] = &unk_1E85C6090;
    v10[4] = self;
    v10[5] = &v12;
    v10[6] = &v18;
    [v6 _remote_createTransferToPathDataPromiseWithSeed:seed completion:v10];
  }

  v8 = *(v19 + 24);
  if (error && (v19[3] & 1) == 0)
  {
    *error = v13[5];
    v8 = *(v19 + 24);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
  return v8 & 1;
}

void __45__IXPromisedTransferToPath__doInitWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[IXPromisedTransferToPath _doInitWithError:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v7, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __45__IXPromisedTransferToPath__doInitWithError___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[IXPromisedTransferToPath _doInitWithError:]_block_invoke";
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Failed tell daemon to set up transfer to path promise: %@", &v8, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    [*(a1 + 32) _updateInitWithSeed:a2 notifyDaemon:0];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (IXPromisedTransferToPath)initWithName:(id)name client:(unint64_t)client transferPath:(id)path diskSpaceNeeded:(unint64_t)needed location:(id)location error:(id *)error
{
  pathCopy = path;
  v20.receiver = self;
  v20.super_class = IXPromisedTransferToPath;
  v15 = [(IXOwnedDataPromise *)&v20 initWithName:name client:client diskSpaceNeeded:needed location:location];
  v16 = v15;
  if (v15 && (-[IXDataPromise seed](v15, "seed"), v17 = objc_claimAutoreleasedReturnValue(), [v17 setTransferPath:pathCopy], v17, !-[IXPromisedTransferToPath _doInitWithError:](v16, "_doInitWithError:", error)))
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  return v18;
}

- (IXPromisedTransferToPath)initWithName:(id)name client:(unint64_t)client transferPath:(id)path diskSpaceNeeded:(unint64_t)needed
{
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = IXPromisedTransferToPath;
  v11 = [(IXOwnedDataPromise *)&v16 initWithName:name client:client diskSpaceNeeded:needed];
  v12 = v11;
  if (!v11 || (-[IXDataPromise seed](v11, "seed"), v13 = objc_claimAutoreleasedReturnValue(), [v13 setTransferPath:pathCopy], v13, v14 = 0, -[IXPromisedTransferToPath _doInitWithError:](v12, "_doInitWithError:", 0)))
  {
    v14 = v12;
  }

  return v14;
}

- (IXPromisedTransferToPath)initWithName:(id)name client:(unint64_t)client transferPath:(id)path diskSpaceNeeded:(unint64_t)needed location:(id)location
{
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = IXPromisedTransferToPath;
  v13 = [(IXOwnedDataPromise *)&v18 initWithName:name client:client diskSpaceNeeded:needed location:location];
  v14 = v13;
  if (!v13 || (-[IXDataPromise seed](v13, "seed"), v15 = objc_claimAutoreleasedReturnValue(), [v15 setTransferPath:pathCopy], v15, v16 = 0, -[IXPromisedTransferToPath _doInitWithError:](v14, "_doInitWithError:", 0)))
  {
    v16 = v14;
  }

  return v16;
}

- (IXPromisedTransferToPath)initWithName:(id)name client:(unint64_t)client diskSpaceNeeded:(unint64_t)needed location:(id)location
{
  v10.receiver = self;
  v10.super_class = IXPromisedTransferToPath;
  v6 = [(IXOwnedDataPromise *)&v10 initWithName:name client:client diskSpaceNeeded:needed location:location];
  v7 = v6;
  if (!v6 || (v8 = 0, [(IXPromisedTransferToPath *)v6 _doInitWithError:0]))
  {
    v8 = v7;
  }

  return v8;
}

- (IXPromisedTransferToPath)initWithName:(id)name client:(unint64_t)client diskSpaceNeeded:(unint64_t)needed
{
  v9.receiver = self;
  v9.super_class = IXPromisedTransferToPath;
  v5 = [(IXOwnedDataPromise *)&v9 initWithName:name client:client diskSpaceNeeded:needed];
  v6 = v5;
  if (!v5 || (v7 = 0, [(IXPromisedTransferToPath *)v5 _doInitWithError:0]))
  {
    v7 = v6;
  }

  return v7;
}

- (NSURL)transferPath
{
  seed = [(IXDataPromise *)self seed];
  transferPath = [seed transferPath];

  return transferPath;
}

- (void)setTransferPath:(id)path
{
  pathCopy = path;
  v5 = +[IXServerConnection sharedConnection];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_1];
  uniqueIdentifier = [(IXDataPromise *)self uniqueIdentifier];
  [v6 _remote_IXSPromisedTransferToPath:uniqueIdentifier setTransferPath:pathCopy];

  seed = [(IXDataPromise *)self seed];
  [seed setTransferPath:pathCopy];
}

void __44__IXPromisedTransferToPath_setTransferPath___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[IXPromisedTransferToPath setTransferPath:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: Remote object proxy signaled error while setting transfer path: %@", &v4, 0x16u);
  }
}

- (BOOL)shouldCopy
{
  seed = [(IXDataPromise *)self seed];
  shouldCopy = [seed shouldCopy];

  return shouldCopy;
}

- (void)setShouldCopy:(BOOL)copy
{
  copyCopy = copy;
  v5 = +[IXServerConnection sharedConnection];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_10];
  uniqueIdentifier = [(IXDataPromise *)self uniqueIdentifier];
  [v6 _remote_IXSPromisedTransferToPath:uniqueIdentifier setShouldCopy:copyCopy];

  seed = [(IXDataPromise *)self seed];
  [seed setShouldCopy:copyCopy];
}

void __42__IXPromisedTransferToPath_setShouldCopy___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[IXPromisedTransferToPath setShouldCopy:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: Remote object proxy signaled error while setting shouldCopy: %@", &v4, 0x16u);
  }
}

- (BOOL)tryDeltaCopy
{
  seed = [(IXDataPromise *)self seed];
  tryDeltaCopy = [seed tryDeltaCopy];

  return tryDeltaCopy;
}

- (void)setTryDeltaCopy:(BOOL)copy
{
  copyCopy = copy;
  v5 = +[IXServerConnection sharedConnection];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_12];
  uniqueIdentifier = [(IXDataPromise *)self uniqueIdentifier];
  [v6 _remote_IXSPromisedTransferToPath:uniqueIdentifier setTryDeltaCopy:copyCopy];

  seed = [(IXDataPromise *)self seed];
  [seed setTryDeltaCopy:copyCopy];
}

void __44__IXPromisedTransferToPath_setTryDeltaCopy___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[IXPromisedTransferToPath setTryDeltaCopy:]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_1DA47A000, v3, OS_LOG_TYPE_DEFAULT, "%s: Remote object proxy signaled error while setting tryDeltaCopy: %@", &v4, 0x16u);
  }
}

- (void)setComplete:(BOOL)complete
{
  completeCopy = complete;
  v59 = *MEMORY[0x1E69E9840];
  if (!complete)
  {
LABEL_24:
    v42.receiver = self;
    v42.super_class = IXPromisedTransferToPath;
    [(IXDataPromise *)&v42 setComplete:completeCopy];
    return;
  }

  date = [MEMORY[0x1E695DF00] date];
  v6 = +[IXFileManager defaultManager];
  stagingBaseDir = [(IXOwnedDataPromise *)self stagingBaseDir];
  transferPath = [(IXPromisedTransferToPath *)self transferPath];
  if (!transferPath)
  {
    v15 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [IXPromisedTransferToPath setComplete:v15];
    }

    v17 = _CreateError("[IXPromisedTransferToPath setComplete:]", 306, @"IXErrorDomain", 4uLL, 0, 0, @"transferPath was not set, but must be set before complete=YES can be set", v16, v38);
    [(IXDataPromise *)self cancelForReason:v17 client:15 error:0];

    goto LABEL_35;
  }

  v9 = transferPath;
  lastPathComponent = [transferPath lastPathComponent];
  v11 = [stagingBaseDir URLByAppendingPathComponent:lastPathComponent isDirectory:0];

  v46 = 0;
  LODWORD(lastPathComponent) = [(IXOwnedDataPromise *)self consumeSandboxExtensionWithError:&v46];
  v12 = v46;
  if (lastPathComponent)
  {
    shouldCopy = [(IXPromisedTransferToPath *)self shouldCopy];
    v14 = [v9 isEqual:v11];
    v41 = v6;
    if (shouldCopy)
    {
      if (v14)
      {
        v40 = date;
LABEL_19:
        [(IXOwnedDataPromise *)self setStagedPath:v11];
        date2 = [MEMORY[0x1E695DF00] date];
        shouldCopy2 = [(IXPromisedTransferToPath *)self shouldCopy];
        v27 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = "Move";
          if (shouldCopy2)
          {
            v28 = "Copy";
          }

          v39 = v28;
          path = [v9 path];
          path2 = [v11 path];
          [date2 timeIntervalSinceDate:v40];
          *buf = 136316418;
          v48 = "[IXPromisedTransferToPath setComplete:]";
          v49 = 2112;
          selfCopy = self;
          v51 = 2080;
          v52 = v39;
          v53 = 2112;
          v54 = path;
          v55 = 2112;
          v56 = path2;
          v57 = 2048;
          v58 = v31;
          _os_log_impl(&dword_1DA47A000, v27, OS_LOG_TYPE_DEFAULT, "%s: %@ %s operation from %@ to %@ took %f seconds", buf, 0x3Eu);
        }

        [(IXOwnedDataPromise *)self releaseSandboxExtension];
        goto LABEL_24;
      }

      v45 = v12;
      v18 = [v6 copyItemAtURL:v9 toURL:v11 error:&v45];
      v19 = v45;

      if (v18)
      {
        v40 = date;
        goto LABEL_18;
      }

      v32 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      path3 = [v9 path];
      path4 = [v11 path];
      *buf = 136315906;
      v48 = "[IXPromisedTransferToPath setComplete:]";
      v49 = 2112;
      selfCopy = path3;
      v51 = 2112;
      v52 = path4;
      v53 = 2112;
      v54 = v19;
      v35 = "%s: Failed to copy %@ to %@ : %@";
      goto LABEL_29;
    }

    if (v14)
    {
      v40 = date;
    }

    else
    {
      v44 = v12;
      v20 = [v6 moveItemAtURL:v9 toURL:v11 error:&v44];
      v19 = v44;

      if ((v20 & 1) == 0)
      {
        v32 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
LABEL_33:

          v12 = v19;
          v6 = v41;
          goto LABEL_34;
        }

        path3 = [v9 path];
        path4 = [v11 path];
        *buf = 136315906;
        v48 = "[IXPromisedTransferToPath setComplete:]";
        v49 = 2112;
        selfCopy = path3;
        v51 = 2112;
        v52 = path4;
        v53 = 2112;
        v54 = v19;
        v35 = "%s: Failed to move %@ to %@ : %@";
LABEL_29:
        _os_log_impl(&dword_1DA47A000, v32, OS_LOG_TYPE_DEFAULT, v35, buf, 0x2Au);

        goto LABEL_33;
      }

      v40 = date;
      v12 = v19;
    }

    v21 = getuid();
    v22 = +[IXGlobalConfiguration sharedInstance];
    daemonUID = [v22 daemonUID];

    if (v21 == daemonUID)
    {
      goto LABEL_19;
    }

    v43 = v12;
    v24 = [v41 copyACLFrom:stagingBaseDir toAllChildrenOfPath:v11 error:&v43];
    v19 = v43;

    if (v24)
    {
LABEL_18:
      v12 = v19;
      goto LABEL_19;
    }

    v32 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      path5 = [stagingBaseDir path];
      path6 = [v11 path];
      *buf = 136315906;
      v48 = "[IXPromisedTransferToPath setComplete:]";
      v49 = 2112;
      selfCopy = path5;
      v51 = 2112;
      v52 = path6;
      v53 = 2112;
      v54 = v19;
      _os_log_impl(&dword_1DA47A000, v32, OS_LOG_TYPE_DEFAULT, "%s: Failed to inherit ACLs from %@ to %@ : %@", buf, 0x2Au);
    }

    date = v40;
    goto LABEL_33;
  }

LABEL_34:
  [(IXDataPromise *)self cancelForReason:v12 client:15 error:0];

LABEL_35:
}

- (IXPromisedTransferToPath)initWithSeed:(id)seed
{
  v4.receiver = self;
  v4.super_class = IXPromisedTransferToPath;
  return [(IXOwnedDataPromise *)&v4 initWithSeed:seed];
}

- (void)setComplete:(os_log_t)log .cold.1(os_log_t log)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = 136315394;
  v2 = "[IXPromisedTransferToPath setComplete:]";
  v3 = 2112;
  v4 = 0;
  _os_log_error_impl(&dword_1DA47A000, log, OS_LOG_TYPE_ERROR, "%s: transferPath was not set, but must be set before complete=YES can be set : %@", &v1, 0x16u);
}

@end