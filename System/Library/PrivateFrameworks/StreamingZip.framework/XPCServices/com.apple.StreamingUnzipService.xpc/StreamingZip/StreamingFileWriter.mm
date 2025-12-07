@interface StreamingFileWriter
+ (id)fileWriterForPath:(id)path withOpenFlags:(int)flags mode:(unsigned __int16)mode quarantineInfo:(void *)info useFSCompression:(BOOL)compression performCachedWrites:(BOOL)writes expectedSize:(int64_t)size asyncTrackingGroup:(id)self0 errorDelegate:(id)self1 error:(id *)self2;
+ (id)synchronousFileWriterForPath:(id)path withOpenFlags:(int)flags mode:(unsigned __int16)mode quarantineInfo:(void *)info resumptionState:(id)state useFSCompression:(BOOL)compression performCachedWrites:(BOOL)writes expectedSize:(int64_t)self0 error:(id *)self1;
- (BOOL)_openOutputFDWithFlags:(int)flags mode:(unsigned __int16)mode performCachedWrites:(BOOL)writes quarantineInfo:(void *)info error:(id *)error;
- (BOOL)closeOutputFDWithError:(id *)error;
- (BOOL)finalizeFileWithAccessTime:(timeval)time modTime:(timeval)modTime mode:(unsigned __int16)mode error:(id *)error;
- (BOOL)setCurrentOffset:(int64_t)offset error:(id *)error;
- (BOOL)writeBuffer:(const void *)buffer length:(unint64_t)length error:(id *)error;
- (NSString)path;
- (id)_initForWritingToPath:(id)path withOpenFlags:(int)flags mode:(unsigned __int16)mode quarantineInfo:(void *)info resumptionState:(id)state useFSCompression:(BOOL)compression performCachedWrites:(BOOL)writes expectedSize:(int64_t)self0 error:(id *)self1;
- (id)description;
- (id)suspendWithError:(id *)error;
- (int64_t)currentOffsetWithError:(id *)error;
- (int64_t)fileSize;
- (void)configureFileAndSetOwnership:(BOOL)ownership toUID:(unsigned int)d GID:(unsigned int)iD;
- (void)setIncompleteExtractionAttribute;
@end

@implementation StreamingFileWriter

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  path = [(StreamingFileWriter *)self path];
  v6 = [NSString stringWithFormat:@"<%@: path=%@>", v4, path];

  return v6;
}

- (NSString)path
{
  fileInterface = [(StreamingFileWriter *)self fileInterface];
  path = [fileInterface path];

  return path;
}

- (int64_t)fileSize
{
  fileInterface = [(StreamingFileWriter *)self fileInterface];
  fileSize = [fileInterface fileSize];

  return fileSize;
}

- (BOOL)closeOutputFDWithError:(id *)error
{
  fileInterface = [(StreamingFileWriter *)self fileInterface];
  LOBYTE(error) = [fileInterface closeOutputFDWithError:error];

  return error;
}

- (BOOL)finalizeFileWithAccessTime:(timeval)time modTime:(timeval)modTime mode:(unsigned __int16)mode error:(id *)error
{
  modeCopy = mode;
  v8 = *&modTime.tv_usec;
  tv_sec = modTime.tv_sec;
  v10 = *&time.tv_usec;
  v11 = time.tv_sec;
  fileInterface = [(StreamingFileWriter *)self fileInterface];
  LOBYTE(error) = [fileInterface finalizeFileWithAccessTime:v11 modTime:v10 mode:tv_sec error:{v8, modeCopy, error}];

  return error;
}

- (id)suspendWithError:(id *)error
{
  fileInterface = [(StreamingFileWriter *)self fileInterface];
  path = [(StreamingFileWriter *)self path];
  v7 = sub_100001194();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v28 = path;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Suspending %@", buf, 0xCu);
  }

  v26 = 0;
  v8 = [fileInterface suspendWithError:&v26];
  v9 = v26;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = 1;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v18 = sub_100001194();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v22 = objc_opt_class();
          v23 = NSStringFromClass(v22);
          *buf = 138412802;
          v28 = path;
          v29 = 2112;
          v30 = v23;
          v31 = 2112;
          v32 = 0;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Unknown file interface class for path %@ : %@ : %@", buf, 0x20u);
        }

        v19 = objc_opt_class();
        v24 = NSStringFromClass(v19);
        v17 = sub_10000151C("[StreamingFileWriter suspendWithError:]", 322, @"SZExtractorErrorDomain", 1, 0, 0, @"Unknown file interface class for path %@ : %@", v20, path);

        v11 = 0;
        goto LABEL_18;
      }

      v10 = 2;
    }

    v11 = [[StreamingFileWriterState alloc] initWithFileInterfaceType:v10 fileInterfaceState:v8];
    v25 = v9;
    v13 = [NSKeyedArchiver archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v25];
    v14 = v25;

    if (v13)
    {
      v9 = v14;
      goto LABEL_20;
    }

    v15 = sub_100001194();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v28 = path;
      v29 = 2112;
      v30 = v14;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to archive StreamingFileWriterState for path %@ : %@", buf, 0x16u);
    }

    v17 = sub_10000151C("[StreamingFileWriter suspendWithError:]", 330, @"SZExtractorErrorDomain", 1, v14, 0, @"Failed to archive StreamingFileWriterState for path %@", v16, path);
    v9 = v14;
