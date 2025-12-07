@interface CLEEDCryptoUtilities
+ (__SecCertificate)copyCertFromBase64String:(id)string;
+ (__SecKey)copyPublicKeyFromPrivateKey:(__SecKey *)key;
+ (__SecKey)createKeyFromExternalRepresentationData:(id)data keyClass:(id)class;
+ (__SecKey)createKeyFromExternalRepresentationString:(id)string keyClass:(id)class;
+ (__SecKey)createRandomP256PrivateKey;
+ (id)copyAdrPublicKeyData:(id)data;
+ (id)createKeyExternalRepresentation:(__SecKey *)representation;
+ (id)getAESGCMDecryptedData:(id)data key:(id)key iv:(id)iv authTag:(id)tag;
+ (id)getDerivedKeyWithLength:(int)length secretData:(id)data additionalInfo:(id)info;
+ (id)getECIESDecryptedData:(id)data key:(__SecKey *)key sharedInfo:(id)info;
+ (id)getECIESEncryptedData:(id)data key:(__SecKey *)key sharedInfo:(id)info prependKeyFingerprint:(BOOL)fingerprint;
+ (id)getGMACWithAuthData:(id)data key:(id)key iv:(id)iv;
+ (id)getKeyExternalRepresentation:(__SecKey *)representation;
+ (id)getKeyFingerprint:(__SecKey *)fingerprint;
+ (id)getKeyFingerprintWithKeyData:(id)data;
+ (id)getRandomBytes:(int)bytes;
+ (id)getSessionIDWithPhoneNumber:(id)number sessionStartTime:(int64_t)time;
@end

@implementation CLEEDCryptoUtilities

+ (id)getSessionIDWithPhoneNumber:(id)number sessionStartTime:(int64_t)time
{
  timeCopy = time;
  v5 = MEMORY[0x1E695DF88];
  v6 = objc_msgSend_length(number, a2, number, time);
  v9 = objc_msgSend_dataWithCapacity_(v5, v7, v6 + 8, v8);
  v12 = objc_msgSend_dataUsingEncoding_(number, v10, 4, v11);
  objc_msgSend_appendData_(v9, v13, v12, v14);
  objc_msgSend_appendBytes_length_(v9, v15, &timeCopy, 8);
  return v9;
}

+ (__SecCertificate)copyCertFromBase64String:(id)string
{
  v4 = objc_alloc(MEMORY[0x1E695DEF0]);
  v6 = objc_msgSend_initWithBase64EncodedString_options_(v4, v5, string, 0);
  v10 = v6;
  if (v6 && objc_msgSend_length(v6, v7, v8, v9))
  {
    v11 = SecCertificateCreateWithData(0, v10);

    return v11;
  }

  else
  {

    return 0;
  }
}

+ (id)getECIESDecryptedData:(id)data key:(__SecKey *)key sharedInfo:(id)info
{
  v17 = *MEMORY[0x1E69E9840];
  if (data && key && info)
  {
    v13 = *MEMORY[0x1E697B230];
    infoCopy = info;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, &infoCopy, &v13, 1);
    DecryptedDataWithParameters = SecKeyCreateDecryptedDataWithParameters();
    v6 = DecryptedDataWithParameters;
  }

  else
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v7 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v16 = "+[CLEEDCryptoUtilities getECIESDecryptedData:key:sharedInfo:]";
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more input parameters is nil,early return", buf, 0xCu);
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
      }

      v11 = 136446210;
      v12 = "+[CLEEDCryptoUtilities getECIESDecryptedData:key:sharedInfo:]";
      v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,one or more input parameters is nil,early return", &v11, 12);
      sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities getECIESDecryptedData:key:sharedInfo:]", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    return 0;
  }

  return DecryptedDataWithParameters;
}

+ (__SecKey)copyPublicKeyFromPrivateKey:(__SecKey *)key
{
  v15 = *MEMORY[0x1E69E9840];
  if (!key)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v8 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v14 = "+[CLEEDCryptoUtilities copyPublicKeyFromPrivateKey:]";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil privateKey,early return", buf, 0xCu);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) != 0 && (*(v9 + 164) & 0x80000000) != 0 && (*(v9 + 168) & 0x80000000) != 0 && !*(v9 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v11 = 136446210;
    v12 = "+[CLEEDCryptoUtilities copyPublicKeyFromPrivateKey:]";
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,nil privateKey,early return", &v11, 12);
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities copyPublicKeyFromPrivateKey:]", "CoreLocation: %s\n", v10);
    if (v10 == buf)
    {
      return 0;
    }

    v7 = v10;
    goto LABEL_25;
  }

  result = SecKeyCopyPublicKey(key);
  if (result)
  {
    return result;
  }

  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
  }

  v4 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v14 = "+[CLEEDCryptoUtilities copyPublicKeyFromPrivateKey:]";
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,failed to copy public key from private key\n", buf, 0xCu);
  }

  v5 = sub_19B87DD40();
  if ((*(v5 + 160) & 0x80000000) == 0 || (*(v5 + 164) & 0x80000000) == 0 || (*(v5 + 168) & 0x80000000) == 0 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v11 = 136446210;
    v12 = "+[CLEEDCryptoUtilities copyPublicKeyFromPrivateKey:]";
    v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,failed to copy public key from private key\n", &v11, 12);
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities copyPublicKeyFromPrivateKey:]", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      v7 = v6;
LABEL_25:
      free(v7);
    }
  }

  return 0;
}

