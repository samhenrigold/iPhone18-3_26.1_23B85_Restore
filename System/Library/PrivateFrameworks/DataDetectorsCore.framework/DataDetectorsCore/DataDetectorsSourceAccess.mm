@interface DataDetectorsSourceAccess
- (BOOL)clientCanWriteSource:(int)source;
- (BOOL)privacySystemWriteEntitled;
- (BOOL)privacyUserReadEntitled;
- (BOOL)privacyUserWriteEntitled;
- (BOOL)pushSourcesContent:(id)content forSource:(int)source signature:(id)signature;
- (id)fileHandleForSourceRead:(int)read resourceType:(unint64_t)type;
- (void)fileForSourceRead:(id)read resourceType:(unint64_t)type withReply:(id)reply;
- (void)filesForSourceRead:(id)read resourceType:(unint64_t)type withReply:(id)reply;
- (void)writeSourceFromJSONFile:(id)file source:(id)source withReply:(id)reply;
- (void)writeSourceFromRawData:(id)data source:(id)source signature:(id)signature withReply:(id)reply;
@end

@implementation DataDetectorsSourceAccess

- (BOOL)pushSourcesContent:(id)content forSource:(int)source signature:(id)signature
{
  keys[3] = *MEMORY[0x1E69E9840];
  contentCopy = content;
  signatureCopy = signature;
  if ([contentCopy count])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v68 = signatureCopy;
      sourceCopy = source;
      v67[0] = self;
      if ((source - 1) > 5)
      {
        v10 = 0;
      }

      else
      {
        v10 = qword_1BD018C28[source - 1];
      }

      StreamCompressor = DDLookupTableCreate();
      v67[1] = v67;
      MEMORY[0x1EEE9AC00](StreamCompressor);
      v73 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      v72 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if ([contentCopy count])
      {
        v14 = 0;
        v15 = 0;
        v70 = *MEMORY[0x1E695E738];
        do
        {
          firstObject = [contentCopy firstObject];
          [contentCopy removeObjectAtIndex:0];
          if ([contentCopy count] < v10)
          {
            *&v73[4 * v14] = 0;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = firstObject;
              v18 = [v17 objectForKeyedSubscript:@"threshold"];
              v19 = [v17 objectForKeyedSubscript:@"domain"];
              v20 = [v17 objectForKeyedSubscript:@"entities"];
              v21 = [v17 objectForKeyedSubscript:@"keywords"];
              if (v19)
              {
                v22 = v19;
              }

              else
              {
                v22 = v70;
              }

              [v72 addObject:v22];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  DDSourceAddDomainContent(StreamCompressor, sourceCopy, v14, v20, v21);
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();
                  v24 = 0;
                  if (isKindOfClass)
                  {
                    [v18 floatValue];
                  }

                  *&v73[4 * v14] = v24;
                }
              }

              v15 = 1;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                DDSourceAddDomainContent(StreamCompressor, sourceCopy, v14, firstObject, 0);
              }
            }

            ++v14;
          }
        }

        while ([contentCopy count]);
        if (v14 >= 1)
        {
          if (v15)
          {
            DDLookupTableSetContextThresholds(StreamCompressor, sourceCopy, v73, v14);
          }

          v25 = v68;
          if (v68)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v25 = 0;
            }
          }

          if ([v72 count] || v25)
          {
            DDSourceAddDomainsNames(StreamCompressor, sourceCopy, v72, v25);
          }
        }
      }

      v12 = StreamCompressor;
      if (!StreamCompressor)
      {
        goto LABEL_67;
      }

      v26 = *(v67[0] + 44);
      FinalizedSourceContent = DDSourceCreateFinalizedSourceContent(StreamCompressor);
      CFRelease(v12);
      if (FinalizedSourceContent)
      {
        v28 = sourceCopy;
        if (_DDTriePathForSource(sourceCopy, v76, 0, 1, v26))
        {
          Length = CFDataGetLength(FinalizedSourceContent);
          if (_DDTriePathForSource(v28, v75, 0, 0, v26))
          {
            v30 = mkstemp(v75);
            if (v30 != -1)
            {
              v31 = v30;
              BytePtr = CFDataGetBytePtr(FinalizedSourceContent);
              if (Length)
              {
                if (VolumeSupportsCompression())
                {
                  v33 = *MEMORY[0x1E695E480];
                  v34 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
                  if (v34)
                  {
                    v35 = v34;
                    v73 = BytePtr;
                    v74[0] = *MEMORY[0x1E695E4D0];
                    v74[1] = v74[0];
                    v74[2] = v34;
                    v36 = *MEMORY[0x1E698C1B0];
                    keys[0] = *MEMORY[0x1E698C1B8];
                    keys[1] = v36;
                    keys[2] = *MEMORY[0x1E698C1A8];
                    v37 = CFDictionaryCreate(v33, keys, v74, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    if (v37)
                    {
                      v38 = v37;
                      StreamCompressorQueueWithOptions = CreateStreamCompressorQueueWithOptions();
                      CFRelease(v38);
                      CFRelease(v35);
                      BytePtr = v73;
                      if (StreamCompressorQueueWithOptions)
                      {
                        StreamCompressor = CreateStreamCompressor();
                        if (StreamCompressor)
                        {
                          v40 = Length;
                          if (WriteToStreamCompressor() != Length)
                          {
                            if (DDLogHandle_onceToken != -1)
                            {
                              dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                            }

                            v41 = DDLogHandle_error_log_handle;
                            if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
                            {
                              v65 = __error();
                              v66 = strerror(*v65);
                              LODWORD(v74[0]) = 136315138;
                              *(v74 + 4) = v66;
                              _os_log_error_impl(&dword_1BCFDD000, v41, OS_LOG_TYPE_ERROR, "DD Failed writing stream (error: %s)", v74, 0xCu);
                            }

                            v40 = 0;
                          }

                          if (!CloseStreamCompressor())
                          {
LABEL_57:
                            if (FinishStreamCompressorQueue())
                            {
                              if (DDLogHandle_onceToken != -1)
                              {
                                dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                              }

                              v43 = DDLogHandle_error_log_handle;
                              if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
                              {
                                v61 = __error();
                                v62 = strerror(*v61);
                                LODWORD(v74[0]) = 136315138;
                                *(v74 + 4) = v62;
                                _os_log_error_impl(&dword_1BCFDD000, v43, OS_LOG_TYPE_ERROR, "DD Failed compressing (error: %s)", v74, 0xCu);
                              }

                              v40 = 0;
                            }

                            BytePtr = v73;
                            if (StreamCompressor)
                            {
                              goto LABEL_78;
                            }

                            goto LABEL_77;
                          }

                          if (DDLogHandle_onceToken != -1)
                          {
                            dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                          }

                          v42 = DDLogHandle_error_log_handle;
                          if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
                          {
                            v63 = __error();
                            v64 = strerror(*v63);
                            LODWORD(v74[0]) = 136315138;
                            *(v74 + 4) = v64;
                            _os_log_error_impl(&dword_1BCFDD000, v42, OS_LOG_TYPE_ERROR, "DD Failed closing stream (error: %s)", v74, 0xCu);
                          }
                        }

                        v40 = 0;
                        goto LABEL_57;
                      }
                    }

                    else
                    {
                      CFRelease(v35);
                      BytePtr = v73;
                    }
                  }
                }
              }

LABEL_77:
              v40 = write(v31, BytePtr, Length);
LABEL_78:
              if ((v28 & 0xFFFFFFFD) != 4)
              {
                fchmod(v31, 0x184u);
              }

              close(v31);
              if (v40 != Length)
              {
                if (DDLogHandle_onceToken != -1)
                {
                  dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                }

                signatureCopy = v68;
                v56 = DDLogHandle_error_log_handle;
                if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_97;
                }

                LODWORD(v74[0]) = 136315138;
                *(v74 + 4) = v75;
                v53 = "DDCore: Could not write tmp lookup file %s";
                v54 = v56;
                v55 = 12;
                goto LABEL_96;
              }

              if (unlink(v76) && *__error() != 2)
              {
                if (DDLogHandle_onceToken != -1)
                {
                  dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                }

                signatureCopy = v68;
                v57 = DDLogHandle_error_log_handle;
                if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_97;
                }

                v58 = __error();
                v59 = strerror(*v58);
                LODWORD(v74[0]) = 136315394;
                *(v74 + 4) = v59;
                WORD2(v74[1]) = 2080;
                *(&v74[1] + 6) = v75;
                v53 = "DDCore: Could not unlink lookup file (%s) %s";
                v54 = v57;
                v55 = 22;
                goto LABEL_96;
              }

              rename(v75, v76, v48);
              if (v49)
              {
                if (DDLogHandle_onceToken != -1)
                {
                  dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                }

                signatureCopy = v68;
                v50 = DDLogHandle_error_log_handle;
                if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_97;
                }

                v51 = __error();
                v52 = strerror(*v51);
                LODWORD(v74[0]) = 136315650;
                *(v74 + 4) = v75;
                WORD2(v74[1]) = 2080;
                *(&v74[1] + 6) = v76;
                HIWORD(v74[2]) = 2080;
                v74[3] = v52;
                v53 = "DDCore: Could not move lookup file from %s to %s (error: %s)";
                v54 = v50;
                v55 = 32;
LABEL_96:
                _os_log_error_impl(&dword_1BCFDD000, v54, OS_LOG_TYPE_ERROR, v53, v74, v55);
LABEL_97:
                unlink(v75);
LABEL_98:
                CFRelease(FinalizedSourceContent);
                LOBYTE(v12) = 0;
                goto LABEL_99;
              }

              CFRelease(FinalizedSourceContent);
              LOBYTE(v12) = 1;
              DDSourceRemoveFile(v28, v26, 1);
LABEL_67:
              signatureCopy = v68;
LABEL_99:

              goto LABEL_100;
            }
          }

          else
          {
            if (DDLogHandle_onceToken != -1)
            {
              dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
            }

            signatureCopy = v68;
            v44 = DDLogHandle_error_log_handle;
            if (!os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_74;
            }

            LODWORD(v74[0]) = 136315138;
            *(v74 + 4) = v76;
            _os_log_error_impl(&dword_1BCFDD000, v44, OS_LOG_TYPE_ERROR, "DDCore: Could create tmp path file for %s", v74, 0xCu);
          }

          signatureCopy = v68;
          if (DDLogHandle_onceToken != -1)
          {
            dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
          }

