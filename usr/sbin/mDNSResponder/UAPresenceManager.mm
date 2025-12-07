@interface UAPresenceManager
- (BOOL)_addRecordsFromPresence:(id)presence;
- (BOOL)newSharableAddresses:(id)addresses;
- (UAPresenceManager)init;
- (void)addQhash:(unsigned int)qhash forInterface:(mDNSInterfaceID_dummystruct *)interface;
- (void)assertPresence:(int)presence;
- (void)dealloc;
- (void)handleAuthCheck:(int)check;
- (void)handleNetworkUpdate:(int)update;
- (void)idlePresence:(int)presence;
- (void)initialCloudKitImportReceived:(id)received;
- (void)releaseSubscriptions;
- (void)removeQhash:(unsigned int)qhash forInterface:(mDNSInterfaceID_dummystruct *)interface;
- (void)retainSubscription;
- (void)updateCacheFromPresence;
- (void)updateInvalidFromPresence;
@end

@implementation UAPresenceManager

- (void)initialCloudKitImportReceived:(id)received
{
  [s_presence setPresenceReady:1];
  v3 = _unicast_assist_cache_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "unicast assist SKPresence initialCloudKitImportReceived called", v4, 2u);
  }
}

- (void)updateCacheFromPresence
{
  presence = [(UAPresenceManager *)self presence];
  presentDevices = [presence presentDevices];
  v5 = [presentDevices filterObjectsUsingBlock:&__block_literal_global_115];

  selfCopy = self;
  skUpdates = [(UAPresenceManager *)self skUpdates];
  allKeys = [skUpdates allKeys];

  if ([v5 count])
  {
    v96[0] = _NSConcreteStackBlock;
    v96[1] = 3221225472;
    v96[2] = __44__UAPresenceManager_updateCacheFromPresence__block_invoke_116;
    v96[3] = &unk_1001515F0;
    v97 = v5;
    v8 = [allKeys filterObjectsUsingBlock:v96];

    allKeys = v8;
  }

  if ([allKeys count])
  {
    v9 = [allKeys count];
    sUAPresence_Count_update_devices_missing += v9;
  }

  ++sUAPresence_Count_update;
  pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime();
  mDNS_Lock_(mDNSStorage, "[UAPresenceManager updateCacheFromPresence]", 1362);
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  obj = allKeys;
  v10 = [obj countByEnumeratingWithState:&v92 objects:v108 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v93;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v93 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v92 + 1) + 8 * i);
        skUpdates2 = [(UAPresenceManager *)selfCopy skUpdates];
        v16 = [skUpdates2 objectForKeyedSubscript:v14];

        v17 = [v16 objectForKeyedSubscript:@"auth_records"];
        v18 = _unicast_assist_cache_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = [v17 count];
          *buf = 134218242;
          v112 = v19;
          v113 = 2112;
          v114 = v14;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "unicast assist updateCacheFromPresence: remove missing device (auth) count %lu from %@", buf, 0x16u);
        }

        __44__UAPresenceManager_updateCacheFromPresence__block_invoke(v17);
        skUpdates3 = [(UAPresenceManager *)selfCopy skUpdates];
        [skUpdates3 setObject:0 forKeyedSubscript:v14];
      }

      v11 = [obj countByEnumeratingWithState:&v92 objects:v108 count:16];
    }

    while (v11);
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v73 = v5;
  v76 = [v73 countByEnumeratingWithState:&v88 objects:v107 count:16];
  if (v76)
  {
    v75 = *v89;
    v22 = @"qhashes";
    *&v21 = 138412546;
    v72 = v21;
    do
    {
      v23 = 0;
      do
      {
        if (*v89 != v75)
        {
          objc_enumerationMutation(v73);
        }

        v79 = v23;
        v24 = *(*(&v88 + 1) + 8 * v23);
        presencePayload = [v24 presencePayload];
        payloadDictionary = [presencePayload payloadDictionary];

        skUpdates4 = [(UAPresenceManager *)selfCopy skUpdates];
        deviceIdentifier = [v24 deviceIdentifier];
        v28 = [skUpdates4 objectForKey:deviceIdentifier];

        v80 = v28;
        v29 = [v28 objectForKeyedSubscript:@"time"];
        if (!v29 || ([v24 assertionTime], v30 = objc_claimAutoreleasedReturnValue(), v31 = v29, v32 = objc_msgSend(v30, "compare:", v29), v30, v33 = v32 == 1, v29 = v31, v33))
        {
          v77 = v29;
          v78 = v24;
          v34 = [payloadDictionary objectForKeyedSubscript:@"auth_records"];
          v35 = [v28 objectForKeyedSubscript:@"auth_records"];
          v36 = v34;
          v87 = +[NSMutableArray array];
          v101 = 0u;
          v102 = 0u;
          v103 = 0u;
          v104 = 0u;
          v86 = v35;
          v37 = [v86 countByEnumeratingWithState:&v101 objects:buf count:16];
          v84 = v36;
          if (v37)
          {
            v38 = v37;
            v39 = *v102;
            v83 = *v102;
            do
            {
              v40 = 0;
              v85 = v38;
              do
              {
                if (*v102 != v39)
                {
                  objc_enumerationMutation(v86);
                }

                v41 = *(*(&v101 + 1) + 8 * v40);
                v100[0] = _NSConcreteStackBlock;
                v100[1] = 3221225472;
                v100[2] = __44__UAPresenceManager_updateCacheFromPresence__block_invoke_2;
                v100[3] = &unk_100151538;
                v100[4] = v41;
                v42 = [v36 indexOfObjectPassingTest:v100];
                if (v42 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  [v87 addObject:v41];
                }

                else
                {
                  v43 = [v36 objectAtIndex:v42];
                  v44 = [v41 objectForKeyedSubscript:v22];
                  v45 = [v43 objectForKeyedSubscript:v22];
                  v98[0] = _NSConcreteStackBlock;
                  v98[1] = 3221225472;
                  v98[2] = __44__UAPresenceManager_updateCacheFromPresence__block_invoke_3;
                  v98[3] = &unk_100151560;
                  v46 = v22;
                  v47 = v45;
                  v99 = v47;
                  v48 = [v44 filterObjectsUsingBlock:v98];
                  if ([v48 count])
                  {
                    v49 = [v41 objectForKeyedSubscript:@"ifhash"];
                    v50 = [v41 objectForKeyedSubscript:@"addr"];
                    v109[0] = @"ifhash";
                    v109[1] = @"addr";
                    v110[0] = v49;
                    v110[1] = v50;
                    v109[2] = v46;
                    v110[2] = v48;
                    v51 = [NSDictionary dictionaryWithObjects:v110 forKeys:v109 count:3];
                    [v87 addObject:v51];
                  }

                  v22 = v46;
                  v39 = v83;
                  v36 = v84;
                  v38 = v85;
                }

                v40 = v40 + 1;
              }

              while (v38 != v40);
              v38 = [v86 countByEnumeratingWithState:&v101 objects:buf count:16];
            }

            while (v38);
          }

          if ([v87 count])
          {
            v52 = v87;
          }

          else
          {
            v52 = 0;
          }

          v53 = v52;

          v54 = v78;
          if ([v53 count])
          {
            v55 = _unicast_assist_cache_log();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
            {
              v56 = [v53 count];
              deviceIdentifier2 = [v78 deviceIdentifier];
              *buf = 134218242;
              v112 = v56;
              v113 = 2112;
              v114 = deviceIdentifier2;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "unicast assist updateCacheFromPresence: remove diffed (auth) count %lu from %@", buf, 0x16u);
            }

            __44__UAPresenceManager_updateCacheFromPresence__block_invoke(v53);
          }

          v58 = _unicast_assist_cache_log();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            v59 = [v84 count];
            deviceIdentifier3 = [v78 deviceIdentifier];
            assertionTime = [v78 assertionTime];
            *buf = 134218498;
            v112 = v59;
            v113 = 2112;
            v114 = deviceIdentifier3;
            v115 = 2112;
            v116 = assertionTime;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_INFO, "unicast assist updateCacheFromPresence: next (auth) count %lu from %@ time %@", buf, 0x20u);

            v54 = v78;
          }

          v62 = [(UAPresenceManager *)selfCopy _addRecordsFromPresence:v84];
          v105[0] = @"time";
          assertionTime2 = [v54 assertionTime];
          v106[0] = assertionTime2;
          v106[1] = v84;
          v105[1] = @"auth_records";
          v105[2] = @"had_invalid_addr";
          v64 = &__kCFBooleanFalse;
          if (v62)
          {
            v64 = &__kCFBooleanTrue;
          }

          v106[2] = v64;
          v65 = [NSDictionary dictionaryWithObjects:v106 forKeys:v105 count:3];
          skUpdates5 = [(UAPresenceManager *)selfCopy skUpdates];
          deviceIdentifier4 = [v54 deviceIdentifier];
          [skUpdates5 setObject:v65 forKeyedSubscript:deviceIdentifier4];

          ++sUAPresence_Count_update_devices;
          v29 = v77;
        }

        else
        {
          v68 = _unicast_assist_cache_log();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
          {
            deviceIdentifier5 = [v24 deviceIdentifier];
            assertionTime3 = [v24 assertionTime];
            *buf = v72;
            v112 = deviceIdentifier5;
            v113 = 2112;
            v114 = assertionTime3;
            _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_INFO, "unicast assist updateCacheFromPresence: skipping stale update from %@ time %@", buf, 0x16u);

            v29 = v31;
          }

          ++sUAPresence_Count_update_devices_old;
        }

        v23 = v79 + 1;
      }

      while ((v79 + 1) != v76);
      v76 = [v73 countByEnumeratingWithState:&v88 objects:v107 count:16];
    }

    while (v76);
  }

  mDNS_Unlock_(mDNSStorage, "[UAPresenceManager updateCacheFromPresence]", 1414);
  KQueueUnlock("UAPresence updateCacheFromPresence");
}