+ (id)createKeyExternalRepresentation:(__SecKey *)representation
{
  v69 = *MEMORY[0x1E69E9840];
  if (!representation)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v49 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v62 = "+[CLEEDCryptoUtilities createKeyExternalRepresentation:]";
      _os_log_impl(&dword_19B873000, v49, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil key,early return", buf, 0xCu);
    }

    v50 = sub_19B87DD40();
    if ((*(v50 + 160) & 0x80000000) != 0 && (*(v50 + 164) & 0x80000000) != 0 && (*(v50 + 168) & 0x80000000) != 0 && !*(v50 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v53 = 136446210;
    v54 = "+[CLEEDCryptoUtilities createKeyExternalRepresentation:]";
    v51 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,nil key,early return", &v53, 12);
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities createKeyExternalRepresentation:]", "CoreLocation: %s\n", v51);
    if (v51 == buf)
    {
      return 0;
    }

    v48 = v51;
    goto LABEL_25;
  }

  error = 0;
  result = SecKeyCopyExternalRepresentation(representation, &error);
  if (!error)
  {
    return result;
  }

  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
  }

  v4 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
  {
    v8 = objc_msgSend_code(error, v5, v6, v7);
    v12 = objc_msgSend_domain(error, v9, v10, v11);
    v16 = objc_msgSend_UTF8String(v12, v13, v14, v15);
    v20 = objc_msgSend_localizedDescription(error, v17, v18, v19);
    v24 = objc_msgSend_UTF8String(v20, v21, v22, v23);
    *buf = 136446978;
    v62 = "+[CLEEDCryptoUtilities createKeyExternalRepresentation:]";
    v63 = 1024;
    v64 = v8;
    v65 = 2080;
    v66 = v16;
    v67 = 2080;
    v68 = v24;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,failed to produce external representation for key,error code,%d,domain,%s,reason,%s\n", buf, 0x26u);
  }

  v25 = sub_19B87DD40();
  if ((*(v25 + 160) & 0x80000000) == 0 || (*(v25 + 164) & 0x80000000) == 0 || (*(v25 + 168) & 0x80000000) == 0 || *(v25 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v29 = qword_1EAFE4718;
    v30 = objc_msgSend_code(error, v26, v27, v28);
    v34 = objc_msgSend_domain(error, v31, v32, v33);
    v38 = objc_msgSend_UTF8String(v34, v35, v36, v37);
    v42 = objc_msgSend_localizedDescription(error, v39, v40, v41);
    v46 = objc_msgSend_UTF8String(v42, v43, v44, v45);
    v53 = 136446978;
    v54 = "+[CLEEDCryptoUtilities createKeyExternalRepresentation:]";
    v55 = 1024;
    v56 = v30;
    v57 = 2080;
    v58 = v38;
    v59 = 2080;
    v60 = v46;
    v47 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v29, 16, "#EED2FWK,%{public}s,failed to produce external representation for key,error code,%d,domain,%s,reason,%s\n", &v53, 38);
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities createKeyExternalRepresentation:]", "CoreLocation: %s\n", v47);
    if (v47 != buf)
    {
      v48 = v47;
LABEL_25:
      free(v48);
    }
  }

  return 0;
}

+ (id)getKeyExternalRepresentation:(__SecKey *)representation
{
  v21 = *MEMORY[0x1E69E9840];
  if (!representation)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v10 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v20 = "+[CLEEDCryptoUtilities getKeyExternalRepresentation:]";
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil key,early return", buf, 0xCu);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) != 0 && (*(v11 + 164) & 0x80000000) != 0 && (*(v11 + 168) & 0x80000000) != 0 && !*(v11 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v17 = 136446210;
    v18 = "+[CLEEDCryptoUtilities getKeyExternalRepresentation:]";
    v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,nil key,early return", &v17, 12);
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities getKeyExternalRepresentation:]", "CoreLocation: %s\n", v12);
    if (v12 == buf)
    {
      return 0;
    }

    v13 = v12;
    goto LABEL_26;
  }

  KeyExternalRepresentation = objc_msgSend_createKeyExternalRepresentation_(CLEEDCryptoUtilities, a2, representation, v3);
  if (KeyExternalRepresentation)
  {
    v7 = KeyExternalRepresentation;
    v8 = objc_msgSend_base64EncodedStringWithOptions_(KeyExternalRepresentation, v5, 0, v6);

    return v8;
  }

  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
  }

  v14 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446210;
    v20 = "+[CLEEDCryptoUtilities getKeyExternalRepresentation:]";
    _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil extRep,early return", buf, 0xCu);
  }

  v15 = sub_19B87DD40();
  if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v17 = 136446210;
    v18 = "+[CLEEDCryptoUtilities getKeyExternalRepresentation:]";
    v16 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,nil extRep,early return", &v17, 12);
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities getKeyExternalRepresentation:]", "CoreLocation: %s\n", v16);
    if (v16 != buf)
    {
      v13 = v16;
LABEL_26:
      free(v13);
    }
  }

  return 0;
}

