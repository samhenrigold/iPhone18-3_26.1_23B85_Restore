@interface KeyStore
- (void)RotateKeys:(void *)keys;
@end

@implementation KeyStore

- (void)RotateKeys:(void *)keys
{
  if (!self->super.super._singleFileMode)
  {
    keyStorePath = self->super.super._keyStorePath;
    v107 = 0;
    v6 = sub_100012B20(keyStorePath, &v107, 420);
    v7 = v107;
    v8 = v7;
    if ((v6 & 1) == 0)
    {
      log_handle = self->super.super._log_handle;
      if (os_log_type_enabled(log_handle, OS_LOG_TYPE_ERROR))
      {
        v110[0] = 138412290;
        *&v110[1] = v8;
        _os_log_error_impl(&_mh_execute_header, log_handle, OS_LOG_TYPE_ERROR, "Failed to setup the key-store directory.Error: %@", v110, 0xCu);
      }

      v13 = 0;
      goto LABEL_69;
    }

    keysCopy = keys;
    v87 = v7;
    v9 = +[NSFileManager defaultManager];
    v10 = [v9 contentsOfDirectoryAtPath:self->super.super._keyStorePath error:0];

    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v11 = v10;
    v91 = v11;
    v96 = [v11 countByEnumeratingWithState:&v103 objects:v111 count:16];
    if (!v96)
    {

      v13 = 0;
      v38 = 0;
      v92 = 0;
      v93 = 0;
      v90 = 0;
      goto LABEL_38;
    }

    v90 = 0;
    v92 = 0;
    v93 = 0;
    v13 = 0;
    v14 = *v104;
    v94 = 0;
    v95 = v14;
    *&v12 = 138412290;
    v89 = v12;
    *&v12 = 138412546;
    v88 = v12;
    do
    {
      v15 = 0;
      do
      {
        if (*v104 != v95)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v103 + 1) + 8 * v15);
        v17 = [NSString stringWithFormat:@"%@/%@", self->super.super._keyStorePath, v16];
        v108 = 0;
        v102 = 0;
        v18 = [(ReadOnlyKeyStore *)self readKeyFile:v17];
        v19 = v102;
        v20 = v19;
        if (v18)
        {
          if (v108 == 1)
          {
            fileCreationDate = [v19 fileCreationDate];
            if (!v94 || [v92 compare:fileCreationDate] == 1)
            {
              v22 = v17;

              v23 = fileCreationDate;
              v92 = v23;
              v94 = v22;
            }

            if (!v93 || [v90 compare:fileCreationDate] == -1)
            {
              v24 = v17;

              v25 = fileCreationDate;
              v90 = v25;
              v93 = v24;
            }
          }

          else
          {
            v31 = self->super.super._log_handle;
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v110[0]) = 0;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Current key does not match expected key format. Skipping", v110, 2u);
            }
          }
        }

        else
        {
          v26 = self->super.super._log_handle;
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v110[0] = v89;
            *&v110[1] = v16;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Deleting unparseable file '%@'", v110, 0xCu);
          }

          v27 = +[NSFileManager defaultManager];
          v101 = v13;
          v28 = [v27 removeItemAtPath:v16 error:&v101];
          v29 = v101;

          if ((v28 & 1) == 0)
          {
            v30 = self->super.super._log_handle;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v32 = v30;
              localizedDescription = [v29 localizedDescription];
              v110[0] = v88;
              *&v110[1] = v16;
              LOWORD(v110[3]) = 2112;
              *(&v110[3] + 2) = localizedDescription;
              _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Failed to delete file '%@'. Error: %@", v110, 0x16u);
            }
          }

          v13 = v29;
          v11 = v91;
        }

        v15 = (v15 + 1);
      }

      while (v96 != v15);
      v34 = [v11 countByEnumeratingWithState:&v103 objects:v111 count:16];
      v96 = v34;
    }

    while (v34);

    if (v93)
    {
      [v90 timeIntervalSinceNow];
      v36 = fabs(v35) > 432000.0;
    }

    else
    {
      v36 = 1;
    }

    v38 = v94;
    if (v94 && ([v94 isEqualToString:v93] & 1) == 0)
    {
      unlink([v94 UTF8String]);
      if (v36)
      {
LABEL_38:
        v94 = v38;
        v39 = self->super.super._log_handle;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v110[0]) = 0;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Creating a new key file", v110, 2u);
        }

        v40 = [(ReadOnlyKeyStore *)self getEccFormat:1];
        v96 = &keysCopy;
        __chkstk_darwin(v40);
        v42 = (&keysCopy - v41);
        v43 = ccrng(0);
        ccecdh_generate_key(v40, v43, v42);
        v44 = 3 * ((cczp_bitlen(v40) + 7) >> 3);
        v45 = (cczp_bitlen(v40) + 7) >> 2;
        v46 = [NSMutableData dataWithLength:v44 + 1];
        v47 = [NSMutableData dataWithLength:v45 | 1];
        ccec_x963_export(1, [v46 mutableBytes], v42);
        ccec_x963_export(0, [v47 mutableBytes], v42);
        cc_clear((32 * v40->var0) | 0x10, v42);
        memset(v110, 0, 32);
        v48 = ccsha256_di();
        ccdigest(v48, [v47 length], objc_msgSend(v47, "bytes"), v110);
        v49 = [NSData dataWithBytes:v110 length:32];
        v50 = +[NSMutableDictionary dictionary];
        v51 = [NSNumber numberWithUnsignedLongLong:0x4D414749434B4559];
        [v50 setObject:v51 forKeyedSubscript:@"magic"];

        v52 = [NSNumber numberWithUnsignedInt:1];
        [v50 setObject:v52 forKeyedSubscript:@"version"];

        v53 = [NSNumber numberWithInt:1];
        [v50 setObject:v53 forKeyedSubscript:@"key_format"];

        v54 = [v49 base64EncodedStringWithOptions:0];
        [v50 setObject:v54 forKeyedSubscript:@"public_key_hash"];

        v55 = [v46 base64EncodedStringWithOptions:0];
        [v50 setObject:v55 forKeyedSubscript:@"full_key"];

        v56 = self->super.super._keyStorePath;
        v57 = +[NSDate date];
        [v57 timeIntervalSince1970];
        v59 = [NSString stringWithFormat:@"%@/%llu.key", v56, v58];

        v100 = v13;
        v60 = [NSJSONSerialization dataWithJSONObject:v50 options:0 error:&v100];
        v61 = v100;

        if (!v60)
        {
          v65 = self->super.super._log_handle;
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            v80 = v65;
            [v61 localizedDescription];
            v81 = v46;
            v83 = v82 = v49;
            v108 = 138412290;
            v109 = v83;
            _os_log_error_impl(&_mh_execute_header, v80, OS_LOG_TYPE_ERROR, "Failed to generate JSON data for key file. Error: %@", &v108, 0xCu);

            v49 = v82;
            v46 = v81;
          }

          v13 = v61;
          goto LABEL_53;
        }

        v95 = v46;
        v62 = v49;
        v99 = v61;
        v63 = [v60 writeToFile:v59 options:0x40000000 error:&v99];
        v13 = v99;

        if (v63)
        {
          if ((keysCopy(v47) & 1) == 0)
          {
            v64 = self->super.super._log_handle;
            v49 = v62;
            if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v108) = 0;
              _os_log_error_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "Failed to call the new public key callback", &v108, 2u);
            }

            unlink([v59 UTF8String]);
            goto LABEL_52;
          }
        }

        else
        {
          v66 = self->super.super._log_handle;
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            v84 = v66;
            localizedDescription2 = [v13 localizedDescription];
            v108 = 138412290;
            v109 = localizedDescription2;
            _os_log_error_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "Failed to write to the new key file. Error: %@", &v108, 0xCu);
          }
        }

        v49 = v62;
