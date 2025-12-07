@interface STAEAExtractor
- (STAEAExtractor)initWithOptions:(id)options delegate:(id)delegate;
- (STExtractionPluginDelegate)delegate;
- (int)aeaContextCallback:(AEAContext_impl *)callback;
- (int)extractionProgress:(float)progress;
- (int)processEntryMessage:(unsigned int)message path:(const char *)path data:(void *)data;
- (void)dealloc;
- (void)finishStreamWithCompletionBlock:(id)block;
- (void)invalidate;
- (void)prepareForExtractionToPath:(id)path withCompletionBlock:(id)block;
- (void)supplyBytes:(id)bytes withCompletionBlock:(id)block;
- (void)suspendStreamWithCompletionBlock:(id)block;
- (void)terminateStreamWithError:(id)error completionBlock:(id)block;
@end

@implementation STAEAExtractor

- (STAEAExtractor)initWithOptions:(id)options delegate:(id)delegate
{
  optionsCopy = options;
  delegateCopy = delegate;
  v8 = sub_124C(delegateCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v37 = "[STAEAExtractor initWithOptions:delegate:]";
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}s: Initializing extractor", buf, 0xCu);
  }

  self->_extractor = 0;
  self->_offset = 0;
  path = self->_path;
  self->_path = 0;

  session = self->_session;
  self->_session = 0;

  v35.receiver = self;
  v35.super_class = STAEAExtractor;
  v11 = [(STAEAExtractor *)&v35 init];
  if (v11)
  {
    v12 = [optionsCopy copy];
    options = v11->_options;
    v11->_options = v12;

    if (objc_opt_respondsToSelector())
    {
      sessionID = [delegateCopy sessionID];
      v15 = v11->_session;
      v11->_session = sessionID;
    }

    else
    {
      v15 = +[NSUUID UUID];
      uUIDString = [v15 UUIDString];
      v17 = v11->_session;
      v11->_session = uUIDString;
    }

    usesReserveAccessPolicy = objc_opt_respondsToSelector();
    if (usesReserveAccessPolicy)
    {
      usesReserveAccessPolicy = [delegateCopy usesReserveAccessPolicy];
      v11->_usesReserveAccessPolicy = usesReserveAccessPolicy;
    }

    v19 = sub_124C(usesReserveAccessPolicy);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v11->_session;
      if (v11->_usesReserveAccessPolicy)
      {
        v21 = @"YES";
      }

      else
      {
        v21 = @"NO";
      }

      *buf = 138413058;
      v37 = v20;
      v38 = 2082;
      v39 = "[STAEAExtractor initWithOptions:delegate:]";
      v40 = 2112;
      v41 = v20;
      v42 = 2112;
      v43 = v21;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "[%@] %{public}s: new AEA extractor (SessionID: %@, UsesReserveAccessPolicy: %@)", buf, 0x2Au);
    }

    v22 = [optionsCopy objectForKeyedSubscript:@"STAEAExtractorSymmetricEncryptionKey<Private>"];
    symmetricDecryptionKey = v11->_symmetricDecryptionKey;
    v11->_symmetricDecryptionKey = v22;

    if (v11->_symmetricDecryptionKey && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      sub_383C(v11);
    }

    else
    {
      v24 = [optionsCopy objectForKeyedSubscript:@"STAEAExtractorAsymmetricDecryptionKey<Private>"];
      asymmetricDecryptionKey = v11->_asymmetricDecryptionKey;
      v11->_asymmetricDecryptionKey = v24;

      if (v11->_asymmetricDecryptionKey && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        sub_3904(v11);
      }

      else
      {
        v26 = [optionsCopy objectForKeyedSubscript:@"STAEAExtractorSigningPublicKey<Private>"];
        signingPublicKey = v11->_signingPublicKey;
        v11->_signingPublicKey = v26;

        if (v11->_signingPublicKey && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          sub_39CC(v11);
        }

        else
        {
          v28 = [optionsCopy objectForKeyedSubscript:@"STAEAExtractorSourceDirectory"];
          sourceDirectory = v11->_sourceDirectory;
          v11->_sourceDirectory = v28;

          if (v11->_sourceDirectory && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            sub_3A94(v11);
          }

          else
          {
            v30 = [optionsCopy objectForKeyedSubscript:@"STAEAExtractorSourceDirectorySandboxExtension<Private>"];
            sourceDirectorySandboxExtension = v11->_sourceDirectorySandboxExtension;
            v11->_sourceDirectorySandboxExtension = v30;

            if (v11->_sourceDirectorySandboxExtension && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              sub_3B5C(v11);
            }

            else
            {
              v32 = [optionsCopy objectForKeyedSubscript:@"STAEAExtractorArchiveID"];
              archiveID = v11->_archiveID;
              v11->_archiveID = v32;

              if (!v11->_archiveID || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                [(STAEAExtractor *)v11 setDelegate:delegateCopy];
                [(STAEAExtractor *)v11 setIsComplete:0];
                [(STAEAExtractor *)v11 setSandboxToken:-1];
                goto LABEL_27;
              }

              sub_3C24(v11);
            }
          }
        }
      }
    }

    v11 = 0;
  }

