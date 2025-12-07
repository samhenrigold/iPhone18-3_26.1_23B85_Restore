@interface ISPurchaseReceipt
+ (ISPurchaseReceipt)receiptWithContentsOfFile:(id)file;
- (BOOL)_anchorTrust:(__SecTrust *)trust toRootCertificateIn:(__CFArray *)in;
- (BOOL)_checkArray:(__CFArray *)array containsCertificateWithOID:(__CFString *)d;
- (BOOL)_checkIfCertificate:(__SecCertificate *)certificate containsOID:(__CFString *)d;
- (BOOL)_decodeReceiptData:(id)data toDecodedMessage:(SecCmsMessageStr *)message;
- (BOOL)_parseReceiptFromMessage:(SecCmsMessageStr *)message;
- (BOOL)_setPoliciesForTrust:(__SecTrust *)trust;
- (ISPurchaseReceipt)initWithContentsOfFile:(id)file;
- (SecCmsSignedDataStr)_extractSignedDataFromMessage:(SecCmsMessageStr *)message;
- (__CFArray)_copyCertificatesFromSignedData:(SecCmsSignedDataStr *)data;
- (int64_t)_verifySignatureForSignedData:(SecCmsSignedDataStr *)data onDate:(id)date;
- (void)_parseTokens:(id)tokens;
@end

@implementation ISPurchaseReceipt

+ (ISPurchaseReceipt)receiptWithContentsOfFile:(id)file
{
  fileCopy = file;
  v4 = [[ISPurchaseReceipt alloc] initWithContentsOfFile:fileCopy];

  return v4;
}

- (ISPurchaseReceipt)initWithContentsOfFile:(id)file
{
  v30 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  v24.receiver = self;
  v24.super_class = ISPurchaseReceipt;
  v5 = [(ISPurchaseReceipt *)&v24 init];
  if (v5)
  {
    if (fileCopy && [fileCopy length])
    {
      v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:fileCopy];
      v7 = v6;
      if (v6 && [v6 length])
      {
        *v25 = 0;
        v8 = [(ISPurchaseReceipt *)v5 _decodeReceiptData:v7 toDecodedMessage:v25]&& [(ISPurchaseReceipt *)v5 _parseReceiptFromMessage:*v25]&& [(ISPurchaseReceipt *)v5 _verifySignatureForSignedData:[(ISPurchaseReceipt *)v5 _extractSignedDataFromMessage:*v25] onDate:v5->_receiptCreationDate]!= 0xFFFF;
        if (*v25)
        {
          SecCmsMessageDestroy();
        }

        if (v8)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = +[SSLogConfig sharedStoreServicesConfig];
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
      v13 = objc_opt_class();
      v14 = v13;
      v15 = [v7 length];
      *v25 = 138412802;
      *&v25[4] = v13;
      v26 = 2048;
      v27 = v15;
      v28 = 2112;
      v29 = fileCopy;
      v16 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_1D48BA000, oSLogObject, 0, "[%@] Invalid receipt [%ld bytes] -- [%@]", v25, 32);

      if (!v16)
      {
LABEL_22:

        v5 = 0;
LABEL_23:

        goto LABEL_24;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:4];
      free(v16);
      SSFileLog(v9, @"%@", v17, v18, v19, v20, v21, v22, oSLogObject);
    }

    goto LABEL_22;
  }

LABEL_24:

  return v5;
}

- (BOOL)_anchorTrust:(__SecTrust *)trust toRootCertificateIn:(__CFArray *)in
{
  v18 = *MEMORY[0x1E69E9840];
  v17[0] = xmmword_1D4B39000;
  v17[1] = unk_1D4B39010;
  v6 = CFDataCreate(0, v17, 32);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9C0]);
  Count = CFArrayGetCount(in);
  if (Count < 1)
  {
    goto LABEL_11;
  }

  v10 = Count;
  v11 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(in, v11);
    v13 = SecCertificateCopySubjectPublicKeyInfoSHA256Digest();
    if (v13)
    {
      break;
    }

LABEL_7:
    if (v10 == ++v11)
    {
      goto LABEL_11;
    }
  }

  v14 = v13;
  if (!CFEqual(v7, v13))
  {
    CFRelease(v14);
    goto LABEL_7;
  }

  CFArrayAppendValue(Mutable, ValueAtIndex);
  CFRelease(v14);
  if (SecTrustSetAnchorCertificates(trust, Mutable))
  {
LABEL_11:
    v15 = 0;
  }

  else
  {
    v15 = SecTrustSetAnchorCertificatesOnly(trust, 1u) == 0;
  }

  CFRelease(Mutable);
  CFRelease(v7);
  return v15;
}

