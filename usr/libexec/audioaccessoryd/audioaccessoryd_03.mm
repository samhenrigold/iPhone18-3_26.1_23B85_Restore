void sub_1000B9294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000B92C0(uint64_t a1, void *a2, void *a3)
{
  v63 = a2;
  v5 = a3;
  v6 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v63 recordID];
    v8 = [v7 zoneID];
    *buf = 138412802;
    v75 = v5;
    v76 = 2112;
    v77 = v8;
    v78 = 2112;
    v79 = v63;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Manatee: fetchKeyBlob completion error %@ recordZoneID %@, record: %@", buf, 0x20u);
  }

  p_info = &OBJC_METACLASS___BTStateWatcher.info;
  if (!v5)
  {
    v14 = [v63 recordID];
    v15 = [v14 zoneID];
    v16 = [v15 zoneName];
    v17 = [*(a1 + 32) recordZoneBlob];
    v18 = [v17 zoneID];
    v19 = [v18 zoneName];
    v20 = [v16 isEqualToString:v19];

    p_info = (&OBJC_METACLASS___BTStateWatcher + 32);
    if (!v20)
    {
      goto LABEL_25;
    }

    v21 = [v63 encryptedValues];
    WeakRetained = [v21 objectForKey:@"EncryptedMasterKeyBlob"];

    v22 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v75 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Manatee: fetchKeyBlob record %@", buf, 0xCu);
    }

    if ([WeakRetained length] > 0x20)
    {
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 3221225472;
      v64[2] = sub_1000B9CC4;
      v64[3] = &unk_1002B6CF0;
      v35 = WeakRetained;
      v36 = *(a1 + 32);
      v65 = v35;
      v66 = v36;
      v67 = v63;
      dispatch_async(&_dispatch_main_q, v64);
    }

    else
    {
      v23 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Manatee: fetchKeyBlob NO record", buf, 2u);
      }

      dispatch_async(&_dispatch_main_q, &stru_1002BAB30);
    }

    goto LABEL_9;
  }

  if ([v5 code] == 26 || objc_msgSend(v5, "code") == 11)
  {
    v10 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Manatee: fetchKeyBlob CKErrorZoneNotFound or Record does not exist", buf, 2u);
    }

    buf[0] = 0;
    WeakRetained = +[CloudXPCService sharedInstance];
    v12 = [NSData dataWithBytes:buf length:1];
    v13 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v12, @"kMasterKeyBlob", 0];
    [WeakRetained sendCloudKitMsg:@"MasterKeysNotAvailable" args:v13];

    goto LABEL_9;
  }

  if ([v5 code] == 6 || objc_msgSend(v5, "code") == 7)
  {
    v24 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v75 = v5;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Manatee: fetchKeyBlob unavailable service: %@", buf, 0xCu);
    }

    v25 = [v5 userInfo];
    v26 = [v25 objectForKeyedSubscript:CKErrorRetryAfterKey];

    if (v26)
    {
      v27 = [v5 userInfo];
      v28 = [v27 objectForKeyedSubscript:CKErrorRetryAfterKey];
      [v28 doubleValue];
      v30 = v29;

      v31 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v75 = v30;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Manatee: fetchKeyBlob retry after %lu", buf, 0xCu);
      }

      v32 = dispatch_time(0, (v30 * 1000000000.0));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000B9C0C;
      block[3] = &unk_1002B82D0;
      v33 = *(a1 + 48);
      block[4] = *(a1 + 32);
      block[5] = v33;
      dispatch_after(v32, &_dispatch_main_q, block);
    }
  }

  else
  {
    v37 = [v5 domain];
    v38 = CKErrorDomain;
    if ([v37 isEqualToString:CKErrorDomain])
    {
      v39 = [v5 code];

      if (v39 == 112)
      {
        v40 = sub_100005C14("MagicPairing");
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Manatee: fetchKeyBlob lost access to manatee data. Reset and recreate zone.", buf, 2u);
        }

        v41 = sub_100005C14("MagicPairing");
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Manatee: fetchKeyBlob. Reset and recreate zone DONE!", buf, 2u);
        }

        WeakRetained = objc_loadWeakRetained((a1 + 40));
        [WeakRetained resetCloudContainerManateeIdentityLost];
        goto LABEL_9;
      }
    }

    else
    {
    }

    WeakRetained = [v5 domain];
    if (([WeakRetained isEqualToString:CKErrorDomain] & 1) == 0)
    {
LABEL_9:

      goto LABEL_25;
    }

    v42 = [v5 userInfo];
    v43 = [v42 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

    p_info = (&OBJC_METACLASS___BTStateWatcher + 32);
    if (v43)
    {
      v62 = a1;
      v44 = [v5 userInfo];
      v45 = [v44 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v46 = v45;
      v47 = [v46 countByEnumeratingWithState:&v68 objects:v73 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v69;
        v50 = &_sSs8UTF8ViewV8distance4from2toSiSS5IndexV_AGtF_ptr;
        while (2)
        {
          for (i = 0; i != v48; i = i + 1)
          {
            if (*v69 != v49)
            {
              objc_enumerationMutation(v46);
            }

            v52 = [v46 objectForKey:*(*(&v68 + 1) + 8 * i)];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v53 = [v52 domain];
              if ([v53 isEqualToString:v38])
              {
                v54 = v50;
                v55 = v38;
                v56 = [v52 code];

                v57 = v56 == 112;
                v38 = v55;
                v50 = v54;
                if (v57)
                {
                  v58 = sub_100005C14("MagicPairing");
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v75 = v52;
                    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Manatee: fetchKeyBlob lost access to manatee data. Reset and recreate zone due to - %@", buf, 0xCu);
                  }

                  v60 = sub_100005C14("MagicPairing");
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Manatee: fetchKeyBlob. Reset and recreate zone DONE!", buf, 2u);
                  }

                  v61 = objc_loadWeakRetained((v62 + 40));
                  [v61 resetCloudContainerManateeIdentityLost];

                  goto LABEL_56;
                }
              }

              else
              {
              }
            }
          }

          v48 = [v46 countByEnumeratingWithState:&v68 objects:v73 count:16];
          if (v48)
          {
            continue;
          }

          break;
        }
      }

LABEL_56:

      a1 = v62;
      p_info = (&OBJC_METACLASS___BTStateWatcher + 32);
    }
  }

LABEL_25:
  [*(a1 + 32) setIsFetchMasterKeyInProgress:0];
  v34 = [p_info + 21 sharedInstance];
  [v34 endTransaction:@"ManateefetchKeyBlob"];
}

void sub_1000B9C1C(id a1)
{
  v4 = 0;
  v1 = +[CloudXPCService sharedInstance];
  v2 = [NSData dataWithBytes:&v4 length:1];
  v3 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v2, @"kMasterKeyBlob", 0];
  [v1 sendCloudKitMsg:@"MasterKeysNotAvailable" args:v3];
}

void sub_1000B9CC4(uint64_t a1)
{
  if ([*(a1 + 32) length] == 33)
  {
    v2 = [*(a1 + 40) masterBlob];

    if (!v2)
    {
      v3 = [*(a1 + 40) readUserPreference:@"MagicCloudPairingManateeUpgradedAccount"];

      if (!v3)
      {
        [*(a1 + 40) setuserPreference:@"MagicCloudPairingManateeUpgradedAccount" value:&__kCFBooleanTrue sync:1];
        v4 = +[MPCloudKit sharedInstance];
        [v4 markLegacyNonManateeContainerMigrated];
      }

      v5 = [*(a1 + 32) mutableCopy];
      [*(a1 + 40) setMasterBlob:v5];

      v6 = +[CloudXPCService sharedInstance];
      v7 = [NSMutableDictionary dictionaryWithObjectsAndKeys:*(a1 + 32), @"kMasterKeyBlob", 0];
      [v6 sendCloudKitMsg:@"MasterKeysAvailable" args:v7];

      v8 = +[CloudXPCService sharedInstance];
      v9 = [v8 deviceManager];
      [v9 addAccountMagicKeysWithCloudRecord:*(a1 + 48)];

      v10 = *(a1 + 40);

      [v10 fetchAccessoryKeyBlob:0];
    }
  }
}

void sub_1000BA020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000BA04C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = [v4 domain];
    if ([v6 isEqualToString:CKErrorDomain])
    {
      if ([v4 code] == 3 || objc_msgSend(v4, "code") == 4)
      {

LABEL_6:
        v7 = [v4 userInfo];
        v8 = [v7 objectForKeyedSubscript:CKErrorRetryAfterKey];

        if (v8)
        {
          v9 = [v4 userInfo];
          v10 = [v9 objectForKeyedSubscript:CKErrorRetryAfterKey];
          [v10 doubleValue];
          v12 = v11;

          v13 = (v12 * 1000000000.0);
        }

        else
        {
          v13 = 60000000000;
        }

        v15 = dispatch_time(0, v13);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000BA270;
        block[3] = &unk_1002B9D10;
        block[4] = WeakRetained;
        v16 = *(a1 + 32);
        v17 = *(a1 + 48);
        v20 = v16;
        v21 = v17;
        dispatch_after(v15, &_dispatch_main_q, block);

        goto LABEL_13;
      }

      v18 = [v4 code];

      if (v18 == 9)
      {
        goto LABEL_6;
      }
    }

    else
    {
    }

LABEL_13:
    v14 = +[CloudXPCService sharedInstance];
    [v14 endTransaction:@"ManateeCheckAccountStatusWithCompletionHandler"];
    goto LABEL_14;
  }

  v14 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_1001F6824();
  }

LABEL_14:
}

void sub_1000BA2F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if ([v5 accountStatus] == 1 && objc_msgSend(v5, "supportsDeviceToDeviceEncryption"))
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000BA3F4;
      v9[3] = &unk_1002B82D0;
      v7 = *(a1 + 40);
      v9[4] = *(a1 + 32);
      v9[5] = v7;
      dispatch_async(&_dispatch_main_q, v9);
    }

    else
    {
      v8 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1001F6860();
      }
    }
  }
}

id sub_1000BA3F4(uint64_t a1)
{
  v2 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Manatee: fetchAccessoryKeyBlob Account manateeZoneAvailable ", v4, 2u);
  }

  return [*(a1 + 32) _fetchAccessoryKeyBlob:*(a1 + 40)];
}

void sub_1000BA7DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000BA808(uint64_t a1, void *a2, void *a3)
{
  v61 = a1;
  v62 = a2;
  v4 = a3;
  v5 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v62 recordID];
    v7 = [v6 zoneID];
    *buf = 138412802;
    v72 = v4;
    v73 = 2112;
    v74 = v7;
    v75 = 2112;
    v76 = v62;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Manatee: fetchAccessoryKeyBlob completion error %@ recordZoneID %@, record: %@", buf, 0x20u);
  }

  p_info = &OBJC_METACLASS___BTStateWatcher.info;
  if (!v4)
  {
    v10 = [v62 recordID];
    v11 = [v10 zoneID];
    v12 = [v11 zoneName];
    v13 = [*(v61 + 32) recordZoneAccessoryDatabase];
    v14 = [v13 zoneID];
    v15 = [v14 zoneName];
    v16 = [v12 isEqualToString:v15];

    p_info = &OBJC_METACLASS___BTStateWatcher.info;
    if (!v16)
    {
      goto LABEL_27;
    }

    v17 = [v62 encryptedValues];
    WeakRetained = [v17 objectForKey:@"EncryptedAccessoryBlob"];

    v19 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v62 modifiedByDevice];
      *buf = 138412546;
      v72 = v20;
      v73 = 2112;
      v74 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Manatee: Record Modified by %@: MagicCloudPairingProtectedAccessoryBlob fetch:  encryptedBlob %@", buf, 0x16u);
    }

    if ([WeakRetained length] >= 0x99)
    {
      v21 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Manatee: Accessory zone has been upgraded. Dont generate keys", buf, 2u);
      }

      v22 = [*(v61 + 32) readUserPreference:@"MagicCloudPairingManateeUpgradedAccount"];

      if (!v22)
      {
        [*(v61 + 32) setuserPreference:@"MagicCloudPairingManateeUpgradedAccount" value:&__kCFBooleanTrue sync:1];
        v23 = +[MPCloudKit sharedInstance];
        [v23 markLegacyNonManateeContainerMigrated];
      }

      v24 = +[CloudXPCService sharedInstance];
      v25 = [v24 deviceManager];
      [v25 addLegacyMagicPairingRecordsWithCloudRecord:v62 userInitiated:0 completion:&stru_1002BABC0];
    }

    goto LABEL_18;
  }

  if ([v4 code] == 26 || objc_msgSend(v4, "code") == 11)
  {
    v9 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Manatee: fetchAccessoryKeyBlob CKErrorZoneNotFound", buf, 2u);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BB110;
    block[3] = &unk_1002B6D18;
    block[4] = *(v61 + 32);
    v69 = v4;
    dispatch_async(&_dispatch_main_q, block);

    goto LABEL_27;
  }

  if ([v4 code] == 6 || objc_msgSend(v4, "code") == 7)
  {
    v26 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_1001F68D8();
    }

    v27 = [v4 userInfo];
    v28 = [v27 objectForKeyedSubscript:CKErrorRetryAfterKey];

    if (v28)
    {
      v29 = [v4 userInfo];
      v30 = [v29 objectForKeyedSubscript:CKErrorRetryAfterKey];
      [v30 doubleValue];
      v32 = v31;

      v33 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v72 = v32;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Manatee: fetchAccessoryKeyBlob CKErrorServiceUnavailable/RateLimited, retry after: %lu", buf, 0xCu);
      }

      v34 = dispatch_time(0, (v32 * 1000000000.0));
      v67[0] = _NSConcreteStackBlock;
      v67[1] = 3221225472;
      v67[2] = sub_1000BB1F0;
      v67[3] = &unk_1002B82D0;
      v35 = *(v61 + 48);
      v67[4] = *(v61 + 32);
      v67[5] = v35;
      dispatch_after(v34, &_dispatch_main_q, v67);
    }

    goto LABEL_27;
  }

  v37 = [v4 domain];
  v38 = CKErrorDomain;
  if ([v37 isEqualToString:CKErrorDomain])
  {
    v39 = [v4 code];

    if (v39 == 112)
    {
      v40 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Manatee: fetchAccessoryKeyBlob lost access to manatee data. Reset and recreate zone.", buf, 2u);
      }

      WeakRetained = objc_loadWeakRetained((v61 + 40));
      [WeakRetained resetCloudContainerManateeIdentityLost];
      goto LABEL_18;
    }
  }

  else
  {
  }

  WeakRetained = [v4 domain];
  if (([WeakRetained isEqualToString:CKErrorDomain] & 1) == 0)
  {
LABEL_18:

    goto LABEL_27;
  }

  v41 = [v4 userInfo];
  v42 = [v41 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

  p_info = (&OBJC_METACLASS___BTStateWatcher + 32);
  if (v42)
  {
    v43 = [v4 userInfo];
    v44 = [v43 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v45 = v44;
    v46 = [v45 countByEnumeratingWithState:&v63 objects:v70 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v64;
      v49 = &_sSs8UTF8ViewV8distance4from2toSiSS5IndexV_AGtF_ptr;
      while (2)
      {
        for (i = 0; i != v47; i = i + 1)
        {
          if (*v64 != v48)
          {
            objc_enumerationMutation(v45);
          }

          v51 = [v45 objectForKey:*(*(&v63 + 1) + 8 * i)];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v52 = [v51 domain];
            if ([v52 isEqualToString:v38])
            {
              v53 = v49;
              v54 = v38;
              v55 = [v51 code];

              v56 = v55 == 112;
              v38 = v54;
              v49 = v53;
              if (v56)
              {
                v57 = sub_100005C14("MagicPairing");
                if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v72 = v51;
                  _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Manatee: fetchAccessoryKeyBlob lost access to manatee data. Reset and recreate zone due to - %@", buf, 0xCu);
                }

                v59 = sub_100005C14("MagicPairing");
                if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Manatee: fetchAccessoryKeyBlob. Reset and recreate zone DONE!", buf, 2u);
                }

                v60 = objc_loadWeakRetained((v61 + 40));
                [v60 resetCloudContainerManateeIdentityLost];

                goto LABEL_55;
              }
            }

            else
            {
            }
          }
        }

        v47 = [v45 countByEnumeratingWithState:&v63 objects:v70 count:16];
        if (v47)
        {
          continue;
        }

        break;
      }
    }

LABEL_55:

    p_info = (&OBJC_METACLASS___BTStateWatcher + 32);
  }

LABEL_27:
  [*(v61 + 32) setIsFetchInProgress:{0, v61}];
  v36 = [p_info + 21 sharedInstance];
  [v36 endTransaction:@"ManateeFetchAccessoryKeyBlob"];
}

void sub_1000BB110(uint64_t a1)
{
  [*(a1 + 32) setShouldPauseFetch:1];
  [*(a1 + 32) setPauseErrorReason:*(a1 + 40)];
  v3 = +[CloudXPCService sharedInstance];
  v2 = [v3 deviceManager];
  [v2 deleteLegacyMagicPairingRecordsWithUserInitiated:0 completion:&stru_1002BABA0];
}

void sub_1000BB194(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1001F6940();
  }
}

void sub_1000BB200(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1001F69A8();
    }
  }
}

void sub_1000BB524(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001F6A10();
    }

    [*(a1 + 32) handleModifyMasterKeyError:v6 forBlob:*(a1 + 40) withRetryCount:*(a1 + 48)];
  }

  else if (v5)
  {
    v8 = [v5 encryptedValues];
    v9 = [v8 objectForKeyedSubscript:@"EncryptedMasterKeyBlob"];
    [*(a1 + 32) setMasterBlob:v9];

    v10 = [*(a1 + 32) masterBlob];
    v11 = [v10 length];

    if (v11 == 33)
    {
      v12 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(a1 + 32) masterBlob];
        *buf = 138412290;
        v23 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Manatee: fetched existing master key record: encryptedBlob %@", buf, 0xCu);
      }

      v14 = +[CloudXPCService sharedInstance];
      v15 = [*(a1 + 32) masterBlob];
      v16 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v15, @"kMasterKeyBlob", 0];
      [v14 sendCloudKitMsg:@"MasterKeysAvailable" args:v16];

      v17 = +[CloudXPCService sharedInstance];
      v18 = [v17 deviceManager];
      [v18 addAccountMagicKeysWithCloudRecord:v5];
    }

    [*(a1 + 32) setIsWriteMasterKeysInProgress:0];
  }

  else
  {
    v19 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 40);
      *buf = 138412290;
      v23 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Manatee: No master key record found: write new key: %@", buf, 0xCu);
    }

    [*(a1 + 32) writeKeyBlob:*(a1 + 40) withRetryCount:0];
  }

  v21 = +[CloudXPCService sharedInstance];
  [v21 endTransaction:@"ManateeModifyKeyBlob"];
}

void sub_1000BC338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  objc_destroyWeak((v24 + 72));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000BC394(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v19 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v68 = v5;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "writeKeyBlob saveRecordZone record  %@", buf, 0xCu);
    }

    v20 = [*(a1 + 32) cloudKitDatabase];
    v21 = *(a1 + 48);
    v55[0] = _NSConcreteStackBlock;
    v55[1] = 3221225472;
    v55[2] = sub_1000BCB00;
    v55[3] = &unk_1002BABE8;
    v22 = *(a1 + 64);
    v58 = *(a1 + 80);
    v53 = *(a1 + 32);
    v23 = *(&v53 + 1);
    *&v24 = *(a1 + 56);
    *(&v24 + 1) = v22;
    v56 = v53;
    v57 = v24;
    [v20 saveRecord:v21 completionHandler:v55];

    v25 = *(&v56 + 1);
    goto LABEL_52;
  }

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a3);
  v7 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v68 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "writeKeyBlob saveRecordZone: error %@ ", buf, 0xCu);
  }

  v8 = [v6 domain];
  if ([v8 isEqualToString:CKErrorDomain] && (objc_msgSend(v6, "code") == 3 || objc_msgSend(v6, "code") == 7 || objc_msgSend(v6, "code") == 4 || objc_msgSend(v6, "code") == 9 || objc_msgSend(v6, "code") == 2 || objc_msgSend(v6, "code") == 6))
  {
    v9 = *(a1 + 80);

    if (v9 <= 3)
    {
      v10 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 80);
        *buf = 138412546;
        v68 = v6;
        v69 = 2048;
        v70 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "writeKeyBlob failed with error %@, retry count = %lu", buf, 0x16u);
      }

      v12 = [v6 userInfo];
      v13 = [v12 objectForKeyedSubscript:CKErrorRetryAfterKey];

      if (v13)
      {
        v14 = [v6 userInfo];
        v15 = [v14 objectForKeyedSubscript:CKErrorRetryAfterKey];
        [v15 doubleValue];
        v17 = v16;

        v18 = (v17 * 1000000000.0);
      }

      else
      {
        v18 = 60000000000;
      }

      v48 = dispatch_time(0, v18);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000BCAEC;
      block[3] = &unk_1002B86B8;
      v49 = *(a1 + 40);
      block[4] = *(a1 + 32);
      v50 = v49;
      v51 = *(a1 + 80);
      v64 = v50;
      v65 = v51;
      dispatch_after(v48, &_dispatch_main_q, block);
      v25 = v64;
