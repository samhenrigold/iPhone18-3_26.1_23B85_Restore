@interface NSFileHandle(SafariCoreExtras)
+ (id)safari_fileHandleByCreatingFileWithUniqueSubpath:()SafariCoreExtras relativeToFileHandle:options:createMode:error:;
+ (id)safari_fileHandleWithURL:()SafariCoreExtras options:createMode:error:;
+ (void)safari_fileHandleWithSubpath:()SafariCoreExtras relativeToFileHandle:options:createMode:error:;
- (id)safari_fileURL;
@end

@implementation NSFileHandle(SafariCoreExtras)

+ (id)safari_fileHandleWithURL:()SafariCoreExtras options:createMode:error:
{
  v10 = a3;
  if ([v10 isFileURL])
  {
    v11 = open([v10 fileSystemRepresentation], a4, a5);
    if ((v11 & 0x80000000) == 0)
    {
      v12 = [[self alloc] initWithFileDescriptor:v11 closeOnDealloc:1];
      goto LABEL_9;
    }

    if (a6)
    {
      __error();
      path = [v10 path];
      *a6 = _NSErrorWithFilePathAndErrno();
    }
  }

  else if (a6)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A978] code:-1000 userInfo:0];
    *a6 = v12 = 0;
    goto LABEL_9;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

+ (void)safari_fileHandleWithSubpath:()SafariCoreExtras relativeToFileHandle:options:createMode:error:
{
  v12 = a3;
  v13 = a4;
  v14 = openat([v13 fileDescriptor], objc_msgSend(v12, "fileSystemRepresentation"), a5, a6);
  if ((v14 & 0x80000000) != 0)
  {
    if (a7)
    {
      __error();
      safari_fileURL = [v13 safari_fileURL];
      v16 = [safari_fileURL URLByAppendingPathComponent:v12];

      *a7 = _NSErrorWithFilePathAndErrno();

      a7 = 0;
    }
  }

  else
  {
    a7 = [[self alloc] initWithFileDescriptor:v14 closeOnDealloc:1];
  }

  return a7;
}

+ (id)safari_fileHandleByCreatingFileWithUniqueSubpath:()SafariCoreExtras relativeToFileHandle:options:createMode:error:
{
  v32 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = [[WBSUniqueFilenameEnumerator alloc] initWithFilename:v12];
  v15 = [(WBSUniqueFilenameEnumerator *)v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v15)
  {
    v21 = 0;
    goto LABEL_17;
  }

  v16 = v15;
  v25 = a7;
  v17 = *v28;
  v26 = v12;
  while (2)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v28 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v27 + 1) + 8 * i);
      v20 = openat([v13 fileDescriptor], objc_msgSend(v19, "fileSystemRepresentation"), a5 | 0xA00, a6);
      if (v20 > 0)
      {
        v21 = [[self alloc] initWithFileDescriptor:v20 closeOnDealloc:1];
LABEL_16:
        v12 = v26;
        goto LABEL_17;
      }

      if (*__error() != 17)
      {
        if (v25)
        {
          safari_fileURL = [v13 safari_fileURL];
          v23 = [safari_fileURL URLByAppendingPathComponent:v19];

          *v25 = _NSErrorWithFilePathAndErrno();
        }

        v21 = 0;
        goto LABEL_16;
      }
    }

    v16 = [(WBSUniqueFilenameEnumerator *)v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
    v21 = 0;
    v12 = v26;
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_17:

  return v21;
}

- (id)safari_fileURL
{
  v8 = *MEMORY[0x1E69E9840];
  fileDescriptor = [self fileDescriptor];
  bzero(v7, 0x402uLL);
  if (realpath_np())
  {
    v2 = 0;
  }

  else
  {
    memset(&v6, 0, sizeof(v6));
    if (fstat(fileDescriptor, &v6))
    {
      v3 = 0;
    }

    else
    {
      v3 = (v6.st_mode & 0xF000) == 0x4000;
    }

    v4 = v3;
    v2 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v7 isDirectory:v4 relativeToURL:0];
  }

  return v2;
}

@end