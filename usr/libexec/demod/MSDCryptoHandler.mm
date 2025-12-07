@interface MSDCryptoHandler
+ (id)sharedInstance;
- (BOOL)deleteSecretKeyInKeychain;
- (BOOL)preserveAndEncryptKeychainItemsForKey:(id)key toFile:(id)file;
- (BOOL)restoreAndDecryptKeychainItemsForKey:(id)key fromFile:(id)file;
- (BOOL)saveSecretKeyInKeychain:(id)keychain;
- (id)archiveAndEncryptKeychainItems:(id)items;
- (id)copySecretKeyFromKeychain;
- (id)decryptAndUnarchiveKeychainItems:(id)items;
- (id)generateRandomBytesWithFixedLength;
- (id)performCryptoWithSecretKeyOnData:(id)data isDecipher:(BOOL)decipher;
- (void)createSecretKeyIfNeeded;
- (void)deleteSecretKey;
@end

@implementation MSDCryptoHandler

+ (id)sharedInstance
{
  if (qword_1001A5A40 != -1)
  {
    sub_1000E7D4C();
  }

  v3 = qword_1001A5A38;

  return v3;
}

- (void)createSecretKeyIfNeeded
{
  copySecretKeyFromKeychain = [(MSDCryptoHandler *)self copySecretKeyFromKeychain];

  if (!copySecretKeyFromKeychain)
  {
    generateRandomBytesWithFixedLength = [(MSDCryptoHandler *)self generateRandomBytesWithFixedLength];
    if (generateRandomBytesWithFixedLength)
    {
      v5 = generateRandomBytesWithFixedLength;
      v6 = [(MSDCryptoHandler *)self saveSecretKeyInKeychain:generateRandomBytesWithFixedLength];
      v7 = v6;
      v8 = sub_100063A54(v6);
      v9 = v8;
      if (v7)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Secret key for encryption is created.", v10, 2u);
        }
      }

      else
      {
        sub_1000E7D60(v8);
      }
    }

    else
    {
      v5 = sub_100063A54(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000E7DBC();
      }
    }
  }
}

- (BOOL)preserveAndEncryptKeychainItemsForKey:(id)key toFile:(id)file
{
  keyCopy = key;
  fileCopy = file;
  v8 = +[MSDKeychainManager sharedInstance];
  v9 = [v8 getAllItemsForKey:keyCopy withAttributes:1];

  if (!v9)
  {
    v18 = sub_100063A54(v10);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000E7EA8();
    }

    goto LABEL_10;
  }

  v11 = [(MSDCryptoHandler *)self archiveAndEncryptKeychainItems:v9];
  if (!v11)
  {
    v18 = sub_100063A54(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000E7E6C();
    }

LABEL_10:
    v15 = 0;
    v12 = 0;
LABEL_13:

    v16 = 0;
    goto LABEL_5;
  }

  v12 = v11;
  v19 = 0;
  v13 = [v11 writeToFile:fileCopy options:0 error:&v19];
  v14 = v19;
  v15 = v14;
  if ((v13 & 1) == 0)
  {
    v18 = sub_100063A54(v14);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000E7DF8();
    }

    goto LABEL_13;
  }

  v16 = 1;
LABEL_5:

  return v16;
}

- (BOOL)restoreAndDecryptKeychainItemsForKey:(id)key fromFile:(id)file
{
  keyCopy = key;
  fileCopy = file;
  v33 = 0;
  v7 = [NSData dataWithContentsOfFile:fileCopy options:0 error:&v33];
  v8 = v33;
  v9 = v8;
  if (!v7)
  {
    v11 = sub_100063A54(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000E7FC4();
    }

    goto LABEL_21;
  }

  v10 = [(MSDCryptoHandler *)self decryptAndUnarchiveKeychainItems:v7];
  if (!v10)
  {
    v11 = sub_100063A54(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000E7F88();
    }

LABEL_21:
    v22 = 0;
    goto LABEL_16;
  }

  v25 = v9;
  v26 = v7;
  v27 = fileCopy;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v29 + 1) + 8 * i);
        v17 = [v16 objectForKey:{kSecValueData, v25, v26, v27}];
        v18 = [v16 mutableCopy];
        [v18 removeObjectForKey:kSecValueData];
        v19 = +[MSDKeychainManager sharedInstance];
        v20 = [v19 saveItem:v17 forKey:keyCopy withAttributes:v18];

        if ((v20 & 1) == 0)
        {
          v23 = sub_100063A54(v21);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_1000E7F18();
          }

          v22 = 0;
          goto LABEL_15;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v22 = 1;
LABEL_15:
  v7 = v26;
  fileCopy = v27;
  v9 = v25;