LABEL_74:
          v45 = DDLogHandle_error_log_handle;
          if (os_log_type_enabled(DDLogHandle_error_log_handle, OS_LOG_TYPE_ERROR))
          {
            v46 = __error();
            v47 = strerror(*v46);
            LODWORD(v74[0]) = 136315394;
            *(v74 + 4) = v47;
            WORD2(v74[1]) = 2080;
            *(&v74[1] + 6) = v75;
            _os_log_error_impl(&dword_1BCFDD000, v45, OS_LOG_TYPE_ERROR, "DDCore: Could not create tmp lookup file (%s) %s", v74, 0x16u);
          }

          goto LABEL_98;
        }

        CFRelease(FinalizedSourceContent);
      }

      LOBYTE(v12) = 0;
      goto LABEL_67;
    }

    LOBYTE(v12) = 0;
  }

  else
  {
    LODWORD(v12) = self->_clientuid;
    v11 = DDSourceRemoveFile(source, v12, 0);
    DDSourceRemoveFile(source, v12, 1);
    LOBYTE(v12) = v11;
  }

LABEL_100:

  return v12;
}

- (BOOL)clientCanWriteSource:(int)source
{
  if (altPath)
  {
    return 1;
  }

  if ((source & 0xFFFFFFFD) == 4)
  {
    if ([(DataDetectorsSourceAccess *)self privacyUserWriteEntitled:v3])
    {
      return 1;
    }
  }

  else if ([(DataDetectorsSourceAccess *)self privacySystemWriteEntitled:v3])
  {
    return 1;
  }

  return 0;
}

