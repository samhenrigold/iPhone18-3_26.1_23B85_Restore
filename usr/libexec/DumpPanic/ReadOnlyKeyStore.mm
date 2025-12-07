@interface ReadOnlyKeyStore
- (BOOL)hasMatchingPrivateKey:(int)key :(id)a4;
- (BOOL)readKeyFile:(id)file :(id *)a4 :(int *)a5 :(id *)a6 :(id *)a7;
- (ReadOnlyKeyStore)initWithKeyStorePath:(id)path :(id)a4;
- (ccec_cp)getEccFormat:(int)format;
- (id)getMatchingPrivateKey:(int)key :(id)a4;
- (id)init:(id)init;
@end

@implementation ReadOnlyKeyStore

- (id)getMatchingPrivateKey:(int)key :(id)a4
{
  v4 = *&key;
  v6 = a4;
  memset(__s2, 0, sizeof(__s2));
  v7 = [(ReadOnlyKeyStore *)self getEccFormat:v4];
  if (!v7)
  {
    v17 = 0;
    goto LABEL_50;
  }

  p_var0 = &v7->var0;
  v52 = v4;
  __chkstk_darwin(v7);
  v10 = &v50 - v9;
  v11 = ccec_x963_import_pub(p_var0, [v6 length], objc_msgSend(v6, "bytes"), (&v50 - v9));
  if (v11)
  {
    v12 = v11;
    cc_clear(24 * *p_var0 + 16, v10);
    log_handle = self->_log_handle;
    if (!os_log_type_enabled(log_handle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    v65 = 67109120;
    LODWORD(v66) = v12;
    v14 = "Failed to parse the input public key with the given format. CoreCrypto error %d";
    v15 = log_handle;
    v16 = 8;
LABEL_14:
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v14, &v65, v16);
    goto LABEL_49;
  }

  v18 = ccec_validate_pub(v10);
  cc_clear(24 * *p_var0 + 16, v10);
  if (!v18)
  {
    v22 = self->_log_handle;
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    LOWORD(v65) = 0;
    v14 = "The input public key did not pass basic validation checks";
    v15 = v22;
    v16 = 2;
    goto LABEL_14;
  }

  v19 = ccsha256_di();
  ccdigest(v19, [v6 length], objc_msgSend(v6, "bytes"), __s2);
  if (os_variant_has_internal_diagnostics() && _os_feature_enabled_impl() && self->_isDefaultKeyStorePath)
  {
    goto LABEL_49;
  }

  singleFileMode = self->_singleFileMode;
  v50 = &v50;
  v51 = v6;
  if (singleFileMode)
  {
    v21 = [NSMutableArray arrayWithCapacity:1, v50];
    [v21 addObject:self->_keyStorePath];
  }

  else
  {
    v23 = +[NSFileManager defaultManager];
    v24 = [v23 contentsOfDirectoryAtPath:self->_keyStorePath error:0];

    if (v24)
    {
      v21 = +[NSMutableArray array];
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v53 = v24;
      v25 = v24;
      v26 = [v25 countByEnumeratingWithState:&v61 objects:v68 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v62;
        do
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v62 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = [NSString stringWithFormat:@"%@/%@", self->_keyStorePath, *(*(&v61 + 1) + 8 * i)];
            [v21 addObject:v30];
          }

          v27 = [v25 countByEnumeratingWithState:&v61 objects:v68 count:16];
        }

        while (v27);
      }

      v6 = v51;
      v24 = v53;
    }

    else
    {
      v21 = 0;
    }
  }

  v31 = v52;
  if (!v21)
  {
    v46 = self->_log_handle;
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      keyStorePath = self->_keyStorePath;
      v65 = 138412290;
      v66 = keyStorePath;
      _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "Failed to enumerate the directory at '%@'", &v65, 0xCu);
    }

    goto LABEL_48;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v53 = v21;
  v32 = [v53 countByEnumeratingWithState:&v57 objects:v67 count:16];
  if (!v32)
  {
    goto LABEL_45;
  }

  v33 = v32;
  v34 = *v58;
  while (2)
  {
    for (j = 0; j != v33; j = j + 1)
    {
      if (*v58 != v34)
      {
        objc_enumerationMutation(v53);
      }

      v36 = *(*(&v57 + 1) + 8 * j);
      v65 = 0;
      v55 = 0;
      v56 = 0;
      v37 = [(ReadOnlyKeyStore *)self readKeyFile:v36];
      v38 = v56;
      v17 = v55;
      if (v37)
      {
        if (v65 != v31)
        {
          v44 = self->_log_handle;
          if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_43;
          }

          v54[0] = 0;
          v42 = v44;
          v43 = "Current key does not match input key format. Skipping";
          goto LABEL_40;
        }

        if ([v38 length] == 32)
        {
          v39 = memcmp([v38 bytes], __s2, objc_msgSend(v38, "length"));
          v40 = self->_log_handle;
          v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
          if (!v39)
          {
            if (v41)
            {
              v54[0] = 0;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Found a matching private key", v54, 2u);
            }

            v48 = v53;
            v6 = v51;
            goto LABEL_50;
          }

          v31 = v52;
          if (v41)
          {
            v54[0] = 0;
            v42 = v40;
            v43 = "Mismatched key hashes. Skipping";
LABEL_40:
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, v43, v54, 2u);
          }
        }

        else
        {
          v45 = self->_log_handle;
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            v54[0] = 0;
            _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Mismatched key hash lengths", v54, 2u);
          }
        }
      }