LABEL_52:

      goto LABEL_53;
    }
  }

  else
  {
  }

  v26 = [v6 domain];
  if ([v26 isEqualToString:CKErrorDomain])
  {
    v27 = [v6 code];

    if (v27 == 112)
    {
      v28 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Manatee: writeKeyBlob saveRecordZone lost access to manatee data. Reset and recreate zone.", buf, 2u);
      }

      v29 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Manatee: writeKeyBlob saveRecordZone. Reset and recreate zone DONE!", buf, 2u);
      }

      WeakRetained = objc_loadWeakRetained((a1 + 72));
      [WeakRetained resetCloudContainerManateeIdentityLost];

      goto LABEL_53;
    }
  }

  else
  {
  }

  v31 = [v6 domain];
  if ([v31 isEqualToString:CKErrorDomain])
  {
    v32 = [v6 userInfo];
    v33 = [v32 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

    if (v33)
    {
      v52 = a1;
      v54 = v5;
      v34 = [v6 userInfo];
      v35 = [v34 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v36 = v35;
      v37 = [v36 countByEnumeratingWithState:&v59 objects:v66 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v60;
        while (2)
        {
          for (i = 0; i != v38; i = i + 1)
          {
            if (*v60 != v39)
            {
              objc_enumerationMutation(v36);
            }

            v41 = [v36 objectForKey:*(*(&v59 + 1) + 8 * i)];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v42 = [v41 domain];
              if ([v42 isEqualToString:CKErrorDomain])
              {
                v43 = [v41 code];

                if (v43 == 112)
                {
                  v44 = sub_100005C14("MagicPairing");
                  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v68 = v41;
                    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Manatee: writeKeyBlob lost access to manatee data. Reset and recreate zone due to - %@", buf, 0xCu);
                  }

                  v46 = sub_100005C14("MagicPairing");
                  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Manatee: writeKeyBlob. Reset and recreate zone DONE!", buf, 2u);
                  }

                  v47 = objc_loadWeakRetained((v52 + 72));
                  [v47 resetCloudContainerManateeIdentityLost];

                  goto LABEL_49;
                }
              }

              else
              {
              }
            }
          }

          v38 = [v36 countByEnumeratingWithState:&v59 objects:v66 count:16];
          if (v38)
          {
            continue;
          }

          break;
        }
      }

LABEL_49:

      v5 = v54;
    }
  }

  else
  {
  }

LABEL_53:
}

void sub_1000BCB00(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MagicCloudPairingProtectedMasterBlob, saveRecord %@", buf, 0xCu);
    }

    goto LABEL_17;
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  v7 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "writeKeyBlob saveRecord: error %@ ", buf, 0xCu);
  }

  v8 = [v6 domain];
  if (!-[NSObject isEqualToString:](v8, "isEqualToString:", CKErrorDomain) || [v6 code] != 3 && objc_msgSend(v6, "code") != 7 && objc_msgSend(v6, "code") != 4 && objc_msgSend(v6, "code") != 9 && objc_msgSend(v6, "code") != 2)
  {
LABEL_17:

    goto LABEL_18;
  }

  v9 = *(a1 + 64);

  if (v9 <= 3)
  {
    v10 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 64);
      *buf = 138412546;
      v27 = v6;
      v28 = 2048;
      v29 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "writeKeyBlob:saveRecord failed with error %@, retry count = %lu", buf, 0x16u);
    }

    v12 = [v6 userInfo];
    v13 = [v12 objectForKeyedSubscript:CKErrorRetryAfterKey];

    if (v13)
    {
      v14 = [v6 userInfo];
      v15 = [v14 objectForKeyedSubscript:CKErrorRetryAfterKey];
      [v15 doubleValue];
      v17 = v16;

      v18 = (v17 * 1000000000.0);
    }

    else
    {
      v18 = 60000000000;
    }

    v19 = dispatch_time(0, v18);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BCE50;
    block[3] = &unk_1002B86B8;
    v20 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v21 = v20;
    v22 = *(a1 + 64);
    v24 = v21;
    v25 = v22;
    dispatch_after(v19, &_dispatch_main_q, block);
  }

LABEL_18:
  dispatch_semaphore_signal(*(a1 + 48));
}

void sub_1000BCF4C(uint64_t a1)
{
  v2 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    *buf = 138412546;
    v15 = v3;
    v16 = 1024;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Manatee: updateCloudKitAccessoryZone with %@, delete: %i", buf, 0x12u);
  }

  v5 = [*(a1 + 40) modifyOperationTimer];

  if (v5)
  {
    v6 = [*(a1 + 40) modifyOperationTimer];
    [v6 invalidate];
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000BD0D4;
  v10[3] = &unk_1002B9E20;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v7;
  v12 = v8;
  v13 = *(a1 + 48);
  v9 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v10 block:3.0];
  [*(a1 + 40) setModifyOperationTimer:v9];
}

void sub_1000BD0D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Manatee: Updating Accessory Zone Now with %@", buf, 0xCu);
  }

  objc_initWeak(buf, *(a1 + 40));
  v6 = [*(a1 + 40) modifyOperationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000BD270;
  v7[3] = &unk_1002B9DF8;
  v10 = *(a1 + 48);
  objc_copyWeak(&v9, buf);
  v8 = *(a1 + 32);
  [v6 addOperationWithBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void sub_1000BD244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000BD270(uint64_t a1)
{
  v2 = *(a1 + 48);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (v2 == 1)
  {
    [WeakRetained deleteCloudKitAccessoryZone];
  }

  else
  {
    [WeakRetained modifyAccessoryBlob:*(a1 + 32) withRetryCount:0];
  }
}

void sub_1000BD518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000BD544(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1001F6BCC();
      }

      [WeakRetained handleAccessoryModifyError:v6 forBlob:*(a1 + 32) withRetryCount:*(a1 + 56)];
    }

    else
    {
      v9 = [v5 encryptedValues];
      v10 = [v9 objectForKeyedSubscript:@"EncryptedAccessoryBlob"];

      if (v5)
      {
        v11 = [v10 isEqualToData:*(a1 + 32)];
        v12 = sub_100005C14("MagicPairing");
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        if (v11)
        {
          if (v13)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Dropping same modify record: MagicCloudPairingProtectedAccessoryBlob", buf, 2u);
          }
        }

        else
        {
          if (v13)
          {
            v16 = *(a1 + 32);
            *buf = 138412290;
            v28 = v16;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Manatee: modify record: MagicCloudPairingProtectedAccessoryBlob fetch:  encryptedBlob %@", buf, 0xCu);
          }

          v17 = *(a1 + 32);
          v18 = [v5 encryptedValues];
          [v18 setObject:v17 forKeyedSubscript:@"EncryptedAccessoryBlob"];

          objc_initWeak(buf, WeakRetained);
          v19 = [WeakRetained cloudKitDatabase];
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_1000BD8B4;
          v23[3] = &unk_1002B9E48;
          v24 = v5;
          objc_copyWeak(v26, buf);
          v20 = *(a1 + 32);
          v21 = *(a1 + 56);
          v25 = v20;
          v26[1] = v21;
          [v19 saveRecord:v24 completionHandler:v23];

          objc_destroyWeak(v26);
          objc_destroyWeak(buf);
        }
      }

      else
      {
        v14 = sub_100005C14("MagicPairing");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 32);
          *buf = 138412290;
          v28 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Manatee: No record found: write new data: %@", buf, 0xCu);
        }

        [WeakRetained writeAccessoryBlob:*(a1 + 32) withRetryCount:0];
      }
    }

    dispatch_semaphore_signal(*(a1 + 40));
    v22 = +[CloudXPCService sharedInstance];
    [v22 endTransaction:@"ManateeModifyAccessoryBlob"];
  }
}

void sub_1000BD888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000BD8B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005C14("MagicPairing");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001F6C34();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained handleAccessoryModifyError:v6 forBlob:*(a1 + 40) withRetryCount:*(a1 + 56)];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Manatee: Successfully saved the modified record - %@", buf, 0xCu);
    }

    v10 = +[CloudXPCService sharedInstance];
    v11 = [v10 deviceManager];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000BDAD4;
    v15[3] = &unk_1002B6A38;
    v16 = v5;
    [v11 addLegacyMagicPairingRecordsWithCloudRecord:v16 userInitiated:1 completion:v15];

    v12 = +[CloudXPCService sharedInstance];
    v13 = [NSNumber numberWithBool:1];
    v14 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v13, @"kUploadStatus", 0];
    [v12 sendCloudKitMsg:@"DeviceInfoUploadStatus" args:v14];

    WeakRetained = v16;
  }
}

void sub_1000BDAD4(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1001F6C9C();
    }
  }
}

void sub_1000BE3D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_1000BE404(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) modifyOperationQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000BE500;
  v5[3] = &unk_1002B9E70;
  objc_copyWeak(v7, &location);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7[1] = v4;
  [v2 addOperationWithBlock:v5];

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void sub_1000BE4DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000BE500(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained modifyAccessoryBlob:*(a1 + 32) withRetryCount:*(a1 + 48) + 1];
}

void sub_1000BE558(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained writeAccessoryBlob:*(a1 + 32) withRetryCount:0];
}

void sub_1000BE8F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000BE920(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "writeAccessoryBlob saveRecordZone: error %@ ", buf, 0xCu);
    }

    v8 = [v6 domain];
    if ([v8 isEqualToString:CKErrorDomain])
    {
      v9 = [v6 code];

      if (v9 == 112)
      {
        v10 = sub_100005C14("MagicPairing");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Manatee: writeAccessoryBlob saveRecordZone lost access to manatee data. Reset and recreate zone.", buf, 2u);
        }

        v11 = sub_100005C14("MagicPairing");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Manatee: writeAccessoryBlob saveRecordZone. Reset and recreate zone DONE!", buf, 2u);
        }

        WeakRetained = objc_loadWeakRetained((a1 + 64));
        [WeakRetained resetCloudContainerManateeIdentityLost];
        goto LABEL_30;
      }
    }

    else
    {
    }

    WeakRetained = [v6 domain];
    if (([WeakRetained isEqualToString:CKErrorDomain] & 1) == 0)
    {
LABEL_30:

      goto LABEL_37;
    }

    v17 = [v6 userInfo];
    v18 = [v17 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

    if (v18)
    {
      v34 = a1;
      v19 = [v6 userInfo];
      v20 = [v19 objectForKeyedSubscript:CKPartialErrorsByItemIDKey];

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v21 = v20;
      v22 = [v21 countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v40;
        while (2)
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v40 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = [v21 objectForKey:*(*(&v39 + 1) + 8 * i)];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v27 = [v26 domain];
              if ([v27 isEqualToString:CKErrorDomain])
              {
                v28 = [v26 code];

                if (v28 == 112)
                {
                  v29 = sub_100005C14("MagicPairing");
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v45 = v26;
                    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Manatee: handleAccessoryModifyError lost access to manatee data. Reset and recreate zone due to - %@", buf, 0xCu);
                  }

                  v31 = sub_100005C14("MagicPairing");
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Manatee: handleAccessoryModifyError. Reset and recreate zone DONE!", buf, 2u);
                  }

                  v32 = objc_loadWeakRetained((v34 + 64));
                  [v32 resetCloudContainerManateeIdentityLost];

                  goto LABEL_36;
                }
              }

              else
              {
              }
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v39 objects:v43 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

LABEL_36:

      a1 = v34;
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000BEEB8;
    block[3] = &unk_1002B6880;
    block[4] = *(a1 + 32);
    dispatch_async(&_dispatch_main_q, block);
    v13 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = v5;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Manatee: saveRecordZone record %@, resume fetches", buf, 0xCu);
    }

    v14 = [*(a1 + 32) cloudKitDatabase];
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000BEEFC;
    v35[3] = &unk_1002B9D80;
    v37 = *(a1 + 72);
    v35[4] = v15;
    v36 = *(a1 + 48);
    [v14 saveRecord:v16 completionHandler:v35];
  }

LABEL_37:
  dispatch_semaphore_signal(*(a1 + 56));
  v33 = +[CloudXPCService sharedInstance];
  [v33 endTransaction:@"ManateeWriteAccessoryBlob"];
}

id sub_1000BEEB8(uint64_t a1)
{
  [*(a1 + 32) setShouldPauseFetch:0];
  v2 = *(a1 + 32);

  return [v2 setPauseErrorReason:0];
}

void sub_1000BEEFC(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005C14("MagicPairing");
  v8 = v7;
  if (!v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Manatee: writeAccessoryBlob createRecordZone record  %@", buf, 0xCu);
    }

    v10 = +[CloudXPCService sharedInstance];
    v11 = [v10 deviceManager];
    v33 = _NSConcreteStackBlock;
    v34 = 3221225472;
    v35 = sub_1000BF538;
    v36 = &unk_1002B6A38;
    v37 = v5;
    [v11 addLegacyMagicPairingRecordsWithCloudRecord:v37 userInitiated:1 completion:&v33];

    v12 = +[CloudXPCService sharedInstance];
    v13 = [NSNumber numberWithBool:1];
    v14 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v13, @"kUploadStatus", 0, v33, v34, v35, v36];
    [v12 sendCloudKitMsg:@"DeviceInfoUploadStatus" args:v14];

    v15 = v37;
    goto LABEL_10;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1001F24C0();
  }

  if (a1[6] >= 5uLL)
  {
    v9 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1001F6F0C();
    }

LABEL_19:

    goto LABEL_20;
  }

  v16 = [v6 domain];
  if ([v16 isEqualToString:CKErrorDomain])
  {
    if ([v6 code] == 3 || objc_msgSend(v6, "code") == 4 || objc_msgSend(v6, "code") == 9)
    {

LABEL_16:
      v17 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1001F6EA4();
      }

      v9 = +[CloudXPCService sharedInstance];
      v18 = [NSNumber numberWithBool:0];
      v19 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v18, @"kUploadStatus", 0];
      [v9 sendCloudKitMsg:@"DeviceInfoUploadStatus" args:v19];

      goto LABEL_19;
    }

    v32 = [v6 code];

    if (v32 == 6)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  if ([v6 code] == 7)
  {
    v20 = [v6 userInfo];
    v21 = [v20 objectForKeyedSubscript:CKErrorRetryAfterKey];

    if (v21)
    {
      v22 = [v6 userInfo];
      v23 = [v22 objectForKeyedSubscript:CKErrorRetryAfterKey];
      [v23 doubleValue];
      v25 = v24 + 5.0;

      v26 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = a1[6];
        *buf = 138412802;
        v42 = v6;
        v43 = 2048;
        v44 = v27;
        v45 = 2048;
        v46 = v25;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Manatee: writeAccessoryBlob failed with error %@, retry count = %lu, retry time: %lu", buf, 0x20u);
      }

      v28 = dispatch_time(0, (v25 * 1000000000.0));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000BF3E4;
      block[3] = &unk_1002B86B8;
      v29 = a1[5];
      block[4] = a1[4];
      v30 = v29;
      v31 = a1[6];
      v39 = v30;
      v40 = v31;
      dispatch_after(v28, &_dispatch_main_q, block);
      v15 = v39;
LABEL_10:
    }
  }

LABEL_20:
}

void sub_1000BF3E4(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) modifyOperationQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000BF4E0;
  v5[3] = &unk_1002B9E70;
  objc_copyWeak(v7, &location);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7[1] = v4;
  [v2 addOperationWithBlock:v5];

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void sub_1000BF4BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000BF4E0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained modifyAccessoryBlob:*(a1 + 32) withRetryCount:*(a1 + 48) + 1];
}

void sub_1000BF538(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1001F6F74();
    }
  }
}

void sub_1000BF814(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_100005C14("MagicPairing");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 138412290;
      v16 = v4;
      v7 = "Manatee: deleteCloudKitAccessoryZone: error %@ ";
      v8 = v5;
      v9 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    }
  }

  else if (v6)
  {
    *buf = 0;
    v7 = "Manatee: Successfully deleted record";
    v8 = v5;
    v9 = 2;
    goto LABEL_6;
  }

  v10 = +[CloudXPCService sharedInstance];
  v11 = [NSNumber numberWithInt:v4 == 0, @"kUploadStatus"];
  v14 = v11;
  v12 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [v10 sendCloudKitMsg:@"DeviceInfoUploadStatus" args:v12];

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000BF998(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1001F6FDC();
  }
}

void sub_1000BFDA4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005C14("MagicPairing");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001F7044();
    }

    v9 = [v6 userInfo];
    v10 = [v9 objectForKeyedSubscript:NSUnderlyingErrorKey];

    v11 = [v6 domain];
    if ([v11 isEqualToString:CKErrorDomain] && CKErrorIsCode() && v10)
    {
      v12 = [v10 code];

      if (v12 != 2032 || !*(a1 + 32))
      {
        goto LABEL_18;
      }

      v13 = [v6 localizedDescription];
      v14 = [v13 rangeOfString:@"'"];
      v16 = v15;

      v17 = [v6 localizedDescription];
      v18 = [v17 rangeOfString:@"'" options:4];

      v19 = &v14[v16];
      v20 = v18 - &v14[v16];
      v21 = [v6 localizedDescription];
      v11 = [v21 substringWithRange:{v19, v20}];

      v22 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1001F70AC();
      }

      v23 = *(a1 + 32);
      if (v23)
      {
        [*(a1 + 40) setuserPreference:v23 value:v11 sync:1];
      }
    }

LABEL_18:
    goto LABEL_19;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412290;
    v27 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Manatee: saveSubscription record: %@", &v26, 0xCu);
  }

  v24 = *(a1 + 32);
  if (v24)
  {
    v25 = *(a1 + 40);
    v10 = [v5 subscriptionID];
    [v25 setuserPreference:v24 value:v10 sync:1];
    goto LABEL_18;
  }

LABEL_19:
}

void sub_1000C027C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005C14("MagicPairing");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001F7114();
    }

    v9 = [v6 domain];
    if ([v9 isEqualToString:CKErrorDomain])
    {
      v10 = [v6 code];

      if (v10 == 11)
      {
        [*(a1 + 40) removeuserPreference:*(a1 + 48) sync:1];
        [*(a1 + 40) createSubscritionForRecordType:*(a1 + 56)];
      }

      goto LABEL_16;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Manatee: Found existing subscription - %@", &v18, 0xCu);
  }

  v11 = *(a1 + 32);
  v12 = [v5 subscriptionID];
  v13 = [v11 isEqualToString:v12];

  v14 = sub_100005C14("MagicPairing");
  v9 = v14;
  if (!v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1001F717C();
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Manatee: Already created this subscription - %@", &v18, 0xCu);
  }

  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = [v5 subscriptionID];
  [v15 setuserPreference:v16 value:v17 sync:1];

  [*(a1 + 40) setCloudSubscription:v5];
LABEL_16:
}

void sub_1000C05F0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a3)
  {
    v6 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Manatee: Found subscription - %@", &v12, 0xCu);
    }

    v7 = *(a1 + 32);
    v8 = [v5 subscriptionID];
    LODWORD(v7) = [v7 isEqualToString:v8];

    if (v7)
    {
      v9 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Manatee: Already have subscription - %@", &v12, 0xCu);
      }

      v10 = *(a1 + 40);
      v11 = [v5 subscriptionID];
      [v10 setuserPreference:@"MagicCloudPairingAccessorySubscriptionManateeID" value:v11 sync:1];

      [*(a1 + 40) setCloudSubscription:v5];
    }
  }
}

void sub_1000C0900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak((v17 - 64));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C0940(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v19 = a3;
  val = objc_loadWeakRetained((a1 + 48));
  v6 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Manatee: fetchAllSubscriptionsWithCompletionHandler: error %@ ", buf, 0xCu);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v8)
  {
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
          v13 = [v12 recordType];
          v14 = [v13 isEqualToString:*(a1 + 32)];

          if (v14)
          {
            *(*(*(a1 + 40) + 8) + 24) = 1;
            v15 = sub_100005C14("MagicPairing");
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = *(a1 + 32);
              *buf = 138412546;
              v29 = v16;
              v30 = 2112;
              v31 = v12;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Manatee: Delete Subscription for record type: %@ and sub: %@", buf, 0x16u);
            }

            objc_initWeak(buf, val);
            v17 = [val cloudKitDatabase];
            v18 = [v12 subscriptionID];
            v21[0] = _NSConcreteStackBlock;
            v21[1] = 3221225472;
            v21[2] = sub_1000C0CB8;
            v21[3] = &unk_1002B9FD0;
            v22 = *(a1 + 32);
            objc_copyWeak(&v23, buf);
            [v17 deleteSubscriptionWithID:v18 completionHandler:v21];

            objc_destroyWeak(&v23);
            objc_destroyWeak(buf);
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v8);
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    [val setuserPreference:@"MagicPairingMasterKeySubscriptionManateeDisabled" value:&__kCFBooleanTrue sync:1];
  }
}

void sub_1000C0C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak(&a20);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000C0CB8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = sub_100005C14("MagicPairing");
  v8 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "Manatee: Error Deleting Subscription for record type: %@ with error: %@ ", &v11, 0x16u);
    }
  }

  else
  {
    if (v8)
    {
      v10 = *(a1 + 32);
      v11 = 138412546;
      v12 = v10;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "Manatee: Successfully deleted Subscription for record type - %@ with ID - %@", &v11, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setuserPreference:@"MagicPairingMasterKeySubscriptionManateeDisabled" value:&__kCFBooleanTrue sync:1];
  }
}

