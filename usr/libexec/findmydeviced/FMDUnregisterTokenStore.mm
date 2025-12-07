@interface FMDUnregisterTokenStore
+ (id)computeAccessoryIdentifierWithIdentifier:(id)identifier;
+ (id)keychainLookupKeyForIdentifier:(id)identifier;
+ (id)tokenKeyForIdentifier:(id)identifier;
- (BOOL)accessoriesNeedUnregister;
- (BOOL)isTokenDictionaryValid:(id)valid error:(id *)error;
- (FMDUnregisterTokenStore)init;
- (id)allKeychainLookupKeys;
- (id)allTokenKeys;
- (id)unregisterTokenForIdentifier:(id)identifier;
- (void)clearUnregisterTokens;
- (void)expungeUnregisterTokens:(id)tokens;
- (void)removeKeychainItemForKey:(id)key;
- (void)removeUnregisterTokenForIdentifier:(id)identifier;
- (void)removeUnregisterTokenForKey:(id)key;
- (void)saveUnregisterToken:(id)token identifier:(id)identifier expiryDate:(id)date;
@end

@implementation FMDUnregisterTokenStore

- (FMDUnregisterTokenStore)init
{
  v6.receiver = self;
  v6.super_class = FMDUnregisterTokenStore;
  v2 = [(FMDUnregisterTokenStore *)&v6 init];
  if (v2)
  {
    v3 = +[NSBundle mainBundle];
    bundleIdentifier = [v3 bundleIdentifier];
    [(FMDUnregisterTokenStore *)v2 setBundleIdentifier:bundleIdentifier];
  }

  return v2;
}

+ (id)tokenKeyForIdentifier:(id)identifier
{
  stringValue = [identifier stringValue];
  v4 = [FMDUnregisterTokenStore computeAccessoryIdentifierWithIdentifier:stringValue];

  v5 = [NSString stringWithFormat:@"%@:%@", @"AccessoryUnregisterToken", v4];

  return v5;
}

+ (id)keychainLookupKeyForIdentifier:(id)identifier
{
  stringValue = [identifier stringValue];
  v4 = [FMDUnregisterTokenStore computeAccessoryIdentifierWithIdentifier:stringValue];

  v5 = [NSString stringWithFormat:@"%@:%@", @"AccessoryUnregisterToken", v4];

  return v5;
}

- (BOOL)accessoriesNeedUnregister
{
  v2 = +[FMDProtectedContextManager sharedManager];
  v3 = [v2 contextKeysForType:@"AccessoryUnregisterToken" enumerationOption:2];

  v4 = [v3 count];
  v5 = sub_100002880(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 67109120;
    LODWORD(v10) = v4 != 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FMDUnregisterTokenStore accessoriesNeedUnregister %i", &v9, 8u);
  }

  v7 = sub_10017DFC4(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Watch Migration: Stored token count %lu", &v9, 0xCu);
  }

  return v4 != 0;
}

- (id)unregisterTokenForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_10000AB94;
  v50 = sub_100002B94;
  v51 = 0;
  v5 = [objc_opt_class() tokenKeyForIdentifier:identifierCopy];
  v6 = [objc_opt_class() keychainLookupKeyForIdentifier:identifierCopy];
  v7 = v6;
  if (v6 && v5)
  {
    v8 = +[FMDProtectedContextManager sharedManager];
    v45 = 0;
    v9 = [v8 contextForKey:v5 contextUUID:0 error:&v45];
    v10 = v45;

    if (v10)
    {
      v12 = sub_100002880(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v53 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "FMDUnregisterTokenStore could not fetch unregister token %@", buf, 0xCu);
      }

      bundleIdentifier = sub_10017DFC4(v13);
      if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v53 = identifierCopy;
        _os_log_impl(&_mh_execute_header, bundleIdentifier, OS_LOG_TYPE_DEFAULT, "Watch Migration: could not fetch unregister token for %@", buf, 0xCu);
      }

      goto LABEL_42;
    }

    if (!v9)
    {
      bundleIdentifier = sub_100002880(v11);
      if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_DEBUG))
      {
        sub_10022FF24();
      }

      goto LABEL_42;
    }

    bundleIdentifier = [(FMDUnregisterTokenStore *)self bundleIdentifier];
    v15 = +[FMKeychainManager sharedInstance];
    v44 = 0;
    v16 = [v15 itemForAccount:v7 service:bundleIdentifier error:&v44];
    v17 = v44;

    if (v17)
    {
      v19 = sub_100002880(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v53 = identifierCopy;
        v54 = 2112;
        v55 = v17;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "FMDUnregisterTokenStore could not read keychain item for %@ %@", buf, 0x16u);
      }

      v21 = sub_10017DFC4(v20);
      if (os_log_type_enabled(&v21->super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v53 = identifierCopy;
        _os_log_impl(&_mh_execute_header, &v21->super, OS_LOG_TYPE_DEFAULT, "Watch Migration: could not read keychain item for %@", buf, 0xCu);
      }

      goto LABEL_41;
    }

    v21 = [[FMDCipherKeychainItemAdaptor alloc] initWithKeychainItem:v16];
    cipher = [(FMDCipherKeychainItemAdaptor *)v21 cipher];
    if (cipher)
    {
      v22 = [(FMDUnregisterTokenStore *)self isTokenDictionaryValid:v9 error:0];
      if (v22)
      {
        v38 = [v9 objectForKeyedSubscript:@"encryptedToken"];
        if (v38)
        {
          v37 = [[NSData alloc] initWithBase64EncodedString:v38 options:0];
          if (v37)
          {
            v23 = [[FMSynchronizer alloc] initWithDescription:@"FMDUnregisterTokenStore-Decryption" andTimeout:10.0];
            v40[0] = _NSConcreteStackBlock;
            v40[1] = 3221225472;
            v40[2] = sub_1001EAC60;
            v40[3] = &unk_1002D15F8;
            v43 = &v46;
            v41 = identifierCopy;
            v24 = v23;
            v42 = v24;
            [v37 decryptWithCipher:cipher completion:v40];
            [v24 wait];
            timeoutOccurred = [v24 timeoutOccurred];
            v36 = v24;
            if (timeoutOccurred)
            {
              v26 = sub_100002880(timeoutOccurred);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                sub_10022FE54();
              }
            }
          }

          else
          {
            v36 = sub_100002880(0);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              sub_10022FEBC();
            }
          }
        }

        else
        {
          v33 = sub_100002880(0);
          v37 = v33;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "FMDUnregisterTokenStore could not read unregister token - FMDUnregisterTokenStoreRecordEncryptedTokenKey", buf, 2u);
          }
        }

        v29 = v38;
        goto LABEL_40;
      }

      v29 = sub_100002880(v22);
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
LABEL_40:

