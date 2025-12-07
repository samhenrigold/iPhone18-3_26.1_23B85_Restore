@interface AFSCFileInterface
- (AFSCFileInterface)initWithFilePath:(id)path expectedSize:(int64_t)size resumptionState:(id)state;
- (BOOL)closeOutputFDWithError:(id *)error;
- (BOOL)finalizeFileWithAccessTime:(timeval)time modTime:(timeval)modTime mode:(unsigned __int16)mode error:(id *)error;
- (BOOL)openOutputFDWithFlags:(int)flags mode:(unsigned __int16)mode quarantineInfo:(void *)info performCachedWrites:(BOOL)writes error:(id *)error;
- (BOOL)setCurrentOffset:(int64_t)offset error:(id *)error;
- (BOOL)writeBuffer:(const void *)buffer length:(unint64_t)length error:(id *)error;
- (id)suspendWithError:(id *)error;
- (void)configureFileAndSetOwnership:(BOOL)ownership toUID:(unsigned int)d GID:(unsigned int)iD;
- (void)dealloc;
- (void)setIncompleteExtractionAttribute;
@end

@implementation AFSCFileInterface

- (id)suspendWithError:(id *)error
{
  path = [(AFSCFileInterface *)self path];
  if (![(AFSCFileInterface *)self aaStream])
  {
    v13 = sub_100001194();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v41 = path;
      *&v41[8] = 2112;
      *&v41[10] = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "AAStream was NULL when trying to suspend %@ : %@", buf, 0x16u);
    }

    v15 = sub_10000151C("[AFSCFileInterface suspendWithError:]", 352, @"SZExtractorErrorDomain", 1, 0, 0, @"AAStream was NULL when trying to suspend %@", v14, path);
    goto LABEL_12;
  }

  v39 = 0;
  v38 = 0;
  v6 = [[MemoryBufferStream alloc] initWithError:&v38];
  v7 = v38;
  if (!v6)
  {
    v16 = sub_100001194();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v41 = path;
      *&v41[8] = 2112;
      *&v41[10] = v7;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to create MemoryBufferStream while suspending %@ : %@", buf, 0x16u);
    }

    v15 = sub_10000151C("[AFSCFileInterface suspendWithError:]", 359, @"SZExtractorErrorDomain", 1, v7, 0, @"Failed to create MemoryBufferStream while suspending %@", v17, path);

LABEL_12:
    v6 = 0;
    goto LABEL_27;
  }

  [(AFSCFileInterface *)self setAaStream:0];
  [(MemoryBufferStream *)v6 stream];
  AAThreadErrorContextEnter();
  *__error() = 0;
  v8 = AAByteStreamCloseWithState();
  v9 = *__error();
  v10 = AAThreadErrorContextLeave();
  if (v8)
  {
    v11 = v10;
    if (v9)
    {
      v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v9 userInfo:0];
    }

    else
    {
      v12 = 0;
    }

    v21 = sub_100001194();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      *v41 = v8;
      *&v41[4] = 2112;
      *&v41[6] = v12;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "AAByteStreamCloseWithState failed, returning %d : %@", buf, 0x12u);
    }

    v23 = sub_10000151C("_StreamCloseWithState", 102, @"SZAppleArchiveError", v11, v12, 0, @"AAByteStreamCloseWithState failed, returning %d", v22, v8);
    v24 = v23;

    v25 = v23;
    v26 = sub_100001194();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v41 = path;
      *&v41[8] = 2112;
      *&v41[10] = v25;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to suspend AAAFSC stream for %@ : %@", buf, 0x16u);
    }

    v15 = sub_10000151C("[AFSCFileInterface suspendWithError:]", 365, @"SZExtractorErrorDomain", 1, v25, 0, @"Failed to suspend AAAFSC stream for %@", v27, path);

    goto LABEL_27;
  }

  v18 = v39;
  if (v18 != [(AFSCFileInterface *)self currentOffset])
  {
    v28 = sub_100001194();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v35 = v39;
      currentOffset = [(AFSCFileInterface *)self currentOffset];
      *buf = 134218754;
      *v41 = v35;
      *&v41[8] = 2048;
      *&v41[10] = currentOffset;
      v42 = 2112;
      v43 = path;
      v44 = 2112;
      v45 = 0;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Mismatched suspend offset from AAByteStreamCloseWithState: got %lld, but we wrote %lld for %@ : %@", buf, 0x2Au);
    }

    v29 = v39;
    [(AFSCFileInterface *)self currentOffset];
    v15 = sub_10000151C("[AFSCFileInterface suspendWithError:]", 370, @"SZExtractorErrorDomain", 1, 0, 0, @"Mismatched suspend offset from AAByteStreamCloseWithState: got %lld, but we wrote %lld for %@", v30, v29);