- (id)fileHandleForSourceRead:(int)read resourceType:(unint64_t)type
{
  v12 = *MEMORY[0x1E69E9840];
  if (altPath)
  {
    v7 = 0;
  }

  else
  {
    v7 = (read & 0xFFFFFFFD) == 4;
  }

  if ((!v7 || [(DataDetectorsSourceAccess *)self privacyUserReadEntitled]) && _DDTriePathForSource(read, v11, type == 1, 1, self->_clientuid) && (v8 = open(v11, 0), v8 >= 3))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v8 closeOnDealloc:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)privacySystemWriteEntitled
{
  v12 = *MEMORY[0x1E69E9840];
  if (!self->_privacySystemWriteEntitlementChecked)
  {
    objc_msgSend_auditToken(self, a2);
    v3 = SecTaskCreateWithAuditToken(0, &v11);
    if (v3)
    {
      v4 = v3;
      v5 = SecTaskCopyValueForEntitlement(v3, @"com.apple.datadetectors.source-write.system", 0);
      if (v5)
      {
        v6 = v5;
        TypeID = CFBooleanGetTypeID();
        if (TypeID == CFGetTypeID(v6) && CFEqual(v6, *MEMORY[0x1E695E4D0]))
        {
          self->_privacySystemWriteEntitled = 1;
        }

        CFRelease(v6);
      }

      CFRelease(v4);
    }

    if (!self->_privacySystemWriteEntitled)
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v8 = DDLogHandle_error_log_handle;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        clientpid = self->_clientpid;
        v11.val[0] = 67109378;
        v11.val[1] = clientpid;
        LOWORD(v11.val[2]) = 2112;
        *(&v11.val[2] + 2) = @"com.apple.datadetectors.source-write.system";
        _os_log_error_impl(&dword_1BCFDD000, v8, OS_LOG_TYPE_ERROR, "Client pid %d is missing the %@ entitlement", &v11, 0x12u);
      }
    }

    self->_privacySystemWriteEntitlementChecked = 1;
  }

  return self->_privacySystemWriteEntitled;
}

