@interface MBFileEncodingTask
+ (id)decodingTaskWithEncodingMethod:(char)method;
+ (id)encodingTaskWithEncodingMethod:(char)method;
- (BOOL)_handleCompressionOperation:(int)operation algorithm:(int)algorithm destinationSize:(unint64_t *)size error:(id *)error;
- (MBFileEncodingTask)initWithCoder:(id)coder;
- (MBFileEncodingTask)initWithType:(char)type encodingMethod:(char)method;
- (id)_archive;
- (id)_compress;
- (id)_decompress;
- (id)_unarchive;
- (void)_finishWithError:(id)error;
- (void)encodeWithCoder:(id)coder;
- (void)start;
@end

@implementation MBFileEncodingTask

+ (id)encodingTaskWithEncodingMethod:(char)method
{
  v3 = [[MBFileEncodingTask alloc] initWithType:1 encodingMethod:method];

  return v3;
}

+ (id)decodingTaskWithEncodingMethod:(char)method
{
  v3 = [[MBFileEncodingTask alloc] initWithType:2 encodingMethod:method];

  return v3;
}

- (MBFileEncodingTask)initWithType:(char)type encodingMethod:(char)method
{
  if (!type)
  {
    sub_100014CBC();
  }

  methodCopy = method;
  if (!method)
  {
    sub_100014C90();
  }

  typeCopy = type;
  v9.receiver = self;
  v9.super_class = MBFileEncodingTask;
  v6 = [(MBFileEncodingTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(MBFileEncodingTask *)v6 setType:typeCopy];
    [(MBFileEncodingTask *)v7 setEncodingMethod:methodCopy];
    [(MBFileEncodingTask *)v7 setCompressionMethod:0xFFFFFFFFLL];
    [(MBFileEncodingTask *)v7 setProtectionClass:255];
    [(MBFileEncodingTask *)v7 setValidate:0];
  }

  return v7;
}

- (void)start
{
  type = [(MBFileEncodingTask *)self type];
  if ((type - 3) <= 0xFDu)
  {
    sub_100014D90();
  }

  v4 = type;
  group = [(MBFileEncodingTask *)self group];
  if (!group)
  {
    sub_100014D64();
  }

  validate = [(MBFileEncodingTask *)self validate];
  if (validate && (MBIsInternalInstall(validate, v7) & 1) == 0)
  {
    sub_100014CE8();
  }

  group2 = [(MBFileEncodingTask *)self group];
  dispatch_group_enter(group2);

  sourcePath = [(MBFileEncodingTask *)self sourcePath];
  if (sourcePath && [(MBFileEncodingTask *)self compressionMethod])
  {
    protectionClass = [(MBFileEncodingTask *)self protectionClass];

    if (protectionClass != 255)
    {
      if (v4 == 1)
      {
        if (qword_10002A288 != -1)
        {
          sub_100014D3C();
        }

        v11 = qword_10002A280;
        if (qword_10002A298 != -1)
        {
          sub_100014D50();
        }

        v12 = &qword_10002A290;
      }

      else
      {
        if (qword_10002A2A8 != -1)
        {
          sub_100014D14();
        }

        v11 = qword_10002A2A0;
        if (qword_10002A2B8 != -1)
        {
          sub_100014D28();
        }

        v12 = &qword_10002A2B0;
      }

      v13 = *v12;
      dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10001086C;
      block[3] = &unk_100024BB8;
      v19 = v4;
      block[4] = self;
      v18 = v11;
      v14 = v11;
      v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      dispatch_async(v13, v15);

      return;
    }
  }

  else
  {
  }

  v16 = [MBError errorWithCode:1 format:@"Invalid arguments: no source path, or unspecified compression or protection class"];
  [(MBFileEncodingTask *)self _finishWithError:v16];
}

- (void)_finishWithError:(id)error
{
  if (error)
  {
    [(MBFileEncodingTask *)self setError:?];
    [(MBFileEncodingTask *)self setDestinationSize:0];
    [(MBFileEncodingTask *)self setCompressionMethod:0];
  }

  group = [(MBFileEncodingTask *)self group];
  dispatch_group_leave(group);

  [(MBFileEncodingTask *)self setGroup:0];
}