+ (__SecKey)createKeyFromExternalRepresentationData:(id)data keyClass:(id)class
{
  v76 = *MEMORY[0x1E69E9840];
  if (!data || !class)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v54 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v69 = "+[CLEEDCryptoUtilities createKeyFromExternalRepresentationData:keyClass:]";
      _os_log_impl(&dword_19B873000, v54, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more input parameters is nil,early return", buf, 0xCu);
    }

    v55 = sub_19B87DD40();
    if ((*(v55 + 160) & 0x80000000) != 0 && (*(v55 + 164) & 0x80000000) != 0 && (*(v55 + 168) & 0x80000000) != 0 && !*(v55 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v58 = 136446210;
    v59 = "+[CLEEDCryptoUtilities createKeyFromExternalRepresentationData:keyClass:]";
    v56 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,one or more input parameters is nil,early return", &v58, 12);
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities createKeyFromExternalRepresentationData:keyClass:]", "CoreLocation: %s\n", v56);
    if (v56 == buf)
    {
      return 0;
    }

    v53 = v56;
    goto LABEL_26;
  }

  v5 = *MEMORY[0x1E697AD78];
  v6 = *MEMORY[0x1E697AD30];
  v66[0] = *MEMORY[0x1E697AD68];
  v66[1] = v6;
  v67[0] = v5;
  v67[1] = class;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v67, v66, 2);
  error = 0;
  result = SecKeyCreateWithData(data, v7, &error);
  if (!error)
  {
    return result;
  }

  if (qword_1EAFE46E0 != -1)
  {
    dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
  }

  v9 = qword_1EAFE4718;
  if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
  {
    v13 = objc_msgSend_code(error, v10, v11, v12);
    v17 = objc_msgSend_domain(error, v14, v15, v16);
    v21 = objc_msgSend_UTF8String(v17, v18, v19, v20);
    v25 = objc_msgSend_localizedDescription(error, v22, v23, v24);
    v29 = objc_msgSend_UTF8String(v25, v26, v27, v28);
    *buf = 136446978;
    v69 = "+[CLEEDCryptoUtilities createKeyFromExternalRepresentationData:keyClass:]";
    v70 = 1024;
    v71 = v13;
    v72 = 2080;
    v73 = v21;
    v74 = 2080;
    v75 = v29;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,failed to create key from external representation,error code,%d,domain,%s,reason,%s\n", buf, 0x26u);
  }

  v30 = sub_19B87DD40();
  if ((*(v30 + 160) & 0x80000000) == 0 || (*(v30 + 164) & 0x80000000) == 0 || (*(v30 + 168) & 0x80000000) == 0 || *(v30 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v34 = qword_1EAFE4718;
    v35 = objc_msgSend_code(error, v31, v32, v33);
    v39 = objc_msgSend_domain(error, v36, v37, v38);
    v43 = objc_msgSend_UTF8String(v39, v40, v41, v42);
    v47 = objc_msgSend_localizedDescription(error, v44, v45, v46);
    v51 = objc_msgSend_UTF8String(v47, v48, v49, v50);
    v58 = 136446978;
    v59 = "+[CLEEDCryptoUtilities createKeyFromExternalRepresentationData:keyClass:]";
    v60 = 1024;
    v61 = v35;
    v62 = 2080;
    v63 = v43;
    v64 = 2080;
    v65 = v51;
    v52 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v34, 16, "#EED2FWK,%{public}s,failed to create key from external representation,error code,%d,domain,%s,reason,%s\n", &v58, 38);
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities createKeyFromExternalRepresentationData:keyClass:]", "CoreLocation: %s\n", v52);
    if (v52 != buf)
    {
      v53 = v52;
LABEL_26:
      free(v53);
    }
  }

  return 0;
}