BOOL __44__UAPresenceManager_updateCacheFromPresence__block_invoke_116(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __44__UAPresenceManager_updateCacheFromPresence__block_invoke_2_117;
  v8[3] = &unk_1001515C8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 indexOfObjectPassingTest:v8] == 0x7FFFFFFFFFFFFFFFLL;

  return v6;
}

void __44__UAPresenceManager_updateCacheFromPresence__block_invoke(void *a1)
{
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = a1;
  v28 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v28)
  {
    v27 = *v37;
    *&v1 = 138413059;
    v25 = v1;
    do
    {
      v2 = 0;
      do
      {
        if (*v37 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v2;
        v3 = *(*(&v36 + 1) + 8 * v2);
        v4 = [v3 objectForKey:{@"ifhash", v25}];
        v5 = [v4 unsignedIntValue];

        v6 = [v3 objectForKey:@"addr"];
        v7 = [v3 objectForKey:@"qhashes"];
        v8 = _unicast_assist_cache_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = [v7 describeQHashes];
          v10 = [v6 describeAddr];
          *buf = v25;
          *v42 = v9;
          *&v42[8] = 2160;
          *&v42[10] = 1752392040;
          *&v42[18] = 2117;
          *&v42[20] = v10;
          *&v42[28] = 1024;
          v43 = v5;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "unicast assist updateCacheFromPresence: remove qhashes %@ addr %{sensitive, mask.hash}@ ifhash %x", buf, 0x26u);
        }

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v11 = v7;
        v12 = [v11 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v33;
          do
          {
            v15 = 0;
            do
            {
              if (*v33 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v32 + 1) + 8 * v15);
              v30[0] = 0;
              v30[1] = 0;
              v31 = 0;
              if (!_unicast_assist_data_to_addr(v6, v30))
              {
                v17 = [v16 unsignedIntValue];
                v18 = s_interface_head_0;
                if (!s_interface_head_0)
                {
                  goto LABEL_33;
                }

                while (*(v18 + 32) != v5 || LODWORD(v30[0]) != -1 && *(v18 + 36) != LODWORD(v30[0]))
                {
                  v18 = *v18;
                  if (!v18)
                  {
                    goto LABEL_33;
                  }
                }

                v19 = *(v18 + 8);
                if (!v19)
                {
LABEL_33:
                  v20 = -6727;
LABEL_34:
                  v22 = _unicast_assist_cache_log();
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                  {
                    v23 = [v6 describeAddr];
                    *buf = 67109891;
                    *v42 = v17;
                    *&v42[4] = 2160;
                    *&v42[6] = 1752392040;
                    *&v42[14] = 2117;
                    *&v42[16] = v23;
                    *&v42[24] = 1024;
                    *&v42[26] = v20;
                    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "unicast assist updateCacheFromPresence: (removed) FAILED qhash %x addr %{sensitive, mask.hash}@ err %d", buf, 0x22u);
                  }

                  goto LABEL_37;
                }

                v20 = -6727;
                do
                {
LABEL_22:
                  if (mDNSSameAddress(v19 + 4, v30))
                  {
                    v21 = v19 + 1;
                    while (1)
                    {
                      v21 = *v21;
                      if (!v21)
                      {
                        break;
                      }

                      if (*(v21 + 2) == v17)
                      {
                        if (*(v21 + 18))
                        {
                          v20 = 0;
                          *(v21 + 18) = 0;
                          v19 = *v19;
                          if (v19)
                          {
                            goto LABEL_22;
                          }

                          goto LABEL_37;
                        }

                        v19 = *v19;
                        v20 = -6709;
                        if (v19)
                        {
                          goto LABEL_22;
                        }

                        goto LABEL_34;
                      }
                    }
                  }

                  v19 = *v19;
                }

                while (v19);
                if (v20)
                {
                  goto LABEL_34;
                }
              }

LABEL_37:
              v15 = v15 + 1;
            }

            while (v15 != v13);
            v24 = [v11 countByEnumeratingWithState:&v32 objects:v40 count:16];
            v13 = v24;
          }

          while (v24);
        }

        v2 = v29 + 1;
      }

      while ((v29 + 1) != v28);
      v28 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v28);
  }
}