- (id)_compress
{
  v44 = 0;
  v43 = 0;
  v3 = sub_100010F08([(MBFileEncodingTask *)self compressionMethod], &v44, &v43);
  v4 = v43;
  v5 = v4;
  if (!v3)
  {
    v25 = 0;
    goto LABEL_19;
  }

  v41 = v4;
  v42 = 0;
  v6 = [(MBFileEncodingTask *)self _handleCompressionOperation:0 algorithm:v44 destinationSize:&v42 error:&v41];
  v7 = v41;

  if (!v6)
  {
    v25 = 0;
    v5 = v7;
    goto LABEL_19;
  }

  v40 = 0;
  v39 = v7;
  v8 = sub_100010FDC(v44, &v40, &v39);
  v5 = v39;

  if ((v8 & 1) == 0)
  {
    sub_100014DBC();
  }

  if (!v40)
  {
    sub_100014E14();
  }

  if (v40 == 255)
  {
    sub_100014DE8();
  }

  if (![(MBFileEncodingTask *)self encodingMethod])
  {
    sub_100014F1C();
  }

  if ([(MBFileEncodingTask *)self encodingMethod]== -1)
  {
    sub_100014EF0();
  }

  [(MBFileEncodingTask *)self setCompressionMethod:v40];
  [(MBFileEncodingTask *)self setDestinationSize:v42];
  if ([(MBFileEncodingTask *)self validate])
  {
    if (![(MBFileEncodingTask *)self sourceIsLive])
    {
      sourceDigest = [(MBFileEncodingTask *)self sourceDigest];

      if (sourceDigest)
      {
        v38 = 0;
        if ((sub_100010FDC(v44, &v38, 0) & 1) == 0)
        {
          sub_100014E40();
        }

        destinationPath = [(MBFileEncodingTask *)self destinationPath];
        if (!destinationPath)
        {
          sub_100014EC4();
        }

        v11 = destinationPath;
        v12 = dispatch_group_create();
        v13 = [MBFileEncodingTask decodingTaskWithEncodingMethod:[(MBFileEncodingTask *)self encodingMethod]];
        [v13 setSourcePath:v11];
        [v13 setDestinationPath:0];
        [v13 setCompressionMethod:v38];
        [v13 setProtectionClass:{-[MBFileEncodingTask protectionClass](self, "protectionClass")}];
        [v13 setValidate:1];
        [v13 setGroup:v12];
        [v13 start];
        dispatch_group_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
        error = [v13 error];

        if (error)
        {
          v16 = MBGetDefaultLog(v15);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            sourcePath = [(MBFileEncodingTask *)self sourcePath];
            encodingMethod = [(MBFileEncodingTask *)self encodingMethod];
            v19 = v38;
            error2 = [v13 error];
            *buf = 138413314;
            v46 = v11;
            v47 = 2112;
            v48 = sourcePath;
            v49 = 2048;
            v50 = encodingMethod;
            v51 = 2048;
            v52 = v19;
            v53 = 2112;
            v54 = error2;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "Failed to validate the compressed file at %@(%@), e:%ld/0x%lx, error:%@", buf, 0x34u);

            sourcePath2 = [(MBFileEncodingTask *)self sourcePath];
            encodingMethod2 = [(MBFileEncodingTask *)self encodingMethod];
            v23 = v38;
            error3 = [v13 error];
            _MBLog(@"F ", "Failed to validate the compressed file at %@(%@), e:%ld/0x%lx, error:%@", v11, sourcePath2, encodingMethod2, v23, error3);
          }

          [v13 error];
          v25 = 0;
          v5 = v26 = v5;
        }

        else
        {
          destinationDigest = [v13 destinationDigest];
          if (!destinationDigest)
          {
            sub_100014E98();
          }

          v26 = destinationDigest;
          sourceDigest2 = [(MBFileEncodingTask *)self sourceDigest];
          v25 = [sourceDigest2 isEqualToData:v26];

          if ((v25 & 1) == 0)
          {
            v33 = MBGetDefaultLog(v32);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
            {
              sourceDigest3 = [(MBFileEncodingTask *)self sourceDigest];
              *buf = 138412802;
              v46 = v11;
              v47 = 2112;
              v48 = sourceDigest3;
              v49 = 2112;
              v50 = v26;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_FAULT, "Mismatched SHA256 for the file at %@, %@ != %@", buf, 0x20u);

              sourceDigest4 = [(MBFileEncodingTask *)self sourceDigest];
              _MBLog(@"F ", "Mismatched SHA256 for the file at %@, %@ != %@", v11, sourceDigest4, v26);
            }

            sourceDigest5 = [(MBFileEncodingTask *)self sourceDigest];
            v37 = [MBError errorWithCode:1 path:v11 format:@"Mismatched digests, %@ != %@", sourceDigest5, v26];

            v5 = v37;
          }
        }

        if (v25)
        {
LABEL_20:
          v27 = v5;
          if (!v25)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_19:
        if (!v5)
        {
          sub_100014E6C();
        }

        goto LABEL_20;
      }
    }
  }

LABEL_21:
  v27 = 0;
LABEL_22:
  v28 = v27;

  return v28;
}

- (id)_decompress
{
  v17 = 0;
  v16 = 0;
  v3 = sub_100010F08([(MBFileEncodingTask *)self compressionMethod], &v17, &v16);
  v4 = v16;
  v5 = v4;
  if (v3)
  {
    v14 = v4;
    v15 = 0;
    v6 = [(MBFileEncodingTask *)self _handleCompressionOperation:1 algorithm:v17 destinationSize:&v15 error:&v14];
    v7 = v14;

    if (v6)
    {
      v13 = 0;
      v12 = v7;
      v8 = sub_100010FDC(v17, &v13, &v12);
      v5 = v12;

      if ((v8 & 1) == 0)
      {
        sub_100014FF8();
      }

      [(MBFileEncodingTask *)self setCompressionMethod:v13];
      [(MBFileEncodingTask *)self setDestinationSize:v15];
      v9 = 0;
      goto LABEL_7;
    }

    v5 = v7;
  }

  v9 = v5;
  if (!v5)
  {
    sub_100014FCC();
  }

LABEL_7:
  v10 = v9;

  return v10;
}

