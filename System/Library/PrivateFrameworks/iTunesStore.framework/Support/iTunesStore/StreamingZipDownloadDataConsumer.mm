@interface StreamingZipDownloadDataConsumer
- (BOOL)consumeData:(id)data error:(id *)error;
- (BOOL)finish:(id *)finish;
- (StreamingZipDownloadDataConsumer)initWithPath:(id)path options:(id)options;
- (id)_stringWithFileSystemRepresentation:(const char *)representation;
- (id)_stringWithFileSystemRepresentation:(const char *)representation length:(unint64_t)length;
- (unint64_t)_diskUsageForPath:(id)path;
- (unint64_t)diskUsage;
- (void)_initializeExtractorWithPath:(id)path options:(id)options;
- (void)reset;
- (void)suspend;
- (void)truncate;
@end

@implementation StreamingZipDownloadDataConsumer

- (StreamingZipDownloadDataConsumer)initWithPath:(id)path options:(id)options
{
  pathCopy = path;
  optionsCopy = options;
  v16.receiver = self;
  v16.super_class = StreamingZipDownloadDataConsumer;
  v8 = [(StreamingZipDownloadDataConsumer *)&v16 init];
  v9 = v8;
  if (v8)
  {
    [(StreamingZipDownloadDataConsumer *)v8 _initializeExtractorWithPath:pathCopy options:optionsCopy];
    v10 = *(&v9->super._overrideProgress + 1);
    if (v10)
    {
      [v10 setExtractorDelegate:v9];
      v11 = [optionsCopy copy];
      v12 = *(&v9->_hasConsumedData + 1);
      *(&v9->_hasConsumedData + 1) = v11;

      v13 = [pathCopy copy];
      v14 = *(&v9->_options + 1);
      *(&v9->_options + 1) = v13;
    }

    else
    {
      v14 = v9;
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)consumeData:(id)data error:(id *)error
{
  dataCopy = data;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100109F0C;
  v22 = sub_100109F1C;
  v23 = 0;
  v7 = dispatch_semaphore_create(0);
  v8 = *(&self->super._overrideProgress + 1);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100109F24;
  v14[3] = &unk_100328D70;
  v16 = &v18;
  v17 = &v24;
  v9 = v7;
  v15 = v9;
  [v8 supplyBytes:dataCopy withCompletionBlock:v14];
  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v10 = v25;
  if (BYTE1(self->_extractor))
  {
    v11 = 1;
  }

  else
  {
    v11 = *(v25 + 24);
  }

  BYTE1(self->_extractor) = v11 & 1;
  v12 = *(v10 + 24);
  if (error && (v10[3] & 1) == 0)
  {
    *error = v19[5];
    v12 = *(v25 + 24);
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v12 & 1;
}

- (unint64_t)diskUsage
{
  result = [(StreamingZipDownloadDataConsumer *)self resumptionOffset];
  if (result)
  {
    v4 = *(&self->_options + 1);

    return [(StreamingZipDownloadDataConsumer *)self _diskUsageForPath:v4];
  }

  return result;
}

- (BOOL)finish:(id *)finish
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100109F0C;
  v18 = sub_100109F1C;
  v19 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = *(&self->super._overrideProgress + 1);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10010A17C;
  v10[3] = &unk_100328D98;
  v12 = &v14;
  v13 = &v20;
  v7 = v5;
  v11 = v7;
  [v6 finishStreamWithCompletionBlock:v10];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = *(v21 + 24);
  if (finish && (v21[3] & 1) == 0)
  {
    *finish = v15[5];
    v8 = *(v21 + 24);
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
  return v8 & 1;
}

- (void)reset
{
  [(StreamingZipDownloadDataConsumer *)self suspend];
  [(StreamingZipDownloadDataConsumer *)self _initializeExtractorWithPath:*(&self->_options + 1) options:*(&self->_hasConsumedData + 1)];
  BYTE1(self->_extractor) = *(&self->_percentComplete + 1) != 0;
}

- (void)suspend
{
  v3 = dispatch_semaphore_create(0);
  v4 = *(&self->super._overrideProgress + 1);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10010A340;
  v6[3] = &unk_100328DC0;
  v7 = v3;
  v5 = v3;
  [v4 suspendStreamWithCompletionBlock:v6];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)truncate
{
  [(StreamingZipDownloadDataConsumer *)self suspend];
  v3 = objc_alloc_init(NSFileManager);
  [v3 removeItemAtPath:*(&self->_options + 1) error:0];
  [(StreamingZipDownloadDataConsumer *)self _initializeExtractorWithPath:*(&self->_options + 1) options:*(&self->_hasConsumedData + 1)];
  BYTE1(self->_extractor) = *(&self->_percentComplete + 1) != 0;
}

- (void)_initializeExtractorWithPath:(id)path options:(id)options
{
  optionsCopy = options;
  pathCopy = path;
  v8 = [objc_alloc(ISWeakLinkedClassForString()) initWithPath:pathCopy options:optionsCopy];

  v9 = *(&self->super._overrideProgress + 1);
  *(&self->super._overrideProgress + 1) = v8;

  v10 = objc_alloc_init(SSPromise);
  v11 = *(&self->super._overrideProgress + 1);
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_10010A4F8;
  v16 = &unk_100328DE8;
  selfCopy = self;
  v18 = v10;
  v12 = v10;
  [v11 prepareForExtraction:&v13];
  [v12 waitUntilFinished];
}

- (unint64_t)_diskUsageForPath:(id)path
{
  pathCopy = path;
  v4 = [NSMutableSet setWithCapacity:0];
  v5 = [NSMutableArray arrayWithCapacity:1];
  v95 = 0;
  v97 = 0;
  v94 = 0xA200000900000005;
  v96 = 0x500000002;
  v6 = malloc_type_malloc(0x8000uLL, 0xF218F1B2uLL);
  v86 = pathCopy;
  if (pathCopy)
  {
    [v5 addObject:pathCopy];
    goto LABEL_16;
  }

  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 & 2;
  }

  if (!v11)
  {
    goto LABEL_14;
  }

  v98 = 138412290;
  v99 = objc_opt_class();
  v12 = v99;
  v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Can't calculate usage if no path given", &v98, 12, 0);

  if (v13)
  {
    oSLogObject = [NSString stringWithCString:v13 encoding:4];
    free(v13);
    v83 = oSLogObject;
    SSFileLog();
LABEL_14:
  }

LABEL_16:
  if ([v5 count])
  {
    v91 = 0;
    v90 = v4;
    v89 = v5;
    v87 = v6;
    while (1)
    {
      v14 = [v5 objectAtIndex:{0, v84}];
      [v5 removeObjectAtIndex:0];
      v93 = v14;
      v15 = open([v14 fileSystemRepresentation], 1048832);
      if ((v15 & 0x80000000) == 0)
      {
        v88 = v15;
        v16 = 0;
LABEL_20:
        v6 = v87;
        while (1)
        {
          v17 = getattrlistbulk(v88, &v94, v87, 0x8000uLL, 0);
          if (v17 == -1)
          {
            break;
          }

          v18 = v17;
          if (!v17)
          {
            goto LABEL_132;
          }

          if (v17 >= 1)
          {
            v19 = v87;
            while (1)
            {
              v21 = *v19;
              v20 = v19[1];
              v22 = v19[4];
              if ((v20 & 0x20000000) != 0)
              {
                if (v19[6])
                {
                  v40 = +[SSLogConfig sharedDaemonConfig];
                  if (!v40)
                  {
                    v40 = +[SSLogConfig sharedConfig];
                  }

                  shouldLog2 = [v40 shouldLog];
                  if ([v40 shouldLogToDisk])
                  {
                    shouldLog2 |= 2u;
                  }

                  oSLogObject2 = [v40 OSLogObject];
                  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
                  {
                    v43 = shouldLog2;
                  }

                  else
                  {
                    v43 = shouldLog2 & 2;
                  }

                  if (v43)
                  {
                    v44 = objc_opt_class();
                    v45 = v44;
                    v46 = __error();
                    v47 = strerror(*v46);
                    v98 = 138413058;
                    v99 = v44;
                    v100 = 2080;
                    v101 = v47;
                    v102 = 2048;
                    v103 = v16;
                    v104 = 2112;
                    v105 = v93;
                    LODWORD(v85) = 42;
                    v48 = _os_log_send_and_compose_impl(v43, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Got error %s while processing entry %llu in %@", &v98, v85);

                    goto LABEL_100;
                  }

                  goto LABEL_102;
                }

                v23 = (v19 + 7);
                if ((v20 & 1) == 0)
                {
LABEL_27:
                  v24 = 0;
                  v25 = 0xFFFFFFFFLL;
                  if ((v20 & 8) != 0)
                  {
                    goto LABEL_28;
                  }

                  goto LABEL_55;
                }
              }

              else
              {
                v23 = (v19 + 6);
                if ((v20 & 1) == 0)
                {
                  goto LABEL_27;
                }
              }

              v49 = v23[1];
              v24 = v23 + *v23;
              v23 += 2;
              v25 = (v49 - 1);
              if ((v20 & 8) != 0)
              {
LABEL_28:
                v26 = *v23++;
                v27 = v26 == 2;
                if ((v20 & 0x2000000) != 0)
                {
                  goto LABEL_29;
                }

                goto LABEL_56;
              }

LABEL_55:
              v27 = 0;
              if ((v20 & 0x2000000) != 0)
              {
LABEL_29:
                v29 = *v23;
                v23 += 2;
                v28 = v29;
                if (v27)
                {
                  goto LABEL_57;
                }

                goto LABEL_30;
              }

LABEL_56:
              v28 = 0;
              if (v27)
              {
LABEL_57:
                if ((v19[3] & 2) != 0 && !*v23)
                {
                  v40 = +[SSLogConfig sharedDaemonConfig];
                  if (!v40)
                  {
                    v40 = +[SSLogConfig sharedConfig];
                  }

                  LODWORD(v60) = [v40 shouldLog];
                  if ([v40 shouldLogToDisk])
                  {
                    LODWORD(v60) = v60 | 2;
                  }

                  oSLogObject2 = [v40 OSLogObject];
                  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
                  {
                    v60 = v60;
                  }

                  else
                  {
                    v60 &= 2u;
                  }

                  if (v60)
                  {
                    v61 = objc_opt_class();
                    v98 = 138412802;
                    v99 = v61;
                    v100 = 2112;
                    v101 = v93;
                    v102 = 2080;
                    v103 = v24;
                    v55 = v61;
                    LODWORD(v85) = 32;
                    v56 = _os_log_send_and_compose_impl(v60, 0, 0, 0, &_mh_execute_header, oSLogObject2, 2, "%@: Skipping empty directory at %@/%s", &v98, v85);
LABEL_99:
                    v48 = v56;

LABEL_100:
                    if (v48)
                    {
                      oSLogObject2 = [NSString stringWithCString:v48 encoding:4];
                      free(v48);
                      v84 = oSLogObject2;
                      SSFileLog();
                      goto LABEL_102;
                    }

LABEL_103:

                    goto LABEL_104;
                  }

LABEL_102:

                  goto LABEL_103;
                }

                if (!v24)
                {
                  v40 = +[SSLogConfig sharedDaemonConfig];
                  if (!v40)
                  {
                    v40 = +[SSLogConfig sharedConfig];
                  }

                  LODWORD(v53) = [v40 shouldLog];
                  if ([v40 shouldLogToDisk])
                  {
                    LODWORD(v53) = v53 | 2;
                  }

                  oSLogObject2 = [v40 OSLogObject];
                  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
                  {
                    v53 = v53;
                  }

                  else
                  {
                    v53 &= 2u;
                  }

                  if (v53)
                  {
                    v54 = objc_opt_class();
                    v98 = 138412802;
                    v99 = v54;
                    v100 = 2048;
                    v101 = v16;
                    v102 = 2112;
                    v103 = v93;
                    v55 = v54;
                    LODWORD(v85) = 32;
                    v56 = _os_log_send_and_compose_impl(v53, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Failed to get name for directory item %llu in %@; not counting its children", &v98, v85);
                    goto LABEL_99;
                  }

                  goto LABEL_102;
                }

                v32 = objc_autoreleasePoolPush();
                v50 = [(StreamingZipDownloadDataConsumer *)self _stringWithFileSystemRepresentation:v24 length:v25];
                v33 = [v93 stringByAppendingPathComponent:v50];

                if (v33)
                {
                  v51 = v89;
                  goto LABEL_75;
                }

                v34 = +[SSLogConfig sharedDaemonConfig];
                if (!v34)
                {
                  v34 = +[SSLogConfig sharedConfig];
                }

                LODWORD(v57) = [v34 shouldLog];
                if ([v34 shouldLogToDisk])
                {
                  LODWORD(v57) = v57 | 2;
                }

                oSLogObject3 = [v34 OSLogObject];
                if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
                {
                  v57 = v57;
                }

                else
                {
                  v57 &= 2u;
                }

                if (!v57)
                {
                  goto LABEL_87;
                }

                v58 = objc_opt_class();
                v98 = 138412802;
                v99 = v58;
                v100 = 2080;
                v101 = v24;
                v102 = 2112;
                v103 = v93;
                v38 = v58;
                LODWORD(v85) = 32;
                v39 = _os_log_send_and_compose_impl(v57, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%@: Failed to create path to child directory by appending %s to %@", &v98, v85);
LABEL_85:
                v59 = v39;

                if (v59)
                {
                  oSLogObject3 = [NSString stringWithCString:v59 encoding:4];
                  free(v59);
                  v84 = oSLogObject3;
                  SSFileLog();
                  goto LABEL_87;
                }

LABEL_88:

LABEL_89:
                objc_autoreleasePoolPop(v32);
                goto LABEL_104;
              }

LABEL_30:
              if (v22)
              {
                v52 = *v23++;
                v30 = v52 == 1;
                if ((v22 & 4) != 0)
                {
LABEL_32:
                  v31 = *v23;
                  if (!v30)
                  {
                    goto LABEL_33;
                  }

                  goto LABEL_64;
                }
              }

              else
              {
                v30 = 0;
                if ((v22 & 4) != 0)
                {
                  goto LABEL_32;
                }
              }

              v31 = 0;
              if (!v30)
              {
LABEL_33:
                v32 = objc_autoreleasePoolPush();
                v33 = [NSNumber numberWithUnsignedLongLong:v28];
                if ([v90 containsObject:v33])
                {
                  v34 = +[SSLogConfig sharedDaemonConfig];
                  if (!v34)
                  {
                    v34 = +[SSLogConfig sharedConfig];
                  }

                  LODWORD(v35) = [v34 shouldLog];
                  if ([v34 shouldLogToDisk])
                  {
                    LODWORD(v35) = v35 | 2;
                  }

                  oSLogObject3 = [v34 OSLogObject];
                  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
                  {
                    v35 = v35;
                  }

                  else
                  {
                    v35 &= 2u;
                  }

                  if (v35)
                  {
                    v37 = objc_opt_class();
                    v98 = 138412802;
                    v99 = v37;
                    v100 = 2112;
                    v101 = v93;
                    v102 = 2080;
                    v103 = v24;
                    v38 = v37;
                    LODWORD(v85) = 32;
                    v39 = _os_log_send_and_compose_impl(v35, 0, 0, 0, &_mh_execute_header, oSLogObject3, 2, "%@: Skipping hardlinked file at %@/%s", &v98, v85);
                    goto LABEL_85;
                  }

LABEL_87:

                  goto LABEL_88;
                }

                v91 += v31;
                v51 = v90;
LABEL_75:
                [v51 addObject:{v33, v84}];
                goto LABEL_89;
              }

LABEL_64:
              v91 += v31;
LABEL_104:
              v19 = (v19 + v21);
              ++v16;
              if (!--v18)
              {
                goto LABEL_20;
              }
            }
          }
        }

        v72 = +[SSLogConfig sharedDaemonConfig];
        if (!v72)
        {
          v72 = +[SSLogConfig sharedConfig];
        }

        shouldLog3 = [v72 shouldLog];
        if ([v72 shouldLogToDisk])
        {
          v74 = shouldLog3 | 2;
        }

        else
        {
          v74 = shouldLog3;
        }

        oSLogObject4 = [v72 OSLogObject];
        if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
        {
          v76 = v74;
        }

        else
        {
          v76 = v74 & 2;
        }

        if (v76)
        {
          v77 = objc_opt_class();
          v78 = v77;
          v79 = __error();
          v80 = strerror(*v79);
          v98 = 138413058;
          v99 = v77;
          v100 = 2048;
          v101 = v16;
          v102 = 2112;
          v103 = v93;
          v104 = 2080;
          v105 = v80;
          LODWORD(v85) = 42;
          v81 = _os_log_send_and_compose_impl(v76, 0, 0, 0, &_mh_execute_header, oSLogObject4, 0, "%@: getattrlistbulk on entry %llu in %@ returned error %s", &v98, v85);

          if (v81)
          {
            oSLogObject4 = [NSString stringWithCString:v81 encoding:4];
            free(v81);
            v84 = oSLogObject4;
            SSFileLog();
            goto LABEL_130;
          }
        }

        else
        {
LABEL_130:
        }

LABEL_132:
        close(v88);
        v4 = v90;
        v5 = v89;
        goto LABEL_133;
      }

      v62 = +[SSLogConfig sharedDaemonConfig];
      if (!v62)
      {
        v62 = +[SSLogConfig sharedConfig];
      }

      shouldLog4 = [v62 shouldLog];
      if ([v62 shouldLogToDisk])
      {
        v64 = shouldLog4 | 2;
      }

      else
      {
        v64 = shouldLog4;
      }

      oSLogObject5 = [v62 OSLogObject];
      if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
      {
        v66 = v64;
      }

      else
      {
        v66 = v64 & 2;
      }

      if (!v66)
      {
        goto LABEL_117;
      }

      v67 = objc_opt_class();
      v68 = v67;
      v69 = __error();
      v70 = strerror(*v69);
      v98 = 138412802;
      v99 = v67;
      v100 = 2112;
      v101 = v93;
      v102 = 2080;
      v103 = v70;
      LODWORD(v85) = 32;
      v71 = _os_log_send_and_compose_impl(v66, 0, 0, 0, &_mh_execute_header, oSLogObject5, 0, "%@: Failed to open directory %@: %s", &v98, v85);

      if (v71)
      {
        break;
      }

LABEL_118:

LABEL_133:
      if (![v5 count])
      {
        goto LABEL_136;
      }
    }

    oSLogObject5 = [NSString stringWithCString:v71 encoding:4];
    free(v71);
    v84 = oSLogObject5;
    SSFileLog();
LABEL_117:

    goto LABEL_118;
  }

  v91 = 0;
LABEL_136:
  free(v6);

  return v91;
}

- (id)_stringWithFileSystemRepresentation:(const char *)representation
{
  v5 = strlen(representation);

  return [(StreamingZipDownloadDataConsumer *)self _stringWithFileSystemRepresentation:representation length:v5];
}

- (id)_stringWithFileSystemRepresentation:(const char *)representation length:(unint64_t)length
{
  v6 = +[NSFileManager defaultManager];
  v7 = [v6 stringWithFileSystemRepresentation:representation length:length];

  return v7;
}

@end