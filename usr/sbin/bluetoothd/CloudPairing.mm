@interface CloudPairing
+ (id)sharedInstance;
- (BOOL)_generateKeys;
- (BOOL)generateKeys;
- (BOOL)getAccountStatus;
- (BOOL)handleXPCUnpairCommand:(id)command;
- (BTCloudServicesClient)cloudClient;
- (CloudPairing)init;
- (id)_generateCloudPairingIDWithResponse:(id)response localKeys:(id)keys from:(id)from forProtocolID:(id)d;
- (id)_getPairedDeviceForIDSIdentifier:(id)identifier;
- (id)createBluetoothAddressForIDSLocalDevice:(id)device;
- (id)deviceName;
- (id)generateCloudPairingIDWithResponse:(id)response localKeys:(id)keys from:(id)from forProtocolID:(id)d;
- (id)generateKeyDictForTypes:(id)types keyLength:(unint64_t)length forAddress:(id)address;
- (id)getIRKForRandomStaticAddress:(id)address;
- (id)getPairedDeviceForIDSIdentifier:(id)identifier;
- (id)readUserPreference:(id)preference;
- (void)_handleConnectionEvent:(id)event;
- (void)_handleMsg:(id)msg;
- (void)audioAccessorySmartChargeDeadlineHasChangedFromCloud:(void *)cloud;
- (void)audioAccessorySmartChargeDeadlineHasChangedFromNotification:(id)notification;
- (void)audioAccessorySmartChargeStatusHasChangedFromCloud:(void *)cloud;
- (void)audioAccessorySmartChargeStatusHasChangedFromNotification:(id)notification;
- (void)cloudpairdMsg:(id)msg args:(id)args;
- (void)cloudpairdReplyMsg:(id)msg args:(id)args;
- (void)fetchSoundProfile;
- (void)multipleAdvInstancesInitialized:(BOOL)initialized;
- (void)printDebug;
- (void)registerWithCloudPairedDevices:(id)devices identifiers:(id)identifiers;
- (void)removeuserPreference:(id)preference sync:(BOOL)sync;
- (void)resetDataForIDSLocalDevice:(id)device;
- (void)resetServerConnection;
- (void)sendCloudKitPush;
- (void)sendCloudpairingRetry:(id)retry;
- (void)setuserPreference:(id)preference value:(id)value sync:(BOOL)sync;
- (void)startListeningToPowerUIStatusChanges;
- (void)startUpServices;
- (void)stopListeningToPowerUIStatusChanges;
- (void)updateCurrentIDSUserInfo:(id)info;
- (void)updateRandomAddressContinuityAdvInstance:(id)instance;
@end

@implementation CloudPairing

+ (id)sharedInstance
{
  if (qword_100B6F668 != -1)
  {
    sub_10084F32C();
  }

  v3 = qword_100B6F660;

  return v3;
}

- (BTCloudServicesClient)cloudClient
{
  if (qword_100B6F678 != -1)
  {
    sub_10084F340();
  }

  v3 = qword_100B6F670;

  return v3;
}

- (CloudPairing)init
{
  v52.receiver = self;
  v52.super_class = CloudPairing;
  v2 = [(CloudPairing *)&v52 init];
  v3 = v2;
  if (!v2)
  {
LABEL_32:
    v38 = v3;
    goto LABEL_33;
  }

  v4 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CloudPairing init", buf, 2u);
  }

  if (MGGetBoolAnswer() & 1) != 0 || (v5 = sub_100017E6C(), ((*(*v5 + 280))(v5)))
  {
    v6 = +[NSArray array];
    cloudLocalUUIDs = v2->_cloudLocalUUIDs;
    v2->_cloudLocalUUIDs = v6;

    v8 = +[NSArray array];
    cloudidsIdentifiers = v2->_cloudidsIdentifiers;
    v2->_cloudidsIdentifiers = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_DEFAULT, -1);
    v12 = dispatch_queue_create("com.apple.bluetoothd.cloudpairing.serial", v11);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v12;

    v14 = [[NSArray alloc] initWithObjects:{@"EncryptionKeys", @"IdentityKeys", 0}];
    requestedKeyTypes = v2->_requestedKeyTypes;
    v2->_requestedKeyTypes = v14;

    v2->_keyLength = 16;
    deviceName = [(CloudPairing *)v2 deviceName];
    localDeviceName = v2->_localDeviceName;
    v2->_localDeviceName = deviceName;

    if (!v2->_localDeviceName)
    {
      v2->_localDeviceName = @"iOS Device";

      v18 = qword_100BCE8E8;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10084F354([(NSString *)v2->_localDeviceName UTF8String], v55);
      }
    }

    v19 = [NSMutableArray arrayWithCapacity:1];
    cloudDevices = v2->_cloudDevices;
    v2->_cloudDevices = v19;

    v21 = [NSMutableArray arrayWithCapacity:1];
    cloudUploadedKeys = v2->_cloudUploadedKeys;
    v2->_cloudUploadedKeys = v21;

    v51 = 0;
    v50 = 0;
    v25 = sub_10009BD9C(v23, v24);
    if (!(*(*v25 + 32))(v25, &v50))
    {
      v26 = [NSString alloc];
      sub_1000BE6F8(&v50, buf);
      v27 = v54 >= 0 ? buf : *buf;
      v28 = [v26 initWithUTF8String:v27];
      publicAddress = v3->_publicAddress;
      v3->_publicAddress = v28;

      if (v54 < 0)
      {
        operator delete(*buf);
      }
    }

    if (v3->_publicAddress)
    {
      *&v3->_keysGenerated = 0;
      [(CloudPairing *)v3 setServerConnection:0];
      v3->_needsCloudKitPush = 0;
      v3->_updatingCloudKit = 0;
      v3->_supportsVirtualAddress = 0;
      idsMultiUsersDictionary = v3->_idsMultiUsersDictionary;
      v3->_idsMultiUsersDictionary = 0;

      currentIDSUser = v3->_currentIDSUser;
      v3->_currentIDSUser = 0;

      currentUserRandomAddress = v3->_currentUserRandomAddress;
      v3->_currentUserRandomAddress = 0;

      v3->_multipleAdvInitialized = 0;
      cloudClient = [(CloudPairing *)v3 cloudClient];
      v3->_accessibilityHeadTrackingEnabled = 1;
      v49 = 0;
      v34 = sub_100017E6C();
      (*(*v34 + 112))(v34, &v49);
      if (v49 == 1)
      {
        v35 = qword_100BCE8E8;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = MKBDeviceUnlockedSinceBoot();
          *buf = 67109120;
          *&buf[4] = v36;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Already first unlocked: %d", buf, 8u);
        }

        [(CloudPairing *)v3 startUpServices];
      }

      else
      {
        out_token = -1;
        inited = objc_initWeak(buf, v3);
        v41 = *(sub_100017F4C(inited, v40) + 8);
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_1005EC650;
        handler[3] = &unk_100AF8888;
        objc_copyWeak(&v47, buf);
        v42 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, v41, handler);

        v43 = qword_100BCE8E8;
        if (v42)
        {
          if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
          {
            sub_10084F398();
          }
        }

        else if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
        {
          *v45 = 0;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Successfully registered for MKB first unlock notification", v45, 2u);
        }

        objc_destroyWeak(&v47);
        objc_destroyWeak(buf);
      }

      goto LABEL_32;
    }

    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_FAULT))
    {
      sub_10084F408();
    }
  }

  else
  {
    v37 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "CloudPairing not supported on this platform (LE)", buf, 2u);
    }
  }

  v38 = 0;
LABEL_33:

  return v38;
}

- (void)startUpServices
{
  v3 = sub_100432918(self, a2);
  (*(*v3 + 200))(v3);
  if (_os_feature_enabled_impl() && NSClassFromString(@"PowerUISmartChargeClientAudioAccessories"))
  {
    [(CloudPairing *)self startListeningToPowerUIStatusChanges];
  }

  v4 = _os_feature_enabled_impl();
  if (v4 && sub_1005FCCC4(v4, v5))
  {
    self->_cloudSoundProfileChangedNotifyToken = -1;
    uTF8String = [BTCloudSoundProfileChangedNotification UTF8String];
    serialQueue = self->_serialQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1005EC928;
    handler[3] = &unk_100ADF848;
    handler[4] = self;
    v8 = notify_register_dispatch(uTF8String, &self->_cloudSoundProfileChangedNotifyToken, serialQueue, handler);
    v9 = qword_100BCE8E8;
    v10 = os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        *buf = 67109120;
        v13 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BTAudioCloudSyncMonitor: Failed registration for CloudSoundProfileChangedNotification with error : %u", buf, 8u);
      }
    }

    else
    {
      if (v10)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BTAudioCloudSyncMonitor: Successfully registered for CloudSoundProfileChangedNotification", buf, 2u);
      }

      [(CloudPairing *)self fetchSoundProfile];
    }
  }
}

- (void)multipleAdvInstancesInitialized:(BOOL)initialized
{
  initializedCopy = initialized;
  v5 = qword_100BCE8E8;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    multipleAdvInitialized = [(CloudPairing *)self multipleAdvInitialized];
    currentUserRandomAddress = [(CloudPairing *)self currentUserRandomAddress];
    v11[0] = 67109634;
    v11[1] = initializedCopy;
    v12 = 1024;
    v13 = multipleAdvInitialized;
    v14 = 2112;
    v15 = currentUserRandomAddress;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MUC - multiple adv instances initialized? %d, stored %d, RSA %@", v11, 0x18u);
  }

  if ([(CloudPairing *)self multipleAdvInitialized]!= initializedCopy)
  {
    [(CloudPairing *)self setMultipleAdvInitialized:initializedCopy];
    if ([(CloudPairing *)self multipleAdvInitialized])
    {
      currentUserRandomAddress2 = [(CloudPairing *)self currentUserRandomAddress];
      v9 = currentUserRandomAddress2 == 0;

      if (!v9)
      {
        currentUserRandomAddress3 = [(CloudPairing *)self currentUserRandomAddress];
        [(CloudPairing *)self updateRandomAddressContinuityAdvInstance:currentUserRandomAddress3];
      }
    }
  }
}

- (id)deviceName
{
  v2 = MGCopyAnswer();

  return v2;
}

- (BOOL)generateKeys
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = sub_100007EE8(self, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005ECC20;
  v5[3] = &unk_100AF5548;
  v5[4] = selfCopy;
  v5[5] = &v6;
  sub_1005711EC(v3, v5);
  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (BOOL)_generateKeys
{
  if (qword_100B508C0 != -1)
  {
    sub_10084F448();
  }

  if ((sub_1007B644C(off_100B508B8) & 1) == 0)
  {
    if (qword_100B508C0 != -1)
    {
      sub_10084F448();
    }

    sub_1007B6DE8(off_100B508B8);
  }

  if (qword_100B508C0 != -1)
  {
    sub_10084F448();
  }

  *self->_encryptionRootKey = *(off_100B508B8 + 168);
  *self->_identityResolvingKey = *(off_100B508B8 + 184);
  v3 = (off_100B508B8 + 312);
  v4 = *(off_100B508B8 + 328);
  *self->_cloudPrivateKey = *(off_100B508B8 + 312);
  *&self->_cloudPrivateKey[16] = v4;
  v5 = v3[4];
  v6 = v3[5];
  v7 = v3[3];
  *&self->_cloudPrivateKey[32] = v3[2];
  *&self->_cloudPrivateKey[80] = v6;
  *&self->_cloudPrivateKey[64] = v5;
  *&self->_cloudPrivateKey[48] = v7;
  v8 = *(off_100B508B8 + 264);
  v9 = *(off_100B508B8 + 280);
  v10 = *(off_100B508B8 + 296);
  *self->_cloudPublicKey = *(off_100B508B8 + 248);
  *&self->_cloudPublicKey[48] = v10;
  *&self->_cloudPublicKey[32] = v9;
  *&self->_cloudPublicKey[16] = v8;
  *self->_cloudNonce = *(off_100B508B8 + 408);
  if (IsAppleInternalBuild())
  {
    v11 = qword_100BCE8E8;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [NSData dataWithBytes:self->_cloudPrivateKey length:96];
      v19 = 138412290;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "_cloudPrivateKey: [ %@ ]", &v19, 0xCu);
    }

    v13 = qword_100BCE8E8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [NSData dataWithBytes:self->_cloudPublicKey length:64];
      v19 = 138412290;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "_cloudPublicKey: [ %@ ]", &v19, 0xCu);
    }

    v15 = qword_100BCE8E8;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [NSData dataWithBytes:self->_cloudNonce length:16];
      v19 = 138412290;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "_cloudNonce: [ %@ ]", &v19, 0xCu);
    }
  }

  if (qword_100B508C0 != -1)
  {
    sub_10084F45C();
  }

  v17 = sub_100240328((off_100B508B8 + 136), 3, 0, self->_diversifierHidingKey);
  if (v17)
  {
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_FAULT))
    {
      sub_10084F484();
    }
  }

  else
  {
    self->_keysGenerated = 1;
  }

  return v17 == 0;
}

- (void)_handleConnectionEvent:(id)event
{
  eventCopy = event;
  type = xpc_get_type(eventCopy);
  if (type == &_xpc_type_connection)
  {
    if (eventCopy != &_xpc_error_connection_invalid)
    {
      objc_initWeak(buf, self);
      v8 = xpc_connection_copy_entitlement_value();
      v9 = v8;
      if (v8)
      {
        if (xpc_get_type(v8) != &_xpc_type_BOOL || xpc_BOOL_get_value(v9))
        {
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_1005ED2D8;
          handler[3] = &unk_100B01208;
          objc_copyWeak(&v15, buf);
          xpc_connection_set_event_handler(eventCopy, handler);
          serialQueue = [(CloudPairing *)self serialQueue];
          xpc_connection_set_target_queue(eventCopy, serialQueue);

          xpc_connection_resume(eventCopy);
          objc_destroyWeak(&v15);

          objc_destroyWeak(buf);
          goto LABEL_24;
        }

        if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
        {
          sub_10084F4F8();
        }
      }

      else if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
      {
        sub_10084F568();
      }

      objc_destroyWeak(buf);
      goto LABEL_24;
    }

    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
    {
      sub_10084F5D8();
    }

    serverConnection = [(CloudPairing *)self serverConnection];
    v12 = serverConnection == 0;

    goto LABEL_17;
  }

  v6 = qword_100BCE8E8;
  v7 = os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT);
  if (type != &_xpc_type_error)
  {
    if (v7)
    {
      *buf = 138412290;
      v17 = eventCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cloudpairing Unexpected XPC server event: %@", buf, 0xCu);
    }

    goto LABEL_24;
  }

  if (v7)
  {
    *buf = 138412290;
    v17 = eventCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cloudpairing XPC server error: %@", buf, 0xCu);
  }

  if (eventCopy == &_xpc_error_connection_invalid)
  {
    serverConnection2 = [(CloudPairing *)self serverConnection];
    v12 = serverConnection2 == 0;

LABEL_17:
    if (!v12)
    {
      [(CloudPairing *)self setServerConnection:0];
    }
  }

LABEL_24:
}