- (BOOL)_handleCompressionOperation:(int)operation algorithm:(int)algorithm destinationSize:(unint64_t *)size error:(id *)error
{
  if (operation >= 2)
  {
    sub_100015184();
  }

  if (!size)
  {
    sub_100015158();
  }

  if (!error)
  {
    sub_10001512C();
  }

  sourcePath = [(MBFileEncodingTask *)self sourcePath];
  if (!sourcePath)
  {
    sub_100015100();
  }

  v12 = sourcePath;
  destinationPath = [(MBFileEncodingTask *)self destinationPath];
  protectionClass = [(MBFileEncodingTask *)self protectionClass];
  if (protectionClass == 255)
  {
    sub_1000150D4();
  }

  v15 = protectionClass;
  if (protectionClass == 7)
  {
    v16 = 3;
  }

  else
  {
    v16 = protectionClass;
  }

  v118 = 0.0;
  v119 = 0.0;
  v17 = open([v12 fileSystemRepresentation], 256);
  v18 = v17;
  if (v17 == -1)
  {
    v20 = @"Failed to open src file";
    goto LABEL_13;
  }

  memset(&v117, 0, sizeof(v117));
  v19 = fstat(v17, &v117);
  if (v19)
  {
    v20 = @"Failed to fstat src file";
LABEL_13:
    v21 = v12;
LABEL_14:
    v22 = [MBError posixErrorWithPath:v21 format:v20];
    v23 = 0;
    *error = v22;
    goto LABEL_15;
  }

  algorithm = algorithm;
  v111 = v16;
  sizeCopy = size;
  st_size = v117.st_size;
  tv_sec = v117.st_mtimespec.tv_sec;
  if (destinationPath)
  {
    v25 = open([destinationPath fileSystemRepresentation], 1794, 384);
    if (v25 == -1)
    {
      v20 = @"Failed to create dst file";
      v21 = destinationPath;
      goto LABEL_14;
    }

    LODWORD(v26) = v25;
    v116 = 0;
    v27 = [MBProtectionClassUtils setWithFD:v25 value:v111 error:&v116];
    v19 = v116;
    v22 = v19;
    if ((v27 & 1) == 0)
    {
      v33 = MBGetDefaultLog(v19);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = destinationPath;
        *&buf[12] = 2112;
        *&buf[14] = v22;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Failed to set protection class on the file at %@, error:%@", buf, 0x16u);
        _MBLog(@"E ", "Failed to set protection class on the file at %@, error:%@", destinationPath, v22);
      }

      v34 = v22;
      *error = v22;
      goto LABEL_134;
    }
  }

  else
  {
    v22 = 0;
    LODWORD(v26) = -1;
  }

  if (*&st_size == 0.0)
  {
    v32 = MBGetDefaultLog(v19);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = destinationPath;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Source file is 0 bytes, returning empty 0 byte file at %@", buf, 0xCu);
      _MBLog(@"Df", "Source file is 0 bytes, returning empty 0 byte file at %@", destinationPath);
    }

    goto LABEL_31;
  }

  __fd = v26;
  Current = CFAbsoluteTimeGetCurrent();
  validate = [(MBFileEncodingTask *)self validate];
  v30 = validate ^ 1;
  v100 = v22;
  if (operation)
  {
    v31 = &v118;
    if (!validate)
    {
      v31 = 0;
    }

    location = 0;
    v97 = v31;
    v105 = validate ^ 1;
    v30 = 1;
  }

  else
  {
    v35 = &v119;
    if (!validate)
    {
      v35 = 0;
    }

    location = v35;
    v97 = 0;
    v105 = 1;
  }

  cancellationHandler = self->_cancellationHandler;
  v102 = destinationPath;
  v103 = cancellationHandler;
  v37 = malloc_type_malloc(0x10000uLL, 0xA9F6ACCAuLL);
  v98 = v30;
  if (v30)
  {
    v101 = 0;
  }

  else
  {
    v101 = +[MBDigest sha256];
  }

  if (v105)
  {
    v112 = 0;
  }

  else
  {
    v112 = +[MBDigest sha256];
  }

  if (!v37)
  {
    sub_1000150A8();
  }

  *v121 = 0;
  memset(buf, 0, sizeof(buf));
  errorCopy = error;
  if (compression_stream_init(buf, operation, algorithm))
  {
    v38 = [MBError errorWithCode:1 format:@"compression_stream_init failed"];
LABEL_49:
    free(v37);
    *&v114 = 0.0;
    v39 = 0;
    obj = 0;
  }

  else
  {
    *&v114 = 0.0;
    v40 = 0;
    *&buf[16] = 0xFFFFFFFFFFFFFFFFLL;
    *buf = v37;
    *&buf[8] = 0x10000;
    v41 = v103;
    obja = 1;
    for (i = destinationPath; ; destinationPath = i)
    {
      v42 = -1;
LABEL_52:
      if (v41 && v41[2](v41))
      {
        v38 = [MBError errorWithCode:202 format:@"File encoding cancelled"];
        *&v114 = 0.0;
        final = 0;
        obj = 0;
        v55 = 0;
        goto LABEL_92;
      }

      if ((obja & 1) == 0)
      {
        break;
      }

      if (*&buf[16] != -1 && (*&buf[16] - v42) > 0x20000)
      {
        sub_10001507C();
      }

      if (v42 != -1)
      {
        munmap(v42, 0x20000uLL);
      }

      if ((st_size - v40) >= 0x20000)
      {
        v43 = 0x20000;
      }

      else
      {
        v43 = st_size - v40;
      }

      if (st_size > v40)
      {
        v44 = mmap(0, 0x20000uLL, 1, 2, v18, v40);
        if (v44 != -1)
        {
          v45 = v44;
          v91 = v40 + 0x20000;
          [v101 updateWithBytes:v44 length:v43];
          v46 = 0;
          v93 = v45;
          *&buf[16] = v45;
          *&buf[24] = v43;
          goto LABEL_66;
        }

        v38 = [MBError posixErrorWithFormat:@"Failed to mmap the src file"];
        compression_stream_destroy(buf);
        destinationPath = i;
        goto LABEL_49;
      }

      obja = 0;
      *&buf[16] = 0xFFFFFFFFFFFFFFFFLL;
    }

    v91 = v40;
    v93 = v42;
    v46 = 1;
    do
    {
      while (1)
      {
LABEL_66:
        v47 = compression_stream_process(buf, v46);
        v48 = v47;
        if (v47 >= 2)
        {
          v53 = MBGetDefaultLog(v47);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            *v138 = 134218240;
            operationCopy = operation;
            v140 = 2048;
            v141 = v48;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "compression_stream_process(%ld) failed with status:%ld", v138, 0x16u);
            _MBLog(@"Df", "compression_stream_process(%ld) failed with status:%ld", operation, v48);
          }

          if (operation)
          {
            v54 = 11;
          }

          else
          {
            v54 = 10;
          }

          v38 = [MBError errorWithCode:v54 format:@"compression_stream_process failed"];
          *&v114 = 0.0;
          final = 0;
          obj = 0;
          v55 = 0;
          destinationPath = i;
          v42 = v93;
          goto LABEL_92;
        }

        v49 = !*&buf[8] && v47 != 1;
        if (v47 == 1 || !*&buf[8])
        {
          break;
        }

        if (!v49)
        {
          goto LABEL_82;
        }
      }

      if (*buf - v37 > 0x10000uLL)
      {
        sub_100015050();
      }

      if (*&buf[8] > 0x10000uLL)
      {
        sub_100015024();
      }

      if (*&buf[8] != 0x10000)
      {
        v50 = 0x10000 - *&buf[8];
        if (i)
        {
          v51 = write(__fd, v37, v50);
          if (v51 == -1 || v51 != v50)
          {
            if (v51 == -1)
            {
              v80 = *__error();
            }

            else
            {
              v80 = 28;
            }

            v42 = v93;
            v84 = "decompressed";
            if (!operation)
            {
              v84 = "compressed";
            }

            v38 = [MBError errorWithErrno:v80 format:@"Failed to write to the %s file", v84];
            MBDiagnoseFile(v102, v80, "write");
            *&v114 = 0.0;
            final = 0;
            obj = 0;
            v55 = 0;
            destinationPath = i;
            goto LABEL_92;
          }
        }

        [v112 updateWithBytes:v37 length:v50];
        v114 += v50;
      }

      *buf = v37;
      *&buf[8] = 0x10000;
    }

    while (v49);
