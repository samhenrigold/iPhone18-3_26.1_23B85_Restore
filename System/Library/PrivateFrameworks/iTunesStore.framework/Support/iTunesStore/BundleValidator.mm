@interface BundleValidator
- (BOOL)_extraMetaDataFromBOM:(id)m error:(id *)error;
- (BOOL)_verifyBundleIdentfiier:(id)identfiier bundleVersion:(id)version packagePath:(id)path;
- (BOOL)validate:(id *)validate;
- (id)_createScratchDirectory;
- (id)_newBOMCopierOptions;
- (void)_removeScratchDirectory:(id)directory;
@end

@implementation BundleValidator

- (BOOL)validate:(id *)validate
{
  if (self->_sourceURL)
  {
    validateCopy = validate;
    v5 = +[NSFileManager defaultManager];
    BYTE3(v108) = 0;
    v6 = [v5 fileExistsAtPath:self->_sourceURL isDirectory:&v108 + 3];
    v7 = [NSURL URLWithString:self->_sourceURL];
    BYTE4(v108) = 110;
    v8 = getxattr([v7 fileSystemRepresentation], "com.apple.streamingzip.incomplete_extraction", &v108 + 4, 1uLL, 0, 1);
    if (v8 == -1)
    {
      if (*__error() == 93)
      {
        goto LABEL_42;
      }

      if (*__error() == 34)
      {
        goto LABEL_4;
      }
    }

    else if ((v8 & 0x8000000000000000) == 0)
    {
LABEL_4:

      v9 = +[SSLogConfig sharedDaemonConfig];
      if (!v9)
      {
        v9 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        v11 = shouldLog | 2;
      }

      else
      {
        v11 = shouldLog;
      }

      oSLogObject = [v9 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v13 = v11;
      }

      else
      {
        v13 = v11 & 2;
      }

      if (!v13)
      {
        goto LABEL_115;
      }

      v14 = objc_opt_class();
      bundleIdentifier = self->_bundleIdentifier;
      sourceURL = self->_sourceURL;
      v109 = 138412802;
      v110 = v14;
      v111 = 2112;
      v112 = bundleIdentifier;
      *v113 = 2112;
      *&v113[2] = sourceURL;
      v17 = v14;
      v18 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "%@: Download was incomplete for bundlerIdenfier: %@ path: %@", &v109, 32);
LABEL_113:
      v81 = v18;

      if (!v81)
      {
        goto LABEL_116;
      }

      oSLogObject = [NSString stringWithCString:v81 encoding:4];
      free(v81);
      SSFileLog();
LABEL_115:

LABEL_116:
      v27 = 0;
      v19 = 0;
      if (validateCopy)
      {
        goto LABEL_117;
      }

      goto LABEL_119;
    }

    v28 = +[SSLogConfig sharedDaemonConfig];
    if (!v28)
    {
      v28 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v28 shouldLog];
    if ([v28 shouldLogToDisk])
    {
      LODWORD(v30) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v30) = shouldLog2;
    }

    oSLogObject2 = [v28 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v30 = v30;
    }

    else
    {
      v30 &= 2u;
    }

    if (v30)
    {
      v32 = v5;
      v33 = validateCopy;
      fileSystemRepresentation = [v7 fileSystemRepresentation];
      v35 = __error();
      v36 = strerror(*v35);
      v109 = 136315650;
      v110 = "com.apple.streamingzip.incomplete_extraction";
      v111 = 2080;
      v112 = fileSystemRepresentation;
      validateCopy = v33;
      v5 = v32;
      *v113 = 2080;
      *&v113[2] = v36;
      v37 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &_mh_execute_header, oSLogObject2, 16, "Got unknown error from getxattr when checking for %s on %s : %s", &v109, 32, v107);

      if (!v37)
      {
LABEL_41:

LABEL_42:
        if (v6)
        {
          if ((BYTE3(v108) & 1) == 0)
          {
            v38 = [NSURL URLWithString:self->_sourceURL];
            HIDWORD(v108) = 0;
            v39 = open([v38 fileSystemRepresentation], 256);
            if ((v39 & 0x80000000) == 0)
            {
              v40 = v39;
              v41 = read(v39, &v108 + 4, 4uLL);
              if (v41 == 4)
              {
                if (HIDWORD(v108) == 67324752)
                {
                  close(v40);

                  _createScratchDirectory = [(BundleValidator *)self _createScratchDirectory];
                  if (_createScratchDirectory)
                  {
                    v43 = [NSURL URLWithString:_createScratchDirectory];
                    v107 = 0;
                    v44 = [(BundleValidator *)self _extraMetaDataFromBOM:v43 error:&v107];
                    v19 = v107;

                    if (v44)
                    {
                      if ([(BundleValidator *)self _verifyBundleIdentfiier:self->_bundleIdentifier bundleVersion:self->_bundleVersion packagePath:_createScratchDirectory])
                      {
                        v45 = 1;
                      }

                      else
                      {
                        v103 = [NSError errorWithDomain:SSErrorDomain code:143 userInfo:0];

                        v45 = 0;
                        v19 = v103;
                      }

                      goto LABEL_149;
                    }

LABEL_134:
                    v94 = +[SSLogConfig sharedDaemonConfig];
                    if (!v94)
                    {
                      v94 = +[SSLogConfig sharedConfig];
                    }

                    shouldLog3 = [v94 shouldLog];
                    if ([v94 shouldLogToDisk])
                    {
                      v96 = shouldLog3 | 2;
                    }

                    else
                    {
                      v96 = shouldLog3;
                    }

                    oSLogObject3 = [v94 OSLogObject];
                    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
                    {
                      v98 = v96;
                    }

                    else
                    {
                      v98 = v96 & 2;
                    }

                    if (v98)
                    {
                      v99 = objc_opt_class();
                      v100 = self->_bundleIdentifier;
                      v109 = 138412546;
                      v110 = v99;
                      v111 = 2112;
                      v112 = v100;
                      v101 = v99;
                      LODWORD(v106) = 22;
                      v102 = _os_log_send_and_compose_impl(v98, 0, 0, 0, &_mh_execute_header, oSLogObject3, 16, "%@: Failed to extract Info.plist for bundleIdentifier: %@", &v109, v106);

                      if (!v102)
                      {
                        goto LABEL_146;
                      }

                      oSLogObject3 = [NSString stringWithCString:v102 encoding:4];
                      free(v102);
                      v104 = oSLogObject3;
                      SSFileLog();
                    }

LABEL_146:
                    v45 = 0;
                    v27 = 0;
                    if (!_createScratchDirectory)
                    {
LABEL_150:

                      if (validateCopy)
                      {
LABEL_117:
                        if (!v27)
                        {
                          v82 = v19;
                          v27 = 0;
                          *validateCopy = v19;
                        }
                      }

LABEL_119:

                      goto LABEL_120;
                    }

LABEL_149:
                    [(BundleValidator *)self _removeScratchDirectory:_createScratchDirectory, v104];
                    v27 = v45;
                    goto LABEL_150;
                  }

                  v84 = +[SSLogConfig sharedDaemonConfig];
                  if (!v84)
                  {
                    v84 = +[SSLogConfig sharedConfig];
                  }

                  shouldLog4 = [v84 shouldLog];
                  if ([v84 shouldLogToDisk])
                  {
                    v86 = shouldLog4 | 2;
                  }

                  else
                  {
                    v86 = shouldLog4;
                  }

                  oSLogObject4 = [v84 OSLogObject];
                  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
                  {
                    v88 = v86;
                  }

                  else
                  {
                    v88 = v86 & 2;
                  }

                  if (v88)
                  {
                    v89 = objc_opt_class();
                    v90 = self->_bundleIdentifier;
                    v91 = self->_sourceURL;
                    v109 = 138412802;
                    v110 = v89;
                    v111 = 2112;
                    v112 = v90;
                    *v113 = 2112;
                    *&v113[2] = v91;
                    v92 = v89;
                    LODWORD(v106) = 32;
                    v93 = _os_log_send_and_compose_impl(v88, 0, 0, 0, &_mh_execute_header, oSLogObject4, 16, "%@: Invalid scratch directory for bundlerIdenfier: %@ path: %@", &v109, v106);

                    if (!v93)
                    {
LABEL_133:

                      v19 = 0;
                      goto LABEL_134;
                    }

                    oSLogObject4 = [NSString stringWithCString:v93 encoding:4];
                    free(v93);
                    v104 = oSLogObject4;
                    SSFileLog();
                  }

                  goto LABEL_133;
                }

                v62 = +[SSLogConfig sharedDaemonConfig];
                if (!v62)
                {
                  v62 = +[SSLogConfig sharedConfig];
                }

                shouldLog5 = [v62 shouldLog];
                if ([v62 shouldLogToDisk])
                {
                  v73 = shouldLog5 | 2;
                }

                else
                {
                  v73 = shouldLog5;
                }

                oSLogObject5 = [v62 OSLogObject];
                if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
                {
                  v74 = v73;
                }

                else
                {
                  v74 = v73 & 2;
                }

                if (!v74)
                {
                  goto LABEL_101;
                }

                WORD2(v110) = 1024;
                HIWORD(v110) = SBYTE5(v108);
                *v113 = SHIBYTE(v108);
                *&v113[4] = 1024;
                v114 = 1024;
                *v115 = 75;
                *&v115[4] = 1024;
                *&v115[6] = 3;
                v116 = 1024;
                v117 = 4;
                v71 = _os_log_send_and_compose_impl(v74, 0, 0, 0, &_mh_execute_header, oSLogObject5, 16, "File starts with 0x%02hhx%02hhx%02hhx%02hhx; expected 0x%02hhx%02hhx%02hhx%02hhx", &v109, 50, v107, v108, 67110912, HIDWORD(v110), SBYTE6(v108), *&v113[2]);

                if (!v71)
                {
LABEL_102:

                  close(v40);
                  goto LABEL_103;
                }
              }

              else
              {
                v61 = v41;
                v62 = +[SSLogConfig sharedDaemonConfig];
                if (!v62)
                {
                  v62 = +[SSLogConfig sharedConfig];
                }

                shouldLog6 = [v62 shouldLog];
                if ([v62 shouldLogToDisk])
                {
                  v64 = shouldLog6 | 2;
                }

                else
                {
                  v64 = shouldLog6;
                }

                oSLogObject5 = [v62 OSLogObject];
                if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
                {
                  v66 = v64;
                }

                else
                {
                  v66 = v64 & 2;
                }

                if (!v66)
                {
                  goto LABEL_101;
                }

                v67 = validateCopy;
                fileSystemRepresentation2 = [v38 fileSystemRepresentation];
                v69 = __error();
                v70 = strerror(*v69);
                v109 = 134218754;
                v110 = 4;
                v111 = 2048;
                v112 = v61;
                *v113 = 2080;
                *&v113[2] = fileSystemRepresentation2;
                v114 = 2080;
                *v115 = v70;
                LODWORD(v106) = 42;
                v71 = _os_log_send_and_compose_impl(v66, 0, 0, 0, &_mh_execute_header, oSLogObject5, 16, "Failed to read %lu bytes (got %ld) from start of %s : %s", &v109, v106, v107, v108);

                validateCopy = v67;
                if (!v71)
                {
                  goto LABEL_102;
                }
              }

              oSLogObject5 = [NSString stringWithCString:v71 encoding:4];
              free(v71);
              v105 = oSLogObject5;
              SSFileLog();
LABEL_101:

              goto LABEL_102;
            }

            v52 = +[SSLogConfig sharedDaemonConfig];
            if (!v52)
            {
              v52 = +[SSLogConfig sharedConfig];
            }

            shouldLog7 = [v52 shouldLog];
            if ([v52 shouldLogToDisk])
            {
              v54 = shouldLog7 | 2;
            }

            else
            {
              v54 = shouldLog7;
            }

            oSLogObject6 = [v52 OSLogObject];
            if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
            {
              v56 = v54;
            }

            else
            {
              v56 = v54 & 2;
            }

            if (v56)
            {
              fileSystemRepresentation3 = [v38 fileSystemRepresentation];
              v58 = __error();
              v59 = strerror(*v58);
              v109 = 136315394;
              v110 = fileSystemRepresentation3;
              v111 = 2080;
              v112 = v59;
              LODWORD(v106) = 22;
              v60 = _os_log_send_and_compose_impl(v56, 0, 0, 0, &_mh_execute_header, oSLogObject6, 16, "Failed to open %s : %s", &v109, v106);

              if (!v60)
              {
LABEL_78:

LABEL_103:
                v9 = +[SSLogConfig sharedDaemonConfig];
                if (!v9)
                {
                  v9 = +[SSLogConfig sharedConfig];
                }

                shouldLog8 = [v9 shouldLog];
                if ([v9 shouldLogToDisk])
                {
                  v76 = shouldLog8 | 2;
                }

                else
                {
                  v76 = shouldLog8;
                }

                oSLogObject = [v9 OSLogObject];
                if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
                {
                  v77 = v76;
                }

                else
                {
                  v77 = v76 & 2;
                }

                if (!v77)
                {
                  goto LABEL_115;
                }

                v78 = objc_opt_class();
                v79 = self->_bundleIdentifier;
                v80 = self->_sourceURL;
                v109 = 138412802;
                v110 = v78;
                v111 = 2112;
                v112 = v79;
                *v113 = 2112;
                *&v113[2] = v80;
                v17 = v78;
                LODWORD(v106) = 32;
                v18 = _os_log_send_and_compose_impl(v77, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "%@: Invalid archive for bundlerIdenfier: %@ path: %@", &v109, v106);
                goto LABEL_113;
              }

              oSLogObject6 = [NSString stringWithCString:v60 encoding:4];
              free(v60);
              v105 = oSLogObject6;
              SSFileLog();
            }

            goto LABEL_78;
          }
        }

        else if ((BYTE3(v108) & 1) == 0)
        {
          v9 = +[SSLogConfig sharedDaemonConfig];
          if (!v9)
          {
            v9 = +[SSLogConfig sharedConfig];
          }

          shouldLog9 = [v9 shouldLog];
          if ([v9 shouldLogToDisk])
          {
            v47 = shouldLog9 | 2;
          }

          else
          {
            v47 = shouldLog9;
          }

          oSLogObject = [v9 OSLogObject];
          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
          {
            v48 = v47;
          }

          else
          {
            v48 = v47 & 2;
          }

          if (!v48)
          {
            goto LABEL_115;
          }

          v49 = objc_opt_class();
          v50 = self->_bundleIdentifier;
          v51 = self->_sourceURL;
          v109 = 138412802;
          v110 = v49;
          v111 = 2112;
          v112 = v50;
          *v113 = 2112;
          *&v113[2] = v51;
          v17 = v49;
          LODWORD(v106) = 32;
          v18 = _os_log_send_and_compose_impl(v48, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "%@: Invalid path for bundlerIdenfier: %@ path: %@", &v109, v106);
          goto LABEL_113;
        }

        if ([(BundleValidator *)self _verifyBundleIdentfiier:self->_bundleIdentifier bundleVersion:self->_bundleVersion packagePath:self->_sourceURL, v104])
        {
          v19 = 0;
          v27 = 1;
        }

        else
        {
          v19 = [NSError errorWithDomain:SSErrorDomain code:143 userInfo:0];
          v27 = 0;
          if (validateCopy)
          {
            goto LABEL_117;
          }
        }

        goto LABEL_119;
      }

      oSLogObject2 = [NSString stringWithCString:v37 encoding:4];
      free(v37);
      v104 = oSLogObject2;
      SSFileLog();
    }

    goto LABEL_41;
  }

  v19 = +[SSLogConfig sharedDaemonConfig];
  if (!v19)
  {
    v19 = +[SSLogConfig sharedConfig];
  }

  shouldLog10 = [v19 shouldLog];
  if ([v19 shouldLogToDisk])
  {
    LODWORD(v21) = shouldLog10 | 2;
  }

  else
  {
    LODWORD(v21) = shouldLog10;
  }

  oSLogObject7 = [v19 OSLogObject];
  if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_ERROR))
  {
    v21 = v21;
  }

  else
  {
    v21 &= 2u;
  }

  if (!v21)
  {
    goto LABEL_25;
  }

  v23 = objc_opt_class();
  v24 = self->_bundleIdentifier;
  v109 = 138412546;
  v110 = v23;
  v111 = 2112;
  v112 = v24;
  v25 = v23;
  v26 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &_mh_execute_header, oSLogObject7, 16, "%@: Validation failure. sourceURL required for bundleIdentifier: %@", &v109, 22);

  if (v26)
  {
    oSLogObject7 = [NSString stringWithCString:v26 encoding:4];
    free(v26);
    SSFileLog();
LABEL_25:
  }

  v27 = 0;