LABEL_27:
    v19 = 0;
    if (!error)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v37 = v7;
  v19 = [(MemoryBufferStream *)v6 closeAndReturnBufferWithError:&v37];
  v15 = v37;

  v20 = sub_100001194();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v34 = [v19 length];
    *buf = 134218242;
    *v41 = v34;
    *&v41[8] = 2112;
    *&v41[10] = path;
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Got %lu bytes of suspend data from AA for %@", buf, 0x16u);
  }

  if (error)
  {
LABEL_28:
    if (!v19)
    {
      v31 = v15;
      *error = v15;
    }
  }

LABEL_30:
  v32 = v19;

  return v19;
}

- (BOOL)finalizeFileWithAccessTime:(timeval)time modTime:(timeval)modTime mode:(unsigned __int16)mode error:(id *)error
{
  modeCopy = mode;
  v8 = *&modTime.tv_usec;
  tv_sec = modTime.tv_sec;
  v10 = *&time.tv_usec;
  v11 = time.tv_sec;
  path = [(AFSCFileInterface *)self path];
  aaStream = [(AFSCFileInterface *)self aaStream];
  if (!aaStream)
  {
    v19 = sub_100001194();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v28 = path;
      v29 = 2112;
      v30 = 0;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "AAStream was NULL when trying to finalize %@ : %@", buf, 0x16u);
    }

    v17 = sub_10000151C("[AFSCFileInterface finalizeFileWithAccessTime:modTime:mode:error:]", 321, @"SZExtractorErrorDomain", 1, 0, 0, @"AAStream was NULL when trying to finalize %@", v20, path);
    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v15 = aaStream;
  [(AFSCFileInterface *)self setAaStream:0];
  v26 = 0;
  v16 = sub_10000C28C(v15, &v26);
  v17 = v26;
  if (!v16)
  {
    v22 = sub_100001194();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v28 = path;
      v29 = 2112;
      v30 = v17;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to close AAAFSC stream for %@ : %@", buf, 0x16u);
    }

    v24 = sub_10000151C("[AFSCFileInterface finalizeFileWithAccessTime:modTime:mode:error:]", 328, @"SZExtractorErrorDomain", 1, v17, 0, @"Failed to close AAAFSC stream for %@", v23, path);

    v17 = v24;
    if (!error)
    {
LABEL_11:
      v18 = 0;
      goto LABEL_12;
    }

LABEL_7:
    v21 = v17;
    v18 = 0;
    *error = v17;
    goto LABEL_12;
  }

  sub_10000C408(-[AFSCFileInterface outputFD](self, "outputFD"), [path fileSystemRepresentation], v11, v10, tv_sec, v8, modeCopy);
  v18 = 1;
LABEL_12:

  return v18;
}

- (void)configureFileAndSetOwnership:(BOOL)ownership toUID:(unsigned int)d GID:(unsigned int)iD
{
  ownershipCopy = ownership;
  outputFD = [(AFSCFileInterface *)self outputFD];
  path = [(AFSCFileInterface *)self path];
  v10 = path;
  sub_10000C628(outputFD, [path fileSystemRepresentation], -[AFSCFileInterface fileSize](self, "fileSize"), ownershipCopy, d, iD);
}

- (void)setIncompleteExtractionAttribute
{
  outputFD = [(AFSCFileInterface *)self outputFD];
  path = [(AFSCFileInterface *)self path];
  v4 = path;
  sub_10000C8E8(outputFD, [path fileSystemRepresentation]);
}