- (BOOL)privacyUserWriteEntitled
{
  v12 = *MEMORY[0x1E69E9840];
  if (!self->_privacyUserWriteEntitlementChecked)
  {
    objc_msgSend_auditToken(self, a2);
    v3 = SecTaskCreateWithAuditToken(0, &v11);
    if (v3)
    {
      v4 = v3;
      v5 = SecTaskCopyValueForEntitlement(v3, @"com.apple.datadetectors.source-write.user", 0);
      if (v5)
      {
        v6 = v5;
        TypeID = CFBooleanGetTypeID();
        if (TypeID == CFGetTypeID(v6) && CFEqual(v6, *MEMORY[0x1E695E4D0]))
        {
          self->_privacyUserWriteEntitled = 1;
        }

        CFRelease(v6);
      }

      CFRelease(v4);
    }

    if (!self->_privacyUserWriteEntitled)
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v8 = DDLogHandle_error_log_handle;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        clientpid = self->_clientpid;
        v11.val[0] = 67109378;
        v11.val[1] = clientpid;
        LOWORD(v11.val[2]) = 2112;
        *(&v11.val[2] + 2) = @"com.apple.datadetectors.source-write.user";
        _os_log_error_impl(&dword_1BCFDD000, v8, OS_LOG_TYPE_ERROR, "Client pid %d is missing the %@ entitlement", &v11, 0x12u);
      }
    }

    self->_privacyUserWriteEntitlementChecked = 1;
  }

  return self->_privacyUserWriteEntitled;
}