LABEL_43:
    }

    v33 = [v53 countByEnumeratingWithState:&v57 objects:v67 count:16];
    if (v33)
    {
      continue;
    }

    break;
  }

LABEL_45:

  v6 = v51;
LABEL_48:

LABEL_49:
  v17 = 0;
LABEL_50:

  return v17;
}

- (BOOL)readKeyFile:(id)file :(id *)a4 :(int *)a5 :(id *)a6 :(id *)a7
{
  fileCopy = file;
  v13 = +[NSFileManager defaultManager];
  v62 = 0;
  v14 = [v13 attributesOfItemAtPath:fileCopy error:&v62];
  v15 = v62;

  if (!v14)
  {
    log_handle = self->_log_handle;
    if (os_log_type_enabled(log_handle, OS_LOG_TYPE_ERROR))
    {
      v20 = log_handle;
      localizedDescription = [v15 localizedDescription];
      *buf = 138412290;
      v64 = localizedDescription;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to gather the file attributes for key file. Error: %@", buf, 0xCu);
    }

    goto LABEL_12;
  }

  if (a4)
  {
    v16 = v14;
    *a4 = v14;
  }

  fileType = [v14 fileType];

  if (fileType == NSFileTypeRegular)
  {
    if ([v14 fileSize] > 0x2000)
    {
      v22 = self->_log_handle;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "File seems to be too large to be useful. Skipping", buf, 2u);
      }

      goto LABEL_12;
    }

    v61 = v15;
    v25 = [NSData dataWithContentsOfFile:fileCopy options:0 error:&v61];
    v26 = v61;

    if (!v25)
    {
      v37 = self->_log_handle;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v45 = v37;
        localizedDescription2 = [v26 localizedDescription];
        *buf = 138412290;
        v64 = localizedDescription2;
        _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Failed to read the file contents for key file. Error: %@", buf, 0xCu);
      }

      v23 = 0;
      v15 = v26;
      goto LABEL_73;
    }

    v60 = v26;
    v27 = [NSJSONSerialization JSONObjectWithData:v25 options:0 error:&v60];
    v59 = v60;

    if (v27)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v58 = v27;
        v28 = v27;
        v29 = [v28 objectForKeyedSubscript:@"magic"];
        v30 = v29;
        if (v29)
        {
          if ([v29 unsignedLongLongValue] == 0x4D414749434B4559)
          {
            v31 = [v28 objectForKeyedSubscript:@"version"];
            v57 = v31;
            if (v31)
            {
              if ([v31 unsignedIntValue] == 1)
              {
                v32 = [v28 objectForKeyedSubscript:@"key_format"];
                if (!v32)
                {
                  v48 = 0;
                  v49 = self->_log_handle;
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Misformatted key file. Key format not found", buf, 2u);
                  }

                  v23 = 0;
                  goto LABEL_69;
                }

                v56 = v32;
                intValue = [v32 intValue];
                if (!intValue || intValue >= 2)
                {
                  v50 = intValue;
                  v51 = self->_log_handle;
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67109120;
                    LODWORD(v64) = v50;
                    _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Unsupported key format in key file: %d", buf, 8u);
                  }

                  goto LABEL_67;
                }

                *a5 = intValue;
                if (a6)
                {
                  v34 = [v28 objectForKeyedSubscript:@"public_key_hash"];
                  if (v34)
                  {
                    v35 = [[NSData alloc] initWithBase64EncodedString:v34 options:0];
                    *a6 = v35;
                    if (v35)
                    {

                      goto LABEL_28;
                    }

                    v52 = self->_log_handle;
                    if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_66;
                    }

                    *buf = 0;
                    v53 = "Failed to parse the Base64-encoded hash";
                  }

                  else
                  {
                    v52 = self->_log_handle;
                    if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_66;
                    }

                    *buf = 0;
                    v53 = "Misformatted key file. Public key hash not found";
                  }

LABEL_65:
                  _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, v53, buf, 2u);
                  goto LABEL_66;
                }

