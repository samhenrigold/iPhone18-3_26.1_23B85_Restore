@interface _MFSecCMSDecoder
- (id)data;
- (id)verifyAgainstSenders:(id *)senders signingError:;
- (int64_t)appendData:(id)data;
- (uint64_t)initWithPartData:(void *)data error:;
- (void)dealloc;
- (void)done;
- (void)signedData;
@end

@implementation _MFSecCMSDecoder

- (uint64_t)initWithPartData:(void *)data error:
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (self)
  {
    if (data)
    {
      *data = 0;
    }

    v18.receiver = self;
    v18.super_class = _MFSecCMSDecoder;
    self = objc_msgSendSuper2(&v18, sel_init);
    if (self)
    {
      v6 = SecCmsDecoderCreate();
      *(self + 2) = v6;
      v7 = (self + 1);
      if (v6)
      {
        v8 = MFLogGeneral();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [_MFSecCMSDecoder initWithPartData:error:];
        }
      }

      else
      {
        v9 = v5;
        [v5 bytes];
        [v5 length];
        v10 = SecCmsDecoderUpdate();
        *v7 = v10;
        if (!v10)
        {
          v13 = SecCmsDecoderFinish();
          *v7 = v13;
          if (self[2])
          {
            *(self + 56) = SecCmsMessageIsEncrypted() != 0;
            v13 = *(self + 2);
          }

          if (v13)
          {
            v14 = MFLogGeneral();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              [_MFSecCMSDecoder initWithPartData:error:];
            }
          }

          self[6] = _ExtractContentWithTag(self[2], 27);
          ContentWithTag = _ExtractContentWithTag(self[2], 26);
          self[5] = ContentWithTag;
          if (ContentWithTag)
          {
            if (!SecCmsSignedDataHasDigests())
            {
              SecCmsSignedDataGetDigestAlgs();
              started = SecCmsDigestContextStartMultiple();
              self[3] = started;
              if (!started)
              {

                v17 = MFLogGeneral();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1B0389000, v17, OS_LOG_TYPE_INFO, "#SMIMEErrors SecCmsDigestContextStartMultiple failed", buf, 2u);
                }

                if (data)
                {
                  [MFError errorWithDomain:*MEMORY[0x1E696A798] code:12 userInfo:0];
                  *data = self = 0;
                }

                else
                {
                  self = 0;
                }
              }
            }
          }

          goto LABEL_13;
        }

        v8 = MFLogGeneral();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          -[_MFSecCMSDecoder initWithPartData:error:].cold.2(*v7, buf, [v5 length], v8);
        }
      }

LABEL_13:
      if (self && data && *(self + 2))
      {
        v11 = MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed");
        *data = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:v11];
      }
    }
  }

  return self;
}