LABEL_120:

  return v27;
}

- (id)_createScratchDirectory
{
  v2 = +[NSFileManager defaultManager];
  if (qword_100384048 != -1)
  {
    sub_10027254C();
  }

  v3 = [NSString stringWithString:qword_100384040];
  v4 = +[NSUUID UUID];
  uUIDString = [v4 UUIDString];

  v6 = [v3 stringByAppendingPathComponent:uUIDString];
  v18 = 0;
  v7 = [v2 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v18];
  v8 = v18;
  v9 = 0;
  if (v7)
  {
    v10 = +[SSLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      LODWORD(v12) = shouldLog | 2;
    }

    else
    {
      LODWORD(v12) = shouldLog;
    }

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v12 = v12;
    }

    else
    {
      v12 &= 2u;
    }

    if (v12)
    {
      v14 = objc_opt_class();
      v19 = 138412802;
      v20 = v14;
      v21 = 2112;
      v22 = v6;
      v23 = 1024;
      v24 = 1;
      v15 = v14;
      v16 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Scratch directory for %@ result: %d", &v19, 28);

      if (!v16)
      {
LABEL_16:

        v9 = v6;
        goto LABEL_17;
      }

      oSLogObject = [NSString stringWithCString:v16 encoding:4];
      free(v16);
      SSFileLog();
    }

    goto LABEL_16;
  }