uint64_t __44__UAPresenceManager_updateCacheFromPresence__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 objectForKeyedSubscript:@"ifhash"];
  v8 = [v6 objectForKeyedSubscript:@"addr"];

  v9 = [*(a1 + 32) objectForKeyedSubscript:@"ifhash"];
  if ([v7 isEqual:v9])
  {
    v10 = [*(a1 + 32) objectForKeyedSubscript:@"addr"];
    *a4 = [v8 isEqual:v10];
  }

  else
  {
    *a4 = 0;
  }

  v11 = *a4;
  return v11;
}

id __44__UAPresenceManager_updateCacheFromPresence__block_invoke_2_117(uint64_t a1, void *a2)
{
  v3 = [a2 deviceIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

BOOL __44__UAPresenceManager_updateCacheFromPresence__block_invoke_4(id a1, SKPresentDevice *a2)
{
  v2 = a2;
  if (([(SKPresentDevice *)v2 isSelfDevice]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    v4 = [(SKPresentDevice *)v2 presencePayload];
    v5 = [v4 payloadDictionary];
    v6 = [v5 objectForKeyedSubscript:@"version"];

    v3 = [v6 isEqualToNumber:&off_1001555F0];
    if ((v3 & 1) == 0)
    {
      v7 = _unicast_assist_cache_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = [(SKPresentDevice *)v2 deviceIdentifier];
        v10 = 138412802;
        v11 = v6;
        v12 = 2112;
        v13 = v9;
        v14 = 2112;
        v15 = &off_1001555F0;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "unicast assist updateCacheFromPresence: skipping version %@ from %@ expected %@", &v10, 0x20u);
      }
    }
  }

  return v3;
}

- (void)updateInvalidFromPresence
{
  selfCopy = self;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  skUpdates = [(UAPresenceManager *)self skUpdates];
  allKeys = [skUpdates allKeys];

  v5 = [allKeys countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v26;
    *&v6 = 134218498;
    v22 = v6;
    do
    {
      v9 = 0;
      v23 = v7;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        skUpdates2 = [(UAPresenceManager *)selfCopy skUpdates];
        v12 = [skUpdates2 objectForKeyedSubscript:v10];

        v13 = [v12 objectForKeyedSubscript:@"had_invalid_addr"];
        if ([v13 BOOLValue])
        {
          v24 = [v12 objectForKeyedSubscript:@"time"];
          v14 = [v12 objectForKeyedSubscript:@"auth_records"];
          v15 = _unicast_assist_cache_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = [v14 count];
            *buf = v22;
            v32 = v16;
            v33 = 2112;
            v34 = v10;
            v35 = 2112;
            v36 = v24;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "unicast assist updateInvalidFromPresence: next (auth) count %lu from %@ time %@", buf, 0x20u);
          }

          if (![(UAPresenceManager *)selfCopy _addRecordsFromPresence:v14])
          {
            v29[0] = @"time";
            v29[1] = @"auth_records";
            v30[0] = v24;
            v30[1] = v14;
            v29[2] = @"had_invalid_addr";
            v30[2] = &__kCFBooleanFalse;
            v17 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];
            [(UAPresenceManager *)selfCopy skUpdates];
            v18 = selfCopy;
            v19 = v8;
            v21 = v20 = allKeys;
            [v21 setObject:v17 forKeyedSubscript:v10];

            allKeys = v20;
            v8 = v19;
            selfCopy = v18;
          }

          v7 = v23;
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [allKeys countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v7);
  }
}