- (void)_handleMsg:(id)msg
{
  msgCopy = msg;
  if (xpc_get_type(msgCopy) == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(msgCopy, "kMsgId");
    v6 = qword_100BCE8E8;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v617 = 136315138;
      *&v617[4] = string;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cloudpairing got msg: %s", v617, 0xCu);
    }

    v7 = xpc_dictionary_get_value(msgCopy, "kMsgArgs");
    v8 = v7;
    if (!v7)
    {
      if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
      {
        sub_10084F954();
      }

      goto LABEL_118;
    }

    if (xpc_get_type(v7) != &_xpc_type_dictionary)
    {
      v9 = qword_100BCE8E8;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        type = xpc_get_type(v8);
        name = xpc_type_get_name(type);
        sub_10084F658(name, v617);
      }

      goto LABEL_118;
    }

    if (!strcmp(string, "manateeUdpateStatus"))
    {
      v12 = _CFXPCCreateCFObjectFromXPCMessage();
      v16 = [v12 objectForKey:@"kUploadStatus"];
      v17 = v16 == 0;

      if (!v17)
      {
        v18 = [v12 objectForKey:@"kUploadStatus"];
        bOOLValue = [v18 BOOLValue];

        if (bOOLValue)
        {
          [(CloudPairing *)self cloudpairdMsg:@"deleteOldContainer" args:0];
        }
      }

      goto LABEL_117;
    }

    if (!strcmp(string, "smartRoutingCapable"))
    {
      v12 = _CFXPCCreateCFObjectFromXPCMessage();
      v20 = [v12 objectForKey:@"srCapable"];
      v21 = v20 == 0;

      if (!v21)
      {
        v22 = [v12 objectForKey:@"srCapable"];
        bOOLValue2 = [v22 BOOLValue];

        v24 = qword_100BCE8E8;
        if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
        {
          v25 = "No";
          if (bOOLValue2)
          {
            v25 = "Yes";
          }

          *v617 = 136315138;
          *&v617[4] = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Smart Route Support: Set to %s", v617, 0xCu);
        }

        if (qword_100B508F0 != -1)
        {
          sub_10084F6C4();
        }

        sub_10056C9B8(off_100B508E8, bOOLValue2);
      }

      goto LABEL_117;
    }

    if (!strcmp(string, "SignInStatusChanged"))
    {
      v12 = _CFXPCCreateCFObjectFromXPCMessage();
      v26 = [v12 objectForKey:@"kSignInStatus"];
      v27 = v26 == 0;

      if (!v27)
      {
        v28 = [v12 objectForKey:@"kSignInStatus"];
        bOOLValue3 = [v28 BOOLValue];

        v30 = [v12 objectForKey:@"kSignInAppleID"];
        [(CloudPairing *)self setICloudSignedIn:bOOLValue3];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ((isKindOfClass & 1) == 0)
        {

          v30 = &stru_100B0F9E0;
        }

        v33 = sub_100432918(isKindOfClass, v32);
        v34 = v30;
        sub_100007E30(v605, [(__CFString *)v30 UTF8String]);
        (*(*v33 + 80))(v33, bOOLValue3, v605);
        if (v606 < 0)
        {
          operator delete(v605[0]);
        }
      }

      goto LABEL_117;
    }

    if (!strcmp(string, "MasterKeysAvailable"))
    {
      v12 = _CFXPCCreateCFObjectFromXPCMessage();
      v35 = [v12 objectForKey:@"kMasterKeyBlob"];
      v36 = v35 == 0;

      if (!v36)
      {
        v37 = [v12 objectForKey:@"kMasterKeyBlob"];
        v38 = [v37 length];
        v39 = v37;
        bytes = [v37 bytes];
        v42 = sub_100432918(bytes, v41);
        (*(*v42 + 88))(v42, bytes, v38);
      }

      goto LABEL_117;
    }

    if (!strcmp(string, "MasterKeysNotAvailable"))
    {
      v12 = _CFXPCCreateCFObjectFromXPCMessage();
      v43 = [v12 objectForKey:@"kMasterKeyBlob"];
      v44 = v43 == 0;

      if (!v44)
      {
        v47 = sub_100432918(v45, v46);
        (*(*v47 + 96))(v47);
      }

      goto LABEL_117;
    }

    if (!strcmp(string, "DeviceInfoAvailable"))
    {
      v12 = _CFXPCCreateCFObjectFromXPCMessage();
      v48 = [v12 objectForKey:@"kDeviceInfoBlob"];
      v49 = [v12 objectForKeyedSubscript:@"loginID"];
      v622.__r_.__value_.__s.__data_[0] = 0;
      memset(v617, 0, 24);
      if (qword_100B50AB0 != -1)
      {
        sub_10084F69C();
      }

      sub_100560E64(off_100B50AA8, &v622, v617);
      if ([v49 length])
      {
        v50 = v49;
        if (std::string::compare(v617, [v49 UTF8String]))
        {
          v51 = qword_100BCE960;
          if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v623[0]) = 138412546;
            *(v623 + 4) = v49;
            WORD2(v623[1]) = 2112;
            *(&v623[1] + 6) = v48;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Cloud: Dropping other user's legacy magic info message: %@ - %@", v623, 0x16u);
          }

          if ((v617[23] & 0x80000000) != 0)
          {
            operator delete(*v617);
          }

          goto LABEL_118;
        }
      }

      if (v48)
      {
        v59 = [v48 length];
        v60 = &v523 - ((__chkstk_darwin(v59) + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v60, v59);
        v61 = v48;
        v62 = memmove(v60, [v48 bytes], v59);
        v64 = sub_100432918(v62, v63);
        (*(*v64 + 104))(v64, v60, v59);
      }

      if ((v617[23] & 0x80000000) != 0)
      {
        operator delete(*v617);
      }

      goto LABEL_117;
    }

    if (!strcmp(string, "DeviceInfoUploadStatus"))
    {
      v12 = _CFXPCCreateCFObjectFromXPCMessage();
      v52 = [v12 objectForKey:@"kUploadStatus"];
      v53 = v52 == 0;

      if (!v53)
      {
        v54 = [v12 objectForKey:@"kUploadStatus"];
        bOOLValue4 = [v54 BOOLValue];

        v58 = sub_100432918(v56, v57);
        (*(*v58 + 112))(v58, bOOLValue4);
      }

      goto LABEL_117;
    }

    if (!strcmp(string, "ManateeBlobUpdate"))
    {
      v12 = _CFXPCCreateCFObjectFromXPCMessage();
      v65 = [v12 objectForKey:@"kDeviceInfoBlob"];
      v66 = v65 == 0;

      if (!v66)
      {
        v67 = [v12 objectForKey:@"kDeviceInfoBlob"];
        v68 = [v67 length];
        v69 = &v523 - ((__chkstk_darwin(v68) + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v69, v68);
        v70 = v67;
        v71 = memmove(v69, [v67 bytes], v68);
        v73 = sub_100432918(v71, v72);
        (*(*v73 + 160))(v73, v69, v68);
      }

      goto LABEL_117;
    }

    if (!strcmp(string, "oldContainerDeleted"))
    {
      v12 = _CFXPCCreateCFObjectFromXPCMessage();
      v74 = [v12 objectForKey:@"kDeleteSuccess"];
      v75 = v74 == 0;

      if (v75)
      {
        goto LABEL_117;
      }

      v76 = [v12 objectForKey:@"kDeleteSuccess"];
      bOOLValue5 = [v76 BOOLValue];

      v78 = qword_100BCE8E8;
      if (!os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_117;
      }

      *v617 = 67109120;
      *&v617[4] = bOOLValue5;
      v79 = "Status for old container deletion %d";
      v80 = v78;
      v81 = OS_LOG_TYPE_DEFAULT;
      v82 = 8;
    }

    else
    {
      if (!strcmp(string, "forceManateeUpgrade"))
      {
        v12 = _CFXPCCreateCFObjectFromXPCMessage();
        v83 = qword_100BCE8E8;
        if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_INFO))
        {
          *v617 = 138412290;
          *&v617[4] = v12;
          _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_INFO, "Process forceManateeUpgrade: %@", v617, 0xCu);
        }

        v84 = [v12 objectForKey:@"kEncryptionSupport"];
        v85 = v84 == 0;

        if (!v85)
        {
          v86 = [v12 objectForKey:@"kEncryptionSupport"];
          bOOLValue6 = [v86 BOOLValue];

          if (bOOLValue6)
          {
            v90 = sub_100432918(v88, v89);
            (*(*v90 + 136))(v90, 1);
          }
        }

        goto LABEL_117;
      }

      if (!strcmp(string, "GenerateCloudPairingKeys"))
      {
        v91 = qword_100BCE8E8;
        if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_INFO))
        {
          *v617 = 0;
          _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_INFO, "Process GenerateCloudPairingKeys", v617, 2u);
        }

        v12 = _CFXPCCreateCFObjectFromXPCObject();
        *&v551 = [v12 objectForKey:@"kCloudPairingKeyTypes"];
        v92 = [v12 objectForKey:@"kCloudPairingKeyLength"];
        unsignedIntegerValue = [v92 unsignedIntegerValue];

        v94 = [v12 objectForKeyedSubscript:@"kLocalRandomAddress"];
        v95 = [(CloudPairing *)self generateKeyDictForTypes:v551 keyLength:unsignedIntegerValue forAddress:v94];
        v96 = qword_100BCE8E8;
        if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
        {
          v97 = IsAppleInternalBuild();
          v98 = v95;
          if (!v97)
          {
            v98 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v95 count]);
          }

          *v617 = 138412290;
          *&v617[4] = v98;
          _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_INFO, "Replying GenerateCloudPairingKeys: %@", v617, 0xCu);
          if (!v97)
          {
          }
        }

        [(CloudPairing *)self cloudpairdReplyMsg:msgCopy args:v95];
        goto LABEL_117;
      }

      if (!strcmp(string, "CloudPairingComplete"))
      {
        v12 = _CFXPCCreateCFObjectFromXPCObject();
        v99 = [v12 objectForKey:@"kCloudPairingCompleteResponse"];
        v100 = [v12 objectForKey:@"kCloudPairingLocalKeys"];
        *&v550 = v100;
        *&v551 = [v12 objectForKey:@"kCloudDeviceUniqueID"];
        v101 = [v12 objectForKey:@"kCloudPairingProtocolID"];
        v102 = qword_100BCE8E8;
        if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
        {
          *v617 = 138412290;
          *&v617[4] = v12;
          _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "MUC - Args for CloudPairingComplete: %@", v617, 0xCu);
        }

        v103 = [(CloudPairing *)self generateCloudPairingIDWithResponse:v99 localKeys:v100 from:v551 forProtocolID:v101];
        v104 = qword_100BCE8E8;
        v105 = v99;
        if (v103)
        {
          if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
          {
            *v617 = 138412290;
            *&v617[4] = v103;
            _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "Got pairingID: %@", v617, 0xCu);
          }

          v632 = @"kCloudPairingID";
          uUIDString = [v103 UUIDString];
          v633 = uUIDString;
          v107 = [NSDictionary dictionaryWithObjects:&v633 forKeys:&v632 count:1];
          [(CloudPairing *)self cloudpairdReplyMsg:msgCopy args:v107];
        }

        else
        {
          if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
          {
            sub_10084F918();
          }

          [(CloudPairing *)self cloudpairdReplyMsg:msgCopy args:&__NSDictionary0__struct];
        }

        goto LABEL_117;
      }

      if (!strcmp(string, "UnpairCloudDevice"))
      {
        v108 = qword_100BCE8E8;
        if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_INFO))
        {
          *v617 = 0;
          _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_INFO, "Process UnpairCloudDevice", v617, 2u);
        }

        v109 = _CFXPCCreateCFObjectFromXPCObject();
        *v617 = 0;
        *&v617[8] = v617;
        *&v617[16] = 0x2020000000;
        v617[24] = 0;
        v111 = sub_100007EE8(v109, v110);
        v602[0] = _NSConcreteStackBlock;
        v602[1] = 3221225472;
        v602[2] = sub_1005F3F5C;
        v602[3] = &unk_100B01230;
        v604 = v617;
        v602[4] = self;
        v12 = v109;
        v603 = v12;
        sub_1005711EC(v111, v602);
        v630 = @"kSuccess";
        v112 = [NSNumber numberWithBool:*(*&v617[8] + 24)];
        v631 = v112;
        v113 = [NSDictionary dictionaryWithObjects:&v631 forKeys:&v630 count:1];
        [(CloudPairing *)self cloudpairdReplyMsg:msgCopy args:v113];

        v114 = qword_100BCE8E8;
        if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_INFO))
        {
          LOWORD(v623[0]) = 0;
          _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_INFO, "Replying UnpairCloudDevice", v623, 2u);
        }

        _Block_object_dispose(v617, 8);
        goto LABEL_117;
      }

      if (!strcmp(string, "FetchPublicAddress"))
      {
        v115 = qword_100BCE8E8;
        if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_INFO))
        {
          *v617 = 0;
          _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_INFO, "Process FetchPublicAddress", v617, 2u);
        }

        publicAddress = [(CloudPairing *)self publicAddress];
        v117 = publicAddress == 0;

        if (v117)
        {
          [(CloudPairing *)self cloudpairdReplyMsg:msgCopy args:&__NSDictionary0__struct];
        }

        else
        {
          v628 = @"kPublicAddress";
          publicAddress2 = [(CloudPairing *)self publicAddress];
          v629 = publicAddress2;
          v119 = [NSDictionary dictionaryWithObjects:&v629 forKeys:&v628 count:1];
          [(CloudPairing *)self cloudpairdReplyMsg:msgCopy args:v119];
        }

        v12 = qword_100BCE8E8;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          publicAddress3 = [(CloudPairing *)self publicAddress];
          *v617 = 138412290;
          *&v617[4] = publicAddress3;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Replying FetchPublicAddress: %@", v617, 0xCu);
        }

        goto LABEL_117;
      }

      if (strcmp(string, "RemoveCloudPairedDevice"))
      {
        if (!strcmp(string, "RemoveStaleLEPairedDevice"))
        {
          v12 = _CFXPCCreateCFObjectFromXPCMessage();
          v128 = qword_100BCE8E8;
          if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
          {
            *v617 = 138412290;
            *&v617[4] = v12;
            _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "MUC - Process RemoveCloudPairedDevice: %@", v617, 0xCu);
          }

          v129 = [v12 objectForKey:@"kCloudDeviceID"];
          if (v129 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v130 = qword_100BCE8E8;
            if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
            {
              *v617 = 138412290;
              *&v617[4] = v129;
              _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "MUC - Removing Stale CloudPairedDevice: %@", v617, 0xCu);
            }

            v131 = [[NSUUID alloc] initWithUUIDString:v129];
            v133 = v131;
            if (v131)
            {
              v134 = sub_100007EE8(v131, v132);
              v598[0] = _NSConcreteStackBlock;
              v598[1] = 3221225472;
              v598[2] = sub_1005F402C;
              v598[3] = &unk_100ADF820;
              v599 = v133;
              sub_10000CA94(v134, v598);
            }

            else if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
            {
              sub_10084F838();
            }
          }

          else if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
          {
            sub_10084F8A8();
          }

          goto LABEL_117;
        }

        if (!strcmp(string, "checkIn"))
        {
          v152 = qword_100BCE8E8;
          if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_INFO))
          {
            *v617 = 0;
            _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_INFO, "Process checkIn", v617, 2u);
          }

          v12 = _CFXPCCreateCFObjectFromXPCObject();
          v153 = qword_100BCE8E8;
          if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_INFO))
          {
            *v617 = 138412290;
            *&v617[4] = v12;
            _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_INFO, "Process checkIn: %@", v617, 0xCu);
          }

          v154 = [v12 objectForKey:@"kCheckInVersion"];
          v155 = v154;
          if (v154)
          {
            if (([v154 isEqualToNumber:&off_100B33978] & 1) == 0 && os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_FAULT))
            {
              sub_10084F7B0();
            }

            v156 = [v12 objectForKey:@"kIDSLocalDeviceUniqueID"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              *&v551 = [v12 objectForKey:@"kIDSLocalDeviceUniqueID"];
            }

            else
            {
              *&v551 = 0;
            }

            *&v550 = [(CloudPairing *)self getPairedDeviceForIDSIdentifier:v551];
            v157 = qword_100BCE8E8;
            if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
            {
              *v617 = 138412546;
              *&v617[4] = v550;
              *&v617[12] = 2112;
              *&v617[14] = v551;
              _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_DEFAULT, "MUC - sending BTUUID-IDS device mapping %@ for local IDS %@", v617, 0x16u);
            }

            v158 = +[NSMutableDictionary dictionary];
            publicAddress4 = [(CloudPairing *)self publicAddress];
            v160 = publicAddress4 == 0;

            if (!v160)
            {
              publicAddress5 = [(CloudPairing *)self publicAddress];
              [v158 setObject:publicAddress5 forKey:@"kPublicAddress"];
            }

            v162 = qword_100BCE8E8;
            if (os_log_type_enabled(v162, OS_LOG_TYPE_INFO))
            {
              publicAddress6 = [(CloudPairing *)self publicAddress];
              *v617 = 138412290;
              *&v617[4] = publicAddress6;
              _os_log_impl(&_mh_execute_header, v162, OS_LOG_TYPE_INFO, "Check in replying with Public Address: %@", v617, 0xCu);
            }

            [v158 setObject:v550 forKey:@"kCachedLEDevices"];
            [v158 setObject:&off_100B33978 forKey:@"kCheckInVersion"];
            [(CloudPairing *)self cloudpairdReplyMsg:msgCopy args:v158];
          }

          goto LABEL_117;
        }

        if (!strcmp(string, "AllDevicesRemovedWithRecords") || !strcmp(string, "DevicesRemovedWithRecords"))
        {
          v12 = _CFXPCCreateCFObjectFromXPCMessage();
          v137 = qword_100BCE960;
          v138 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT);
          if (v138)
          {
            *v617 = 0;
            _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "Devices majestic info removed", v617, 2u);
          }

          if (sub_100432918(v138, v139) && v12)
          {
            *&v551 = [v12 objectForKeyedSubscript:@"devices"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v627[0] = objc_opt_class();
              v627[1] = objc_opt_class();
              v627[2] = objc_opt_class();
              v140 = [NSArray arrayWithObjects:v627 count:3];
              v141 = [NSSet setWithArray:v140];
              *&v550 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v141 fromData:v551 error:0];

              if (v550)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v596 = 0u;
                  v597 = 0u;
                  v594 = 0u;
                  v595 = 0u;
                  v142 = v550;
                  v143 = [v142 countByEnumeratingWithState:&v594 objects:v626 count:16];
                  if (v143)
                  {
                    v144 = *v595;
                    do
                    {
                      for (i = 0; i != v143; i = i + 1)
                      {
                        if (*v595 != v144)
                        {
                          objc_enumerationMutation(v142);
                        }

                        v146 = *(*(&v594 + 1) + 8 * i);
                        objc_opt_class();
                        v147 = objc_opt_isKindOfClass();
                        if (v147)
                        {
                          v149 = sub_100432918(v147, v148);
                          bluetoothAddress = [v146 bluetoothAddress];
                          v151 = bluetoothAddress;
                          sub_100007E30(v592, [bluetoothAddress UTF8String]);
                          (*(*v149 + 184))(v149, v592);
                          if (v593 < 0)
                          {
                            operator delete(v592[0]);
                          }
                        }
                      }

                      v143 = [v142 countByEnumeratingWithState:&v594 objects:v626 count:16];
                    }

                    while (v143);
                  }
                }
              }
            }
          }

          goto LABEL_117;
        }

        if (strcmp(string, "DevicesUpdatedWithRecords"))
        {
          if (!strcmp(string, "AllDeviceSupportInformationRecordsRemoved") || !strcmp(string, "DeviceSupportInformationRecordsRemoved"))
          {
            v12 = _CFXPCCreateCFObjectFromXPCMessage();
            v164 = qword_100BCE960;
            v165 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT);
            if (v165)
            {
              *v617 = 0;
              _os_log_impl(&_mh_execute_header, v164, OS_LOG_TYPE_DEFAULT, "Devices support info removed", v617, 2u);
            }

            if (sub_100432918(v165, v166) && v12)
            {
              *&v550 = [v12 objectForKeyedSubscript:@"records"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v621[0] = objc_opt_class();
                v621[1] = objc_opt_class();
                v621[2] = objc_opt_class();
                v167 = [NSArray arrayWithObjects:v621 count:3];
                v168 = [NSSet setWithArray:v167];
                *&v549 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v168 fromData:v550 error:0];

                if (v549)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v582 = 0u;
                    v583 = 0u;
                    v580 = 0u;
                    v581 = 0u;
                    v169 = v549;
                    v170 = [v169 countByEnumeratingWithState:&v580 objects:v620 count:16];
                    if (v170)
                    {
                      v172 = *v581;
                      *&v171 = 138412290;
                      v551 = v171;
                      do
                      {
                        for (j = 0; j != v170; j = j + 1)
                        {
                          if (*v581 != v172)
                          {
                            objc_enumerationMutation(v169);
                          }

                          v174 = *(*(&v580 + 1) + 8 * j);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v175 = qword_100BCE960;
                            if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
                            {
                              *v617 = v551;
                              *&v617[4] = v174;
                              _os_log_impl(&_mh_execute_header, v175, OS_LOG_TYPE_DEFAULT, "Device Support Info to be removed: %@", v617, 0xCu);
                            }
                          }
                        }

                        v170 = [v169 countByEnumeratingWithState:&v580 objects:v620 count:16];
                      }

                      while (v170);
                    }
                  }
                }
              }
            }

            goto LABEL_117;
          }

          if (strcmp(string, "DeviceSupportInformationRecordsUpdated"))
          {
            if (strcmp(string, "MagicPairingRecordsRemoved"))
            {
              if (strcmp(string, "MagicPairingRecordsUpdated"))
              {
                if (!strcmp(string, "ManateeIdentityLost"))
                {
                  v510 = qword_100BCE960;
                  v511 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT);
                  if (v511)
                  {
                    *v617 = 0;
                    _os_log_impl(&_mh_execute_header, v510, OS_LOG_TYPE_DEFAULT, "ManateeIdentityLost in cloudkit. Push local data again to resync.", v617, 2u);
                  }

                  v513 = sub_100432918(v511, v512);
                  if (v513)
                  {
                    v515 = sub_100432918(v513, v514);
                    (*(*v515 + 192))(v515);
                  }

                  goto LABEL_118;
                }

                if (!strcmp(string, "OnlineStatusChanged"))
                {
                  v516 = xpc_dictionary_get_BOOL(v8, "kOnlineStatus");
                  if (sub_100432918(v516, v517))
                  {
                    v518 = qword_100BCE960;
                    v519 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT);
                    if (v519)
                    {
                      v521 = "no";
                      if (v516)
                      {
                        v521 = "yes";
                      }

                      *v617 = 136315138;
                      *&v617[4] = v521;
                      _os_log_impl(&_mh_execute_header, v518, OS_LOG_TYPE_DEFAULT, "Network changed to %s. Push local data if any to cloud.", v617, 0xCu);
                    }

                    v522 = sub_100432918(v519, v520);
                    (*(*v522 + 72))(v522, v516);
                  }

                  goto LABEL_118;
                }

                if (strcmp(string, "kBTAccessHeadTrackUpdate"))
                {
LABEL_118:

                  goto LABEL_119;
                }

                v12 = _CFXPCCreateCFObjectFromXPCMessage();
                v13 = qword_100BCE8E8;
                if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
                {
                  *v617 = 0;
                  _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received kBTAccessHeadTrackUpdate for call", v617, 2u);
                }

                v14 = [v12 objectForKey:@"kAccessHeadTracking"];
                -[CloudPairing setAccessibilityHeadTrackingEnabled:](self, "setAccessibilityHeadTrackingEnabled:", [v14 BOOLValue]);

                v15 = sub_100017E6C();
                (*(*v15 + 248))(v15);
                goto LABEL_117;
              }

              v12 = _CFXPCCreateCFObjectFromXPCMessage();
              v284 = qword_100BCE960;
              if (os_log_type_enabled(v284, OS_LOG_TYPE_DEFAULT))
              {
                v285 = [v12 debugDescription];
                v286 = v285;
                uTF8String = [v285 UTF8String];
                *v617 = 136446210;
                *&v617[4] = uTF8String;
                _os_log_impl(&_mh_execute_header, v284, OS_LOG_TYPE_DEFAULT, "Devices magic info updated from cloudkit = %{public}s", v617, 0xCu);
              }

              if (qword_100B50AB0 != -1)
              {
                sub_10084F69C();
              }

              v289 = sub_1000E25D8(off_100B50AA8, v288);
              if (!v289 || !sub_100432918(v289, v290))
              {
                goto LABEL_117;
              }

              iCloudSignedIn = [(CloudPairing *)self iCloudSignedIn];
              v292 = v12 ? iCloudSignedIn : 0;
              if (v292 != 1)
              {
                goto LABEL_117;
              }

              v538 = [v12 objectForKeyedSubscript:@"records"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v614[0] = objc_opt_class();
                v614[1] = objc_opt_class();
                v614[2] = objc_opt_class();
                v293 = [NSArray arrayWithObjects:v614 count:3];
                v294 = [NSSet setWithArray:v293];
                v534 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v294 fromData:v538 error:0];

                if (v534)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v567 = 0u;
                    v565 = 0u;
                    v566 = 0u;
                    v564 = 0u;
                    *&v546 = v534;
                    v548 = [v546 countByEnumeratingWithState:&v564 objects:v613 count:16];
                    if (!v548)
                    {
                      goto LABEL_771;
                    }

                    *&v547 = *v565;
                    *&v295 = 138412290;
                    v545 = v295;
                    *&v295 = 67110146;
                    v543 = v295;
                    *&v295 = 67109890;
                    v541 = v295;
                    *&v295 = 136315138;
                    v537 = v295;
                    *&v295 = 136446210;
                    v532 = v295;
                    *&v295 = 68158466;
                    v526 = v295;
                    *&v295 = 68158722;
                    v525 = v295;
                    *&v295 = 67109120;
                    v529 = v295;
                    *&v295 = 136446722;
                    v540 = v295;
                    *&v295 = 136446466;
                    v527 = v295;
                    *&v295 = 67109376;
                    v523 = v295;
                    *&v295 = 67109378;
                    v524 = v295;
                    *&v295 = 136315394;
                    v539 = v295;
                    *&v295 = 136315650;
                    v536 = v295;
                    *&v295 = 136446467;
                    v542 = v295;
                    while (1)
                    {
                      *&v550 = 0;
                      do
                      {
                        if (*v565 != v547)
                        {
                          objc_enumerationMutation(v546);
                        }

                        *&v551 = *(*(&v564 + 1) + 8 * v550);
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v296 = qword_100BCE960;
                          if (os_log_type_enabled(v296, OS_LOG_TYPE_DEFAULT))
                          {
                            *v617 = v545;
                            *&v617[4] = v551;
                            _os_log_impl(&_mh_execute_header, v296, OS_LOG_TYPE_DEFAULT, "Cloud: Device magic pairing records to be updated: %@", v617, 0xCu);
                          }

                          v563 = 0;
                          v562 = 0;
                          memset(v623, 0, sizeof(v623));
                          bluetoothAddress2 = [v551 bluetoothAddress];
                          v298 = bluetoothAddress2;
                          sub_100007E30(v623, [bluetoothAddress2 UTF8String]);

                          if (SHIBYTE(v623[2]) >= 0)
                          {
                            v299 = v623;
                          }

                          else
                          {
                            v299 = v623[0];
                          }

                          if (sub_10009D0B4(&v562, v299))
                          {
                            if (v562)
                            {
LABEL_425:
                              if (qword_100B508F0 != -1)
                              {
                                sub_10084F6C4();
                              }

                              *&v549 = sub_1000E6554(off_100B508E8, &v562, 1);
                              v559 = 1;
                              v558 = 0;
                              v557 = 0;
                              sub_1000C2364(v549, &v557, &v558, &v557 + 1, &v559);
                              v300 = qword_100BCE960;
                              if (os_log_type_enabled(v300, OS_LOG_TYPE_DEFAULT))
                              {
                                v301 = v558;
                                v302 = HIDWORD(v557);
                                v303 = v557;
                                v304 = v559;
                                sub_1000E5A58(v549, &v622);
                                v305 = &v622;
                                if ((v622.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                {
                                  v305 = v622.__r_.__value_.__r.__words[0];
                                }

                                *v617 = __PAIR64__(v301, v543);
                                *&v617[8] = 1024;
                                *&v617[10] = v302;
                                *&v617[14] = 1024;
                                *&v617[16] = v303;
                                *&v617[20] = 1024;
                                *&v617[22] = v304;
                                *&v617[26] = 2082;
                                *&v617[28] = v305;
                                _os_log_impl(&_mh_execute_header, v300, OS_LOG_TYPE_DEFAULT, "[MP] Local Device ID; vid: %x, pid: %x, vidSrc: %d, version: %d for device: %{public}s", v617, 0x24u);
                                if (SHIBYTE(v622.__r_.__value_.__r.__words[2]) < 0)
                                {
                                  operator delete(v622.__r_.__value_.__l.__data_);
                                }
                              }

                              vendorID = [v551 vendorID];
                              integerValue = [vendorID integerValue];

                              productID = [v551 productID];
                              integerValue2 = [productID integerValue];

                              if (integerValue && integerValue2)
                              {
                                if (v557 <= 1)
                                {
                                  v310 = 1;
                                }

                                else
                                {
                                  v310 = v557;
                                }

                                v311 = qword_100BCE960;
                                if (os_log_type_enabled(v311, OS_LOG_TYPE_DEFAULT))
                                {
                                  sub_1000E5A58(v549, &v622);
                                  v312 = &v622;
                                  if ((v622.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                  {
                                    v312 = v622.__r_.__value_.__r.__words[0];
                                  }

                                  *v617 = __PAIR64__(integerValue, v541);
                                  *&v617[8] = 1024;
                                  *&v617[10] = integerValue2;
                                  *&v617[14] = 1024;
                                  *&v617[16] = v310;
                                  *&v617[20] = 2082;
                                  *&v617[22] = v312;
                                  _os_log_impl(&_mh_execute_header, v311, OS_LOG_TYPE_DEFAULT, "[MP] Updating Device ID from cloud; vid: %x, cloud pid: %x, vidSrc: %x for device: %{public}s", v617, 0x1Eu);
                                  if (SHIBYTE(v622.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    operator delete(v622.__r_.__value_.__l.__data_);
                                  }
                                }

                                sub_10053D890(v549, v310, integerValue, integerValue2, v559);
                                sub_10053E630(v549);
                              }

                              v523 = [CBProductInfo productInfoWithProductID:integerValue2, v523];
                              productName = [v523 productName];

                              if (productName && ([productName isEqualToString:@"Unknown"] & 1) == 0 && objc_msgSend(productName, "length"))
                              {
                                sub_1000C23E0(v549, v617);
                                v315 = v617[23];
                                v316 = v617[23];
                                if (v617[23] < 0)
                                {
                                  v315 = *&v617[8];
                                }

                                if (v315)
                                {
                                  sub_1000C23E0(v549, &v622);
                                  v317 = productName;
                                  v318 = std::string::compare(&v622, [productName UTF8String]) != 0;
                                  if (SHIBYTE(v622.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    operator delete(v622.__r_.__value_.__l.__data_);
                                  }

                                  v316 = v617[23];
                                }

                                else
                                {
                                  v318 = 1;
                                }

                                if (v316 < 0)
                                {
                                  operator delete(*v617);
                                }

                                if (v318)
                                {
                                  sub_100007E30(v617, [productName utf8ValueSafe]);
                                  *&v612 = 0;
                                  sub_100016250(&v612);
                                  v622.__r_.__value_.__r.__words[0] = v612;
                                  v622.__r_.__value_.__l.__size_ = SWORD2(v612);
                                  sub_100538494(v549, v617, &v622);
                                  if ((v617[23] & 0x80000000) != 0)
                                  {
                                    operator delete(*v617);
                                  }

                                  v321 = qword_100BCE960;
                                  if (os_log_type_enabled(v321, OS_LOG_TYPE_DEFAULT))
                                  {
                                    sub_1000E5A58(v549, v617);
                                    v322 = v617;
                                    if (v617[23] < 0)
                                    {
                                      v322 = *v617;
                                    }

                                    LODWORD(v622.__r_.__value_.__l.__data_) = v532;
                                    *(v622.__r_.__value_.__r.__words + 4) = v322;
                                    _os_log_impl(&_mh_execute_header, v321, OS_LOG_TYPE_DEFAULT, "Cloud: Magic Settings updated productname %{public}s", &v622, 0xCu);
                                    if ((v617[23] & 0x80000000) != 0)
                                    {
                                      operator delete(*v617);
                                    }
                                  }
                                }
                              }

                              name = [v551 name];
                              v324 = [name length] == 0;

                              if (!v324)
                              {
                                v325 = qword_100BCE960;
                                if (os_log_type_enabled(v325, OS_LOG_TYPE_DEFAULT))
                                {
                                  sub_1000E5A58(v549, v617);
                                  v326 = v617[23] >= 0 ? v617 : *v617;
                                  name2 = [v551 name];
                                  v328 = name2;
                                  uTF8String2 = [name2 UTF8String];
                                  LODWORD(v622.__r_.__value_.__l.__data_) = v542;
                                  *(v622.__r_.__value_.__r.__words + 4) = v326;
                                  WORD2(v622.__r_.__value_.__r.__words[1]) = 2081;
                                  *(&v622.__r_.__value_.__r.__words[1] + 6) = uTF8String2;
                                  _os_log_impl(&_mh_execute_header, v325, OS_LOG_TYPE_DEFAULT, "Cloud: Magic Settings updating %{public}s username to -> %{private}s", &v622, 0x16u);

                                  if ((v617[23] & 0x80000000) != 0)
                                  {
                                    operator delete(*v617);
                                  }
                                }

                                name3 = [v551 name];
                                sub_100007E30(v617, [name3 utf8ValueSafe]);
                                sub_100538D30(v549, v617, 0);
                                if ((v617[23] & 0x80000000) != 0)
                                {
                                  operator delete(*v617);
                                }

                                v333 = sub_100432918(v331, v332);
                                bluetoothAddress3 = [v551 bluetoothAddress];
                                v335 = bluetoothAddress3;
                                sub_100007E30(v555, [bluetoothAddress3 UTF8String]);
                                name4 = [v551 name];
                                sub_100007E30(v553, [name4 utf8ValueSafe]);
                                (*(*v333 + 176))(v333, v555, v553);
                                if (v554 < 0)
                                {
                                  operator delete(v553[0]);
                                }

                                if (v556 < 0)
                                {
                                  operator delete(v555[0]);
                                }
                              }

                              sub_1000C23E0(v549, v617);
                              if ((v617[23] & 0x80000000) != 0)
                              {
                                v337 = *&v617[8];
                                operator delete(*v617);
                                if (!v337)
                                {
                                  goto LABEL_488;
                                }
                              }

                              else if (!v617[23])
                              {
LABEL_488:
                                v338 = qword_100BCE960;
                                if (os_log_type_enabled(v338, OS_LOG_TYPE_DEFAULT))
                                {
                                  sub_1000E5A58(v549, v617);
                                  v339 = v617;
                                  if (v617[23] < 0)
                                  {
                                    v339 = *v617;
                                  }

                                  LODWORD(v622.__r_.__value_.__l.__data_) = v537;
                                  *(v622.__r_.__value_.__r.__words + 4) = v339;
                                  _os_log_impl(&_mh_execute_header, v338, OS_LOG_TYPE_DEFAULT, "Cloud: Magic Settings No Name for device: %s", &v622, 0xCu);
                                  if ((v617[23] & 0x80000000) != 0)
                                  {
                                    operator delete(*v617);
                                  }
                                }

                                cloudClient = [(CloudPairing *)self cloudClient];
                                bluetoothAddress4 = [v551 bluetoothAddress];
                                [cloudClient deviceRecord:bluetoothAddress4 completion:&stru_100B01250];
                              }

                              deviceIDFeatureBitsV1 = [v551 deviceIDFeatureBitsV1];
                              v343 = [deviceIDFeatureBitsV1 length] == 0;

                              if (!v343)
                              {
                                LODWORD(v622.__r_.__value_.__l.__data_) = 0;
                                deviceIDFeatureBitsV12 = [v551 deviceIDFeatureBitsV1];
                                v345 = deviceIDFeatureBitsV12;
                                sub_100007E30(v617, [deviceIDFeatureBitsV12 UTF8String]);
                                v346 = std::stoul(v617, 0, 0);
                                if ((v617[23] & 0x80000000) != 0)
                                {
                                  operator delete(*v617);
                                }

                                v347 = sub_10053E4A8(v549, &v622);
                                if (LODWORD(v622.__r_.__value_.__l.__data_) == v346)
                                {
                                  v348 = v347;
                                }

                                else
                                {
                                  v348 = 0;
                                }

                                if ((v348 & 1) == 0)
                                {
                                  v349 = qword_100BCE960;
                                  if (os_log_type_enabled(v349, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v350 = v623;
                                    if (SHIBYTE(v623[2]) < 0)
                                    {
                                      v350 = v623[0];
                                    }

                                    *v617 = v539;
                                    *&v617[4] = v350;
                                    *&v617[12] = 1024;
                                    *&v617[14] = v346;
                                    _os_log_impl(&_mh_execute_header, v349, OS_LOG_TYPE_DEFAULT, "Cloud: Received iCloud update for DID supported feature bits version 1, address: %s, supported feature bits 0x%x", v617, 0x12u);
                                  }

                                  sub_10053DCEC(v549, v346, 1);
                                }
                              }

                              deviceIDFeatureBitsV2 = [v551 deviceIDFeatureBitsV2];
                              v352 = [deviceIDFeatureBitsV2 length] == 0;

                              if (!v352)
                              {
                                v622.__r_.__value_.__r.__words[0] = 0;
                                deviceIDFeatureBitsV22 = [v551 deviceIDFeatureBitsV2];
                                v354 = deviceIDFeatureBitsV22;
                                sub_100007E30(v617, [deviceIDFeatureBitsV22 UTF8String]);
                                v355 = std::stoull(v617, 0, 0);
                                if ((v617[23] & 0x80000000) != 0)
                                {
                                  operator delete(*v617);
                                }

                                *&v612 = __ROR8__(v355, 32);
                                if ((!sub_10053E4E0(v549, &v622) || v622.__r_.__value_.__r.__words[0] != v612) && v355 != -1)
                                {
                                  v356 = qword_100BCE960;
                                  if (os_log_type_enabled(v356, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v357 = v623;
                                    if (SHIBYTE(v623[2]) < 0)
                                    {
                                      v357 = v623[0];
                                    }

                                    *v617 = v536;
                                    *&v617[4] = v357;
                                    *&v617[12] = 1024;
                                    *&v617[14] = HIDWORD(v355);
                                    *&v617[18] = 1024;
                                    *&v617[20] = v355;
                                    _os_log_impl(&_mh_execute_header, v356, OS_LOG_TYPE_DEFAULT, "Cloud: Apply Received iCloud update for DID extended supported feature bits version 2, address: %s, extended supported feature bits I1: 0x%x, I2: 0x%x", v617, 0x18u);
                                  }

                                  HIDWORD(v622.__r_.__value_.__r.__words[0]) |= v355;
                                  sub_10053DFDC(v549, v622.__r_.__value_.__r.__words[0], 1);
                                }
                              }

                              accessoryKey = [v551 accessoryKey];
                              if ([accessoryKey length] == 16)
                              {
                                accessoryHint = [v551 accessoryHint];
                                if ([accessoryHint length] == 16)
                                {
                                  encryptionKey = [v551 encryptionKey];
                                  if ([encryptionKey length] == 16)
                                  {
                                    v361 = [v551 irk];
                                    if ([v361 length] == 16)
                                    {
                                      *&v544 = [v551 ratchet];
                                      if ([v544 length])
                                      {
                                        settingsMask = [v551 settingsMask];
                                        if ([settingsMask length])
                                        {
                                          supportedServices = [v551 supportedServices];
                                          if ([supportedServices length])
                                          {
                                            buttonModes = [v551 buttonModes];
                                            if ([buttonModes length])
                                            {
                                              color = [v551 color];
                                              if ([color length])
                                              {
                                                listeningServices = [v551 listeningServices];
                                                v528 = [listeningServices length] == 0;

                                                if ((v528 & 1) == 0)
                                                {
                                                  v612 = 0uLL;
                                                  v611 = 0uLL;
                                                  accessoryKey2 = [v551 accessoryKey];
                                                  v364 = accessoryKey2;
                                                  v612 = *[accessoryKey2 bytes];

                                                  accessoryHint2 = [v551 accessoryHint];
                                                  v366 = accessoryHint2;
                                                  v611 = *[accessoryHint2 bytes];

                                                  masterKey = [v551 masterKey];
                                                  if ([masterKey length] == 16)
                                                  {
                                                    masterHint = [v551 masterHint];
                                                    v369 = [masterHint length] == 16;

                                                    if (v369)
                                                    {
                                                      *&v622.__r_.__value_.__l.__data_ = 0uLL;
                                                      v610 = 0uLL;
                                                      v370 = qword_100BCE960;
                                                      if (os_log_type_enabled(v370, OS_LOG_TYPE_DEFAULT))
                                                      {
                                                        masterKey2 = [v551 masterKey];
                                                        *v617 = v545;
                                                        *&v617[4] = masterKey2;
                                                        _os_log_impl(&_mh_execute_header, v370, OS_LOG_TYPE_DEFAULT, "Cloud: Retrieved Master Key: %@", v617, 0xCu);
                                                      }

                                                      v372 = qword_100BCE960;
                                                      if (os_log_type_enabled(v372, OS_LOG_TYPE_DEFAULT))
                                                      {
                                                        masterHint2 = [v551 masterHint];
                                                        *v617 = v545;
                                                        *&v617[4] = masterHint2;
                                                        _os_log_impl(&_mh_execute_header, v372, OS_LOG_TYPE_DEFAULT, "Cloud: Retrieved Master Hint: %@", v617, 0xCu);
                                                      }

                                                      masterKey3 = [v551 masterKey];
                                                      v375 = masterKey3;
                                                      *&v622.__r_.__value_.__l.__data_ = *[masterKey3 bytes];

                                                      masterHint3 = [v551 masterHint];
                                                      v377 = masterHint3;
                                                      v610 = *[masterHint3 bytes];

                                                      v609 = 0uLL;
                                                      if (!sub_1002D898C(&v610, &v611, &v609, 0x10uLL) && v609 == *(v549 + 128) && WORD2(v609) == *(v549 + 132))
                                                      {
                                                        v379 = qword_100BCE960;
                                                        if (os_log_type_enabled(v379, OS_LOG_TYPE_INFO))
                                                        {
                                                          sub_1000E5A58(v549, v617);
                                                          v380 = v617;
                                                          if (v617[23] < 0)
                                                          {
                                                            v380 = *v617;
                                                          }

                                                          v607 = v532;
                                                          v608 = v380;
                                                          _os_log_impl(&_mh_execute_header, v379, OS_LOG_TYPE_INFO, "Valid Main Account Keys from cloud magic device %{public}s", &v607, 0xCu);
                                                          if ((v617[23] & 0x80000000) != 0)
                                                          {
                                                            operator delete(*v617);
                                                          }
                                                        }

                                                        if (qword_100B50AB0 != -1)
                                                        {
                                                          sub_10084F69C();
                                                        }

                                                        (*(*off_100B50AA8 + 56))(off_100B50AA8, &v622, &v610);
                                                      }
                                                    }
                                                  }

                                                  else
                                                  {
                                                  }

                                                  v381 = qword_100BCE960;
                                                  if (os_log_type_enabled(v381, OS_LOG_TYPE_DEBUG))
                                                  {
                                                    *v617 = v526 | 0x1000000000;
                                                    *&v617[8] = 2096;
                                                    *&v617[10] = &v612;
                                                    *&v617[18] = 1040;
                                                    *&v617[20] = 16;
                                                    *&v617[24] = 2096;
                                                    *&v617[26] = &v611;
                                                    _os_log_debug_impl(&_mh_execute_header, v381, OS_LOG_TYPE_DEBUG, "Cloud keys AccKeyPtr %.16P, HintPtr %.16P", v617, 0x22u);
                                                  }

                                                  v610 = 0uLL;
                                                  v609 = 0uLL;
                                                  ratchet = [v551 ratchet];
                                                  v383 = ratchet;
                                                  v384 = atol([ratchet UTF8String]);

                                                  v385 = [v551 irk];
                                                  v386 = v385;
                                                  v610 = *[v385 bytes];

                                                  encryptionKey2 = [v551 encryptionKey];
                                                  v388 = encryptionKey2;
                                                  v609 = *[encryptionKey2 bytes];

                                                  for (k = 0; k != 31; ++k)
                                                  {
                                                    supportedServices2 = [v551 supportedServices];
                                                    v391 = ([supportedServices2 integerValue] & (1 << k)) == 0;

                                                    if (!v391)
                                                    {
                                                      v392 = qword_100BCE960;
                                                      if (os_log_type_enabled(v392, OS_LOG_TYPE_DEFAULT))
                                                      {
                                                        v393 = v623;
                                                        if (SHIBYTE(v623[2]) < 0)
                                                        {
                                                          v393 = v623[0];
                                                        }

                                                        *v617 = v539;
                                                        *&v617[4] = v393;
                                                        *&v617[12] = 1024;
                                                        *&v617[14] = 1 << k;
                                                        _os_log_impl(&_mh_execute_header, v392, OS_LOG_TYPE_DEFAULT, "Cloud: Magic Paired Device with address: %s, ServiceID: %d", v617, 0x12u);
                                                      }

                                                      v622.__r_.__value_.__r.__words[0] = 0;
                                                      sub_100016250(&v622);
                                                      *v617 = SLODWORD(v622.__r_.__value_.__l.__data_);
                                                      *&v617[8] = SWORD2(v622.__r_.__value_.__r.__words[0]);
                                                      sub_100539554(v549, 1 << k, 4, v617, 0);
                                                    }
                                                  }

                                                  v394 = qword_100BCE960;
                                                  if (os_log_type_enabled(v394, OS_LOG_TYPE_DEBUG))
                                                  {
                                                    *v617 = v525 | 0x1000000000;
                                                    *&v617[8] = 2096;
                                                    *&v617[10] = &v610;
                                                    *&v617[18] = 1040;
                                                    *&v617[20] = 16;
                                                    *&v617[24] = 2096;
                                                    *&v617[26] = &v609;
                                                    *&v617[34] = 1024;
                                                    *&v617[36] = v384;
                                                    _os_log_debug_impl(&_mh_execute_header, v394, OS_LOG_TYPE_DEBUG, "Cloud IRK %.16P, EncKey %.16P, Ratchet: %d", v617, 0x28u);
                                                  }

                                                  if (qword_100B50AB0 != -1)
                                                  {
                                                    sub_10084F69C();
                                                  }

                                                  v395 = sub_100558DB8(off_100B50AA8, v549);
                                                  v396 = qword_100BCE960;
                                                  v397 = os_log_type_enabled(v396, OS_LOG_TYPE_DEFAULT);
                                                  if (!v395)
                                                  {
                                                    if (v397)
                                                    {
                                                      v400 = v623;
                                                      if (SHIBYTE(v623[2]) < 0)
                                                      {
                                                        v400 = v623[0];
                                                      }

                                                      *v617 = v537;
                                                      *&v617[4] = v400;
                                                      _os_log_impl(&_mh_execute_header, v396, OS_LOG_TYPE_DEFAULT, "Cloud: Create new Magic Paired Device with address: %s", v617, 0xCu);
                                                    }

                                                    operator new();
                                                  }

                                                  if (v397)
                                                  {
                                                    v398 = v623;
                                                    if (SHIBYTE(v623[2]) < 0)
                                                    {
                                                      v398 = v623[0];
                                                    }

                                                    *v617 = v537;
                                                    *&v617[4] = v398;
                                                    _os_log_impl(&_mh_execute_header, v396, OS_LOG_TYPE_DEFAULT, "Cloud: Update new Magic Paired Device with address: %s", v617, 0xCu);
                                                  }

                                                  v399 = v611;
                                                  *(v395 + 5) = v612;
                                                  *(v395 + 7) = v399;
                                                  if (v384)
                                                  {
                                                    *(v395 + 18) = v384;
                                                  }

                                                  sub_10055C750(v395, &v610);
                                                  *(v395 + 3) = v609;
                                                  if (qword_100B50AB0 != -1)
                                                  {
                                                    sub_10084F69C();
                                                  }

                                                  sub_10055D510(off_100B50AA8, v395);
                                                  settingsMask2 = [v551 settingsMask];
                                                  LODWORD(supportedServices) = [settingsMask2 intValue];

                                                  v402 = qword_100BCE960;
                                                  if (os_log_type_enabled(v402, OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    *v617 = v529;
                                                    *&v617[4] = supportedServices;
                                                    _os_log_impl(&_mh_execute_header, v402, OS_LOG_TYPE_DEFAULT, "Cloud: Retrieved settings mask from cloud: %d", v617, 8u);
                                                  }

                                                  color2 = [v551 color];
                                                  LODWORD(color) = [color2 intValue];

                                                  v404 = qword_100BCE960;
                                                  if (os_log_type_enabled(v404, OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    *v617 = v529;
                                                    *&v617[4] = color;
                                                    _os_log_impl(&_mh_execute_header, v404, OS_LOG_TYPE_DEFAULT, "Cloud: Retrieved color from cloud: %d", v617, 8u);
                                                  }

                                                  listeningServices2 = [v551 listeningServices];
                                                  *&v544 = [listeningServices2 integerValue];

                                                  v406 = qword_100BCE960;
                                                  if (os_log_type_enabled(v406, OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    *v617 = v529;
                                                    v528 = v544;
                                                    *&v617[4] = v544;
                                                    _os_log_impl(&_mh_execute_header, v406, OS_LOG_TYPE_DEFAULT, "Cloud: Retrieved listening services from cloud: %d", v617, 8u);
                                                  }

                                                  else
                                                  {
                                                    v528 = v544;
                                                  }

                                                  LODWORD(buttonModes) = (v544 >> 7) & 7;
                                                  v407 = qword_100BCE960;
                                                  if (os_log_type_enabled(v407, OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    *v617 = __PAIR64__(buttonModes, v529);
                                                    _os_log_impl(&_mh_execute_header, v407, OS_LOG_TYPE_DEFAULT, "Cloud: Retrieved listening services V1 from cloud: %d", v617, 8u);
                                                  }

                                                  listeningServicesV2 = [v551 listeningServicesV2];
                                                  settingsMask = [listeningServicesV2 integerValue];

                                                  v409 = qword_100BCE960;
                                                  if (os_log_type_enabled(v409, OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    *v617 = __PAIR64__(settingsMask, v529);
                                                    _os_log_impl(&_mh_execute_header, v409, OS_LOG_TYPE_DEFAULT, "Cloud: Retrieved listening services V2 from cloud: %d", v617, 8u);
                                                  }

                                                  if ((v544 & 2) != 0 && !sub_1000E31D0(v549))
                                                  {
                                                    v410 = qword_100BCE960;
                                                    if (os_log_type_enabled(v410, OS_LOG_TYPE_DEFAULT))
                                                    {
                                                      *v617 = v529 | 0x100000000;
                                                      _os_log_impl(&_mh_execute_header, v410, OS_LOG_TYPE_DEFAULT, "Cloud: Retrieved GAPA from cloud: %d", v617, 8u);
                                                    }

                                                    sub_100540890(v549, 1, 1);
                                                  }

                                                  buttonModes2 = [v551 buttonModes];
                                                  intValue = [buttonModes2 intValue];

                                                  v413 = qword_100BCE960;
                                                  if (os_log_type_enabled(v413, OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    *v617 = v529;
                                                    *&v617[4] = intValue;
                                                    _os_log_impl(&_mh_execute_header, v413, OS_LOG_TYPE_DEFAULT, "Cloud: Retrieved button Modes from cloud: %d", v617, 8u);
                                                  }

                                                  v414 = intValue & 0xF;
                                                  v415 = v414 | (intValue >> 4 << 8);
                                                  v416 = qword_100BCE960;
                                                  if (os_log_type_enabled(v416, OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    *v617 = v529;
                                                    v617[4] = intValue & 0xF;
                                                    v617[5] = intValue >> 4;
                                                    _os_log_impl(&_mh_execute_header, v416, OS_LOG_TYPE_DEFAULT, "Cloud: Retrieved double tap from cloud: %d", v617, 8u);
                                                  }

                                                  if (qword_100B50950 != -1)
                                                  {
                                                    sub_10084F6EC();
                                                  }

                                                  v417 = sub_10033BE98(off_100B50948, v549, intValue & 0xF | ((intValue >> 4) << 8), (supportedServices >> 4) & 1);
                                                  if (v415 == v417)
                                                  {
                                                    v418 = intValue >> 4;
                                                  }

                                                  else
                                                  {
                                                    v418 = BYTE1(v417);
                                                  }

                                                  if (v415 == v417)
                                                  {
                                                    v419 = v414;
                                                  }

                                                  else
                                                  {
                                                    v419 = v417;
                                                  }

                                                  if (sub_1000E3188(v549) != v417)
                                                  {
                                                    v420 = qword_100BCE960;
                                                    if (os_log_type_enabled(v420, OS_LOG_TYPE_DEFAULT))
                                                    {
                                                      *v617 = 0;
                                                      _os_log_impl(&_mh_execute_header, v420, OS_LOG_TYPE_DEFAULT, "Cloud: Updating double tap settings from cloud", v617, 2u);
                                                    }

                                                    if ((supportedServices & 8) != 0)
                                                    {
                                                      if (qword_100B50950 != -1)
                                                      {
                                                        sub_10084F6EC();
                                                      }

                                                      sub_10033DD54(off_100B50948, v549, v418, v419, 4);
                                                    }
                                                  }

                                                  if ((supportedServices & 3) == 2)
                                                  {
                                                    v421 = 2;
                                                  }

                                                  else
                                                  {
                                                    v421 = (supportedServices & 3) == 1;
                                                  }

                                                  if (sub_1000E3314(v549) != v421)
                                                  {
                                                    if (qword_100B50950 != -1)
                                                    {
                                                      sub_10084F6EC();
                                                    }

                                                    sub_10033DA80(off_100B50948, v549, v421, 4);
                                                  }

                                                  if (color)
                                                  {
                                                    sub_10054AE4C(v549, color);
                                                    v422 = qword_100BCE960;
                                                    if (os_log_type_enabled(v422, OS_LOG_TYPE_DEFAULT))
                                                    {
                                                      sub_1000E5A58(v549, v617);
                                                      v423 = v617[23];
                                                      v424 = *v617;
                                                      v425 = sub_1000C2398(v549);
                                                      LODWORD(v622.__r_.__value_.__l.__data_) = v527;
                                                      v426 = v617;
                                                      if (v423 < 0)
                                                      {
                                                        v426 = v424;
                                                      }

                                                      *(v622.__r_.__value_.__r.__words + 4) = v426;
                                                      WORD2(v622.__r_.__value_.__r.__words[1]) = 1024;
                                                      *(&v622.__r_.__value_.__r.__words[1] + 6) = v425;
                                                      _os_log_impl(&_mh_execute_header, v422, OS_LOG_TYPE_DEFAULT, "Cloud: Color info updated for device %{public}s ,color code %d", &v622, 0x12u);
                                                      if ((v617[23] & 0x80000000) != 0)
                                                      {
                                                        operator delete(*v617);
                                                      }
                                                    }
                                                  }

                                                  v427 = supportedServices & 4;
                                                  v428 = qword_100BCE960;
                                                  if (os_log_type_enabled(v428, OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    sub_1000E5A58(v549, &v622);
                                                    v429 = SHIBYTE(v622.__r_.__value_.__r.__words[2]);
                                                    v430 = v622.__r_.__value_.__r.__words[0];
                                                    v431 = sub_1000E356C(v549);
                                                    v432 = &v622;
                                                    if (v429 < 0)
                                                    {
                                                      v432 = v430;
                                                    }

                                                    if ((supportedServices & 4) != 0)
                                                    {
                                                      v433 = "Enabled";
                                                    }

                                                    else
                                                    {
                                                      v433 = "Disabled";
                                                    }

                                                    *v617 = v540;
                                                    *&v617[4] = v432;
                                                    *&v617[12] = 2080;
                                                    if (v431)
                                                    {
                                                      v434 = "Enabled";
                                                    }

                                                    else
                                                    {
                                                      v434 = "Disabled";
                                                    }

                                                    *&v617[14] = v433;
                                                    *&v617[22] = 2080;
                                                    *&v617[24] = v434;
                                                    _os_log_impl(&_mh_execute_header, v428, OS_LOG_TYPE_DEFAULT, "Cloud: In Ear Detection state update from cloud for device %{public}s is %s, local state %s", v617, 0x20u);
                                                    if (SHIBYTE(v622.__r_.__value_.__r.__words[2]) < 0)
                                                    {
                                                      operator delete(v622.__r_.__value_.__l.__data_);
                                                    }
                                                  }

                                                  if (sub_1000E356C(v549) != v427 >> 2)
                                                  {
                                                    if (qword_100B50950 != -1)
                                                    {
                                                      sub_10084F6EC();
                                                    }

                                                    sub_10033DF90(off_100B50948, v549, v427 != 0, 4);
                                                  }

                                                  v435 = qword_100BCE960;
                                                  if (os_log_type_enabled(v435, OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    sub_1000E5A58(v549, v617);
                                                    v436 = v617;
                                                    if (v617[23] < 0)
                                                    {
                                                      v436 = *v617;
                                                    }

                                                    LODWORD(v622.__r_.__value_.__l.__data_) = v527;
                                                    *(v622.__r_.__value_.__r.__words + 4) = v436;
                                                    WORD2(v622.__r_.__value_.__r.__words[1]) = 1024;
                                                    *(&v622.__r_.__value_.__r.__words[1] + 6) = v528;
                                                    _os_log_impl(&_mh_execute_header, v435, OS_LOG_TYPE_DEFAULT, "Cloud: Update listening mode services for device %{public}s with service - %d", &v622, 0x12u);
                                                    if ((v617[23] & 0x80000000) != 0)
                                                    {
                                                      operator delete(*v617);
                                                    }
                                                  }

                                                  v437 = (v544 >> 10) & 7;
                                                  v438 = v437 | (v544 >> 13 << 8);
                                                  v439 = qword_100BCE960;
                                                  if (os_log_type_enabled(v439, OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    sub_1000E5A58(v549, &v622);
                                                    v440 = SHIBYTE(v622.__r_.__value_.__r.__words[2]);
                                                    v441 = v622.__r_.__value_.__r.__words[0];
                                                    v442 = sub_1000E06EC(v549);
                                                    *v617 = v540;
                                                    v443 = &v622;
                                                    if (v440 < 0)
                                                    {
                                                      v443 = v441;
                                                    }

                                                    *&v617[4] = v443;
                                                    *&v617[12] = 1024;
                                                    *&v617[14] = v442;
                                                    *&v617[18] = 1024;
                                                    *&v617[20] = v437 | (v544 >> 13 << 8);
                                                    _os_log_impl(&_mh_execute_header, v439, OS_LOG_TYPE_DEFAULT, "Cloud: Click Hold mode info update for device %{public}s, current value: %d, cloud value %d", v617, 0x18u);
                                                    if (SHIBYTE(v622.__r_.__value_.__r.__words[2]) < 0)
                                                    {
                                                      operator delete(v622.__r_.__value_.__l.__data_);
                                                    }
                                                  }

                                                  if (v544 >> 13 && v437 && sub_1000E06EC(v549) != v438 && !sub_1000E2140(v549, 0x26u))
                                                  {
                                                    if (qword_100B50950 != -1)
                                                    {
                                                      sub_10084F6EC();
                                                    }

                                                    sub_100331844(off_100B50948, v549, 22, v438, 4);
                                                    v444 = qword_100BCE960;
                                                    if (os_log_type_enabled(v444, OS_LOG_TYPE_DEFAULT))
                                                    {
                                                      sub_1000E5A58(v549, v617);
                                                      v504 = v617[23];
                                                      v505 = *v617;
                                                      v506 = sub_1000E06EC(v549);
                                                      LODWORD(v622.__r_.__value_.__l.__data_) = v527;
                                                      v507 = v617;
                                                      if (v504 < 0)
                                                      {
                                                        v507 = v505;
                                                      }

                                                      *(v622.__r_.__value_.__r.__words + 4) = v507;
                                                      WORD2(v622.__r_.__value_.__r.__words[1]) = 1024;
                                                      *(&v622.__r_.__value_.__r.__words[1] + 6) = v506;
                                                      _os_log_impl(&_mh_execute_header, v444, OS_LOG_TYPE_DEFAULT, "Cloud: Click Hold mode info updated for device %{public}s, new mode %d", &v622, 0x12u);
                                                      if ((v617[23] & 0x80000000) != 0)
                                                      {
                                                        operator delete(*v617);
                                                      }
                                                    }

LABEL_668:
                                                  }

                                                  else if (!(v544 >> 13) || !v437)
                                                  {
                                                    v444 = &_os_log_default;
                                                    v445 = &_os_log_default;
                                                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
                                                    {
                                                      *v617 = v523;
                                                      *&v617[4] = v544 >> 13;
                                                      *&v617[8] = 1024;
                                                      *&v617[10] = (v544 >> 10) & 7;
                                                      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "CloudPairing: Unknown value caught for Press and Hold configs. Left: %d, Right %d", v617, 0xEu);
                                                    }

                                                    goto LABEL_668;
                                                  }

                                                  v446 = qword_100BCE960;
                                                  v447 = os_log_type_enabled(v446, OS_LOG_TYPE_DEFAULT);
                                                  if (settingsMask && (settingsMask & 7) == buttonModes)
                                                  {
                                                    if (v447)
                                                    {
                                                      sub_1000E5A58(v549, &v622);
                                                      v448 = SHIBYTE(v622.__r_.__value_.__r.__words[2]);
                                                      v449 = v622.__r_.__value_.__r.__words[0];
                                                      v450 = sub_1000E32CC(v549);
                                                      *v617 = v540;
                                                      v451 = &v622;
                                                      if (v448 < 0)
                                                      {
                                                        v451 = v449;
                                                      }

                                                      *&v617[4] = v451;
                                                      *&v617[12] = 1024;
                                                      *&v617[14] = v450;
                                                      *&v617[18] = 1024;
                                                      *&v617[20] = settingsMask;
                                                      _os_log_impl(&_mh_execute_header, v446, OS_LOG_TYPE_DEFAULT, "Cloud: Listening mode config update is from new services layer for device %{public}s, current value: %d, cloud configs(LSv2): %d", v617, 0x18u);
                                                      if (SHIBYTE(v622.__r_.__value_.__r.__words[2]) < 0)
                                                      {
                                                        operator delete(v622.__r_.__value_.__l.__data_);
                                                      }
                                                    }
                                                  }

                                                  else
                                                  {
                                                    if (v447)
                                                    {
                                                      sub_1000E5A58(v549, &v622);
                                                      v452 = (v622.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v622 : v622.__r_.__value_.__r.__words[0];
                                                      v453 = sub_1000E32CC(v549);
                                                      v454 = sub_1000E32CC(v549);
                                                      *v617 = v540;
                                                      *&v617[4] = v452;
                                                      *&v617[12] = 1024;
                                                      *&v617[14] = v453;
                                                      *&v617[18] = 1024;
                                                      *&v617[20] = v454 | buttonModes;
                                                      _os_log_impl(&_mh_execute_header, v446, OS_LOG_TYPE_DEFAULT, "Cloud: Listening mode config update for device %{public}s, current value: %d, cloud configs(+adaptive support): %d", v617, 0x18u);
                                                      if (SHIBYTE(v622.__r_.__value_.__r.__words[2]) < 0)
                                                      {
                                                        operator delete(v622.__r_.__value_.__l.__data_);
                                                      }
                                                    }

                                                    settingsMask = sub_1000E32CC(v549) | buttonModes;
                                                  }

                                                  if (!sub_100546C50(v549, settingsMask))
                                                  {
                                                    v455 = qword_100BCE960;
                                                    if (os_log_type_enabled(v455, OS_LOG_TYPE_ERROR))
                                                    {
                                                      sub_1000E5A58(v549, v617);
                                                      v508 = v617;
                                                      if (v617[23] < 0)
                                                      {
                                                        v508 = *v617;
                                                      }

                                                      v622.__r_.__value_.__r.__words[0] = v524 | 0x600000000;
                                                      LOWORD(v622.__r_.__value_.__r.__words[1]) = 2082;
                                                      *(&v622.__r_.__value_.__r.__words[1] + 2) = v508;
                                                      _os_log_error_impl(&_mh_execute_header, v455, OS_LOG_TYPE_ERROR, "Cloud: Using default listening mode configs %d for device %{public}s", &v622, 0x12u);
                                                      if ((v617[23] & 0x80000000) != 0)
                                                      {
                                                        operator delete(*v617);
                                                      }
                                                    }

                                                    settingsMask = 6;
                                                  }

                                                  if (sub_1000E32CC(v549) != settingsMask)
                                                  {
                                                    if (qword_100B50950 != -1)
                                                    {
                                                      sub_10084F6EC();
                                                    }

                                                    sub_100331844(off_100B50948, v549, 26, settingsMask, 4);
                                                    v456 = qword_100BCE960;
                                                    if (os_log_type_enabled(v456, OS_LOG_TYPE_DEFAULT))
                                                    {
                                                      sub_1000E5A58(v549, v617);
                                                      v457 = v617[23];
                                                      v458 = *v617;
                                                      v459 = sub_1000E32CC(v549);
                                                      LODWORD(v622.__r_.__value_.__l.__data_) = v527;
                                                      v460 = v617;
                                                      if (v457 < 0)
                                                      {
                                                        v460 = v458;
                                                      }

                                                      *(v622.__r_.__value_.__r.__words + 4) = v460;
                                                      WORD2(v622.__r_.__value_.__r.__words[1]) = 1024;
                                                      *(&v622.__r_.__value_.__r.__words[1] + 6) = v459;
                                                      _os_log_impl(&_mh_execute_header, v456, OS_LOG_TYPE_DEFAULT, "Cloud: Listening mode config updated for device %{public}s, new configs %d", &v622, 0x12u);
                                                      if ((v617[23] & 0x80000000) != 0)
                                                      {
                                                        operator delete(*v617);
                                                      }
                                                    }
                                                  }

                                                  v461 = (v544 >> 2) & 3;
                                                  v462 = qword_100BCE960;
                                                  if (os_log_type_enabled(v462, OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    sub_1000E5A58(v549, &v622);
                                                    v463 = SHIBYTE(v622.__r_.__value_.__r.__words[2]);
                                                    v464 = v622.__r_.__value_.__r.__words[0];
                                                    v465 = sub_1005493C4(v549);
                                                    *v617 = v540;
                                                    v466 = &v622;
                                                    if (v463 < 0)
                                                    {
                                                      v466 = v464;
                                                    }

                                                    *&v617[4] = v466;
                                                    *&v617[12] = 1024;
                                                    *&v617[14] = v465;
                                                    *&v617[18] = 1024;
                                                    *&v617[20] = (v544 >> 2) & 3;
                                                    _os_log_impl(&_mh_execute_header, v462, OS_LOG_TYPE_DEFAULT, "Cloud: One Bud ANC mode update for device %{public}s, current value: %d, cloud value %d", v617, 0x18u);
                                                    if (SHIBYTE(v622.__r_.__value_.__r.__words[2]) < 0)
                                                    {
                                                      operator delete(v622.__r_.__value_.__l.__data_);
                                                    }
                                                  }

                                                  v467 = sub_1000E2140(v549, 0x2Bu);
                                                  v468 = ((v544 >> 2) & 3) == 0 || v467;
                                                  if ((v468 & 1) == 0 && sub_1005493C4(v549) != v461)
                                                  {
                                                    if (qword_100B50950 != -1)
                                                    {
                                                      sub_10084F6EC();
                                                    }

                                                    sub_100331844(off_100B50948, v549, 27, v461, 4);
                                                    v469 = qword_100BCE960;
                                                    if (os_log_type_enabled(v469, OS_LOG_TYPE_DEFAULT))
                                                    {
                                                      sub_1000E5A58(v549, v617);
                                                      v470 = v617[23];
                                                      v471 = *v617;
                                                      v472 = sub_1005493C4(v549);
                                                      LODWORD(v622.__r_.__value_.__l.__data_) = v527;
                                                      v473 = v617;
                                                      if (v470 < 0)
                                                      {
                                                        v473 = v471;
                                                      }

                                                      *(v622.__r_.__value_.__r.__words + 4) = v473;
                                                      WORD2(v622.__r_.__value_.__r.__words[1]) = 1024;
                                                      *(&v622.__r_.__value_.__r.__words[1] + 6) = v472;
                                                      _os_log_impl(&_mh_execute_header, v469, OS_LOG_TYPE_DEFAULT, "Cloud: One Bud ANC mode updated for device %{public}s, new mode %d", &v622, 0x12u);
                                                      if ((v617[23] & 0x80000000) != 0)
                                                      {
                                                        operator delete(*v617);
                                                      }
                                                    }
                                                  }

                                                  if (sub_1000E2140(v549, 0x20u) && !sub_1000E5DB8(v549))
                                                  {
                                                    v474 = qword_100BCE960;
                                                    if (os_log_type_enabled(v474, OS_LOG_TYPE_DEFAULT))
                                                    {
                                                      sub_1000E5A58(v549, &v622);
                                                      if ((v622.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                                      {
                                                        v475 = &v622;
                                                      }

                                                      else
                                                      {
                                                        v475 = v622.__r_.__value_.__r.__words[0];
                                                      }

                                                      v476 = sub_1000E2140(v549, 0x20u);
                                                      v477 = sub_1000E5DB8(v549);
                                                      *v617 = v540;
                                                      v478 = "No";
                                                      if (v476)
                                                      {
                                                        v478 = "Yes";
                                                      }

                                                      *&v617[4] = v475;
                                                      *&v617[12] = 2080;
                                                      *&v617[14] = v478;
                                                      *&v617[22] = 1024;
                                                      *&v617[24] = v477;
                                                      _os_log_impl(&_mh_execute_header, v474, OS_LOG_TYPE_DEFAULT, "Cloud: %{public}s Initialize setSmartRouteMode via cloud Tipi Support = %s current SR Mode =%d", v617, 0x1Cu);
                                                      if (SHIBYTE(v622.__r_.__value_.__r.__words[2]) < 0)
                                                      {
                                                        operator delete(v622.__r_.__value_.__l.__data_);
                                                      }
                                                    }

                                                    sub_100546280(v549, 1);
                                                  }

                                                  v479 = qword_100BCE960;
                                                  if (os_log_type_enabled(v479, OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    sub_1000E5A58(v549, &v622);
                                                    v480 = SHIBYTE(v622.__r_.__value_.__r.__words[2]);
                                                    v481 = v622.__r_.__value_.__r.__words[0];
                                                    v482 = sub_1000E2140(v549, 0x20u);
                                                    *v617 = v540;
                                                    v483 = &v622;
                                                    if (v480 < 0)
                                                    {
                                                      v483 = v481;
                                                    }

                                                    *&v617[4] = v483;
                                                    *&v617[12] = 1024;
                                                    *&v617[14] = v482;
                                                    *&v617[18] = 1024;
                                                    *&v617[20] = (v544 & 0x40) >> 6;
                                                    _os_log_impl(&_mh_execute_header, v479, OS_LOG_TYPE_DEFAULT, "Cloud: TiPi supported flag update from listeningServices mask %{public}s, current local value: %d, listeningServices mask value: %d", v617, 0x18u);
                                                    if (SHIBYTE(v622.__r_.__value_.__r.__words[2]) < 0)
                                                    {
                                                      operator delete(v622.__r_.__value_.__l.__data_);
                                                    }
                                                  }

                                                  if ((v544 & 0x40) != 0 && !sub_1000E2140(v549, 0x20u))
                                                  {
                                                    sub_10053E4FC(v549, 32, 1);
                                                    if (!sub_1000E5DB8(v549))
                                                    {
                                                      sub_100546280(v549, 1);
                                                    }
                                                  }
                                                }
                                              }

                                              else
                                              {
                                              }
                                            }

                                            else
                                            {
                                            }
                                          }

                                          else
                                          {
                                          }
                                        }

                                        else
                                        {
                                        }
                                      }

                                      else
                                      {
                                      }
                                    }

                                    else
                                    {
                                    }
                                  }

                                  else
                                  {
                                  }
                                }

                                else
                                {
                                }
                              }

                              else
                              {
                              }

                              if (_os_feature_enabled_impl() && NSClassFromString(@"PowerUISmartChargeClientAudioAccessories"))
                              {
                                v484 = qword_100BCE960;
                                if (os_log_type_enabled(v484, OS_LOG_TYPE_DEFAULT))
                                {
                                  sub_1000E5A58(v549, &v622);
                                  v485 = (v622.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v622 : v622.__r_.__value_.__r.__words[0];
                                  optimizedBatteryCharging = [v551 optimizedBatteryCharging];
                                  optimizedBatteryFullChargeDeadline = [v551 optimizedBatteryFullChargeDeadline];
                                  *v617 = v540;
                                  *&v617[4] = v485;
                                  *&v617[12] = 2112;
                                  *&v617[14] = optimizedBatteryCharging;
                                  *&v617[22] = 2112;
                                  *&v617[24] = optimizedBatteryFullChargeDeadline;
                                  _os_log_impl(&_mh_execute_header, v484, OS_LOG_TYPE_DEFAULT, "Cloud: OBC PowerUI values updated for device %{public}s, optimizedBatteryCharging %@, optimizedBatteryFullChargeDeadline %@", v617, 0x20u);

                                  if (SHIBYTE(v622.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    operator delete(v622.__r_.__value_.__l.__data_);
                                  }
                                }

                                optimizedBatteryCharging2 = [v551 optimizedBatteryCharging];
                                v489 = [optimizedBatteryCharging2 length] == 0;

                                if (!v489)
                                {
                                  optimizedBatteryCharging3 = [v551 optimizedBatteryCharging];
                                  longLongValue = [optimizedBatteryCharging3 longLongValue];

                                  sub_10054B188(v549, longLongValue);
                                  [(CloudPairing *)self audioAccessorySmartChargeStatusHasChangedFromCloud:v549];
                                }

                                optimizedBatteryFullChargeDeadline2 = [v551 optimizedBatteryFullChargeDeadline];
                                v493 = [optimizedBatteryFullChargeDeadline2 length] == 0;

                                if (!v493)
                                {
                                  *&v544 = objc_alloc_init(NSDateFormatter);
                                  v494 = +[NSTimeZone localTimeZone];
                                  [v544 setTimeZone:v494];

                                  [v544 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSSSSSSZZZZZ"];
                                  optimizedBatteryFullChargeDeadline3 = [v551 optimizedBatteryFullChargeDeadline];
                                  v496 = [v544 dateFromString:optimizedBatteryFullChargeDeadline3];

                                  v497 = [[PowerUISmartChargeClientAudioAccessories alloc] initWithClientName:@"com.apple.bluetooth"];
                                  bluetoothAddress5 = [v551 bluetoothAddress];
                                  v552 = 0;
                                  v499 = [v497 unfilteredDeadlineForDevice:bluetoothAddress5 withError:&v552];
                                  v500 = v552;

                                  if (v499 && ([v496 timeIntervalSinceDate:v499], v501 <= 0.0))
                                  {
                                    v502 = qword_100BCE960;
                                    if (os_log_type_enabled(v502, OS_LOG_TYPE_INFO))
                                    {
                                      sub_1000E5A58(v549, &v622);
                                      v503 = &v622;
                                      if ((v622.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                                      {
                                        v503 = v622.__r_.__value_.__r.__words[0];
                                      }

                                      *v617 = v540;
                                      *&v617[4] = v503;
                                      *&v617[12] = 2112;
                                      *&v617[14] = v496;
                                      *&v617[22] = 2112;
                                      *&v617[24] = v499;
                                      _os_log_impl(&_mh_execute_header, v502, OS_LOG_TYPE_INFO, "Cloud: Skip OBC PowerUI values updated for device %{public}s with older deadline %@ to keep newer deadline %@", v617, 0x20u);
                                      if (SHIBYTE(v622.__r_.__value_.__r.__words[2]) < 0)
                                      {
                                        operator delete(v622.__r_.__value_.__l.__data_);
                                      }
                                    }
                                  }

                                  else
                                  {
                                    sub_10054B26C(v549, v496);
                                    [(CloudPairing *)self audioAccessorySmartChargeDeadlineHasChangedFromCloud:v549];
                                  }
                                }
                              }

LABEL_755:
                              if (SHIBYTE(v623[2]) < 0)
                              {
                                operator delete(v623[0]);
                              }

                              goto LABEL_757;
                            }

                            v319 = 1;
                            while (v319 != 6)
                            {
                              if (*(&v562 + v319++))
                              {
                                if ((v319 - 2) < 5)
                                {
                                  goto LABEL_425;
                                }

                                break;
                              }
                            }
                          }

                          if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
                          {
                            sub_10084F714(&v560, v561);
                          }

                          goto LABEL_755;
                        }

LABEL_757:
                        *&v550 = v550 + 1;
                      }

                      while (v550 != v548);
                      v509 = [v546 countByEnumeratingWithState:&v564 objects:v613 count:16];
                      v548 = v509;
                      if (!v509)
                      {
LABEL_771:

                        break;
                      }
                    }
                  }
                }
              }

              goto LABEL_117;
            }

            v12 = _CFXPCCreateCFObjectFromXPCMessage();
            v259 = qword_100BCE8E8;
            v260 = os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT);
            if (v260)
            {
              *v617 = 0;
              _os_log_impl(&_mh_execute_header, v259, OS_LOG_TYPE_DEFAULT, "Devices magic info removed", v617, 2u);
            }

            if (!sub_100432918(v260, v261))
            {
              goto LABEL_117;
            }

            iCloudSignedIn2 = [(CloudPairing *)self iCloudSignedIn];
            v263 = v12 ? iCloudSignedIn2 : 0;
            if (v263 != 1)
            {
              goto LABEL_117;
            }

            v548 = [v12 objectForKeyedSubscript:@"records"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v616[0] = objc_opt_class();
              v616[1] = objc_opt_class();
              v616[2] = objc_opt_class();
              v264 = [NSArray arrayWithObjects:v616 count:3];
              v265 = [NSSet setWithArray:v264];
              *&v546 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v265 fromData:v548 error:0];

              if (v546)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v570 = 0u;
                  v571 = 0u;
                  v568 = 0u;
                  v569 = 0u;
                  *&v551 = v546;
                  v266 = [v551 countByEnumeratingWithState:&v568 objects:v615 count:16];
                  if (!v266)
                  {
                    goto LABEL_396;
                  }

                  v268 = *v569;
                  *&v267 = 138412290;
                  v550 = v267;
                  *&v267 = 136446210;
                  v549 = v267;
                  *&v267 = 136315138;
                  v547 = v267;
                  while (1)
                  {
                    v269 = 0;
                    do
                    {
                      if (*v569 != v268)
                      {
                        objc_enumerationMutation(v551);
                      }

                      v270 = *(*(&v568 + 1) + 8 * v269);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v271 = qword_100BCE960;
                        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
                        {
                          *v617 = v550;
                          *&v617[4] = v270;
                          _os_log_impl(&_mh_execute_header, v271, OS_LOG_TYPE_DEFAULT, "Device magic Info to be removed: %@", v617, 0xCu);
                        }

                        WORD2(v612) = 0;
                        LODWORD(v612) = 0;
                        memset(v617, 0, 24);
                        bluetoothAddress6 = [v270 bluetoothAddress];
                        v273 = bluetoothAddress6;
                        sub_100007E30(v617, [bluetoothAddress6 UTF8String]);

                        if (v617[23] >= 0)
                        {
                          v274 = v617;
                        }

                        else
                        {
                          v274 = *v617;
                        }

                        if (sub_10009D0B4(&v612, v274))
                        {
                          if (v612)
                          {
LABEL_363:
                            if (qword_100B508F0 != -1)
                            {
                              sub_10084F6C4();
                            }

                            v275 = sub_1000E6554(off_100B508E8, &v612, 0);
                            if (v275)
                            {
                              if (qword_100B50AB0 != -1)
                              {
                                sub_10084F69C();
                              }

                              if (sub_100558DB8(off_100B50AA8, v275))
                              {
                                if (qword_100B50950 != -1)
                                {
                                  sub_10084F6EC();
                                }

                                *(off_100B50948 + 431) = 1;
                                v276 = qword_100BCE960;
                                if (os_log_type_enabled(v276, OS_LOG_TYPE_DEFAULT))
                                {
                                  sub_1000E5A58(v275, v623);
                                  v277 = v623;
                                  if (SHIBYTE(v623[2]) < 0)
                                  {
                                    v277 = v623[0];
                                  }

                                  LODWORD(v622.__r_.__value_.__l.__data_) = v549;
                                  *(v622.__r_.__value_.__r.__words + 4) = v277;
                                  _os_log_impl(&_mh_execute_header, v276, OS_LOG_TYPE_DEFAULT, "Remove magic paired device: %{public}s", &v622, 0xCu);
                                  if (SHIBYTE(v623[2]) < 0)
                                  {
                                    operator delete(v623[0]);
                                  }
                                }

                                if (qword_100B50AB0 != -1)
                                {
                                  sub_10084F69C();
                                }

                                sub_100558E48(off_100B50AA8, v275, 0);
                              }

                              else
                              {
                                v281 = qword_100BCE960;
                                if (os_log_type_enabled(v281, OS_LOG_TYPE_INFO))
                                {
                                  sub_1000E5A58(v275, v623);
                                  v282 = v623;
                                  if (SHIBYTE(v623[2]) < 0)
                                  {
                                    v282 = v623[0];
                                  }

                                  LODWORD(v622.__r_.__value_.__l.__data_) = v549;
                                  *(v622.__r_.__value_.__r.__words + 4) = v282;
                                  _os_log_impl(&_mh_execute_header, v281, OS_LOG_TYPE_INFO, "Cannot find magic paired device to remove: %{public}s", &v622, 0xCu);
                                  if (SHIBYTE(v623[2]) < 0)
                                  {
                                    operator delete(v623[0]);
                                  }
                                }
                              }
                            }

LABEL_385:
                            if ((v617[23] & 0x80000000) != 0)
                            {
                              operator delete(*v617);
                            }

                            goto LABEL_387;
                          }

                          v278 = 1;
                          while (v278 != 6)
                          {
                            if (v613[v278++ - 16])
                            {
                              if ((v278 - 2) < 5)
                              {
                                goto LABEL_363;
                              }

                              break;
                            }
                          }
                        }

                        v280 = qword_100BCE960;
                        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
                        {
                          LODWORD(v623[0]) = v547;
                          *(v623 + 4) = v274;
                          _os_log_error_impl(&_mh_execute_header, v280, OS_LOG_TYPE_ERROR, "Received invalid device address for device record: %s", v623, 0xCu);
                        }

                        goto LABEL_385;
                      }

LABEL_387:
                      v269 = v269 + 1;
                    }

                    while (v269 != v266);
                    v283 = [v551 countByEnumeratingWithState:&v568 objects:v615 count:16];
                    v266 = v283;
                    if (!v283)
                    {
LABEL_396:

                      break;
                    }
                  }
                }
              }
            }

            goto LABEL_117;
          }

          v12 = _CFXPCCreateCFObjectFromXPCMessage();
          v223 = qword_100BCE960;
          if (os_log_type_enabled(v223, OS_LOG_TYPE_DEFAULT))
          {
            v224 = [v12 debugDescription];
            v225 = v224;
            uTF8String3 = [v224 UTF8String];
            *v617 = 136446210;
            *&v617[4] = uTF8String3;
            _os_log_impl(&_mh_execute_header, v223, OS_LOG_TYPE_DEFAULT, "Device support info updated from cloudkit = %{public}s", v617, 0xCu);
          }

          if (!sub_100432918(v227, v228) || !v12)
          {
            goto LABEL_117;
          }

          *&v543 = [v12 objectForKeyedSubscript:@"records"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v619[0] = objc_opt_class();
            v619[1] = objc_opt_class();
            v619[2] = objc_opt_class();
            v229 = [NSArray arrayWithObjects:v619 count:3];
            v230 = [NSSet setWithArray:v229];
            *&v542 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v230 fromData:v543 error:0];

            if (v542)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v578 = 0u;
                v579 = 0u;
                v576 = 0u;
                v577 = 0u;
                *&v549 = v542;
                *&v551 = [v549 countByEnumeratingWithState:&v576 objects:v618 count:16];
                if (!v551)
                {
                  goto LABEL_337;
                }

                *&v550 = *v577;
                *&v545 = v575;
                *&v231 = 136446210;
                v544 = v231;
                while (1)
                {
                  v232 = 0;
                  do
                  {
                    if (*v577 != v550)
                    {
                      objc_enumerationMutation(v549);
                    }

                    v233 = *(*(&v576 + 1) + 8 * v232);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      bluetoothAddress7 = [v233 bluetoothAddress];
                      v235 = sub_100777FF4(bluetoothAddress7);

                      if (v235)
                      {
                        if (qword_100B508F0 != -1)
                        {
                          sub_10084F6C4();
                        }

                        v236 = sub_1000504C8(off_100B508E8, v235, 0);
                        v237 = v236;
                        if (v236)
                        {
                          if (*(v236 + 128))
                          {
LABEL_304:
                            v238 = qword_100BCE960;
                            if (os_log_type_enabled(v238, OS_LOG_TYPE_DEFAULT))
                            {
                              sub_1000E5A58(v237, v617);
                              v239 = v617;
                              if (v617[23] < 0)
                              {
                                v239 = *v617;
                              }

                              LODWORD(v623[0]) = v544;
                              *(v623 + 4) = v239;
                              _os_log_impl(&_mh_execute_header, v238, OS_LOG_TYPE_DEFAULT, "DeviceSupportInformationRecordsUpdated for %{public}s", v623, 0xCu);
                              if ((v617[23] & 0x80000000) != 0)
                              {
                                operator delete(*v617);
                              }
                            }

                            cloudClient2 = [(CloudPairing *)self cloudClient];
                            bluetoothAddress8 = [v233 bluetoothAddress];
                            v574[0] = _NSConcreteStackBlock;
                            v574[1] = 3221225472;
                            v575[0] = sub_1005F4080;
                            v575[1] = &unk_100AFC8B8;
                            v575[3] = v237;
                            v575[2] = v233;
                            [cloudClient2 deviceRecord:bluetoothAddress8 completion:v574];

                            ancAssetVersion = [v233 ancAssetVersion];
                            LODWORD(bluetoothAddress8) = [ancAssetVersion length] > 1;

                            if (bluetoothAddress8)
                            {
                              ancAssetVersion2 = [v233 ancAssetVersion];
                              v244 = ancAssetVersion2;
                              sub_100007E30(&v573, [ancAssetVersion2 UTF8String]);
                              sub_100541E60(v237, &v573);
                              if (SHIBYTE(v573.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(v573.__r_.__value_.__l.__data_);
                              }
                            }

                            memset(v617, 0, 56);
                            sub_100007E30(&v617[32], "");
                            sub_1000E0610(v237, v617);
                            caseFirmwareVersion = [v233 caseFirmwareVersion];
                            v246 = caseFirmwareVersion == 0;

                            if (v246 || ([v233 caseFirmwareVersion], v247 = objc_claimAutoreleasedReturnValue(), v248 = objc_msgSend(v247, "longLongValue"), v247, !v248))
                            {
                              LODWORD(v548) = 0;
                            }

                            else
                            {
                              *&v617[16] = v248;
                              LODWORD(v548) = 1;
                            }

                            caseName = [v233 caseName];
                            v250 = [caseName length] > 1;

                            if (v250)
                            {
                              caseName2 = [v233 caseName];
                              v252 = caseName2;
                              std::string::assign(&v617[32], [caseName2 UTF8String]);

LABEL_328:
                              v256 = v617[0];
                              v257 = *&v617[2];
                              v258 = *&v617[4];
                              LODWORD(v548) = *&v617[8];
                              LODWORD(v547) = v617[10];
                              *&v546 = *&v617[16];
                              if ((v617[55] & 0x80000000) != 0)
                              {
                                sub_100008904(&v572, *&v617[32], *&v617[40]);
                              }

                              else
                              {
                                v572 = *&v617[32];
                              }

                              sub_100541F64(v237, v256, v257, v258, v548, v547, v546, 0, &v572);
                              if (SHIBYTE(v572.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(v572.__r_.__value_.__l.__data_);
                              }
                            }

                            else if (v548)
                            {
                              goto LABEL_328;
                            }

                            if ((v617[55] & 0x80000000) != 0)
                            {
                              operator delete(*&v617[32]);
                            }

                            goto LABEL_335;
                          }

                          v253 = 0;
                          while (v253 != 5)
                          {
                            v254 = v253;
                            if (*(v236 + 129 + v253++))
                            {
                              if (v254 < 5)
                              {
                                goto LABEL_304;
                              }

                              break;
                            }
                          }
                        }

                        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
                        {
                          sub_10084F748(&v612, &v612 + 1);
                        }
                      }

                      else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
                      {
                        sub_10084F77C(&v622, &v622.__r_.__value_.__s.__data_[1]);
                      }
                    }

LABEL_335:
                    ++v232;
                  }

                  while (v232 != v551);
                  *&v551 = [v549 countByEnumeratingWithState:&v576 objects:v618 count:16];
                  if (!v551)
                  {
LABEL_337:

                    break;
                  }
                }
              }
            }
          }

          goto LABEL_117;
        }

        v12 = _CFXPCCreateCFObjectFromXPCMessage();
        v176 = qword_100BCE960;
        if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
        {
          v177 = [v12 debugDescription];
          v178 = v177;
          uTF8String4 = [v177 UTF8String];
          *v617 = 141558275;
          *&v617[4] = 1752392040;
          *&v617[12] = 2081;
          *&v617[14] = uTF8String4;
          _os_log_impl(&_mh_execute_header, v176, OS_LOG_TYPE_DEFAULT, "Devices nickname info updated from cloudkit = %{private, mask.hash}s", v617, 0x16u);
        }

        if (!sub_100432918(v180, v181) || !v12)
        {
          goto LABEL_117;
        }

        *&v545 = [v12 objectForKeyedSubscript:@"devices"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v625[0] = objc_opt_class();
          v625[1] = objc_opt_class();
          v625[2] = objc_opt_class();
          v182 = [NSArray arrayWithObjects:v625 count:3];
          v183 = [NSSet setWithArray:v182];
          *&v542 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v183 fromData:v545 error:0];

          if (v542)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v590 = 0u;
              v591 = 0u;
              v588 = 0u;
              v589 = 0u;
              v548 = v542;
              *&v551 = [v548 countByEnumeratingWithState:&v588 objects:v624 count:16];
              if (!v551)
              {
                goto LABEL_279;
              }

              *&v550 = *v589;
              *&v184 = 136315138;
              v543 = v184;
              *&v184 = 67110146;
              v546 = v184;
              *&v184 = 67109890;
              v544 = v184;
              *&v184 = 136446210;
              v541 = v184;
              while (1)
              {
                v185 = 0;
                do
                {
                  if (*v589 != v550)
                  {
                    objc_enumerationMutation(v548);
                  }

                  v186 = *(*(&v588 + 1) + 8 * v185);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    WORD2(v611) = 0;
                    LODWORD(v611) = 0;
                    memset(v623, 0, sizeof(v623));
                    bluetoothAddress9 = [v186 bluetoothAddress];
                    v188 = bluetoothAddress9;
                    sub_100007E30(v623, [bluetoothAddress9 UTF8String]);

                    if (SHIBYTE(v623[2]) >= 0)
                    {
                      v189 = v623;
                    }

                    else
                    {
                      v189 = v623[0];
                    }

                    if (sub_10009D0B4(&v611, v189))
                    {
                      if (v611)
                      {
LABEL_221:
                        if (qword_100B508F0 != -1)
                        {
                          sub_10084F6C4();
                        }

                        v190 = sub_1000E6554(off_100B508E8, &v611, 0);
                        *&v549 = v190;
                        if (v190)
                        {
                          v192 = sub_100432918(v190, v191);
                          bluetoothAddress10 = [v186 bluetoothAddress];
                          v194 = bluetoothAddress10;
                          sub_100007E30(v586, [bluetoothAddress10 UTF8String]);
                          nickname = [v186 nickname];
                          v196 = nickname;
                          sub_100007E30(v584, [nickname UTF8String]);
                          (*(*v192 + 176))(v192, v586, v584);
                          if (v585 < 0)
                          {
                            operator delete(v584[0]);
                          }

                          if (v587 < 0)
                          {
                            operator delete(v586[0]);
                          }

                          v610.n128_u32[0] = 1;
                          LODWORD(v609) = 0;
                          v607 = 0;
                          v562 = 0;
                          sub_1000C2364(v549, &v562, &v609, &v607, &v610);
                          *&v547 = qword_100BCE960;
                          if (os_log_type_enabled(v547, OS_LOG_TYPE_DEFAULT))
                          {
                            v197 = v609;
                            v198 = v607;
                            v199 = v562;
                            v200 = v610.n128_u32[0];
                            sub_1000E5A58(v549, &v622);
                            v201 = &v622;
                            if ((v622.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                            {
                              v201 = v622.__r_.__value_.__r.__words[0];
                            }

                            *v617 = __PAIR64__(v197, v546);
                            *&v617[8] = 1024;
                            *&v617[10] = v198;
                            *&v617[14] = 1024;
                            *&v617[16] = v199;
                            *&v617[20] = 1024;
                            *&v617[22] = v200;
                            *&v617[26] = 2082;
                            *&v617[28] = v201;
                            _os_log_impl(&_mh_execute_header, v547, OS_LOG_TYPE_DEFAULT, "Local Device ID; vid: %x, pid: %x, vidSrc: %d, version: %d for device: %{public}s", v617, 0x24u);
                            if (SHIBYTE(v622.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v622.__r_.__value_.__l.__data_);
                            }
                          }

                          vendorID2 = [v186 vendorID];
                          integerValue3 = [vendorID2 integerValue];

                          productID2 = [v186 productID];
                          integerValue4 = [productID2 integerValue];

                          if (integerValue3 && integerValue4)
                          {
                            if (v562 <= 1)
                            {
                              v206 = 1;
                            }

                            else
                            {
                              v206 = v562;
                            }

                            v207 = qword_100BCE960;
                            if (os_log_type_enabled(v207, OS_LOG_TYPE_DEFAULT))
                            {
                              sub_1000E5A58(v549, &v622);
                              v208 = &v622;
                              if ((v622.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                              {
                                v208 = v622.__r_.__value_.__r.__words[0];
                              }

                              *v617 = __PAIR64__(integerValue3, v544);
                              *&v617[8] = 1024;
                              *&v617[10] = integerValue4;
                              *&v617[14] = 1024;
                              *&v617[16] = v206;
                              *&v617[20] = 2082;
                              *&v617[22] = v208;
                              _os_log_impl(&_mh_execute_header, v207, OS_LOG_TYPE_DEFAULT, "Updating Device ID from cloud; vid: %x, cloud pid: %x, vidSrc: %x for device: %{public}s", v617, 0x1Eu);
                              if (SHIBYTE(v622.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(v622.__r_.__value_.__l.__data_);
                              }
                            }

                            sub_10053D890(v549, v206, integerValue3, integerValue4, v610.n128_i32[0]);
                            sub_10053E630(v549);
                          }

                          v209 = [CBProductInfo productInfoWithProductID:integerValue4];
                          productName2 = [v209 productName];

                          if (productName2 && ([productName2 isEqualToString:@"Unknown"] & 1) == 0 && objc_msgSend(productName2, "length"))
                          {
                            sub_1000C23E0(v549, v617);
                            v211 = v617[23];
                            v212 = v617[23];
                            if (v617[23] < 0)
                            {
                              v211 = *&v617[8];
                            }

                            if (v211)
                            {
                              sub_1000C23E0(v549, &v622);
                              v213 = productName2;
                              v214 = std::string::compare(&v622, [productName2 UTF8String]) != 0;
                              if (SHIBYTE(v622.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(v622.__r_.__value_.__l.__data_);
                              }

                              v212 = v617[23];
                            }

                            else
                            {
                              v214 = 1;
                            }

                            if (v212 < 0)
                            {
                              operator delete(*v617);
                            }

                            if (v214)
                            {
                              sub_100007E30(v617, [productName2 utf8ValueSafe]);
                              *&v612 = 0;
                              sub_100016250(&v612);
                              v622.__r_.__value_.__r.__words[0] = v612;
                              v622.__r_.__value_.__l.__size_ = SWORD2(v612);
                              sub_100538494(v549, v617, &v622);
                              if ((v617[23] & 0x80000000) != 0)
                              {
                                operator delete(*v617);
                              }

                              v221 = qword_100BCE960;
                              if (os_log_type_enabled(v221, OS_LOG_TYPE_DEFAULT))
                              {
                                sub_1000E5A58(v549, v617);
                                v222 = v617;
                                if (v617[23] < 0)
                                {
                                  v222 = *v617;
                                }

                                LODWORD(v622.__r_.__value_.__l.__data_) = v541;
                                *(v622.__r_.__value_.__r.__words + 4) = v222;
                                _os_log_impl(&_mh_execute_header, v221, OS_LOG_TYPE_DEFAULT, "Cloud: Magic Settings updated productname %{public}s", &v622, 0xCu);
                                if ((v617[23] & 0x80000000) != 0)
                                {
                                  operator delete(*v617);
                                }
                              }
                            }
                          }

                          goto LABEL_275;
                        }

                        v220 = qword_100BCE960;
                        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
                        {
                          *v617 = v543;
                          *&v617[4] = v189;
                          v218 = v220;
                          v219 = "[DeviceRecord] No device record for device address: %s";
LABEL_259:
                          _os_log_error_impl(&_mh_execute_header, v218, OS_LOG_TYPE_ERROR, v219, v617, 0xCu);
                        }

                        goto LABEL_275;
                      }

                      v215 = 1;
                      while (v215 != 6)
                      {
                        if (*(&v611 + v215++))
                        {
                          if ((v215 - 2) < 5)
                          {
                            goto LABEL_221;
                          }

                          break;
                        }
                      }
                    }

                    v217 = qword_100BCE960;
                    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
                    {
                      *v617 = v543;
                      *&v617[4] = v189;
                      v218 = v217;
                      v219 = "Received invalid device address for device record: %s";
                      goto LABEL_259;
                    }

LABEL_275:
                    if (SHIBYTE(v623[2]) < 0)
                    {
                      operator delete(v623[0]);
                    }
                  }

                  ++v185;
                }

                while (v185 != v551);
                *&v551 = [v548 countByEnumeratingWithState:&v588 objects:v624 count:16];
                if (!v551)
                {
LABEL_279:

                  break;
                }
              }
            }
          }
        }

        goto LABEL_117;
      }

      v12 = _CFXPCCreateCFObjectFromXPCMessage();
      v120 = qword_100BCE8E8;
      if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_INFO))
      {
        *v617 = 138412290;
        *&v617[4] = v12;
        _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_INFO, "Process RemoveCloudPairedDevice: %@", v617, 0xCu);
      }

      v121 = [v12 objectForKey:@"kCloudDeviceUniqueID"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v122 = [v12 objectForKey:@"kCloudDeviceUniqueID"];

        if (v122)
        {
          v123 = qword_100BCE8E8;
          v124 = os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT);
          if (v124)
          {
            *v617 = 138412290;
            *&v617[4] = v122;
            _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "Removing CloudPairedDevice value: %@", v617, 0xCu);
          }

          v126 = sub_100007EE8(v124, v125);
          v600[0] = _NSConcreteStackBlock;
          v600[1] = 3221225472;
          v600[2] = sub_1005F3F94;
          v600[3] = &unk_100ADF820;
          v127 = v122;
          v601 = v127;
          sub_10000CA94(v126, v600);

          goto LABEL_117;
        }
      }

      else
      {
      }

      v136 = qword_100BCE8E8;
      if (!os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_INFO))
      {
LABEL_117:

        goto LABEL_118;
      }

      *v617 = 138412290;
      *&v617[4] = 0;
      v79 = "Invalid RemoveCloudPairedDevice value: %@";
      v80 = v136;
      v81 = OS_LOG_TYPE_INFO;
      v82 = 12;
    }

    _os_log_impl(&_mh_execute_header, v80, v81, v79, v617, v82);
    goto LABEL_117;
  }

LABEL_119:
}

- (void)fetchSoundProfile
{
  v3 = _os_feature_enabled_impl();
  if (v3 && (sub_1005FCCC4(v3, v4) & 1) != 0)
  {
    cloudClient = [(CloudPairing *)self cloudClient];
    [cloudClient fetchSoundProfileRecordWithCompletion:&stru_100B01290];
  }

  else
  {
    v5 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BTAudioCloudSyncMonitor: Spatial Profile Not supported hardware ", buf, 2u);
    }
  }
}

- (void)resetServerConnection
{
  serverConnection = [(CloudPairing *)self serverConnection];

  if (serverConnection)
  {
    serverConnection2 = [(CloudPairing *)self serverConnection];
    xpc_connection_cancel(serverConnection2);

    [(CloudPairing *)self setServerConnection:0];
  }

  v5 = dispatch_get_global_queue(2, 0);
  mach_service = xpc_connection_create_mach_service("com.apple.BTServer.cloudpairing", v5, 0);
  [(CloudPairing *)self setServerConnection:mach_service];

  serverConnection3 = [(CloudPairing *)self serverConnection];

  v8 = qword_100BCE8E8;
  v9 = os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_INFO);
  if (serverConnection3)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Connected to cloudpaird", buf, 2u);
    }

    serverConnection4 = [(CloudPairing *)self serverConnection];
    xpc_connection_set_event_handler(serverConnection4, &stru_100B012D0);

    serverConnection5 = [(CloudPairing *)self serverConnection];
    xpc_connection_resume(serverConnection5);

    if ([(NSMutableDictionary *)self->_idsMultiUsersDictionary count])
    {
      v12 = qword_100BCE8E8;
      if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MUC - Connected to cloudpaird - send getIDSLocalDeviceInfo", v13, 2u);
      }

      [(CloudPairing *)self cloudpairdMsg:@"getIDSLocalDeviceInfo" args:&__NSDictionary0__struct];
    }
  }

  else if (v9)
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Failed to connect to cloudpaird", v15, 2u);
  }
}