+ (__SecKey)createKeyFromExternalRepresentationString:(id)string keyClass:(id)class
{
  v23 = *MEMORY[0x1E69E9840];
  if (!string || !class)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v15 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v22 = "+[CLEEDCryptoUtilities createKeyFromExternalRepresentationString:keyClass:]";
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more input parameters is nil,early return", buf, 0xCu);
    }

    v16 = sub_19B87DD40();
    if ((*(v16 + 160) & 0x80000000) != 0 && (*(v16 + 164) & 0x80000000) != 0 && (*(v16 + 168) & 0x80000000) != 0 && !*(v16 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v19 = 136446210;
    v20 = "+[CLEEDCryptoUtilities createKeyFromExternalRepresentationString:keyClass:]";
    v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,one or more input parameters is nil,early return", &v19, 12);
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities createKeyFromExternalRepresentationString:keyClass:]", "CoreLocation: %s\n", v17);
    if (v17 == buf)
    {
      return 0;
    }

    v14 = v17;
    goto LABEL_26;
  }

  v6 = objc_alloc(MEMORY[0x1E695DEF0]);
  v8 = objc_msgSend_initWithBase64EncodedString_options_(v6, v7, string, 0);
  KeyFromExternalRepresentationData_keyClass = objc_msgSend_createKeyFromExternalRepresentationData_keyClass_(CLEEDCryptoUtilities, v9, v8, class);

  if (!KeyFromExternalRepresentationData_keyClass)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v11 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v22 = "+[CLEEDCryptoUtilities createKeyFromExternalRepresentationString:keyClass:]";
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil key,early return", buf, 0xCu);
    }

    v12 = sub_19B87DD40();
    if ((*(v12 + 160) & 0x80000000) != 0 && (*(v12 + 164) & 0x80000000) != 0 && (*(v12 + 168) & 0x80000000) != 0 && !*(v12 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v19 = 136446210;
    v20 = "+[CLEEDCryptoUtilities createKeyFromExternalRepresentationString:keyClass:]";
    v13 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,nil key,early return", &v19, 12);
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities createKeyFromExternalRepresentationString:keyClass:]", "CoreLocation: %s\n", v13);
    if (v13 == buf)
    {
      return 0;
    }

    v14 = v13;
LABEL_26:
    free(v14);
    return 0;
  }

  return KeyFromExternalRepresentationData_keyClass;
}

+ (id)copyAdrPublicKeyData:(id)data
{
  v27 = *MEMORY[0x1E69E9840];
  if (!data)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v12 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v26 = "+[CLEEDCryptoUtilities copyAdrPublicKeyData:]";
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil adrCert,early return", buf, 0xCu);
    }

    v13 = sub_19B87DD40();
    if ((*(v13 + 160) & 0x80000000) != 0 && (*(v13 + 164) & 0x80000000) != 0 && (*(v13 + 168) & 0x80000000) != 0 && !*(v13 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v23 = 136446210;
    v24 = "+[CLEEDCryptoUtilities copyAdrPublicKeyData:]";
    v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,nil adrCert,early return", &v23, 12);
LABEL_37:
    v17 = v14;
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities copyAdrPublicKeyData:]", "CoreLocation: %s\n", v14);
    if (v17 != buf)
    {
      free(v17);
    }

    return 0;
  }

  v4 = objc_msgSend_copyCertFromBase64String_(CLEEDCryptoUtilities, a2, data, v3);
  if (!v4)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v15 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v26 = "+[CLEEDCryptoUtilities copyAdrPublicKeyData:]";
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil cert obtained from copyCertFromBase64String,early return", buf, 0xCu);
    }

    v16 = sub_19B87DD40();
    if ((*(v16 + 160) & 0x80000000) != 0 && (*(v16 + 164) & 0x80000000) != 0 && (*(v16 + 168) & 0x80000000) != 0 && !*(v16 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v23 = 136446210;
    v24 = "+[CLEEDCryptoUtilities copyAdrPublicKeyData:]";
    v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,nil cert obtained from copyCertFromBase64String,early return", &v23, 12);
    goto LABEL_37;
  }

  v5 = v4;
  v6 = SecCertificateCopyKey(v4);
  if (!v6)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v18 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v26 = "+[CLEEDCryptoUtilities copyAdrPublicKeyData:]";
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil publicKey obtained from SecCertificateCopyKey,early return", buf, 0xCu);
    }

    v19 = sub_19B87DD40();
    if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
      }

      v23 = 136446210;
      v24 = "+[CLEEDCryptoUtilities copyAdrPublicKeyData:]";
      v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,nil publicKey obtained from SecCertificateCopyKey,early return", &v23, 12);
      sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities copyAdrPublicKeyData:]", "CoreLocation: %s\n", v20);
      if (v20 != buf)
      {
        free(v20);
      }
    }

    CFRelease(v5);
    return 0;
  }

  v7 = v6;
  error = 0;
  v8 = SecKeyCopyExternalRepresentation(v6, &error);
  if (!v8)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v9 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v26 = "+[CLEEDCryptoUtilities copyAdrPublicKeyData:]";
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil adrPublicKeyData obtained from SecKeyCopyExternalRepresentation,early return", buf, 0xCu);
    }

    v10 = sub_19B87DD40();
    if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
      }

      v23 = 136446210;
      v24 = "+[CLEEDCryptoUtilities copyAdrPublicKeyData:]";
      v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,nil adrPublicKeyData obtained from SecKeyCopyExternalRepresentation,early return", &v23, 12);
      sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities copyAdrPublicKeyData:]", "CoreLocation: %s\n", v11);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  CFRelease(v5);
  CFRelease(v7);
  return v8;
}