- (id)verifyAgainstSenders:(id *)senders signingError:
{
  v52 = *MEMORY[0x1E69E9840];
  v41 = a2;
  if (self)
  {
    if (senders)
    {
      *senders = 0;
    }

    v5 = (self + 8);
    if (*(self + 8))
    {
      v6 = MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed");
      v42 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:v6];

      v7 = MFLogGeneral();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [_MFSecCMSDecoder verifyAgainstSenders:signingError:];
      }

      goto LABEL_63;
    }

    if ([v41 count])
    {
      v7 = [v41 objectAtIndex:0];
    }

    else
    {
      v7 = 0;
    }

    if (SecCmsSignedDataHasDigests())
    {
      if (!v7)
      {
        v34 = MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed");
        v42 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:v34];

        v7 = MFLogGeneral();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *trust = 0;
          _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_INFO, "#SMIMEErrors The message sender is missing", trust, 2u);
        }

        goto LABEL_63;
      }

      v8 = SecCmsSignedDataSignerInfoCount();
      v38 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v8];
      if (v8)
      {
        v40 = [MFMessageKeychainManager copySMIMESigningPolicyForAddress:v7];
        if (v8 >= 1)
        {
          v39 = v8;
          v42 = 0;
          v10 = 0;
          *&v9 = 67109120;
          v37 = v9;
          while (1)
          {
            SignerInfo = SecCmsSignedDataGetSignerInfo();
            v12 = SecCmsSignedDataVerifySignerInfo();
            *v5 = v12;
            if (!v12)
            {
              break;
            }

            v13 = MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed");
            v14 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:v13];

            if (SignerInfo)
            {
              SignerEmailAddress = SecCmsSignerInfoGetSignerEmailAddress();
            }

            else
            {
              SignerEmailAddress = 0;
            }

            v23 = MFLogGeneral();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v30 = *v5;
              v31 = @"(Unknown)";
              if (!SignerEmailAddress)
              {
                v31 = 0;
              }

              *trust = 134218498;
              *&trust[4] = v30;
              v46 = 1024;
              v47 = v10;
              v48 = 2112;
              v49 = v31;
              _os_log_error_impl(&dword_1B0389000, v23, OS_LOG_TYPE_ERROR, "#SMIMEErrors SecCmsSignedDataVerifySignerInfo returned %ld for #%d:%@", trust, 0x1Cu);
            }

            v42 = v14;
LABEL_43:

            if (v39 == ++v10)
            {
              goto LABEL_60;
            }
          }

          if (!SignerInfo)
          {
            v24 = v7;
            v22 = 0;
            VerificationStatus = 2;
            goto LABEL_35;
          }

          VerificationStatus = SecCmsSignerInfoGetVerificationStatus();
          v17 = v7;
          ValueAtIndex = SecCmsSignerInfoCopyCertFromEncryptionKeyPreference();
          if (!ValueAtIndex)
          {
            v25 = SecTrustCopyCertificateChain(0);
            v26 = v25;
            if (v25)
            {
              if (CFArrayGetCount(v25) < 1)
              {
                v27 = 0;
                ValueAtIndex = 0;
              }

              else
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v26, 0);
                if (ValueAtIndex && (SecCertificateGetKeyUsage() & 0x14) != 0)
                {
                  ValueAtIndex = CFRetain(ValueAtIndex);
                  v27 = 1;
                }

                else
                {
                  v27 = 0;
                }
              }

              CFRelease(v26);
              if (!v27)
              {
LABEL_24:
                v22 = 0;
LABEL_35:

                SignerEmailAddress = [[MFMessageSigner alloc] initWithSender:v7 signingTrust:0 encryptionTrust:v22 verification:VerificationStatus];
                if (v22)
                {
                  CFRelease(v22);
                }

                if (senders)
                {
                  error = [(MFMessageSigner *)SignerEmailAddress error];
                  *senders = error;
                  if (error)
                  {
                    v29 = MFLogGeneral();
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                    {
                      [*senders ef_publicDescription];
                      objc_claimAutoreleasedReturnValue();
                      [_MFSecCMSDecoder verifyAgainstSenders:signingError:];
                    }
                  }
                }

                [v38 addObject:{SignerEmailAddress, v37}];
                goto LABEL_43;
              }
            }

            else
            {
              ValueAtIndex = 0;
            }
          }

          v19 = [MFMessageKeychainManager copySMIMEEncryptionPolicyForAddress:v17, v37];
          *trust = 0;
          v20 = SecTrustCreateWithCertificates(ValueAtIndex, v19, trust);
          CFRelease(v19);
          CFRelease(ValueAtIndex);
          if (v20)
          {
            v21 = MFLogGeneral();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = v37;
              v51 = v20;
              _os_log_error_impl(&dword_1B0389000, v21, OS_LOG_TYPE_ERROR, "#SMIMEErrors SecTrustCreateWithCertificates returned %d", buf, 8u);
            }
          }

          else
          {
            v22 = *trust;
            if (*trust)
            {
              goto LABEL_35;
            }

            v21 = MFLogGeneral();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              [(_MFSecCMSDecoder *)&v43 verifyAgainstSenders:v44 signingError:v21];
            }
          }

          goto LABEL_24;
        }

        v42 = 0;
LABEL_60:
        if (v40)
        {
          CFRelease(v40);
        }
      }

      else
      {
        v42 = 0;
      }

      v35 = *(self + 32);
      *(self + 32) = v38;
    }

    else
    {
      v32 = MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed");
      v42 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:v32];

      v33 = MFLogGeneral();
      [_MFSecCMSDecoder verifyAgainstSenders:v33 signingError:?];
    }