- (void)cloudpairdReplyMsg:(id)msg args:(id)args
{
  msgCopy = msg;
  argsCopy = args;
  if ([(CloudPairing *)self isRunningInRecovery])
  {
    v8 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CP: Not Available in this layer", v12, 2u);
    }
  }

  else
  {
    reply = xpc_dictionary_create_reply(msgCopy);
    if (argsCopy)
    {
      v10 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_dictionary_set_value(reply, "kMsgArgs", v10);
    }

    v11 = xpc_dictionary_get_remote_connection(msgCopy);
    xpc_connection_send_message(v11, reply);
  }
}

- (void)cloudpairdMsg:(id)msg args:(id)args
{
  msgCopy = msg;
  argsCopy = args;
  if ([(CloudPairing *)self isRunningInRecovery])
  {
    v8 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CP: Not Available in this layer", &v16, 2u);
    }
  }

  else
  {
    serverConnection = [(CloudPairing *)self serverConnection];

    if (!serverConnection)
    {
      [(CloudPairing *)self resetServerConnection];
    }

    serverConnection2 = [(CloudPairing *)self serverConnection];

    v11 = qword_100BCE8E8;
    if (serverConnection2)
    {
      if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412803;
        v17 = msgCopy;
        v18 = 2160;
        v19 = 1752392040;
        v20 = 2113;
        v21 = argsCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CloudPairing: Send message: %@ - %{private, mask.hash}@", &v16, 0x20u);
      }

      v12 = xpc_dictionary_create(0, 0, 0);
      v13 = msgCopy;
      xpc_dictionary_set_string(v12, "kMsgId", [msgCopy UTF8String]);
      if (argsCopy)
      {
        v14 = _CFXPCCreateXPCMessageWithCFObject();
        xpc_dictionary_set_value(v12, "kMsgArgs", v14);
      }

      serverConnection3 = [(CloudPairing *)self serverConnection];
      xpc_connection_send_message(serverConnection3, v12);
    }

    else
    {
      sub_10084FA38(qword_100BCE8E8, msgCopy, argsCopy);
    }
  }
}