LABEL_41:
LABEL_42:

        goto LABEL_43;
      }

      *buf = 0;
      v30 = "FMDUnregisterTokenStore token was not valid - expired.";
      v31 = v29;
      v32 = 2;
    }

    else
    {
      v27 = sub_100002880(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v53 = v21;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "FMDUnregisterTokenStore could not read cipher from keychain %@", buf, 0xCu);
      }

      v29 = sub_10017DFC4(v28);
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }

      *buf = 138412290;
      v53 = identifierCopy;
      v30 = "Watch Migration: could not decode keychain item for %@";
      v31 = v29;
      v32 = 12;
    }

    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
    goto LABEL_40;
  }

  v10 = sub_100002880(v6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v53 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FMDUnregisterTokenStore no token keys for %@", buf, 0xCu);
  }

LABEL_43:

  v34 = v47[5];
  _Block_object_dispose(&v46, 8);

  return v34;
}

- (void)removeUnregisterTokenForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_opt_class() tokenKeyForIdentifier:identifierCopy];
  [(FMDUnregisterTokenStore *)self removeUnregisterTokenForKey:v5];
  v6 = [objc_opt_class() keychainLookupKeyForIdentifier:identifierCopy];

  v8 = sub_100002880(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FMDUnregisterTokenStore deleting keychain item : %@", &v9, 0xCu);
  }

  [(FMDUnregisterTokenStore *)self removeKeychainItemForKey:v6];
}

- (void)saveUnregisterToken:(id)token identifier:(id)identifier expiryDate:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  tokenCopy = token;
  v11 = sub_10017DFC4(tokenCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Watch Migration: Saving token and cipher for %@", buf, 0xCu);
  }

  v12 = [objc_opt_class() tokenKeyForIdentifier:identifierCopy];
  v13 = [objc_opt_class() keychainLookupKeyForIdentifier:identifierCopy];
  v14 = [tokenCopy dataUsingEncoding:4];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1001EB078;
  v19[3] = &unk_1002D1620;
  v20 = dateCopy;
  v21 = v12;
  selfCopy = self;
  v23 = v13;
  v24 = identifierCopy;
  v15 = identifierCopy;
  v16 = v13;
  v17 = v12;
  v18 = dateCopy;
  [v14 encryptWithcompletion:v19];
}

- (void)expungeUnregisterTokens:(id)tokens
{
  tokensCopy = tokens;
  v5 = objc_alloc_init(NSMutableOrderedSet);
  v6 = objc_alloc_init(NSMutableOrderedSet);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001EB5EC;
  v22[3] = &unk_1002D1648;
  v7 = v5;
  v23 = v7;
  selfCopy = self;
  v8 = v6;
  v25 = v8;
  [tokensCopy enumerateObjectsUsingBlock:v22];

  allTokenKeys = [(FMDUnregisterTokenStore *)self allTokenKeys];
  v10 = sub_100002880(allTokenKeys);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = allTokenKeys;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FMDUnregisterTokenStore expungeUnregisterTokens listing all keys %@", buf, 0xCu);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001EB6CC;
  v18[3] = &unk_1002D1670;
  v19 = v7;
  selfCopy2 = self;
  v11 = v8;
  v21 = v11;
  v12 = v7;
  [allTokenKeys enumerateObjectsUsingBlock:v18];
  allKeychainLookupKeys = [(FMDUnregisterTokenStore *)self allKeychainLookupKeys];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001EB8DC;
  v15[3] = &unk_1002CF2D8;
  v16 = v11;
  selfCopy3 = self;
  v14 = v11;
  [allKeychainLookupKeys enumerateObjectsUsingBlock:v15];
}