LABEL_27:

  return v11;
}

- (void)dealloc
{
  [(STAEAExtractor *)self invalidate];
  v3.receiver = self;
  v3.super_class = STAEAExtractor;
  [(STAEAExtractor *)&v3 dealloc];
}

- (void)invalidate
{
  p_extractor = &self->_extractor;
  if (self->_extractor)
  {
    AAAssetExtractorDestroy();
    *p_extractor = 0;
    p_extractor[1] = 0;
  }

  if ([(STAEAExtractor *)self sandboxToken]!= -1)
  {
    [(STAEAExtractor *)self sandboxToken];
    sandbox_extension_release();

    [(STAEAExtractor *)self setSandboxToken:-1];
  }
}

- (int)extractionProgress:(float)progress
{
  delegate = [(STAEAExtractor *)self delegate];

  if (delegate)
  {
    delegate2 = [(STAEAExtractor *)self delegate];
    [delegate2 setExtractionProgress:progress];
  }

  return 0;
}

- (int)aeaContextCallback:(AEAContext_impl *)callback
{
  archiveID = [(STAEAExtractor *)self archiveID];

  if (archiveID)
  {
    buf_size = 0;
    if (callback)
    {
      if (!AEAContextGetFieldBlob(callback, 0x12u, 0, 0x20uLL, buf, &buf_size))
      {
        v6 = [NSData dataWithBytesNoCopy:buf length:buf_size freeWhenDone:0];
        archiveID2 = [(STAEAExtractor *)self archiveID];
        v8 = [archiveID2 isEqualToData:v6];

        if (v8)
        {

          goto LABEL_6;
        }

        sub_3E28(self, v6, &v43);
LABEL_34:

LABEL_24:
        return -1;
      }

      sub_3CEC(self, &v42, &v43);
    }

    else
    {
      sub_3F8C(self, &v42, &v43);
    }

    v6 = v42;
    goto LABEL_34;
  }

LABEL_6:
  asymmetricDecryptionKey = [(STAEAExtractor *)self asymmetricDecryptionKey];

  if (asymmetricDecryptionKey)
  {
    v11 = sub_124C(v10);
    v12 = v11;
    if (!callback)
    {
      sub_40C8(v11);
      return -1;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      session = self->_session;
      asymmetricDecryptionKey2 = [(STAEAExtractor *)self asymmetricDecryptionKey];
      v15 = [asymmetricDecryptionKey2 length];
      *buf = 138412802;
      v45 = session;
      v46 = 2082;
      v47 = "[STAEAExtractor aeaContextCallback:]";
      v48 = 2048;
      v49 = v15;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "[%@] %{public}s: Setting asymmetric key on AEA context (%lu bytes)", buf, 0x20u);
    }

    asymmetricDecryptionKey3 = [(STAEAExtractor *)self asymmetricDecryptionKey];
    bytes = [asymmetricDecryptionKey3 bytes];
    asymmetricDecryptionKey4 = [(STAEAExtractor *)self asymmetricDecryptionKey];
    v19 = [asymmetricDecryptionKey4 length];
    callbackCopy2 = callback;
    v21 = 11;
    v22 = 1;
  }

  else
  {
    symmetricDecryptionKey = [(STAEAExtractor *)self symmetricDecryptionKey];

    if (!symmetricDecryptionKey)
    {
      goto LABEL_17;
    }

    v25 = sub_124C(v24);
    v26 = v25;
    if (!callback)
    {
      sub_4300(v25);
      return -1;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v27 = self->_session;
      asymmetricDecryptionKey5 = [(STAEAExtractor *)self asymmetricDecryptionKey];
      v29 = [asymmetricDecryptionKey5 length];
      *buf = 138412802;
      v45 = v27;
      v46 = 2082;
      v47 = "[STAEAExtractor aeaContextCallback:]";
      v48 = 2048;
      v49 = v29;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "[%@] %{public}s: Setting symmetric key on AEA context (%lu bytes)", buf, 0x20u);
    }

    asymmetricDecryptionKey3 = [(STAEAExtractor *)self symmetricDecryptionKey];
    bytes = [asymmetricDecryptionKey3 bytes];
    asymmetricDecryptionKey4 = [(STAEAExtractor *)self symmetricDecryptionKey];
    v19 = [asymmetricDecryptionKey4 length];
    callbackCopy2 = callback;
    v21 = 9;
    v22 = 0;
  }

  v30 = AEAContextSetFieldBlob(callbackCopy2, v21, v22, bytes, v19);

  if (v30 == -1)
  {
    sub_41E4(self);
    return -1;
  }