- (void)registerWithCloudPairedDevices:(id)devices identifiers:(id)identifiers
{
  devicesCopy = devices;
  identifiersCopy = identifiers;
  v8 = qword_100BCE8E8;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [identifiersCopy componentsJoinedByString:{@", "}];
    *buf = 136315138;
    uTF8String = [v9 UTF8String];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Locally paired iCloud identifiers: [ %s ]", buf, 0xCu);
  }

  v10 = qword_100BCE8E8;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [devicesCopy componentsJoinedByString:{@", "}];
    v12 = v11;
    uTF8String2 = [v11 UTF8String];
    *buf = 136315138;
    uTF8String = uTF8String2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Locally paired iCloud BTUUIDs: [ %s ]", buf, 0xCu);
  }

  v14 = [NSArray arrayWithArray:devicesCopy];
  cloudLocalUUIDs = self->_cloudLocalUUIDs;
  self->_cloudLocalUUIDs = v14;

  v16 = [NSArray arrayWithArray:identifiersCopy];
  cloudidsIdentifiers = self->_cloudidsIdentifiers;
  self->_cloudidsIdentifiers = v16;

  objc_initWeak(buf, self);
  serialQueue = [(CloudPairing *)self serialQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005F5750;
  block[3] = &unk_100AEB0C0;
  objc_copyWeak(&v20, buf);
  dispatch_async(serialQueue, block);

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);
}

