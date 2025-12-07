@interface CheckHashesOperation
- (CheckHashesOperation)initWithFilePath:(id)path hashes:(id)hashes bytesToHash:(int64_t)hash;
- (NSArray)hashes;
- (NSString)filePath;
- (void)dealloc;
- (void)run;
@end

@implementation CheckHashesOperation

- (CheckHashesOperation)initWithFilePath:(id)path hashes:(id)hashes bytesToHash:(int64_t)hash
{
  v11.receiver = self;
  v11.super_class = CheckHashesOperation;
  v8 = [(CheckHashesOperation *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_bytesToHash = hash;
    v8->_filePath = [path copy];
    v9->_hashes = [hashes copy];
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CheckHashesOperation;
  [(CheckHashesOperation *)&v3 dealloc];
}

- (NSString)filePath
{
  v2 = self->_filePath;

  return v2;
}

- (NSArray)hashes
{
  v2 = self->_hashes;

  return v2;
}

- (void)run
{
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    shouldLog |= 2u;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v6 = shouldLog;
  }

  else
  {
    v6 = shouldLog & 2;
  }

  if (v6)
  {
    v7 = objc_opt_class();
    v8 = [(NSArray *)self->_hashes count];
    bytesToHash = self->_bytesToHash;
    filePath = self->_filePath;
    v82.st_dev = 138413058;
    *&v82.st_mode = v7;
    WORD2(v82.st_ino) = 2048;
    *(&v82.st_ino + 6) = v8;
    HIWORD(v82.st_gid) = 2048;
    *&v82.st_rdev = bytesToHash;
    LOWORD(v82.st_atimespec.tv_sec) = 2112;
    *(&v82.st_atimespec.tv_sec + 2) = filePath;
    v11 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Checking %lu hashes with chunk size: %lld for file: %@", &v82, 42);
    if (v11)
    {
      v12 = v11;
      v13 = [NSString stringWithCString:v11 encoding:4];
      free(v12);
      v57 = v13;
      SSFileLog();
    }
  }

  v14 = open([(NSString *)self->_filePath fileSystemRepresentation], 0);
  if (v14 == -1)
  {
    __error();
    v68 = SSError();
    v35 = +[SSLogConfig sharedDaemonConfig];
    if (!v35)
    {
      v35 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v35 shouldLog];
    if ([v35 shouldLogToDisk])
    {
      shouldLog2 |= 2u;
    }

    oSLogObject2 = [v35 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v34 = shouldLog2;
    }

    else
    {
      v34 = shouldLog2 & 2;
    }

    if (v34)
    {
      v38 = objc_opt_class();
      v82.st_dev = 138412546;
      *&v82.st_mode = v38;
      WORD2(v82.st_ino) = 2112;
      *(&v82.st_ino + 6) = v68;
      LODWORD(v59) = 22;
      v39 = _os_log_send_and_compose_impl(v34, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Could not open asset to check hashes: %@", &v82, v59);
      if (v39)
      {
        v40 = v39;
        v41 = [NSString stringWithCString:v39 encoding:4];
        free(v40);
        v58 = v41;
        SSFileLog();
      }

      v34 = 0;
    }
  }

  else
  {
    v15 = v14;
    st_size = self->_bytesToHash;
    memset(&v82, 0, sizeof(v82));
    if (!fstat(v14, &v82))
    {
      st_size = v82.st_size;
    }

    v17 = self->_bytesToHash;
    selfCopy = self;
    if ([(NSArray *)self->_hashes count]== 1)
    {
      v19 = st_size;
    }

    else
    {
      v19 = v17;
    }

    v20 = OBJC_IVAR___ISOperation__progress;
    [*&selfCopy->ISOperation_opaque[OBJC_IVAR___ISOperation__progress] setMaxValue:st_size];
    v63 = v20;
    [*&selfCopy->ISOperation_opaque[v20] setUnits:1];
    v21 = malloc_type_malloc(0x20000uLL, 0x494493A7uLL);
    v67 = selfCopy;
    if (v21)
    {
      v22 = v21;
      memset(&c, 0, sizeof(c));
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      obj = selfCopy->_hashes;
      v62 = [(NSArray *)obj countByEnumeratingWithState:&v69 objects:v80 count:16];
      if (v62)
      {
        v23 = 0;
        v68 = 0;
        v61 = *v70;
        while (2)
        {
          v24 = 0;
          do
          {
            if (*v70 != v61)
            {
              objc_enumerationMutation(obj);
            }

            v64 = v24;
            v65 = *(*(&v69 + 1) + 8 * v24);
            v66 = objc_alloc_init(NSAutoreleasePool);
            CC_MD5_Init(&c);
            v25 = 0;
            LOBYTE(v24) = 1;
            do
            {
              if (v19 <= v25)
              {
                break;
              }

              v26 = (v19 - v25) >= 0x20000 ? 0x20000 : v19 - v25;
              v27 = read(v15, v22, v26);
              if (v27 < 0)
              {
                v28 = v15;

                __error();
                v68 = SSError();
                v29 = +[SSLogConfig sharedDaemonConfig];
                if (!v29)
                {
                  v29 = +[SSLogConfig sharedConfig];
                }

                LODWORD(v24) = [v29 shouldLog];
                if ([v29 shouldLogToDisk])
                {
                  LODWORD(v24) = v24 | 2;
                }

                oSLogObject3 = [v29 OSLogObject];
                if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
                {
                  v24 = v24;
                }

                else
                {
                  v24 &= 2u;
                }

                if (v24)
                {
                  v31 = objc_opt_class();
                  v73 = 138412546;
                  v74 = v31;
                  v75 = 2112;
                  v76 = v68;
                  LODWORD(v59) = 22;
                  v24 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%@: Read failed during hash check: %@", &v73, v59);
                  if (v24)
                  {
                    v32 = [NSString stringWithCString:v24 encoding:4];
                    free(v24);
                    v58 = v32;
                    SSFileLog();
                    LOBYTE(v24) = 0;
                  }
                }

                v15 = v28;
              }

              else
              {
                CC_MD5_Update(&c, v22, v27);
                v25 += v27;
                v23 += v27;
              }
            }

            while (v27 >= v26);
            if ((v24 & 1) == 0)
            {
              goto LABEL_82;
            }

            CC_MD5_Final(md, &c);
            v33 = ISStringFromDigest();
            if (([v33 isEqualToString:v65] & 1) == 0)
            {
              v48 = v15;
              v49 = +[SSLogConfig sharedDaemonConfig];
              if (!v49)
              {
                v49 = +[SSLogConfig sharedConfig];
              }

              shouldLog3 = [v49 shouldLog];
              if ([v49 shouldLogToDisk])
              {
                shouldLog3 |= 2u;
              }

              oSLogObject4 = [v49 OSLogObject];
              if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
              {
                v52 = shouldLog3;
              }

              else
              {
                v52 = shouldLog3 & 2;
              }

              if (v52)
              {
                v53 = objc_opt_class();
                v73 = 138412802;
                v74 = v53;
                v75 = 2112;
                v76 = v33;
                v77 = 2112;
                v78 = v65;
                LODWORD(v59) = 32;
                v54 = _os_log_send_and_compose_impl(v52, 0, 0, 0, &_mh_execute_header, oSLogObject4, 0, "%@: Got md5: %@ when expecting md5: %@", &v73, v59);
                if (v54)
                {
                  v55 = v54;
                  v56 = [NSString stringWithCString:v54 encoding:4];
                  free(v55);
                  v58 = v56;
                  SSFileLog();
                }
              }

              v68 = SSError();
              LODWORD(v15) = v48;
LABEL_82:
              [v66 drain];
              v34 = 0;
              goto LABEL_83;
            }

            [*&v67->ISOperation_opaque[v63] setCurrentValue:v23];
            [*&v67->ISOperation_opaque[v63] snapshot];
            [(CheckHashesOperation *)v67 sendProgressToDelegate];
            [v66 drain];
            v24 = v64 + 1;
          }

          while ((v64 + 1) != v62);
          v34 = 1;
          v62 = [(NSArray *)obj countByEnumeratingWithState:&v69 objects:v80 count:16];
          if (v62)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v68 = 0;
        v34 = 1;
      }

LABEL_83:
      free(v22);
      self = v67;
    }

    else
    {
      v42 = +[SSLogConfig sharedDaemonConfig];
      if (!v42)
      {
        v42 = +[SSLogConfig sharedConfig];
      }

      shouldLog4 = [v42 shouldLog];
      if ([v42 shouldLogToDisk])
      {
        shouldLog4 |= 2u;
      }

      oSLogObject5 = [v42 OSLogObject];
      if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
      {
        v34 = shouldLog4;
      }

      else
      {
        v34 = shouldLog4 & 2;
      }

      self = v67;
      if (v34)
      {
        c.A = 138412290;
        *&c.B = objc_opt_class();
        LODWORD(v59) = 12;
        v45 = _os_log_send_and_compose_impl(v34, 0, 0, 0, &_mh_execute_header, oSLogObject5, 0, "%@: Could not malloc data buffer to check hashes", &c, v59);
        if (v45)
        {
          v46 = v45;
          v47 = [NSString stringWithCString:v45 encoding:4];
          free(v46);
          v58 = v47;
          SSFileLog();
        }

        v34 = 0;
      }

      v68 = 0;
    }

    close(v15);
  }

  [(CheckHashesOperation *)self setError:v68, v58];
  [(CheckHashesOperation *)self setSuccess:v34];
}

@end