LABEL_17:
  signingPublicKey = [(STAEAExtractor *)self signingPublicKey];

  if (signingPublicKey)
  {
    if (!callback)
    {
      sub_45E0(self);
      return -1;
    }

    FieldUInt = AEAContextGetFieldUInt(callback, 0);
    if (FieldUInt <= 5 && ((1 << FieldUInt) & 0x2A) != 0)
    {
      v33 = sub_124C(FieldUInt);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_441C();
      }

      v34 = STExtractorErrorDomain;
      v6 = [NSString stringWithFormat:@"Archive is not signed - signing key was provided"];
      v35 = sub_1238(v34, 6, v6, 0, "[STAEAExtractor aeaContextCallback:]", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractor/AEAExtractionPlugin/STAEAExtractorPlugin.m", 264);
      [(STAEAExtractor *)self setError:v35];

      goto LABEL_24;
    }

    signingPublicKey2 = [(STAEAExtractor *)self signingPublicKey];
    bytes2 = [signingPublicKey2 bytes];
    signingPublicKey3 = [(STAEAExtractor *)self signingPublicKey];
    v40 = AEAContextSetFieldBlob(callback, 7u, 1u, bytes2, [signingPublicKey3 length]);

    if (v40 == -1)
    {
      sub_44C4(self);
      return -1;
    }
  }

  return 0;
}

- (int)processEntryMessage:(unsigned int)message path:(const char *)path data:(void *)data
{
  if (message == 92 && ![(STAEAExtractor *)self isComplete:*&message])
  {
    [(STAEAExtractor *)self setIsComplete:1];
    delegate = [(STAEAExtractor *)self delegate];
    [delegate extractionCompleteAtArchivePath:self->_path];
  }

  return 0;
}

