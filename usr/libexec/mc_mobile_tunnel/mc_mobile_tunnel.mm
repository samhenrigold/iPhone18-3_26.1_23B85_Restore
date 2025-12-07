void sub_10000124C(id a1)
{
  qword_100014BB8 = objc_opt_new();

  _objc_release_x1();
}

void sub_10000141C(uint64_t a1)
{
  v3 = [[MMTConnection alloc] initWithLockdownConnection:*(a1 + 40)];
  v2 = [*(a1 + 32) activeConnections];
  [v2 addObject:v3];

  [(MMTConnection *)v3 start];
}

void sub_1000015D4(uint64_t a1)
{
  [*(a1 + 32) lockdownConnection];
  lockdown_disconnect();
  v2 = [*(a1 + 40) activeConnections];
  [v2 removeObject:*(a1 + 32)];
}

void sub_100001808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001824(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained parser];
  [v1 setEscalationBlock:0];

  v2 = objc_opt_new();
  [WeakRetained setParser:v2];
}

void sub_100002670(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002728;
  v7[3] = &unk_100010748;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_100002728(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) parseErrorFromResponse:?];
    v3 = kMDMPSettingsStatusKey;
    v4 = [v2 objectForKey:kMDMPSettingsStatusKey];
    v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
    if (v4)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v6 = v4;
      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v15;
        do
        {
          v10 = 0;
          do
          {
            if (*v15 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = [*(a1 + 40) parseErrorFromResponse:*(*(&v14 + 1) + 8 * v10)];
            [v5 addObject:v11];

            v10 = v10 + 1;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v8);
      }

      [v2 setObject:v5 forKey:v3];
    }

    [*(a1 + 40) sendMessage:v2];
    v12 = [*(a1 + 40) workQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002928;
    block[3] = &unk_100010798;
    block[4] = *(a1 + 40);
    dispatch_async(v12, block);
  }
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = *DMCLogObjects();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14[0]) = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "mc_mobile_tunnel starting.", v14, 2u);
  }

  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v3 = dispatch_queue_create("mc_mobile_tunnel Catalyst Queue", v2);
  CATSetCatalystQueue();

  v4 = getpwnam("mobile");
  if (v4)
  {
    pw_uid = v4->pw_uid;
  }

  else
  {
    pw_uid = 501;
  }

  geteuid();
  v6 = seteuid(pw_uid);
  if (v6)
  {
    sub_1000082F4(v6, v7);
  }

  v8 = lockdown_checkin_xpc();
  if (v8)
  {
    v12 = v8;
    v13 = *DMCLogObjects();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14[0] = 67109120;
      v14[1] = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Failed to checkin with lockdown: 0x%08x", v14, 8u);
    }

    exit(1);
  }

  objc_autoreleasePoolPop(v0);
  v9 = +[NSRunLoop currentRunLoop];
  [v9 run];

  v10 = *DMCLogObjects();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14[0]) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "mc_mobile_tunnel shutting down.", v14, 2u);
  }

  return 0;
}

void sub_100002BA4(id a1, _lockdown_connection *a2, __CFDictionary *a3)
{
  v4 = +[MMTConnectionManager sharedInstance];
  [v4 createConnectionForLockdownConnection:a2];
}

void sub_100002E54(void *a1, void *a2)
{
  v8 = a2;
  v3 = [v8 objectForKeyedSubscript:kMCTPStatusKey];
  if ([v3 isEqualToString:kMCTPStatusError])
  {
    v4 = [v8 objectForKey:kMCTPErrorObjectKey];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 domain];
      if ([v6 isEqualToString:MDMErrorDomain])
      {
        v7 = [v5 code];

        if (v7 != 12021)
        {
          goto LABEL_9;
        }

LABEL_7:
        [*(a1[4] + 8) processRequest:a1[5] assertion:a1[6] completionBlock:a1[7]];
        goto LABEL_10;
      }
    }
  }

  else if ([v3 isEqualToString:kMCTPStatusCommandFormatError])
  {
    goto LABEL_7;
  }

LABEL_9:
  (*(a1[7] + 16))();
LABEL_10:
}