- (void)printDebug
{
  v4 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "statedump: ------------------ IDS Multi Users -------------------", &v17, 2u);
  }

  v5 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_supportsVirtualAddress)
    {
      v6 = "YES";
    }

    else
    {
      v6 = "NO";
    }

    v17 = 136315138;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "statedump: Virtual address supported: %s", &v17, 0xCu);
  }

  v7 = qword_100BCE8E8;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    currentIDSUser = [(CloudPairing *)self currentIDSUser];
    if (currentIDSUser)
    {
      currentIDSUser2 = [(CloudPairing *)self currentIDSUser];
      v9 = currentIDSUser2;
      uTF8String = [currentIDSUser2 UTF8String];
    }

    else
    {
      uTF8String = "none";
    }

    v17 = 136315138;
    v18 = uTF8String;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "statedump: Current IDS user: %s", &v17, 0xCu);
    if (currentIDSUser)
    {
    }
  }

  v11 = qword_100BCE8E8;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    currentUserRandomAddress = [(CloudPairing *)self currentUserRandomAddress];
    if (currentUserRandomAddress)
    {
      currentIDSUser2 = [(CloudPairing *)self currentUserRandomAddress];
      v13 = currentIDSUser2;
      uTF8String2 = [currentIDSUser2 UTF8String];
    }

    else
    {
      uTF8String2 = "none";
    }

    v17 = 136315138;
    v18 = uTF8String2;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "statedump: Current user's RSA: %s", &v17, 0xCu);
    if (currentUserRandomAddress)
    {
    }
  }

  v15 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    publicAddress = self->_publicAddress;
    v17 = 138412290;
    v18 = publicAddress;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "statedump: IDS Multi users dictionary for local address: %@", &v17, 0xCu);
  }

  [(NSMutableDictionary *)self->_idsMultiUsersDictionary enumerateKeysAndObjectsUsingBlock:&stru_100B01310];
  [(CloudPairing *)self cloudpairdMsg:@"printDebug" args:&__NSDictionary0__struct];
}