- (void)prepareForExtractionToPath:(id)path withCompletionBlock:(id)block
{
  pathCopy = path;
  blockCopy = block;
  v9 = sub_124C(blockCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    session = self->_session;
    *buf = 138412802;
    *&buf[4] = session;
    v28 = 2082;
    v29 = "[STAEAExtractor prepareForExtractionToPath:withCompletionBlock:]";
    v30 = 2112;
    v31 = pathCopy;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[%@] %{public}s: Preparing to extract to %@", buf, 0x20u);
  }

  objc_storeStrong(&self->_path, path);
  if ([(STAEAExtractor *)self usesReserveAccessPolicy])
  {
    v26 = 0;
    v11 = [STReservableSpacePolicy threadPolicyWithErrorPtr:&v26];
    v12 = v26;
    v13 = v12;
    if (!v11)
    {
      v14 = sub_124C(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_46FC(self, v13);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  AAThreadErrorContextEnter();
  [pathCopy UTF8String];
  v15 = AAAssetExtractorCreate();
  self->_extractor = v15;
  v16 = sub_124C(v15);
  v17 = v16;
  if (!v15)
  {
    sub_4E54(v16, buf);
LABEL_30:
    v25 = *buf;
    goto LABEL_22;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18 = self->_session;
    offset = self->_offset;
    *buf = 138412802;
    *&buf[4] = v18;
    v28 = 2082;
    v29 = "[STAEAExtractor prepareForExtractionToPath:withCompletionBlock:]";
    v30 = 2048;
    v31 = offset;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "[%@] %{public}s: starting extraction offset: %llu", buf, 0x20u);
  }

  sourceDirectory = [(STAEAExtractor *)self sourceDirectory];

  if (sourceDirectory)
  {
    sourceDirectorySandboxExtension = [(STAEAExtractor *)self sourceDirectorySandboxExtension];

    if (sourceDirectorySandboxExtension)
    {
      sourceDirectorySandboxExtension2 = [(STAEAExtractor *)self sourceDirectorySandboxExtension];
      [sourceDirectorySandboxExtension2 UTF8String];
      [(STAEAExtractor *)self setSandboxToken:sandbox_extension_consume()];

      if ([(STAEAExtractor *)self sandboxToken]== -1)
      {
        sub_479C(buf);
        goto LABEL_30;
      }
    }

    sourceDirectory2 = [(STAEAExtractor *)self sourceDirectory];
    [sourceDirectory2 UTF8String];
    v24 = AAAssetExtractorSetParameterPtr();

    if (v24)
    {
      sub_48F0(self, v24, buf);
      goto LABEL_30;
    }
  }

  if (AAAssetExtractorSetParameterCallback())
  {
    sub_4A24();
    goto LABEL_30;
  }

  if (AAAssetExtractorSetParameterCallback())
  {
    sub_4B30();
    goto LABEL_30;
  }

  if (AAAssetExtractorSetParameterCallback())
  {
    sub_4C3C();
    goto LABEL_30;
  }

  if (AAAssetExtractorSetParameterPtr())
  {
    sub_4D48();
    goto LABEL_30;
  }

  AAThreadErrorContextLeave();
  v25 = 0;
LABEL_22:
  blockCopy[2](blockCopy, self->_offset, v25);
}

- (void)supplyBytes:(id)bytes withCompletionBlock:(id)block
{
  bytesCopy = bytes;
  blockCopy = block;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_2894;
  v41 = sub_28A4;
  v42 = 0;
  v8 = [bytesCopy length];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  error = [(STAEAExtractor *)self error];
  v10 = error == 0;

  if (!v10)
  {
    v25 = sub_124C(v11);
    sub_5024(v25);
LABEL_23:
    v13 = 0;
    goto LABEL_13;
  }

  if (!self->_extractor)
  {
    v26 = sub_124C(v11);
    sub_51EC(v26);

    v27 = STExtractorErrorDomain;
    v28 = [NSString stringWithFormat:@"Extractor is NULL"];
    v29 = sub_1238(v27, 1, v28, 0, "[STAEAExtractor supplyBytes:withCompletionBlock:]", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractor/AEAExtractionPlugin/STAEAExtractorPlugin.m", 415);
    v30 = v38[5];
    v38[5] = v29;

    goto LABEL_23;
  }

  v12 = sub_124C(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_50F0();
  }

  if ([(STAEAExtractor *)self usesReserveAccessPolicy])
  {
    v32 = 0;
    v13 = [STReservableSpacePolicy threadPolicyWithErrorPtr:&v32];
    v14 = v32;
    v15 = v14;
    if (!v13)
    {
      v16 = sub_124C(v14);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        session = self->_session;
        v18 = [v15 debugDescription];
        sub_5170(session, v18, buf, v16);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  AAThreadErrorContextEnter();
  *(v34 + 24) = 1;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_28AC;
  v31[3] = &unk_C2F8;
  v31[4] = self;
  v31[5] = &v37;
  v31[6] = &v33;
  v31[7] = v8;
  [bytesCopy enumerateByteRangesUsingBlock:v31];
LABEL_13:
  if (*(v34 + 24) == 1)
  {
    AAThreadErrorContextLeave();
  }

  if (v38[5])
  {
    error2 = [(STAEAExtractor *)self error];
    v20 = error2 == 0;

    if (v20)
    {
      [(STAEAExtractor *)self setError:v38[5]];
    }
  }

  else
  {
    error3 = [(STAEAExtractor *)self error];
    v22 = error3 == 0;

    if (!v22)
    {
      error4 = [(STAEAExtractor *)self error];
      v24 = v38[5];
      v38[5] = error4;
    }
  }

  blockCopy[2](blockCopy, v38[5], [(STAEAExtractor *)self isComplete]!= 0);

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
}

- (void)suspendStreamWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = sub_124C(blockCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    session = self->_session;
    *buf = 138412546;
    *&buf[4] = session;
    v32 = 2082;
    v33 = "[STAEAExtractor suspendStreamWithCompletionBlock:]";
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[%@] %{public}s: Suspending extraction", buf, 0x16u);
  }

  usesReserveAccessPolicy = [(STAEAExtractor *)self usesReserveAccessPolicy];
  if (usesReserveAccessPolicy)
  {
    v30 = 0;
    v8 = [STReservableSpacePolicy threadPolicyWithErrorPtr:&v30];
    v9 = v30;
    v10 = v9;
    if (!v8)
    {
      v11 = sub_124C(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_5454(self, v10);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  if (self->_extractor)
  {
    v12 = AAThreadErrorContextEnter();
    v13 = sub_124C(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_session;
      *buf = 138412546;
      *&buf[4] = v14;
      v32 = 2082;
      v33 = "[STAEAExtractor suspendStreamWithCompletionBlock:]";
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "[%@] %{public}s: Calling AAAssetExtractorDestroy()", buf, 0x16u);
    }

    v15 = AAAssetExtractorDestroy();
    v16 = v15;
    self->_extractor = 0;
    if (v15 >= 2)
    {
      sub_54F4();
      v24 = *buf;
    }

    else
    {
      v17 = sub_124C(v15);
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (v16 == 1)
      {
        if (v18)
        {
          v19 = self->_session;
          offset = self->_offset;
          *buf = 138412802;
          *&buf[4] = v19;
          v32 = 2082;
          v33 = "[STAEAExtractor suspendStreamWithCompletionBlock:]";
          v34 = 2048;
          v35 = offset;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "[%@] %{public}s: successfully suspended stream with offset: %llu", buf, 0x20u);
        }
      }

      else
      {
        if (v18)
        {
          v25 = self->_session;
          v26 = self->_offset;
          *buf = 138412802;
          *&buf[4] = v25;
          v32 = 2082;
          v33 = "[STAEAExtractor suspendStreamWithCompletionBlock:]";
          v34 = 2048;
          v35 = v26;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "[%@] %{public}s: AAAssetExtractorDestroy() was successful but stream was not suspended (offset: %llu) - stream was already complete", buf, 0x20u);
        }

        self->_offset = 0;
      }

      AAThreadErrorContextLeave();
      v24 = 0;
    }
  }

  else
  {
    v21 = sub_124C(usesReserveAccessPolicy);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_5600();
    }

    v22 = STExtractorErrorDomain;
    v23 = [NSString stringWithFormat:@"No extractor to suspend"];
    v24 = sub_1238(v22, 7, v23, 0, "[STAEAExtractor suspendStreamWithCompletionBlock:]", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractor/AEAExtractionPlugin/STAEAExtractorPlugin.m", 519);
  }

  error = [(STAEAExtractor *)self error];

  if (!error && v24)
  {
    [(STAEAExtractor *)self setError:v24];
  }

  v28 = self->_offset;
  error2 = [(STAEAExtractor *)self error];
  blockCopy[2](blockCopy, v28, error2);
}

- (void)finishStreamWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = sub_124C(blockCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    session = self->_session;
    *buf = 138412546;
    v23 = session;
    v24 = 2082;
    v25 = "[STAEAExtractor finishStreamWithCompletionBlock:]";
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[%@] %{public}s: Finishing extraction", buf, 0x16u);
  }

  if ([(STAEAExtractor *)self usesReserveAccessPolicy])
  {
    v21 = 0;
    v7 = [STReservableSpacePolicy threadPolicyWithErrorPtr:&v21];
    v8 = v21;
    v9 = v8;
    if (!v7)
    {
      v10 = sub_124C(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_5680(self, v9);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  if (!self->_extractor)
  {
    goto LABEL_19;
  }

  v11 = AAThreadErrorContextEnter();
  v12 = sub_124C(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = self->_session;
    *buf = 138412546;
    v23 = v13;
    v24 = 2082;
    v25 = "[STAEAExtractor finishStreamWithCompletionBlock:]";
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "[%@] %{public}s: Calling AAAssetExtractorDestroy()", buf, 0x16u);
  }

  v14 = AAAssetExtractorDestroy();
  self->_extractor = 0;
  self->_offset = 0;
  if (!v14)
  {
    AAThreadErrorContextLeave();
LABEL_19:
    v20 = 0;
    goto LABEL_22;
  }

  v15 = v14;
  v16 = sub_124C(v14);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_5720();
  }

  if (v15 < 1)
  {
    v17 = [NSString stringWithFormat:@"Couldn't destroy extractor (%d)", v15];
    v18 = v17;
    v19 = 566;
  }

  else
  {
    v17 = [NSString stringWithFormat:@"Extraction not complete (%d)", v15];
    v18 = v17;
    v19 = 564;
  }

  v20 = STCreateAEAError(v17, "[STAEAExtractor finishStreamWithCompletionBlock:]", "/Library/Caches/com.apple.xbs/Sources/StreamingExtractor/AEAExtractionPlugin/STAEAExtractorPlugin.m", v19);

LABEL_22:
  blockCopy[2](blockCopy, v20);
}

- (void)terminateStreamWithError:(id)error completionBlock:(id)block
{
  errorCopy = error;
  blockCopy = block;
  v8 = sub_124C(blockCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_579C();
  }

  usesReserveAccessPolicy = [(STAEAExtractor *)self usesReserveAccessPolicy];
  if (usesReserveAccessPolicy)
  {
    v18 = 0;
    v10 = [STReservableSpacePolicy threadPolicyWithErrorPtr:&v18];
    v11 = v18;
    v12 = v11;
    if (!v10)
    {
      v13 = sub_124C(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_5824(self, v12);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  if (self->_extractor)
  {
    v14 = sub_124C(usesReserveAccessPolicy);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      session = self->_session;
      *buf = 138412546;
      v20 = session;
      v21 = 2082;
      v22 = "[STAEAExtractor terminateStreamWithError:completionBlock:]";
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "[%@] %{public}s: Calling AAAssetExtractorDestroy", buf, 0x16u);
    }

    v16 = AAAssetExtractorDestroy();
    self->_extractor = 0;
    self->_offset = 0;
    if (v16)
    {
      v17 = sub_124C(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_58C4();
      }
    }
  }

  blockCopy[2](blockCopy, errorCopy);
}

- (STExtractionPluginDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end