void sub_1000C10A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C10CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error getting server preferred push environment %@", &v11, 0xCu);
    }
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000C146C(uint64_t a1)
{
  v2 = +[CloudXPCService sharedInstance];
  [v2 beginTransaction:@"ManateeIdentityLost"];

  v3 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) recordZoneBlob];
    v5 = [v4 zoneID];
    v6 = [v5 zoneName];
    v7 = [*(a1 + 32) recordZoneAccessoryDatabase];
    v8 = [v7 zoneID];
    v9 = [v8 zoneName];
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, " >>> Manatee Identity Lost Reset Both Zones %@ - %@", buf, 0x16u);
  }

  v10 = dispatch_time(0, 5000000000);
  v11 = dispatch_semaphore_create(0);
  v12 = [*(a1 + 32) cloudKitDatabase];
  v13 = [*(a1 + 32) recordZoneBlob];
  v14 = [v13 zoneID];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000C18F0;
  v42[3] = &unk_1002BACA8;
  v43 = v11;
  v15 = v11;
  [v12 deleteRecordZoneWithID:v14 completionHandler:v42];

  dispatch_semaphore_wait(v15, v10);
  v16 = dispatch_semaphore_create(0);
  v17 = [*(a1 + 32) cloudKitDatabase];
  v18 = [*(a1 + 32) recordZoneAccessoryDatabase];
  v19 = [v18 zoneID];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000C19D4;
  v40[3] = &unk_1002BACA8;
  v20 = v16;
  v41 = v20;
  [v17 deleteRecordZoneWithID:v19 completionHandler:v40];

  dispatch_semaphore_wait(v20, v10);
  v21 = dispatch_group_create();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v45 = 0;
  v22 = +[CloudXPCService sharedInstance];
  v23 = [v22 deviceManager];

  dispatch_group_enter(v21);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1000C1AB8;
  v36[3] = &unk_1002BACD0;
  v24 = v21;
  v25 = *(a1 + 32);
  v37 = v24;
  v38 = v25;
  v39 = buf;
  [v23 fetchAccountMagicKeysBlobWithCompletion:v36];
  dispatch_group_enter(v24);
  v29 = _NSConcreteStackBlock;
  v30 = 3221225472;
  v31 = sub_1000C1B10;
  v32 = &unk_1002BACF8;
  v26 = *(a1 + 32);
  v35 = buf;
  v33 = v26;
  v27 = v24;
  v34 = v27;
  [v23 fetchLegacyMagicPairingRecordsWithCompletion:&v29];
  dispatch_group_notify(v27, &_dispatch_main_q, &stru_1002BAD18);
  v28 = [CloudXPCService sharedInstance:v29];
  [v28 endTransaction:@"ManateeIdentityLost"];

  _Block_object_dispose(buf, 8);
}

void sub_1000C18F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Manatee Identity Lost resetMasterZone (%@) deleteRecordWithID: error %@ ", &v8, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000C19D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Manatee Identity Lost Reset Accessory Zone (%@) deleteRecordWithID: error %@ ", &v8, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000C1AB8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    [*(a1 + 40) writeKeyBlob:a2 withRetryCount:0];
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

void sub_1000C1B10(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && (*(*(*(a1 + 48) + 8) + 24) & 1) != 0)
  {
    [*(a1 + 32) writeAccessoryBlob:v3 withRetryCount:0];
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_1000C1B8C(id a1)
{
  v1 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Manatee Identity Lost Reset Done", v2, 2u);
  }
}

void sub_1000C1FD4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "resetMasterZone (%@) deleteRecordWithID: error %@ ", &v8, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000C2388(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005C14("MagicPairing");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "updateMasterZoneBlob saveRecordZone: error %@ ", buf, 0xCu);
    }
  }

  else
  {
    if (v8)
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "updateMasterZoneBlob saveRecordZone record  %@", buf, 0xCu);
    }

    v9 = [*(a1 + 32) cloudKitDatabase];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000C2544;
    v14[3] = &unk_1002BAD40;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 32);
    v15 = v11;
    v16 = v12;
    [v9 saveRecord:v10 completionHandler:v14];

    v7 = v15;
  }

  v13 = +[CloudXPCService sharedInstance];
  [v13 endTransaction:@"updateMasterZoneBlob"];
}

void sub_1000C2544(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "updateMasterZoneBlob createRecordZone: error %@ ", buf, 0xCu);
    }

LABEL_13:

    goto LABEL_14;
  }

  if ([*(a1 + 32) length] < 3)
  {
    v7 = xpc_create_with_format("[ %BOOL ]", 1);
    CFRetain(v7);
    v9 = [*(a1 + 40) readUserPreference:@"MagicCloudPairingManateeUpgradedAccount"];

    if (!v9)
    {
      [*(a1 + 40) setuserPreference:@"MagicCloudPairingManateeUpgradedAccount" value:&__kCFBooleanTrue sync:1];
      v10 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "updateMasterZoneBlob Master zone has been upgraded successfully", buf, 2u);
      }
    }

    v11 = +[CloudXPCService sharedInstance];
    v12 = [NSNumber numberWithBool:1];
    v13 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v12, @"kUploadStatus", 0];
    [v11 sendCloudKitMsg:@"manateeUdpateStatus" args:v13];

    goto LABEL_13;
  }

  v8 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "updateMasterZoneBlob record  %@", buf, 0xCu);
  }

  [*(a1 + 40) resetAccessoryZone:*(a1 + 32)];
LABEL_14:
}

void sub_1000C2978(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "resetAccessoryZone (%@) deleteRecordWithID: error %@ ", &v8, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000C2D28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005C14("MagicPairing");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (v8)
    {
      *buf = 138412290;
      v41 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Manatee: upgradeAccessoryBlob saveRecordZone record  %@", buf, 0xCu);
    }

    v20 = [*(a1 + 32) cloudKitDatabase];
    v30 = _NSConcreteStackBlock;
    v31 = 3221225472;
    v32 = sub_1000C3104;
    v33 = &unk_1002B9D80;
    v21 = *(a1 + 48);
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    v36 = *(a1 + 56);
    v34 = v22;
    v35 = v23;
    [v20 saveRecord:v21 completionHandler:&v30];

    v24 = v35;
    goto LABEL_21;
  }

  if (v8)
  {
    *buf = 138412290;
    v41 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "upgradeAccessoryBlob upgradeRecordZone: error %@ ", buf, 0xCu);
  }

  v9 = [v6 domain];
  if ([v9 isEqualToString:CKErrorDomain] && (objc_msgSend(v6, "code") == 3 || objc_msgSend(v6, "code") == 7 || objc_msgSend(v6, "code") == 4 || objc_msgSend(v6, "code") == 9 || objc_msgSend(v6, "code") == 6))
  {
    v10 = *(a1 + 56);

    if (v10 <= 3)
    {
      v11 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 56);
        *buf = 138412546;
        v41 = v6;
        v42 = 2048;
        v43 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Manatee: upgradeAccessoryBlob failed with error %@, retry count = %lu", buf, 0x16u);
      }

      v13 = [v6 userInfo];
      v14 = [v13 objectForKeyedSubscript:CKErrorRetryAfterKey];

      if (v14)
      {
        v15 = [v6 userInfo];
        v16 = [v15 objectForKeyedSubscript:CKErrorRetryAfterKey];
        [v16 doubleValue];
        v18 = v17;

        v19 = (v18 * 1000000000.0);
      }

      else
      {
        v19 = 60000000000;
      }

      v25 = dispatch_time(0, v19);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000C30F0;
      block[3] = &unk_1002B86B8;
      v26 = *(a1 + 40);
      block[4] = *(a1 + 32);
      v27 = v26;
      v28 = *(a1 + 56);
      v38 = v27;
      v39 = v28;
      dispatch_after(v25, &_dispatch_main_q, block);
      v24 = v38;
LABEL_21:
    }
  }

  else
  {
  }

  v29 = [CloudXPCService sharedInstance:v30];
  [v29 endTransaction:@"upgradeAccessoryBlob"];
}

void sub_1000C3104(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100005C14("MagicPairing");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (v8)
    {
      *buf = 138412290;
      v33 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Manatee: upgradeAccessoryBlob record  %@", buf, 0xCu);
    }

    v9 = xpc_create_with_format("[ %BOOL ]", 1);
    CFRetain(v9);
    v20 = [*(a1 + 32) readUserPreference:@"MagicCloudPairingManateeUpgradedAccount"];

    if (!v20)
    {
      [*(a1 + 32) setuserPreference:@"MagicCloudPairingManateeUpgradedAccount" value:&__kCFBooleanTrue sync:1];
      v21 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Manatee: upgradeAccessoryBlob Master zone has been upgraded successfully", buf, 2u);
      }
    }

    v22 = +[CloudXPCService sharedInstance];
    v23 = [NSNumber numberWithBool:1];
    v24 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v23, @"kUploadStatus", 0];
    [v22 sendCloudKitMsg:@"manateeUdpateStatus" args:v24];

    goto LABEL_22;
  }

  if (v8)
  {
    *buf = 138412290;
    v33 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Manatee: upgradeAccessoryBlob: error %@ ", buf, 0xCu);
  }

  v9 = [v6 domain];
  if (![v9 isEqualToString:CKErrorDomain] || objc_msgSend(v6, "code") != 3 && objc_msgSend(v6, "code") != 7 && objc_msgSend(v6, "code") != 4 && objc_msgSend(v6, "code") != 9 && objc_msgSend(v6, "code") != 6)
  {
LABEL_22:

    goto LABEL_23;
  }

  v10 = *(a1 + 48);

  if (v10 <= 3)
  {
    v11 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 48);
      *buf = 138412546;
      v33 = v6;
      v34 = 2048;
      v35 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Manatee: upgradeAccessoryBlob failed with error %@, retry count = %lu", buf, 0x16u);
    }

    v13 = [v6 userInfo];
    v14 = [v13 objectForKeyedSubscript:CKErrorRetryAfterKey];

    if (v14)
    {
      v15 = [v6 userInfo];
      v16 = [v15 objectForKeyedSubscript:CKErrorRetryAfterKey];
      [v16 doubleValue];
      v18 = v17;

      v19 = (v18 * 1000000000.0);
    }

    else
    {
      v19 = 60000000000;
    }

    v25 = dispatch_time(0, v19);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C3538;
    block[3] = &unk_1002B86B8;
    v26 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v27 = v26;
    v28 = *(a1 + 48);
    v30 = v27;
    v31 = v28;
    dispatch_after(v25, &_dispatch_main_q, block);
  }

LABEL_23:
}

void sub_1000C3784(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = *(a1 + 32);
    v3 = [v2 recordZoneID];
    v4 = [v3 zoneName];
    v5 = [v4 isEqualToString:@"MagicCloudPairingCustomKeyBlobZone"];

    if (v5)
    {
      v6 = sub_100005C14("MagicPairing");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "*****>>>> Manatee: Master Key Updated", buf, 2u);
      }

      if ([*(a1 + 40) isWriteMasterKeysInProgress])
      {
        v7 = sub_100005C14("MagicPairing");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "*****>>>> Manatee: Master Key Updated but we are in process to push new key. Dont fetch", buf, 2u);
        }
      }

      else
      {
        [*(a1 + 40) setMasterBlob:0];
        [*(a1 + 40) fetchKeyBlob:0];
      }
    }
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C3940;
  block[3] = &unk_1002B6880;
  block[4] = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, block);
}

id sub_1000C3940(uint64_t a1)
{
  [*(a1 + 32) setShouldPauseFetch:0];
  [*(a1 + 32) setPauseErrorReason:0];
  v2 = *(a1 + 32);

  return [v2 fetchAccessoryKeyBlob:0];
}

void sub_1000C48BC(id a1)
{
  v1 = objc_alloc_init(BTIdentityDaemon);
  v2 = qword_1002FA1D0;
  qword_1002FA1D0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000C4A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F7148 <= 30)
  {
    if (dword_1002F7148 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001F7310(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);
  if (*(v4 + 8) == -1)
  {
    v5 = *(v4 + 16);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000C4C10;
    handler[3] = &unk_1002B6DF0;
    handler[4] = v4;
    notify_register_dispatch("com.apple.bluetooth.daemonStarted", (v4 + 8), v5, handler);
    v4 = *(v3 + 32);
  }

  if ((*(v4 + 40) & 1) == 0)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:*(v3 + 32) selector:"_idsDevicesChanged:" name:@"BTTotalIDSDeviceCountChanged" object:0];
    *(*(v3 + 32) + 40) = 1;
  }

  v7 = +[CBIDSManager sharedInstance];
  v8 = [v7 isReady];

  if (v8)
  {
    v9 = +[CBIDSManager sharedInstance];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000C4CEC;
    v10[3] = &unk_1002B7B68;
    v10[4] = *(v3 + 32);
    [v9 fetchIDSDevicesWithCompletion:v10];
  }
}

void sub_1000C4C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F7148 <= 30)
  {
    if (dword_1002F7148 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001F732C(a1, a2, a3);
    }
  }

  v4 = +[CBIDSManager sharedInstance];
  v5 = [v4 isReady];

  if (v5)
  {
    *(*(v3 + 32) + 12) = 0;
    v9 = *(v3 + 32);

    [v9 _idsScheduleUpdateIdentities];
  }

  else if (dword_1002F7148 <= 30)
  {
    if (dword_1002F7148 != -1 || (v6 = _LogCategory_Initialize(), v6))
    {
      sub_1001F7348(v6, v7, v8);
    }
  }
}

void sub_1000C4CEC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C4D88;
  v7[3] = &unk_1002B6D18;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

id sub_1000C4D88(uint64_t a1)
{
  if (dword_1002F7148 <= 30 && (dword_1002F7148 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F7364(a1);
  }

  objc_storeStrong((*(a1 + 40) + 32), *(a1 + 32));
  v2 = *(a1 + 40);

  return [v2 _idsScheduleUpdateIdentities];
}

void sub_1000C4E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F7148 <= 30)
  {
    if (dword_1002F7148 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001F73AC(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);
  v5 = *(v4 + 8);
  if (v5 != -1)
  {
    notify_cancel(v5);
    *(*(v3 + 32) + 8) = -1;
    v4 = *(v3 + 32);
  }

  if (*(v4 + 40) == 1)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:*(v3 + 32) name:@"BTTotalIDSDeviceCountChanged" object:0];

    *(*(v3 + 32) + 40) = 0;
    v4 = *(v3 + 32);
  }

  v7 = *(v4 + 32);
  *(v4 + 32) = 0;

  [*(*(v3 + 32) + 24) invalidate];
  v8 = *(v3 + 32);
  v9 = *(v8 + 24);
  *(v8 + 24) = 0;
}

uint64_t sub_1000C4F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F7148 <= 30)
  {
    if (dword_1002F7148 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001F73C8(a1, a2, a3);
    }
  }

  if (![*(v3 + 32) caseInsensitiveCompare:@"idsUpForce"])
  {
    *(*(v3 + 40) + 12) = 0;
  }

  [*(v3 + 40) _idsScheduleUpdateIdentities];
  v4 = *(*(v3 + 48) + 16);

  return v4();
}

void sub_1000C509C(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  CFArrayGetTypeID();
  v3 = CFDictionaryGetTypedValue();

  if (dword_1002F7148 <= 30 && (dword_1002F7148 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F73E4(v3);
  }

  v4 = *(a1 + 40);
  v5 = *(v4 + 32);
  *(v4 + 32) = v3;
  v6 = v3;

  [*(a1 + 40) _idsScheduleUpdateIdentities];
}

void *sub_1000C525C(void *result, uint64_t a2, uint64_t a3)
{
  if (result[4] == *(result[5] + 24))
  {
    v4 = result;
    if (dword_1002F7148 <= 30)
    {
      if (dword_1002F7148 != -1 || (result = _LogCategory_Initialize(), result))
      {
        sub_1001F7428(result, a2, a3);
      }
    }

    v5 = v4[5];

    return [v5 _idsUpdateIdentities];
  }

  return result;
}

uint64_t sub_1000C5954(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) invalidate];
  v4 = v6;
  if (v6)
  {
    if (dword_1002F7148 <= 90)
    {
      if (dword_1002F7148 != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
      {
        v3 = sub_1001F7544(v4);
        v4 = v6;
      }
    }
  }

  else
  {
    *(*(a1 + 40) + 12) = 1;
  }

  return _objc_release_x1(v3, v4);
}

void sub_1000C5A90(id a1)
{
  if (GestaltGetDeviceClass() != 7)
  {
    v1 = objc_alloc_init(AAFeatureOnboarding);
    v2 = qword_1002FA1E0;
    qword_1002FA1E0 = v1;

    _objc_release_x1(v1, v2);
  }
}

void sub_1000C5FF4(id a1)
{
  if (dword_1002F71B8 <= 30)
  {
    if (dword_1002F71B8 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001F79D8(a1, v1, v2);
    }
  }
}

void sub_1000C6040(id a1)
{
  if (dword_1002F71B8 <= 30)
  {
    if (dword_1002F71B8 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001F79F4(a1, v1, v2);
    }
  }
}

void sub_1000C60B0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F7A10(v4);
    }

    v3 = [*(a1 + 32) deviceManager];
    [v3 invalidate];

    [*(a1 + 32) setDeviceManager:0];
  }

  if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F7A50(a1);
  }
}

void sub_1000C66B4(uint64_t a1)
{
  v3 = [*(a1 + 32) identifier];
  v2 = [*(a1 + 40) deocOnboardedDeviceIdentifiers];
  [v2 removeObject:v3];
}

void sub_1000C67DC(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_1002F71B8 <= 30)
    {
      v4 = v2;
      if (dword_1002F71B8 != -1 || (v2 = _LogCategory_Initialize(), v3 = v4, v2))
      {
        v2 = sub_1001F7ACC(v3);
        v3 = v4;
      }
    }
  }

  _objc_release_x1(v2, v3);
}

void sub_1000C6998(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F7B4C(v3);
  }

  v4 = [*(a1 + 32) dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C6A74;
  block[3] = &unk_1002B6880;
  block[4] = *(a1 + 32);
  dispatch_async(v4, block);
}

void sub_1000C6A80(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (dword_1002F71B8 <= 30)
  {
    v4 = v2;
    if (dword_1002F71B8 != -1 || (v2 = _LogCategory_Initialize(), v3 = v4, v2))
    {
      v2 = sub_1001F7B8C(v3);
      v3 = v4;
    }
  }

  _objc_release_x1(v2, v3);
}

void sub_1000C6BC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) dispatchQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000C6CB8;
  v10[3] = &unk_1002B7B18;
  v11 = v5;
  v12 = *(a1 + 40);
  v13 = v6;
  v14 = *(a1 + 32);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void sub_1000C6CB8(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    if (dword_1002F71B8 > 90 || dword_1002F71B8 == -1 && !_LogCategory_Initialize())
    {
      return;
    }

    sub_1001F7BCC(a1, v2, &v6);
    v4 = v6;
  }

  else
  {
    if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F7C5C(a1);
    }

    v3 = *(a1 + 56);
    v5 = [*(a1 + 40) bluetoothAddress];
    [v3 _deocNotificationShownForDeviceWithBluetoothAddress:v5];
    v4 = v5;
  }
}

uint64_t sub_1000C71A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  v6 = *(a1 + 32);
  if (v6)
  {
    if (dword_1002F71B8 > 90)
    {
      goto LABEL_11;
    }

    v8 = v3;
    if (dword_1002F71B8 != -1)
    {
      goto LABEL_4;
    }

    v3 = _LogCategory_Initialize();
    v5 = v8;
    if (v3)
    {
      v6 = *(a1 + 32);
LABEL_4:
      v3 = LogPrintF(&dword_1002F71B8, "[AAFeatureOnboarding _saveFitEducationNotificationsShown:withCount:]_block_invoke", 90, "Fit education notification: failed to save fit education notification count for device %@ error %@", *(a1 + 40), v6);
LABEL_5:
      v5 = v8;
    }
  }

  else if (dword_1002F71B8 <= 30)
  {
    v8 = v3;
    if (dword_1002F71B8 != -1 || (v3 = _LogCategory_Initialize(), v5 = v8, v3))
    {
      v3 = sub_1001F7D50(v3, v5, v4);
      goto LABEL_5;
    }
  }

LABEL_11:

  return _objc_release_x1(v3, v5);
}

void sub_1000C7364(uint64_t a1)
{
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_100003998;
  v41 = sub_100003878;
  v42 = 0;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000C7938;
  v34[3] = &unk_1002B74D0;
  v36 = &v37;
  v35 = *(a1 + 48);
  v2 = objc_retainBlock(v34);
  if (*(a1 + 32))
  {
    v3 = +[AAPairedDeviceDaemon sharedAAPairedDeviceDaemon];
    v4 = [v3 deviceWithIdentifier:*(a1 + 32)];
    v5 = [*(a1 + 40) devicesMap];
    v6 = [v5 objectForKey:*(a1 + 32)];
    v7 = v6 == 0;

    if (v7)
    {
      if (dword_1002F71B8 <= 90 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1002F71B8, "[AAFeatureOnboarding showFitEducationNotificationForIdentifier:withErrorHandler:]_block_invoke_2", 90, "Device isn't connected, skip showing fit education notification");
      }

      v24 = NSErrorF(NSOSStatusErrorDomain, 4294960536, "Device isn't connected, skip showing fit education notification");
    }

    else
    {
      v8 = *(a1 + 40);
      v9 = [v4 bluetoothAddress];
      v10 = [v8 _fitEducationNotificationsShownForDevice:v9];

      if (v10 > [*(a1 + 40) fitEducationNotificationThreshold])
      {
        if (dword_1002F71B8 <= 90 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F71B8, "[AAFeatureOnboarding showFitEducationNotificationForIdentifier:withErrorHandler:]_block_invoke_2", 90, "Fit Education Notification threshold met");
        }

        v24 = NSErrorF(NSOSStatusErrorDomain, 4294960536, "Fit Education Notification threshold met");
      }

      else
      {
        if (v4)
        {
          v11 = [*(a1 + 40) fitEducationNotificationIdsForDeviceIds];
          v12 = [v11 count] == 0;

          if (!v12)
          {
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            v13 = [*(a1 + 40) fitEducationNotificationIdsForDeviceIds];
            v14 = [v13 allValues];

            v15 = [v14 countByEnumeratingWithState:&v30 objects:v43 count:16];
            if (v15)
            {
              v16 = *v31;
              do
              {
                for (i = 0; i != v15; i = i + 1)
                {
                  if (*v31 != v16)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v18 = *(*(&v30 + 1) + 8 * i);
                  v19 = [*(a1 + 40) unCenter];
                  [v19 dismissUserNotificationWithIdentifier:v18];
                }

                v15 = [v14 countByEnumeratingWithState:&v30 objects:v43 count:16];
              }

              while (v15);
            }

            v20 = [*(a1 + 40) fitEducationNotificationIdsForDeviceIds];
            [v20 removeAllObjects];
          }

          v21 = [*(a1 + 40) _notificationContentForFitEducationNotificationForDevice:v4];
          v22 = [*(a1 + 40) unCenter];
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_1000C7960;
          v25[3] = &unk_1002BAF08;
          v25[4] = *(a1 + 40);
          v29 = &v37;
          v26 = v4;
          v27 = v21;
          v28 = *(a1 + 48);
          [v22 deliverNotificationWithContent:v21 completion:v25];

          goto LABEL_15;
        }

        if (dword_1002F71B8 <= 90 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F71B8, "[AAFeatureOnboarding showFitEducationNotificationForIdentifier:withErrorHandler:]_block_invoke_2", 90, "No paired device found");
        }

        v24 = NSErrorF(NSOSStatusErrorDomain, 4294960561, "No paired device found");
      }
    }

    v21 = v38[5];
    v38[5] = v24;