- (BOOL)_addRecordsFromPresence:(id)presence
{
  presenceCopy = presence;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v4 = [presenceCopy countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (!v4)
  {
    goto LABEL_76;
  }

  v5 = v4;
  v41 = 0;
  v43 = *v53;
  v39 = presenceCopy;
  do
  {
    v6 = 0;
    v42 = v5;
    do
    {
      if (*v53 != v43)
      {
        objc_enumerationMutation(presenceCopy);
      }

      v7 = *(*(&v52 + 1) + 8 * v6);
      v8 = [v7 objectForKey:@"ifhash"];
      unsignedIntValue = [v8 unsignedIntValue];

      v10 = [v7 objectForKey:@"addr"];
      v11 = [v7 objectForKey:@"qhashes"];
      v50 = 0uLL;
      v51 = 0;
      if (_unicast_assist_data_to_addr(v10, &v50))
      {
        goto LABEL_32;
      }

      v12 = _unicast_assist_cache_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        [v11 describeQHashes];
        v14 = v13 = v11;
        *buf = 138413315;
        *v58 = v14;
        *&v58[8] = 2160;
        *&v58[10] = 1752392040;
        *&v58[18] = 1045;
        *&v58[20] = 20;
        *&v58[24] = 2101;
        *&v58[26] = &v50;
        *&v58[34] = 1024;
        *&v58[36] = unsignedIntValue;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "unicast assist _addRecordsFromPresence: add qhashes %@ addr %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P ifhash %x", buf, 0x2Cu);

        v11 = v13;
      }

      v15 = *mDNSStorage[0];
      if (!*mDNSStorage[0])
      {
LABEL_28:
        ++sUAPresence_Count_addrs_invalid;
        v18 = _unicast_assist_cache_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 141558531;
          *v58 = 1752392040;
          *&v58[8] = 1045;
          *&v58[10] = 20;
          *&v58[14] = 2101;
          *&v58[16] = &v50;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "unicast assist _addRecordsFromPresence: no subnet for addr %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P", buf, 0x1Cu);
        }

        v41 = 1;
        goto LABEL_31;
      }

      while (1)
      {
        if (*(v15 + 3606) != 101)
        {
          goto LABEL_27;
        }

        if (*(v15 + 3607) != 110)
        {
          goto LABEL_27;
        }

        if (!*(v15 + 3696))
        {
          goto LABEL_27;
        }

        if (!*(v15 + 3671))
        {
          goto LABEL_27;
        }

        *buf = 0;
        if (_unicast_assist_hash_for_interface(*(v15 + 3552), v50, buf) || *buf != unsignedIntValue)
        {
          goto LABEL_27;
        }

        if (v50 != 4)
        {
          break;
        }

        if (*(v15 + 3560) == 4)
        {
          v16 = DWORD1(v50) ^ *(v15 + 3564);
          v17 = *(v15 + 3584);
          goto LABEL_26;
        }

LABEL_27:
        v15 = *(v15 + 3680);
        if (!v15)
        {
          goto LABEL_28;
        }
      }

      if (v50 != 6 || *(v15 + 3560) != 6 || *(v15 + 3564) != 254 || (*(v15 + 3565) & 0xC0) != 0x80 || ((*(&v50 + 4) ^ *(v15 + 3564)) & *(v15 + 3584)) != 0 || ((HIDWORD(v50) ^ *(v15 + 3572)) & *(v15 + 3592)) != 0)
      {
        goto LABEL_27;
      }

      v16 = v51 ^ *(v15 + 3576);
      v17 = *(v15 + 3596);
LABEL_26:
      if ((v16 & v17) != 0)
      {
        goto LABEL_27;
      }

      v19 = *(v15 + 3552);
      ++sUAPresence_Count_addrs;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v40 = v11;
      v18 = v11;
      v20 = [v18 countByEnumeratingWithState:&v46 objects:v56 count:16];
      if (!v20)
      {
        goto LABEL_72;
      }

      v21 = v20;
      v44 = *v47;
      while (2)
      {
        v22 = 0;
        while (2)
        {
          if (*v47 != v44)
          {
            objc_enumerationMutation(v18);
          }

          unsignedIntValue2 = [*(*(&v46 + 1) + 8 * v22) unsignedIntValue];
          v45 = 0;
          v24 = _unicast_assist_addr_update_ex("\bpresence", unsignedIntValue2, 12, 8, &v50, v19, unsignedIntValue, 0, 0, &v45);
          if (v24)
          {
            v25 = v24;
            v26 = _unicast_assist_cache_log();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 67110147;
              *v58 = unsignedIntValue2;
              *&v58[4] = 2160;
              *&v58[6] = 1752392040;
              *&v58[14] = 1045;
              *&v58[16] = 20;
              *&v58[20] = 2101;
              *&v58[22] = &v50;
              *&v58[30] = 1024;
              *&v58[32] = v25;
              _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "unicast assist _addRecordsFromPresence: (error) qhash %x addr %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P err %d", buf, 0x28u);
            }

            goto LABEL_42;
          }

          ++sUAPresence_Count_qhashes;
          v27 = xmmword_10016D2D8;
          if (!xmmword_10016D2D8)
          {
LABEL_53:
            v30 = mDNSLogCategory_Default;
            if (mDNS_SensitiveLoggingEnableCount)
            {
              v31 = mDNSLogCategory_Default == mDNSLogCategory_State;
            }

            else
            {
              v31 = 1;
            }

            if (v31)
            {
              if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_43;
              }
            }

            else
            {
              v30 = mDNSLogCategory_Default_redacted;
              if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_43;
              }
            }

            *buf = 67109120;
            *v58 = unsignedIntValue2;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "unicast assist (restart) - no active question for qnamehash %x", buf, 8u);
            goto LABEL_43;
          }

          while (1)
          {
            if (*(v27 + 342) == 12 && *(v27 + 200) == unsignedIntValue2)
            {
              v28 = *(v27 + 136);
              if (v28 == v19 || v28 == 0)
              {
                break;
              }
            }

            v27 = *(v27 + 8);
            if (!v27)
            {
              goto LABEL_53;
            }
          }

          v33 = &mDNSStorage[unsignedIntValue2 % 0x1F3 + 34];
          while (1)
          {
            v33 = *v33;
            if (!v33)
            {
              break;
            }

            if (*(v33 + 2) == unsignedIntValue2)
            {
              if (CacheGroupHasAddressOnInterface(v33, 12, &v50, v19))
              {
                goto LABEL_43;
              }

              break;
            }
          }

          mDNSCoreRestartQuestion(mDNSStorage, v27);
          v26 = _unicast_assist_cache_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v34 = "presence only";
            if (*(v45 + 19))
            {
              v34 = "known";
            }

            *buf = 136316163;
            *v58 = v34;
            *&v58[8] = 1024;
            *&v58[10] = unsignedIntValue2;
            *&v58[14] = 2160;
            *&v58[16] = 1752392040;
            *&v58[24] = 1045;
            *&v58[26] = 20;
            *&v58[30] = 2101;
            *&v58[32] = &v50;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "unicast assist _addRecordsFromPresence: restarted (%s) qhash %x addr %{sensitive, mask.hash, mdnsresponder:ip_addr}.20P", buf, 0x2Cu);
          }