- (BOOL)privacyUserReadEntitled
{
  if (_dd_dispatch_get_queue_for_read_entitlements_onceToken != -1)
  {
    dispatch_once(&_dd_dispatch_get_queue_for_read_entitlements_onceToken, &__block_literal_global_90);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__DataDetectorsSourceAccess_privacyUserReadEntitled__block_invoke;
  block[3] = &unk_1E80026C0;
  block[4] = self;
  dispatch_sync(_dd_dispatch_get_queue_for_read_entitlements_sQueue, block);
  return self->_privacyUserReadEntitled;
}

void __52__DataDetectorsSourceAccess_privacyUserReadEntitled__block_invoke(uint64_t a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (!v3[49])
  {
    objc_msgSend_auditToken(v3, a2);
    v4 = SecTaskCreateWithAuditToken(0, &v12);
    if (v4)
    {
      v5 = v4;
      v6 = SecTaskCopyValueForEntitlement(v4, @"com.apple.datadetectors.source-read.user", 0);
      if (v6)
      {
        v7 = v6;
        TypeID = CFBooleanGetTypeID();
        if (TypeID == CFGetTypeID(v7) && CFEqual(v7, *MEMORY[0x1E695E4D0]))
        {
          *(*(a1 + 32) + 48) = 1;
        }

        CFRelease(v7);
      }

      CFRelease(v5);
    }

    v9 = *(a1 + 32);
    if ((*(v9 + 48) & 1) == 0)
    {
      if (DDLogHandle_onceToken != -1)
      {
        dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
      }

      v10 = DDLogHandle_error_log_handle;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(*(a1 + 32) + 40);
        v12.val[0] = 67109378;
        v12.val[1] = v11;
        LOWORD(v12.val[2]) = 2112;
        *(&v12.val[2] + 2) = @"com.apple.datadetectors.source-read.user";
        _os_log_error_impl(&dword_1BCFDD000, v10, OS_LOG_TYPE_ERROR, "Client pid %d is missing the %@ entitlement", &v12, 0x12u);
      }

      v9 = *(a1 + 32);
    }

    *(v9 + 49) = 1;
  }
}

- (void)writeSourceFromJSONFile:(id)file source:(id)source withReply:(id)reply
{
  fileCopy = file;
  sourceCopy = source;
  replyCopy = reply;
  v11 = _dd_dispatch_get_queue_for_writing();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__DataDetectorsSourceAccess_writeSourceFromJSONFile_source_withReply___block_invoke;
  v15[3] = &unk_1E8002698;
  v16 = sourceCopy;
  selfCopy = self;
  v18 = fileCopy;
  v19 = replyCopy;
  v12 = replyCopy;
  v13 = fileCopy;
  v14 = sourceCopy;
  dispatch_async(v11, v15);
}