id sub_100003020(uint64_t a1)
{
  v2 = [NSSet alloc];
  v16[0] = kMDMPRequestTypeDeviceInformation;
  v16[1] = kMDMPRequestTypeProfileList;
  v16[2] = kMDMPRequestTypeRemoveProfile;
  v16[3] = kMDMPRequestTypeInstallProfile;
  v16[4] = kMDMPRequestTypeDeviceLock;
  v16[5] = kMDMPRequestTypeEraseDevice;
  v16[6] = kMDMPRequestTypeRestartDevice;
  v16[7] = kMDMPRequestTypeShutDownDevice;
  v16[8] = kMDMPRequestTypeCertificateList;
  v16[9] = kMDMPRequestTypeProvisioningProfileList;
  v16[10] = kMDMPRequestTypeInstallProvisioningProfile;
  v16[11] = kMDMPRequestTypeRemoveProvisioningProfile;
  v16[12] = kMDMPRequestTypeInstalledApplicationList;
  v16[13] = kMDMPRequestTypeValidateApplications;
  v16[14] = kMDMPRequestTypeRestrictions;
  v16[15] = kMDMPRequestTypeSecurityInfo;
  v16[16] = kMDMPRequestTypeClearPasscode;
  v16[17] = kMDMPRequestTypeClearRestrictionsPassword;
  v16[18] = kMDMPRequestTypeSettings;
  v16[19] = kMDMPRequestTypeRequestMirroring;
  v16[20] = kMDMPRequestTypeStopMirroring;
  v16[21] = kMDMPRequestTypeActivationLockBypassCode;
  v16[22] = kMDMPRequestTypeClearActivationLockBypassCode;
  v16[23] = kMDMPRequestTypeDeviceConfigured;
  v16[24] = kMDMPRequestTypeScheduleOSUpdate;
  v16[25] = kMDMPRequestTypeScheduleOSUpdateScan;
  v16[26] = kMDMPRequestTypeAvailableOSUpdates;
  v16[27] = kMDMPRequestTypeOSUpdateStatus;
  v3 = [NSArray arrayWithObjects:v16 count:28];
  v4 = [v2 initWithArray:v3];
  v5 = qword_100014BD8;
  qword_100014BD8 = v4;

  v6 = [NSSet alloc];
  v15[0] = @"DefaultMDMOptions";
  v15[1] = @"SetDefaultMDMOptions";
  v15[2] = @"ProceedWithKeybagMigration";
  v15[3] = kMDMPRequestTypeInstallProfileSilent;
  v15[4] = kMDMPRequestTypeRequestUnlockToken;
  v15[5] = @"GetProfileList";
  v15[6] = @"InstallProfile";
  v15[7] = @"RemoveProfile";
  v15[8] = @"StoreProfile";
  v15[9] = @"GetStoredProfile";
  v15[10] = @"GetCloudConfiguration";
  v15[11] = @"SetCloudConfiguration";
  v15[12] = @"Flush";
  v7 = [NSArray arrayWithObjects:v15 count:13];
  v8 = [v6 initWithArray:v7];
  v9 = qword_100014BE0;
  qword_100014BE0 = v8;

  v14.receiver = *(a1 + 32);
  v14.super_class = MTChaperoneParser;
  v10 = objc_msgSendSuper2(&v14, "_allCommands");
  v11 = [v10 mutableCopy];
  v12 = qword_100014BD0;
  qword_100014BD0 = v11;

  [qword_100014BD0 intersectSet:qword_100014BD8];
  return [qword_100014BD0 unionSet:qword_100014BE0];
}

void sub_1000034A8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MTChaperoneParser responseWithStatus:kMCTPStatusCommandFormatError];
  (*(v1 + 16))(v1, v2);
}

void sub_100003B94(id a1)
{
  if (IOMainPort(bootstrap_port, &dword_100014BF0))
  {
    v1 = *DMCLogObjects();
    if (!os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v4 = 0;
    v2 = "Cannot create IO port to read NVRAM values.";
    v3 = &v4;
    goto LABEL_4;
  }

  dword_100014BF4 = IORegistryEntryFromPath(dword_100014BF0, "IODeviceTree:/options");
  if (!dword_100014BF4)
  {
    v1 = *DMCLogObjects();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v5 = 0;
      v2 = "Cannot create IO Registry entry.";
      v3 = &v5;
LABEL_4:
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, v2, v3, 2u);
    }
  }
}

void sub_100004130(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MTChaperoneParser responseWithStatus:kMCTPStatusAcknowledged];
  (*(v1 + 16))(v1, v2);
}

void sub_1000041A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [MTChaperoneParser responseWithStatus:kMCTPStatusAcknowledged];
    (*(v1 + 16))(v1, v2);
  }
}

void sub_100004238(uint64_t a1)
{
  v4 = [NSError errorWithDomain:DMCKeybagErrorDomain code:37001 userInfo:0];
  v2 = *(a1 + 32);
  v3 = [MTChaperoneParser responseWithError:v4];
  (*(v2 + 16))(v2, v3);
}

void sub_1000042D0(uint64_t a1)
{
  v4 = [NSError errorWithDomain:DMCKeybagErrorDomain code:37000 userInfo:0];
  v2 = *(a1 + 32);
  v3 = [MTChaperoneParser responseWithError:v4];
  (*(v2 + 16))(v2, v3);
}