LABEL_42:

LABEL_43:
          if (++v22 != v21)
          {
            continue;
          }

          break;
        }

        v35 = [v18 countByEnumeratingWithState:&v46 objects:v56 count:16];
        v21 = v35;
        if (v35)
        {
          continue;
        }

        break;
      }

      presenceCopy = v39;
LABEL_72:
      v11 = v40;
LABEL_31:

      v5 = v42;
LABEL_32:

      v6 = v6 + 1;
    }

    while (v6 != v5);
    v36 = [presenceCopy countByEnumeratingWithState:&v52 objects:v59 count:16];
    v5 = v36;
  }

  while (v36);
  if ((v41 & 1) == 0)
  {
LABEL_76:
    v37 = 0;
    goto LABEL_77;
  }

  ++sUAPresence_Count_update_devices_invalid;
  v37 = 1;
LABEL_77:

  return v37;
}

- (void)idlePresence:(int)presence
{
  v3 = *&presence;
  if ([(UAPresenceManager *)self presenceSubscribed])
  {
    if ([(UAPresenceManager *)self networkUpdateTime]&& (v3 - [(UAPresenceManager *)self networkUpdateTime]) >= 1001)
    {
      [(UAPresenceManager *)self handleNetworkUpdate:v3];
      [(UAPresenceManager *)self setNetworkUpdateTime:0];
    }

    if ([(UAPresenceManager *)self presenceUpdateTime]&& (v3 - [(UAPresenceManager *)self presenceUpdateTime]) >= 1001)
    {
      [(UAPresenceManager *)self updateInvalidFromPresence];

      [(UAPresenceManager *)self setPresenceUpdateTime:0];
    }
  }
}

- (void)assertPresence:(int)presence
{
  v4 = +[NSMutableArray array];
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  authRecords = [(UAPresenceManager *)self authRecords];
  allKeys = [authRecords allKeys];

  obj = allKeys;
  v51 = [allKeys countByEnumeratingWithState:&v70 objects:v89 count:16];
  v7 = 0;
  v8 = 0;
  if (v51)
  {
    v49 = *v71;
    v9 = @"ifhash";
    v10 = @"addr";
    selfCopy = self;
    v56 = v4;
    do
    {
      v11 = 0;
      do
      {
        if (*v71 != v49)
        {
          v12 = v11;
          objc_enumerationMutation(obj);
          v11 = v12;
        }

        v52 = v11;
        v13 = *(*(&v70 + 1) + 8 * v11);
        v14 = +[NSMutableArray array];
        authRecords2 = [(UAPresenceManager *)self authRecords];
        v16 = [authRecords2 objectForKeyedSubscript:v13];
        v68[0] = _NSConcreteStackBlock;
        v68[1] = 3221225472;
        v68[2] = __36__UAPresenceManager_assertPresence___block_invoke;
        v68[3] = &unk_1001514A8;
        v17 = v14;
        v69 = v17;
        [v16 enumerateObjectsUsingBlock:v68];

        if ([v17 count])
        {
          v57 = v17;
          networkAddrs = [(UAPresenceManager *)self networkAddrs];
          v67[0] = _NSConcreteStackBlock;
          v67[1] = 3221225472;
          v67[2] = __36__UAPresenceManager_assertPresence___block_invoke_2;
          v67[3] = &unk_1001514D0;
          v67[4] = v13;
          v19 = [networkAddrs filterObjectsUsingBlock:v67];

          v53 = v19;
          if ([v19 count])
          {
            v20 = v13;
            v21 = 1;
            v17 = v57;
            do
            {
              v66[0] = _NSConcreteStackBlock;
              v54 = v21;
              v22 = (v21 & 1) == 0;
              v23 = 16;
              if (v22)
              {
                v23 = 4;
              }

              v66[1] = 3221225472;
              v66[2] = __36__UAPresenceManager_assertPresence___block_invoke_3;
              v66[3] = &__block_descriptor_40_e22_B16__0__NSDictionary_8l;
              v66[4] = v23;
              v24 = [v53 filterObjectsUsingBlock:v66];
              v25 = v24;
              if (v24)
              {
                v64 = 0u;
                v65 = 0u;
                v62 = 0u;
                v63 = 0u;
                v61 = [v24 countByEnumeratingWithState:&v62 objects:v88 count:16];
                if (v61)
                {
                  v60 = *v63;
                  v58 = v25;
                  do
                  {
                    v55 = v8;
                    for (i = 0; i != v61; ++i)
                    {
                      if (*v63 != v60)
                      {
                        objc_enumerationMutation(v58);
                      }

                      v27 = *(*(&v62 + 1) + 8 * i);
                      v28 = [v27 objectForKeyedSubscript:v9];
                      v29 = [v27 objectForKeyedSubscript:v10];
                      v86[0] = v9;
                      v86[1] = v10;
                      v87[0] = v28;
                      v87[1] = v29;
                      v86[2] = @"qhashes";
                      v87[2] = v17;
                      v30 = [NSDictionary dictionaryWithObjects:v87 forKeys:v86 count:3];
                      [v4 addObject:v30];

                      v31 = _unicast_assist_cache_log();
                      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                      {
                        describeQHashes = [v17 describeQHashes];
                        [v29 describeAddr];
                        v59 = v7;
                        v33 = v10;
                        v35 = v34 = v9;
                        v36 = v20;
                        unsignedIntValue = [v20 unsignedIntValue];
                        unsignedIntValue2 = [v28 unsignedIntValue];
                        *buf = 138413315;
                        v77 = describeQHashes;
                        v78 = 2160;
                        v79 = 1752392040;
                        v80 = 2117;
                        v81 = v35;
                        v82 = 1024;
                        v83 = unsignedIntValue;
                        v20 = v36;
                        v17 = v57;
                        v84 = 1024;
                        v85 = unsignedIntValue2;
                        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "unicast assist assertPresence (auth) qhashes %@ addr %{sensitive, mask.hash}@ ifid %2.2u ifhash %x", buf, 0x2Cu);

                        v9 = v34;
                        v10 = v33;
                        v7 = v59;

                        v4 = v56;
                      }

                      v7 += [v17 count];
                    }

                    v8 = &v61[v55];
                    v25 = v58;
                    v61 = [v58 countByEnumeratingWithState:&v62 objects:v88 count:16];
                  }

                  while (v61);
                }
              }

              v21 = 0;
            }

            while ((v54 & 1) != 0);
          }

          else
          {
            v17 = v57;
          }
        }

        v11 = v52 + 1;
        self = selfCopy;
      }

      while ((v52 + 1) != v51);
      v51 = [obj countByEnumeratingWithState:&v70 objects:v89 count:16];
    }

    while (v51);
  }

  if ([v4 count] || (-[UAPresenceManager lastAuthUpdate](self, "lastAuthUpdate"), v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "count"), v39, v40))
  {
    lastAuthUpdate = [(UAPresenceManager *)self lastAuthUpdate];
    v42 = [v4 isEqualToArray:lastAuthUpdate];

    if ((v42 & 1) == 0)
    {
      ++sUAPresence_Count_assert;
      sUAPresence_Count_assert_addrs += v8;
      sUAPresence_Count_assert_hashes += v7;
      v43 = [SKPresencePayload alloc];
      v74[0] = @"version";
      v74[1] = @"auth_records";
      v75[0] = &off_1001555F0;
      v75[1] = v4;
      v44 = [NSDictionary dictionaryWithObjects:v75 forKeys:v74 count:2];
      v45 = [v43 initWithDictionary:v44];

      v46 = [[SKPresenceAssertionOptions alloc] initWithPriority:1];
      presence = [(UAPresenceManager *)self presence];
      [presence assertPresenceWithPresencePayload:v45 assertionOptions:v46 completion:&__block_literal_global_94];

      [(UAPresenceManager *)self setPresenceAsserted:1];
    }
  }

  [(UAPresenceManager *)self setLastAuthUpdate:v4];
}