LABEL_18:

    v9 = v17;
    if (!error)
    {
      goto LABEL_19;
    }

LABEL_7:
    v12 = v9;
    v13 = 0;
    *error = v9;
    goto LABEL_20;
  }

  v11 = 0;
  if (error)
  {
    goto LABEL_7;
  }

LABEL_19:
  v13 = 0;
LABEL_20:

  return v13;
}

- (void)configureFileAndSetOwnership:(BOOL)ownership toUID:(unsigned int)d GID:(unsigned int)iD
{
  v5 = *&iD;
  v6 = *&d;
  ownershipCopy = ownership;
  fileInterface = [(StreamingFileWriter *)self fileInterface];
  [fileInterface configureFileAndSetOwnership:ownershipCopy toUID:v6 GID:v5];
}

- (BOOL)writeBuffer:(const void *)buffer length:(unint64_t)length error:(id *)error
{
  fileInterface = [(StreamingFileWriter *)self fileInterface];
  LOBYTE(error) = [fileInterface writeBuffer:buffer length:length error:error];

  return error;
}

- (void)setIncompleteExtractionAttribute
{
  fileInterface = [(StreamingFileWriter *)self fileInterface];
  [fileInterface setIncompleteExtractionAttribute];
}

- (BOOL)setCurrentOffset:(int64_t)offset error:(id *)error
{
  fileInterface = [(StreamingFileWriter *)self fileInterface];
  LOBYTE(error) = [fileInterface setCurrentOffset:offset error:error];

  return error;
}

- (int64_t)currentOffsetWithError:(id *)error
{
  fileInterface = [(StreamingFileWriter *)self fileInterface];
  v5 = [fileInterface currentOffsetWithError:error];

  return v5;
}

- (id)_initForWritingToPath:(id)path withOpenFlags:(int)flags mode:(unsigned __int16)mode quarantineInfo:(void *)info resumptionState:(id)state useFSCompression:(BOOL)compression performCachedWrites:(BOOL)writes expectedSize:(int64_t)self0 error:(id *)self1
{
  compressionCopy = compression;
  modeCopy = mode;
  v15 = *&flags;
  pathCopy = path;
  stateCopy = state;
  v53.receiver = self;
  v53.super_class = StreamingFileWriter;
  v19 = [(StreamingFileWriter *)&v53 init];
  if (!v19)
  {
    goto LABEL_33;
  }

  if (!stateCopy)
  {
    if ((size - 16385) > 0x1FFFBFFF || !compressionCopy)
    {
      v28 = DirectFileInterface;
    }

    else
    {
      v31 = sub_100001194();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v56 = pathCopy;
        _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "Using AFSC for %@", buf, 0xCu);
      }

      v28 = AFSCFileInterface;
    }

    v33 = [[v28 alloc] initWithFilePath:pathCopy expectedSize:size resumptionState:0];
    fileInterface = v19->_fileInterface;
    v19->_fileInterface = v33;
    goto LABEL_32;
  }

  v50 = v15;
  v51 = modeCopy;
  infoCopy = info;
  v20 = pathCopy;
  v21 = stateCopy;
  v22 = objc_opt_class();
  v54 = 0;
  v23 = [NSKeyedUnarchiver unarchivedObjectOfClass:v22 fromData:v21 error:&v54];

  v24 = v54;
  if (v23)
  {
    fileInterfaceType = [v23 fileInterfaceType];
    if (fileInterfaceType == 1 || (v26 = fileInterfaceType, fileInterfaceType == 2))
    {
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      v37 = v36;
      fileInterface = [v23 fileInterfaceState];
      if (!error)
      {
        goto LABEL_28;
      }

LABEL_26:
      if (!fileInterface)
      {
        v41 = v24;
        *error = v24;
      }

      goto LABEL_28;
    }

    v38 = sub_100001194();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v56 = v26;
      v57 = 2112;
      v58 = v20;
      v59 = 2112;
      v60 = 0;
      _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Unknown file interface type %lu for %@ : %@", buf, 0x20u);
    }

    sub_10000151C("[StreamingFileWriter _fileInterfaceResumptionStateForPath:data:fileInterfaceClassName:error:]", 170, @"SZExtractorErrorDomain", 1, 0, 0, @"Unknown file interface type %lu for %@", v39, v26);
  }

  else
  {
    v29 = sub_100001194();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v56 = v20;
      v57 = 2112;
      v58 = v24;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to decode resumption state for %@ : %@", buf, 0x16u);
    }

    sub_10000151C("[StreamingFileWriter _fileInterfaceResumptionStateForPath:data:fileInterfaceClassName:error:]", 155, @"SZExtractorErrorDomain", 1, v24, 0, @"Failed to decode resumption state for %@", v30, v20);
  }
  v40 = ;

  v36 = 0;
  fileInterface = 0;
  v24 = v40;
  if (error)
  {
    goto LABEL_26;
  }