- (void)sendCloudKitPush
{
  v3 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "sendCloudKitPush", v4, 2u);
  }

  [(CloudPairing *)self cloudpairdMsg:@"sendCloudKitPush" args:0];
}

- (BOOL)getAccountStatus
{
  v3 = qword_100BCE8E8;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = [(CloudPairing *)self iCloudSignedIn];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "getAccountStatus : iCloud Account: %i", v5, 8u);
  }

  return [(CloudPairing *)self iCloudSignedIn];
}

- (BOOL)handleXPCUnpairCommand:(id)command
{
  commandCopy = command;
  v4 = [commandCopy objectForKeyedSubscript:@"PublicAddress"];
  v5 = [NSString stringWithFormat:@"Public %@", v4];
  v6 = sub_100777FF4(v5);

  v7 = [commandCopy objectForKeyedSubscript:@"RandomAddress"];
  v8 = [NSString stringWithFormat:@"Random %@", v7];
  v9 = sub_100777FF4(v8);

  v10 = (v6 | v9) != 0;
  if (v6 | v9)
  {
    v11 = [commandCopy objectForKeyedSubscript:@"kCloudDeviceUniqueID"];
    v12 = [commandCopy objectForKeyedSubscript:@"kCloudPairingID"];
    v13 = v12;
    if (v11 && v12)
    {
      if (qword_100B508D0 != -1)
      {
        sub_10084FB3C();
      }

      if (!sub_1007868D4(off_100B508C8, v13))
      {
        v14 = qword_100BCE8E8;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          sub_10084FB50([v11 UTF8String], v13, buf);
        }
      }

      if (qword_100B508C0 != -1)
      {
        sub_10084F45C();
      }

      if (!sub_10004EE74(off_100B508B8, v13))
      {
        v15 = qword_100BCE8E8;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          v16 = v11;
          sub_10084FB8C([v11 UTF8String], v13, v43);
        }
      }

      if (qword_100B508D0 != -1)
      {
        sub_10084FBC8();
      }

      sub_1000B006C(off_100B508C8, v13, __p);
      if (v42 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      v18 = [NSString stringWithUTF8String:v17];
      v19 = [v11 isEqualToString:v18];

      if (v42 < 0)
      {
        operator delete(__p[0]);
        if (v19)
        {
          goto LABEL_30;
        }
      }

      else if (v19)
      {
        goto LABEL_30;
      }

      v23 = qword_100BCE8E8;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        v24 = v11;
        sub_10084FBF0([v11 UTF8String], v13, __p);
      }
    }