void __36__UAPresenceManager_assertPresence___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [a2 qhash]);
  [v2 addObject:v3];
}

uint64_t __36__UAPresenceManager_assertPresence___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"ifid"];
  if ([*(a1 + 32) unsignedIntValue])
  {
    v4 = [v3 isEqualToNumber:*(a1 + 32)];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

BOOL __36__UAPresenceManager_assertPresence___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"addr"];
  v4 = [v3 length] == *(a1 + 32);

  return v4;
}

void __36__UAPresenceManager_assertPresence___block_invoke_92(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _unicast_assist_cache_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [(NSError *)v2 description];
      v5 = 138543362;
      v6 = v4;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "unicast assist SKPresence assertPresenceWithCompletion: %{public}@", &v5, 0xCu);
    }
  }
}

- (void)handleAuthCheck:(int)check
{
  v3 = *&check;
  selfCopy = self;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  authRecords = [(UAPresenceManager *)self authRecords];
  allKeys = [authRecords allKeys];

  obj = allKeys;
  v25 = [allKeys countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v25)
  {
    v8 = *v30;
    v9 = v27;
    *&v7 = 138412546;
    v22 = v7;
    v23 = *v30;
    do
    {
      v10 = 0;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * v10);
        authRecords2 = [(UAPresenceManager *)selfCopy authRecords];
        v13 = [authRecords2 objectForKeyedSubscript:v11];

        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v27[0] = __37__UAPresenceManager_handleAuthCheck___block_invoke;
        v27[1] = &__block_descriptor_36_e24_B32__0__UAQhash_8Q16_B24l;
        v28 = v3;
        v14 = [v13 indexesOfObjectsPassingTest:v26];
        if ([v14 count])
        {
          v15 = _unicast_assist_cache_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = [v13 objectsAtIndexes:v14];
            [v16 describeUAQHashes];
            v17 = selfCopy;
            v18 = v3;
            v20 = v19 = v9;
            unsignedIntValue = [v11 unsignedIntValue];
            *buf = v22;
            v34 = v20;
            v35 = 1024;
            v36 = unsignedIntValue;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "unicast assist handleAuthCheck aged out %@ qhashes ifid %2.2u", buf, 0x12u);

            v9 = v19;
            v3 = v18;
            selfCopy = v17;

            v8 = v23;
          }

          [v13 removeObjectsAtIndexes:v14];
          if (![(UAPresenceManager *)selfCopy authUpdateTime])
          {
            [(UAPresenceManager *)selfCopy setAuthUpdateTime:v3];
          }
        }

        v10 = v10 + 1;
      }

      while (v25 != v10);
      v25 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v25);
  }
}

BOOL __37__UAPresenceManager_handleAuthCheck___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = 0;
  if ([v3 removed])
  {
    v4 = *(a1 + 32);
    if ((v4 - [v3 time]) > 1200000)
    {
      v5 = 1;
    }
  }

  return v5;
}