LABEL_28:
                if (!a7)
                {
LABEL_32:
                  v23 = 1;
LABEL_68:
                  v48 = v56;
LABEL_69:

                  goto LABEL_70;
                }

                v34 = [v28 objectForKeyedSubscript:@"full_key"];
                if (v34)
                {
                  v36 = [[NSData alloc] initWithBase64EncodedString:v34 options:0];
                  *a7 = v36;
                  if (v36)
                  {

                    goto LABEL_32;
                  }

                  v52 = self->_log_handle;
                  if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_66;
                  }

                  *buf = 0;
                  v53 = "Failed to parse the Base64-encoded key";
                  goto LABEL_65;
                }

                v52 = self->_log_handle;
                if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  v53 = "Misformatted key file. Full key not found";
                  goto LABEL_65;
                }

LABEL_66:

LABEL_67:
                v23 = 0;
                goto LABEL_68;
              }

              v47 = self->_log_handle;
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                v54 = v47;
                intValue2 = [v57 intValue];
                *buf = 67109120;
                LODWORD(v64) = intValue2;
                _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "Unknown file version %d", buf, 8u);
              }
            }

            else
            {
              v44 = self->_log_handle;
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Misformatted key file. Version not found", buf, 2u);
              }
            }

            v23 = 0;
LABEL_70:

            goto LABEL_71;
          }

          v42 = self->_log_handle;
          if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
LABEL_44:
            v23 = 0;
LABEL_71:

            v27 = v58;
            goto LABEL_72;
          }

          *buf = 0;
          v43 = "Misformatted key file. Mismatched magic";
        }

        else
        {
          v42 = self->_log_handle;
          if (!os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_44;
          }

          *buf = 0;
          v43 = "Not a key file. Magic not found";
        }

        _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, v43, buf, 2u);
        goto LABEL_44;
      }

      v41 = self->_log_handle;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Failed to parse the file contents as a dictionary", buf, 2u);
      }
    }

    else
    {
      v38 = self->_log_handle;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = v38;
        localizedDescription3 = [v59 localizedDescription];
        *buf = 138412290;
        v64 = localizedDescription3;
        _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Failed to parse the file contents as JSON. Error: %@", buf, 0xCu);

        v27 = 0;
      }
    }

    v23 = 0;
LABEL_72:

    v15 = v59;
LABEL_73:

    goto LABEL_13;
  }

  v18 = self->_log_handle;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v64 = fileCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Skipping non-file type '%@'", buf, 0xCu);
  }

LABEL_12:
  v23 = 0;
LABEL_13:

  return v23;
}

- (ccec_cp)getEccFormat:(int)format
{
  if (format == 1)
  {

    return ccec_cp_256();
  }

  else
  {
    log_handle = self->_log_handle;
    if (os_log_type_enabled(log_handle, OS_LOG_TYPE_ERROR))
    {
      v6[0] = 67109120;
      v6[1] = format;
      _os_log_error_impl(&_mh_execute_header, log_handle, OS_LOG_TYPE_ERROR, "Unknown key format %d", v6, 8u);
    }

    return 0;
  }
}

- (BOOL)hasMatchingPrivateKey:(int)key :(id)a4
{
  v4 = *&key;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [(ReadOnlyKeyStore *)self getMatchingPrivateKey:v4];
  LOBYTE(v4) = v8 != 0;

  objc_autoreleasePoolPop(v7);
  return v4;
}

- (id)init:(id)init
{
  initCopy = init;
  v5 = [NSString stringWithUTF8String:"/private/var/db/DumpPanic/Keys"];
  v6 = [(ReadOnlyKeyStore *)self initWithKeyStorePath:v5];

  return v6;
}

- (ReadOnlyKeyStore)initWithKeyStorePath:(id)path :(id)a4
{
  pathCopy = path;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = ReadOnlyKeyStore;
  v9 = [(ReadOnlyKeyStore *)&v18 init];
  v10 = v9;
  if (!v9)
  {
LABEL_7:

    return v10;
  }

  if (v8)
  {
    objc_storeStrong(&v9->_log_handle, a4);
    v11 = pathCopy;
    if (v11)
    {
      v12 = v11;

      objc_storeStrong(&v10->_keyStorePath, path);
      v10->_isDefaultKeyStorePath = [v12 isEqualToString:@"/private/var/db/DumpPanic/Keys"];
      v17 = 0;
      v13 = +[NSFileManager defaultManager];
      LODWORD(v12) = [v13 fileExistsAtPath:v12 isDirectory:&v17];

      v14 = v17 ^ 1;
      if (!v12)
      {
        v14 = 0;
      }

      v10->_singleFileMode = v14;
      v15 = v10;
      goto LABEL_7;
    }
  }

  else
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  _os_assert_log();
  result = _os_crash();
  __break(1u);
  return result;
}

@end