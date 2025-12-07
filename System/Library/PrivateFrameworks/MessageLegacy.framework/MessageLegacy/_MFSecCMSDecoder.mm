@interface _MFSecCMSDecoder
- (_MFSecCMSDecoder)initWithPartData:(id)data error:(id *)error;
- (id)data;
- (id)signedData;
- (id)verifyAgainstSenders:(id)senders signingError:(id *)error;
- (int64_t)appendData:(id)data;
- (void)dealloc;
- (void)done;
@end

@implementation _MFSecCMSDecoder

- (_MFSecCMSDecoder)initWithPartData:(id)data error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  v19.receiver = self;
  v19.super_class = _MFSecCMSDecoder;
  v6 = [(_MFSecCMSDecoder *)&v19 init];
  if (v6)
  {
    v18 = 0;
    v7 = SecCmsDecoderCreate();
    *(v6 + 2) = v7;
    if (v7)
    {
      v8 = MFLogGeneral();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [_MFSecCMSDecoder initWithPartData:error:];
      }
    }

    else
    {
      [data bytes];
      [data length];
      v9 = SecCmsDecoderUpdate();
      *(v6 + 2) = v9;
      if (v9)
      {
        v10 = MFLogGeneral();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [_MFSecCMSDecoder initWithPartData:data error:?];
        }
      }

      else
      {
        v12 = SecCmsDecoderFinish();
        *(v6 + 2) = v12;
        v18 = 0;
        if (*(v6 + 2))
        {
          *(v6 + 56) = SecCmsMessageIsEncrypted() != 0;
          v12 = *(v6 + 2);
        }

        if (v12)
        {
          v13 = MFLogGeneral();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [_MFSecCMSDecoder initWithPartData:error:];
          }
        }

        *(v6 + 6) = _ExtractContentWithTag(*(v6 + 2), 27);
        ContentWithTag = _ExtractContentWithTag(*(v6 + 2), 26);
        *(v6 + 5) = ContentWithTag;
        if (ContentWithTag)
        {
          if (!SecCmsSignedDataHasDigests())
          {
            SecCmsSignedDataGetDigestAlgs();
            started = SecCmsDigestContextStartMultiple();
            *(v6 + 3) = started;
            if (!started)
            {

              v16 = MFLogGeneral();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
              {
                *v17 = 0;
                _os_log_impl(&dword_258BDA000, v16, OS_LOG_TYPE_INFO, "#SMIMEErrors SecCmsDigestContextStartMultiple failed", v17, 2u);
              }

              v6 = 0;
              if (error)
              {
                *error = [MFError errorWithDomain:*MEMORY[0x277CCA5B8] code:12 userInfo:0];
              }
            }
          }
        }
      }
    }

    if (v18)
    {
      SecCmsDecoderDestroy();
    }

    if (v6 && error && *(v6 + 2))
    {
      *error = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed")];
    }
  }

  return v6;
}

- (void)dealloc
{
  digest = self->_digest;
  if (digest)
  {
    MEMORY[0x259C96CD0](digest, a2);
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
  if (self->_SecCMSError)
  {
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(_MFSecCMSDecoder *)v3 appendData:v4, v5, v6, v7, v8, v9, v10];
    }

    return -1;
  }

  if (self->_signedData)
  {
    v11 = [data length];
    if (self->_digest)
    {
      [data bytes];
      SecCmsDigestContextUpdate();
    }

    return v11;
  }

  if (!self->_envelopedData)
  {
    v15 = MFLogGeneral();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_258BDA000, v15, OS_LOG_TYPE_INFO, "#SMIMEErrors -appendData: called on _MFSecCMSDecoder with no signed or enveloped data!", v16, 2u);
    }

    return -1;
  }

  return [data length];
}