- (BOOL)_checkArray:(__CFArray *)array containsCertificateWithOID:(__CFString *)d
{
  Count = CFArrayGetCount(array);
  if (Count < 1)
  {
    return 0;
  }

  v8 = Count;
  if ([(ISPurchaseReceipt *)self _checkIfCertificate:CFArrayGetValueAtIndex(array containsOID:0), d])
  {
    return 1;
  }

  v10 = 1;
  do
  {
    v11 = v10;
    if (v8 == v10)
    {
      break;
    }

    v12 = [(ISPurchaseReceipt *)self _checkIfCertificate:CFArrayGetValueAtIndex(array containsOID:v10), d];
    v10 = v11 + 1;
  }

  while (!v12);
  return v11 < v8;
}

- (BOOL)_checkIfCertificate:(__SecCertificate *)certificate containsOID:(__CFString *)d
{
  v4 = CFDataCreate(0, byte_1D4B39020, 2);
  v5 = SecCertificateCopyProperties();
  if (v5)
  {
    v6 = v5;
    Count = CFArrayGetCount(v5);
    if (Count < 1)
    {
      LOBYTE(v20) = 0;
    }

    else
    {
      v7 = 0;
      v8 = *MEMORY[0x1E697B2D8];
      v9 = *MEMORY[0x1E697B2E8];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
        Value = CFDictionaryGetValue(ValueAtIndex, v8);
        if (Value && CFEqual(Value, d) && (v12 = CFDictionaryGetValue(ValueAtIndex, v9)) != 0 && (v13 = v12, v14 = CFArrayGetCount(v12), v14 >= 1))
        {
          v15 = v14;
          v16 = 1;
          do
          {
            v17 = CFArrayGetValueAtIndex(v13, v16 - 1);
            v18 = CFDictionaryGetValue(v17, v8);
            v20 = v18 && CFEqual(v18, @"Unparsed Data") && (v19 = CFDictionaryGetValue(v17, v9)) != 0 && CFEqual(v19, v4) != 0;
            if (v16 >= v15)
            {
              break;
            }

            ++v16;
          }

          while (!v20);
        }

        else
        {
          v20 = 0;
        }

        ++v7;
      }

      while (v7 < Count && !v20);
    }

    CFRelease(v6);
  }

  else
  {
    LOBYTE(v20) = 0;
  }

  CFRelease(v4);
  return v20;
}

- (__CFArray)_copyCertificatesFromSignedData:(SecCmsSignedDataStr *)data
{
  CertificateList = SecCmsSignedDataGetCertificateList();
  if (!CertificateList)
  {
    return 0;
  }

  v4 = CertificateList;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v6 = *v4;
  if (*v4)
  {
    v7 = v4 + 1;
    do
    {
      v8 = CFDataCreate(0, *(v6 + 8), *v6);
      if (v8)
      {
        v9 = v8;
        v10 = SecCertificateCreateWithData(0, v8);
        if (v10)
        {
          v11 = v10;
          CFArrayAppendValue(Mutable, v10);
          CFRelease(v11);
        }

        CFRelease(v9);
      }

      v12 = *v7++;
      v6 = v12;
    }

    while (v12);
  }

  return Mutable;
}

- (BOOL)_decodeReceiptData:(id)data toDecodedMessage:(SecCmsMessageStr *)message
{
  v26 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (SecCmsDecoderCreate())
  {
    v5 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      LODWORD(v7) = shouldLog | 2;
    }

    else
    {
      LODWORD(v7) = shouldLog;
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v7 = v7;
    }

    else
    {
      v7 &= 2u;
    }

    if (!v7)
    {
      goto LABEL_36;
    }

    v24 = 138412290;
    v25 = objc_opt_class();
    v9 = v25;
    v10 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_1D48BA000, oSLogObject, 2, "[%@] Could not create decoder", &v24, 12);
  }

  else
  {
    [dataCopy bytes];
    [dataCopy length];
    if (SecCmsDecoderUpdate())
    {
      v5 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v5)
      {
        v5 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v5 shouldLog];
      if ([v5 shouldLogToDisk])
      {
        LODWORD(v12) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v12) = shouldLog2;
      }

      oSLogObject = [v5 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
      {
        v12 = v12;
      }

      else
      {
        v12 &= 2u;
      }

      if (!v12)
      {
        goto LABEL_36;
      }

      v24 = 138412290;
      v25 = objc_opt_class();
      v9 = v25;
      v10 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_1D48BA000, oSLogObject, 2, "[%@] Could not read data", &v24, 12);
    }

    else
    {
      if (!SecCmsDecoderFinish())
      {
        v22 = 1;
        goto LABEL_38;
      }

      v5 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v5)
      {
        v5 = +[SSLogConfig sharedConfig];
      }

      shouldLog3 = [v5 shouldLog];
      if ([v5 shouldLogToDisk])
      {
        LODWORD(v14) = shouldLog3 | 2;
      }

      else
      {
        LODWORD(v14) = shouldLog3;
      }

      oSLogObject = [v5 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
      {
        v14 = v14;
      }

      else
      {
        v14 &= 2u;
      }

      if (!v14)
      {
        goto LABEL_36;
      }

      v24 = 138412290;
      v25 = objc_opt_class();
      v9 = v25;
      v10 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &dword_1D48BA000, oSLogObject, 2, "[%@] Could not parse data", &v24, 12);
    }
  }

  v15 = v10;

  if (v15)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:4];
    free(v15);
    SSFileLog(v5, @"%@", v16, v17, v18, v19, v20, v21, oSLogObject);