LABEL_17:

  return v9;
}

- (BOOL)_extraMetaDataFromBOM:(id)m error:(id *)error
{
  mCopy = m;
  if (!BOMCopierNew())
  {
    v26 = 0;
    v17 = 0;
    if (!error)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  BOMCopierSetUserData();
  BOMCopierSetCopyFileStartedHandler();
  BOMCopierSetFatalErrorHandler();
  BOMCopierSetFatalFileErrorHandler();
  BOMCopierSetFileConflictErrorHandler();
  BOMCopierSetFileErrorHandler();
  fileSystemRepresentation = [(NSString *)self->_sourceURL fileSystemRepresentation];
  fileSystemRepresentation2 = [mCopy fileSystemRepresentation];
  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    LODWORD(v11) = shouldLog | 2;
  }

  else
  {
    LODWORD(v11) = shouldLog;
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v11;
  }

  else
  {
    v11 &= 2u;
  }

  if (v11)
  {
    v31 = 138412802;
    v32 = objc_opt_class();
    v33 = 2080;
    v34 = fileSystemRepresentation;
    v35 = 2080;
    v36 = fileSystemRepresentation2;
    v13 = v32;
    v14 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Extracting %s to %s", &v31, 32);

    if (!v14)
    {
      goto LABEL_14;
    }

    oSLogObject = [NSString stringWithCString:v14 encoding:4];
    free(v14);
    v29 = oSLogObject;
    SSFileLog();
  }

LABEL_14:
  _newBOMCopierOptions = [(BundleValidator *)self _newBOMCopierOptions];
  v16 = BOMCopierCopyWithOptions();
  v17 = v16 == 0;
  if (v16)
  {
    v18 = v16;
    v19 = +[SSLogConfig sharedDaemonConfig];
    if (!v19)
    {
      v19 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v19 shouldLog];
    if ([v19 shouldLogToDisk])
    {
      LODWORD(v21) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v21) = shouldLog2;
    }

    oSLogObject2 = [v19 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v21 = v21;
    }

    else
    {
      v21 &= 2u;
    }

    if (v21)
    {
      v23 = objc_opt_class();
      v31 = 138412546;
      v32 = v23;
      v33 = 1024;
      LODWORD(v34) = v18;
      v24 = v23;
      LODWORD(v30) = 18;
      v25 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &_mh_execute_header, oSLogObject2, 16, "%@: BOMCopier failed with error: %d", &v31, v30);

      if (!v25)
      {
LABEL_27:

        v26 = ISError();
        goto LABEL_31;
      }

      oSLogObject2 = [NSString stringWithCString:v25 encoding:4];
      free(v25);
      SSFileLog();
    }

    goto LABEL_27;
  }

  v26 = 0;