LABEL_15:

    goto LABEL_16;
  }

  if (dword_1002F71B8 <= 90 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F71B8, "[AAFeatureOnboarding showFitEducationNotificationForIdentifier:withErrorHandler:]_block_invoke_2", 90, "No identifier found");
  }

  v23 = NSErrorF(NSOSStatusErrorDomain, 4294960591, "No identifier found");
  v3 = v38[5];
  v38[5] = v23;
LABEL_16:

  (v2[2])(v2);
  _Block_object_dispose(&v37, 8);
}

void sub_1000C78D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  (*(v32 + 16))(v32, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C7938(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

void sub_1000C7960(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C7A68;
  block[3] = &unk_1002BAEE0;
  v15 = v5;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v16 = v8;
  v17 = v9;
  v18 = *(a1 + 48);
  v19 = v6;
  v13 = *(a1 + 56);
  v10 = v13;
  v20 = v13;
  v11 = v6;
  v12 = v5;
  dispatch_async(v7, block);
}

uint64_t sub_1000C7A68(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (dword_1002F71B8 <= 90 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F7D6C(a1);
    }

    v2 = *(*(a1 + 80) + 8);
    v3 = *(a1 + 32);
    v4 = *(v2 + 40);
    *(v2 + 40) = v3;
  }

  else
  {
    if (dword_1002F71B8 <= 90 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F7DE8(a1);
    }

    v5 = [*(a1 + 48) unCenter];
    [v5 requestSiriAnnounceWithNotificationContent:*(a1 + 56)];

    v6 = *(a1 + 64);
    v7 = [*(a1 + 48) fitEducationNotificationIdsForDeviceIds];
    v8 = [*(a1 + 40) identifier];
    [v7 setObject:v6 forKeyedSubscript:v8];

    v9 = *(a1 + 48);
    v4 = [*(a1 + 40) bluetoothAddress];
    [v9 _incrementFitEducationNotificationsShownForIdentifier:v4];
  }

  result = *(a1 + 72);
  if (result)
  {
    v11 = *(result + 16);

    return v11();
  }

  return result;
}

void sub_1000C800C(uint64_t a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100003998;
  v19 = sub_100003878;
  v20 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000C8284;
  v12[3] = &unk_1002B74D0;
  v14 = &v15;
  v13 = *(a1 + 48);
  v2 = objc_retainBlock(v12);
  if (*(a1 + 32))
  {
    v3 = [*(a1 + 40) _notificationContentForAssetManagerDownload:?];
    v4 = [*(a1 + 40) unCenter];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000C82AC;
    v8[3] = &unk_1002BAF80;
    v7 = *(a1 + 32);
    v5 = v7.i64[0];
    v9 = vextq_s8(v7, v7, 8uLL);
    v11 = &v15;
    v10 = *(a1 + 48);
    [v4 deliverNotificationWithContent:v3 completion:v8];
  }

  else
  {
    if (dword_1002F71B8 <= 90 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F71B8, "[AAFeatureOnboarding showAssetManagerShowDownloadNotificationForDevice:withErrorHandler:]_block_invoke", 90, "No paired device found");
    }

    v6 = NSErrorF(NSOSStatusErrorDomain, 4294960561, "No paired device found");
    v3 = v16[5];
    v16[5] = v6;
  }

  (v2[2])(v2);
  _Block_object_dispose(&v15, 8);
}

void sub_1000C824C(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C8284(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

void sub_1000C82AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C8388;
  block[3] = &unk_1002BAF58;
  v9 = v3;
  v10 = *(a1 + 40);
  v7 = *(a1 + 48);
  v5 = v7;
  v11 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t sub_1000C8388(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (dword_1002F71B8 <= 90 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F7EA8(a1);
    }

    v2 = *(*(a1 + 56) + 8);
    v3 = *(a1 + 32);
    v4 = *(v2 + 40);
    *(v2 + 40) = v3;
    goto LABEL_6;
  }

  if (dword_1002F71B8 <= 90 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F7F24(a1);
    v4 = v7;
LABEL_6:
  }

  result = *(a1 + 48);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void sub_1000C8560(uint64_t a1)
{
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = sub_100003998;
  v13[4] = sub_100003878;
  v14 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000C8740;
  v10[3] = &unk_1002B74D0;
  v12 = v13;
  v11 = *(a1 + 48);
  v2 = objc_retainBlock(v10);
  v3 = [*(a1 + 32) _notificationContentForPTAppDownload:*(a1 + 40)];
  v4 = [*(a1 + 32) unCenter];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C8768;
  v6[3] = &unk_1002BAF80;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  v9 = v13;
  v8 = *(a1 + 48);
  [v4 deliverNotificationWithContent:v3 completion:v6];

  (v2[2])(v2);
  _Block_object_dispose(v13, 8);
}

uint64_t sub_1000C8740(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

void sub_1000C8768(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C8844;
  block[3] = &unk_1002BAF58;
  v9 = v3;
  v10 = *(a1 + 40);
  v7 = *(a1 + 48);
  v5 = v7;
  v11 = v7;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t sub_1000C8844(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (dword_1002F71B8 <= 90 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F7F7C(a1);
    }

    v2 = *(*(a1 + 56) + 8);
    v3 = *(a1 + 32);
    v4 = *(v2 + 40);
    *(v2 + 40) = v3;
    goto LABEL_6;
  }

  if (dword_1002F71B8 <= 90 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F7FF8(a1);
    v4 = v7;
LABEL_6:
  }

  result = *(a1 + 48);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void sub_1000C8F54(uint64_t a1)
{
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  v5 = [NSURL URLWithString:v4];
  v6 = v3[1];
  v8 = 0;
  [v2 openSensitiveURL:v5 withOptions:v6 error:&v8];
  v7 = v8;

  if (v7 && dword_1002F71B8 <= 90 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F80EC(v3);
  }
}

void sub_1000C9BE0(id *a1)
{
  v39 = [a1[4] actionIdentifier];
  if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F71B8, "[AAFeatureOnboarding receivedNotificationResponse:forRequest:]_block_invoke", 30, "Notification response[%@]: %@. For request: %@", v39, a1[4], a1[5]);
  }

  v2 = a1 + 5;
  v3 = [a1[5] content];
  v4 = [v3 categoryIdentifier];

  v5 = v4;
  v6 = v5;
  if (v5 == @"AADynamicEndOfChargeTrainingUserNotifications")
  {
    goto LABEL_8;
  }

  if (!v5)
  {
    goto LABEL_29;
  }

  v7 = [(__CFString *)v5 isEqual:@"AADynamicEndOfChargeTrainingUserNotifications"];

  if (v7)
  {
LABEL_8:
    v8 = [*v2 content];
    v9 = [v8 userInfo];
    v10 = [v9 objectForKeyedSubscript:@"btAddress"];

    if (!v10)
    {
      sub_1001F8130();
      goto LABEL_32;
    }

    [a1[6] _receivedDEOCNotificationAction:v39 forDeviceWithAddress:v10];
  }

  v11 = v6;
  v12 = v11;
  if (v11 != @"AAFitEducationNotificationUserNotifications")
  {
    if (v11)
    {
      v13 = [(__CFString *)v11 isEqual:@"AAFitEducationNotificationUserNotifications"];

      if (!v13)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

LABEL_29:

    v37 = v6;
    goto LABEL_30;
  }

LABEL_13:
  v14 = [*v2 content];
  v15 = [v14 userInfo];
  v16 = [v15 objectForKeyedSubscript:@"identifier"];

  if (!v16)
  {
    goto LABEL_40;
  }

  v17 = [*v2 content];
  v18 = [v17 userInfo];
  v19 = [v18 objectForKeyedSubscript:@"btAddress"];

  if (!v19)
  {
    goto LABEL_37;
  }

  [a1[6] _receivedFitEducationNotificationAction:v39 forDevice:v16 withAddress:v19];

LABEL_16:
  v20 = v12;
  v21 = v20;
  if (v20 == @"AAAssetManagerNotificationUserNotifications")
  {
    goto LABEL_19;
  }

  if (!v20)
  {
LABEL_30:

    v38 = v6;
    goto LABEL_31;
  }

  v22 = [(__CFString *)v20 isEqual:@"AAAssetManagerNotificationUserNotifications"];

  if (!v22)
  {
LABEL_22:
    v28 = v21;
    if (v28 == @"AAAssetManagerMissingTranslateAppNotifications")
    {
LABEL_25:
      v31 = [*v2 content];
      v32 = [v31 userInfo];
      v33 = [v32 objectForKeyedSubscript:@"identifier"];

      if (v33)
      {
        v34 = [*v2 content];
        v35 = [v34 userInfo];
        v36 = [v35 objectForKeyedSubscript:@"btAddress"];

        if (v36)
        {
          [a1[6] _receivedAssetManagerPTAppDownloadNotificationAction:v39 forDevice:v33 withAddress:v36];
        }

        else
        {
          sub_1001F8130();
        }

        goto LABEL_32;
      }

      goto LABEL_40;
    }

    v29 = v28;
    if (v28)
    {
      v30 = [(__CFString *)v28 isEqual:@"AAAssetManagerMissingTranslateAppNotifications"];

      if (!v30)
      {
        goto LABEL_32;
      }

      goto LABEL_25;
    }

LABEL_31:

    goto LABEL_32;
  }

LABEL_19:
  v23 = [*v2 content];
  v24 = [v23 userInfo];
  v16 = [v24 objectForKeyedSubscript:@"identifier"];

  if (v16)
  {
    v25 = [*v2 content];
    v26 = [v25 userInfo];
    v27 = [v26 objectForKeyedSubscript:@"btAddress"];

    if (v27)
    {
      [a1[6] _receivedAssetManagerNotificationAction:v39 forDevice:v16 withAddress:v27];

      goto LABEL_22;
    }

LABEL_37:
    sub_1001F8298(v16, a1 + 5);
    goto LABEL_32;
  }

LABEL_40:
  sub_1001F81E4();
LABEL_32:
}

id sub_1000CA3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F71B8 <= 30)
  {
    if (dword_1002F71B8 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001F83CC(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _loadPreferences];
}

void sub_1000CB17C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6 = v3;
    if (dword_1002F7228 <= 90 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F8480(v6);
    }

    [*(*(a1 + 32) + 48) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = 0;

    v3 = v6;
  }
}

void sub_1000CBB54(uint64_t a1, void *a2)
{
  if (a2)
  {
    v6 = a2;
    v3 = NSErrorF(NSOSStatusErrorDomain, 4294960591, "### Pipe initiator activate failed: %{error}.", v6);
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    [*(a1 + 32) pipeConnectionComplete:v6 andWxHeadset:*(a1 + 40) isSender:1];
  }
}

void sub_1000CBBE4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (dword_1002F7228 <= 90 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F7228, "[SRLEPipe pipeSendRouteRequestToSFDevice:andWxHeadset:newPipe:connectionResult:completion:]_block_invoke", 90, "### Send route request failed: peer %@, %{error}", *(a1 + 32), v8);
    }

    objc_storeStrong((*(a1 + 40) + 32), a4);
    v9 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
    [v9 _setOtherTipiDeviceBTAddress:0 andName:0 sourceVersion:0 withResult:*(*(a1 + 40) + 32)];

    [*(a1 + 40) pipeConnectionComplete:*(*(a1 + 40) + 32) andWxHeadset:*(a1 + 48) isSender:1];
  }

  else
  {
    if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F7228, "[SRLEPipe pipeSendRouteRequestToSFDevice:andWxHeadset:newPipe:connectionResult:completion:]_block_invoke", 30, "Send route request tipi table update completed: peer %@, response %##@", *(a1 + 32), v22);
    }

    mach_absolute_time();
    v10 = UpTicksToMilliseconds();
    v11 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
    [v11 _setPipeMessageStats:v10];

    LODWORD(v10) = *(*(*(a1 + 64) + 8) + 24);
    CFStringGetTypeID();
    if (v10 == 1)
    {
      v12 = CFDictionaryGetTypedValue();
      CFStringGetTypeID();
      v13 = CFDictionaryGetTypedValue();
      v14 = [v22 objectForKey:@"version"];
      if (v12 && v13)
      {
        v15 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
        v16 = [v15 _isOnDemandConnectInProgress];

        if (v16)
        {
          if (dword_1002F7228 <= 30)
          {
            if (dword_1002F7228 != -1 || (v17 = _LogCategory_Initialize(), v17))
            {
              sub_1001F851C(v17, v18, v19);
            }
          }
        }

        else
        {
          v20 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
          [v20 _setOtherTipiDeviceBTAddress:v12 andName:v13 sourceVersion:v14 withResult:0];

          [v14 doubleValue];
          if (v21 < 1.2 || !v14)
          {
            if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
            {
              sub_1001F84DC(v14);
            }

            [*(a1 + 40) pipeConnectionComplete:0 andWxHeadset:*(a1 + 48) isSender:1];
          }
        }
      }
    }

    else
    {
      v12 = CFDictionaryGetTypedValue();
      v13 = [v22 objectForKey:@"version"];
      if (dword_1002F7228 <= 30 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1002F7228, "[SRLEPipe pipeSendRouteRequestToSFDevice:andWxHeadset:newPipe:connectionResult:completion:]_block_invoke", 30, "Version %@ ACK %@, cleaning up pipes", v13, v12);
      }

      [*(a1 + 40) pipeConnectionComplete:0 andWxHeadset:*(a1 + 48) isSender:1];
      v14 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
      [v14 _sendAudioCategoryViaWx:*(a1 + 48)];
    }
  }
}

void sub_1000CCC28(_Unwind_Exception *a1)
{
  (*(v1 + 16))(v1);
  _Block_object_dispose((v2 - 176), 8);
  _Unwind_Resume(a1);
}

void *sub_1000CCC9C(void *result)
{
  v1 = result[8];
  v2 = *(*(v1 + 8) + 40);
  if (!v2)
  {
    return result;
  }

  v3 = result;
  if (dword_1002F7228 <= 90)
  {
    if (dword_1002F7228 == -1)
    {
      v4 = _LogCategory_Initialize();
      v1 = v3[8];
      if (!v4)
      {
        goto LABEL_7;
      }

      v2 = *(*(v1 + 8) + 40);
    }

    LogPrintF(&dword_1002F7228, "[SRLEPipe _pipeReceivedRouteRequest:options:responseHandler:]_block_invoke", 90, "### require_return_action! Route request failed: senderIDS %@, request %##@, error %{error}", v3[4], v3[5], v2);
    v1 = v3[8];
  }

LABEL_7:
  v5 = v3[6];
  v6 = v3[7];
  v7 = *(*(v1 + 8) + 40);

  return [v5 pipeRequestResponse:v6 error:v7];
}

void sub_1000CCD64(uint64_t a1)
{
  if (dword_1002F7228 <= 90 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F85B4(a1);
  }

  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = NSErrorF(NSOSStatusErrorDomain, 4294960574, "Request timed out");
  [v2 pipeRequestResponse:v3 error:v4];

  v5 = *(a1 + 64);
  v8 = [*(a1 + 72) btAddressData];
  v6 = CUPrintNSDataAddress();
  v7 = NSErrorF(NSOSStatusErrorDomain, 4294960574, "Request timed out");
  [v5 _updateOtherTipiDevice:v6 otherAddress:0 otherName:0 otherVersion:0 withResult:v7];
}

void sub_1000CCE84(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (v3)
  {
    if (dword_1002F7228 <= 90 && (dword_1002F7228 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F85F8(a1, v10);
    }

    v6 = *(a1 + 48);
    v7 = [*(a1 + 56) btAddressData];
    v8 = CUPrintNSDataAddress();
    v9 = NSErrorF(NSOSStatusErrorDomain, 4294960591, "### Route request update Tipi table failed: Wx %@, addresses %##@, %{error}");
    [v6 _updateOtherTipiDevice:v8 otherAddress:0 otherName:0 otherVersion:0 withResult:v9];

    [*(a1 + 64) pipeRequestResponse:*(a1 + 72) error:v10];
  }

  else if (dword_1002F7228 <= 30)
  {
    if (dword_1002F7228 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      sub_1001F8640(v3, v4, v5);
    }
  }
}

void sub_1000CD658(id a1)
{
  if (GestaltGetDeviceClass() != 7)
  {
    v1 = objc_alloc_init(AAUSBSupportedDeviceManagerDaemon);
    v2 = qword_1002FA1F0;
    qword_1002FA1F0 = v1;

    _objc_release_x1(v1, v2);
  }
}

id sub_1000CD7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F72A0 <= 30)
  {
    if (dword_1002F72A0 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001F8900(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _activate];
}

void sub_1000CDA3C(id a1)
{
  if (dword_1002F72A0 <= 30)
  {
    if (dword_1002F72A0 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001F895C(a1, v1, v2);
    }
  }
}

void sub_1000CDA88(id a1)
{
  if (dword_1002F72A0 <= 30)
  {
    if (dword_1002F72A0 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001F8978(a1, v1, v2);
    }
  }
}

void sub_1000CDAE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (dword_1002F72A0 <= 30)
  {
    if (dword_1002F72A0 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_1001F8994(v3);
      v3 = v5;
    }
  }

  [*(a1 + 32) _bluetoothDeviceLost:v3];
}

void sub_1000CDB70(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F89D4(v5);
    }

    [*(a1 + 32) invalidate];
    v3 = *(a1 + 40);
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;
  }

  if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F8A14(a1);
  }
}

void sub_1000CDE28(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F72A0, "[AAUSBSupportedDeviceManagerDaemon _connectToUSBDevice:isUserInitiate:]_block_invoke", 30, "Evaluator: connect complete USBDevice %@ result %@", *(a1 + 32), v3);
  }

  [*(a1 + 40) invalidate];
}

id sub_1000CE5E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1[6] bluetoothState];

  return [v1 _bluetoothStateChanged:v2];
}

uint64_t sub_1000CE624(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(a1 + 32) + 48) == *(a1 + 40) && dword_1002F72A0 <= 30)
  {
    v6 = v3;
    if (dword_1002F72A0 != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
    {
      v3 = sub_1001F8E40(v4);
      v4 = v6;
    }
  }

  return _objc_release_x1(v3, v4);
}

uint64_t sub_1000CE6B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(a1 + 32) + 48) == *(a1 + 40) && dword_1002F72A0 <= 30)
  {
    v6 = v3;
    if (dword_1002F72A0 != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
    {
      v3 = sub_1001F8E80(v4);
      v4 = v6;
    }
  }

  return _objc_release_x1(v3, v4);
}

uint64_t sub_1000CE74C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 48);
  if (v4 == *(a1 + 40))
  {
    v8 = v3;
    if (v3)
    {
      if (dword_1002F72A0 <= 90 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001F8EC0(v8);
      }

      [*(a1 + 40) invalidate];
      v5 = *(a1 + 32);
      v6 = *(v5 + 48);
      *(v5 + 48) = 0;

      v3 = v8;
    }

    else
    {
      v4 = [v4 bluetoothState];
      v3 = 0;
      *(*(a1 + 32) + 24) = v4;
    }
  }

  return _objc_release_x1(v4, v3);
}

id sub_1000CE9B8(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(a1 + 40);
  if (result == *(v3 + 56))
  {
    if ((*(v3 + 32) & 1) == 0)
    {
      if ([result firstUnlocked])
      {
        v4 = *(a1 + 40);
        if (!v4[5])
        {
          [v4 _startEffectiveUnlockedAfterBootTimer:2];
        }
      }
    }

    result = [*(a1 + 32) screenActive];
    if (*(*(a1 + 40) + 88) != result)
    {
      result = [*(a1 + 32) screenActive];
      *(*(a1 + 40) + 88) = result;
    }
  }

  return result;
}

void sub_1000CEBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(a1 + 32) + 32) = 1;
  v3 = *(*(a1 + 32) + 40);
  if (v3)
  {
    v4 = a1;
    v5 = v3;
    dispatch_source_cancel(v5);
    v6 = *(v4 + 32);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }

  if (dword_1002F72A0 <= 30)
  {
    if (dword_1002F72A0 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001F8F94(a1, a2, a3);
    }
  }
}