LABEL_63:

    goto LABEL_64;
  }

  v42 = 0;
LABEL_64:

  return v42;
}

- (void)dealloc
{
  digest = self->_digest;
  if (digest)
  {
    MEMORY[0x1B272A220](digest, a2);
  }

  if (self->_message)
  {
    SecCmsMessageDestroy();
  }

  v4.receiver = self;
  v4.super_class = _MFSecCMSDecoder;
  [(_MFSecCMSDecoder *)&v4 dealloc];
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
      [_MFSecCMSDecoder appendData:];
    }

LABEL_4:

    v7 = -1;
    goto LABEL_5;
  }

  if (!self->_signedData)
  {
    if (self->_envelopedData)
    {
      v7 = [dataCopy length];
      goto LABEL_5;
    }

    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_INFO, "#SMIMEErrors -appendData: called on _MFSecCMSDecoder with no signed or enveloped data!", v9, 2u);
    }

    goto LABEL_4;
  }

  v7 = [dataCopy length];
  if (self->_digest)
  {
    [v5 bytes];
    SecCmsDigestContextUpdate();
  }

LABEL_5:

  return v7;
}

- (void)done
{
  OUTLINED_FUNCTION_7_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_2(&dword_1B0389000, v0, v1, "#SMIMEErrors SecCmsSignedDataSetDigestContext on -done returned %ld", v2, v3, v4, v5);
}

- (id)data
{
  envelopedData = self->_envelopedData;
  if (envelopedData)
  {
    SecCmsEnvelopedDataGetContentInfo();
    envelopedData = SecCmsContentInfoGetInnerContent();
    if (envelopedData)
    {
      envelopedData = [objc_alloc(MEMORY[0x1E69AD730]) initWithBytesNoCopy:envelopedData[1] length:*envelopedData freeWhenDone:0];
    }

    v2 = vars8;
  }

  return envelopedData;
}

- (void)signedData
{
  if (InnerContent)
  {
    InnerContent = InnerContent[5];
    if (InnerContent)
    {
      SecCmsSignedDataGetContentInfo();
      InnerContent = SecCmsContentInfoGetInnerContent();
      if (InnerContent)
      {
        InnerContent = [objc_alloc(MEMORY[0x1E69AD730]) initWithBytesNoCopy:InnerContent[1] length:*InnerContent freeWhenDone:0];
      }

      v1 = vars8;
    }
  }

  return InnerContent;
}

- (void)initWithPartData:error:.cold.1()
{
  OUTLINED_FUNCTION_7_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_2(&dword_1B0389000, v0, v1, "#SMIMEErrors SecCmsDecoderCreate returned %ld", v2, v3, v4, v5);
}

- (void)initWithPartData:(uint64_t)a3 error:(os_log_t)log .cold.2(int a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "#SMIMEErrors SecCmsDecoderUpdate returned %ld for %lu bytes", buf, 0x16u);
}

- (void)initWithPartData:error:.cold.3()
{
  OUTLINED_FUNCTION_7_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_2(&dword_1B0389000, v0, v1, "#SMIMEErrors SecCmsDecoderFinish returned %ld", v2, v3, v4, v5);
}

- (void)verifyAgainstSenders:signingError:.cold.1()
{
  OUTLINED_FUNCTION_7_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1_2(&dword_1B0389000, v0, v1, "#SMIMEErrors _MFSecCMSDecoder asked to verify with pending error (%ld)", v2, v3, v4, v5);
}

- (void)verifyAgainstSenders:(os_log_t)log signingError:.cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "#SMIMEErrors SecTrustCreateWithCertificates returned a null SecTrustRef", buf, 2u);
}

- (void)verifyAgainstSenders:signingError:.cold.3()
{
  OUTLINED_FUNCTION_0();
  *v1 = 138543362;
  *v3 = v2;
  _os_log_error_impl(&dword_1B0389000, v5, OS_LOG_TYPE_ERROR, "#SMIMEErrors There was a signing error %{public}@", v4, 0xCu);
}

- (void)verifyAgainstSenders:(NSObject *)a1 signingError:.cold.4(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_1B0389000, a1, OS_LOG_TYPE_INFO, "#SMIMEErrors There were no digests in the message", v2, 2u);
  }
}

- (void)appendData:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end