void __70__DataDetectorsSourceAccess_writeSourceFromJSONFile_source_withReply___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) intValue];
  if (*(a1 + 32))
  {
    v4 = v3;
    if ([*(a1 + 40) clientCanWriteSource:v3])
    {
      v5 = *(a1 + 48);
      if (v5)
      {
        if ([v5 fileDescriptor] >= 3)
        {
          v6 = objc_autoreleasePoolPush();
          v7 = [*(a1 + 48) readDataToEndOfFile];
          v20 = 0;
          v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:1 error:&v20];
          v9 = v20;
          if (v9)
          {
            v10 = 0;
            v11 = 0;
          }

          else
          {
            v11 = [v8 objectForKeyedSubscript:@"domains"];
            if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              if (DDLogHandle_onceToken != -1)
              {
                dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
              }

              v15 = DDLogHandle_error_log_handle;
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                v18 = objc_opt_class();
                *buf = 138412290;
                v22 = v18;
                _os_log_error_impl(&dword_1BCFDD000, v15, OS_LOG_TYPE_ERROR, "Domains is not a NSMutableDictionary (%@)", buf, 0xCu);
              }

              v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"DataDetectorsCoreSourceAccess" code:2 userInfo:0];
            }

            else
            {
              v9 = 0;
            }

            v10 = [v8 objectForKeyedSubscript:@"signature"];
            if (v10)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (DDLogHandle_onceToken != -1)
                {
                  dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
                }

                v16 = DDLogHandle_error_log_handle;
                if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  v19 = objc_opt_class();
                  *buf = 138412546;
                  v22 = v19;
                  v23 = 2112;
                  v24 = v10;
                  _os_log_error_impl(&dword_1BCFDD000, v16, OS_LOG_TYPE_ERROR, "Signature is not a NSString (%@:%@)", buf, 0x16u);
                }

                v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"DataDetectorsCoreSourceAccess" code:1 userInfo:0];

                v9 = v17;
              }
            }
          }

          objc_autoreleasePoolPop(v6);
          if (v9)
          {
            if (DDLogHandle_onceToken != -1)
            {
              dispatch_once(&DDLogHandle_onceToken, &__block_literal_global_791);
            }

            v12 = DDLogHandle_error_log_handle;
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v22 = v9;
              _os_log_error_impl(&dword_1BCFDD000, v12, OS_LOG_TYPE_ERROR, "Could not read JSON content (%@)", buf, 0xCu);
            }
          }

          else
          {
            [*(a1 + 40) pushSourcesContent:v11 forSource:v4 signature:v10];
          }
        }
      }

      else
      {
        v13 = [*(a1 + 32) intValue];
        v14 = *(*(a1 + 40) + 44);
        DDSourceRemoveFile(v13, v14, 0);
        DDSourceRemoveFile(v13, v14, 1);
      }
    }
  }

  (*(*(a1 + 56) + 16))();
  objc_autoreleasePoolPop(v2);
}

- (void)writeSourceFromRawData:(id)data source:(id)source signature:(id)signature withReply:(id)reply
{
  dataCopy = data;
  sourceCopy = source;
  signatureCopy = signature;
  replyCopy = reply;
  v14 = _dd_dispatch_get_queue_for_writing();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__DataDetectorsSourceAccess_writeSourceFromRawData_source_signature_withReply___block_invoke;
  block[3] = &unk_1E8002670;
  v20 = sourceCopy;
  selfCopy = self;
  v22 = dataCopy;
  v23 = signatureCopy;
  v24 = replyCopy;
  v15 = replyCopy;
  v16 = signatureCopy;
  v17 = dataCopy;
  v18 = sourceCopy;
  dispatch_sync(v14, block);
}

void __79__DataDetectorsSourceAccess_writeSourceFromRawData_source_signature_withReply___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) intValue];
  if (*(a1 + 32))
  {
    v4 = v3;
    if ([*(a1 + 40) clientCanWriteSource:v3])
    {
      [*(a1 + 40) pushSourcesContent:*(a1 + 48) forSource:v4 signature:*(a1 + 56)];
    }
  }

  (*(*(a1 + 64) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (void)filesForSourceRead:(id)read resourceType:(unint64_t)type withReply:(id)reply
{
  v24 = *MEMORY[0x1E69E9840];
  readCopy = read;
  replyCopy = reply;
  context = objc_autoreleasePoolPush();
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(readCopy, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = readCopy;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = -[DataDetectorsSourceAccess fileHandleForSourceRead:resourceType:](self, "fileHandleForSourceRead:resourceType:", [*(*(&v19 + 1) + 8 * i) intValue], type);
        if (v15)
        {
          [v9 addObject:v15];
        }

        else
        {
          null = [MEMORY[0x1E695DFB0] null];
          [v9 addObject:null];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  replyCopy[2](replyCopy, v9);
  objc_autoreleasePoolPop(context);
}

- (void)fileForSourceRead:(id)read resourceType:(unint64_t)type withReply:(id)reply
{
  readCopy = read;
  replyCopy = reply;
  v9 = objc_autoreleasePoolPush();
  v10 = -[DataDetectorsSourceAccess fileHandleForSourceRead:resourceType:](self, "fileHandleForSourceRead:resourceType:", [readCopy intValue], type);
  replyCopy[2](replyCopy, v10);

  objc_autoreleasePoolPop(v9);
}

@end