void sub_1000CECE8(uint64_t a1)
{
  if (*(*(a1 + 32) + 64) == 1)
  {
    if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F8FB0(a1);
    }

    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_1000039B8;
    v24 = sub_100003888;
    v25 = 0;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000CF03C;
    v19[3] = &unk_1002B6C00;
    v19[4] = &v20;
    v2 = objc_retainBlock(v19);
    v3 = *(a1 + 40);
    if (!v3)
    {
      v5 = v21[5];
      v21[5] = @"USBDevice is null";
      goto LABEL_14;
    }

    v4 = [v3 btAddress];
    v5 = v4;
    if (v4)
    {
      if (sub_1001F8818(v4))
      {
        if (![*(a1 + 32) _isWxPaired:v5])
        {
          v6 = *(*(a1 + 32) + 96);
          if (!v6)
          {
            v7 = objc_alloc_init(NSMutableDictionary);
            v8 = *(a1 + 32);
            v9 = *(v8 + 96);
            *(v8 + 96) = v7;

            v6 = *(*(a1 + 32) + 96);
          }

          v10 = [v6 objectForKeyedSubscript:v5];
          if (v10)
          {
            v18 = v21[5];
            v21[5] = @"Skip, already found the USB device";
          }

          else
          {
            v10 = objc_alloc_init(AAUSBDeivce);
            [(AAUSBDeivce *)v10 setBtAddress:v5];
            v11 = [*(a1 + 40) color];
            [(AAUSBDeivce *)v10 setColor:v11];

            [(AAUSBDeivce *)v10 setIsUSBPluggedIn:1];
            v12 = [*(a1 + 40) usbModel];
            [(AAUSBDeivce *)v10 setModel:v12];

            v13 = [*(a1 + 40) usbName];
            [(AAUSBDeivce *)v10 setName:v13];

            v14 = [*(a1 + 40) fwVersion];
            [(AAUSBDeivce *)v10 setFwVersion:v14];

            v15 = [*(a1 + 40) pid];
            [(AAUSBDeivce *)v10 setPid:v15];

            [*(*(a1 + 32) + 96) setObject:v10 forKeyedSubscript:v5];
            [*(a1 + 32) _logCurrentListOfUSBDevice];
            [*(a1 + 32) _startPairingUI:v10 repairMode:0];
          }

          goto LABEL_13;
        }

        v16 = v21;
        v10 = v21[5];
        v17 = @"Wx paired already";
      }

      else
      {
        v16 = v21;
        v10 = v21[5];
        v17 = @"Wx address is invalid";
      }
    }

    else
    {
      v16 = v21;
      v10 = v21[5];
      v17 = @"Wx address is null";
    }

    v16[5] = v17;
LABEL_13:

LABEL_14:
    (v2[2])(v2);

    _Block_object_dispose(&v20, 8);
  }
}

void sub_1000CF004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CF03C(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 40);
  if (v1 && dword_1002F72A0 <= 90)
  {
    if (dword_1002F72A0 != -1)
    {
      return LogPrintF(&dword_1002F72A0, "[AAUSBSupportedDeviceManagerDaemon usbDeviceFound:]_block_invoke", 90, "USBDevice: %@", v1);
    }

    v2 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(*(*(v2 + 32) + 8) + 40);
      return LogPrintF(&dword_1002F72A0, "[AAUSBSupportedDeviceManagerDaemon usbDeviceFound:]_block_invoke", 90, "USBDevice: %@", v1);
    }
  }

  return result;
}

void sub_1000CF43C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000CF45C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _invokeAnyProxCardUserActionCompletion:0 result:3];

  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = 0;
}

void sub_1000CF598(uint64_t a1)
{
  if (*(*(a1 + 32) + 64) == 1)
  {
    if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F906C(a1);
    }

    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_1000039B8;
    v20 = sub_100003888;
    v21 = 0;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000CF7C0;
    v15[3] = &unk_1002B6C00;
    v15[4] = &v16;
    v2 = objc_retainBlock(v15);
    v3 = *(a1 + 40);
    if (v3)
    {
      if (sub_1001F8818(v3))
      {
        v4 = *(*(a1 + 32) + 96);
        if (v4)
        {
          [v4 setObject:0 forKeyedSubscript:*(a1 + 40)];
          v5 = *(*(a1 + 32) + 104);
          if (v5)
          {
            v6 = v5;
            dispatch_source_cancel(v6);
            v7 = *(a1 + 32);
            v8 = *(v7 + 104);
            *(v7 + 104) = 0;
          }

          v9 = *(*(a1 + 32) + 112);
          if (v9)
          {
            v10 = v9;
            dispatch_source_cancel(v10);
            v11 = *(a1 + 32);
            v12 = *(v11 + 112);
            *(v11 + 112) = 0;
          }

          [*(a1 + 32) _dismissAnyPairingProxCard];
          [*(a1 + 32) _logCurrentListOfUSBDevice];
          goto LABEL_13;
        }

        v13 = @"Nothing is pairing at this moment";
      }

      else
      {
        v13 = @"Wx address is invalid";
      }
    }

    else
    {
      v13 = @"Wx address is null";
    }

    v14 = v17[5];
    v17[5] = v13;

LABEL_13:
    (v2[2])(v2);

    _Block_object_dispose(&v16, 8);
  }
}

void sub_1000CF78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CF7C0(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 40);
  if (v1 && dword_1002F72A0 <= 90)
  {
    if (dword_1002F72A0 != -1)
    {
      return LogPrintF(&dword_1002F72A0, "[AAUSBSupportedDeviceManagerDaemon usbDeviceLost:]_block_invoke_2", 90, "USBDevice: %@", v1);
    }

    v2 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(*(*(v2 + 32) + 8) + 40);
      return LogPrintF(&dword_1002F72A0, "[AAUSBSupportedDeviceManagerDaemon usbDeviceLost:]_block_invoke_2", 90, "USBDevice: %@", v1);
    }
  }

  return result;
}

void sub_1000CF904(uint64_t a1)
{
  if (*(*(a1 + 32) + 64) == 1)
  {
    if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F90B0();
    }

    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_1000039B8;
    v16 = sub_100003888;
    v17 = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000CFB88;
    v11[3] = &unk_1002B6C00;
    v11[4] = &v12;
    v2 = objc_retainBlock(v11);
    if (*(a1 + 40))
    {
      v3 = [*(*(a1 + 32) + 96) objectForKeyedSubscript:?];
      v4 = v3;
      if (v3)
      {
        v5 = [v3 airplaneMode];
        v6 = *(a1 + 48);
        if (v6 != v5 && (v6 & 1) == 0)
        {
          if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
          {
            v7 = [v4 isPairingInProgress];
            v8 = "no";
            if (v7)
            {
              v8 = "yes";
            }

            LogPrintF(&dword_1002F72A0, "[AAUSBSupportedDeviceManagerDaemon usbDeviceAirplaneModeChanged:address:]_block_invoke", 30, "UsbDeviceAirplaneModeChanged isPairingInProgress %s", v8);
          }

          if ([v4 isPairingInProgress])
          {
            v9 = +[AudioDeviceManager sharedAudioDeviceManager];
            [v9 sendMsg:31 forUID:*(a1 + 40) withArgs:0];
          }
        }

        [v4 setAirplaneMode:*(a1 + 48)];
      }

      else
      {
        v10 = v13[5];
        v13[5] = @"no USB device found";
      }
    }

    else
    {
      v4 = v13[5];
      v13[5] = @"wx address is null";
    }

    (v2[2])(v2);
    _Block_object_dispose(&v12, 8);
  }
}

void sub_1000CFB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CFB88(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 40);
  if (v1 && dword_1002F72A0 <= 90)
  {
    if (dword_1002F72A0 != -1)
    {
      return LogPrintF(&dword_1002F72A0, "[AAUSBSupportedDeviceManagerDaemon usbDeviceAirplaneModeChanged:address:]_block_invoke_2", 90, "UsbDeviceAirplaneModeChanged: Skip, %@", v1);
    }

    v2 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(*(*(v2 + 32) + 8) + 40);
      return LogPrintF(&dword_1002F72A0, "[AAUSBSupportedDeviceManagerDaemon usbDeviceAirplaneModeChanged:address:]_block_invoke_2", 90, "UsbDeviceAirplaneModeChanged: Skip, %@", v1);
    }
  }

  return result;
}

void sub_1000CFCCC(uint64_t a1)
{
  if (*(*(a1 + 32) + 64) == 1)
  {
    if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F9104();
    }

    if (*(a1 + 48) == 1)
    {
      v2 = *(*(a1 + 32) + 104);
      if (v2)
      {
        v3 = v2;
        dispatch_source_cancel(v3);
        v4 = *(a1 + 32);
        v5 = *(v4 + 104);
        *(v4 + 104) = 0;
      }
    }

    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_1000039B8;
    v16 = sub_100003888;
    v17 = 0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000CFEEC;
    v11[3] = &unk_1002B6C00;
    v11[4] = &v12;
    v6 = objc_retainBlock(v11);
    if (*(a1 + 40))
    {
      if (*(a1 + 48) != 1)
      {
LABEL_15:
        (v6[2])(v6);

        _Block_object_dispose(&v12, 8);
        return;
      }

      v7 = [*(*(a1 + 32) + 96) objectForKeyedSubscript:?];
      v8 = v7;
      if (v7)
      {
        if ([v7 isPairingInProgress])
        {
          v9 = *(a1 + 32);
          if (!v9[14])
          {
            [v9 _startPairingCompletionTimer:v8];
          }
        }
      }

      else
      {
        v10 = v13[5];
        v13[5] = @"No USB device found";
      }
    }

    else
    {
      v8 = v13[5];
      v13[5] = @"Wx address is null";
    }

    goto LABEL_15;
  }
}

void sub_1000CFEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CFEEC(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 40);
  if (v1 && dword_1002F72A0 <= 90)
  {
    if (dword_1002F72A0 != -1)
    {
      return LogPrintF(&dword_1002F72A0, "[AAUSBSupportedDeviceManagerDaemon usbDevicePairingModeChanged:address:]_block_invoke_2", 90, "USBDevice: %@", v1);
    }

    v2 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(*(*(v2 + 32) + 8) + 40);
      return LogPrintF(&dword_1002F72A0, "[AAUSBSupportedDeviceManagerDaemon usbDevicePairingModeChanged:address:]_block_invoke_2", 90, "USBDevice: %@", v1);
    }
  }

  return result;
}

void sub_1000D01A8(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(*(a1 + 32) + 64) == 1)
  {
    if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F9158(a1);
    }

    v30 = 0;
    v31[0] = &v30;
    v31[1] = 0x3032000000;
    v31[2] = sub_1000039B8;
    v31[3] = sub_100003888;
    v32 = 0;
    v24 = _NSConcreteStackBlock;
    v25 = 3221225472;
    v26 = sub_1000D05E0;
    v27 = &unk_1002B74D0;
    v29 = &v30;
    v28 = *(a1 + 48);
    v3 = objc_retainBlock(&v24);
    if (!*(a1 + 40))
    {
      v4 = *(v31[0] + 40);
      *(v31[0] + 40) = @"Wx address is null";
      goto LABEL_33;
    }

    v4 = [*(*v1 + 12) objectForKeyedSubscript:?];
    if (v4)
    {
      v5 = *(a1 + 56);
      if (v5 == 4)
      {
        if (([*(a1 + 32) _isWxPaired:*(a1 + 40)] & 1) == 0)
        {
          if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1002F72A0, "[AAUSBSupportedDeviceManagerDaemon proxCardUserActionOnHeadphone:btAddress:withAction:completion:]_block_invoke", 30, "Pairing failed: Allow USB audio");
          }

          v21 = +[AudioDeviceManager sharedAudioDeviceManager];
          [v21 usbDeviceEnableAirPlaneMode:*(a1 + 40)];

          v22 = +[AudioDeviceManager sharedAudioDeviceManager];
          [v22 usbDeviceUnHideDevice:*(a1 + 40)];
        }
      }

      else if (v5 == 1)
      {
        if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
        {
          v6 = *(a1 + 40);
          v7 = [v4 airplaneMode];
          v8 = "no";
          if (v7)
          {
            v8 = "yes";
          }

          LogPrintF(&dword_1002F72A0, "[AAUSBSupportedDeviceManagerDaemon proxCardUserActionOnHeadphone:btAddress:withAction:completion:]_block_invoke", 30, "Prox Card connect USBDevice %@ airplaneMode %s", v6, v8, v24, v25, v26, v27);
        }

        if ([v4 airplaneMode])
        {
          v9 = +[AudioDeviceManager sharedAudioDeviceManager];
          [v9 usbDeviceDisableAirPlaneMode:*(a1 + 40)];
        }

        else
        {
          v9 = +[AudioDeviceManager sharedAudioDeviceManager];
          [v9 sendMsg:31 forUID:*(a1 + 40) withArgs:0];
        }

        v10 = +[AudioDeviceManager sharedAudioDeviceManager];
        [v10 usbDeviceHideDevice:*(a1 + 40)];

        [v4 setIsPairingInProgress:1];
        [v4 setPairinUIClickTick:mach_absolute_time()];
        v11 = *(*v1 + 13);
        if (v11)
        {
          v12 = v11;
          dispatch_source_cancel(v12);
          v13 = *(*v1 + 13);
          *(*v1 + 13) = 0;
        }

        v14 = *(*v1 + 14);
        if (v14)
        {
          v15 = v14;
          dispatch_source_cancel(v15);
          v16 = *(*v1 + 14);
          *(*v1 + 14) = 0;
        }

        [*v1 _invokeAnyProxCardUserActionCompletion:0 result:3];
        [*v1 _startPairingModeTimer:v4];
        v17 = *(a1 + 48);
        if (!v17)
        {
          goto LABEL_33;
        }

        v18 = objc_retainBlock(v17);
        v19 = 72;
        goto LABEL_28;
      }

      [v4 setIsPairingInProgress:0];
      v23 = *(a1 + 48);
      if (v23)
      {
        (*(v23 + 16))(v23, 0, 0);
      }

      goto LABEL_33;
    }

    v1 = v31;
    v18 = @"No AAUSBDevice found";
    v19 = 40;
LABEL_28:
    v20 = *(*v1 + v19);
    *(*v1 + v19) = v18;

LABEL_33:
    (v3[2])(v3);

    _Block_object_dispose(&v30, 8);
  }
}

void sub_1000D05AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000D05E0(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 40);
  if (!v1)
  {
    return;
  }

  if (dword_1002F72A0 <= 90)
  {
    if (dword_1002F72A0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      v1 = *(*(*(a1 + 40) + 8) + 40);
    }

    LogPrintF(&dword_1002F72A0, "[AAUSBSupportedDeviceManagerDaemon proxCardUserActionOnHeadphone:btAddress:withAction:completion:]_block_invoke_2", 90, "USBDevice: %@", v1);
  }

LABEL_6:
  v3 = [NSError alloc];
  v4 = off_1002F7298;
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v9 = @"Error reason";
  v10 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v7 = [v3 initWithDomain:v4 code:1 userInfo:v6];

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, 0, v7);
  }
}

id sub_1000D088C(uint64_t a1)
{
  if (dword_1002F72A0 <= 90 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F9204(a1);
  }

  [*(a1 + 40) setIsPairingInProgress:0];
  v2 = *(*(a1 + 48) + 104);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 48);
    v5 = *(v4 + 104);
    *(v4 + 104) = 0;
  }

  v6 = [*(a1 + 48) _isWxPaired:*(a1 + 32)];
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  v9 = *(a1 + 48);

  return [v9 _invokeAnyProxCardUserActionCompletion:v7 result:v8];
}

id sub_1000D0AA0(uint64_t a1)
{
  if (dword_1002F72A0 <= 90 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F928C(a1);
  }

  [*(a1 + 40) setIsPairingInProgress:0];
  v2 = *(*(a1 + 48) + 112);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 48);
    v5 = *(v4 + 112);
    *(v4 + 112) = 0;
  }

  v6 = [*(a1 + 48) _isWxPaired:*(a1 + 32)];
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  v9 = *(a1 + 48);

  return [v9 _invokeAnyProxCardUserActionCompletion:v7 result:v8];
}

void sub_1000D0C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000D0C1C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F92D0(a1, v5);
  }

  ++*(*(*(a1 + 32) + 8) + 24);
}

void sub_1000D14E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D1518(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (v1 && dword_1002F7310 <= 10)
  {
    v2 = result;
    if (dword_1002F7310 != -1)
    {
      return LogPrintF_safe(&dword_1002F7310, "[AAXPCEventSubscription needsToFireEventForDeviceFound:]_block_invoke", 10, "Should not fire event for %@: %@", *(v2 + 32), v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(*(*(v2 + 40) + 8) + 40);
      return LogPrintF_safe(&dword_1002F7310, "[AAXPCEventSubscription needsToFireEventForDeviceFound:]_block_invoke", 10, "Should not fire event for %@: %@", *(v2 + 32), v1);
    }
  }

  return result;
}

uint64_t sub_1000D175C(uint64_t a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  if (string_ptr)
  {
    v5 = *(a1 + 32);
    v6 = [NSString stringWithUTF8String:string_ptr];
    v7 = [v5 compare:v6 options:1];

    if (!v7)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return 1;
}

void sub_1000D1834(id a1)
{
  if (GestaltGetDeviceClass() != 7)
  {
    v1 = objc_alloc_init(AAXPCEventPublisherDaemon);
    v2 = qword_1002FA200;
    qword_1002FA200 = v1;

    _objc_release_x1(v1, v2);
  }
}

void sub_1000D1C14(id a1, int a2)
{
  if (dword_1002F7310 <= 90 && (dword_1002F7310 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F99EC(a2);
  }
}

void sub_1000D1FE8(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    if (dword_1002F7310 <= 90 && (dword_1002F7310 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F9B00(v5);
    }

    [*(*(a1 + 32) + 16) invalidate];
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;
  }

  if (dword_1002F7310 <= 30 && (dword_1002F7310 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F9B5C(a1);
  }
}

void sub_1000D216C(id a1)
{
  if (GestaltGetDeviceClass() != 7)
  {
    v1 = objc_alloc_init(AANearbyDeviceManagerDaemon);
    v2 = qword_1002FA210;
    qword_1002FA210 = v1;

    _objc_release_x1(v1, v2);
  }
}

void sub_1000D2430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  obj = *(v3 + 40);
  NSAppendPrintF(&obj, "    %@\n", a3);
  objc_storeStrong((v3 + 40), obj);
}

void sub_1000D2750(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  v3 = v2;
  if (dword_1002F7380 <= 5)
  {
    v4 = v2;
    if (dword_1002F7380 != -1 || (v2 = _LogCategory_Initialize(), v3 = v4, v2))
    {
      sub_1001FA038(v3);
      v3 = v4;
    }
  }

  _objc_release_x1(v2, v3);
}

void sub_1000D2B80(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) cbDiscovery];

  if (v2 == v3 && dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FA108(v1);
  }
}

void sub_1000D2C00(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) cbDiscovery];

  if (v2 == v3)
  {
    if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FA168(v1);
    }

    v4 = *v1;

    [v4 setCbDiscovery:0];
  }
}

uint64_t sub_1000D2CA8(uint64_t a1, void *a2)
{
  v11 = a2;
  v4 = *(a1 + 40);
  v3 = (a1 + 40);
  v5 = *(v3 - 1);
  v6 = [v4 cbDiscovery];

  v8 = v11;
  if (v5 == v6)
  {
    if (v11)
    {
      if (dword_1002F7380 <= 90 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FA1C8(v11);
      }

      v9 = [*v3 cbDiscovery];
      [v9 invalidate];

      v7 = [*v3 setCbDiscovery:0];
      goto LABEL_7;
    }

    if (dword_1002F7380 <= 30)
    {
      if (dword_1002F7380 != -1 || (v7 = _LogCategory_Initialize(), v8 = 0, v7))
      {
        sub_1001FA208(v3);
LABEL_7:
        v8 = v11;
      }
    }
  }

  return _objc_release_x1(v7, v8);
}

void sub_1000D3D90(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v5)
  {
    if (dword_1002F7380 <= 90 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FA440(a1, v5);
    }

LABEL_20:
    if (*(a1 + 48) == 1)
    {
      [*(a1 + 40) _nearbyDeviceUpdated:*(a1 + 32)];
    }

    goto LABEL_22;
  }

  if (!v10 || (v6 = [v10 count], v7 = v10, !v6))
  {
    if (dword_1002F7380 <= 90 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FA598(a1);
    }

    goto LABEL_20;
  }

  if (dword_1002F7380 <= 10)
  {
    if (dword_1002F7380 != -1 || (v8 = _LogCategory_Initialize(), v7 = v10, v8))
    {
      sub_1001FA4B0(v7, a1);
      v7 = v10;
    }
  }

  v9 = [v7 firstObject];
  if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FA528(a1, v9);
  }

  if ([*(a1 + 32) updateWithPrimaryDevice:v9])
  {
    [*(a1 + 40) _nearbyDeviceUpdated:*(a1 + 32)];
  }

LABEL_22:
}

void sub_1000D4164(uint64_t a1)
{
  v2 = [*(a1 + 32) subscribers];

  if (!v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    [*(a1 + 32) setSubscribers:v3];
  }

  v4 = [*(a1 + 32) subscribers];
  v5 = (a1 + 40);
  v6 = [v4 containsObject:*(a1 + 40)];

  if ((v6 & 1) == 0)
  {
    v7 = [*(a1 + 32) subscribers];
    [v7 addObject:*(a1 + 40)];

    if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FA650((a1 + 40));
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [*(a1 + 32) nearbyDevices];
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*v5 nearbyDeviceUpdated:*(*(&v13 + 1) + 8 * i)];
        }

        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

void sub_1000D43C4(uint64_t a1)
{
  v2 = [*(a1 + 32) subscribers];

  if (v2)
  {
    v3 = [*(a1 + 32) subscribers];
    v4 = [v3 containsObject:*(a1 + 40)];

    if (v4)
    {
      v5 = [*(a1 + 32) subscribers];
      [v5 removeObject:*(a1 + 40)];

      if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FA6B0((a1 + 40));
      }
    }
  }
}

void sub_1000D45B8(uint64_t a1)
{
  v2 = (a1 + 32);
  v5 = [*(a1 + 32) identifier];
  v3 = [v2[1] deviceWithIdentifier:?];
  v4 = v3;
  if (v3)
  {
    if ([v3 updateWithPairedDevice:*v2])
    {
      if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FA778(v4);
      }

      [*(a1 + 40) _nearbyDeviceUpdated:v4];
    }

    else
    {
      sub_1001FA710(dword_1002F7380);
    }
  }

  else
  {
    sub_1001FA7B8(v2);
  }
}