LABEL_82:
    v52 = v48 == 1;
    destinationPath = i;
    v41 = v103;
    v40 = v91;
    v42 = v93;
    if (!v52)
    {
      goto LABEL_52;
    }

    if (v98)
    {
      final = 0;
    }

    else
    {
      final = [v101 final];
      v85 = final;
    }

    if (v105)
    {
      obj = 0;
    }

    else
    {
      obj = [v112 final];
      v86 = obj;
    }

    v38 = 0;
    v55 = 1;
LABEL_92:
    compression_stream_destroy(buf);
    if (v42 != -1)
    {
      munmap(v42, 0x20000uLL);
    }

    free(v37);
    if (v55)
    {
      v56 = 1;
      v57 = v100;
      v39 = final;
      goto LABEL_98;
    }

    v39 = final;
  }

  v58 = v38;
  v56 = 0;
  v57 = v38;
LABEL_98:

  if ((v98 & 1) == 0)
  {
    objc_storeStrong(location, v39);
  }

  v26 = __fd;
  if ((v105 & 1) == 0)
  {
    objc_storeStrong(v97, obj);
  }

  v22 = v57;

  if (v56)
  {
    v60 = CFAbsoluteTimeGetCurrent();
    v61 = errorCopy;
    if (!destinationPath)
    {
      goto LABEL_108;
    }

    v59 = fstat(__fd, &v117);
    if (v59)
    {
      v62 = [MBError posixErrorWithPath:v102 format:@"Failed to fstat dst file"];
LABEL_132:
      v82 = v62;

      v22 = v82;
      goto LABEL_133;
    }

    if (v117.st_size != v114)
    {
      [MBError errorWithCode:1 path:v102 format:@"Mismatched size (%llu != %llu)", v117.st_size, v114];
    }

    else
    {
LABEL_108:
      if (operation)
      {
        v63 = MBGetDefaultLog(v59);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          encodingMethod = [(MBFileEncodingTask *)self encodingMethod];
          v65 = v118;
          v106 = v119;
          v66 = v60 - Current;
          *buf = 138414594;
          *&buf[4] = v12;
          *&buf[12] = 2112;
          *&buf[14] = v102;
          *&buf[22] = 2048;
          *&buf[24] = encodingMethod;
          *v121 = 2048;
          *&v121[2] = algorithm;
          v122 = 1024;
          v123 = v111;
          v124 = 2048;
          v125 = st_size;
          v126 = 2048;
          v127 = v114;
          v128 = 2048;
          v129 = v66;
          v130 = 2112;
          v131 = v119;
          v132 = 2112;
          v133 = v118;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_INFO, "Finished decompressing, srcPath:%@, dstPath:%@, e:%ld/0x%lx, pc:%d, srcSize:%llu, dstSize:%llu, time:%.3fs, srcDigest:%@, dstDigest:%@", buf, 0x62u);
          v26 = __fd;
          _MBLog(@"I ", "Finished decompressing, srcPath:%@, dstPath:%@, e:%ld/0x%lx, pc:%d, srcSize:%llu, dstSize:%llu, time:%.3fs, srcDigest:%@, dstDigest:%@", v12, v102, [(MBFileEncodingTask *)self encodingMethod], algorithm, v111, st_size, v114, *&v66, *&v106, *&v65);
        }

        goto LABEL_117;
      }

      v67 = -1.0;
      if (v114 < st_size)
      {
        v67 = 1.0 - v114 / st_size;
      }

      v68 = MBGetDefaultLog(v59);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
      {
        encodingMethod2 = [(MBFileEncodingTask *)self encodingMethod];
        v70 = v60 - Current;
        v71 = destinationPath;
        v73 = v118;
        v72 = v119;
        *buf = 138415106;
        *&buf[4] = v12;
        *&buf[12] = 2112;
        *&buf[14] = v102;
        *&buf[22] = 2048;
        *&buf[24] = encodingMethod2;
        *v121 = 2048;
        *&v121[2] = algorithm;
        v122 = 1024;
        v123 = v111;
        v124 = 2048;
        v125 = tv_sec;
        v126 = 2048;
        v127 = st_size;
        v128 = 2048;
        v129 = *&v114;
        v130 = 2048;
        v131 = v67;
        v132 = 2048;
        v133 = v70;
        v134 = 2112;
        v135 = v119;
        v136 = 2112;
        v137 = v118;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "Finished compressing, srcPath:%@, dstPath:%@, e:%ld/0x%lx, pc:%d, srcMTime:%ld, srcSize:%llu, dstSize:%llu, savings:%.3f, time:%.3fs, srcDigest:%@, dstDigest:%@", buf, 0x76u);
        v89 = v72;
        v90 = v73;
        destinationPath = v71;
        v26 = __fd;
        v61 = errorCopy;
        _MBLog(@"I ", "Finished compressing, srcPath:%@, dstPath:%@, e:%ld/0x%lx, pc:%d, srcMTime:%ld, srcSize:%llu, dstSize:%llu, savings:%.3f, time:%.3fs, srcDigest:%@, dstDigest:%@", v12, v102, [(MBFileEncodingTask *)self encodingMethod], algorithm, v111, tv_sec, st_size, v114, *&v67, *&v70, *&v89, *&v90);
      }

      spaceSavingsThreshold = [(MBFileEncodingTask *)self spaceSavingsThreshold];
      [spaceSavingsThreshold doubleValue];
      v76 = v75;

      if (v76 == 0.0)
      {
        goto LABEL_117;
      }

      if (v67 <= 0.0)
      {
        v87 = *&st_size;
        v88 = *&v114;
        v81 = @"Insufficient space savings, srcSize:%llu, dstSize:%llu";
      }

      else
      {
        if (v76 <= 0.0 || v67 >= v76)
        {
LABEL_117:
          [(MBFileEncodingTask *)self setSourceDigest:*&v119];
          [(MBFileEncodingTask *)self setDestinationDigest:*&v118];
          *sizeCopy = v114;
          if (v15 != 7)
          {
LABEL_32:
            v23 = 1;
            if (v26 != -1)
            {
LABEL_135:
              close(v26);
              goto LABEL_15;
            }

            goto LABEL_15;
          }

          v115 = 0;
          v77 = [MBProtectionClassUtils setWithFD:v26 value:7 error:&v115];
          v78 = v115;
          v32 = v78;
          if ((v77 & 1) == 0)
          {
            v79 = MBGetDefaultLog(v78);
            if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *&buf[4] = v102;
              *&buf[12] = 2112;
              *&buf[14] = v32;
              _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "Failed to set Cx protection class, leaving as C on %@, error:%@", buf, 0x16u);
              _MBLog(@"E ", "Failed to set Cx protection class, leaving as C on %@, error:%@", v102, v32);
            }
          }