LABEL_16:

  return v22;
}

- (BOOL)saveSecretKeyInKeychain:(id)keychain
{
  keychainCopy = keychain;
  v4 = +[MSDKeychainManager sharedInstance];
  v5 = [v4 saveItem:keychainCopy forKey:@"com.apple.mobilestoredemo.wifi.key"];

  v7 = sub_100063A54(v6);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Secret key saved in keychain.", v10, 2u);
    }
  }

  else
  {
    sub_1000E8038(v7);
  }

  return v5;
}

- (id)copySecretKeyFromKeychain
{
  v2 = +[MSDKeychainManager sharedInstance];
  v3 = [v2 getItemForKey:@"com.apple.mobilestoredemo.wifi.key"];

  return v3;
}

- (BOOL)deleteSecretKeyInKeychain
{
  v2 = +[MSDKeychainManager sharedInstance];
  v3 = [v2 deleteItemForKey:@"com.apple.mobilestoredemo.wifi.key"];

  v5 = sub_100063A54(v4);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Secret key deleted in keychain.", v8, 2u);
    }
  }

  else
  {
    sub_1000E80C8(v5);
  }

  return v3;
}

- (id)archiveAndEncryptKeychainItems:(id)items
{
  selfCopy = self;
  itemsCopy = items;
  v37[0] = kSecAttrService;
  v37[1] = kSecAttrAccount;
  v37[2] = kSecAttrLabel;
  v37[3] = kSecValueData;
  v4 = [NSArray arrayWithObjects:v37 count:4];
  v25 = objc_alloc_init(NSMutableArray);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = itemsCopy;
  v5 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        v10 = [v9 mutableCopy];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v11 = v9;
        v12 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v28;
          do
          {
            for (j = 0; j != v13; j = j + 1)
            {
              if (*v28 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v27 + 1) + 8 * j);
              if (([v4 containsObject:v16] & 1) == 0)
              {
                [v10 removeObjectForKey:v16];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v13);
        }

        [v25 addObject:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v6);
  }

  v26 = 0;
  v17 = [NSPropertyListSerialization dataWithPropertyList:v25 format:200 options:0 error:&v26];
  v18 = v26;
  v19 = v18;
  if (v17)
  {
    v20 = [(MSDCryptoHandler *)selfCopy performCryptoWithSecretKeyOnData:v17 isDecipher:0];
    if (v20)
    {
      goto LABEL_19;
    }

    v22 = sub_100063A54(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1000E8158();
    }
  }

  else
  {
    v22 = sub_100063A54(v18);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1000E8194();
    }
  }

  v20 = 0;
LABEL_19:

  return v20;
}

- (id)decryptAndUnarchiveKeychainItems:(id)items
{
  itemsCopy = items;
  v4 = +[MSDCryptoHandler sharedInstance];
  v5 = [v4 performCryptoWithSecretKeyOnData:itemsCopy isDecipher:1];

  if (v5)
  {
    v11 = 0;
    v7 = [NSPropertyListSerialization propertyListWithData:v5 options:0 format:0 error:&v11];
    v8 = v11;
    v9 = v8;
    if (v7)
    {
      v7 = v7;

      v9 = v7;
    }

    else
    {
      sub_1000E8204(v8);
    }
  }

  else
  {
    v9 = sub_100063A54(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E82A4();
    }

    v7 = 0;
  }

  return v7;
}

- (void)deleteSecretKey
{
  copySecretKeyFromKeychain = [(MSDCryptoHandler *)self copySecretKeyFromKeychain];

  if (copySecretKeyFromKeychain)
  {
    deleteSecretKeyInKeychain = [(MSDCryptoHandler *)self deleteSecretKeyInKeychain];
    if (deleteSecretKeyInKeychain)
    {
      v5 = sub_100063A54(deleteSecretKeyInKeychain);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Secret key for encryption is deleted.", v6, 2u);
      }
    }
  }
}