LABEL_36:
  }

  SecCmsDecoderDestroy();
  v22 = 0;
LABEL_38:

  return v22;
}

- (SecCmsSignedDataStr)_extractSignedDataFromMessage:(SecCmsMessageStr *)message
{
  v3 = SecCmsMessageContentLevelCount();
  if (v3 < 1)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  while (1)
  {
    SecCmsMessageContentLevel();
    if (SecCmsContentInfoGetContentTypeTag() == 26)
    {
      result = SecCmsContentInfoGetContent();
      if (result)
      {
        break;
      }
    }

    if (v4 == ++v5)
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)_parseReceiptFromMessage:(SecCmsMessageStr *)message
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1DA6DF250](message, a2);
  if (v4 && *v4)
  {
    v5 = CFDataCreate(0, *(v4 + 8), *v4);
    if (v5)
    {
      v6 = v5;
      v7 = [asn1Token readTokenFromBuffer:CFDataGetBytePtr(v5)];
      identifier = [v7 identifier];
      v9 = identifier == 17;
      if (identifier == 17)
      {
        [(ISPurchaseReceipt *)self _parseTokens:v7];
LABEL_44:
        CFRelease(v6);
        goto LABEL_45;
      }

      v24 = +[SSLogConfig sharedStoreServicesConfig];
      v25 = v24;
      if (!v24)
      {
        v25 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v25 shouldLog];
      if ([v25 shouldLogToDisk])
      {
        LODWORD(v27) = shouldLog | 2;
      }

      else
      {
        LODWORD(v27) = shouldLog;
      }

      oSLogObject = [v25 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v27 = v27;
      }

      else
      {
        v27 &= 2u;
      }

      if (v27)
      {
        LODWORD(v38) = 138412290;
        *(&v38 + 4) = objc_opt_class();
        v29 = *(&v38 + 4);
        v30 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &dword_1D48BA000, oSLogObject, 16, "[%@] Failed to parse data", &v38, 12);

        if (!v30)
        {
LABEL_43:

          goto LABEL_44;
        }

        oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v30 encoding:4];
        free(v30);
        SSFileLog(v25, @"%@", v31, v32, v33, v34, v35, v36, oSLogObject);
      }

      goto LABEL_43;
    }

    v7 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v23) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v23) = shouldLog2;
    }

    oSLogObject2 = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      v23 = v23;
    }

    else
    {
      v23 &= 2u;
    }

    if (!v23)
    {
      goto LABEL_19;
    }

    LODWORD(v38) = 138412290;
    *(&v38 + 4) = objc_opt_class();
    v13 = *(&v38 + 4);
    v14 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 2, "[%@] Failed to load data", &v38, 12, v38);
  }

  else
  {
    v7 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v11) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v11) = shouldLog3;
    }

    oSLogObject2 = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (!v11)
    {
      goto LABEL_19;
    }

    LODWORD(v38) = 138412290;
    *(&v38 + 4) = objc_opt_class();
    v13 = *(&v38 + 4);
    v14 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 0, "[%@] No content", &v38, 12, v38);
  }

  v15 = v14;

  if (v15)
  {
    oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:4];
    free(v15);
    SSFileLog(v7, @"%@", v16, v17, v18, v19, v20, v21, oSLogObject2);
LABEL_19:
  }

  v9 = 0;
LABEL_45:

  return v9;
}

- (void)_parseTokens:(id)tokens
{
  v141 = *MEMORY[0x1E69E9840];
  tokensCopy = tokens;
  v4 = off_1E84AB000;
  v5 = +[SSLogConfig sharedStoreServicesConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v9 = v7;
  }

  else
  {
    v9 = v7 & 2;
  }

  if (v9)
  {
    v137 = 138412290;
    v138 = objc_opt_class();
    v10 = v138;
    v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &dword_1D48BA000, oSLogObject, 2, "[%@] Parsing receipt", &v137, 12);

    if (!v11)
    {
      goto LABEL_13;
    }

    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:4];
    free(v11);
    SSFileLog(v5, @"%@", v12, v13, v14, v15, v16, v17, oSLogObject);
  }