LABEL_28:

  v42 = v36;
  v43 = v42;
  if (!fileInterface)
  {

    goto LABEL_35;
  }

  v44 = NSClassFromString(v42);
  v45 = sub_100001194();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v56 = v20;
    v57 = 2112;
    v58 = v43;
    _os_log_debug_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "Resuming %@ with interface class %@", buf, 0x16u);
  }

  v46 = [[v44 alloc] initWithFilePath:v20 expectedSize:size resumptionState:fileInterface];
  v47 = v19->_fileInterface;
  v19->_fileInterface = v46;

  info = infoCopy;
  v15 = v50;
  modeCopy = v51;
LABEL_32:

  if (![(StreamingFileWriter *)v19 _openOutputFDWithFlags:v15 mode:modeCopy performCachedWrites:writes quarantineInfo:info error:error])
  {
LABEL_35:
    v48 = 0;
    goto LABEL_36;
  }

LABEL_33:
  v48 = v19;
LABEL_36:

  return v48;
}

- (BOOL)_openOutputFDWithFlags:(int)flags mode:(unsigned __int16)mode performCachedWrites:(BOOL)writes quarantineInfo:(void *)info error:(id *)error
{
  writesCopy = writes;
  modeCopy = mode;
  v11 = *&flags;
  fileInterface = [(StreamingFileWriter *)self fileInterface];
  LOBYTE(error) = [fileInterface openOutputFDWithFlags:v11 mode:modeCopy quarantineInfo:info performCachedWrites:writesCopy error:error];

  return error;
}

+ (id)synchronousFileWriterForPath:(id)path withOpenFlags:(int)flags mode:(unsigned __int16)mode quarantineInfo:(void *)info resumptionState:(id)state useFSCompression:(BOOL)compression performCachedWrites:(BOOL)writes expectedSize:(int64_t)self0 error:(id *)self1
{
  compressionCopy = compression;
  modeCopy = mode;
  v15 = *&flags;
  pathCopy = path;
  stateCopy = state;
  v18 = sub_100001194();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v23 = pathCopy;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Forcibly writing synchronously for %@", buf, 0xCu);
  }

  LOBYTE(v21) = writes;
  v19 = [[StreamingFileWriter alloc] _initForWritingToPath:pathCopy withOpenFlags:v15 mode:modeCopy quarantineInfo:info resumptionState:stateCopy useFSCompression:compressionCopy performCachedWrites:v21 expectedSize:size error:error];

  return v19;
}

+ (id)fileWriterForPath:(id)path withOpenFlags:(int)flags mode:(unsigned __int16)mode quarantineInfo:(void *)info useFSCompression:(BOOL)compression performCachedWrites:(BOOL)writes expectedSize:(int64_t)size asyncTrackingGroup:(id)self0 errorDelegate:(id)self1 error:(id *)self2
{
  compressionCopy = compression;
  modeCopy = mode;
  v14 = *&flags;
  pathCopy = path;
  groupCopy = group;
  delegateCopy = delegate;
  v27 = 0;
  if (qword_10002F160 != -1)
  {
    dispatch_once(&qword_10002F160, &stru_100028728);
  }

  if (byte_10002F168)
  {
    goto LABEL_10;
  }

  v18 = +[StreamingFileWriterQueue sharedInstance];
  v19 = [v18 reserveAsyncOperationForFileSize:size path:pathCopy group:groupCopy operationPendingForPath:&v27];

  if (v27)
  {
    dispatch_group_wait(groupCopy, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (!v19)
  {
LABEL_10:
    v22 = sub_100001194();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v29 = pathCopy;
      _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Synchronously writing %@", buf, 0xCu);
    }

    LOBYTE(v24) = writes;
    v21 = [[StreamingFileWriter alloc] _initForWritingToPath:pathCopy withOpenFlags:v14 mode:modeCopy quarantineInfo:info resumptionState:0 useFSCompression:compressionCopy performCachedWrites:v24 expectedSize:size error:error];
  }

  else
  {
    v20 = sub_100001194();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v29 = pathCopy;
      _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Asynchronously writing %@", buf, 0xCu);
    }

    LOBYTE(v24) = writes;
    v21 = [[AsyncStreamingFileWriter alloc] _initForWritingToPath:pathCopy withOpenFlags:v14 mode:modeCopy quarantineInfo:info resumptionState:0 useFSCompression:compressionCopy performCachedWrites:v24 expectedSize:size asyncTrackingGroup:groupCopy errorDelegate:delegateCopy reservation:v19 error:error];
  }

  return v21;
}

@end