void sub_1000D4870(id a1)
{
  v1 = objc_alloc_init(AASettingsTelemetry);
  v2 = qword_1002FA220;
  qword_1002FA220 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000D4F80(id a1)
{
  v1 = objc_alloc_init(AAUserNotificationCenter);
  v2 = qword_1002FA230;
  qword_1002FA230 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000D5284(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  (*(*(a1 + 48) + 16))();
  if (!a2)
  {
    v6 = [*(a1 + 32) dispatchQueue];
    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v6);

    v8 = [*(a1 + 32) notificationTimeoutMap];
    [v8 setObject:v7 forKeyedSubscript:v5];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000D53D0;
    v10[3] = &unk_1002B7B18;
    v9 = *(a1 + 32);
    v10[4] = v7;
    v10[5] = v9;
    v11 = v5;
    v12 = *(a1 + 40);
    dispatch_source_set_event_handler(v7, v10);
    CUDispatchTimerSet();
    dispatch_activate(v7);
  }
}

void sub_1000D53D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) notificationTimeoutMap];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 48)];

  if (v2 == v4)
  {
    if (dword_1002F7460 <= 30 && (dword_1002F7460 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FA9B0((a1 + 48));
    }

    v5 = [*(a1 + 40) notificationTimeoutMap];
    v6 = [v5 objectForKeyedSubscript:*(a1 + 48)];

    v7 = [*(a1 + 40) notificationTimeoutMap];
    [v7 setObject:0 forKeyedSubscript:*(a1 + 48)];

    v8 = v6;
    v9 = v8;
    if (v8)
    {
      dispatch_source_cancel(v8);
    }

    [*(a1 + 40) dismissUserNotificationWithIdentifier:*(a1 + 48)];
    v12 = [*(a1 + 56) categoryIdentifier];
    v10 = [*(a1 + 40) categoryDelegates];
    v11 = [v10 objectForKeyedSubscript:v12];

    if (v11)
    {
      if (dword_1002F7460 <= 10 && (dword_1002F7460 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FA9F4((a1 + 48));
      }

      if (objc_opt_respondsToSelector())
      {
        [v11 timeoutForNotificationWithContent:*(a1 + 56)];
      }
    }
  }
}

void sub_1000D5670(uint64_t a1)
{
  v2 = +[NSUUID UUID];
  v3 = [v2 UUIDString];

  v4 = [UNNotificationRequest requestWithIdentifier:v3 content:*(a1 + 32) trigger:0];
  v5 = [*(a1 + 40) unCenter];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D5770;
  v7[3] = &unk_1002B95C8;
  v6 = *(a1 + 48);
  v7[4] = *(a1 + 40);
  v7[5] = v5;
  v7[6] = v3;
  v8 = v6;
  [v5 addNotificationRequest:v4 withCompletionHandler:v7];
}

void sub_1000D5770(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D5844;
  block[3] = &unk_1002BB428;
  v8 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v5 = *(a1 + 56);
  v9 = *(a1 + 48);
  v10 = v3;
  v11 = v5;
  v6 = v3;
  dispatch_async(v4, block);
}

void sub_1000D5844(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) unCenter];

  if (v2 == v3)
  {
    if (dword_1002F7460 <= 30 && (dword_1002F7460 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FAA38(a1);
    }

    v4 = *(a1 + 64);
    if (v4)
    {
      v5 = *(v4 + 16);

      v5();
    }
  }
}

void sub_1000D5B9C(uint64_t a1)
{
  v2 = [*(a1 + 32) unCenter];
  if (!v2)
  {
    (*(*(a1 + 48) + 16))();
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000D5C70;
  v4[3] = &unk_1002BB450;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  [v2 getDeliveredNotificationsWithCompletionHandler:v4];
}

void sub_1000D5C70(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D5D4C;
  block[3] = &unk_1002B6BB0;
  v7 = v3;
  v8 = a1[5];
  v9 = a1[6];
  v5 = v3;
  dispatch_async(v4, block);
}

void sub_1000D5D4C(uint64_t a1)
{
  v16 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v17 + 1) + 8 * i) request];
        v8 = [v7 identifier];
        if (v8)
        {
          v9 = [v7 content];
          v10 = [v9 categoryIdentifier];

          v11 = *(a1 + 40);
          v12 = v10;
          v13 = v11;
          v14 = v13;
          if (v12 != v13)
          {
            if ((v12 != 0) != (v13 == 0))
            {
              v15 = [v12 isEqual:v13];

              if (!v15)
              {
                goto LABEL_14;
              }

LABEL_12:
              [v16 addObject:v8];
            }

            else
            {
            }

LABEL_14:

            goto LABEL_15;
          }

          goto LABEL_12;
        }

LABEL_15:
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1000D65B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  (*(v20 + 16))(v20, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1000D65FC(void *result)
{
  v1 = *(*(result[5] + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_1002F7460 <= 90)
  {
    if (dword_1002F7460 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v1 = *(*(v2[5] + 8) + 40);
    }

    LogPrintF(&dword_1002F7460, "[AAUserNotificationCenter requestSiriAnnounceWithNotificationContent:]_block_invoke", 90, "### Siri Announce request failed: %{error}", v1);
  }

LABEL_7:
  v3 = v2[4];

  return [v3 _deactivateAudioSession];
}

id sub_1000D66B0(uint64_t a1, uint64_t a2)
{
  if (dword_1002F7460 <= 30)
  {
    v3 = a2;
    if (dword_1002F7460 != -1 || _LogCategory_Initialize())
    {
      sub_1001FABA4(v3);
    }
  }

  v4 = *(a1 + 32);

  return [v4 _deactivateAudioSession];
}

void sub_1000D67F8(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 identifier];
        if (dword_1002F7460 <= 10 && (dword_1002F7460 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F7460, "[AAUserNotificationCenter registerNotificationCategories:responseDelegate:]_block_invoke", 10, "Registering notification category: %@ with responseDelegate %@", v8, *(a1 + 40), v14);
        }

        v9 = [*(a1 + 48) categoryMap];
        v10 = [v9 objectForKeyedSubscript:v8];

        if (v10)
        {

          return;
        }

        v11 = [*(a1 + 48) categoryMap];
        [v11 setObject:v7 forKeyedSubscript:v8];

        v12 = *(a1 + 40);
        if (v12)
        {
          v13 = [*(a1 + 48) categoryDelegates];
          [v13 setObject:v12 forKeyedSubscript:v8];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  [*(a1 + 48) _userNotificationCenterSetCategories];
}

id sub_1000D6A9C(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = [*(a1 + 40) categoryMap];
        v9 = [v8 objectForKeyedSubscript:v7];

        if (v9)
        {
          v10 = [*(a1 + 40) categoryMap];
          [v10 setObject:0 forKeyedSubscript:v7];

          v11 = [*(a1 + 40) categoryDelegates];
          [v11 setObject:0 forKeyedSubscript:v7];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  return [*(a1 + 40) _userNotificationCenterSetCategories];
}

void sub_1000D6F80(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = (a1 + 40);
  v5 = [*(a1 + 40) unCenter];

  if (v3 == v5)
  {
    v7 = [*(a1 + 48) notification];
    v13 = [v7 request];

    v8 = [v13 content];
    v9 = [v8 categoryIdentifier];

    v10 = [*(a1 + 40) categoryDelegates];
    v11 = [v10 objectForKeyedSubscript:v9];

    if (v11)
    {
      [v11 receivedNotificationResponse:*(a1 + 48) forRequest:v13];
      v12 = *(a1 + 56);
      if (v12)
      {
        (*(v12 + 16))();
      }
    }

    else
    {
      sub_1001FAD40(v9);
    }
  }

  else
  {
    if (dword_1002F7460 <= 90 && (dword_1002F7460 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FACD0(v2, v4);
    }

    v6 = *(*(a1 + 56) + 16);

    v6();
  }
}

uint64_t sub_1000D71E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ccaes_ecb_decrypt_mode();

  return ccecb_one_shot();
}

uint64_t sub_1000D723C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ccaes_ecb_encrypt_mode();

  return ccecb_one_shot();
}

uint64_t sub_1000DACB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return CUXPCDecodeUInt64RangedEx();
}

void sub_1000DAE78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000DAEA0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleEvent:v3];
}

void sub_1000DB760(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dispatchQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000DB818;
  v6[3] = &unk_1002B6D18;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_1000DB940(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  if (v1)
  {
    v5 = v1;
    dispatch_source_cancel(v5);
    v3 = *(a1 + 32);
    v4 = *(v3 + 48);
    *(v3 + 48) = 0;
  }
}

void sub_1000DC21C(id a1)
{
  if (GestaltGetDeviceClass() != 7)
  {
    v1 = objc_alloc_init(AABatteryMonitorDaemon);
    v2 = qword_1002FA240;
    qword_1002FA240 = v1;

    _objc_release_x1(v1, v2);
  }
}

void sub_1000DC92C(id a1)
{
  if (dword_1002F7670 <= 30)
  {
    if (dword_1002F7670 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001FC010(a1, v1, v2);
    }
  }
}

void sub_1000DC978(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) aaController];

  if (v6 == v7)
  {
    [*(a1 + 40) _accessoryBatteryInfoMessageReceivedWithData:v5 identifier:v8];
  }
}

uint64_t sub_1000DCA00(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) aaController];

  v7 = v9;
  if (v3 == v4)
  {
    if (v9)
    {
      if (dword_1002F7670 <= 90 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FC02C(v9);
      }

      [*(a1 + 32) invalidate];
      v5 = [*(a1 + 40) setAaController:0];
      goto LABEL_7;
    }

    if (dword_1002F7670 <= 30)
    {
      if (dword_1002F7670 != -1 || (v5 = _LogCategory_Initialize(), v7 = 0, v5))
      {
        v5 = sub_1001FC06C(v5, v7, v6);
LABEL_7:
        v7 = v9;
      }
    }
  }

  return _objc_release_x1(v5, v7);
}

void sub_1000DD5C0(uint64_t a1)
{
  v2 = [*(a1 + 32) subscribers];

  if (!v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    [*(a1 + 32) setSubscribers:v3];
  }

  v4 = [*(a1 + 32) subscribers];
  v5 = (a1 + 40);
  v6 = [v4 containsObject:*(a1 + 40)];

  if ((v6 & 1) == 0)
  {
    v7 = [*(a1 + 32) subscribers];
    [v7 addObject:*(a1 + 40)];

    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FC3C8((a1 + 40));
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [*(a1 + 32) _devices];
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*v5 deviceBatteryInfoUpdated:*(*(&v13 + 1) + 8 * i)];
        }

        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

void sub_1000DD820(uint64_t a1)
{
  v2 = [*(a1 + 32) subscribers];

  if (v2)
  {
    v3 = [*(a1 + 32) subscribers];
    v4 = [v3 containsObject:*(a1 + 40)];

    if (v4)
    {
      v5 = [*(a1 + 32) subscribers];
      [v5 removeObject:*(a1 + 40)];

      if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FC428((a1 + 40));
      }
    }
  }
}

void sub_1000DDAE4(id a1)
{
  if (dword_1002F7670 <= 30)
  {
    if (dword_1002F7670 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001FC4A4(a1, v1, v2);
    }
  }
}

void sub_1000DDB30(id a1)
{
  if (dword_1002F7670 <= 30)
  {
    if (dword_1002F7670 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001FC4C0(a1, v1, v2);
    }
  }
}

void sub_1000DDB88(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (dword_1002F7670 <= 30)
  {
    if (dword_1002F7670 != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      sub_1001FC4DC(v3);
      v3 = v5;
    }
  }

  [*(a1 + 32) _connectedDeviceLost:v3];
}

void sub_1000DDC18(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FC51C(v4);
    }

    v3 = [*(a1 + 32) connectedDiscovery];
    [v3 invalidate];

    [*(a1 + 32) setConnectedDiscovery:0];
  }

  if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FC55C(a1);
  }
}

void *sub_1000DE590(void *result)
{
  v2 = result[4];
  v3 = *(result[5] + 64);
  if (v2 == v3)
  {
    v4 = result;
    if (v2)
    {
      v5 = v3;
      dispatch_source_cancel(v5);
      v6 = v4[5];
      v7 = *(v6 + 64);
      *(v6 + 64) = 0;
    }

    v8 = v4[5];

    return [v8 _checkForExpiredBatteries];
  }

  return result;
}

void sub_1000DEF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F7670 <= 30)
  {
    if (dword_1002F7670 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001FC8C8(a1, a2, a3);
    }
  }

  [*(v3 + 32) _loadPreferences];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [*(v3 + 32) _devices];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [*(v3 + 32) _applyPrefsOverrideToDevice:v9];
        [*(v3 + 32) _aaDeviceBatteryInfoUpdated:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

void sub_1000DF2C8(id a1)
{
  v1 = objc_alloc_init(BTServicesDaemon);
  v2 = qword_1002FA250;
  qword_1002FA250 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000DFA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000DFA6C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*(a1 + 32) + 8);
  obj = *(v3 + 40);
  v4 = [a3 bleDevice];
  NSAppendPrintF(&obj, "    TRIG: %@\n", v4);
  objc_storeStrong((v3 + 40), obj);
}

void sub_1000DFEBC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v5 = a3;
  if (*(a1 + 32) == *(*(a1 + 40) + 16))
  {
    v10 = v5;
    if (dword_1002F76E0 <= 30)
    {
      if (dword_1002F76E0 != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        v5 = sub_1001FCE24(v3, v10);
      }
    }

    if (v3 > 3)
    {
      if (v3 == 4)
      {
        if (dword_1002F76E0 <= 90 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001FCE84(a1);
        }
      }

      else if (v3 == 6 && dword_1002F76E0 <= 30)
      {
        if (dword_1002F76E0 != -1 || (v5 = _LogCategory_Initialize(), v5))
        {
          sub_1001FCEC8(v5, v6, v7);
        }
      }
    }

    else if (v3 == 1)
    {
      if (dword_1002F76E0 <= 30)
      {
        if (dword_1002F76E0 != -1 || (v5 = _LogCategory_Initialize(), v5))
        {
          sub_1001FCF00(v5, v6, v7);
        }
      }

      [*(a1 + 40) openRadarforAudioQuality];
    }

    else if (v3 == 2 && dword_1002F76E0 <= 30)
    {
      if (dword_1002F76E0 != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        sub_1001FCEE4(v5, v6, v7);
      }
    }

    [*(*(a1 + 40) + 16) invalidate];
    v8 = *(a1 + 40);
    v9 = *(v8 + 16);
    *(v8 + 16) = 0;

    v5 = v10;
  }
}

id sub_1000E00E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F76E0 <= 30)
  {
    if (dword_1002F76E0 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001FCF1C(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _activate];
}

id sub_1000E04F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F76E0 <= 30)
  {
    if (dword_1002F76E0 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001FCFD4(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _prefsChanged];
}

uint64_t sub_1000E0560(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (dword_1002F76E0 <= 30)
  {
    if (dword_1002F76E0 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_1001FCFF0(result, a2, a3);
    }
  }

  *(*(v3 + 32) + 192) = 1;
  return result;
}

id sub_1000E05C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F76E0 <= 30)
  {
    if (dword_1002F76E0 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001FD00C(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _audioQualityShowBanner:1 title:@"AirPods Audio Experience" deviceAddressString:@"deviceAddressString" messageKey:@"Click here to report audio quality related feedback" messageArgs:0 timeoutSeconds:10.0];
}

_BYTE *sub_1000E0668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F76E0 <= 30)
  {
    if (dword_1002F76E0 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001FD028(a1, a2, a3);
    }
  }

  result = *(v3 + 32);
  if ((result[192] & 1) == 0)
  {
    [result showCrashBannerIfNeeded:&off_1002CC0F8];
    result = *(v3 + 32);
  }

  result[192] = 0;
  return result;
}

void sub_1000E06DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    if (dword_1002F76E0 <= 90 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD044(v4);
    }

    [*(*(a1 + 32) + 40) invalidate];
    v3 = v4;
  }
}

id sub_1000E07DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F76E0 <= 30)
  {
    if (dword_1002F76E0 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001FD084(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);
  v5 = *(v4 + 64);
  if (v5 != -1)
  {
    notify_cancel(v5);
    *(*(v3 + 32) + 64) = -1;
    v4 = *(v3 + 32);
  }

  v6 = *(v4 + 60);
  if (v6 != -1)
  {
    notify_cancel(v6);
    *(*(v3 + 32) + 60) = -1;
    v4 = *(v3 + 32);
  }

  v7 = *(v4 + 8);
  if (v7 != -1)
  {
    notify_cancel(v7);
    *(*(v3 + 32) + 8) = -1;
    v4 = *(v3 + 32);
  }

  if (*(v4 + 144))
  {
    os_state_remove_handler();
    *(*(v3 + 32) + 144) = 0;
    v4 = *(v3 + 32);
  }

  [*(v4 + 184) invalidate];
  v8 = *(v3 + 32);
  v9 = *(v8 + 184);
  *(v8 + 184) = 0;

  [*(*(v3 + 32) + 40) invalidate];
  [*(v3 + 32) _cbConnectedDiscoveryEnsureStopped];
  [*(v3 + 32) _shareAudioActionScannerEnsureStopped];
  v10 = *(v3 + 32);

  return [v10 _shareAudioConnectedDiscoveryEnsureStopped];
}

void sub_1000E1050(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v5 = a3;
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FD2AC(v3, v5);
  }

  [*(a1 + 32) invalidate];
}

id sub_1000E10DC(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 _fileRadarForFWCrash:v3];
}

void sub_1000E18FC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v5 = a3;
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FD388(v3, v5);
  }

  [*(a1 + 32) invalidate];
}

void sub_1000E1C4C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v5 = a3;
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FD43C(v3, v5);
  }

  [*(a1 + 32) invalidate];
}

id sub_1000E1CD8(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 _fileRadarForHIDLag:v3];
}

void sub_1000E20A0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v5 = a3;
  if (*(a1 + 32) == *(*(a1 + 40) + 24))
  {
    v8 = v5;
    if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD4F8(v3, v8);
    }

    [*(*(a1 + 40) + 24) invalidate];
    v6 = *(a1 + 40);
    v7 = *(v6 + 24);
    *(v6 + 24) = 0;

    v5 = v8;
  }
}

void sub_1000E22AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1002F76E0 <= 90 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD574(v3);
    }

    [*(*(a1 + 32) + 32) invalidate];
  }

  else
  {
    [*(a1 + 32) _update];
  }
}

void *sub_1000E2A34(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[9] == *(a1 + 40))
  {
    return [result _shareAudioActionScannerDeviceFound:a2];
  }

  return result;
}

void sub_1000E2A58(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && *(*(a1 + 32) + 72) == *(a1 + 40))
  {
    v6 = v3;
    if (dword_1002F7810 <= 90 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD6AC(v6);
    }

    [*(a1 + 40) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 72);
    *(v4 + 72) = 0;

    v3 = v6;
  }
}

void *sub_1000E2D34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[11])
  {
    return [result _shareAudioConnectedDeviceFound:a2];
  }

  return result;
}

void *sub_1000E2D50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[11])
  {
    return [result _shareAudioConnectedDeviceLost:a2];
  }

  return result;
}

void sub_1000E2D6C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (dword_1002F7810 <= 90 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD724(v3);
    }

    [*(*(a1 + 32) + 88) invalidate];
  }

  else
  {
    [*(a1 + 32) _update];
  }
}

void sub_1000E3310(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v5 = a3;
  if (*(a1 + 32) == *(*(a1 + 40) + 104))
  {
    v8 = v5;
    if (dword_1002F7810 <= 30 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD860(v3, v8);
    }

    [*(*(a1 + 40) + 104) invalidate];
    v6 = *(a1 + 40);
    v7 = *(v6 + 104);
    *(v6 + 104) = 0;

    v5 = v8;
  }
}

void *sub_1000E33C0(void *result, uint64_t a2, uint64_t a3)
{
  if (result[4] == *(result[5] + 104))
  {
    v13 = v3;
    v7 = result;
    if (dword_1002F7810 <= 30)
    {
      if (dword_1002F7810 != -1 || (result = _LogCategory_Initialize(), result))
      {
        sub_1001FD8C0(result, a2, a3);
      }
    }

    [v7[4] invalidate];
    v8 = v7[5];
    v9 = *(v8 + 104);
    *(v8 + 104) = 0;

    v10 = v7[5];
    v11 = v7[6];
    v12 = v7[7];

    return [v10 _shareAudioSessionStartWithDarwinDevice:v11 cbDevice:v12];
  }

  return result;
}

void *sub_1000E35F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  result = *(a1 + 40);
  if (v4 == result[14])
  {
    return [result _shareAudioSessionProgressEvent:a2 info:a3];
  }

  return result;
}

void sub_1000E4088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  (*(v16 + 16))(v16, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E40C4(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_1002F76E0 <= 90)
  {
    if (dword_1002F76E0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v1 = *(*(*(v2 + 40) + 8) + 40);
    }

    LogPrintF(&dword_1002F76E0, "[BTServicesXPCConnection diagnosticControl:completion:]_block_invoke", 90, "### DiagnosticControl failed: %{error}", v1);
  }

LABEL_7:
  v3 = *(*(v2 + 32) + 16);

  return v3();
}

void sub_1000E4328(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v5 = a3;
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FDBF4(v3, v5);
  }

  [*(a1 + 32) invalidate];
}

