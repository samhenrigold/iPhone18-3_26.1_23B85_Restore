@interface GSVolPath
+ (id)_volPathOnVolume:(id)volume withFD:(int)d withPath:(id)path error:(id *)error;
- (BOOL)_canReadFileWithCreds:(const GSCredential *)creds;
- (BOOL)isInIgnoredLocation;
- (BOOL)isValidForCreds:(const GSCredential *)creds documentIdentifier:(id)identifier error:(id *)error;
- (BOOL)setCopyOnWrite;
- (id)description;
- (void)performOnResolvedPath:(id)path;
@end

@implementation GSVolPath

- (id)description
{
  docID = self->_docID;
  parentID = self->_parentID;
  path = self->_path;
  device = self->_device;
  lastPathComponent = [(NSString *)path lastPathComponent];
  v8 = [NSString stringWithFormat:@"<%@ dev:%x docID:%lld parentid:%lld name:%@ fileid:%lld>", path, device, docID, parentID, lastPathComponent, self->_fileID];

  return v8;
}

- (BOOL)isInIgnoredLocation
{
  v3 = 0;
  do
  {
    result = [(NSString *)self->_path hasPrefix:off_1000411E0[v3]];
    if (result)
    {
      break;
    }
  }

  while (v3++ != 4);
  return result;
}

- (BOOL)setCopyOnWrite
{
  if (self->_docID)
  {
    return 1;
  }

  v4 = openat([(GSManager *)self->_library volDirFd], [(NSString *)self->_path fileSystemRepresentation]+ 1, 256);
  v13 = 0;
  if ((v4 & 0x80000000) == 0)
  {
    v5 = v4;
    v6 = sub_1000092B0(v4, &v13);
    if (v6)
    {
      self->_docID = v6;
    }

    else
    {
      v6 = sub_100009364(v5, v13);
      self->_docID = v6;
      if (!v6)
      {
        v8 = sub_100003164(v6);
        if (os_log_type_enabled(v8, 0x90u))
        {
          sub_1000278E0();
        }

        goto LABEL_12;
      }
    }

    v8 = sub_100003164(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      docID = self->_docID;
      path = self->_path;
      device = self->_device;
      *buf = 134218498;
      v15 = docID;
      v16 = 2112;
      v17 = path;
      v18 = 1024;
      v19 = device;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] allocated docID:%lld to %@ on device %x", buf, 0x1Cu);
    }

LABEL_12:

    v9 = *__error();
    close(v5);
    *__error() = v9;
    return self->_docID != 0;
  }

  v7 = sub_100003164(v4);
  if (os_log_type_enabled(v7, 0x90u))
  {
    sub_100027978();
  }

  return 0;
}

- (BOOL)_canReadFileWithCreds:(const GSCredential *)creds
{
  if (fcntl([(GSManager *)self->_library volDirFd], 50, v8) < 0)
  {
    return 0;
  }

  v5 = [NSString stringWithFormat:@"%s%@", v8, self->_path];
  v6 = sub_100010A70(creds, [v5 fileSystemRepresentation], 1);

  return v6;
}

- (BOOL)isValidForCreds:(const GSCredential *)creds documentIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  if (!self->_docID)
  {
    v11 = [NSString stringWithFormat:@"File has no storage"];
    v14 = sub_100003164(v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      sub_10002525C();
    }

    if (!error)
    {
      goto LABEL_20;
    }

    v13 = 102;
    goto LABEL_19;
  }

  if (![(GSVolPath *)self isInIgnoredLocation]&& (!creds || [(GSVolPath *)self _canReadFileWithCreds:creds]))
  {
    if (!identifierCopy || (v17 = 0, v18 = 0, -[GSManager volumeUUID](self->_library, "volumeUUID"), v9 = objc_claimAutoreleasedReturnValue(), [v9 getUUIDBytes:&v17], v9, self->_docID == identifierCopy[3]) && (v17 == identifierCopy[1] ? (v10 = v18 == identifierCopy[2]) : (v10 = 0), v10))
    {
      v15 = 1;
      goto LABEL_21;
    }
  }

  v11 = [NSString stringWithFormat:@"invalid path"];
  v12 = sub_100003164(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_100027A10();
  }

  if (error)
  {
    v13 = 104;
LABEL_19:
    *error = sub_10000F0F8(v13, v11, 0);
  }

LABEL_20:

  v15 = 0;
LABEL_21:

  return v15;
}

+ (id)_volPathOnVolume:(id)volume withFD:(int)d withPath:(id)path error:(id *)error
{
  volumeCopy = volume;
  pathCopy = path;
  v11 = pathCopy;
  v28 = xmmword_100031338;
  v29 = 0x400000000;
  memset(v32, 0, 480);
  v30 = 0u;
  v31 = 0u;
  if (d < 0)
  {
    if (!pathCopy)
    {
LABEL_16:
      v16 = 0;
      goto LABEL_23;
    }

    if (getattrlist([pathCopy fileSystemRepresentation], &v28, &v30, 0x428uLL, 0x20u) < 0)
    {
      v12 = [NSString stringWithFormat:@"invalid path"];
      v13 = sub_100003164(v12);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if (fgetattrlist(d, &v28, &v30, 0x428uLL, 0x20u) < 0)
  {
    v12 = [NSString stringWithFormat:@"invalid path", v28, v29];
    v13 = sub_100003164(v12);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (!volumeCopy)
  {
    volumeCopy = [GSStorageManager createLibraryForDevice:DWORD1(v30) error:error];
    if (!volumeCopy)
    {
      goto LABEL_16;
    }
  }

  device = [volumeCopy device];
  if (device == DWORD1(v30))
  {
    v15 = SLODWORD(v32[0]);
    if (*(v32 + SLODWORD(v32[0])) != 47)
    {
      sub_100027A7C();
    }

    v12 = +[NSFileManager defaultManager];
    v16 = objc_alloc_init(GSVolPath);
    *&v16->_fileID = v31;
    v16->_device = DWORD1(v30);
    objc_storeStrong(&v16->_library, volumeCopy);
    v16->_docID = HIDWORD(v30);
    v17 = [v12 stringWithFileSystemRepresentation:v32 + v15 length:strlen(v32 + v15)];
    path = v16->_path;
    v16->_path = v17;

    v19 = time(0);
    v16->_resolveTime = v19;
    v20 = sub_100003164(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_100027AA8(v16, v20, v21, v22, v23, v24, v25, v26);
    }

    goto LABEL_22;
  }

  v12 = [NSString stringWithFormat:@"path isn't on the proper device"];
  v13 = sub_100003164(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
LABEL_18:
    sub_100027A10();
  }

LABEL_19:

  if (error)
  {
    sub_10000F0F8(104, v12, 0);
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_22:

LABEL_23:

  return v16;
}

- (void)performOnResolvedPath:(id)path
{
  pathCopy = path;
  v5 = pathCopy;
  library = self->_library;
  if (library)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000115EC;
    v10[3] = &unk_100041218;
    v10[4] = self;
    v11 = pathCopy;
    [(GSManager *)library dispatchSync:v10];
  }

  else
  {
    v7 = [NSString stringWithFormat:@"No library for volPath"];
    v8 = sub_100003164(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_100027B14();
    }

    v9 = sub_10000F0F8(101, v7, 0);

    (v5)[2](v5, 0, 0, v9);
  }
}

@end