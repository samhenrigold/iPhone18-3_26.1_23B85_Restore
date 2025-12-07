@interface _MFSecCMSEncoder
- (id)data;
- (id)initForEncryptionWithCompositionSpecification:(void *)specification error:;
- (id)initForSigningWithSender:(void *)sender compositionSpecification:(void *)specification error:;
- (int64_t)appendData:(id)data;
- (void)dealloc;
- (void)done;
@end

@implementation _MFSecCMSEncoder

- (id)initForSigningWithSender:(void *)sender compositionSpecification:(void *)specification error:
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a2;
  senderCopy = sender;
  if (!self)
  {
    goto LABEL_30;
  }

  v23.receiver = self;
  v23.super_class = _MFSecCMSEncoder;
  self = objc_msgSendSuper2(&v23, sel_init);
  if (!self)
  {
    goto LABEL_30;
  }

  v9 = [senderCopy objectForKey:@"SigningIdentity"];
  if (!v9)
  {
    v12 = MFLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v7;
      _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_INFO, "#SMIMEErrors Found no identity for %@", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v10 = SecCmsMessageCreate();
  if (!v10)
  {
    v12 = MFLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_INFO, "#SMIMEErrors SecCmsMessageCreate for signing failed", buf, 2u);
    }

LABEL_12:

    goto LABEL_24;
  }

  if (!SecCmsSignedDataCreate())
  {
    v11 = MFLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v11, OS_LOG_TYPE_INFO, "#SMIMEErrors SecCmsSignedDataCreate failed", buf, 2u);
    }

    goto LABEL_22;
  }

  SecCmsMessageGetContentInfo();
  *(self + 10) = SecCmsContentInfoSetContentSignedData();
  if (*(self + 10))
  {
    v11 = MFLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_MFSecCMSEncoder initForSigningWithSender:compositionSpecification:error:];
    }

LABEL_22:

LABEL_23:
    SecCmsMessageDestroy();
    goto LABEL_24;
  }

  SecCmsSignedDataGetContentInfo();
  *(self + 10) = SecCmsContentInfoSetContentData();
  if (*(self + 10))
  {
    v11 = MFLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_MFSecCMSEncoder initForSigningWithSender:compositionSpecification:error:];
    }

    goto LABEL_22;
  }

  v17 = SecCmsSignerInfoCreate();
  if (!v17)
  {
    v11 = MFLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B0389000, v11, OS_LOG_TYPE_INFO, "#SMIMEErrors SecCmsSignerInfoCreate failed", buf, 2u);
    }

    goto LABEL_22;
  }

  *(self + 10) = SecCmsSignerInfoIncludeCerts();
  if (*(self + 10))
  {
    v11 = MFLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_MFSecCMSEncoder initForSigningWithSender:compositionSpecification:error:];
    }

    goto LABEL_22;
  }

  *buf = 0;
  v18 = [senderCopy objectForKey:@"EncryptionIdentity"];
  if (v18)
  {
    SecIdentityCopyCertificate(v18, buf);
  }

  certificateRef = 0;
  SecIdentityCopyCertificate(v9, &certificateRef);
  if (*buf)
  {
    v19 = *buf;
  }

  else
  {
    v19 = certificateRef;
  }

  MEMORY[0x1B272A3C0](v17, v19, 0);
  if (*buf)
  {
    v20 = *buf;
  }

  else
  {
    v20 = certificateRef;
  }

  MEMORY[0x1B272A3B0](v17, v20, 0);
  if (*buf && !CFEqual(*buf, certificateRef))
  {
    *(self + 10) = SecCmsSignedDataAddCertChain();
  }

  if (certificateRef)
  {
    CFRelease(certificateRef);
  }

  if (*buf)
  {
    CFRelease(*buf);
  }

  if (*(self + 10))
  {
    v21 = MFLogGeneral();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [_MFSecCMSEncoder initForSigningWithSender:compositionSpecification:error:];
    }

    goto LABEL_23;
  }

  CFAbsoluteTimeGetCurrent();
  SecCmsSignerInfoAddSigningTime();
  *(self + 7) = v10;
LABEL_24:
  if (!*(self + 6) && !*(self + 7) || *(self + 10))
  {
    if (specification)
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = MFLookupLocalizedString(@"SMIME_CANT_SIGN_MESSAGE", @"An error occurred while trying to sign this message with a certificate from “%@”. Verify that your certificate for this address is correct, and that its private key is in your keychain.", @"Delayed");
      v15 = [v13 stringWithFormat:v14, v7];
      *specification = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:v15];
    }

    self = 0;
  }

LABEL_30:

  return self;
}

