@interface NSData
- (BOOL)MI_writeAtomicallyToURL:(id)l withMode:(unsigned __int16)mode owner:(unsigned int)owner group:(unsigned int)group protectionClass:(int)class withBarrier:(BOOL)barrier error:(id *)error;
- (BOOL)MI_writeAtomicallyToURLMatchingCurrentFileMetadata:(id)metadata error:(id *)error;
@end

@implementation NSData

- (BOOL)MI_writeAtomicallyToURL:(id)l withMode:(unsigned __int16)mode owner:(unsigned int)owner group:(unsigned int)group protectionClass:(int)class withBarrier:(BOOL)barrier error:(id *)error
{
  barrierCopy = barrier;
  modeCopy = mode;
  errorCopy2 = error;
  lCopy = l;
  v16 = +[NSFileManager defaultManager];
  v56 = 0;
  v17 = [v16 URLForDirectory:99 inDomain:1 appropriateForURL:lCopy create:1 error:&v56];
  v18 = v56;

  if (!v17)
  {
    v32 = 0;
    v21 = 0;
    if (!error)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  v55 = lCopy;
  v19 = +[NSUUID UUID];
  uUIDString = [v19 UUIDString];
  v21 = [v17 URLByAppendingPathComponent:uUIDString isDirectory:0];

  fileSystemRepresentation = [v21 fileSystemRepresentation];
  v23 = fileSystemRepresentation;
  if (class == -1)
  {
    v24 = open(fileSystemRepresentation, 2818, modeCopy);
    if (v24 < 0)
    {
      v37 = *__error();
      v34 = NSPOSIXErrorDomain;
      v35 = v37;
      v53 = v23;
      strerror(v37);
      v28 = @"open failed for %s : %s";
      v29 = 67;
      goto LABEL_14;
    }
  }

  else
  {
    v24 = open_dprotected_np(fileSystemRepresentation, 2818, class, 0, modeCopy);
    if (v24 < 0)
    {
      v25 = *__error();
      v26 = v25;
      strerror(v25);
      v53 = v23;
      v28 = @"open_dprotected_np failed for %s for class %d : %s";
      v29 = 56;
      v30 = NSPOSIXErrorDomain;
LABEL_5:
      v31 = v26;
LABEL_15:
      _CreateError("[NSData(MobileInstallationAdditions) MI_writeAtomicallyToURL:withMode:owner:group:protectionClass:withBarrier:error:]", v29, v30, v31, 0, 0, v28, v27, v53);
      v38 = LABEL_16:;
      goto LABEL_17;
    }
  }

  if (fchmod(v24, modeCopy))
  {
    v33 = *__error();
    v34 = NSPOSIXErrorDomain;
    v35 = v33;
    strerror(v33);
    v53 = modeCopy;
    v28 = @"Failed to set mode to 0%o for %s : %s";
    v29 = 75;
LABEL_14:
    v30 = v34;
    v31 = v35;
    goto LABEL_15;
  }

  if (fchown(v24, owner, group))
  {
    v36 = *__error();
    v34 = NSPOSIXErrorDomain;
    v35 = v36;
    v53 = v23;
    strerror(v36);
    v28 = @"Failed to set owner for %s : %s";
    v29 = 82;
    goto LABEL_14;
  }

  bytes = [(NSData *)self bytes];
  v42 = [(NSData *)self length];
  v43 = write(v24, bytes, v42);
  if (v43 < 0)
  {
    v46 = *__error();
    v26 = v46;
    strerror(v46);
    v53 = v42;
    v28 = @"Failed to write %lu bytes to %s : %s";
    v29 = 92;
    v30 = NSPOSIXErrorDomain;
    goto LABEL_5;
  }

  if (v43 != v42)
  {
    _CreateError("[NSData(MobileInstallationAdditions) MI_writeAtomicallyToURL:withMode:owner:group:protectionClass:withBarrier:error:]", 96, NSPOSIXErrorDomain, 5, 0, 0, @"write() returned %zd but we expected %lu when writing to %s", v44, v43);
    goto LABEL_16;
  }

  if (barrierCopy)
  {
    if (!fcntl(v24, 85))
    {
      goto LABEL_39;
    }

    v45 = __error();
    if (gLogHandle)
    {
      if (*(gLogHandle + 44) < 3)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    if (!fsync(v24))
    {
      goto LABEL_39;
    }

    v45 = __error();
    if (gLogHandle)
    {
      if (*(gLogHandle + 44) < 3)
      {
        goto LABEL_39;
      }
    }
  }

  strerror(*v45);
  MOLogWrite();
LABEL_39:
  close(v24);
  fileSystemRepresentation2 = [v55 fileSystemRepresentation];
  rename(v23, fileSystemRepresentation2, v48);
  if (!v49)
  {
    v32 = 1;
    v24 = -1;
    goto LABEL_20;
  }

  v50 = *__error();
  v51 = v50;
  strerror(v50);
  v38 = _CreateError("[NSData(MobileInstallationAdditions) MI_writeAtomicallyToURL:withMode:owner:group:protectionClass:withBarrier:error:]", 126, NSPOSIXErrorDomain, v51, 0, 0, @"Failed to rename %s to %s : %s", v52, v23);
  v24 = -1;
LABEL_17:

  if (v23)
  {
    unlink(v23);
  }

  v32 = 0;
  v18 = v38;
LABEL_20:
  lCopy = v55;
  unlink([v17 fileSystemRepresentation]);
  if ((v24 & 0x80000000) == 0)
  {
    close(v24);
  }

  errorCopy2 = error;
  if (error)
  {
LABEL_23:
    if (!v32)
    {
      v39 = v18;
      *errorCopy2 = v18;
    }
  }

LABEL_25:

  return v32;
}

- (BOOL)MI_writeAtomicallyToURLMatchingCurrentFileMetadata:(id)metadata error:(id *)error
{
  metadataCopy = metadata;
  fileSystemRepresentation = [metadataCopy fileSystemRepresentation];
  memset(&v26, 0, sizeof(v26));
  v8 = open(fileSystemRepresentation, 256);
  if (v8 < 0)
  {
    v14 = *__error();
    v15 = v14;
    strerror(v14);
    v13 = _CreateError("[NSData(MobileInstallationAdditions) MI_writeAtomicallyToURLMatchingCurrentFileMetadata:error:]", 166, NSPOSIXErrorDomain, v15, 0, 0, @"open failed for %s : %s", v16, fileSystemRepresentation);
LABEL_6:
    v17 = 0;
    if (!error)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v9 = v8;
  if (fstat(v8, &v26))
  {
    v10 = *__error();
    v11 = v10;
    strerror(v10);
    _CreateError("[NSData(MobileInstallationAdditions) MI_writeAtomicallyToURLMatchingCurrentFileMetadata:error:]", 172, NSPOSIXErrorDomain, v11, 0, 0, @"fstat failed for %s : %s", v12, fileSystemRepresentation);
    v13 = LABEL_4:;
    close(v9);
    goto LABEL_6;
  }

  v20 = fcntl(v9, 63);
  if ((v20 & 0x80000000) != 0)
  {
    v22 = *__error();
    v23 = *__error();
    strerror(v22);
    _CreateError("[NSData(MobileInstallationAdditions) MI_writeAtomicallyToURLMatchingCurrentFileMetadata:error:]", 180, NSPOSIXErrorDomain, v23, 0, 0, @"Failed to getclass of file %s: %s", v24, fileSystemRepresentation);
    goto LABEL_4;
  }

  v21 = v20;
  close(v9);
  v25 = 0;
  v17 = [(NSData *)self MI_writeAtomicallyToURL:metadataCopy withMode:v26.st_mode owner:v26.st_uid group:v26.st_gid protectionClass:v21 error:&v25];
  v13 = v25;
  if (!error)
  {
    goto LABEL_9;
  }

LABEL_7:
  if (!v17)
  {
    v18 = v13;
    *error = v13;
  }

LABEL_9:

  return v17;
}

@end