LABEL_31:

          goto LABEL_32;
        }

        v87 = v67;
        v88 = v76;
        v81 = @"Insufficient space savings: %.3f < %.3f";
      }

      [MBError errorWithCode:1 path:v12 format:v81, *&v87, *&v88];
    }
    v62 = ;
    goto LABEL_132;
  }

  v61 = errorCopy;
LABEL_133:
  v83 = v22;
  *v61 = v22;
  if (v26 != -1)
  {
LABEL_134:
    ftruncate(v26, 0);
    v23 = 0;
    goto LABEL_135;
  }

  v23 = 0;
LABEL_15:
  if (v18 != -1)
  {
    close(v18);
  }

  return v23;
}

- (id)_archive
{
  v105 = 0;
  destinationPath = [(MBFileEncodingTask *)self destinationPath];

  if (!destinationPath)
  {
    v5 = [MBError errorWithCode:1 format:@"Invalid argument: no destination path"];
    goto LABEL_7;
  }

  v104 = 0;
  v4 = sub_100010F08([(MBFileEncodingTask *)self compressionMethod], &v105, &v104);
  v5 = v104;
  if (!v4)
  {
LABEL_7:
    LODWORD(v11) = 0;
    goto LABEL_15;
  }

  sourcePath = [(MBFileEncodingTask *)self sourcePath];
  fileSystemRepresentation = [sourcePath fileSystemRepresentation];

  memset(&v103, 0, sizeof(v103));
  if (stat(fileSystemRepresentation, &v103))
  {
    sourcePath2 = [(MBFileEncodingTask *)self sourcePath];
    v9 = @"Failed to stat src file";
LABEL_5:
    v102 = [MBError posixErrorWithPath:sourcePath2 format:v9];

    LODWORD(v11) = 0;
    goto LABEL_14;
  }

  st_size = v103.st_size;
  tv_sec = v103.st_mtimespec.tv_sec;
  destinationPath2 = [(MBFileEncodingTask *)self destinationPath];
  fileSystemRepresentation2 = [destinationPath2 fileSystemRepresentation];

  [MBProtectionClassUtils sqliteOpenFlagForProtectionClass:[(MBFileEncodingTask *)self protectionClass]];
  encodingMethod = [(MBFileEncodingTask *)self encodingMethod];
  if (encodingMethod != 3 && encodingMethod != 2)
  {
    sub_10001530C();
  }

  v101 = 0;
  v102 = 0;
  Current = CFAbsoluteTimeGetCurrent();
  [(MBFileEncodingTask *)self sourceIsLive];
  v18 = _sqlite3_apple_archive();
  v20 = CFAbsoluteTimeGetCurrent();
  if (v18)
  {
    v11 = MBGetDefaultLog(v19);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      encodingMethod2 = [(MBFileEncodingTask *)self encodingMethod];
      compressionMethod = [(MBFileEncodingTask *)self compressionMethod];
      sourcePath3 = [(MBFileEncodingTask *)self sourcePath];
      destinationPath3 = [(MBFileEncodingTask *)self destinationPath];
      *buf = 67110402;
      *v110 = v18;
      *&v110[4] = 2080;
      *&v110[6] = v102;
      *&v110[14] = 2048;
      *&v110[16] = encodingMethod2;
      *&v110[24] = 2048;
      *&v110[26] = compressionMethod;
      *&v110[34] = 2112;
      *&v110[36] = sourcePath3;
      *&v110[44] = 2112;
      *&v110[46] = destinationPath3;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "_sqlite3_apple_archive failed, rc:%d, msg:%s, e:%ld/%ld, srcPath:%@, dstPath:%@", buf, 0x3Au);

      encodingMethod3 = [(MBFileEncodingTask *)self encodingMethod];
      compressionMethod2 = [(MBFileEncodingTask *)self compressionMethod];
      sourcePath4 = [(MBFileEncodingTask *)self sourcePath];
      destinationPath4 = [(MBFileEncodingTask *)self destinationPath];
      _MBLog(@"F ", "_sqlite3_apple_archive failed, rc:%d, msg:%s, e:%ld/%ld, srcPath:%@, dstPath:%@", v18, v102, encodingMethod3, compressionMethod2, sourcePath4, destinationPath4);
    }

    sourcePath5 = [(MBFileEncodingTask *)self sourcePath];
    v102 = [MBError errorWithCode:10 path:sourcePath5 format:@"_sqlite3_apple_archive failed, rc:%d, %s", v18, v102];

    sqlite3_free(v102);
    LODWORD(v11) = 0;
    v102 = 0;
    goto LABEL_14;
  }

  v33 = v20;
  sqlite3_free(v101);
  if (stat(fileSystemRepresentation2, &v103))
  {
    sourcePath2 = [(MBFileEncodingTask *)self destinationPath];
    v9 = @"Failed to stat dst file";
    goto LABEL_5;
  }

  v11 = v103.st_size;
  if (!v103.st_size)
  {
    v59 = [MBError errorWithCode:1 format:@"Invalid size(0) for SQLite archive"];

    v5 = v59;
LABEL_15:
    if (!v5)
    {
      sub_100015338();
    }

LABEL_16:
    v30 = v5;
    if (!v11)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v100 = 0;
  v99 = v5;
  v34 = sub_100010FDC(v105, &v100, &v99);
  v102 = v99;

  if ((v34 & 1) == 0)
  {
    sub_1000151DC();
  }

  if (!v100)
  {
    sub_100015234();
  }

  if (v100 == 255)
  {
    sub_100015208();
  }

  encodingMethod4 = [(MBFileEncodingTask *)self encodingMethod];
  if (encodingMethod4 != 2)
  {
    encodingMethod4 = [(MBFileEncodingTask *)self encodingMethod];
    if (encodingMethod4 != 3)
    {
      sub_100015260();
    }
  }

  v36 = MBGetDefaultLog(encodingMethod4);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v91 = v102;
    sourcePath6 = [(MBFileEncodingTask *)self sourcePath];
    destinationPath5 = [(MBFileEncodingTask *)self destinationPath];
    encodingMethod5 = [(MBFileEncodingTask *)self encodingMethod];
    v40 = v105;
    protectionClass = [(MBFileEncodingTask *)self protectionClass];
    v42 = 0.0;
    v43 = v11 / st_size;
    *buf = 138414594;
    *v110 = sourcePath6;
    *&v110[8] = 2112;
    *&v110[10] = destinationPath5;
    *&v110[18] = 2048;
    *&v110[20] = encodingMethod5;
    *&v110[28] = 2048;
    *&v110[30] = v40;
    v44 = 1.0 - v43;
    if (v11 > st_size)
    {
      v44 = 0.0;
    }

    if (!st_size)
    {
      v44 = 0.0;
    }

    *&v110[38] = 1024;
    *&v110[40] = protectionClass;
    *&v110[44] = 2048;
    *&v110[46] = tv_sec;
    v111 = 2048;
    v112 = st_size;
    v45 = v33 - Current;
    v113 = 2048;
    v114 = v11;
    v115 = 2048;
    v116 = v44;
    v117 = 2048;
    v118 = v45;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Finished archiving, srcPath:%@, dstPath:%@, e:%ld/0x%lx, pc:%d, srcMTime:%ld, srcSize:%llu, dstSize:%llu, savings:%.3f, time:%.3fs", buf, 0x62u);

    sourcePath7 = [(MBFileEncodingTask *)self sourcePath];
    destinationPath6 = [(MBFileEncodingTask *)self destinationPath];
    encodingMethod6 = [(MBFileEncodingTask *)self encodingMethod];
    v49 = v105;
    protectionClass2 = [(MBFileEncodingTask *)self protectionClass];
    if (st_size && v11 <= st_size)
    {
      v42 = 1.0 - v43;
    }

    _MBLog(@"I ", "Finished archiving, srcPath:%@, dstPath:%@, e:%ld/0x%lx, pc:%d, srcMTime:%ld, srcSize:%llu, dstSize:%llu, savings:%.3f, time:%.3fs", sourcePath7, destinationPath6, encodingMethod6, v49, protectionClass2, tv_sec, st_size, v11, *&v42, *&v45);

    v102 = v91;
  }

  [(MBFileEncodingTask *)self setCompressionMethod:v100];
  [(MBFileEncodingTask *)self setDestinationSize:v11];
  validate = [(MBFileEncodingTask *)self validate];
  if (validate)
  {
    if ((MBIsInternalInstall(validate, v52) & 1) == 0)
    {
      sub_10001528C();
    }

    v98 = 0;
    if ((sub_100010FDC(v105, &v98, 0) & 1) == 0)
    {
      sub_1000152B8();
    }

    v53 = getuid();
    if (!v53)
    {
      v56 = -1;
      v58 = MBTemporaryPath(v53);
LABEL_57:
      if (v58)
      {
        v90 = v56;
        v11 = dispatch_group_create();
        v61 = [MBFileEncodingTask decodingTaskWithEncodingMethod:[(MBFileEncodingTask *)self encodingMethod]];
        destinationPath7 = [(MBFileEncodingTask *)self destinationPath];
        [v61 setSourcePath:destinationPath7];

        [v61 setDestinationPath:v58];
        [v61 setCompressionMethod:v98];
        [v61 setProtectionClass:{-[MBFileEncodingTask protectionClass](self, "protectionClass")}];
        [v61 setGroup:v11];
        [v61 start];
        v89 = v11;
        dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
        error = [v61 error];

        LODWORD(v11) = error == 0;
        if (error)
        {
          v65 = MBGetDefaultLog(v64);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
          {
            destinationPath8 = [(MBFileEncodingTask *)self destinationPath];
            sourcePath8 = [(MBFileEncodingTask *)self sourcePath];
            log = v65;
            encodingMethod7 = [(MBFileEncodingTask *)self encodingMethod];
            v92 = v102;
            v69 = v98;
            error2 = [v61 error];
            *buf = 138413314;
            *v110 = destinationPath8;
            *&v110[8] = 2112;
            *&v110[10] = sourcePath8;
            *&v110[18] = 2048;
            *&v110[20] = encodingMethod7;
            *&v110[28] = 2048;
            *&v110[30] = v69;
            *&v110[38] = 2112;
            *&v110[40] = error2;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Failed to validate the archived SQLite file at %@(%@), e:%ld/0x%lx: %@", buf, 0x34u);

            destinationPath9 = [(MBFileEncodingTask *)self destinationPath];
            sourcePath9 = [(MBFileEncodingTask *)self sourcePath];
            encodingMethod8 = [(MBFileEncodingTask *)self encodingMethod];
            v74 = v98;
            error3 = [v61 error];
            v87 = v74;
            v65 = log;
            v86 = encodingMethod8;
            v102 = v92;
            _MBLog(@"F ", "Failed to validate the archived SQLite file at %@(%@), e:%ld/0x%lx: %@", destinationPath9, sourcePath9, v86, v87, error3);
          }

          error4 = [v61 error];

          v93 = error4;
        }

        else
        {
          v93 = v102;
        }

        v77 = +[NSFileManager defaultManager];
        [v77 removeItemAtPath:v58 error:0];

        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v78 = [&off_100026388 countByEnumeratingWithState:&v94 objects:v106 count:16];
        if (v78)
        {
          v79 = v78;
          v80 = *v95;
          do
          {
            for (i = 0; i != v79; i = i + 1)
            {
              if (*v95 != v80)
              {
                objc_enumerationMutation(&off_100026388);
              }

              v82 = [v58 stringByAppendingString:*(*(&v94 + 1) + 8 * i)];
              v83 = +[NSFileManager defaultManager];
              [v83 removeItemAtPath:v82 error:0];
            }

            v79 = [&off_100026388 countByEnumeratingWithState:&v94 objects:v106 count:16];
          }

          while (v79);
        }

        if (v90 != -1)
        {
          close(v90);
        }

        v102 = v93;
      }

      else
      {
        LODWORD(v11) = 1;
      }

LABEL_14:
      v5 = v102;
      if (v11)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    if (qword_10002A278 != -1)
    {
      sub_1000152E4();
    }

    v54 = [qword_10002A270 getFileSystemRepresentation:buf maxLength:1025];
    if (v54)
    {
      v55 = mkstemp(buf);
      if (v55 != -1)
      {
        v56 = v55;
        v57 = +[NSFileManager defaultManager];
        v58 = [v57 stringWithFileSystemRepresentation:buf length:strlen(buf)];
LABEL_56:

        goto LABEL_57;
      }

      v57 = MBGetDefaultLog(v55);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        v60 = *__error();
        *v107 = 67109120;
        v108 = v60;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "mkstemp failed: %{errno}d", v107, 8u);
        v85 = *__error();
        _MBLog(@"E ", "mkstemp failed: %{errno}d", v85);
      }
    }

    else
    {
      v57 = MBGetDefaultLog(v54);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        *v107 = 0;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_ERROR, "getFileSystemRepresentation failed", v107, 2u);
        _MBLog(@"E ", "getFileSystemRepresentation failed", v84);
      }
    }

    v58 = 0;
    v56 = -1;
    goto LABEL_56;
  }

  v5 = v102;