LABEL_31:
  BOMCopierFree();

  if (error)
  {
LABEL_32:
    v27 = v26;
    *error = v26;
  }

LABEL_33:

  return v17;
}

- (id)_newBOMCopierOptions
{
  v3 = objc_alloc_init(NSMutableDictionary);
  bundleFileType = [(BundleValidator *)self bundleFileType];
  if (bundleFileType == 1)
  {
    v5 = @"extractCPIO";
    goto LABEL_5;
  }

  if (!bundleFileType)
  {
    v5 = @"extractPKZip";
LABEL_5:
    [v3 setObject:kCFBooleanTrue forKey:v5];
  }

  return v3;
}

- (void)_removeScratchDirectory:(id)directory
{
  directoryCopy = directory;
  v4 = +[NSFileManager defaultManager];
  [v4 removeItemAtPath:directoryCopy error:0];
}

- (BOOL)_verifyBundleIdentfiier:(id)identfiier bundleVersion:(id)version packagePath:(id)path
{
  identfiierCopy = identfiier;
  versionCopy = version;
  pathCopy = path;
  v10 = objc_alloc_init(NSFileManager);
  v83 = pathCopy;
  v11 = [pathCopy stringByAppendingPathComponent:@"Payload"];
  v90 = 0;
  v82 = v10;
  v12 = [v10 contentsOfDirectoryAtPath:v11 error:&v90];
  v80 = v90;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v86 objects:v97 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v87;
LABEL_3:
    v17 = 0;
    while (1)
    {
      if (*v87 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v86 + 1) + 8 * v17);
      if ([v18 hasSuffix:@".app"])
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v86 objects:v97 count:16];
        if (v15)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v19 = [v18 copy];
    v20 = +[SSLogConfig sharedDaemonConfig];
    if (!v20)
    {
      v20 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v20 shouldLog];
    if ([v20 shouldLogToDisk])
    {
      LODWORD(v22) = shouldLog | 2;
    }

    else
    {
      LODWORD(v22) = shouldLog;
    }

    oSLogObject = [v20 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v22 = v22;
    }

    else
    {
      v22 &= 2u;
    }

    if (v22)
    {
      v24 = objc_opt_class();
      v91 = 138412546;
      v92 = v24;
      v93 = 2112;
      v94 = v19;
      v25 = v24;
      v26 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: appName: %@", &v91, 22);

      if (!v26)
      {
LABEL_22:

        goto LABEL_23;
      }

      oSLogObject = [NSString stringWithCString:v26 encoding:4];
      free(v26);
      v72 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_22;
  }