- (BOOL)setCurrentOffset:(int64_t)offset error:(id *)error
{
  expectedResumptionOffset = [(AFSCFileInterface *)self expectedResumptionOffset];
  isResumedStream = [(AFSCFileInterface *)self isResumedStream];
  if (expectedResumptionOffset == offset)
  {
    v9 = 0;
  }

  else
  {
    v9 = isResumedStream;
  }

  if (v9 == 1)
  {
    v10 = sub_100001194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v15 = expectedResumptionOffset;
      v16 = 2048;
      offsetCopy = offset;
      v18 = 2112;
      v19 = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "AAFSC stream expected file to resume at offset %lld but StreamingZip believes it should resume at offset %lld : %@", buf, 0x20u);
    }

    v12 = sub_10000151C("[AFSCFileInterface setCurrentOffset:error:]", 293, @"SZExtractorErrorDomain", 1, 0, 0, @"AAFSC stream expected file to resume at offset %lld but StreamingZip believes it should resume at offset %lld", v11, expectedResumptionOffset);
    if (error)
    {
      v12 = v12;
      *error = v12;
    }
  }

  else
  {
    [(AFSCFileInterface *)self setCurrentOffset:offset];
  }

  return v9 ^ 1;
}

- (BOOL)closeOutputFDWithError:(id *)error
{
  aaStream = [(AFSCFileInterface *)self aaStream];
  if (!aaStream)
  {
    v10 = 0;
    goto LABEL_5;
  }

  v6 = aaStream;
  [(AFSCFileInterface *)self setAaStream:0];
  v19 = 0;
  v7 = sub_10000C28C(v6, &v19);
  v8 = v19;
  v9 = v8;
  if (v7)
  {
    v10 = v8;
LABEL_5:
    outputFD = [(AFSCFileInterface *)self outputFD];
    if ((outputFD & 0x80000000) == 0)
    {
      close(outputFD);
      [(AFSCFileInterface *)self setOutputFD:0xFFFFFFFFLL];
    }

    v12 = 1;
    goto LABEL_13;
  }

  v13 = sub_100001194();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    path = [(AFSCFileInterface *)self path];
    *buf = 138412546;
    v21 = path;
    v22 = 2112;
    v23 = v9;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to close AAFSC stream for %@ : %@", buf, 0x16u);
  }

  path2 = [(AFSCFileInterface *)self path];
  v10 = sub_10000151C("[AFSCFileInterface closeOutputFDWithError:]", 264, @"SZExtractorErrorDomain", 1, v9, 0, @"Failed to close AAFSC stream for %@", v15, path2);

  if (error)
  {
    v16 = v10;
    v12 = 0;
    *error = v10;
  }

  else
  {
    v12 = 0;
  }

LABEL_13:

  return v12;
}