+ (id)getRandomBytes:(int)bytes
{
  v30 = *MEMORY[0x1E69E9840];
  bytesCopy = bytes;
  v6 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], a2, bytes, v3);
  v7 = *MEMORY[0x1E697B308];
  v11 = objc_msgSend_mutableBytes(v6, v8, v9, v10);
  v12 = SecRandomCopyBytes(v7, bytesCopy, v11);
  if (v12)
  {
    v13 = v12;
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v14 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v25 = "+[CLEEDCryptoUtilities getRandomBytes:]";
      v26 = 1024;
      bytesCopy2 = bytes;
      v28 = 1024;
      v29 = v13;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,failed to create %d random bytes with error code %d\n", buf, 0x18u);
    }

    v15 = sub_19B87DD40();
    if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
      }

      v18 = 136446722;
      v19 = "+[CLEEDCryptoUtilities getRandomBytes:]";
      v20 = 1024;
      bytesCopy3 = bytes;
      v22 = 1024;
      v23 = v13;
      v16 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,failed to create %d random bytes with error code %d\n", &v18, 24);
      sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities getRandomBytes:]", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    return 0;
  }

  return v6;
}

+ (__SecKey)createRandomP256PrivateKey
{
  v68[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E697AD78];
  v3 = *MEMORY[0x1E697AD50];
  v67[0] = *MEMORY[0x1E697AD68];
  v67[1] = v3;
  v68[0] = v2;
  v68[1] = &unk_1F0E8CD48;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v68, v67, 2);
  error = 0;
  result = SecKeyCreateRandomKey(v4, &error);
  if (error)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v6 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_msgSend_code(error, v7, v8, v9);
      v14 = objc_msgSend_domain(error, v11, v12, v13);
      v18 = objc_msgSend_UTF8String(v14, v15, v16, v17);
      v22 = objc_msgSend_localizedDescription(error, v19, v20, v21);
      v26 = objc_msgSend_UTF8String(v22, v23, v24, v25);
      *buf = 136446978;
      v60 = "+[CLEEDCryptoUtilities createRandomP256PrivateKey]";
      v61 = 2048;
      v62 = v10;
      v63 = 2080;
      v64 = v18;
      v65 = 2080;
      v66 = v26;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,failed to create random P-256 private key,error code,%ld,domain,%s,reason,%s\n", buf, 0x2Au);
    }

    v27 = sub_19B87DD40();
    if ((*(v27 + 160) & 0x80000000) == 0 || (*(v27 + 164) & 0x80000000) == 0 || (*(v27 + 168) & 0x80000000) == 0 || *(v27 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
      }

      v31 = qword_1EAFE4718;
      v32 = objc_msgSend_code(error, v28, v29, v30);
      v36 = objc_msgSend_domain(error, v33, v34, v35);
      v40 = objc_msgSend_UTF8String(v36, v37, v38, v39);
      v44 = objc_msgSend_localizedDescription(error, v41, v42, v43);
      v48 = objc_msgSend_UTF8String(v44, v45, v46, v47);
      v51 = 136446978;
      v52 = "+[CLEEDCryptoUtilities createRandomP256PrivateKey]";
      v53 = 2048;
      v54 = v32;
      v55 = 2080;
      v56 = v40;
      v57 = 2080;
      v58 = v48;
      v49 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v31, 16, "#EED2FWK,%{public}s,failed to create random P-256 private key,error code,%ld,domain,%s,reason,%s\n", &v51, 42);
      sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities createRandomP256PrivateKey]", "CoreLocation: %s\n", v49);
      if (v49 != buf)
      {
        free(v49);
      }
    }

    return 0;
  }

  return result;
}

+ (id)getKeyFingerprintWithKeyData:(id)data
{
  v26 = *MEMORY[0x1E69E9840];
  if (data)
  {
    dataCopy = data;
    v5 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], a2, 32, v3);
    v9 = objc_msgSend_bytes(dataCopy, v6, v7, v8);
    LODWORD(dataCopy) = objc_msgSend_length(dataCopy, v10, v11, v12);
    v16 = objc_msgSend_mutableBytes(v5, v13, v14, v15);
    CC_SHA256(v9, dataCopy, v16);

    return objc_msgSend_subdataWithRange_(v5, v17, 0, 2);
  }

  else
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v19 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v25 = "+[CLEEDCryptoUtilities getKeyFingerprintWithKeyData:]";
      _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil keyData,early return", buf, 0xCu);
    }

    v20 = sub_19B87DD40();
    if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46E0 != -1)
      {
        dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
      }

      v22 = 136446210;
      v23 = "+[CLEEDCryptoUtilities getKeyFingerprintWithKeyData:]";
      v21 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,nil keyData,early return", &v22, 12);
      sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities getKeyFingerprintWithKeyData:]", "CoreLocation: %s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    return 0;
  }
}