LABEL_13:
  nextToken = [tokensCopy nextToken];
  if (nextToken)
  {
    v19 = nextToken;
    v135 = tokensCopy;
    while (2)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = +[asn1ReceiptToken readFromBuffer:](asn1ReceiptToken, "readFromBuffer:", [v19 content]);
      switch([v21 type])
      {
        case 0:
          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog2 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            v24 = shouldLog2 | 2;
          }

          else
          {
            v24 = shouldLog2;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v26 = v24;
          }

          else
          {
            v26 = v24 & 2;
          }

          if (!v26)
          {
            goto LABEL_212;
          }

          v27 = objc_opt_class();
          v28 = v27;
          stringValue = [v21 stringValue];
          v137 = 138412546;
          v138 = v27;
          v139 = 2112;
          v140 = stringValue;
          LODWORD(v131) = 22;
          v30 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 2, "[%@] Receipt type: %@", &v137, v131);

          goto LABEL_207;
        case 1:
          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog3 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog3 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v57 = shouldLog3;
          }

          else
          {
            v57 = shouldLog3 & 2;
          }

          if (!v57)
          {
            goto LABEL_212;
          }

          v58 = objc_opt_class();
          v59 = MEMORY[0x1E696AD98];
          v28 = v58;
          v43 = [v59 numberWithUnsignedLongLong:{objc_msgSend(v21, "integerValue")}];
          v137 = 138412546;
          v138 = v58;
          v139 = 2112;
          v140 = v43;
          LODWORD(v131) = 22;
          v44 = _os_log_send_and_compose_impl(v57, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 2, "[%@] AdamID: %@", &v137, v131);
          goto LABEL_206;
        case 2:
          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog4 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog4 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v79 = shouldLog4;
          }

          else
          {
            v79 = shouldLog4 & 2;
          }

          if (!v79)
          {
            goto LABEL_212;
          }

          v80 = objc_opt_class();
          v72 = v80;
          stringValue2 = [v21 stringValue];
          v137 = 138412546;
          v138 = v80;
          v139 = 2112;
          v140 = stringValue2;
          LODWORD(v131) = 22;
          v74 = _os_log_send_and_compose_impl(v79, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 2, "[%@] BundleID: %@", &v137, v131);
          goto LABEL_167;
        case 3:
          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog5 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog5 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v76 = shouldLog5;
          }

          else
          {
            v76 = shouldLog5 & 2;
          }

          if (!v76)
          {
            goto LABEL_212;
          }

          v77 = objc_opt_class();
          v72 = v77;
          stringValue2 = [v21 stringValue];
          v137 = 138412546;
          v138 = v77;
          v139 = 2112;
          v140 = stringValue2;
          LODWORD(v131) = 22;
          v74 = _os_log_send_and_compose_impl(v76, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 2, "[%@] Application version: %@", &v137, v131);
          goto LABEL_167;
        case 4:
          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog6 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog6 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v49 = shouldLog6;
          }

          else
          {
            v49 = shouldLog6 & 2;
          }

          if (!v49)
          {
            goto LABEL_212;
          }

          v50 = objc_opt_class();
          v51 = MEMORY[0x1E696AD98];
          v28 = v50;
          v43 = [v51 numberWithUnsignedLongLong:{objc_msgSend(v21, "integerValue")}];
          v137 = 138412546;
          v138 = v50;
          v139 = 2112;
          v140 = v43;
          LODWORD(v131) = 22;
          v44 = _os_log_send_and_compose_impl(v49, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 2, "[%@] DSID: %@", &v137, v131);
          goto LABEL_206;
        case 5:
          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog7 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog7 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v61 = shouldLog7;
          }

          else
          {
            v61 = shouldLog7 & 2;
          }

          if (!v61)
          {
            tokensCopy = v135;
            goto LABEL_212;
          }

          v134 = v20;
          v62 = objc_opt_class();
          v132 = MEMORY[0x1E695DEF0];
          v63 = v21;
          v133 = v62;
          contentToken = [v63 contentToken];
          content = [contentToken content];
          contentToken2 = [v63 contentToken];

          v67 = [v132 dataWithBytes:content length:{objc_msgSend(contentToken2, "length")}];

          v68 = [v67 length];
          v137 = 138412546;
          v138 = v62;
          v139 = 2048;
          v140 = v68;
          LODWORD(v131) = 22;
          v30 = _os_log_send_and_compose_impl(v61, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 2, "[%@] SHA1: %lu", &v137, v131);

          if (v30)
          {
            v20 = v134;
            tokensCopy = v135;
            goto LABEL_210;
          }

          v20 = v134;
          tokensCopy = v135;
          goto LABEL_214;
        case 8:
          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog8 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog8 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v82 = shouldLog8;
          }

          else
          {
            v82 = shouldLog8 & 2;
          }

          if (!v82)
          {
            goto LABEL_211;
          }

          v28 = objc_opt_class();
          stringValue3 = [v21 stringValue];
          v84 = stringValue3;
          if (stringValue3)
          {
            v43 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{parseISO8601(objc_msgSend(stringValue3, "UTF8String"), objc_msgSend(stringValue3, "length"))}];
          }

          else
          {
            v43 = 0;
          }

          v137 = 138412546;
          v138 = v28;
          v139 = 2112;
          v140 = v43;
          LODWORD(v131) = 22;
          v44 = _os_log_send_and_compose_impl(v82, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 2, "[%@] Transaction date: %@", &v137, v131);
          goto LABEL_206;
        case 9:
          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog9 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog9 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v86 = shouldLog9;
          }

          else
          {
            v86 = shouldLog9 & 2;
          }

          if (!v86)
          {
            goto LABEL_212;
          }

          v87 = objc_opt_class();
          v88 = MEMORY[0x1E696AD98];
          v28 = v87;
          v43 = [v88 numberWithUnsignedLongLong:{objc_msgSend(v21, "integerValue")}];
          v137 = 138412546;
          v138 = v87;
          v139 = 2112;
          v140 = v43;
          LODWORD(v131) = 22;
          v44 = _os_log_send_and_compose_impl(v86, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 2, "[%@] FR tool version: %@", &v137, v131);
          goto LABEL_206;
        case 10:
          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog10 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog10 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v101 = shouldLog10;
          }

          else
          {
            v101 = shouldLog10 & 2;
          }

          if (!v101)
          {
            goto LABEL_212;
          }

          v102 = objc_opt_class();
          v72 = v102;
          stringValue2 = [v21 stringValue];
          v137 = 138412546;
          v138 = v102;
          v139 = 2112;
          v140 = stringValue2;
          LODWORD(v131) = 22;
          v74 = _os_log_send_and_compose_impl(v101, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 2, "[%@] Parental controls: %@", &v137, v131);
          goto LABEL_167;
        case 11:
          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog11 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog11 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v97 = shouldLog11;
          }

          else
          {
            v97 = shouldLog11 & 2;
          }

          if (!v97)
          {
            goto LABEL_212;
          }

          v98 = objc_opt_class();
          v99 = MEMORY[0x1E696AD98];
          v28 = v98;
          v43 = [v99 numberWithUnsignedLongLong:{objc_msgSend(v21, "integerValue")}];
          v137 = 138412546;
          v138 = v98;
          v139 = 2112;
          v140 = v43;
          LODWORD(v131) = 22;
          v44 = _os_log_send_and_compose_impl(v97, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 2, "[%@] DeveloperID: %@", &v137, v131);
          goto LABEL_206;
        case 12:
          stringValue4 = [v21 stringValue];
          v46 = stringValue4;
          if (stringValue4)
          {
            v47 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{parseISO8601(objc_msgSend(stringValue4, "UTF8String"), objc_msgSend(stringValue4, "length"))}];
          }

          else
          {
            v47 = 0;
          }

          receiptCreationDate = self->_receiptCreationDate;
          self->_receiptCreationDate = v47;

          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog12 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog12 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v111 = shouldLog12;
          }

          else
          {
            v111 = shouldLog12 & 2;
          }

          if (!v111)
          {
            goto LABEL_212;
          }

          v112 = objc_opt_class();
          v113 = self->_receiptCreationDate;
          v137 = 138412546;
          v138 = v112;
          v139 = 2112;
          v140 = v113;
          v37 = v112;
          LODWORD(v131) = 22;
          v38 = _os_log_send_and_compose_impl(v111, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 2, "[%@] Receipt created: %@", &v137, v131);
          goto LABEL_201;
        case 13:
          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog13 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog13 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v70 = shouldLog13;
          }

          else
          {
            v70 = shouldLog13 & 2;
          }

          if (!v70)
          {
            goto LABEL_212;
          }

          v71 = objc_opt_class();
          v72 = v71;
          stringValue2 = [v21 stringValue];
          v137 = 138412546;
          v138 = v71;
          v139 = 2112;
          v140 = stringValue2;
          LODWORD(v131) = 22;
          v74 = _os_log_send_and_compose_impl(v70, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 2, "[%@] FR app version: %@", &v137, v131);
          goto LABEL_167;
        case 14:
          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog14 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog14 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v53 = shouldLog14;
          }

          else
          {
            v53 = shouldLog14 & 2;
          }

          if (!v53)
          {
            goto LABEL_212;
          }

          v54 = objc_opt_class();
          v55 = MEMORY[0x1E696AD98];
          v28 = v54;
          v43 = [v55 numberWithUnsignedLongLong:{objc_msgSend(v21, "integerValue")}];
          v137 = 138412546;
          v138 = v54;
          v139 = 2112;
          v140 = v43;
          LODWORD(v131) = 22;
          v44 = _os_log_send_and_compose_impl(v53, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 2, "[%@] HW type: %@", &v137, v131);
          goto LABEL_206;
        case 15:
          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog15 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog15 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v40 = shouldLog15;
          }

          else
          {
            v40 = shouldLog15 & 2;
          }

          if (!v40)
          {
            goto LABEL_212;
          }

          v41 = objc_opt_class();
          v42 = MEMORY[0x1E696AD98];
          v28 = v41;
          v43 = [v42 numberWithUnsignedLongLong:{objc_msgSend(v21, "integerValue")}];
          v137 = 138412546;
          v138 = v41;
          v139 = 2112;
          v140 = v43;
          LODWORD(v131) = 22;
          v44 = _os_log_send_and_compose_impl(v40, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 2, "[%@] DownloadID: %@", &v137, v131);
          goto LABEL_206;
        case 16:
          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog16 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog16 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v90 = shouldLog16;
          }

          else
          {
            v90 = shouldLog16 & 2;
          }

          if (!v90)
          {
            goto LABEL_212;
          }

          v91 = objc_opt_class();
          v92 = MEMORY[0x1E696AD98];
          v28 = v91;
          v43 = [v92 numberWithUnsignedLongLong:{objc_msgSend(v21, "integerValue")}];
          v137 = 138412546;
          v138 = v91;
          v139 = 2112;
          v140 = v43;
          LODWORD(v131) = 22;
          v44 = _os_log_send_and_compose_impl(v90, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 2, "[%@] Installer versionID: %@", &v137, v131);