void sub_100005238(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = *DMCLogObjects();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [(NSError *)v2 DMCVerboseDescription];
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Store profile error. Error: %{public}@", &v6, 0xCu);
    }
  }
}

void sub_100005488(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [MTIPCUTunnelParser responseWithStatus:kMCTPStatusAcknowledged];
  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:@"ProfileData"];
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

void sub_100005858(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v6 = [MTIPCUTunnelParser responseWithStatus:kMCTPStatusAcknowledged];
    goto LABEL_9;
  }

  if (![*(a1 + 32) _isXPCInterruptionError:v3] || objc_msgSend(*(a1 + 32), "setCloudConfigurationCommandRetryCount") > 2)
  {
    [*(a1 + 32) setSetCloudConfigurationCommandRetryCount:0];
    v6 = [MTIPCUTunnelParser responseWithError:v3];
LABEL_9:
    v5 = v6;
    goto LABEL_10;
  }

  [*(a1 + 32) setSetCloudConfigurationCommandRetryCount:{objc_msgSend(*(a1 + 32), "setCloudConfigurationCommandRetryCount") + 1}];
  v4 = *DMCLogObjects();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Couldn't communicate with the helper application, retrying the commandSetCloudConfiguration", v8, 2u);
  }

  [*(a1 + 32) _commandSetCloudConfiguration:*(a1 + 40) completionBlock:*(a1 + 48)];
  v5 = 0;
LABEL_10:
  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v5);
  }
}

void sub_100005DAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:kMCTPErrorObjectKey];
  if (v4 && [*(a1 + 32) _isXPCInterruptionError:v4] && objc_msgSend(*(a1 + 32), "downloadAndApplyCloudConfigurationCommandRetryCount") <= 2)
  {
    [*(a1 + 32) setDownloadAndApplyCloudConfigurationCommandRetryCount:{objc_msgSend(*(a1 + 32), "downloadAndApplyCloudConfigurationCommandRetryCount") + 1}];
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Couldn't communicate with the helper application, retrying the commandDownloadAndApplyCloudConfiguration", buf, 2u);
    }

    [*(a1 + 32) _commandDownloadAndApplyCloudConfiguration:*(a1 + 40) completionBlock:*(a1 + 48)];
  }

  else
  {
    [*(a1 + 32) setDownloadAndApplyCloudConfigurationCommandRetryCount:0];
    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = dispatch_get_global_queue(0, 0);
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100005F2C;
      v8[3] = &unk_1000109A0;
      v10 = v6;
      v9 = v3;
      dispatch_async(v7, v8);
    }
  }
}

void sub_100005F40(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1[4] _configuratorCloudConfigurationErrorWithCloudConfigDetails:v5 error:a2];
  if (v6)
  {
    v7 = a1[6];
    v8 = [objc_opt_class() responseWithError:v6];
    v7[2](v7, v8);
  }

  else
  {
    v9 = [a1[5] objectForKeyedSubscript:@"MDMUsername"];
    v10 = [a1[5] objectForKeyedSubscript:@"MDMPassword"];
    v11 = [v5 objectForKeyedSubscript:kCCConfigurationURLKey];
    v12 = [NSURL URLWithString:v11];

    v13 = [v5 objectForKeyedSubscript:kCCAnchorCertificatesKey];
    v14 = certificatesFromDERCertificateDataArray();
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10000612C;
    v17[3] = &unk_100010AE8;
    v15 = a1[6];
    v16 = a1[4];
    v19 = v15;
    v17[4] = v16;
    v18 = v5;
    [MDMMCInterface retrieveCloudConfigurationFromURL:v12 username:v9 password:v10 anchorCertificates:v14 completion:v17];
  }
}

void sub_10000612C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 48);
    v8 = [objc_opt_class() responseWithError:v5];
    (*(v7 + 16))(v7, v8);
  }

  else
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100006258;
    v12[3] = &unk_100010AC0;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 32);
    v15 = v10;
    v12[4] = v11;
    v13 = v6;
    v14 = *(a1 + 40);
    [MDMMCInterface storeCloudConfigurationDetails:v9 completion:v12];
  }
}

void sub_100006258(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 56);
    v5 = [objc_opt_class() responseWithError:v3];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    v6 = +[MDMClient sharedClient];
    [v6 monitorDEPPushTokenIfNeededWithCompletion:&stru_1000109E8];

    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006468;
    block[3] = &unk_100010A98;
    v8 = *(a1 + 40);
    v9 = *(a1 + 56);
    *&v10 = v8;
    *(&v10 + 1) = *(a1 + 32);
    v12 = v10;
    *&v11 = *(a1 + 48);
    *(&v11 + 1) = v9;
    v14 = v12;
    v15 = v11;
    dispatch_async(v7, block);
  }
}