LABEL_30:
    if (qword_100B508C0 != -1)
    {
      sub_10084F45C();
    }

    v25 = off_100B508B8;
    v26 = v11;
    sub_100007E30(v36, [v11 UTF8String]);
    v27 = sub_1007C2828(v25, v36);
    v28 = v27;
    if (v37 < 0)
    {
      operator delete(v36[0]);
      if (v28)
      {
LABEL_53:

        goto LABEL_54;
      }
    }

    else if (v27)
    {
      goto LABEL_53;
    }

    memset(uu, 0, sizeof(uu));
    uuid_clear(uu);
    if (qword_100B508D0 != -1)
    {
      sub_10084FBC8();
    }

    sub_1000498D4(off_100B508C8, v9, 0, 1u, 0, 0, src);
    uuid_copy(uu, src);
    if (uuid_is_null(uu))
    {
      v29 = qword_100BCE8E8;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = sub_100063D0C(v9);
        *src = 138412290;
        v39 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "No static random device found with address %@", src, 0xCu);
      }
    }

    else
    {
      if (qword_100B508C0 != -1)
      {
        sub_10084F45C();
      }

      v31 = off_100B508B8;
      v29 = sub_10004DF60(uu);
      sub_1007C2AA4(v31, v29);
    }

    if (qword_100B508D0 != -1)
    {
      sub_10084FBC8();
    }

    sub_1000498D4(off_100B508C8, v6, 0, 1u, 0, 0, src);
    uuid_copy(uu, src);
    if (uuid_is_null(uu))
    {
      v32 = qword_100BCE8E8;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = sub_100063D0C(v6);
        *src = 138412290;
        v39 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "No local device found with address %@", src, 0xCu);
      }
    }

    else
    {
      if (qword_100B508C0 != -1)
      {
        sub_10084F45C();
      }

      v34 = off_100B508B8;
      v32 = sub_10004DF60(uu);
      sub_1007C2AA4(v34, v32);
    }

    goto LABEL_53;
  }

  v20 = [commandCopy objectForKeyedSubscript:@"PublicAddress"];
  v21 = [commandCopy objectForKeyedSubscript:@"RandomAddress"];
  v11 = [NSString stringWithFormat:@"Invalid public address %@ and Invalid random address %@", v20, v21];

  v22 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = v11;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Error unpairing Cloud Device: %@", buf, 0xCu);
  }

LABEL_54:

  return v10;
}

- (id)generateKeyDictForTypes:(id)types keyLength:(unint64_t)length forAddress:(id)address
{
  typesCopy = types;
  addressCopy = address;
  if (!self->_keysGenerated)
  {
    [(CloudPairing *)self generateKeys];
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
    {
      sub_10084FC2C();
    }
  }

  v10 = +[NSMutableDictionary dictionary];
  if (![typesCopy containsObject:@"EncryptionKeys"])
  {
    goto LABEL_17;
  }

  __buf = 0;
  v20 = 0;
  v23[1] = 0;
  v24 = 0;
  v22[1] = 0;
  v23[0] = 0;
  v22[0] = 0;
  arc4random_buf(&__buf + 2, 2uLL);
  arc4random_buf(&v24, 8uLL);
  if (!sub_10023FDC8(self->_diversifierHidingKey, &v24, &v20))
  {
    LOWORD(__buf) = HIWORD(__buf) ^ v20;
    if (sub_100240328(self->_encryptionRootKey, SHIWORD(__buf), 0, v23))
    {
      if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
      {
        sub_10084FD14();
      }

      goto LABEL_28;
    }

    if (length != 16)
    {
      bzero(v23 + length, 16 - length);
    }

    if (sub_100240328(self->_encryptionRootKey, SHIWORD(__buf), 1, v22))
    {
      if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
      {
        sub_10084FD84();
      }

      goto LABEL_28;
    }

    v11 = [NSData dataWithBytes:v23 length:16];
    [v10 setObject:v11 forKeyedSubscript:@"LTK"];

    v12 = [NSNumber numberWithUnsignedInteger:length];
    [v10 setObject:v12 forKeyedSubscript:@"LTKLength"];

    [v10 setObject:&off_100B33990 forKeyedSubscript:@"LTKType"];
    v13 = [NSData dataWithBytes:&__buf length:2];
    [v10 setObject:v13 forKeyedSubscript:@"EDIV"];

    v14 = [NSData dataWithBytes:&v24 length:8];
    [v10 setObject:v14 forKeyedSubscript:@"RAND"];

LABEL_17:
    if ([typesCopy containsObject:@"PublicKeys"])
    {
      v15 = [NSData dataWithBytes:self->_cloudPublicKey length:64];
      [v10 setObject:v15 forKeyedSubscript:@"CloudPublicKey"];

      v16 = [NSData dataWithBytes:self->_cloudNonce length:16];
      [v10 setObject:v16 forKeyedSubscript:@"CloudNonce"];
    }

    if ([typesCopy containsObject:@"IdentityKeys"])
    {
      if (addressCopy)
      {
        v17 = [(CloudPairing *)self getIRKForRandomStaticAddress:addressCopy];
        if (!v17)
        {
          if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
          {
            sub_10084FDF4();
          }

          goto LABEL_28;
        }

        [v10 setObject:v17 forKeyedSubscript:@"IRK"];
      }

      else
      {
        v17 = [NSData dataWithBytes:self->_identityResolvingKey length:16];
        [v10 setObject:v17 forKeyedSubscript:@"IRK"];
      }
    }

    v18 = v10;
    goto LABEL_29;
  }

  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
  {
    sub_10084FCA4();
  }

LABEL_28:
  v18 = 0;
LABEL_29:

  return v18;
}

- (id)generateCloudPairingIDWithResponse:(id)response localKeys:(id)keys from:(id)from forProtocolID:(id)d
{
  responseCopy = response;
  keysCopy = keys;
  fromCopy = from;
  dCopy = d;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_10004239C;
  v32 = sub_100042664;
  v33 = 0;
  v15 = sub_100007EE8(dCopy, v14);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1005F6C40;
  v22[3] = &unk_100B01338;
  v27 = &v28;
  v22[4] = self;
  v16 = responseCopy;
  v23 = v16;
  v17 = keysCopy;
  v24 = v17;
  v18 = fromCopy;
  v25 = v18;
  v19 = dCopy;
  v26 = v19;
  sub_1005711EC(v15, v22);
  v20 = v29[5];

  _Block_object_dispose(&v28, 8);

  return v20;
}

- (id)_generateCloudPairingIDWithResponse:(id)response localKeys:(id)keys from:(id)from forProtocolID:(id)d
{
  responseCopy = response;
  keysCopy = keys;
  fromCopy = from;
  dCopy = d;
  if (self->_keysGenerated || [(CloudPairing *)self _generateKeys])
  {
    v11 = qword_100BCE8E8;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Keys available or generated", buf, 2u);
    }

    [responseCopy objectForKeyedSubscript:@"DeviceName"];
    objc_claimAutoreleasedReturnValue();
    [responseCopy objectForKeyedSubscript:@"RequestedKeyType"];
    objc_claimAutoreleasedReturnValue();
    [responseCopy objectForKeyedSubscript:@"RequestedKeys"];
    objc_claimAutoreleasedReturnValue();
    [responseCopy objectForKeyedSubscript:@"IDSLocalRandomAddress"];
    objc_claimAutoreleasedReturnValue();
    operator new();
  }

  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
  {
    sub_10084FE30();
  }

  return 0;
}