id sub_1000E43B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F76E0 <= 30)
  {
    if (dword_1002F76E0 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001FDC54(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 invalidate];
}

void sub_1000E467C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  (*(v17 + 16))(v17, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E46C8(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_1002F76E0 <= 90)
  {
    if (dword_1002F76E0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v1 = *(*(*(v2 + 40) + 8) + 40);
    }

    LogPrintF(&dword_1002F76E0, "[BTServicesXPCConnection diagnosticShow:completion:]_block_invoke", 90, "### DiagnosticShow failed: %{error}", v1);
  }

LABEL_7:
  v3 = *(*(v2 + 32) + 16);

  return v3();
}

void sub_1000E4964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  (*(v16 + 16))(v16, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E499C(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_1002F76E0 <= 90)
  {
    if (dword_1002F76E0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v1 = *(*(*(v2 + 40) + 8) + 40);
    }

    LogPrintF(&dword_1002F76E0, "[BTServicesXPCConnection showHIDConnectedBannerAperture:completion:]_block_invoke", 90, "### HIDBanner failed: %{error}", v1);
  }

LABEL_7:
  v3 = *(*(v2 + 32) + 16);

  return v3();
}

void sub_1000E4D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  (*(v24 + 16))(v24, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1000E4D78(void *result)
{
  v1 = *(*(result[6] + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_1002F76E0 <= 90)
  {
    if (dword_1002F76E0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v1 = *(*(v2[6] + 8) + 40);
    }

    LogPrintF(&dword_1002F76E0, "[BTServicesXPCConnection shareAudioSessionActivate:completion:]_block_invoke", 90, "### Activate failed: %@, %{error}", v2[4], v1);
  }

LABEL_7:
  v3 = *(v2[5] + 16);

  return v3();
}

void sub_1000E4E44(int8x16_t *a1, int a2, void *a3)
{
  v5 = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v6 = vextq_s8(a1[2], a1[2], 8uLL);
  v7 = a1[2].i64[0];
  v10[2] = sub_1000E4EF4;
  v10[3] = &unk_1002BB7E0;
  v8 = *(v7 + 32);
  v11 = v6;
  v13 = a2;
  v12 = v5;
  v9 = v5;
  dispatch_async(v8, v10);
}

void sub_1000E4EF4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32) == *(v2 + 40))
  {
    v4 = [*(v2 + 56) remoteObjectProxy];
    [v4 shareAudioProgressEvent:*(a1 + 56) info:*(a1 + 48)];
  }
}

void sub_1000E5140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  (*(v18 + 16))(v18, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E5178(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (v1 && dword_1002F76E0 <= 90)
  {
    v2 = result;
    if (dword_1002F76E0 != -1)
    {
      return LogPrintF(&dword_1002F76E0, "[BTServicesXPCConnection shareAudioUserConfirmed:]_block_invoke", 90, "### UserConfirmed failed: %@, %{error}", *(v2 + 32), v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(*(*(v2 + 40) + 8) + 40);
      return LogPrintF(&dword_1002F76E0, "[BTServicesXPCConnection shareAudioUserConfirmed:]_block_invoke", 90, "### UserConfirmed failed: %@, %{error}", *(v2 + 32), v1);
    }
  }

  return result;
}

id sub_1000E53EC(uint64_t a1)
{
  if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FDFCC(a1);
  }

  [*(a1 + 32) _reportProgress:10];
  v2 = *(a1 + 32);

  return [v2 _run];
}

void *sub_1000E54D8(void *result, uint64_t a2, uint64_t a3)
{
  if ((*(result[4] + 181) & 1) == 0)
  {
    v4 = result;
    if (dword_1002F7880 <= 30)
    {
      if (dword_1002F7880 != -1 || (result = _LogCategory_Initialize(), result))
      {
        sub_1001FE034(result, a2, a3);
      }
    }

    *(v4[4] + 181) = 1;
    v5 = v4[4];

    return [v5 _invalidate];
  }

  return result;
}

void *sub_1000E59F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[3])
  {
    return [result _bleScannerProxPairingDeviceFound:a2];
  }

  return result;
}

void *sub_1000E5A14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[3])
  {
    return [result _bleScannerProxPairingDeviceFound:a2];
  }

  return result;
}

uint64_t sub_1000E5A30(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 24))
  {
    if (v3)
    {
      v9 = v3;
      if (dword_1002F7880 <= 90 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE0E8(v9);
      }

      [*(*(a1 + 40) + 24) invalidate];
      v6 = *(a1 + 40);
      v7 = *(v6 + 24);
      *(v6 + 24) = 0;

      goto LABEL_7;
    }

    if (dword_1002F7880 <= 30)
    {
      v9 = 0;
      if (dword_1002F7880 != -1 || (v3 = _LogCategory_Initialize(), v5 = 0, v3))
      {
        v3 = sub_1001FE128(v3, v5, v4);
LABEL_7:
        v5 = v9;
      }
    }
  }

  return _objc_release_x1(v3, v5);
}

void *sub_1000E5D54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[2])
  {
    return [result _bleScannerNearbyInfoDeviceFound:a2];
  }

  return result;
}

void *sub_1000E5D70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[2])
  {
    return [result _bleScannerNearbyInfoDeviceFound:a2];
  }

  return result;
}

uint64_t sub_1000E5D8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 16))
  {
    if (v3)
    {
      v9 = v3;
      if (dword_1002F7880 <= 90 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE17C(v9);
      }

      [*(*(a1 + 40) + 16) invalidate];
      v6 = *(a1 + 40);
      v7 = *(v6 + 16);
      *(v6 + 16) = 0;

      goto LABEL_7;
    }

    if (dword_1002F7880 <= 30)
    {
      v9 = 0;
      if (dword_1002F7880 != -1 || (v3 = _LogCategory_Initialize(), v5 = 0, v3))
      {
        v3 = sub_1001FE1BC(v3, v5, v4);
LABEL_7:
        v5 = v9;
      }
    }
  }

  return _objc_release_x1(v3, v5);
}

void sub_1000E5FD8(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void))
{
  v5 = *(a1 + 40);
  if (*(a1 + 32) == v5[24])
  {
    v8 = a4;
    [v5 _runShareAudioServiceConfigRequest:a3 responseHandler:?];
  }

  else
  {
    v6 = a4;
    v8 = BTErrorF(4294960582, "Registered session invalidated");
    a4[2](v6);
  }
}

void sub_1000E6088(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void))
{
  v5 = *(a1 + 40);
  if (*(a1 + 32) == v5[24])
  {
    v8 = a4;
    [v5 _runShareAudioServiceConnectRequest:a3 responseHandler:?];
  }

  else
  {
    v6 = a4;
    v8 = BTErrorF(4294960582, "Registered session invalidated");
    a4[2](v6);
  }
}

void sub_1000E63B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  (*(v16 + 16))(v16, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E63E8(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_1002F7880 <= 90)
  {
    if (dword_1002F7880 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v1 = *(*(*(v2 + 40) + 8) + 40);
    }

    LogPrintF(&dword_1002F7880, "[BTShareAudioSessionDaemon _runShareAudioServiceConfigRequest:responseHandler:]_block_invoke", 90, "### Config request failed: %{error}\n", v1);
  }

LABEL_7:
  v3 = *(*(v2 + 32) + 16);

  return v3();
}

void sub_1000E668C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E66C4(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_1002F7880 <= 90)
  {
    if (dword_1002F7880 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v1 = *(*(*(v2 + 40) + 8) + 40);
    }

    LogPrintF(&dword_1002F7880, "[BTShareAudioSessionDaemon _runShareAudioServiceConfigResponse:]_block_invoke", 90, "### Config request failed: %{error}\n", v1);
  }

LABEL_7:
  v3 = *(*(v2 + 32) + 16);

  return v3();
}

uint64_t sub_1000E69F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 8))
  {
    if (v3)
    {
      v9 = v3;
      if (dword_1002F7880 <= 90 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE26C(v9);
      }

      [*(*(a1 + 40) + 8) invalidate];
      v6 = *(a1 + 40);
      v7 = *(v6 + 8);
      *(v6 + 8) = 0;

      goto LABEL_7;
    }

    if (dword_1002F7880 <= 30)
    {
      v9 = 0;
      if (dword_1002F7880 != -1 || (v3 = _LogCategory_Initialize(), v5 = 0, v3))
      {
        v3 = sub_1001FE2AC(v3, v5, v4);
LABEL_7:
        v5 = v9;
      }
    }
  }

  return _objc_release_x1(v3, v5);
}

void sub_1000E6F2C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) == *(*(a1 + 40) + 160))
  {
    v8 = v3;
    if (dword_1002F7880 <= 90 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FE328(v8);
    }

    [*(*(a1 + 40) + 160) invalidate];
    v4 = *(a1 + 40);
    v5 = *(v4 + 160);
    *(v4 + 160) = 0;

    *(*(a1 + 40) + 132) = 3;
    v6 = *(a1 + 40);
    if (v8)
    {
      [v6 _reportError:v8];
    }

    else
    {
      v7 = NSErrorF(NSOSStatusErrorDomain, 4294960596, "?");
      [v6 _reportError:v7];
    }

    v3 = v8;
  }
}

uint64_t sub_1000E7030(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 32) == *(*(result + 40) + 160) && dword_1002F7880 <= 90)
  {
    if (dword_1002F7880 != -1)
    {
      return sub_1001FE368(result, a2, a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1001FE368(result, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1000E7088(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 32) == *(*(result + 40) + 160) && dword_1002F7880 <= 90)
  {
    if (dword_1002F7880 != -1)
    {
      return sub_1001FE384(result, a2, a3);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1001FE384(result, a2, a3);
    }
  }

  return result;
}

void *sub_1000E70E0(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result[5];
  if (result[4] == *(v4 + 160) && *(v4 + 132) == 1)
  {
    v5 = result;
    *(v4 + 132) = 4;
    if (dword_1002F7880 <= 30)
    {
      if (dword_1002F7880 != -1 || (result = _LogCategory_Initialize(), result))
      {
        sub_1001FE3A0(result, a2, a3);
      }
    }

    v6 = v5[5];

    return [v6 _run];
  }

  return result;
}

void sub_1000E7170(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) == *(*(a1 + 40) + 160))
  {
    v10 = v3;
    v4 = v3;
    v7 = v4;
    if (v4)
    {
      if (dword_1002F7880 <= 90 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE3BC(v7);
      }

      [*(*(a1 + 40) + 160) invalidate];
      v8 = *(a1 + 40);
      v9 = *(v8 + 160);
      *(v8 + 160) = 0;

      *(*(a1 + 40) + 132) = 3;
      [*(a1 + 40) _reportError:v7];
    }

    else if (dword_1002F7880 <= 30)
    {
      if (dword_1002F7880 != -1 || (v4 = _LogCategory_Initialize(), v4))
      {
        sub_1001FE3FC(v4, v5, v6);
      }
    }

    v3 = v10;
  }
}

void sub_1000E73C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) == *(*(a1 + 40) + 160))
  {
    v8 = v3;
    v4 = v3;
    v7 = v4;
    if (v4)
    {
      if (dword_1002F7880 <= 90 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE434(v7);
      }

      *(*(a1 + 40) + 152) = 3;
      [*(a1 + 40) _reportError:v7];
    }

    else
    {
      if (dword_1002F7880 <= 30)
      {
        if (dword_1002F7880 != -1 || (v4 = _LogCategory_Initialize(), v4))
        {
          sub_1001FE474(v4, v5, v6);
        }
      }

      [*(a1 + 40) _reportProgressTriggeredDevice:210];
      *(*(a1 + 40) + 152) = 4;
      [*(a1 + 40) _run];
    }

    v3 = v8;
  }
}

void sub_1000E77A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) != *(*(a1 + 40) + 160))
  {
    goto LABEL_13;
  }

  if (!v3)
  {
    goto LABEL_6;
  }

  if (dword_1002F7880 <= 90)
  {
    if (dword_1002F7880 != -1 || _LogCategory_Initialize())
    {
      sub_1001FE4C8(v4);
    }

LABEL_6:
    if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FE508(a1);
    }
  }

  [*(a1 + 40) _reportProgressTriggeredDevice:220];
  v5 = *(a1 + 48);
  if (*(*(a1 + 40) + 236) == 1)
  {
    v6 = @"_shCf";
  }

  else
  {
    v6 = @"_shAu";
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E78E8;
  v7[3] = &unk_1002BB898;
  v8 = *(a1 + 32);
  [v8 sendRequestID:v6 options:0 request:v5 responseHandler:v7];
LABEL_13:
}

void *sub_1000E78E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (v5 == result[20])
  {
    return [result _runGuestiOSShareAudioProcessResponse:a4 error:a2];
  }

  return result;
}

void sub_1000E7AF8(void *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = (a1 + 5);
  if (a1[4] == *(a1[5] + 160))
  {
    if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FE5E8(v6, v7);
    }

    objc_storeStrong((a1[5] + 136), a2);
    v18 = 0;
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    v10 = v9;
    if (v9)
    {
      v11 = *v8;
      v12 = *(*v8 + 59);
      v13 = v9;
      if (v12 == 1)
      {
        v14 = v11[9];
        v11[9] = v13;
      }

      else
      {
        v17 = v11[10];
        v11[10] = v13;

        *(a1[5] + 88) = CFDictionaryGetInt64Ranged();
        *(a1[5] + 112) = CFDictionaryGetInt64Ranged();
      }

      if (dword_1002F7880 <= 30 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE654((a1 + 5));
      }

      *(*v8 + 42) = 4;
      [*v8 _run];
    }

    else
    {
      if (dword_1002F7880 <= 90 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE6A4(&v18);
      }

      *(*v8 + 42) = 3;
      v15 = *v8;
      v16 = NSErrorF(NSOSStatusErrorDomain, 4294960535, "No peer BT Addr");
      [v15 _reportError:v16];
    }
  }
}

void *sub_1000E7EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (v5 == result[20])
  {
    return [result _runGuestiOSShareAudioConnectProcessResponse:a4 error:a2];
  }

  return result;
}

void sub_1000E82C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) == *(*(a1 + 40) + 104))
  {
    v8 = v3;
    v4 = v3;
    v7 = v4;
    if (v4)
    {
      if (dword_1002F7880 <= 90 && (dword_1002F7880 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FE7C8(v7);
      }

      *(*(a1 + 40) + 92) = 3;
      [*(a1 + 40) _reportError:v7];
    }

    else
    {
      if (dword_1002F7880 <= 30)
      {
        if (dword_1002F7880 != -1 || (v4 = _LogCategory_Initialize(), v4))
        {
          sub_1001FE808(v4, v5, v6);
        }
      }

      *(*(a1 + 40) + 92) = 4;
      [*(a1 + 40) _reportProgressTriggeredDevice:310];
      [*(a1 + 40) _run];
    }

    v3 = v8;
  }
}

id sub_1000E8FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F7880 <= 30)
  {
    if (dword_1002F7880 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001FEE58(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _pickableRoutesChanged];
}

void *sub_1000E97EC(void *result)
{
  v1 = result;
  if (dword_1002F7880 <= 30)
  {
    if (dword_1002F7880 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_1001FF050(v1);
    }
  }

  v2 = v1[4];
  if (*(v2 + 68) == 1)
  {
    *(v2 + 64) = *(v1 + 40);
    *(v1[4] + 68) = 4;
    v3 = v1[4];

    return [v3 _run];
  }

  return result;
}

void sub_1000E9C00(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E9CB4;
  block[3] = &unk_1002BB940;
  v8 = a2;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v5;
  dispatch_async(v4, block);
}

void sub_1000E9CB4(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v14 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
    v2 = [*(a1 + 32) userInfo];
    [v14 setUserInfo:v2];

    v3 = [*(a1 + 32) proxCardDefinition];
    v4 = [SBSRemoteAlertHandle newHandleWithDefinition:v3 configurationContext:v14];
    [*(a1 + 32) setProxCardHandle:v4];

    v5 = [*(a1 + 32) proxCardHandle];

    if (v5)
    {
      v6 = [*(a1 + 32) proxCardHandle];
      [v6 registerObserver:*(a1 + 32)];

      v7 = [*(a1 + 32) proxCardHandle];
      [v7 activateWithContext:0];

      if (dword_1002F78F0 <= 30)
      {
        if (dword_1002F78F0 != -1 || (v8 = _LogCategory_Initialize(), v8))
        {
          sub_1001FF124(v8, v9, v10);
        }
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v13 = NSErrorF(NSOSStatusErrorDomain, 4294960575, "Failed to activate prox card");
      if (dword_1002F78F0 <= 90 && (dword_1002F78F0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FF140(v13);
      }

      (*(*(a1 + 40) + 16))();
      [*(a1 + 32) _dismissProxCardWithError:v13];
    }
  }

  else
  {
    v11 = NSErrorF(NSOSStatusErrorDomain, 4294960575, "Failed to launch prox card due to existing prox card");
    v14 = v11;
    if (dword_1002F78F0 <= 90)
    {
      if (dword_1002F78F0 != -1 || (v12 = _LogCategory_Initialize(), v11 = v14, v12))
      {
        sub_1001FF0E4(v11);
      }
    }

    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) _dismissProxCardWithError:v14];
  }
}