LABEL_17:
  v30 = 0;
LABEL_18:
  v31 = v30;

  return v31;
}

- (id)_unarchive
{
  destinationPath = [(MBFileEncodingTask *)self destinationPath];

  if (!destinationPath)
  {
    v5 = [MBError errorWithCode:1 format:@"Invalid argument: no destination path"];
    goto LABEL_12;
  }

  v48 = 0;
  v47 = 0;
  v4 = sub_100010F08([(MBFileEncodingTask *)self compressionMethod], &v48, &v47);
  v5 = v47;
  if (!v4)
  {
    goto LABEL_12;
  }

  sourcePath = [(MBFileEncodingTask *)self sourcePath];
  fileSystemRepresentation = [sourcePath fileSystemRepresentation];

  memset(&v46, 0, sizeof(v46));
  if (stat(fileSystemRepresentation, &v46))
  {
    sourcePath2 = [(MBFileEncodingTask *)self sourcePath];
    v9 = @"Failed to stat src file";
LABEL_5:
    v10 = [MBError posixErrorWithPath:sourcePath2 format:v9];

LABEL_11:
    v5 = v10;
LABEL_12:
    v24 = v5;
    if (!v5)
    {
      sub_1000153BC();
    }

    goto LABEL_13;
  }

  st_size = v46.st_size;
  destinationPath2 = [(MBFileEncodingTask *)self destinationPath];
  fileSystemRepresentation2 = [destinationPath2 fileSystemRepresentation];

  [MBProtectionClassUtils sqliteOpenFlagForProtectionClass:[(MBFileEncodingTask *)self protectionClass]];
  v44 = 0;
  v45 = 0;
  Current = CFAbsoluteTimeGetCurrent();
  v15 = _sqlite3_apple_unarchive();
  v17 = CFAbsoluteTimeGetCurrent();
  if (v15)
  {
    v18 = MBGetDefaultLog(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      sourcePath3 = [(MBFileEncodingTask *)self sourcePath];
      destinationPath3 = [(MBFileEncodingTask *)self destinationPath];
      *buf = 67109890;
      *v50 = v15;
      *&v50[4] = 2080;
      *&v50[6] = v45;
      *&v50[14] = 2112;
      *&v50[16] = sourcePath3;
      *&v50[24] = 2112;
      *&v50[26] = destinationPath3;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "_sqlite3_apple_unarchive failed, rc:%d, msg:%s, srcPath:%@, dstPath:%@", buf, 0x26u);

      sourcePath4 = [(MBFileEncodingTask *)self sourcePath];
      destinationPath4 = [(MBFileEncodingTask *)self destinationPath];
      _MBLog(@"F ", "_sqlite3_apple_unarchive failed, rc:%d, msg:%s, srcPath:%@, dstPath:%@", v15, v45, sourcePath4, destinationPath4);
    }

    sourcePath5 = [(MBFileEncodingTask *)self sourcePath];
    v10 = [MBError errorWithCode:11 path:sourcePath5 format:@"_sqlite3_apple_unarchive failed, rc:%d, %s", v15, v45];

    sqlite3_free(v45);
    v45 = 0;
    goto LABEL_11;
  }

  v27 = v17;
  sqlite3_free(v44);
  if (stat(fileSystemRepresentation2, &v46))
  {
    sourcePath2 = [(MBFileEncodingTask *)self destinationPath];
    v9 = @"Failed to stat dst file";
    goto LABEL_5;
  }

  v28 = v46.st_size;
  v43 = 0;
  v42 = v5;
  v29 = sub_100010FDC(v48, &v43, &v42);
  v30 = v42;

  if ((v29 & 1) == 0)
  {
    sub_100015390();
  }

  v32 = MBGetDefaultLog(v31);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    sourcePath6 = [(MBFileEncodingTask *)self sourcePath];
    destinationPath5 = [(MBFileEncodingTask *)self destinationPath];
    encodingMethod = [(MBFileEncodingTask *)self encodingMethod];
    v36 = v48;
    protectionClass = [(MBFileEncodingTask *)self protectionClass];
    v38 = v27 - Current;
    *buf = 138414082;
    *v50 = sourcePath6;
    *&v50[8] = 2112;
    *&v50[10] = destinationPath5;
    *&v50[18] = 2048;
    *&v50[20] = encodingMethod;
    *&v50[28] = 2048;
    *&v50[30] = v36;
    v51 = 1024;
    v52 = protectionClass;
    v53 = 2048;
    v54 = st_size;
    v55 = 2048;
    v56 = v28;
    v57 = 2048;
    v58 = v38;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Finished unarchiving, srcPath:%@, dstPath:%@, e:%ld/0x%lx, pc:%d, srcSize:%llu, dstSize:%llu, time:%.3fs", buf, 0x4Eu);

    sourcePath7 = [(MBFileEncodingTask *)self sourcePath];
    destinationPath6 = [(MBFileEncodingTask *)self destinationPath];
    encodingMethod2 = [(MBFileEncodingTask *)self encodingMethod];
    _MBLog(@"I ", "Finished unarchiving, srcPath:%@, dstPath:%@, e:%ld/0x%lx, pc:%d, srcSize:%llu, dstSize:%llu, time:%.3fs", sourcePath7, destinationPath6, encodingMethod2, v48, [(MBFileEncodingTask *)self protectionClass], st_size, v28, *&v38);
  }

  [(MBFileEncodingTask *)self setCompressionMethod:v43];
  [(MBFileEncodingTask *)self setDestinationSize:v28];
  v24 = 0;
  v5 = v30;