- (BOOL)writeBuffer:(const void *)buffer length:(unint64_t)length error:(id *)error
{
  aaStream = [(AFSCFileInterface *)self aaStream];
  if (aaStream)
  {
    v10 = aaStream;
    AAThreadErrorContextEnter();
    *__error() = 0;
    v11 = AAByteStreamWrite(v10, buffer, length);
    v12 = *__error();
    v13 = AAThreadErrorContextLeave();
    if (v11 < 0)
    {
      v19 = v13;
      if (v12)
      {
        v20 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v12 userInfo:0];
      }

      else
      {
        v20 = 0;
      }

      v24 = sub_100001194();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v38 = v11;
        v39 = 2112;
        lengthCopy = v20;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "AAByteStreamWrite failed, returning %zd : %@", buf, 0x16u);
      }

      v26 = sub_10000151C("_StreamWrite", 73, @"SZAppleArchiveError", v19, v20, 0, @"AAByteStreamWrite failed, returning %zd", v25, v11);
      v27 = v26;

      v28 = v26;
      path = [(AFSCFileInterface *)self path];
      v29 = sub_100001194();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v38 = path;
        v39 = 2112;
        lengthCopy = v28;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "AAAFSC stream failed to write data to output file at %@ : %@", buf, 0x16u);
      }

      v45 = NSFilePathErrorKey;
      v46 = path;
      v30 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v14 = sub_10000151C("[AFSCFileInterface writeBuffer:length:error:]", 231, @"SZExtractorErrorDomain", 1, v28, v30, @"AAAFSC stream failed to write data to output file at %@", v31, path);
    }

    else
    {
      if (v11 == length)
      {
        [(AFSCFileInterface *)self setCurrentOffset:[(AFSCFileInterface *)self currentOffset]+ length];
        v14 = 0;
        v15 = 1;
        goto LABEL_22;
      }

      path = [(AFSCFileInterface *)self path];
      v21 = sub_100001194();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218754;
        v38 = v11;
        v39 = 2048;
        lengthCopy = length;
        v41 = 2112;
        v42 = path;
        v43 = 2112;
        v44 = 0;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "AAAFSC stream wrote incomplete data; wrote %zd, expected %zu, for file %@ : %@", buf, 0x2Au);
      }

      v35 = NSFilePathErrorKey;
      v36 = path;
      v22 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v14 = sub_10000151C("[AFSCFileInterface writeBuffer:length:error:]", 235, @"SZExtractorErrorDomain", 1, 0, v22, @"AAAFSC stream wrote incomplete data wrote %zd, expected %zu, for file %@", v23, v11);;
    }
  }

  else
  {
    v16 = sub_100001194();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      path2 = [(AFSCFileInterface *)self path];
      *buf = 138412546;
      v38 = path2;
      v39 = 2112;
      lengthCopy = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "AAStream was NULL when trying to write to %@ : %@", buf, 0x16u);
    }

    path = [(AFSCFileInterface *)self path];
    v14 = sub_10000151C("[AFSCFileInterface writeBuffer:length:error:]", 224, @"SZExtractorErrorDomain", 1, 0, 0, @"AAStream was NULL when trying to write to %@", v18, path);
  }

  if (error)
  {
    v32 = v14;
    v15 = 0;
    *error = v14;
  }

  else
  {
    v15 = 0;
  }

LABEL_22:

  return v15;
}