LABEL_206:
          v30 = v44;

LABEL_207:
          goto LABEL_208;
        case 21:
          stringValue5 = [v21 stringValue];
          v94 = stringValue5;
          if (stringValue5)
          {
            v95 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{parseISO8601(objc_msgSend(stringValue5, "UTF8String"), objc_msgSend(stringValue5, "length"))}];
          }

          else
          {
            v95 = 0;
          }

          expirationDate = self->_expirationDate;
          self->_expirationDate = v95;

          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog17 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog17 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v116 = shouldLog17;
          }

          else
          {
            v116 = shouldLog17 & 2;
          }

          if (!v116)
          {
            goto LABEL_212;
          }

          v117 = objc_opt_class();
          v118 = self->_expirationDate;
          v137 = 138412546;
          v138 = v117;
          v139 = 2112;
          v140 = v118;
          v37 = v117;
          LODWORD(v131) = 22;
          v38 = _os_log_send_and_compose_impl(v116, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 2, "[%@] Receipt expires: %@", &v137, v131);
          goto LABEL_201;
        case 22:
          stringValue6 = [v21 stringValue];
          v107 = stringValue6;
          if (stringValue6)
          {
            v108 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{parseISO8601(objc_msgSend(stringValue6, "UTF8String"), objc_msgSend(stringValue6, "length"))}];
          }

          else
          {
            v108 = 0;
          }

          renewalDate = self->_renewalDate;
          self->_renewalDate = v108;

          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog18 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog18 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v121 = shouldLog18;
          }

          else
          {
            v121 = shouldLog18 & 2;
          }

          if (!v121)
          {
            goto LABEL_212;
          }

          v122 = objc_opt_class();
          v123 = self->_renewalDate;
          v137 = 138412546;
          v138 = v122;
          v139 = 2112;
          v140 = v123;
          v37 = v122;
          LODWORD(v131) = 22;
          v38 = _os_log_send_and_compose_impl(v121, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 2, "[%@] Receipt renewal: %@", &v137, v131);
          goto LABEL_201;
        case 23:
          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog19 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog19 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v104 = shouldLog19;
          }

          else
          {
            v104 = shouldLog19 & 2;
          }

          if (!v104)
          {
            goto LABEL_212;
          }

          v105 = objc_opt_class();
          v72 = v105;
          stringValue2 = [v21 stringValue];
          v137 = 138412546;
          v138 = v105;
          v139 = 2112;
          v140 = stringValue2;
          LODWORD(v131) = 22;
          v74 = _os_log_send_and_compose_impl(v104, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 2, "[%@] Organization display name: %@", &v137, v131);
