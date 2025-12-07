@interface FMDCryptoUtil
+ (BOOL)generatePublicPrivateKeyPair:(id *)pair privateKey:(id *)key;
+ (__SecKey)dataToKey:(id)key isPublic:(BOOL)public;
+ (id)decryptData:(id)data privateKeyData:(id)keyData;
+ (id)keyToData:(__SecKey *)data;
+ (id)publicKeyFromPrivateKey:(id)key;
+ (void)testCrypto;
+ (void)testCrypto2:(id)crypto2 privateKey:(id)key;
@end

@implementation FMDCryptoUtil

+ (BOOL)generatePublicPrivateKeyPair:(id *)pair privateKey:(id *)key
{
  v16[0] = kSecAttrKeyType;
  v16[1] = kSecAttrKeySizeInBits;
  v17[0] = kSecAttrKeyTypeEC;
  v17[1] = &off_100028CA8;
  v6 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  error = 0;
  v7 = SecKeyCreateRandomKey(v6, &error);
  if (error)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  v9 = !v8;
  if (v8)
  {
    v11 = sub_100004FC8(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = error;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "### key gen completed with %@", buf, 0xCu);
    }
  }

  else
  {
    v10 = v7;
    *pair = [FMDCryptoUtil keyToData:SecKeyCopyPublicKey(v7)];
    *key = [FMDCryptoUtil keyToData:v10];
  }

  return v9;
}

+ (id)decryptData:(id)data privateKeyData:(id)keyData
{
  dataCopy = data;
  keyDataCopy = keyData;
  v7 = keyDataCopy;
  v8 = 0;
  if (dataCopy && keyDataCopy)
  {
    v9 = sub_100004FC8(keyDataCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      fm_hexString = [v7 fm_hexString];
      *buf = 138412546;
      v22 = fm_hexString;
      v23 = 2112;
      v24 = dataCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "### privateKey = %@ cipherText = %@", buf, 0x16u);
    }

    v11 = [objc_opt_class() dataToKey:v7 isPublic:0];
    v12 = sub_100004FC8(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "### decoded privateKey = %@", buf, 0xCu);
    }

    error = 0;
    v13 = SecKeyCreateDecryptedData(v11, kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM, dataCopy, &error);
    v8 = v13;
    if (v13)
    {
      v14 = sub_100004FC8(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        bytes = [(__CFData *)v8 bytes];
        *buf = 136315138;
        v22 = bytes;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "### decryption success with cipherText = %s", buf, 0xCu);
      }

      v16 = v8;
    }

    else
    {
      v17 = error;
      v18 = sub_100004FC8(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100015DEC();
      }
    }
  }

  return v8;
}

+ (void)testCrypto
{
  v34[0] = kSecAttrKeyType;
  v34[1] = kSecAttrKeySizeInBits;
  v35[0] = kSecAttrKeyTypeEC;
  v35[1] = &off_100028CA8;
  v3 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
  error = 0;
  v4 = SecKeyCreateRandomKey(v3, &error);
  v5 = sub_100004FC8(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = error;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "### key gen completed with %@", buf, 0xCu);
  }

  v6 = SecKeyCopyPublicKey(v4);
  IsAlgorithmSupported = SecKeyIsAlgorithmSupported(v6, kSecKeyOperationTypeEncrypt, kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM);
  if (IsAlgorithmSupported)
  {
    v8 = [NSData dataWithBytes:"This is a secret!\n" length:19];
    v9 = [v8 length];
    BlockSize = SecKeyGetBlockSize(v6);
    v11 = BlockSize - 130;
    v12 = sub_100004FC8(BlockSize);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = SecKeyGetBlockSize(v6);
      *buf = 134217984;
      v31 = (v13 - 130);
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "### max message size %lu", buf, 0xCu);
    }

    if (v9 >= v11)
    {
      v16 = sub_100004FC8(v14);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100015E60(v8);
      }
    }

    else
    {
      v28 = 0;
      v15 = SecKeyCreateEncryptedData(v6, kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM, v8, &v28);
      v16 = v15;
      if (v15)
      {
        v17 = sub_100004FC8(v15);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          bytes = [v16 bytes];
          *buf = 138412546;
          v31 = v16;
          v32 = 2080;
          v33 = bytes;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "### encryption success with cipherText = %@\n cipherString = %s", buf, 0x16u);
        }

        v28 = 0;
        v19 = SecKeyCreateDecryptedData(v4, kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM, v16, &v28);
        v20 = v19;
        if (v19)
        {
          v21 = sub_100004FC8(v19);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            bytes2 = [(__CFData *)v20 bytes];
            *buf = 136315138;
            v31 = bytes2;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "### decryption success with cipherText = %s", buf, 0xCu);
          }

          v23 = objc_opt_class();
          v24 = [self keyToData:v6];
          v25 = [self keyToData:v4];
          [v23 testCrypto2:v24 privateKey:v25];
        }

        else
        {
          v24 = v28;
          v25 = sub_100004FC8(0);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_100015EEC(v24);
          }
        }
      }

      else
      {
        v26 = v28;
        v27 = sub_100004FC8(0);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_100015F8C();
        }
      }
    }
  }

  else
  {
    v8 = sub_100004FC8(IsAlgorithmSupported);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100016000();
    }
  }
}