- (void)handleNetworkUpdate:(int)update
{
  v3 = *&update;
  v5 = +[NSMutableArray array];
  v6 = *mDNSStorage[0];
  if (*mDNSStorage[0])
  {
    v7 = &cchpke_params_sizeof_kdf_hash_ptr;
    v8 = &cchpke_params_sizeof_kdf_hash_ptr;
    v9 = &cchpke_params_sizeof_kdf_hash_ptr;
    do
    {
      if (*(v6 + 3606) != 101 || *(v6 + 3607) != 110 || !*(v6 + 3696) || !*(v6 + 3768) || !*(v6 + 3671))
      {
        goto LABEL_19;
      }

      v26 = 0;
      v10 = *(v6 + 3560);
      if (v10 == 6)
      {
        if (*(v6 + 3564) == 254 && (*(v6 + 3565) & 0xC0) == 0x80)
        {
          v11 = v7[248];
          v12 = v6 + 3564;
          v13 = 16;
          goto LABEL_11;
        }
      }

      else if (v10 == 4)
      {
        v11 = v7[248];
        v12 = v6 + 3564;
        v13 = 4;
LABEL_11:
        v14 = [v11 dataWithBytes:v12 length:v13];
        if (v14 && !_unicast_assist_hash_for_interface(*(v6 + 3552), *(v6 + 3560), &v26))
        {
          v27[0] = @"ifid";
          v15 = [v8[286] numberWithUnsignedInt:*(v6 + 3552)];
          *buf = v15;
          v27[1] = @"ifhash";
          v16 = [v8[286] numberWithUnsignedInt:v26];
          v27[2] = @"addr";
          *&buf[8] = v16;
          *&buf[16] = v14;
          [v9[250] dictionaryWithObjects:buf forKeys:v27 count:3];
          v17 = v9;
          v19 = v18 = v7;
          [v5 addObject:v19];

          v7 = v18;
          v9 = v17;

          v8 = &cchpke_params_sizeof_kdf_hash_ptr;
        }

        goto LABEL_18;
      }

      v14 = 0;
LABEL_18:

LABEL_19:
      v6 = *(v6 + 3680);
    }

    while (v6);
  }

  if ([v5 count])
  {
    v20 = v5;
  }

  else
  {
    v20 = 0;
  }

  networkAddrs = [(UAPresenceManager *)self networkAddrs];

  if (networkAddrs != v20 && [(UAPresenceManager *)self newSharableAddresses:v20])
  {
    v22 = _unicast_assist_cache_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      networkAddrs2 = [(UAPresenceManager *)self networkAddrs];
      v24 = [networkAddrs2 count];
      v25 = [v20 count];
      *buf = 134218240;
      *&buf[4] = v24;
      *&buf[12] = 2048;
      *&buf[14] = v25;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "unicast assist handleNetworkUpdate (changed) was %lu now %lu", buf, 0x16u);
    }

    [(UAPresenceManager *)self setNetworkAddrs:v20];
    [(UAPresenceManager *)self setPresenceUpdateTime:v3];
  }
}

- (void)removeQhash:(unsigned int)qhash forInterface:(mDNSInterfaceID_dummystruct *)interface
{
  interfaceCopy = interface;
  v7 = objc_autoreleasePoolPush();
  v8 = [NSNumber numberWithUnsignedInteger:interfaceCopy];
  authRecords = [(UAPresenceManager *)self authRecords];
  v10 = [authRecords objectForKey:v8];

  if (v10)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __46__UAPresenceManager_removeQhash_forInterface___block_invoke;
    v13[3] = &__block_descriptor_36_e24_B32__0__UAQhash_8Q16_B24l;
    qhashCopy = qhash;
    v11 = [v10 indexOfObjectPassingTest:v13];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = [v10 objectAtIndex:v11];
      [v12 setTime:dword_10016D258];
      [v12 setRemoved:1];
    }
  }

  objc_autoreleasePoolPop(v7);
}

- (void)addQhash:(unsigned int)qhash forInterface:(mDNSInterfaceID_dummystruct *)interface
{
  interfaceCopy = interface;
  v5 = *&qhash;
  v7 = objc_autoreleasePoolPush();
  v8 = [NSNumber numberWithUnsignedInteger:interfaceCopy];
  authRecords = [(UAPresenceManager *)self authRecords];
  v10 = [authRecords objectForKey:v8];

  if (!v10)
  {
    v10 = +[NSMutableArray array];
    authRecords2 = [(UAPresenceManager *)self authRecords];
    [authRecords2 setObject:v10 forKey:v8];
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __43__UAPresenceManager_addQhash_forInterface___block_invoke;
  v15[3] = &__block_descriptor_36_e24_B32__0__UAQhash_8Q16_B24l;
  v16 = v5;
  v12 = [v10 indexOfObjectPassingTest:v15];
  v13 = dword_10016D258;
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [UAQhash qhash:v5 withTime:dword_10016D258];
    [v10 addObject:v14];
  }

  else
  {
    v14 = [v10 objectAtIndex:v12];
    [v14 setTime:v13];
    [v14 setRemoved:0];
  }

  [(UAPresenceManager *)self setAuthUpdateTime:v13];

  objc_autoreleasePoolPop(v7);
}

- (BOOL)newSharableAddresses:(id)addresses
{
  addressesCopy = addresses;
  v5 = +[NSMutableDictionary dictionary];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = addressesCopy;
  v6 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v53;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v53 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v52 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"ifid"];
        v12 = [v5 objectForKeyedSubscript:v11];
        if (!v12)
        {
          v12 = +[NSMutableSet set];
          [v5 setObject:v12 forKeyedSubscript:v11];
        }

        v13 = [v10 objectForKeyedSubscript:@"ifhash"];
        [v12 addObject:v13];
      }

      v7 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v7);
  }

  localNetworkHashes = [(UAPresenceManager *)self localNetworkHashes];
  allKeys = [localNetworkHashes allKeys];
  v16 = [NSMutableSet setWithArray:allKeys];

  allKeys2 = [v5 allKeys];
  v18 = [NSSet setWithArray:allKeys2];
  [v16 minusSet:v18];

  v19 = [v16 count];
  v20 = v19 != 0;
  if (v19)
  {
    localNetworkHashes2 = [(UAPresenceManager *)self localNetworkHashes];
    allObjects = [v16 allObjects];
    [localNetworkHashes2 removeObjectsForKeys:allObjects];
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  allKeys3 = [v5 allKeys];
  v23 = [allKeys3 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v49;
    v45 = v5;
    do
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v49 != v25)
        {
          objc_enumerationMutation(allKeys3);
        }

        v27 = *(*(&v48 + 1) + 8 * j);
        v28 = [v5 objectForKeyedSubscript:v27];
        localNetworkHashes3 = [(UAPresenceManager *)self localNetworkHashes];
        v30 = [localNetworkHashes3 objectForKeyedSubscript:v27];

        if (v30)
        {
          if ([v30 intersectsSet:v28])
          {
            goto LABEL_22;
          }

          [v30 removeAllObjects];
        }

        else
        {
          v30 = +[NSMutableOrderedSet orderedSet];
          localNetworkHashes4 = [(UAPresenceManager *)self localNetworkHashes];
          [localNetworkHashes4 setObject:v30 forKeyedSubscript:v27];
        }

        v20 = 1;
LABEL_22:
        v32 = [v30 set];
        [v28 minusSet:v32];

        if ([v28 count])
        {
          v33 = [v30 count];
          if (&v33[[v28 count]] >= 6)
          {
            v34 = v24;
            v35 = v25;
            selfCopy = self;
            v37 = v20;
            v38 = [v30 count];
            v39 = [v28 count] + v38 - 5;
            v40 = [v30 count];
            v41 = [v30 count];
            if (v39 < v40)
            {
              v41 = [v28 count] + v41 - 5;
            }

            [v30 removeObjectsInRange:{0, v41}];
            v20 = v37;
            self = selfCopy;
            v25 = v35;
            v24 = v34;
            v5 = v45;
          }

          allObjects2 = [v28 allObjects];
          [v30 addObjectsFromArray:allObjects2];
        }
      }

      v24 = [allKeys3 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v24);
  }

  return v20;
}