void sub_1000063BC(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = *DMCLogObjects();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138543362;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to monitor DEP push token changes with error: %{public}@", &v4, 0xCu);
    }
  }
}

void sub_100006468(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100006524;
  v6[3] = &unk_100010A70;
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = v3;
  v6[4] = v4;
  v7 = v5;
  [MDMMCInterface storeProfileData:v2 completion:v6];
}

void sub_100006524(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 48);
    v5 = [objc_opt_class() responseWithError:v3];
    (*(v4 + 16))(v4, v5);
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100006620;
    v8[3] = &unk_100010978;
    v6 = *(a1 + 40);
    v7 = *(a1 + 32);
    v9 = v6;
    v10 = v7;
    v11 = *(a1 + 48);
    [MDMMCInterface installStoredProfileDataWithCompletion:v8];
  }
}

void sub_100006620(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    [MDMMCInterface storeCloudConfigurationDetails:*(a1 + 32) completion:&stru_100010A08];
    [MDMMCInterface storeProfileData:0 completion:&stru_100010A48];
    [objc_opt_class() responseWithError:v5];
  }

  else
  {
    v3 = [*(a1 + 32) mutableCopy];
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:kCCCloudConfigurationUICompleteKey];
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:kCCCloudConfigurationWasAppliedKey];
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:kCCPostSetupProfileWasInstalledKey];
    [MDMMCInterface storeCloudConfigurationDetails:v3 completion:&stru_100010A28];

    [MDMMCInterface storeProfileData:0 completion:&stru_100010A48];
    [objc_opt_class() responseWithStatus:kMCTPStatusAcknowledged];
  }
  v4 = ;
  (*(*(a1 + 48) + 16))();
}

void sub_100006774(id a1, NSError *a2)
{
  v2 = a2;
  v3 = *DMCLogObjects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to revert to original cloud configuration. This means that AwaitDeviceConfigured will remain set to YES. Error: %{public}@", &v4, 0xCu);
  }
}

void sub_10000681C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = *DMCLogObjects();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138543362;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to set ConfigurationWasApplied to YES. Error: %{public}@", &v4, 0xCu);
    }
  }
}

void sub_1000068C8(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = *DMCLogObjects();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [(NSError *)v2 DMCVerboseDescription];
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Clearing store profile error. Error: %{public}@", &v6, 0xCu);
    }
  }
}

void sub_100006A48(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [MTIPCUTunnelParser responseWithError:v3];
  }

  else
  {
    [MTIPCUTunnelParser responseWithStatus:kMCTPStatusAcknowledged];
  }
  v4 = ;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100006B4C;
    v7[3] = &unk_1000109A0;
    v9 = v5;
    v8 = v4;
    dispatch_async(v6, v7);
  }
}

void sub_100006B4C(uint64_t a1)
{
  (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 32));
  v1 = *DMCLogObjects();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Even more Logging", v2, 2u);
  }
}

void sub_100006E58(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *DMCLogObjects();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 DMCVerboseDescription];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Could not erase device: %{public}@", &v7, 0xCu);
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }
}

void sub_100007680(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = dispatch_get_global_queue(0, 0);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000774C;
    v6[3] = &unk_1000109A0;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_100007760(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v9 = [*(a1 + 32) _configuratorProvisionalEnrollmentErrorWithDetails:v5 error:a2];
  if (v9)
  {
    v6 = *(a1 + 40);
    v7 = [objc_opt_class() responseWithError:v9];
    (*(v6 + 16))(v6, v7);
  }

  else
  {
    v8 = [MTIPCUTunnelParser responseWithStatus:kMCTPStatusAcknowledged];
    v7 = v8;
    if (v5)
    {
      [v8 setObject:v5 forKeyedSubscript:@"ProvisionalEnrollmentDetails"];
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), v7);
  }
}

void sub_1000082C4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

void sub_1000082F4(uint64_t a1, uint64_t a2)
{
  v2 = *DMCLogObjects();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "seteuid failed. Exiting.", v3, 2u);
  }

  abort();
}

void sub_100008360()
{
  sub_1000082B4();
  sub_1000082A0();
  sub_1000082C4(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000083E8()
{
  sub_1000082B4();
  sub_1000082A0();
  sub_1000082C4(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_100008470()
{
  sub_1000082B4();
  sub_1000082A0();
  sub_1000082C4(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_1000084F8()
{
  sub_1000082B4();
  sub_1000082A0();
  sub_1000082C4(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}

void sub_100008580()
{
  sub_1000082B4();
  sub_1000082A0();
  sub_1000082C4(&_mh_execute_header, v0, v1, "<%s %s:%lu>", v2, v3, v4, v5);
}