- (void)clearUnregisterTokens
{
  allTokenKeys = [(FMDUnregisterTokenStore *)self allTokenKeys];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001EBAB4;
  v6[3] = &unk_1002D1698;
  v6[4] = self;
  [allTokenKeys enumerateObjectsUsingBlock:v6];
  allKeychainLookupKeys = [(FMDUnregisterTokenStore *)self allKeychainLookupKeys];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001EBB14;
  v5[3] = &unk_1002CDA48;
  v5[4] = self;
  [allKeychainLookupKeys enumerateObjectsUsingBlock:v5];
}

- (BOOL)isTokenDictionaryValid:(id)valid error:(id *)error
{
  if (valid)
  {
    v5 = [valid objectForKeyedSubscript:@"expiryDate"];
    v6 = v5;
    if (v5)
    {
      v7 = sub_10017DFC4(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 134217984;
        fm_epoch = [v6 fm_epoch];
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Watch Migration: Found Token Expiry %lli", &v17, 0xCu);
      }

      v8 = +[NSDate date];
      [v6 timeIntervalSinceReferenceDate];
      v10 = v9;
      [v8 timeIntervalSinceReferenceDate];
      v12 = v10 > v11;
      if (error && v10 <= v11)
      {
        *error = [NSError errorWithDomain:@"com.apple.icloud.findmydeviced.FMDUnregisterTokenStore" code:2 userInfo:0];
      }
    }

    else
    {
      v13 = sub_100002880(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100230070(v13);
      }

      v15 = sub_10017DFC4(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Watch Migration: Invalid token. No expiry date found.", &v17, 2u);
      }

      if (error)
      {
        [NSError errorWithDomain:@"com.apple.icloud.findmydeviced.FMDUnregisterTokenStore" code:1 userInfo:0];
        *error = v12 = 0;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v6 = sub_100002880(self);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1002300B4(v6);
    }

    v12 = 1;
  }

  return v12;
}

- (void)removeKeychainItemForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    bundleIdentifier = [(FMDUnregisterTokenStore *)self bundleIdentifier];
    v6 = +[FMKeychainManager sharedInstance];
    v7 = [v6 deleteDataForAccount:keyCopy service:bundleIdentifier];

    if (v7)
    {
      v9 = sub_10017DFC4(v8);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:

        goto LABEL_15;
      }

      v15 = 138412290;
      v16 = keyCopy;
      v10 = "Watch Migration: Deleted Keychain Item %@";
    }

    else
    {
      v13 = sub_100002880(v8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1002300F8();
      }

      v9 = sub_10017DFC4(v14);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      v15 = 138412290;
      v16 = keyCopy;
      v10 = "Watch Migration: Failed to delete keychain item %@";
    }

    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, &v15, 0xCu);
    goto LABEL_14;
  }

  v11 = sub_100002880(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_100230160(v11);
  }

  bundleIdentifier = sub_10017DFC4(v12);
  if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, bundleIdentifier, OS_LOG_TYPE_DEFAULT, "Watch Migration: Failed to delete keychain, programmer error. Nil key.", &v15, 2u);
  }

LABEL_15:
}

- (void)removeUnregisterTokenForKey:(id)key
{
  keyCopy = key;
  v4 = sub_100002880(keyCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = keyCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "FMDUnregisterTokenStore deleting token : %@", &v8, 0xCu);
  }

  v6 = sub_10017DFC4(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = keyCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Watch Migration: Deleting token from disk %@", &v8, 0xCu);
  }

  v7 = +[FMDProtectedContextManager sharedManager];
  [v7 cleanupAllContextsForKey:keyCopy];
}

- (id)allTokenKeys
{
  v2 = +[FMDProtectedContextManager sharedManager];
  v3 = [v2 contextKeysForType:@"AccessoryUnregisterToken" enumerationOption:1];

  return v3;
}

- (id)allKeychainLookupKeys
{
  bundleIdentifier = [(FMDUnregisterTokenStore *)self bundleIdentifier];
  v3 = +[FMKeychainManager sharedInstance];
  v4 = [v3 allAccountsForService:bundleIdentifier];

  return v4;
}

+ (id)computeAccessoryIdentifierWithIdentifier:(id)identifier
{
  identifier = [NSString stringWithFormat:@"NR_%@", identifier];
  v4 = [identifier dataUsingEncoding:4];
  fm_sha256Hash = [v4 fm_sha256Hash];
  fm_hexString = [fm_sha256Hash fm_hexString];
  lowercaseString = [fm_hexString lowercaseString];

  return lowercaseString;
}

@end