+ (id)getKeyFingerprint:(__SecKey *)fingerprint
{
  v20 = *MEMORY[0x1E69E9840];
  if (!fingerprint)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v8 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v19 = "+[CLEEDCryptoUtilities getKeyFingerprint:]";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil key,early return", buf, 0xCu);
    }

    v9 = sub_19B87DD40();
    if ((*(v9 + 160) & 0x80000000) != 0 && (*(v9 + 164) & 0x80000000) != 0 && (*(v9 + 168) & 0x80000000) != 0 && !*(v9 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v16 = 136446210;
    v17 = "+[CLEEDCryptoUtilities getKeyFingerprint:]";
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,nil key,early return", &v16, 12);
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities getKeyFingerprint:]", "CoreLocation: %s\n", v10);
    if (v10 == buf)
    {
      return 0;
    }

    v11 = v10;
    goto LABEL_28;
  }

  KeyExternalRepresentation = objc_msgSend_createKeyExternalRepresentation_(CLEEDCryptoUtilities, a2, fingerprint, v3);
  if (!KeyExternalRepresentation)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v12 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v19 = "+[CLEEDCryptoUtilities getKeyFingerprint:]";
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil keyData,early return", buf, 0xCu);
    }

    v13 = sub_19B87DD40();
    if ((*(v13 + 160) & 0x80000000) != 0 && (*(v13 + 164) & 0x80000000) != 0 && (*(v13 + 168) & 0x80000000) != 0 && !*(v13 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v16 = 136446210;
    v17 = "+[CLEEDCryptoUtilities getKeyFingerprint:]";
    v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,nil keyData,early return", &v16, 12);
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities getKeyFingerprint:]", "CoreLocation: %s\n", v14);
    if (v14 == buf)
    {
      return 0;
    }

    v11 = v14;
LABEL_28:
    free(v11);
    return 0;
  }

  v5 = KeyExternalRepresentation;
  v6 = KeyExternalRepresentation;

  return MEMORY[0x1EEE66B58](CLEEDCryptoUtilities, sel_getKeyFingerprintWithKeyData_, v5, v7);
}

+ (id)getDerivedKeyWithLength:(int)length secretData:(id)data additionalInfo:(id)info
{
  v48 = *MEMORY[0x1E69E9840];
  if (!data || !info)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v18 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v45 = "+[CLEEDCryptoUtilities getDerivedKeyWithLength:secretData:additionalInfo:]";
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more input parameters is nil,early return", buf, 0xCu);
    }

    v19 = sub_19B87DD40();
    if ((*(v19 + 160) & 0x80000000) != 0 && (*(v19 + 164) & 0x80000000) != 0 && (*(v19 + 168) & 0x80000000) != 0 && !*(v19 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v40 = 136446210;
    v41 = "+[CLEEDCryptoUtilities getDerivedKeyWithLength:secretData:additionalInfo:]";
    v20 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,one or more input parameters is nil,early return", &v40, 12);
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities getDerivedKeyWithLength:secretData:additionalInfo:]", "CoreLocation: %s\n", v20);
    if (v20 == buf)
    {
      return 0;
    }

    v21 = v20;
    goto LABEL_38;
  }

  objc_msgSend_bytes(info, a2, *&length, data);
  objc_msgSend_length(info, v8, v9, v10);
  AnsiX963 = CCKDFParametersCreateAnsiX963();
  if (AnsiX963)
  {
    v14 = AnsiX963;
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v15 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v45 = "+[CLEEDCryptoUtilities getDerivedKeyWithLength:secretData:additionalInfo:]";
      v46 = 1024;
      v47 = v14;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,failed to create ANSI X9.63 KDF params,result,%d\n", buf, 0x12u);
    }

    v16 = sub_19B87DD40();
    if ((*(v16 + 160) & 0x80000000) != 0 && (*(v16 + 164) & 0x80000000) != 0 && (*(v16 + 168) & 0x80000000) != 0 && !*(v16 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v40 = 136446466;
    v41 = "+[CLEEDCryptoUtilities getDerivedKeyWithLength:secretData:additionalInfo:]";
    v42 = 1024;
    v43 = v14;
    v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,failed to create ANSI X9.63 KDF params,result,%d\n", &v40, 18);
    goto LABEL_36;
  }

  v22 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v12, length, v13);
  objc_msgSend_bytes(data, v23, v24, v25);
  objc_msgSend_length(data, v26, v27, v28);
  objc_msgSend_mutableBytes(v22, v29, v30, v31);
  objc_msgSend_length(v22, v32, v33, v34);
  v35 = CCDeriveKey();
  CCKDFParametersDestroy();
  if (v35)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v36 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v45 = "+[CLEEDCryptoUtilities getDerivedKeyWithLength:secretData:additionalInfo:]";
      v46 = 1024;
      v47 = v35;
      _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,failed to derive key,result,%d\n", buf, 0x12u);
    }

    v37 = sub_19B87DD40();
    if ((*(v37 + 160) & 0x80000000) != 0 && (*(v37 + 164) & 0x80000000) != 0 && (*(v37 + 168) & 0x80000000) != 0 && !*(v37 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v40 = 136446466;
    v41 = "+[CLEEDCryptoUtilities getDerivedKeyWithLength:secretData:additionalInfo:]";
    v42 = 1024;
    v43 = v35;
    v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,failed to derive key,result,%d\n", &v40, 18);
LABEL_36:
    v38 = v17;
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities getDerivedKeyWithLength:secretData:additionalInfo:]", "CoreLocation: %s\n", v17);
    if (v38 == buf)
    {
      return 0;
    }

    v21 = v38;
LABEL_38:
    free(v21);
    return 0;
  }

  return v22;
}