- (id)performCryptoWithSecretKeyOnData:(id)data isDecipher:(BOOL)decipher
{
  decipherCopy = decipher;
  dataCopy = data;
  v8 = dataCopy;
  v53 = 0;
  op = decipherCopy;
  if (decipherCopy)
  {
    v9 = [dataCopy length] - 32;
    generateRandomBytesWithFixedLength = +[NSData dataWithBytesNoCopy:length:freeWhenDone:](NSData, "dataWithBytesNoCopy:length:freeWhenDone:", [v8 bytes], 32, 0);
    v11 = +[NSData dataWithBytesNoCopy:length:freeWhenDone:](NSData, "dataWithBytesNoCopy:length:freeWhenDone:", [v8 bytes] + 32, v9, 0);
  }

  else
  {
    generateRandomBytesWithFixedLength = [(MSDCryptoHandler *)self generateRandomBytesWithFixedLength];
    v11 = v8;
  }

  v12 = v11;
  if (!v11)
  {
    v44 = sub_100063A54(0);
    if (!sub_1000AE14C(v44))
    {
LABEL_36:
      v15 = 0;
      v26 = 0;
      copySecretKeyFromKeychain = 0;
      goto LABEL_26;
    }

    *buf = 0;
LABEL_39:
    sub_1000AE13C();
    _os_log_error_impl(v46, v47, v48, v49, v50, 2u);
    goto LABEL_36;
  }

  if (!generateRandomBytesWithFixedLength)
  {
    v45 = sub_100063A54(v11);
    if (!sub_1000AE14C(v45))
    {
      goto LABEL_36;
    }

    *buf = 0;
    goto LABEL_39;
  }

  copySecretKeyFromKeychain = [(MSDCryptoHandler *)self copySecretKeyFromKeychain];
  if (copySecretKeyFromKeychain)
  {
    v51 = v8;
    v14 = [[NSMutableData alloc] initWithLength:{objc_msgSend(v12, "length") + 32}];
    if (v14)
    {
      v15 = v14;
      while (1)
      {
        bytes = [copySecretKeyFromKeychain bytes];
        v17 = [copySecretKeyFromKeychain length];
        bytes2 = [generateRandomBytesWithFixedLength bytes];
        bytes3 = [v12 bytes];
        v19 = CCCrypt(op, 0, 1u, bytes, v17, bytes2, bytes3, [v12 length], objc_msgSend(v15, "mutableBytes"), objc_msgSend(v15, "length"), &v53);
        if (v19 != -4301)
        {
          break;
        }

        v20 = sub_100063A54(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v55 = v53;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Output data buffer too small. Retry with larger buffer = %tu bytes.", buf, 0xCu);
        }

        v21 = [[NSMutableData alloc] initWithLength:v53];
        v15 = v21;
        if (!v21)
        {
          goto LABEL_13;
        }
      }

      v23 = v19;
      if (!v19)
      {
        if (op)
        {
          mutableBytes = [v15 mutableBytes];
          v25 = [NSMutableData dataWithBytes:mutableBytes length:v53];
          v26 = v25;
        }

        else
        {
          v26 = [NSMutableData dataWithData:generateRandomBytesWithFixedLength];
          mutableBytes2 = [v15 mutableBytes];
          v29 = [NSData dataWithBytes:mutableBytes2 length:v53];
          [v26 appendData:v29];
        }

        v8 = v51;
        bytes3 = sub_100063A54(v25);
        if (os_log_type_enabled(bytes3, OS_LOG_TYPE_DEFAULT))
        {
          v30 = "encrypted";
          if (op)
          {
            v30 = "decrypted";
          }

          *buf = 136446210;
          v55 = v30;
          _os_log_impl(&_mh_execute_header, bytes3, OS_LOG_TYPE_DEFAULT, "Input data is %{public}s.", buf, 0xCu);
        }

        goto LABEL_26;
      }

      v27 = sub_100063A54(v19);
      if (sub_1000AE14C(v27))
      {
        v33 = "encrypt";
        if (op)
        {
          v33 = "decrypt";
        }

        *buf = 136315394;
        v55 = v33;
        v56 = 1024;
        v57 = v23;
        sub_1000AE13C();
        _os_log_error_impl(v34, v35, v36, v37, v38, 0x12u);
      }
    }

    else
    {
LABEL_13:
      v22 = sub_100063A54(v14);
      if (sub_1000AE14C(v22))
      {
        *buf = 0;
        sub_1000AE13C();
        _os_log_error_impl(v39, v40, v41, v42, v43, 2u);
      }

      v15 = 0;
    }

    v26 = 0;
    v8 = v51;
LABEL_26:

    goto LABEL_27;
  }

  v15 = 0;
  v26 = 0;
LABEL_27:
  v31 = v26;

  return v31;
}

- (id)generateRandomBytesWithFixedLength
{
  v2 = malloc_type_malloc(0x20uLL, 0xA5724B13uLL);
  if (v2)
  {
    v3 = v2;
    *v2 = 0u;
    v2[1] = 0u;
    v4 = SecRandomCopyBytes(kSecRandomDefault, 0x20uLL, v2);
    if (v4)
    {
      v6 = sub_100063A54(v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100008384();
        _os_log_error_impl(v7, v8, v9, v10, v11, 8u);
      }

      v2 = 0;
    }

    else
    {
      v2 = [[NSData alloc] initWithBytesNoCopy:v3 length:32 freeWhenDone:1];
    }
  }

  return v2;
}

@end