- (BOOL)openOutputFDWithFlags:(int)flags mode:(unsigned __int16)mode quarantineInfo:(void *)info performCachedWrites:(BOOL)writes error:(id *)error
{
  modeCopy = mode;
  flagsCopy = flags;
  v12 = [(AFSCFileInterface *)self path:*&flags];
  resumptionState = [(AFSCFileInterface *)self resumptionState];
  fileSize = [(AFSCFileInterface *)self fileSize];
  if (([(AFSCFileInterface *)self outputFD]& 0x80000000) == 0)
  {
    v15 = sub_100001194();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v54 = v12;
      v55 = 2112;
      v56 = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Output FD is already open; refusing to open again for path %@. : %@", buf, 0x16u);
    }

    v17 = sub_10000151C("[AFSCFileInterface openOutputFDWithFlags:mode:quarantineInfo:performCachedWrites:error:]", 165, @"SZExtractorErrorDomain", 1, 0, 0, @"Output FD is already open refusing to open again for path %@.", v16, v12);;
    goto LABEL_5;
  }

  v52 = 0;
  v20 = sub_10000D810([(MemoryBufferStream *)v12 fileSystemRepresentation], flagsCopy, modeCopy, writes, fileSize, &v52);
  if ((v20 & 0x80000000) != 0)
  {
    v17 = v52;
    goto LABEL_5;
  }

  v21 = v20;
  [(AFSCFileInterface *)self setOutputFD:v20];
  if (resumptionState)
  {
    v51 = 0;
    v22 = [[MemoryBufferStream alloc] initWithBuffer:resumptionState error:&v51];
    v23 = v51;
    if (v22)
    {
      [(MemoryBufferStream *)v22 stream];
      AAThreadErrorContextEnter();
      *__error() = 0;
      v24 = AAAFSCStreamOpenWithState();
      v25 = *__error();
      v26 = AAThreadErrorContextLeave();
      if (v24)
      {
        v27 = sub_100001194();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          *buf = 134218242;
          v54 = 0;
          v55 = 2112;
          v56 = v12;
          _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "AAAFSCStreamOpenWithState gave offset %lld for %@", buf, 0x16u);
        }

        [(AFSCFileInterface *)self setExpectedResumptionOffset:0];
        [(AFSCFileInterface *)self setResumptionState:0];

        goto LABEL_18;
      }

      v33 = v26;
      if (v25)
      {
        v34 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v25 userInfo:0];
      }

      else
      {
        v34 = 0;
      }

      v37 = sub_100001194();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v54 = v34;
        _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "AAAFSCStreamOpenWithState failed : %@", buf, 0xCu);
      }

      v39 = sub_10000151C("_StreamOpenWithState", 59, @"SZAppleArchiveError", v33, v34, 0, @"AAAFSCStreamOpenWithState failed", v38, v50);
      v40 = v39;

      v41 = v39;
      v42 = sub_100001194();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v54 = v12;
        v55 = 2112;
        v56 = v41;
        _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "Failed to resume AAAFSC stream for%@. : %@", buf, 0x16u);
      }

      v17 = sub_10000151C("[AFSCFileInterface openOutputFDWithFlags:mode:quarantineInfo:performCachedWrites:error:]", 188, @"SZExtractorErrorDomain", 1, v41, 0, @"Failed to resume AAAFSC stream for%@.", v43, v12);

      v23 = v22;
      goto LABEL_40;
    }

    v31 = sub_100001194();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v54 = v12;
      v55 = 2112;
      v56 = v23;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Failed to create buffer stream for resumption state for %@. : %@", buf, 0x16u);
    }

    sub_10000151C("[AFSCFileInterface openOutputFDWithFlags:mode:quarantineInfo:performCachedWrites:error:]", 181, @"SZExtractorErrorDomain", 1, v23, 0, @"Failed to create buffer stream for resumption state for %@.", v32, v12);
  }

  else
  {
    AAThreadErrorContextEnter();
    *__error() = 0;
    v24 = AAAFSCStreamOpen();
    v28 = *__error();
    v29 = AAThreadErrorContextLeave();
    if (v24)
    {
      v23 = 0;
LABEL_18:
      [(AFSCFileInterface *)self setAaStream:v24];
      v19 = 1;
      v17 = v23;
      goto LABEL_19;
    }

    v35 = v29;
    if (v28)
    {
      v36 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v28 userInfo:0];
    }

    else
    {
      v36 = 0;
    }

    v44 = sub_100001194();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v54 = v36;
      _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "AAAFSCStreamOpen failed : %@", buf, 0xCu);
    }

    v46 = sub_10000151C("_StreamOpen", 45, @"SZAppleArchiveError", v35, v36, 0, @"AAAFSCStreamOpen failed", v45, v50);
    v47 = v46;

    v23 = v46;
    v48 = sub_100001194();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v54 = v12;
      v55 = 2112;
      v56 = v23;
      _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Failed to open AAAFSC stream for %@. : %@", buf, 0x16u);
    }

    sub_10000151C("[AFSCFileInterface openOutputFDWithFlags:mode:quarantineInfo:performCachedWrites:error:]", 197, @"SZExtractorErrorDomain", 1, v23, 0, @"Failed to open AAAFSC stream for %@.", v49, v12);
  }
  v17 = ;
LABEL_40:

  close(v21);
LABEL_5:
  if (error)
  {
    v18 = v17;
    v19 = 0;
    *error = v17;
  }

  else
  {
    v19 = 0;
  }

LABEL_19:

  return v19;
}

- (void)dealloc
{
  [(AFSCFileInterface *)self closeOutputFDWithError:0];
  v3.receiver = self;
  v3.super_class = AFSCFileInterface;
  [(AFSCFileInterface *)&v3 dealloc];
}

- (AFSCFileInterface)initWithFilePath:(id)path expectedSize:(int64_t)size resumptionState:(id)state
{
  pathCopy = path;
  stateCopy = state;
  v14.receiver = self;
  v14.super_class = AFSCFileInterface;
  v10 = [(AFSCFileInterface *)&v14 init];
  if (v10)
  {
    v11 = [pathCopy copy];
    path = v10->_path;
    v10->_path = v11;

    v10->_fileSize = size;
    v10->_outputFD = -1;
    objc_storeStrong(&v10->_resumptionState, state);
    v10->_isResumedStream = stateCopy != 0;
    v10->_currentOffset = 0;
    v10->_expectedResumptionOffset = 0;
  }

  return v10;
}

@end