- (void)done
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_3(&dword_258BDA000, v0, v1, "#SMIMEErrors SecCmsSignedDataSetDigestContext on -done returned %ld", v2, v3, v4, v5);
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
      envelopedData = [objc_alloc(MEMORY[0x277D24F70]) initWithBytesNoCopy:envelopedData[1] length:*envelopedData freeWhenDone:0];
    }

    v2 = vars8;
  }

  return envelopedData;
}

- (id)verifyAgainstSenders:(id)senders signingError:(id *)error
{
  v51 = *MEMORY[0x277D85DE8];
  if (error)
  {
    *error = 0;
  }

  if (!self->_SecCMSError)
  {
    if ([senders count])
    {
      v10 = [senders objectAtIndex:0];
    }

    else
    {
      v10 = 0;
    }

    if (SecCmsSignedDataHasDigests())
    {
      if (v10)
      {
        v11 = SecCmsSignedDataSignerInfoCount();
        v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v11];
        if (v11)
        {
          v13 = [MFMessageKeychainManager copySMIMESigningPolicyForAddress:v10];
          v15 = v13;
          v38 = v11;
          if (v11 >= 1)
          {
            v7 = 0;
            v16 = 0;
            *&v14 = 67109120;
            v37 = v14;
            v17 = v38;
            v39 = v13;
            while (1)
            {
              SignerInfo = SecCmsSignedDataGetSignerInfo();
              v19 = SecCmsSignedDataVerifySignerInfo();
              self->_SecCMSError = v19;
              if (!v19)
              {
                if (SignerInfo)
                {
                  VerificationStatus = SecCmsSignerInfoGetVerificationStatus();
                  SignerInfo = SecCmsSignerInfoCopyCertFromEncryptionKeyPreference();
                  if (SignerInfo)
                  {
LABEL_22:
                    v23 = v12;
                    v24 = v10;
                    v25 = [MFMessageKeychainManager copySMIMEEncryptionPolicyForAddress:v10, v37];
                    *trust = 0;
                    v26 = SecTrustCreateWithCertificates(SignerInfo, v25, trust);
                    CFRelease(v25);
                    CFRelease(SignerInfo);
                    if (v26)
                    {
                      v27 = MFLogGeneral();
                      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                      {
                        *buf = v37;
                        v50 = v26;
                        _os_log_error_impl(&dword_258BDA000, v27, OS_LOG_TYPE_ERROR, "#SMIMEErrors SecTrustCreateWithCertificates returned %d", buf, 8u);
                      }

                      SignerInfo = 0;
                      v10 = v24;
                      v12 = v23;
                      v17 = v38;
                    }

                    else
                    {
                      SignerInfo = *trust;
                      v10 = v24;
                      v12 = v23;
                      v17 = v38;
                      if (!*trust)
                      {
                        v29 = MFLogGeneral();
                        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                        {
                          [(_MFSecCMSDecoder *)&v40 verifyAgainstSenders:v41 signingError:v29];
                        }

                        SignerInfo = 0;
                      }
                    }
                  }

                  else
                  {
                    CertificateAtIndex = SecTrustGetCertificateAtIndex(0, 0);
                    if ((SecCertificateGetKeyUsage() & 4) != 0)
                    {
                      SignerInfo = CFRetain(CertificateAtIndex);
                      goto LABEL_22;
                    }
                  }
                }

                else
                {
                  VerificationStatus = 2;
                }

                v30 = [[MFMessageSigner alloc] initWithSender:v10 signingTrust:0 encryptionTrust:SignerInfo verification:VerificationStatus];
                if (SignerInfo)
                {
                  CFRelease(SignerInfo);
                }

                if (error)
                {
                  error = [(MFMessageSigner *)v30 error];
                  *error = error;
                  if (error)
                  {
                    v32 = MFLogGeneral();
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                    {
                      [(_MFSecCMSDecoder *)v42 verifyAgainstSenders:error signingError:&v43, v32];
                    }
                  }
                }

                [(NSArray *)v12 addObject:v30, v37];

                v15 = v39;
                goto LABEL_42;
              }

              v7 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed")];
              v20 = SignerInfo ? SecCmsSignerInfoGetSignerEmailAddress() : 0;
              v28 = MFLogGeneral();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                break;
              }

              if (v20)
              {
                goto LABEL_29;
              }

LABEL_42:
              if (v17 == ++v16)
              {
                goto LABEL_55;
              }
            }

            SecCMSError = self->_SecCMSError;
            v34 = @"(Unknown)";
            if (!v20)
            {
              v34 = 0;
            }

            *trust = 134218498;
            *&trust[4] = SecCMSError;
            v45 = 1024;
            v46 = v16;
            v47 = 2112;
            v48 = v34;
            _os_log_error_impl(&dword_258BDA000, v28, OS_LOG_TYPE_ERROR, "#SMIMEErrors SecCmsSignedDataVerifySignerInfo returned %ld for #%d:%@", trust, 0x1Cu);
            if (!v20)
            {
              goto LABEL_42;
            }

LABEL_29:
            CFRelease(v20);
            goto LABEL_42;
          }

          v7 = 0;
LABEL_55:
          if (v15)
          {
            CFRelease(v15);
          }
        }

        else
        {
          v7 = 0;
        }

        self->_signers = v12;
        return v7;
      }

      v7 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed")];
      v35 = MFLogGeneral();
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        return v7;
      }

      *trust = 0;
      v36 = "#SMIMEErrors The message sender is missing";
    }

    else
    {
      v7 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed")];
      v35 = MFLogGeneral();
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        return v7;
      }

      *trust = 0;
      v36 = "#SMIMEErrors There were no digests in the message";
    }

    _os_log_impl(&dword_258BDA000, v35, OS_LOG_TYPE_INFO, v36, trust, 2u);
    return v7;
  }

  v7 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1036 localizedDescription:MFLookupLocalizedString(@"SMIME_UNREADABLE_SIG", @"There was a problem reading the digital signature for this message.", @"Delayed")];
  v8 = MFLogGeneral();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [_MFSecCMSDecoder verifyAgainstSenders:signingError:];
  }

  return v7;
}