LABEL_9:
  v19 = 0;
LABEL_23:

  v27 = +[SSLogConfig sharedDaemonConfig];
  if (!v27)
  {
    v27 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v27 shouldLog];
  if ([v27 shouldLogToDisk])
  {
    LODWORD(v29) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v29) = shouldLog2;
  }

  oSLogObject2 = [v27 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    v29 = v29;
  }

  else
  {
    v29 &= 2u;
  }

  if (v29)
  {
    v31 = objc_opt_class();
    v91 = 138412546;
    v92 = v31;
    v93 = 2112;
    v94 = v11;
    v32 = v31;
    LODWORD(v75) = 22;
    v33 = _os_log_send_and_compose_impl(v29, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: App payloadDirectory: %@", &v91, v75);

    if (!v33)
    {
      goto LABEL_35;
    }

    oSLogObject2 = [NSString stringWithCString:v33 encoding:4];
    free(v33);
    v73 = oSLogObject2;
    SSFileLog();
  }

LABEL_35:
  v81 = v11;
  v79 = v19;
  if (v19)
  {
    v34 = [v11 stringByAppendingPathComponent:v19];
    oSLogObject7 = [v34 stringByAppendingPathComponent:@"Info.plist"];
    v36 = +[SSLogConfig sharedDaemonConfig];
    if (!v36)
    {
      v36 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v36 shouldLog];
    if ([v36 shouldLogToDisk])
    {
      LODWORD(v38) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v38) = shouldLog3;
    }

    oSLogObject3 = [v36 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
    {
      v38 = v38;
    }

    else
    {
      v38 &= 2u;
    }

    if (v38)
    {
      v40 = objc_opt_class();
      v91 = 138412546;
      v92 = v40;
      v93 = 2112;
      v94 = oSLogObject7;
      v41 = v40;
      LODWORD(v75) = 22;
      v42 = _os_log_send_and_compose_impl(v38, 0, 0, 0, &_mh_execute_header, oSLogObject3, 1, "%@: Info.plist path: %@", &v91, v75);

      if (!v42)
      {
        goto LABEL_48;
      }

      oSLogObject3 = [NSString stringWithCString:v42 encoding:4];
      free(v42);
      v74 = oSLogObject3;
      SSFileLog();
    }

LABEL_48:
    v43 = [[NSDictionary alloc] initWithContentsOfFile:oSLogObject7];
    v44 = v43;
    if (!v43)
    {
      v45 = +[SSLogConfig sharedDaemonConfig];
      if (!v45)
      {
        v45 = +[SSLogConfig sharedConfig];
      }

      shouldLog4 = [v45 shouldLog];
      if ([v45 shouldLogToDisk])
      {
        LODWORD(v60) = shouldLog4 | 2;
      }

      else
      {
        LODWORD(v60) = shouldLog4;
      }

      oSLogObject4 = [v45 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
      {
        v60 = v60;
      }

      else
      {
        v60 &= 2u;
      }

      if (v60)
      {
        v63 = objc_opt_class();
        bundleIdentifier = self->_bundleIdentifier;
        v91 = 138412546;
        v92 = v63;
        v93 = 2112;
        v94 = bundleIdentifier;
        v65 = v63;
        LODWORD(v75) = 22;
        v60 = _os_log_send_and_compose_impl(v60, 0, 0, 0, &_mh_execute_header, oSLogObject4, 16, "%@: Unable to load application meta data to verify bundleIdentifier: %@", &v91, v75);

        if (!v60)
        {
          v61 = v83;
          goto LABEL_101;
        }

        oSLogObject4 = [NSString stringWithCString:v60 encoding:4];
        free(v60);
        SSFileLog();
        LOBYTE(v60) = 0;
      }

      goto LABEL_100;
    }

    v45 = [v43 objectForKey:kCFBundleVersionKey];
    oSLogObject4 = [v44 objectForKey:kCFBundleIdentifierKey];
    v77 = versionCopy;
    v78 = identfiierCopy;
    if (([versionCopy isEqualToString:v45]& 1) != 0)
    {
LABEL_87:
      LOBYTE(v60) = [identfiierCopy isEqualToString:oSLogObject4, v74];
      if ((v60 & 1) == 0)
      {
        v66 = +[SSLogConfig sharedDaemonConfig];
        if (!v66)
        {
          v66 = +[SSLogConfig sharedConfig];
        }

        LODWORD(v67) = [v66 shouldLog];
        if ([v66 shouldLogToDisk])
        {
          LODWORD(v67) = v67 | 2;
        }

        oSLogObject5 = [v66 OSLogObject];
        if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
        {
          v67 = v67;
        }

        else
        {
          v67 &= 2u;
        }

        if (v67)
        {
          v69 = objc_opt_class();
          v91 = 138412802;
          v92 = v69;
          v93 = 2112;
          v94 = v78;
          v95 = 2112;
          v96 = oSLogObject4;
          v85 = v69;
          LODWORD(v75) = 32;
          v70 = _os_log_send_and_compose_impl(v67, 0, 0, 0, &_mh_execute_header, oSLogObject5, 16, "%@: Failed bundleIdentifier: %@ does not match expected bundleIdentifier: %@", &v91, v75);

          if (!v70)
          {
LABEL_99:

            versionCopy = v77;
            identfiierCopy = v78;
            goto LABEL_100;
          }

          oSLogObject5 = [NSString stringWithCString:v70 encoding:4];
          free(v70);
          SSFileLog();
        }

        goto LABEL_99;
      }

LABEL_100:
      v61 = v83;

LABEL_101:
      goto LABEL_102;
    }

    v47 = +[SSLogConfig sharedDaemonConfig];
    if (!v47)
    {
      v47 = +[SSLogConfig sharedConfig];
    }

    shouldLog5 = [v47 shouldLog];
    if ([v47 shouldLogToDisk])
    {
      v49 = shouldLog5 | 2;
    }

    else
    {
      v49 = shouldLog5;
    }

    oSLogObject6 = [v47 OSLogObject];
    if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
    {
      v51 = v49;
    }

    else
    {
      v51 = v49 & 2;
    }

    if (v51)
    {
      v52 = objc_opt_class();
      v91 = 138412802;
      v92 = v52;
      v93 = 2112;
      v94 = v77;
      v95 = 2112;
      v96 = v45;
      v76 = v52;
      LODWORD(v75) = 32;
      v53 = v51;
      versionCopy = v77;
      v54 = _os_log_send_and_compose_impl(v53, 0, 0, 0, &_mh_execute_header, oSLogObject6, 0, "%@: Warning: bundleVersion: %@ does not match expected bundleVersion: %@", &v91, v75);

      if (!v54)
      {
LABEL_86:

        identfiierCopy = v78;
        goto LABEL_87;
      }

      oSLogObject6 = [NSString stringWithCString:v54 encoding:4];
      free(v54);
      v74 = oSLogObject6;
      SSFileLog();
    }

    else
    {
      versionCopy = v77;
    }

    goto LABEL_86;
  }

  v34 = +[SSLogConfig sharedDaemonConfig];
  if (!v34)
  {
    v34 = +[SSLogConfig sharedConfig];
  }

  LODWORD(v55) = [v34 shouldLog];
  if ([v34 shouldLogToDisk])
  {
    LODWORD(v55) = v55 | 2;
  }

  oSLogObject7 = [v34 OSLogObject];
  if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_ERROR))
  {
    v55 = v55;
  }

  else
  {
    v55 &= 2u;
  }

  if (!v55)
  {
LABEL_71:
    LOBYTE(v60) = 0;
    v61 = v83;
LABEL_102:

    goto LABEL_103;
  }

  v56 = objc_opt_class();
  v57 = self->_bundleIdentifier;
  v91 = 138412546;
  v92 = v56;
  v93 = 2112;
  v94 = v57;
  v58 = v56;
  LODWORD(v75) = 22;
  v59 = _os_log_send_and_compose_impl(v55, 0, 0, 0, &_mh_execute_header, oSLogObject7, 16, "%@: Unable to locate application meta data to verify bundleIdentifier: %@", &v91, v75);

  if (v59)
  {
    oSLogObject7 = [NSString stringWithCString:v59 encoding:4];
    free(v59);
    SSFileLog();
    goto LABEL_71;
  }

  LOBYTE(v60) = 0;
  v61 = v83;
LABEL_103:

  return v60;
}

@end