LABEL_52:
        v46 = v95;
LABEL_53:

        v11 = v91;
LABEL_68:

        v8 = v87;
LABEL_69:

        return;
      }
    }

    else if (v36)
    {
      goto LABEL_38;
    }

    v67 = self->super.super._log_handle;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v110[0]) = 0;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Reusing an existing key file", v110, 2u);
    }

    v108 = 0;
    v97 = 0;
    v98 = 0;
    v68 = [(ReadOnlyKeyStore *)self readKeyFile:v93];
    v69 = v98;
    v70 = v97;
    if (v68)
    {
      v71 = [(ReadOnlyKeyStore *)self getEccFormat:v108];
      __chkstk_darwin(v71);
      v73 = &keysCopy - v72;
      v74 = ccec_x963_import_priv(&v71->var0, [v70 length], objc_msgSend(v70, "bytes"), (&keysCopy - v72));
      if (v74)
      {
        v75 = v74;
        cc_clear(24 * v71->var0 + 16, v73);
        v76 = self->super.super._log_handle;
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          v110[0] = 67109120;
          v110[1] = v75;
          _os_log_error_impl(&_mh_execute_header, v76, OS_LOG_TYPE_ERROR, "Failed to parse the current private key. CoreCrypto error %d", v110, 8u);
        }
      }

      else
      {
        v78 = [NSMutableData dataWithLength:((cczp_bitlen(v71) + 7) >> 2) | 1];
        ccec_x963_export(0, [v78 mutableBytes], v73);
        cc_clear(24 * v71->var0 + 16, v73);
        if ((keysCopy(v78) & 1) == 0)
        {
          v79 = self->super.super._log_handle;
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v110[0]) = 0;
            _os_log_error_impl(&_mh_execute_header, v79, OS_LOG_TYPE_ERROR, "Failed to call the new public key callback with an existing key", v110, 2u);
          }
        }
      }
    }

    else
    {
      v77 = self->super.super._log_handle;
      if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v110[0]) = 0;
        _os_log_error_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "Failed to read existing key file", v110, 2u);
      }
    }

    goto LABEL_68;
  }
}

@end