+ (id)getGMACWithAuthData:(id)data key:(id)key iv:(id)iv
{
  v51 = *MEMORY[0x1E69E9840];
  if (!data || !key || !iv)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v39 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v48 = "+[CLEEDCryptoUtilities getGMACWithAuthData:key:iv:]";
      _os_log_impl(&dword_19B873000, v39, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more input parameters is nil,early return", buf, 0xCu);
    }

    v40 = sub_19B87DD40();
    if ((*(v40 + 160) & 0x80000000) != 0 && (*(v40 + 164) & 0x80000000) != 0 && (*(v40 + 168) & 0x80000000) != 0 && !*(v40 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v43 = 136446210;
    v44 = "+[CLEEDCryptoUtilities getGMACWithAuthData:key:iv:]";
    v41 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,one or more input parameters is nil,early return", &v43, 12);
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities getGMACWithAuthData:key:iv:]", "CoreLocation: %s\n", v41);
    if (v41 == buf)
    {
      return 0;
    }

    v38 = v41;
    goto LABEL_27;
  }

  v8 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], a2, 16, key);
  objc_msgSend_bytes(key, v9, v10, v11);
  objc_msgSend_length(key, v12, v13, v14);
  objc_msgSend_bytes(iv, v15, v16, v17);
  objc_msgSend_length(iv, v18, v19, v20);
  objc_msgSend_bytes(data, v21, v22, v23);
  objc_msgSend_length(data, v24, v25, v26);
  objc_msgSend_mutableBytes(v8, v27, v28, v29);
  objc_msgSend_length(v8, v30, v31, v32);
  v33 = CCCryptorGCMOneshotEncrypt();
  if (v33)
  {
    v34 = v33;
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v35 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v48 = "+[CLEEDCryptoUtilities getGMACWithAuthData:key:iv:]";
      v49 = 1024;
      v50 = v34;
      _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,failed to compute GMAC,error,%d\n", buf, 0x12u);
    }

    v36 = sub_19B87DD40();
    if ((*(v36 + 160) & 0x80000000) != 0 && (*(v36 + 164) & 0x80000000) != 0 && (*(v36 + 168) & 0x80000000) != 0 && !*(v36 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v43 = 136446466;
    v44 = "+[CLEEDCryptoUtilities getGMACWithAuthData:key:iv:]";
    v45 = 1024;
    v46 = v34;
    v37 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,failed to compute GMAC,error,%d\n", &v43, 18);
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities getGMACWithAuthData:key:iv:]", "CoreLocation: %s\n", v37);
    if (v37 == buf)
    {
      return 0;
    }

    v38 = v37;
LABEL_27:
    free(v38);
    return 0;
  }

  return v8;
}