uint64_t sub_1000EA4F0()
{
  v0 = sub_1000EE870(&unk_1002F7BA0, &unk_1002270E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EE8B8(v7, qword_100300AF0);
  sub_1000EE91C(v3, qword_100300AF0);
  URL.init(string:)();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    URL.appendingPathComponent(_:isDirectory:)();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

id sub_1000EA6CC()
{
  v1 = type metadata accessor for Date();
  v82 = *(v1 - 8);
  __chkstk_darwin(v1);
  v78 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v3 - 8);
  v81 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v77 - v6;
  __chkstk_darwin(v8);
  v10 = &v77 - v9;
  __chkstk_darwin(v11);
  v13 = &v77 - v12;
  v14 = objc_autoreleasePoolPush();
  isa = sub_100169D38(*v0, *(v0 + 8));
  if (!isa)
  {
    isa = sub_1000F8490().super.isa;
  }

  v16 = isa;
  v83 = isa;
  sub_1000EC524(&v83);
  objc_autoreleasePoolPop(v14);
  v83 = 0;
  v84 = 0xE000000000000000;
  _StringGuts.grow(_:)(51);
  v17._countAndFlagsBits = 0x6552656369766544;
  v17._object = 0xED00002864726F63;
  String.append(_:)(v17);
  v18 = type metadata accessor for DeviceRecord(0);
  type metadata accessor for UUID();
  sub_1000EE76C(&unk_1002F7BC0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 2108704;
  v20._object = 0xE300000000000000;
  String.append(_:)(v20);
  String.append(_:)(*(v0 + v18[6]));
  v21._countAndFlagsBits = 8236;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  String.append(_:)(*(v0 + v18[7]));
  v22._countAndFlagsBits = 8236;
  v22._object = 0xE200000000000000;
  String.append(_:)(v22);
  String.append(_:)(*(v0 + v18[9]));
  v23._countAndFlagsBits = 8236;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  String.append(_:)(*(v0 + v18[8]));
  v24._countAndFlagsBits = 0x203A646970202CLL;
  v24._object = 0xE700000000000000;
  String.append(_:)(v24);
  String.append(_:)(*(v0 + v18[10]));
  v25._countAndFlagsBits = 0x203A646976202CLL;
  v25._object = 0xE700000000000000;
  String.append(_:)(v25);
  String.append(_:)(*(v0 + v18[11]));
  v26._countAndFlagsBits = 10;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  v79 = v83;
  v80 = v84;
  v83 = 0;
  v84 = 0xE000000000000000;
  _StringGuts.grow(_:)(62);
  v27._object = 0x8000000100267270;
  v27._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v27);
  v28 = [v16 creationDate];
  if (v28)
  {
    v29 = v28;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = v82;
    v31 = *(v82 + 56);
    v31(v10, 0, 1, v1);
  }

  else
  {
    v30 = v82;
    v31 = *(v82 + 56);
    v31(v10, 1, 1, v1);
  }

  sub_1000EED5C(v10, v13);
  v32 = *(v30 + 48);
  if (v32(v13, 1, v1))
  {
    sub_1000EEE6C(v13, &qword_1002F7EF0, &unk_100226C90);
    v33 = 0xE200000000000000;
    v34 = 15932;
  }

  else
  {
    v35 = *(v30 + 16);
    v77 = v7;
    v36 = v78;
    v35(v78, v13, v1);
    sub_1000EEE6C(v13, &qword_1002F7EF0, &unk_100226C90);
    v37 = objc_opt_self();
    v38 = Date._bridgeToObjectiveC()().super.isa;
    v39 = [v37 localizedStringFromDate:v38 dateStyle:2 timeStyle:2];

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v41;

    v30 = v82;
    v42 = v36;
    v7 = v77;
    (*(v82 + 8))(v42, v1);
    v34 = v40;
  }

  v43 = v33;
  String.append(_:)(*&v34);

  v44._object = 0xEE00203A6E4F6465;
  v44._countAndFlagsBits = 0x696669646F6D202CLL;
  String.append(_:)(v44);
  v45 = [v16 modificationDate];
  if (v45)
  {
    v46 = v81;
    v47 = v45;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v48 = 0;
  }

  else
  {
    v48 = 1;
    v46 = v81;
  }

  v31(v46, v48, 1, v1);
  sub_1000EED5C(v46, v7);
  if (v32(v7, 1, v1))
  {
    sub_1000EEE6C(v7, &qword_1002F7EF0, &unk_100226C90);
    v49 = 0xE200000000000000;
    v50 = 15932;
  }

  else
  {
    v51 = v78;
    (*(v30 + 16))(v78, v7, v1);
    sub_1000EEE6C(v7, &qword_1002F7EF0, &unk_100226C90);
    v52 = v30;
    v53 = objc_opt_self();
    v54 = Date._bridgeToObjectiveC()().super.isa;
    v55 = [v53 localizedStringFromDate:v54 dateStyle:2 timeStyle:2];

    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v57;

    (*(v52 + 8))(v51, v1);
    v50 = v56;
  }

  v58 = v49;
  String.append(_:)(*&v50);

  v59._object = 0xEF203A7962206465;
  v59._countAndFlagsBits = 0x696669646F6D202CLL;
  String.append(_:)(v59);
  v60 = [v16 modifiedByDevice];
  if (v60)
  {
    v61 = v60;
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;
  }

  else
  {
    v64 = 0xE200000000000000;
    v62 = 15932;
  }

  v65._countAndFlagsBits = v62;
  v65._object = v64;
  String.append(_:)(v65);

  v66._countAndFlagsBits = 0x203A67617465202CLL;
  v66._object = 0xE800000000000000;
  String.append(_:)(v66);
  v67 = [v16 recordChangeTag];
  if (v67)
  {
    v68 = v67;
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;
  }

  else
  {
    v71 = 0xE200000000000000;
    v69 = 15932;
  }

  v72._countAndFlagsBits = v69;
  v72._object = v71;
  String.append(_:)(v72);

  v73 = v83;
  v74 = v84;
  v83 = v79;
  v84 = v80;

  v75._countAndFlagsBits = v73;
  v75._object = v74;
  String.append(_:)(v75);

  return v83;
}

uint64_t sub_1000EAE74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v3 - 8);
  v86 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v88 = &v84 - v6;
  __chkstk_darwin(v7);
  v91 = &v84 - v8;
  v9 = type metadata accessor for Date();
  v92 = *(v9 - 8);
  v93 = v9;
  __chkstk_darwin(v9);
  v87 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v90 = &v84 - v12;
  v13 = type metadata accessor for UUID();
  v94 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000EE870(&qword_1002F7D70, &qword_100226B18);
  v95 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v84 - v17;
  v19 = type metadata accessor for DeviceRecord(0);
  __chkstk_darwin(v19);
  v21 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[3];
  v97 = a1;
  sub_1000EF78C(a1, v22);
  sub_1000EF7D0();
  v23 = v96;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    return sub_1000EF824(v97);
  }

  v84 = v19;
  v85 = v13;
  v24 = v95;
  v96 = v21;
  v99 = 0;
  sub_1000EF8C4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = v96;
  *v96 = v98;
  LOBYTE(v98) = 1;
  sub_1000EE76C(&unk_1002F8750, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v27 = v15;
  v28 = v85;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v29 = v27;
  v30 = v84;
  (*(v94 + 32))(&v26[v84[5]], v29, v28);
  LOBYTE(v98) = 2;
  v31 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = &v26[v30[6]];
  *v32 = v31;
  v32[1] = v33;
  LOBYTE(v98) = 3;
  v34 = KeyedDecodingContainer.decode(_:forKey:)();
  v35 = &v26[v30[7]];
  *v35 = v34;
  v35[1] = v36;
  LOBYTE(v98) = 4;
  v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v38)
  {
    v39 = v37;
  }

  else
  {
    v39 = 0;
  }

  if (v38)
  {
    v40 = v38;
  }

  else
  {
    v40 = 0xE000000000000000;
  }

  v41 = &v26[v30[8]];
  *v41 = v39;
  v41[1] = v40;
  LOBYTE(v98) = 5;
  v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v43)
  {
    v44 = v42;
  }

  else
  {
    v44 = 0;
  }

  if (v43)
  {
    v45 = v43;
  }

  else
  {
    v45 = 0xE000000000000000;
  }

  v46 = &v26[v30[9]];
  *v46 = v44;
  v46[1] = v45;
  LOBYTE(v98) = 6;
  v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v48)
  {
    v49 = v47;
  }

  else
  {
    v49 = 0;
  }

  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0xE000000000000000;
  }

  v51 = &v26[v30[10]];
  *v51 = v49;
  v51[1] = v50;
  LOBYTE(v98) = 7;
  v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v53)
  {
    v54 = v52;
  }

  else
  {
    v54 = 0;
  }

  if (v53)
  {
    v55 = v53;
  }

  else
  {
    v55 = 0xE000000000000000;
  }

  v56 = v84;
  v57 = &v26[v84[11]];
  *v57 = v54;
  v57[1] = v55;
  v58 = v56[12];
  static Date.now.getter();
  LOBYTE(v98) = 8;
  sub_1000EE76C(&qword_1002F7D90, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v59 = v91;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v60 = v18;
  v61 = *(v92 + 48);
  v94 = v92 + 48;
  v85 = v61;
  if (v61(v59, 1, v93) == 1)
  {
    v62 = objc_autoreleasePoolPush();
    isa = sub_100169D38(*v96, *(v96 + 1));
    if (!isa)
    {
      isa = sub_1000F8490().super.isa;
    }

    v64 = isa;
    *&v98 = isa;
    sub_1000EC524(&v98);
    objc_autoreleasePoolPop(v62);
    v65 = [v64 modificationDate];

    if (v65)
    {
      v66 = v87;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v24 + 8))(v60, v16);
      v67 = v92;
      v68 = *(v92 + 32);
      v69 = v88;
      v70 = v66;
      v71 = v93;
      v68(v88, v70, v93);
      (*(v67 + 56))(v69, 0, 1, v71);
      v68(v90, v69, v71);
    }

    else
    {
      v84 = *(v92 + 56);
      (v84)(v88, 1, 1, v93);
      v72 = objc_autoreleasePoolPush();
      v73 = sub_100169D38(*v96, *(v96 + 1));
      if (!v73)
      {
        v73 = sub_1000F8490().super.isa;
      }

      v74 = v73;
      *&v98 = v73;
      sub_1000EC524(&v98);
      objc_autoreleasePoolPop(v72);
      v75 = [v74 creationDate];

      if (v75)
      {
        v76 = v87;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v24 + 8))(v60, v16);
        v77 = *(v92 + 32);
        v78 = v86;
        v79 = v76;
        v80 = v93;
        v77(v86, v79, v93);
        (v84)(v78, 0, 1, v80);
        v77(v90, v78, v80);
      }

      else
      {
        v81 = v86;
        v82 = v93;
        (v84)(v86, 1, 1, v93);
        static Date.now.getter();
        (*(v24 + 8))(v60, v16);
        if (v85(v81, 1, v82) != 1)
        {
          sub_1000EEE6C(v86, &qword_1002F7EF0, &unk_100226C90);
        }
      }

      if (v85(v88, 1, v93) != 1)
      {
        sub_1000EEE6C(v88, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    if (v85(v91, 1, v93) != 1)
    {
      sub_1000EEE6C(v91, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  else
  {
    (*(v24 + 8))(v18, v16);
    (*(v92 + 32))(v90, v91, v93);
  }

  v83 = v96;
  (*(v92 + 40))(&v96[v58], v90, v93);
  sub_1000EF918(v83, v89);
  sub_1000EF824(v97);
  return sub_1000EF97C(v83);
}

void sub_1000EBA44(id a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  __chkstk_darwin(v5 - 8);
  v89 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v92 = &v82 - v8;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v90 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v91 = &v82 - v13;
  v14 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  __chkstk_darwin(v14 - 8);
  v16 = &v82 - v15;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v94 = v17;
  v95 = v18;
  __chkstk_darwin(v17);
  v93 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (CKRecord.recordType.getter() == 0x6552656369766544 && v20 == 0xEC00000064726F63)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      sub_1000EEDCC();
      swift_allocError();
      *v30 = 0;
      swift_willThrow();
LABEL_28:

      return;
    }
  }

  v88 = v10;
  v22 = [a1 encryptedValues];
  ObjectType = swift_getObjectType();
  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 objectForKeyedSubscript:v23];

  if (!v24 || (v98 = v24, sub_1000EE870(&qword_1002F8610, &unk_1002262D0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_25:
    v68 = static os_log_type_t.error.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v69 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_100226100;
    *(v70 + 56) = sub_1000EEE20();
    *(v70 + 64) = sub_1000EE76C(&qword_1002F7BE0, sub_1000EEE20, &protocol conformance descriptor for NSObject);
    *(v70 + 32) = a1;
    a1 = a1;
    os_log(_:dso:log:_:_:)(v68, &_mh_execute_header, v69, "Invalid Device Record - %@", 26, 2, v70);

    sub_1000EEDCC();
    swift_allocError();
    *v71 = 2;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_28;
  }

  v84 = v2;
  v85 = a2;
  v86 = v9;
  v25 = v97;
  v83 = v96;
  v26 = [a1 recordID];
  v27 = [v26 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v28 = v94;
  v29 = v95;
  if ((*(v95 + 48))(v16, 1, v94) == 1)
  {

    sub_1000EEE6C(v16, &qword_1002F8000, &unk_1002262C0);
    goto LABEL_25;
  }

  v82 = v25;
  v31 = v93;
  (*(v29 + 32))(v93, v16, v28);
  v32 = v28;
  v33 = String._bridgeToObjectiveC()();
  v34 = [v22 objectForKeyedSubscript:v33];

  if (!v34)
  {
    (*(v29 + 8))(v31, v32);
LABEL_24:

    goto LABEL_25;
  }

  v98 = v34;
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v29 + 8))(v93, v32);
    goto LABEL_24;
  }

  v35 = v96;
  v36 = v97;
  v37 = type metadata accessor for DeviceRecord(0);
  v38 = *(v29 + 16);
  v39 = v85;
  v38(v85 + v37[5], v93, v32);
  v40 = (v39 + v37[6]);
  v41 = v82;
  *v40 = v83;
  v40[1] = v41;
  v42 = (v39 + v37[7]);
  *v42 = v35;
  v42[1] = v36;
  CKRecordKeyValueSetting.subscript.getter();
  v44 = v96;
  v43 = v97;
  if (!v97)
  {
    v44 = 0;
    v43 = 0xE000000000000000;
  }

  v45 = (v39 + v37[8]);
  *v45 = v44;
  v45[1] = v43;
  CKRecordKeyValueSetting.subscript.getter();
  v47 = v96;
  v46 = v97;
  if (!v97)
  {
    v47 = 0;
    v46 = 0xE000000000000000;
  }

  v48 = (v39 + v37[9]);
  *v48 = v47;
  v48[1] = v46;
  CKRecordKeyValueSetting.subscript.getter();
  v50 = v96;
  v49 = v97;
  if (!v97)
  {
    v50 = 0;
    v49 = 0xE000000000000000;
  }

  v51 = (v39 + v37[10]);
  *v51 = v50;
  v51[1] = v49;
  CKRecordKeyValueSetting.subscript.getter();
  v53 = v96;
  v52 = v97;
  if (!v97)
  {
    v53 = 0;
    v52 = 0xE000000000000000;
  }

  ObjectType = v37;
  v54 = (v39 + v37[11]);
  *v54 = v53;
  v54[1] = v52;
  v55 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [a1 encodeSystemFieldsWithCoder:v55];
  [v55 finishEncoding];
  v56 = [v55 encodedData];
  v57 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  *v39 = v57;
  v39[1] = v59;
  v60 = [a1 modificationDate];
  if (v60)
  {
    v61 = v90;
    v62 = v60;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    swift_unknownObjectRelease();
    (*(v95 + 8))(v93, v32);
    v63 = v88;
    v64 = *(v88 + 32);
    v65 = v92;
    v66 = v86;
    v64(v92, v61, v86);
    (*(v63 + 56))(v65, 0, 1, v66);
    v67 = v91;
    v64(v91, v65, v66);
  }

  else
  {
    v72 = v88;
    v73 = *(v88 + 56);
    v66 = v86;
    v73(v92, 1, 1, v86);
    v74 = [a1 creationDate];
    if (v74)
    {
      v83 = v73;
      v75 = v90;
      v76 = v74;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      swift_unknownObjectRelease();
      (*(v95 + 8))(v93, v94);
      v77 = *(v72 + 32);
      v78 = v89;
      v77(v89, v75, v66);
      v83(v78, 0, 1, v66);
      v67 = v91;
      v77(v91, v78, v66);
      v79 = (*(v72 + 48))(v92, 1, v66);
    }

    else
    {
      v80 = v89;
      v73(v89, 1, 1, v66);
      v67 = v91;
      static Date.now.getter();

      swift_unknownObjectRelease();
      (*(v95 + 8))(v93, v94);
      v81 = *(v72 + 48);
      if (v81(v80, 1, v66) != 1)
      {
        sub_1000EEE6C(v80, &qword_1002F7EF0, &unk_100226C90);
      }

      v66 = v86;
      v79 = v81(v92, 1, v86);
    }

    v63 = v88;
    if (v79 != 1)
    {
      sub_1000EEE6C(v92, &qword_1002F7EF0, &unk_100226C90);
    }
  }

  (*(v63 + 32))(v39 + *(ObjectType + 48), v67, v66);
}

uint64_t sub_1000EC524(id *a1)
{
  v2 = v1;
  v4 = static os_log_type_t.debug.getter();
  if (qword_1002F7AE8 != -1)
  {
    swift_once();
  }

  v5 = qword_100300E38;
  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100226100;
  v7 = *a1;
  v8 = [v7 description];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_1000EE954();
  *(v6 + 32) = v9;
  *(v6 + 40) = v11;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Updating main device record: %@", 31, 2, v6);

  v12 = [v7 encryptedValues];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v13 = type metadata accessor for DeviceRecord(0);
  v37 = v2;
  v14 = (v2 + v13[6]);
  v16 = *v14;
  v15 = v14[1];
  if (!v39)
  {
    goto LABEL_8;
  }

  if (v38 != v16 || v39 != v15)
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_9;
    }

LABEL_8:
    v38 = v16;
    v39 = v15;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_9;
  }

LABEL_9:
  CKRecordKeyValueSetting.subscript.getter();
  v18 = (v37 + v13[7]);
  v20 = *v18;
  v19 = v18[1];
  if (!v39)
  {
    goto LABEL_14;
  }

  if (v38 == v20 && v39 == v19)
  {

    goto LABEL_15;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v21 & 1) == 0)
  {
LABEL_14:
    v38 = v20;
    v39 = v19;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_15:
  CKRecordKeyValueSetting.subscript.getter();
  v22 = (v37 + v13[8]);
  v24 = *v22;
  v23 = v22[1];
  if (!v39)
  {
    goto LABEL_20;
  }

  if (v38 != v24 || v39 != v23)
  {
    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v35)
    {
      goto LABEL_21;
    }

LABEL_20:
    v38 = v24;
    v39 = v23;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_21;
  }

LABEL_21:
  CKRecordKeyValueSetting.subscript.getter();
  v25 = (v37 + v13[9]);
  v27 = *v25;
  v26 = v25[1];
  if (!v39)
  {
    goto LABEL_26;
  }

  if (v38 == v27 && v39 == v26)
  {

    goto LABEL_27;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v36 & 1) == 0)
  {
LABEL_26:
    v38 = v27;
    v39 = v26;

    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_27:
  CKRecordKeyValueSetting.subscript.getter();
  v28 = (v37 + v13[10]);
  v30 = *v28;
  v29 = v28[1];
  if (!v39)
  {
    goto LABEL_32;
  }

  if (v38 != v30 || v39 != v29)
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
      goto LABEL_33;
    }

LABEL_32:
    v38 = v30;
    v39 = v29;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_33;
  }

LABEL_33:
  CKRecordKeyValueSetting.subscript.getter();
  v32 = (v37 + v13[11]);
  if (!v39)
  {
    goto LABEL_38;
  }

  if (v38 == *v32 && v39 == v32[1])
  {
    swift_unknownObjectRelease();
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v34 & 1) == 0)
  {
LABEL_38:

    CKRecordKeyValueSetting.subscript.setter();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1000ECB0C(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1000ECFA8(a1))
  {
    v7 = [a1 nickname];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = (v1 + *(type metadata accessor for DeviceRecord(0) + 28));
      v13 = *v12 == v9 && v12[1] == v11;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
      }

      else
      {

        *v12 = v9;
        v12[1] = v11;
      }
    }

    v23 = [a1 modelNumber];
    if (v23)
    {
      v24 = v23;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28 = (v1 + *(type metadata accessor for DeviceRecord(0) + 32));
      v29 = *v28 == v25 && v28[1] == v27;
      if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
      }

      else
      {

        *v28 = v25;
        v28[1] = v27;
      }
    }

    v30 = [a1 manufacturer];
    if (v30)
    {
      v31 = v30;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v35 = (v1 + *(type metadata accessor for DeviceRecord(0) + 36));
      if (*v35 == v32 && v35[1] == v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
      }

      else
      {

        *v35 = v32;
        v35[1] = v34;
      }
    }

    v36 = [a1 productID];
    if (v36)
    {
      v37 = v36;
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v41 = (v1 + *(type metadata accessor for DeviceRecord(0) + 40));
      if (*v41 == v38 && v41[1] == v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
      }

      else
      {

        *v41 = v38;
        v41[1] = v40;
      }
    }

    v42 = [a1 vendorID];
    if (v42)
    {
      v43 = v42;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = (v1 + *(type metadata accessor for DeviceRecord(0) + 44));
      if (*v47 == v44 && v47[1] == v46 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
      }

      else
      {

        *v47 = v44;
        v47[1] = v46;
      }
    }

    static Date.now.getter();
    v48 = type metadata accessor for DeviceRecord(0);
    return (*(v4 + 40))(v1 + *(v48 + 48), v6, v3);
  }

  else
  {
    v14 = static os_log_type_t.info.getter();
    if (qword_1002F7AE8 != -1)
    {
      swift_once();
    }

    v15 = qword_100300E38;
    sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100226100;
    v17 = a1;
    v18 = [v17 description];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_1000EE954();
    *(v16 + 32) = v19;
    *(v16 + 40) = v21;
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "No change in updated device record: %@", 38, 2, v16);
  }
}

uint64_t sub_1000ECFA8(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [v2 nickname];
    if (v3)
    {

      v4 = [v2 nickname];
      if (!v4)
      {
        goto LABEL_36;
      }

      v5 = v4;
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v9 = (v1 + *(type metadata accessor for DeviceRecord(0) + 28));
      if (v6 == *v9 && v8 == v9[1])
      {
      }

      else
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v11 & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    v13 = [v2 manufacturer];
    if (v13)
    {

      v14 = [v2 manufacturer];
      if (!v14)
      {
        goto LABEL_36;
      }

      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = (v1 + *(type metadata accessor for DeviceRecord(0) + 36));
      if (v16 == *v19 && v18 == v19[1])
      {
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v20 & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    v21 = [v2 modelNumber];
    if (v21)
    {

      v22 = [v2 modelNumber];
      if (!v22)
      {
        goto LABEL_36;
      }

      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = (v1 + *(type metadata accessor for DeviceRecord(0) + 32));
      if (v24 == *v27 && v26 == v27[1])
      {
      }

      else
      {
        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v28 & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    v29 = [v2 productID];
    if (v29)
    {

      v30 = [v2 productID];
      if (!v30)
      {
        goto LABEL_36;
      }

      v31 = v30;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v35 = (v1 + *(type metadata accessor for DeviceRecord(0) + 40));
      if (v32 == *v35 && v34 == v35[1])
      {
      }

      else
      {
        v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v36 & 1) == 0)
        {
          goto LABEL_36;
        }
      }
    }

    v37 = [v2 vendorID];
    if (!v37)
    {
LABEL_35:

      v12 = 0;
      return v12 & 1;
    }

    v38 = [v2 vendorID];
    if (v38)
    {
      v39 = v38;
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43 = (v1 + *(type metadata accessor for DeviceRecord(0) + 44));
      if (v40 != *v43 || v42 != v43[1])
      {
        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v12 = v45 ^ 1;
        return v12 & 1;
      }

      goto LABEL_35;
    }

LABEL_36:

    v12 = 1;
    return v12 & 1;
  }

  v12 = 0;
  return v12 & 1;
}

unint64_t sub_1000ED308(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x74654D64756F6C63;
    v6 = 0xD000000000000010;
    if (a1 != 2)
    {
      v6 = 0x656D616E6B63696ELL;
    }

    if (a1)
    {
      v5 = 0x696669746E656469;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x49746375646F7270;
    v2 = 0x4449726F646E6576;
    if (a1 != 7)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6D754E6C65646F6DLL;
    if (a1 != 4)
    {
      v3 = 0x74636166756E616DLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_1000ED450()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000ED498(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000ED4E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000EFE28(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000ED524(uint64_t a1)
{
  v2 = sub_1000EF7D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000ED560(uint64_t a1)
{
  v2 = sub_1000EF7D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000ED59C(void *a1)
{
  v3 = v1;
  v5 = sub_1000EE870(&qword_1002F7D98, &qword_100226B20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000EF78C(a1, a1[3]);
  sub_1000EF7D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_1000EE9F4(v12, v9);
  sub_1000EF9D8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_1000EF870(v12, v13);
  }

  else
  {
    sub_1000EF870(v12, v13);
    type metadata accessor for DeviceRecord(0);
    LOBYTE(v12) = 1;
    type metadata accessor for UUID();
    sub_1000EE76C(&qword_1002F8340, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 8;
    type metadata accessor for Date();
    sub_1000EE76C(&qword_1002F7DB0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_1000ED91C()
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  type metadata accessor for DeviceRecord(0);
  type metadata accessor for UUID();
  sub_1000EE76C(&unk_1002F8350, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for Date();
  sub_1000EE76C(&qword_1002F7DE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000EDADC()
{
  v1 = *v0;
  sub_1000EE9F4(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_1000EDB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000EDB8C(uint64_t a1, int *a2)
{
  Data.hash(into:)();
  type metadata accessor for UUID();
  sub_1000EE76C(&unk_1002F8350, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for Date();
  sub_1000EE76C(&qword_1002F7DE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1000EDCF4(uint64_t a1, int *a2)
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  type metadata accessor for UUID();
  sub_1000EE76C(&unk_1002F8350, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for Date();
  sub_1000EE76C(&qword_1002F7DE0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}