- (void)releaseSubscriptions
{
  if ([(UAPresenceManager *)self presenceSubscribed])
  {
    presence = [(UAPresenceManager *)self presence];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __41__UAPresenceManager_releaseSubscriptions__block_invoke;
    v6[3] = &unk_100151460;
    v6[4] = self;
    [presence releaseTransientSubscriptionAssertionWithCompletion:v6];
  }

  v4 = _unicast_assist_cache_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    presence2 = [(UAPresenceManager *)self presence];
    *buf = 138543362;
    v8 = presence2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "unicast assist SKPresence releaseSubscriptions: %{public}@", buf, 0xCu);
  }
}

void __41__UAPresenceManager_releaseSubscriptions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _unicast_assist_cache_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [v3 description];
      v7 = 138543362;
      v8 = v6;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "unicast assist SKPresence releaseTransientSubscriptionAssertionWithCompletion: %{public}@", &v7, 0xCu);
    }
  }

  [*(a1 + 32) setPresenceSubscribed:0];
  if ([*(a1 + 32) presenceAsserted])
  {
    v5 = [*(a1 + 32) presence];
    [v5 releasePresenceWithCompletion:&__block_literal_global_58];

    [*(a1 + 32) setPresenceAsserted:0];
  }
}

void __41__UAPresenceManager_releaseSubscriptions__block_invoke_56(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _unicast_assist_cache_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [(NSError *)v2 description];
      v5 = 138543362;
      v6 = v4;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "unicast assist SKPresence releasePresenceWithCompletion: %{public}@", &v5, 0xCu);
    }
  }
}

- (void)retainSubscription
{
  presence = [(UAPresenceManager *)self presence];
  [presence retainTransientSubscriptionAssertionWithCompletion:&__block_literal_global_4576];

  v4 = _unicast_assist_cache_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "unicast assist SKPresence retainSubscription", v5, 2u);
  }

  [(UAPresenceManager *)self setPresenceSubscribed:1];
}

void __39__UAPresenceManager_retainSubscription__block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _unicast_assist_cache_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [(NSError *)v2 description];
      v5 = 138543362;
      v6 = v4;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "unicast assist SKPresence retainTransientSubscriptionAssertionWithCompletion: %{public}@", &v5, 0xCu);
    }
  }
}

- (void)dealloc
{
  v3 = _unicast_assist_cache_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "unicast assist SKPresence dealloc:", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = UAPresenceManager;
  [(UAPresenceManager *)&v4 dealloc];
}

- (UAPresenceManager)init
{
  v24.receiver = self;
  v24.super_class = UAPresenceManager;
  v2 = [(UAPresenceManager *)&v24 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    skUpdates = v2->_skUpdates;
    v2->_skUpdates = v3;

    v5 = +[NSMutableDictionary dictionary];
    authRecords = v2->_authRecords;
    v2->_authRecords = v5;

    v7 = +[NSMutableDictionary dictionary];
    localNetworkHashes = v2->_localNetworkHashes;
    v2->_localNetworkHashes = v7;

    v9 = mDNS_TimeNow(mDNSStorage);
    if (v9 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    v2->_networkUpdateTime = v10;
    v2->_authCheckTime = v10;
    v2->_lastUnsubscribeTime = v10;
    v11 = [[SKPresenceOptions alloc] initWithServiceIdentifier:@"com.apple.mDNSResponder"];
    [v11 setIsDaemonIdleExitEnabled:1];
    [v11 setIsPersonal:1];
    v12 = [[SKPresence alloc] initWithPresenceIdentifier:@"com.apple.mDNSResponder" options:v11];
    presence = v2->_presence;
    v2->_presence = v12;

    v14 = v2->_presence;
    v15 = dispatch_queue_create("com.apple.mDNSResponder.unicast_assist.SKPresence", 0);
    [(SKPresence *)v14 addDelegate:v2 queue:v15];

    v16 = _unicast_assist_cache_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = v2->_presence;
      *buf = 138543362;
      v26 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "unicast assist SKPresence init: _presence %{public}@", buf, 0xCu);
    }

    v18 = v2->_presence;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = __25__UAPresenceManager_init__block_invoke;
    v22[3] = &unk_1001513D8;
    v19 = v2;
    v23 = v19;
    [(SKPresence *)v18 hasInitialCloudKitImportOccurredWithCompletion:v22];
    v20 = v19;
  }

  return v2;
}

void __25__UAPresenceManager_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _unicast_assist_cache_log();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = [v5 description];
      v9 = 138543362;
      v10 = v8;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "unicast assist SKPresence hasInitialCloudKitImportOccurredWithCompletion: %{public}@", &v9, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 67109120;
      LODWORD(v10) = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "unicast assist SKPresence hasInitialCloudKitImportOccurredWithCompletion: %d", &v9, 8u);
    }

    [*(a1 + 32) setPresenceReady:a2];
  }
}

@end