- (id)initForEncryptionWithCompositionSpecification:(void *)specification error:
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (!self)
  {
    goto LABEL_45;
  }

  v31.receiver = self;
  v31.super_class = _MFSecCMSEncoder;
  self = objc_msgSendSuper2(&v31, sel_init);
  if (!self)
  {
    goto LABEL_45;
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  specificationCopy = specification;
  [v5 objectForKey:@"RecipientCertificates"];
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v7 = v27 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [v7 objectForKey:*(*(&v27 + 1) + 8 * i)];
        [v6 addObjectsFromArray:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }

  v12 = [v5 objectForKey:@"EncryptionIdentity"];
  if (v12 || (v12 = [v5 objectForKey:@"SigningIdentity"]) != 0)
  {
    certificateRef[0] = 0;
    SecIdentityCopyCertificate(v12, certificateRef);
    if (certificateRef[0])
    {
      [v6 addObject:?];
      CFRelease(certificateRef[0]);
    }
  }

  v13 = [v6 count];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v16 & 1) == 0)
  {
    memset(v15, 170, 8 * v13 + 8);
  }

  *&v15[8 * v13] = 0;
  v34.location = 0;
  v34.length = v13;
  CFArrayGetValues(v6, v34, v15);
  v17 = SecCmsMessageCreate();
  if (!v17)
  {
    v19 = MFLogGeneral();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      LOWORD(certificateRef[0]) = 0;
      _os_log_impl(&dword_1B0389000, v19, OS_LOG_TYPE_INFO, "#SMIMEErrors SecCmsMessageCreate for encryption failed", certificateRef, 2u);
    }

    goto LABEL_38;
  }

  if (!SecCmsEnvelopedDataCreate())
  {
    v18 = MFLogGeneral();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
LABEL_37:

      SecCmsMessageDestroy();
      goto LABEL_38;
    }

    LOWORD(certificateRef[0]) = 0;
    v20 = "#SMIMEErrors SecCmsEnvelopedDataCreate failed";
LABEL_26:
    _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_INFO, v20, certificateRef, 2u);
    goto LABEL_37;
  }

  SecCmsMessageGetContentInfo();
  *(self + 10) = SecCmsContentInfoSetContentEnvelopedData();
  if (*(self + 10))
  {
    v18 = MFLogGeneral();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [_MFSecCMSEncoder initForEncryptionWithCompositionSpecification:error:];
    }

    goto LABEL_37;
  }

  SecCmsEnvelopedDataGetContentInfo();
  *(self + 10) = SecCmsContentInfoSetContentData();
  if (*(self + 10))
  {
    v18 = MFLogGeneral();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [_MFSecCMSEncoder initForEncryptionWithCompositionSpecification:error:];
    }

    goto LABEL_37;
  }

  if (v13)
  {
    while (!*(self + 10) && SecCmsRecipientInfoCreate())
    {
      v15 += 8;
      if (!--v13)
      {
        goto LABEL_34;
      }
    }

    v18 = MFLogGeneral();
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      goto LABEL_37;
    }

    LOWORD(certificateRef[0]) = 0;
    v20 = "#SMIMEErrors Failed to create all the required recipients";
    goto LABEL_26;
  }

LABEL_34:
  *(self + 7) = v17;
LABEL_38:
  if (!*(self + 6) && !*(self + 7) || *(self + 10))
  {
    if (specificationCopy)
    {
      v21 = MFLookupLocalizedString(@"SMIME_CANT_ENCRYPT_MESSAGE", @"An error occurred while trying to encrypt your message. Verify that you have valid certificates in your keychain for all of the recipients.", @"Delayed");
      v22 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1035 localizedDescription:v21];
      *specificationCopy = v22;
    }

    self = 0;
  }

LABEL_45:
  return self;
}

- (void)dealloc
{
  if (self->_encoder)
  {
    SecCmsEncoderDestroy();
  }

  if (self->_message)
  {
    SecCmsMessageDestroy();
  }

  v3.receiver = self;
  v3.super_class = _MFSecCMSEncoder;
  [(MFBufferedDataConsumer *)&v3 dealloc];
}

- (int64_t)appendData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  if (self->_SecCMSError)
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [_MFSecCMSEncoder appendData:];
    }

LABEL_4:

    v7 = -1;
    goto LABEL_11;
  }

  if (!self->_message)
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_INFO, "#SMIMEErrors -appendData: called twice _MFSecCMSEncoder (only once is allowed for now)!", v13, 2u);
    }

    goto LABEL_4;
  }

  v7 = [dataCopy length];
  v13[1] = [v5 bytes];
  v8 = objc_alloc_init(MEMORY[0x1E69AD730]);
  singleShot = self->_singleShot;
  self->_singleShot = v8;

  v10 = SecCmsMessageEncode();
  self->_SecCMSError = v10;
  if (v10)
  {
    v11 = MFLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_MFSecCMSEncoder appendData:];
    }

    v7 = -1;
  }

  SecCmsMessageDestroy();
  self->_message = 0;
LABEL_11:

  return v7;
}

- (void)done
{
  OUTLINED_FUNCTION_7_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_2(&dword_1B0389000, v0, v1, "#SMIMEErrors SecCmsEncoderFinish on -done returned %ld", v2, v3, v4, v5);
}

- (id)data
{
  data = self->_singleShot;
  if (!data)
  {
    v5.receiver = self;
    v5.super_class = _MFSecCMSEncoder;
    data = [(MFBufferedDataConsumer *)&v5 data];
  }

  return data;
}

- (void)appendData:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)appendData:.cold.2()
{
  OUTLINED_FUNCTION_7_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_2(&dword_1B0389000, v0, v1, "#SMIMEErrors SecCmsMessageEncode returned %ld", v2, v3, v4, v5);
}

@end