LABEL_13:
  v25 = v24;

  return v24;
}

- (MBFileEncodingTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MBFileEncodingTask;
  v5 = [(MBFileEncodingTask *)&v11 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    -[MBFileEncodingTask setType:](v5, "setType:", [coderCopy decodeIntegerForKey:@"type"]);
    -[MBFileEncodingTask setEncodingMethod:](v5, "setEncodingMethod:", [coderCopy decodeIntegerForKey:@"encodingMethod"]);
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourcePath"];
    [(MBFileEncodingTask *)v5 setSourcePath:v7];

    -[MBFileEncodingTask setSourceIsLive:](v5, "setSourceIsLive:", [coderCopy decodeBoolForKey:@"sourceIsLive"]);
    -[MBFileEncodingTask setCompressionMethod:](v5, "setCompressionMethod:", [coderCopy decodeIntegerForKey:@"compressionMethod"]);
    -[MBFileEncodingTask setProtectionClass:](v5, "setProtectionClass:", [coderCopy decodeIntForKey:@"protectionClass"]);
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"spaceSavingsThreshold"];
    [(MBFileEncodingTask *)v5 setSpaceSavingsThreshold:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destinationPath"];
    [(MBFileEncodingTask *)v5 setDestinationPath:v9];

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [coderCopy encodeInteger:-[MBFileEncodingTask type](self forKey:{"type"), @"type"}];
  [coderCopy encodeInteger:-[MBFileEncodingTask encodingMethod](self forKey:{"encodingMethod"), @"encodingMethod"}];
  sourcePath = [(MBFileEncodingTask *)self sourcePath];
  [coderCopy encodeObject:sourcePath forKey:@"sourcePath"];

  [coderCopy encodeBool:-[MBFileEncodingTask sourceIsLive](self forKey:{"sourceIsLive"), @"sourceIsLive"}];
  [coderCopy encodeInteger:-[MBFileEncodingTask compressionMethod](self forKey:{"compressionMethod"), @"compressionMethod"}];
  [coderCopy encodeInt:-[MBFileEncodingTask protectionClass](self forKey:{"protectionClass"), @"protectionClass"}];
  spaceSavingsThreshold = [(MBFileEncodingTask *)self spaceSavingsThreshold];
  [coderCopy encodeObject:spaceSavingsThreshold forKey:@"spaceSavingsThreshold"];

  destinationPath = [(MBFileEncodingTask *)self destinationPath];
  [coderCopy encodeObject:destinationPath forKey:@"destinationPath"];

  objc_autoreleasePoolPop(v4);
}

@end