LABEL_167:
          v30 = v74;

LABEL_208:
          if (v30)
          {
            tokensCopy = v135;
LABEL_210:
            oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v30 encoding:4];
            free(v30);
            SSFileLog(sharedStoreServicesConfig, @"%@", v124, v125, v126, v127, v128, v129, oSLogObject2);
LABEL_211:
            v4 = off_1E84AB000;
LABEL_212:
          }

          else
          {
            tokensCopy = v135;
LABEL_214:
            v4 = off_1E84AB000;
          }

LABEL_216:
          objc_autoreleasePoolPop(v20);
          nextToken2 = [tokensCopy nextToken];

          v19 = nextToken2;
          if (!nextToken2)
          {
            break;
          }

          continue;
        case 24:
          stringValue7 = [v21 stringValue];
          cancellationReason = self->_cancellationReason;
          self->_cancellationReason = stringValue7;

          sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedStoreServicesConfig];
          if (!sharedStoreServicesConfig)
          {
            sharedStoreServicesConfig = [(__objc2_class *)v4[75] sharedConfig];
          }

          shouldLog20 = [sharedStoreServicesConfig shouldLog];
          if ([sharedStoreServicesConfig shouldLogToDisk])
          {
            shouldLog20 |= 2u;
          }

          oSLogObject2 = [sharedStoreServicesConfig OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v34 = shouldLog20;
          }

          else
          {
            v34 = shouldLog20 & 2;
          }

          if (!v34)
          {
            goto LABEL_212;
          }

          v35 = objc_opt_class();
          v36 = self->_cancellationReason;
          v137 = 138412546;
          v138 = v35;
          v139 = 2112;
          v140 = v36;
          v37 = v35;
          LODWORD(v131) = 22;
          v38 = _os_log_send_and_compose_impl(v34, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 2, "[%@] Cancellation reason: %@", &v137, v131);