- (id)signedData
{
  signedData = self->_signedData;
  if (signedData)
  {
    SecCmsSignedDataGetContentInfo();
    signedData = SecCmsContentInfoGetInnerContent();
    if (signedData)
    {
      signedData = [objc_alloc(MEMORY[0x277D24F70]) initWithBytesNoCopy:signedData[1] length:*signedData freeWhenDone:0];
    }

    v2 = vars8;
  }

  return signedData;
}

- (void)initWithPartData:error:.cold.1()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_3(&dword_258BDA000, v0, v1, "#SMIMEErrors SecCmsDecoderCreate returned %ld", v2, v3, v4, v5);
}

- (void)initWithPartData:(uint64_t)a1 error:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  [a2 length];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)initWithPartData:error:.cold.3()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_3(&dword_258BDA000, v0, v1, "#SMIMEErrors SecCmsDecoderFinish returned %ld", v2, v3, v4, v5);
}

- (void)verifyAgainstSenders:signingError:.cold.1()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_3(&dword_258BDA000, v0, v1, "#SMIMEErrors _MFSecCMSDecoder asked to verify with pending error (%ld)", v2, v3, v4, v5);
}

- (void)verifyAgainstSenders:(os_log_t)log signingError:.cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_258BDA000, log, OS_LOG_TYPE_ERROR, "#SMIMEErrors SecTrustCreateWithCertificates returned a null SecTrustRef", buf, 2u);
}

- (void)verifyAgainstSenders:(uint64_t *)a3 signingError:(NSObject *)a4 .cold.3(uint8_t *a1, id *a2, uint64_t *a3, NSObject *a4)
{
  v7 = [*a2 ef_publicDescription];
  *a1 = 138543362;
  *a3 = v7;
  _os_log_error_impl(&dword_258BDA000, a4, OS_LOG_TYPE_ERROR, "#SMIMEErrors There was a signing error %{public}@", a1, 0xCu);
}

@end