- (id)readUserPreference:(id)preference
{
  v3 = CFPreferencesCopyValue(preference, @"com.apple.CoreBluetooth.cloud", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

  return v3;
}

- (void)setuserPreference:(id)preference value:(id)value sync:(BOOL)sync
{
  preferenceCopy = preference;
  valueCopy = value;
  CFPreferencesSetValue(preferenceCopy, valueCopy, @"com.apple.CoreBluetooth.cloud", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (sync && !CFPreferencesSynchronize(@"com.apple.CoreBluetooth.cloud", kCFPreferencesCurrentUser, kCFPreferencesAnyHost))
  {
    v9 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[setSystemPreference] syncs returns false\n", v10, 2u);
    }
  }
}

- (void)removeuserPreference:(id)preference sync:(BOOL)sync
{
  preferenceCopy = preference;
  CFPreferencesSetValue(preferenceCopy, 0, @"com.apple.CoreBluetooth.cloud", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (sync && !CFPreferencesSynchronize(@"com.apple.CoreBluetooth.cloud", kCFPreferencesCurrentUser, kCFPreferencesAnyHost))
  {
    v6 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[setSystemPreference] syncs returns false\n", v7, 2u);
    }
  }
}

- (id)createBluetoothAddressForIDSLocalDevice:(id)device
{
  deviceCopy = device;
  v5 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    idsMultiUsersDictionary = self->_idsMultiUsersDictionary;
    *buf = 138412546;
    *&buf[4] = deviceCopy;
    *&buf[12] = 2112;
    *&buf[14] = idsMultiUsersDictionary;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MUC - create RSA for local IDS device: %@, current users: %@", buf, 0x16u);
  }

  v7 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v41 = sub_10004239C;
  v42 = sub_100042664;
  v43 = 0;
  if (!self->_supportsVirtualAddress)
  {
    goto LABEL_6;
  }

  v8 = self->_idsMultiUsersDictionary;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1005F94A4;
  v29[3] = &unk_100B01360;
  v9 = deviceCopy;
  v30 = v9;
  v31 = buf;
  [(NSMutableDictionary *)v8 enumerateKeysAndObjectsUsingBlock:v29];
  if (*(*&buf[8] + 40))
  {
LABEL_5:

    v7 = *(*&buf[8] + 40);
LABEL_6:
    v10 = v7;
    goto LABEL_7;
  }

  v28 = 0;
  __buf = 0;
  arc4random_buf(&__buf, 6uLL);
  v12 = __buf | 0xC0;
  LOBYTE(__buf) = __buf | 0xC0;
  v13 = sub_1007774DC((v12 << 40) | (BYTE1(__buf) << 32) | (BYTE2(__buf) << 24) | (HIBYTE(__buf) << 16) | (v28 << 8) | HIBYTE(v28));
  v14 = *(*&buf[8] + 40);
  *(*&buf[8] + 40) = v13;

  v15 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(*&buf[8] + 40);
    *v32 = 138412290;
    v33 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "MUC - RSA generated: %@", v32, 0xCu);
  }

  v39 = 0uLL;
  arc4random_buf(&v39, 0x10uLL);
  v38[0] = 0;
  v38[1] = 0;
  if (!sub_100240328(&v39, 1, 0, v38))
  {
    if (!self->_idsMultiUsersDictionary)
    {
      v17 = [NSMutableDictionary dictionaryWithCapacity:1];
      v18 = self->_idsMultiUsersDictionary;
      self->_idsMultiUsersDictionary = v17;
    }

    v19 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      publicAddress = self->_publicAddress;
      *v32 = 138412290;
      v33 = publicAddress;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "MUC - local public address %@", v32, 0xCu);
    }

    v36[0] = @"IDSLocalID";
    v36[1] = @"IRK";
    v37[0] = v9;
    v21 = [NSData dataWithBytes:v38 length:16];
    v37[1] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
    [(NSMutableDictionary *)self->_idsMultiUsersDictionary setObject:v22 forKeyedSubscript:*(*&buf[8] + 40)];

    v23 = [NSDictionary dictionaryWithObject:self->_idsMultiUsersDictionary forKey:self->_publicAddress];
    [(CloudPairing *)self removeuserPreference:@"IDSMultiUsers" sync:1];
    [(CloudPairing *)self setuserPreference:@"IDSMultiUsers" value:v23 sync:1];
    v24 = qword_100BCE8E8;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = IsAppleInternalBuild();
      if (v25)
      {
        p_isa = &self->_idsMultiUsersDictionary->super.super.isa;
      }

      else
      {
        p_isa = [NSNumber numberWithUnsignedInteger:[(NSMutableDictionary *)self->_idsMultiUsersDictionary count]];
      }

      *v32 = 138412546;
      v33 = p_isa;
      v34 = 2112;
      v35 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "MUC - MUC dictionary = %@, dictToStore %@", v32, 0x16u);
      if (!v25)
      {
      }
    }

    goto LABEL_5;
  }

  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
  {
    sub_10084FEA8();
  }

  v10 = 0;
LABEL_7:
  _Block_object_dispose(buf, 8);

  return v10;
}

- (void)resetDataForIDSLocalDevice:(id)device
{
  deviceCopy = device;
  v5 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    idsMultiUsersDictionary = self->_idsMultiUsersDictionary;
    *buf = 138412546;
    *&buf[4] = deviceCopy;
    *&buf[12] = 2112;
    *&buf[14] = idsMultiUsersDictionary;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MUC - Reset data for local IDS device: %@, current users: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v13 = sub_10004239C;
  v14 = sub_100042664;
  v15 = 0;
  if (self->_supportsVirtualAddress)
  {
    v7 = self->_idsMultiUsersDictionary;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1005F980C;
    v9[3] = &unk_100B01360;
    v10 = deviceCopy;
    v11 = buf;
    [(NSMutableDictionary *)v7 enumerateKeysAndObjectsUsingBlock:v9];
    if (*(*&buf[8] + 40))
    {
      if (qword_100B50C68 != -1)
      {
        sub_10084FF18();
      }

      *(off_100B50C60 + 17088) = 0;
      v8 = 0;
      sub_1000216B4(&v8);
      sub_1002E6E84(0);
      sub_10002249C(&v8);
    }
  }

  _Block_object_dispose(buf, 8);
}

- (id)getIRKForRandomStaticAddress:(id)address
{
  addressCopy = address;
  v5 = addressCopy;
  if (addressCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_10004239C;
    v16 = sub_100042664;
    v17 = 0;
    idsMultiUsersDictionary = self->_idsMultiUsersDictionary;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1005F9AA0;
    v9[3] = &unk_100B01360;
    v10 = addressCopy;
    v11 = &v12;
    [(NSMutableDictionary *)idsMultiUsersDictionary enumerateKeysAndObjectsUsingBlock:v9];
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateRandomAddressContinuityAdvInstance:(id)instance
{
  instanceCopy = instance;
  if (instanceCopy)
  {
    if ([(CloudPairing *)self multipleAdvInitialized])
    {
      v5 = [(CloudPairing *)self getIRKForRandomStaticAddress:instanceCopy];
      if (v5)
      {
        v10 = 0;
        sub_1000216B4(&v10);
        v6 = v5;
        sub_1002E6E84([v5 bytes]);
        v7 = sub_1002D2258();
        v8 = qword_100BCE8E8;
        if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v12 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MUC - updated RSA adv instance with status: %d", buf, 8u);
        }

        if (v7)
        {
          if (qword_100B50C68 != -1)
          {
            sub_10084FF18();
          }

          v9 = 0;
        }

        else
        {
          if (qword_100B50C68 != -1)
          {
            sub_10084FF18();
          }

          v9 = 1;
        }

        *(off_100B50C60 + 17088) = v9;
        sub_10002249C(&v10);
      }

      else if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
      {
        sub_10084FF7C();
      }
    }

    else if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
    {
      sub_10084FF40();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
  {
    sub_10084FFEC();
  }
}

- (void)updateCurrentIDSUserInfo:(id)info
{
  infoCopy = info;
  v5 = qword_100BCE8E8;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    currentUserRandomAddress = [(CloudPairing *)self currentUserRandomAddress];
    *buf = 138412546;
    v19 = currentUserRandomAddress;
    v20 = 2112;
    v21 = infoCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MUC - update current -> new RSA (%@ - %@)", buf, 0x16u);
  }

  currentUserRandomAddress2 = [(CloudPairing *)self currentUserRandomAddress];
  v8 = (infoCopy | currentUserRandomAddress2) == 0;

  if (!v8)
  {
    currentUserRandomAddress3 = [(CloudPairing *)self currentUserRandomAddress];
    v10 = [currentUserRandomAddress3 isEqualToString:infoCopy];

    if (v10)
    {
      v11 = qword_100BCE8E8;
      if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "MUC - same user - don't update", buf, 2u);
      }
    }

    else
    {
      [(CloudPairing *)self setCurrentUserRandomAddress:infoCopy];
      currentUserRandomAddress4 = [(CloudPairing *)self currentUserRandomAddress];
      v13 = currentUserRandomAddress4 == 0;

      if (v13)
      {
        v17 = qword_100BCE8E8;
        if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "MUC - user has signed out", buf, 2u);
        }

        if (qword_100B508C0 != -1)
        {
          sub_10084F45C();
        }

        nullsub_21();
        if (qword_100B50C68 != -1)
        {
          sub_10084FF18();
        }

        *(off_100B50C60 + 17088) = 0;
        buf[0] = 0;
        sub_1000216B4(buf);
        sub_1002E6E84(0);
        sub_10002249C(buf);
      }

      else
      {
        currentUserRandomAddress5 = [(CloudPairing *)self currentUserRandomAddress];
        v15 = [NSString stringWithFormat:@"Random %@", currentUserRandomAddress5];
        sub_100777FF4(v15);

        if (qword_100B508C0 != -1)
        {
          sub_10084F45C();
        }

        nullsub_21();
        currentUserRandomAddress6 = [(CloudPairing *)self currentUserRandomAddress];
        [(CloudPairing *)self updateRandomAddressContinuityAdvInstance:currentUserRandomAddress6];
      }
    }
  }
}

- (id)getPairedDeviceForIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10004239C;
  v17 = sub_100042664;
  v18 = +[NSDictionary dictionary];
  v6 = sub_100007EE8(v18, v5);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1005FA2C8;
  v10[3] = &unk_100B01230;
  v12 = &v13;
  v10[4] = self;
  v7 = identifierCopy;
  v11 = v7;
  sub_1005711EC(v6, v10);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

- (id)_getPairedDeviceForIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v31 = +[NSMutableDictionary dictionary];
  if (qword_100B508C0 != -1)
  {
    sub_10084F448();
  }

  v3 = sub_10009DA04(off_100B508B8);
  v29 = [NSMutableSet setWithArray:v3];

  v4 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    cloudLocalUUIDs = self->_cloudLocalUUIDs;
    *buf = 138412546;
    *&buf[4] = v29;
    *&buf[12] = 2112;
    *&buf[14] = cloudLocalUUIDs;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MUC - Paired devices: %@, cloud local paired %@", buf, 0x16u);
  }

  if (identifierCopy && self->_supportsVirtualAddress)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v47 = sub_10004239C;
    v48 = sub_100042664;
    v49 = 0;
    idsMultiUsersDictionary = self->_idsMultiUsersDictionary;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1005FAA84;
    v40[3] = &unk_100B01360;
    v41 = identifierCopy;
    v42 = buf;
    [(NSMutableDictionary *)idsMultiUsersDictionary enumerateKeysAndObjectsUsingBlock:v40];
    if (*(*&buf[8] + 40))
    {
      v7 = [NSString stringWithFormat:@"Random %@", *(*&buf[8] + 40)];
      v8 = sub_100777FF4(v7);

      if (qword_100B508C0 != -1)
      {
        sub_10084F45C();
      }

      v9 = sub_1003CCB64(*(off_100B508B8 + 1884), v8);
      allKeys = [v9 allKeys];
      v11 = [NSSet setWithArray:allKeys];
      [v29 unionSet:v11];

      v12 = qword_100BCE8E8;
      if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
      {
        *v44 = 138412290;
        v45 = v29;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "MUC - All paired devices: %@", v44, 0xCu);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v29;
  v13 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v13)
  {
    v14 = *v37;
    do
    {
      v15 = 0;
      do
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v36 + 1) + 8 * v15);
        v17 = qword_100BCE8E8;
        if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "MUC - Checking %@", buf, 0xCu);
        }

        if (qword_100B508D0 != -1)
        {
          sub_10084FBC8();
        }

        sub_1000B006C(off_100B508C8, v16, buf);
        if ((buf[23] & 0x80000000) != 0)
        {
          v25 = *&buf[8];
          operator delete(*buf);
          if (v25)
          {
LABEL_25:
            if (qword_100B508D0 != -1)
            {
              sub_10084FBC8();
            }

            sub_1000B006C(off_100B508C8, v16, buf);
            if (buf[23] >= 0)
            {
              v18 = buf;
            }

            else
            {
              v18 = *buf;
            }

            v19 = [NSString stringWithUTF8String:v18];
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            v20 = qword_100BCE8E8;
            if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v19;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "MUC - Cloud identifier %@", buf, 0xCu);
            }

            if (self->_supportsVirtualAddress)
            {
              if (qword_100B508D0 != -1)
              {
                sub_10084FBC8();
              }

              v21 = off_100B508C8;
              sub_100007E30(__p, "PairingAttemptedUsingRSA");
              v22 = sub_10004EB40(v21, v16, __p);
              v23 = v22;
              if ((v35 & 0x80000000) == 0)
              {
                if (v22)
                {
                  goto LABEL_39;
                }

LABEL_45:
                v27 = qword_100BCE8E8;
                if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  *&buf[4] = v16;
                  *&buf[12] = 2112;
                  *&buf[14] = v19;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "MUC - Upgrade keys for BTUUID %@ iCloud %@ using RSA", buf, 0x16u);
                }

LABEL_47:

                goto LABEL_48;
              }

              operator delete(__p[0]);
              if (!v23)
              {
                goto LABEL_45;
              }
            }

LABEL_39:
            uUIDString = [v16 UUIDString];
            [v31 setObject:v19 forKey:uUIDString];

            goto LABEL_47;
          }
        }

        else if (buf[23])
        {
          goto LABEL_25;
        }

        v26 = qword_100BCE8E8;
        if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v16;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "MUC - Not a cloud paired device %@", buf, 0xCu);
        }

LABEL_48:
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
    }

    while (v13);
  }

  return v31;
}

- (void)sendCloudpairingRetry:(id)retry
{
  retryCopy = retry;
  if ([(CloudPairing *)self isRunningInRecovery])
  {
    v5 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CP: Not Available to retry", &v13, 2u);
    }
  }

  else
  {
    serverConnection = [(CloudPairing *)self serverConnection];

    if (!serverConnection)
    {
      [(CloudPairing *)self resetServerConnection];
    }

    serverConnection2 = [(CloudPairing *)self serverConnection];
    if (serverConnection2)
    {
      v8 = [retryCopy count];

      if (v8)
      {
        v9 = qword_100BCE8E8;
        if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 138477827;
          v14 = retryCopy;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Send Cloud Pairing Retry for %{private}@", &v13, 0xCu);
        }

        v10 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_string(v10, "kMsgId", "cloudpairingRetry");
        v11 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v10, "kMsgArgs", v11);
        serverConnection3 = [(CloudPairing *)self serverConnection];
        xpc_connection_send_message(serverConnection3, v10);
      }
    }
  }
}

- (void)startListeningToPowerUIStatusChanges
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"audioAccessorySmartChargeStatusHasChangedFromNotification:" name:PowerUIAudioAccessorySmartChargeStatusHasChangedNote object:0];

  v4 = +[NSDistributedNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"audioAccessorySmartChargeDeadlineHasChangedFromNotification:" name:PowerUIAudioAccessorySmartChargeDeadlineHasChangedNote object:0];
}

- (void)stopListeningToPowerUIStatusChanges
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (void)audioAccessorySmartChargeStatusHasChangedFromNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  if (object)
  {
    v5 = [[PowerUISmartChargeClientAudioAccessories alloc] initWithClientName:@"com.apple.bluetooth"];
    v13 = 0;
    v6 = [v5 isSmartChargingCurrentlyEnabledForDevice:object withError:&v13];
    v7 = v13;
    v8 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v15 = object;
      v16 = 2048;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PowerUI config values changed for device %@, isSmartChargingCurrentlyEnabledForDevice %lu, error %@", buf, 0x20u);
    }

    v9 = [NSString stringWithFormat:@"Public %@", object];
    v10 = sub_100777FF4(v9);

    if (qword_100B508F0 != -1)
    {
      sub_10084F6C4();
    }

    v11 = sub_1000504C8(off_100B508E8, v10, 1);
    v12 = v11;
    if (v11)
    {
      if (sub_10054B398(v11) != v6)
      {
        sub_10054B188(v12, v6);
        if (qword_100B50AB0 != -1)
        {
          sub_10084F69C();
        }

        (*(*off_100B50AA8 + 112))(off_100B50AA8, v12, 4101);
      }
    }

    else if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
    {
      sub_100850028();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
  {
    sub_100850098();
  }
}

- (void)audioAccessorySmartChargeDeadlineHasChangedFromNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  v5 = [[PowerUISmartChargeClientAudioAccessories alloc] initWithClientName:@"com.apple.bluetooth"];
  v15 = 0;
  v6 = [v5 unfilteredDeadlineForDevice:object withError:&v15];
  v7 = v15;
  v8 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v17 = object;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PowerUI config values changed for device %@, fullChargeDeadlineForDevice %@ error %@", buf, 0x20u);
  }

  v9 = [NSString stringWithFormat:@"Public %@", object];
  v10 = sub_100777FF4(v9);

  if (qword_100B508F0 != -1)
  {
    sub_10084F6C4();
  }

  v11 = sub_1000504C8(off_100B508E8, v10, 1);
  v12 = v11;
  if (v11)
  {
    v13 = sub_10054B3E0(v11);
    if (!v13 || ([v6 timeIntervalSinceDate:v13], v14 > 0.0))
    {
      sub_10054B26C(v12, v6);
      if (qword_100B50AB0 != -1)
      {
        sub_10084F69C();
      }

      (*(*off_100B50AA8 + 112))(off_100B50AA8, v12, 4101);
    }
  }

  else if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
  {
    sub_100850028();
  }
}

- (void)audioAccessorySmartChargeStatusHasChangedFromCloud:(void *)cloud
{
  if (!_os_feature_enabled_impl() || !NSClassFromString(@"PowerUISmartChargeClientAudioAccessories"))
  {
    return;
  }

  v4 = [[PowerUISmartChargeClientAudioAccessories alloc] initWithClientName:@"com.apple.bluetooth"];
  v5 = sub_1007774DC((*(cloud + 128) << 40) | (*(cloud + 129) << 32) | (*(cloud + 130) << 24) | (*(cloud + 131) << 16) | (*(cloud + 132) << 8) | *(cloud + 133));
  v6 = sub_10054B398(cloud);
  v7 = v6;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v12 = 0;
      [v4 temporarilyEnableChargingForDevice:v5 withError:&v12];
      v8 = v12;
      goto LABEL_15;
    }

    if (v6 == 3)
    {
      v11 = 0;
      [v4 temporarilyDisableSmartChargingForDevice:v5 withError:&v11];
      v8 = v11;
      goto LABEL_15;
    }

LABEL_10:
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
    {
      sub_1008500D4();
    }

    v9 = 0;
    goto LABEL_16;
  }

  if (!v6)
  {
    v14 = 0;
    [v4 disableSmartChargingForDevice:v5 withError:&v14];
    v8 = v14;
    goto LABEL_15;
  }

  if (v6 != 1)
  {
    goto LABEL_10;
  }

  v13 = 0;
  [v4 enableSmartChargingForDevice:v5 withError:&v13];
  v8 = v13;
LABEL_15:
  v9 = v8;
LABEL_16:
  v10 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v16 = v5;
    v17 = 2048;
    v18 = v7;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "audioAccessorySmartChargeStatusHasChangedFromCloud for %@ to state %lu with error %@", buf, 0x20u);
  }
}

- (void)audioAccessorySmartChargeDeadlineHasChangedFromCloud:(void *)cloud
{
  if (_os_feature_enabled_impl() && NSClassFromString(@"PowerUISmartChargeClientAudioAccessories"))
  {
    v4 = [[PowerUISmartChargeClientAudioAccessories alloc] initWithClientName:@"com.apple.bluetooth"];
    v5 = sub_1007774DC((*(cloud + 128) << 40) | (*(cloud + 129) << 32) | (*(cloud + 130) << 24) | (*(cloud + 131) << 16) | (*(cloud + 132) << 8) | *(cloud + 133));
    v6 = sub_10054B3E0(cloud);
    v10 = 0;
    [v4 updateOBCDeadline:v6 forDevice:v5 withError:&v10];
    v7 = v10;

    v8 = qword_100BCE8E8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = sub_10054B3E0(cloud);
      *buf = 138412802;
      v12 = v5;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "audioAccessorySmartChargeDeadlineHasChangedFromCloud for %@ to date %@ with error %@", buf, 0x20u);
    }
  }
}

@end