LABEL_201:
          v30 = v38;

          if (!v30)
          {
            goto LABEL_214;
          }

          goto LABEL_210;
        default:
          goto LABEL_216;
      }

      break;
    }
  }
}

- (BOOL)_setPoliciesForTrust:(__SecTrust *)trust
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 3, MEMORY[0x1E695E9C0]);
  v5 = *MEMORY[0x1E697B298];
  v6 = *MEMORY[0x1E697B2A0];
  v7 = 1;
  while (1)
  {
    v8 = v7;
    v9 = SecPolicyCreateWithProperties(v5, 0);
    if (!v9)
    {
      break;
    }

    CFArrayAppendValue(Mutable, v9);
    CFRelease(v9);
    v7 = 0;
    v5 = v6;
    if ((v8 & 1) == 0)
    {
      v10 = CFDictionaryCreateMutable(0, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v10)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  v10 = CFDictionaryCreateMutable(0, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_7:
  v11 = v10;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:3];
  CFDictionaryAddValue(v11, *MEMORY[0x1E697B2C8], v12);
  v13 = SecPolicyCreateWithProperties(*MEMORY[0x1E697B290], v11);
  if (v13)
  {
    v14 = v13;
    CFArrayAppendValue(Mutable, v13);
    CFRelease(v14);
    CFRelease(v11);

    if (v9)
    {
LABEL_9:
      v15 = SecTrustSetPolicies(trust, Mutable) == 0;
      goto LABEL_12;
    }
  }

  else
  {
    CFRelease(v11);
  }

LABEL_11:
  v15 = 0;
LABEL_12:
  CFRelease(Mutable);
  return v15;
}

- (int64_t)_verifySignatureForSignedData:(SecCmsSignedDataStr *)data onDate:(id)date
{
  v55 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  trust = 0;
  v7 = [(ISPurchaseReceipt *)self _copyCertificatesFromSignedData:data];
  if (!v7)
  {
    v16 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v16)
    {
      v16 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      LODWORD(v18) = shouldLog | 2;
    }

    else
    {
      LODWORD(v18) = shouldLog;
    }

    oSLogObject = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
    {
      v18 = v18;
    }

    else
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v53 = 138412290;
      v54 = objc_opt_class();
      v20 = v54;
      v21 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_1D48BA000, oSLogObject, 2, "[%@] Could not read certificates", &v53, 12);

      if (!v21)
      {
LABEL_27:

        v28 = 0xFFFFLL;
        goto LABEL_53;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v21 encoding:4];
      free(v21);
      SSFileLog(v16, @"%@", v22, v23, v24, v25, v26, v27, oSLogObject);
    }

    goto LABEL_27;
  }

  v8 = v7;
  if (CFArrayGetCount(v7) == 3)
  {
    if ([(ISPurchaseReceipt *)self _checkArray:v8 containsCertificateWithOID:@"1.2.840.113635.100.6.2.1"])
    {
      if (SecTrustCreateWithCertificates(v8, 0, &trust))
      {
        v9 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v9)
        {
          v9 = +[SSLogConfig sharedConfig];
        }

        shouldLog2 = [v9 shouldLog];
        if ([v9 shouldLogToDisk])
        {
          LODWORD(v11) = shouldLog2 | 2;
        }

        else
        {
          LODWORD(v11) = shouldLog2;
        }

        oSLogObject2 = [v9 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
        {
          v11 = v11;
        }

        else
        {
          v11 &= 2u;
        }

        if (!v11)
        {
          goto LABEL_50;
        }

        v13 = objc_opt_class();
        v53 = 138412290;
        v54 = v13;
        v14 = v13;
        v15 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 2, "[%@] Could not create trust", &v53, 12);
      }

      else if ([(ISPurchaseReceipt *)self _setPoliciesForTrust:trust])
      {
        if ([(ISPurchaseReceipt *)self _anchorTrust:trust toRootCertificateIn:v8])
        {
          if (!dateCopy || !SecTrustSetVerifyDate(trust, dateCopy))
          {
            v51 = 0;
            MEMORY[0x1DA6DF300](trust, &v51);
            if (v51 == 1 || v51 == 4)
            {
              v28 = 0;
            }

            else
            {
              v28 = 0xFFFFLL;
            }

            goto LABEL_52;
          }

          v9 = +[SSLogConfig sharedStoreServicesConfig];
          if (!v9)
          {
            v9 = +[SSLogConfig sharedConfig];
          }

          shouldLog3 = [v9 shouldLog];
          if ([v9 shouldLogToDisk])
          {
            LODWORD(v42) = shouldLog3 | 2;
          }

          else
          {
            LODWORD(v42) = shouldLog3;
          }

          oSLogObject2 = [v9 OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v42 = v42;
          }

          else
          {
            v42 &= 2u;
          }

          if (!v42)
          {
            goto LABEL_50;
          }

          v43 = objc_opt_class();
          v53 = 138412290;
          v54 = v43;
          v14 = v43;
          v15 = _os_log_send_and_compose_impl(v42, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 2, "[%@] Could not set verification date", &v53, 12);
        }

        else
        {
          v9 = +[SSLogConfig sharedStoreServicesConfig];
          if (!v9)
          {
            v9 = +[SSLogConfig sharedConfig];
          }

          shouldLog4 = [v9 shouldLog];
          if ([v9 shouldLogToDisk])
          {
            LODWORD(v48) = shouldLog4 | 2;
          }

          else
          {
            LODWORD(v48) = shouldLog4;
          }

          oSLogObject2 = [v9 OSLogObject];
          if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
          {
            v48 = v48;
          }

          else
          {
            v48 &= 2u;
          }

          if (!v48)
          {
            goto LABEL_50;
          }

          v49 = objc_opt_class();
          v53 = 138412290;
          v54 = v49;
          v14 = v49;
          v15 = _os_log_send_and_compose_impl(v48, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 2, "[%@] Failed to anchor Apple root certificate", &v53, 12);
        }
      }

      else
      {
        v9 = +[SSLogConfig sharedStoreServicesConfig];
        if (!v9)
        {
          v9 = +[SSLogConfig sharedConfig];
        }

        shouldLog5 = [v9 shouldLog];
        if ([v9 shouldLogToDisk])
        {
          LODWORD(v45) = shouldLog5 | 2;
        }

        else
        {
          LODWORD(v45) = shouldLog5;
        }

        oSLogObject2 = [v9 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
        {
          v45 = v45;
        }

        else
        {
          v45 &= 2u;
        }

        if (!v45)
        {
          goto LABEL_50;
        }

        v46 = objc_opt_class();
        v53 = 138412290;
        v54 = v46;
        v14 = v46;
        v15 = _os_log_send_and_compose_impl(v45, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 2, "[%@] Failed to update policies", &v53, 12);
      }
    }

    else
    {
      v9 = +[SSLogConfig sharedStoreServicesConfig];
      if (!v9)
      {
        v9 = +[SSLogConfig sharedConfig];
      }

      shouldLog6 = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        LODWORD(v32) = shouldLog6 | 2;
      }

      else
      {
        LODWORD(v32) = shouldLog6;
      }

      oSLogObject2 = [v9 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
      {
        v32 = v32;
      }

      else
      {
        v32 &= 2u;
      }

      if (!v32)
      {
        goto LABEL_50;
      }

      v53 = 138412290;
      v54 = objc_opt_class();
      v14 = v54;
      v15 = _os_log_send_and_compose_impl(v32, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 2, "[%@] Intermediate certificate is missing", &v53, 12);
    }
  }

  else
  {
    v9 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog7 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      LODWORD(v30) = shouldLog7 | 2;
    }

    else
    {
      LODWORD(v30) = shouldLog7;
    }

    oSLogObject2 = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      v30 = v30;
    }

    else
    {
      v30 &= 2u;
    }

    if (!v30)
    {
      goto LABEL_50;
    }

    v53 = 138412290;
    v54 = objc_opt_class();
    v14 = v54;
    v15 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &dword_1D48BA000, oSLogObject2, 2, "[%@] Unexpected number of certificates", &v53, 12);
  }

  v33 = v15;

  if (v33)
  {
    oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v33 encoding:4];
    free(v33);
    SSFileLog(v9, @"%@", v34, v35, v36, v37, v38, v39, oSLogObject2);
LABEL_50:
  }

  v28 = 0xFFFFLL;
LABEL_52:
  CFRelease(v8);
LABEL_53:
  if (trust)
  {
    CFRelease(trust);
  }

  return v28;
}

@end