+ (void)testCrypto2:(id)crypto2 privateKey:(id)key
{
  crypto2Copy = crypto2;
  keyCopy = key;
  v7 = [objc_opt_class() dataToKey:keyCopy isPublic:0];
  v8 = [objc_opt_class() dataToKey:crypto2Copy isPublic:1];
  v9 = sub_100004FC8(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = crypto2Copy;
    v34 = 2112;
    v35 = keyCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "### publicKeyData = %@ privateKeyData = %@", buf, 0x16u);
  }

  v11 = sub_100004FC8(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    bytes = [crypto2Copy bytes];
    bytes2 = [keyCopy bytes];
    *buf = 136315394;
    v33 = bytes;
    v34 = 2080;
    v35 = bytes2;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "### string publicKeyData = %s privateKeyData = %s", buf, 0x16u);
  }

  IsAlgorithmSupported = SecKeyIsAlgorithmSupported(v8, kSecKeyOperationTypeEncrypt, kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM);
  if (IsAlgorithmSupported)
  {
    v15 = [NSData dataWithBytes:"This is a secret!\n" length:19];
    v16 = [v15 length];
    BlockSize = SecKeyGetBlockSize(v8);
    v18 = BlockSize - 130;
    v19 = sub_100004FC8(BlockSize);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = SecKeyGetBlockSize(v8);
      *buf = 134217984;
      v33 = (v20 - 130);
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "### max message size %lu", buf, 0xCu);
    }

    if (v16 >= v18)
    {
      v23 = sub_100004FC8(v21);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100015E60(v15);
      }
    }

    else
    {
      error = 0;
      v22 = SecKeyCreateEncryptedData(v8, kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM, v15, &error);
      v23 = v22;
      if (v22)
      {
        v24 = sub_100004FC8(v22);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          bytes3 = [v23 bytes];
          *buf = 138412546;
          v33 = v23;
          v34 = 2080;
          v35 = bytes3;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "### encryption success with cipherText = %@\n cipherString = %s", buf, 0x16u);
        }

        error = 0;
        v26 = SecKeyCreateDecryptedData(v7, kSecKeyAlgorithmECIESEncryptionStandardVariableIVX963SHA256AESGCM, v23, &error);
        v27 = v26;
        if (v26)
        {
          v28 = sub_100004FC8(v26);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            bytes4 = [(__CFError *)v27 bytes];
            *buf = 136315138;
            v33 = bytes4;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "### decryption success with cipherText = %s", buf, 0xCu);
          }
        }

        else
        {
          v28 = error;
          v30 = sub_100004FC8(0);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_100015EEC(v28);
          }
        }
      }

      else
      {
        v27 = error;
        v28 = sub_100004FC8(0);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          sub_100015F8C();
        }
      }
    }
  }

  else
  {
    v15 = sub_100004FC8(IsAlgorithmSupported);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100016000();
    }
  }
}

+ (id)keyToData:(__SecKey *)data
{
  error = 0;
  v3 = SecKeyCopyExternalRepresentation(data, &error);
  if (!v3)
  {
    v4 = error;
    v5 = sub_100004FC8(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "### error converting keys = %@", buf, 0xCu);
    }
  }

  return v3;
}

+ (__SecKey)dataToKey:(id)key isPublic:(BOOL)public
{
  if (!key)
  {
    return 0;
  }

  v16[0] = kSecAttrKeyType;
  v16[1] = kSecAttrKeyClass;
  v4 = &kSecAttrKeyClassPublic;
  if (!public)
  {
    v4 = &kSecAttrKeyClassPrivate;
  }

  v5 = *v4;
  v17[0] = kSecAttrKeyTypeEC;
  v17[1] = v5;
  v16[2] = kSecAttrKeySizeInBits;
  v17[2] = &off_100028CA8;
  keyCopy = key;
  v7 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];
  error = 0;
  v8 = SecKeyCreateWithData(keyCopy, v7, &error);

  if (!v8)
  {
    v10 = error;
    v11 = sub_100004FC8(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "### error generating keys = %@", buf, 0xCu);
    }
  }

  return v8;
}

+ (id)publicKeyFromPrivateKey:(id)key
{
  keyCopy = key;
  v4 = [objc_opt_class() dataToKey:keyCopy isPublic:0];

  if (v4)
  {
    v5 = SecKeyCopyPublicKey(v4);
    v6 = [objc_opt_class() keyToData:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end