+ (id)getAESGCMDecryptedData:(id)data key:(id)key iv:(id)iv authTag:(id)tag
{
  v60 = *MEMORY[0x1E69E9840];
  if (!data || !key || !iv || !tag)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v48 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v57 = "+[CLEEDCryptoUtilities getAESGCMDecryptedData:key:iv:authTag:]";
      _os_log_impl(&dword_19B873000, v48, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more input parameters is nil,early return", buf, 0xCu);
    }

    v49 = sub_19B87DD40();
    if ((*(v49 + 160) & 0x80000000) != 0 && (*(v49 + 164) & 0x80000000) != 0 && (*(v49 + 168) & 0x80000000) != 0 && !*(v49 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v52 = 136446210;
    v53 = "+[CLEEDCryptoUtilities getAESGCMDecryptedData:key:iv:authTag:]";
    v50 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,one or more input parameters is nil,early return", &v52, 12);
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities getAESGCMDecryptedData:key:iv:authTag:]", "CoreLocation: %s\n", v50);
    if (v50 == buf)
    {
      return 0;
    }

    v47 = v50;
    goto LABEL_28;
  }

  v10 = MEMORY[0x1E695DF88];
  v11 = objc_msgSend_length(data, a2, data, key);
  v14 = objc_msgSend_dataWithLength_(v10, v12, v11, v13);
  objc_msgSend_bytes(key, v15, v16, v17);
  objc_msgSend_length(key, v18, v19, v20);
  objc_msgSend_bytes(iv, v21, v22, v23);
  objc_msgSend_length(iv, v24, v25, v26);
  objc_msgSend_bytes(data, v27, v28, v29);
  objc_msgSend_length(data, v30, v31, v32);
  objc_msgSend_mutableBytes(v14, v33, v34, v35);
  objc_msgSend_bytes(tag, v36, v37, v38);
  objc_msgSend_length(tag, v39, v40, v41);
  v42 = CCCryptorGCMOneshotDecrypt();
  if (v42)
  {
    v43 = v42;
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v44 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446466;
      v57 = "+[CLEEDCryptoUtilities getAESGCMDecryptedData:key:iv:authTag:]";
      v58 = 1024;
      v59 = v43;
      _os_log_impl(&dword_19B873000, v44, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,failed to decrypt data,error,%d\n", buf, 0x12u);
    }

    v45 = sub_19B87DD40();
    if ((*(v45 + 160) & 0x80000000) != 0 && (*(v45 + 164) & 0x80000000) != 0 && (*(v45 + 168) & 0x80000000) != 0 && !*(v45 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v52 = 136446466;
    v53 = "+[CLEEDCryptoUtilities getAESGCMDecryptedData:key:iv:authTag:]";
    v54 = 1024;
    v55 = v43;
    v46 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,failed to decrypt data,error,%d\n", &v52, 18);
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities getAESGCMDecryptedData:key:iv:authTag:]", "CoreLocation: %s\n", v46);
    if (v46 == buf)
    {
      return 0;
    }

    v47 = v46;
LABEL_28:
    free(v47);
    return 0;
  }

  return v14;
}

+ (id)getECIESEncryptedData:(id)data key:(__SecKey *)key sharedInfo:(id)info prependKeyFingerprint:(BOOL)fingerprint
{
  v40 = *MEMORY[0x1E69E9840];
  if (!data || !key || !info)
  {
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v13 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v39 = "+[CLEEDCryptoUtilities getECIESEncryptedData:key:sharedInfo:prependKeyFingerprint:]";
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,one or more input parameters is nil,early return", buf, 0xCu);
    }

    v14 = sub_19B87DD40();
    if ((*(v14 + 160) & 0x80000000) != 0 && (*(v14 + 164) & 0x80000000) != 0 && (*(v14 + 168) & 0x80000000) != 0 && !*(v14 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v34 = 136446210;
    v35 = "+[CLEEDCryptoUtilities getECIESEncryptedData:key:sharedInfo:prependKeyFingerprint:]";
    v15 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,one or more input parameters is nil,early return", &v34, 12);
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities getECIESEncryptedData:key:sharedInfo:prependKeyFingerprint:]", "CoreLocation: %s\n", v15);
    if (v15 == buf)
    {
      return 0;
    }

    v12 = v15;
LABEL_17:
    free(v12);
    return 0;
  }

  fingerprintCopy = fingerprint;
  v36 = *MEMORY[0x1E697B230];
  infoCopy = info;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, &infoCopy, &v36, 1);
  EncryptedDataWithParameters = SecKeyCreateEncryptedDataWithParameters();
  v9 = EncryptedDataWithParameters;
  if (fingerprintCopy)
  {
    KeyFingerprint = objc_msgSend_getKeyFingerprint_(CLEEDCryptoUtilities, v10, key, v11);
    if (KeyFingerprint)
    {
      v21 = KeyFingerprint;
      v22 = MEMORY[0x1E695DF88];
      v23 = objc_msgSend_length(EncryptedDataWithParameters, v18, v19, v20);
      v26 = objc_msgSend_dataWithCapacity_(v22, v24, v23 + 2, v25);
      objc_msgSend_appendData_(v26, v27, v21, v28);
      objc_msgSend_appendData_(v26, v29, EncryptedDataWithParameters, v30);
      return v26;
    }

    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v31 = qword_1EAFE4718;
    if (os_log_type_enabled(qword_1EAFE4718, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v39 = "+[CLEEDCryptoUtilities getECIESEncryptedData:key:sharedInfo:prependKeyFingerprint:]";
      _os_log_impl(&dword_19B873000, v31, OS_LOG_TYPE_ERROR, "#EED2FWK,%{public}s,nil keyFingerprint,early return", buf, 0xCu);
    }

    v32 = sub_19B87DD40();
    if ((*(v32 + 160) & 0x80000000) != 0 && (*(v32 + 164) & 0x80000000) != 0 && (*(v32 + 168) & 0x80000000) != 0 && !*(v32 + 152))
    {
      return 0;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46E0 != -1)
    {
      dispatch_once(&qword_1EAFE46E0, &unk_1F0E6D4E0);
    }

    v34 = 136446210;
    v35 = "+[CLEEDCryptoUtilities getECIESEncryptedData:key:sharedInfo:prependKeyFingerprint:]";
    v33 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4718, 16, "#EED2FWK,%{public}s,nil keyFingerprint,early return", &v34, 12);
    sub_19B885924("Generic", 1, 0, 0, "+[CLEEDCryptoUtilities getECIESEncryptedData:key:sharedInfo:prependKeyFingerprint:]", "CoreLocation: %s\n", v33);
    if (v33 == buf)
    {
      return 0;
    }

    v12 = v33;
    goto LABEL_17;
  }

  return EncryptedDataWithParameters;
}

@end