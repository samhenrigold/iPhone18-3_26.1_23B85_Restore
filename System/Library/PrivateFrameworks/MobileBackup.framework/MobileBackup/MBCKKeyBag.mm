@interface MBCKKeyBag
+ (BOOL)_deviceHasValidKeyBagReferences:(id)references;
+ (BOOL)_removeInvalidKeyBagReferencesFromDevice:(id)device tracker:(id)tracker validationState:(id)state error:(id *)error;
+ (BOOL)setupKeybagForDevice:(id)device operationTracker:(id)tracker passcode:(id)passcode error:(id *)error;
+ (BOOL)unlockKeybag:(id)keybag accountType:(int64_t)type error:(id *)error block:(id)block;
+ (BOOL)validateAndRepairInvalidKeyBagReferencesFromDeviceRecordWithTracker:(id)tracker state:(id *)state error:(id *)error;
+ (id)UUIDStringFromRecordID:(id)d;
+ (id)keybagWithDevice:(id)device keybagUUID:(id)d operationTracker:(id)tracker error:(id *)error;
+ (id)recordIDStringWithUUID:(id)d;
+ (id)recordIDStringWithUUIDString:(id)string;
- (BOOL)isEqual:(id)equal;
- (BOOL)unlockWithAccountType:(int64_t)type error:(id *)error;
- (CKRecordID)recordID;
- (MBCKDevice)device;
- (MBCKKeyBag)initWithDictionary:(id)dictionary device:(id)device;
- (MBCKKeyBag)initWithRecord:(id)record device:(id)device;
- (MBCKKeyBag)initWithUUID:(id)d data:(id)data secret:(id)secret device:(id)device;
- (MBKeyBag)keybag;
- (NSString)keybagUUIDString;
- (id)OTAKeybagWithError:(id *)error;
- (id)_getRecordIDString;
- (id)recordRepresentation;
- (unint64_t)hash;
- (void)lock;
- (void)refreshWithRecord:(id)record;
@end

@implementation MBCKKeyBag

+ (BOOL)setupKeybagForDevice:(id)device operationTracker:(id)tracker passcode:(id)passcode error:(id *)error
{
  deviceCopy = device;
  trackerCopy = tracker;
  passcodeCopy = passcode;
  if (!trackerCopy)
  {
    __assert_rtn("+[MBCKKeyBag setupKeybagForDevice:operationTracker:passcode:error:]", "MBCKKeyBag.m", 45, "tracker");
  }

  if (!error)
  {
    __assert_rtn("+[MBCKKeyBag setupKeybagForDevice:operationTracker:passcode:error:]", "MBCKKeyBag.m", 46, "error");
  }

  account = [trackerCopy account];
  if (!account)
  {
    __assert_rtn("+[MBCKKeyBag setupKeybagForDevice:operationTracker:passcode:error:]", "MBCKKeyBag.m", 48, "serviceAccount");
  }

  v12 = account;
  accountIdentifier = [account accountIdentifier];
  keybagManager = [deviceCopy keybagManager];
  if (!keybagManager)
  {
    __assert_rtn("+[MBCKKeyBag setupKeybagForDevice:operationTracker:passcode:error:]", "MBCKKeyBag.m", 51, "keybagManager");
  }

  v14 = keybagManager;
  errorCopy = error;
  v15 = MBGetDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    deviceUUID = [deviceCopy deviceUUID];
    *buf = 138543618;
    v123 = deviceUUID;
    v124 = 2114;
    v125 = accountIdentifier;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=keybag= Setting up a new keybag for device %{public}@ (%{public}@)", buf, 0x16u);

    deviceUUID2 = [deviceCopy deviceUUID];
    _MBLog(@"Df", "=keybag= Setting up a new keybag for device %{public}@ (%{public}@)", deviceUUID2, accountIdentifier);
  }

  v92 = v14;
  v84 = trackerCopy;
  v85 = deviceCopy;

  v83 = v12;
  persona = [v12 persona];
  [persona volumesToBackUp];
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  obj = v118 = 0u;
  v18 = [obj countByEnumeratingWithState:&v115 objects:v129 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = *v116;
    while (2)
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v116 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v115 + 1) + 8 * i);
        v114 = 0;
        v24 = [MBKeyBag OTAKeybagUUIDStringWithVolume:v23 error:&v114];
        v25 = v114;
        if (!v24 && ![MBError isError:v25 withCode:4])
        {
          v28 = v25;
          v29 = 0;
          v30 = deviceCopy;
          *errorCopy = v25;
          v31 = obj;
          v32 = v84;
LABEL_26:
          v33 = v83;
LABEL_27:
          v34 = v92;
          goto LABEL_28;
        }

        v26 = MBGetDefaultLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v123 = v24;
          v124 = 2112;
          v125 = v23;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "=keybag= Fetched OTAKeybagUUID:%{public}@ for %@", buf, 0x16u);
          _MBLog(@"Df", "=keybag= Fetched OTAKeybagUUID:%{public}@ for %@", v24, v23);
        }

        if (v24 && [v92 hasKeybagWithUUID:v24])
        {
          ++v20;
        }

        else
        {
          v27 = MBGetDefaultLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v123 = accountIdentifier;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "=keybag= Replacing existing backup keybag (%{public}@)", buf, 0xCu);
            _MBLog(@"Df", "=keybag= Replacing existing backup keybag (%{public}@)", accountIdentifier);
          }
        }
      }

      v19 = [obj countByEnumeratingWithState:&v115 objects:v129 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v20 = 0;
  }

  if (v20 == [obj count])
  {
    v29 = 1;
    v32 = v84;
    v30 = deviceCopy;
    v33 = v83;
    v34 = v92;
    goto LABEL_32;
  }

  v36 = MBGetDefaultLog();
  v34 = v92;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v123 = accountIdentifier;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "=keybag= Registering new keybags for (%{public}@)", buf, 0xCu);
    _MBLog(@"Df", "=keybag= Registering new keybags for (%{public}@)", accountIdentifier);
  }

  v31 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(obj, "count")}];
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v25 = obj;
  v37 = [v25 countByEnumeratingWithState:&v110 objects:v128 count:16];
  v30 = deviceCopy;
  v88 = v31;
  if (v37)
  {
    v38 = v37;
    v90 = *v111;
    while (2)
    {
      for (j = 0; j != v38; j = j + 1)
      {
        if (*v111 != v90)
        {
          objc_enumerationMutation(v25);
        }

        v40 = *(*(&v110 + 1) + 8 * j);
        v41 = MBGetDefaultLog();
        v42 = os_log_type_enabled(v41, OS_LOG_TYPE_INFO);
        if (passcodeCopy)
        {
          if (v42)
          {
            *buf = 138543362;
            v123 = v40;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "=keybag= Using passcode as keybag secret for %{public}@", buf, 0xCu);
            _MBLog(@"I ", "=keybag= Using passcode as keybag secret for %{public}@", v40);
          }

          v43 = [passcodeCopy dataUsingEncoding:4];
        }

        else
        {
          if (v42)
          {
            *buf = 138543362;
            v123 = v40;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "=keybag= Creating random secret for %{public}@", buf, 0xCu);
            _MBLog(@"I ", "=keybag= Creating random secret for %{public}@", v40);
          }

          v43 = +[MBKeyBag randomSecret];
        }

        v44 = v43;
        if (!v43)
        {
          [MBError errorWithCode:1 format:@"Failed to generate secret for keybag"];
          *errorCopy = v29 = 0;
          v33 = v83;
          v32 = v84;
          goto LABEL_27;
        }

        v109 = 0;
        v45 = [MBKeyBag registerOTAKeyBagWithVolume:v40 secret:v43 keybagUUIDData:&v109 error:errorCopy];
        v46 = v109;
        v47 = v46;
        if (!v45)
        {
          v55 = MBGetDefaultLog();
          v32 = v84;
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            v56 = *errorCopy;
            *buf = 138543874;
            v123 = v40;
            v124 = 2114;
            v125 = accountIdentifier;
            v126 = 2112;
            v127 = v56;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "=keybag= Failed to register keybag for volume %{public}@ (%{public}@): %@", buf, 0x20u);
            _MBLog(@"E ", "=keybag= Failed to register keybag for volume %{public}@ (%{public}@): %@", v40, accountIdentifier, *errorCopy);
          }

          v29 = 0;
          goto LABEL_26;
        }

        v48 = [v46 base64EncodedStringWithOptions:0];
        v49 = MBGetDefaultLog();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = [v45 length];
          *buf = 138412802;
          v123 = v40;
          v124 = 2048;
          v125 = v50;
          v126 = 2114;
          v127 = v48;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "=keybag= Registered a new keybag for %@ (%lu bytes): %{public}@", buf, 0x20u);
          _MBLog(@"Df", "=keybag= Registered a new keybag for %@ (%lu bytes): %{public}@", v40, [v45 length], v48);
        }

        v51 = [[MBCKKeyBag alloc] initWithUUID:v47 data:v45 secret:v44 device:v85];
        v31 = v88;
        [v88 addObject:v51];
      }

      v34 = v92;
      v38 = [v25 countByEnumeratingWithState:&v110 objects:v128 count:16];
      if (v38)
      {
        continue;
      }

      break;
    }
  }

  v32 = v84;
  if (MBIsInternalInstall())
  {
    v52 = +[MBBehaviorOptions sharedOptions];
    if ([v52 isAutomation])
    {
      v53 = +[MBBehaviorOptions sharedOptions];
      forceInvalidKeyBagReference = [v53 forceInvalidKeyBagReference];

      if (forceInvalidKeyBagReference)
      {
        v25 = MBGetDefaultLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "=keybag= !!!! WARNING: Intentionally sending an invalid keybag reference during automation run. This will intentionally create an unrestorable snapshot", buf, 2u);
          _MBLog(@"E ", "=keybag= !!!! WARNING: Intentionally sending an invalid keybag reference during automation run. This will intentionally create an unrestorable snapshot");
        }

        v33 = v83;
        goto LABEL_73;
      }
    }

    else
    {
    }
  }

  v25 = dispatch_group_create();
  v57 = [[MBCKBatchSave alloc] initWithOperationTracker:v84];
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v58 = v31;
  v59 = [v58 countByEnumeratingWithState:&v105 objects:v121 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v106;
    do
    {
      for (k = 0; k != v60; k = k + 1)
      {
        if (*v106 != v61)
        {
          objc_enumerationMutation(v58);
        }

        v63 = *(*(&v105 + 1) + 8 * k);
        dispatch_group_enter(v25);
        v103[0] = _NSConcreteStackBlock;
        v103[1] = 3221225472;
        v103[2] = sub_100067BB0;
        v103[3] = &unk_1003BC308;
        v103[4] = v63;
        v104 = v25;
        [v63 saveWithBatchSave:v57 completion:v103];
      }

      v60 = [v58 countByEnumeratingWithState:&v105 objects:v121 count:16];
    }

    while (v60);
  }

  v102 = 0;
  v64 = [(MBCKBatchSave *)v57 finishWithError:&v102];
  v65 = v102;
  v66 = v65;
  if ((v64 & 1) == 0)
  {
    v73 = MBGetDefaultLog();
    v30 = v85;
    v33 = v83;
    v34 = v92;
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v123 = v66;
      _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "=keybag= Failed to batch save keybags records to server %@", buf, 0xCu);
      _MBLog(@"E ", "=keybag= Failed to batch save keybags records to server %@", v66);
    }

    v74 = v66;
    *errorCopy = v66;

    v29 = 0;
    v31 = v58;
    v32 = v84;
    goto LABEL_28;
  }

  v32 = v84;
  v30 = v85;
  v33 = v83;
  v34 = v92;
  v31 = v88;
LABEL_73:

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v31 = v31;
  v67 = [v31 countByEnumeratingWithState:&v98 objects:v120 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v99;
    do
    {
      for (m = 0; m != v68; m = m + 1)
      {
        if (*v99 != v69)
        {
          objc_enumerationMutation(v31);
        }

        [v34 addKeybag:*(*(&v98 + 1) + 8 * m)];
      }

      v68 = [v31 countByEnumeratingWithState:&v98 objects:v120 count:16];
    }

    while (v68);
  }

  recordRepresentation = [v30 recordRepresentation];
  v97 = 0;
  v72 = [v32 saveRecord:recordRepresentation delegate:0 error:&v97];
  v25 = v97;

  if (v72)
  {
    v29 = 1;
  }

  else
  {
    v75 = MBGetDefaultLog();
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v123 = accountIdentifier;
      v124 = 2112;
      v125 = v25;
      _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_ERROR, "=keybag= Failed to save device record with new keybag references (%{public}@): %@", buf, 0x16u);
      _MBLog(@"E ", "=keybag= Failed to save device record with new keybag references (%{public}@): %@", accountIdentifier, v25);
    }

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v31 = v31;
    v76 = [v31 countByEnumeratingWithState:&v93 objects:v119 count:16];
    if (v76)
    {
      v77 = v76;
      v78 = *v94;
      do
      {
        for (n = 0; n != v77; n = n + 1)
        {
          if (*v94 != v78)
          {
            objc_enumerationMutation(v31);
          }

          keybagUUIDString = [*(*(&v93 + 1) + 8 * n) keybagUUIDString];
          [v34 removeKeybagWithUUID:keybagUUIDString];
        }

        v77 = [v31 countByEnumeratingWithState:&v93 objects:v119 count:16];
      }

      while (v77);
    }

    v81 = v25;
    v29 = 0;
    *errorCopy = v25;
  }

LABEL_28:

LABEL_32:
  return v29;
}

+ (id)keybagWithDevice:(id)device keybagUUID:(id)d operationTracker:(id)tracker error:(id *)error
{
  deviceCopy = device;
  dCopy = d;
  trackerCopy = tracker;
  if (!trackerCopy)
  {
    __assert_rtn("+[MBCKKeyBag keybagWithDevice:keybagUUID:operationTracker:error:]", "MBCKKeyBag.m", 153, "tracker");
  }

  v13 = trackerCopy;
  if (!deviceCopy)
  {
LABEL_9:
    v26 = 0;
    goto LABEL_10;
  }

  if (!dCopy)
  {
    if (error)
    {
      [MBError errorWithCode:1 format:@"Invalid keybag UUID (%@)", 0];
      *error = v26 = 0;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_1000680F0;
  v47 = sub_100068100;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = sub_1000680F0;
  v41 = sub_100068100;
  v42 = 0;
  v14 = dispatch_semaphore_create(0);
  v15 = [CKRecordID alloc];
  v16 = [self recordIDStringWithUUID:dCopy];
  syncZoneID = [v13 syncZoneID];
  v18 = [v15 initWithRecordName:v16 zoneID:syncZoneID];

  v19 = [NSPredicate predicateWithFormat:@"recordID==%@", v18];
  v20 = [CKQuery alloc];
  v21 = +[(MBCKModel *)MBCKKeyBag];
  v22 = [v20 initWithRecordType:v21 predicate:v19];

  v23 = [[CKQueryOperation alloc] initWithQuery:v22];
  syncZoneID2 = [v13 syncZoneID];
  [v23 setZoneID:syncZoneID2];

  objc_initWeak(&location, v23);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100068108;
  v33[3] = &unk_1003BC7C8;
  v35 = &v43;
  v34 = deviceCopy;
  [v23 setRecordFetchedBlock:v33];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10006817C;
  v28[3] = &unk_1003BC7F0;
  objc_copyWeak(&v32, &location);
  v31 = &v37;
  v29 = dCopy;
  v25 = v14;
  v30 = v25;
  [v23 setQueryCompletionBlock:v28];
  [v13 addDatabaseOperation:v23];
  MBSemaphoreWaitForever();
  if (error)
  {
    *error = v38[5];
  }

  v26 = v44[5];

  objc_destroyWeak(&v32);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);

LABEL_10:

  return v26;
}

+ (id)recordIDStringWithUUID:(id)d
{
  v4 = [d base64EncodedStringWithOptions:0];
  v5 = [self recordIDStringWithUUIDString:v4];

  return v5;
}

+ (id)recordIDStringWithUUIDString:(id)string
{
  stringCopy = string;
  stringCopy = [[NSString alloc] initWithFormat:@"%@%@", @"K:", stringCopy];

  return stringCopy;
}

+ (id)UUIDStringFromRecordID:(id)d
{
  recordName = [d recordName];
  v4 = [recordName substringFromIndex:{objc_msgSend(@"K:", "length")}];

  return v4;
}

- (MBCKKeyBag)initWithRecord:(id)record device:(id)device
{
  recordCopy = record;
  deviceCopy = device;
  cache = [deviceCopy cache];
  v11.receiver = self;
  v11.super_class = MBCKKeyBag;
  v9 = [(MBCKModel *)&v11 initWithRecord:recordCopy cache:cache];

  if (v9)
  {
    objc_storeWeak(&v9->_device, deviceCopy);
    [(MBCKKeyBag *)v9 refreshWithRecord:recordCopy];
  }

  return v9;
}

- (MBCKKeyBag)initWithUUID:(id)d data:(id)data secret:(id)secret device:(id)device
{
  dCopy = d;
  dataCopy = data;
  secretCopy = secret;
  v14 = [(MBCKKeyBag *)self initWithRecord:0 device:device];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_keybagData, data);
    objc_storeStrong(&v15->_keybagUUID, d);
    objc_storeStrong(&v15->_secret, secret);
  }

  return v15;
}

- (MBCKKeyBag)initWithDictionary:(id)dictionary device:(id)device
{
  dictionaryCopy = dictionary;
  deviceCopy = device;
  v8 = [(MBCKKeyBag *)self initWithRecord:0 device:deviceCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_device, deviceCopy);
    v10 = [dictionaryCopy objectForKeyedSubscript:@"keybagUUID"];
    keybagUUID = v9->_keybagUUID;
    v9->_keybagUUID = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"keybagData"];
    keybagData = v9->_keybagData;
    v9->_keybagData = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"secret"];
    secret = v9->_secret;
    v9->_secret = v14;
  }

  return v9;
}

- (void)refreshWithRecord:(id)record
{
  recordCopy = record;
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  v7 = [recordName substringFromIndex:{objc_msgSend(@"K:", "length")}];

  if (v7)
  {
    v8 = [[NSData alloc] initWithBase64EncodedString:v7 options:0];
    keybagUUID = self->_keybagUUID;
    self->_keybagUUID = v8;
  }

  encryptedValues = [recordCopy encryptedValues];
  v11 = [encryptedValues objectForKeyedSubscript:@"keybagData"];

  if (v11)
  {
    objc_storeStrong(&self->_keybagData, v11);
  }

  encryptedValues2 = [recordCopy encryptedValues];
  v13 = [encryptedValues2 objectForKeyedSubscript:@"secret"];

  if (v13)
  {
    objc_storeStrong(&self->_secret, v13);
  }

  v14.receiver = self;
  v14.super_class = MBCKKeyBag;
  [(MBCKModel *)&v14 refreshWithRecord:recordCopy];
}

- (NSString)keybagUUIDString
{
  v3 = objc_opt_class();
  keybagUUID = self->_keybagUUID;

  return [v3 UUIDStringForKeyBagUUID:keybagUUID];
}

- (id)OTAKeybagWithError:(id *)error
{
  keybag = self->_keybag;
  if (!keybag)
  {
    keybagData = [(MBCKKeyBag *)self keybagData];
    secret = [(MBCKKeyBag *)self secret];
    v8 = [MBKeyBag OTAKeyBagWithData:keybagData secret:secret error:error];
    v9 = self->_keybag;
    self->_keybag = v8;

    keybag = self->_keybag;
  }

  v10 = keybag;

  return v10;
}

- (MBKeyBag)keybag
{
  v9 = 0;
  v3 = [(MBCKKeyBag *)self OTAKeybagWithError:&v9];
  v4 = v9;

  if (!v3)
  {
    v5 = MBGetDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "=keybag= Error opening keybag with data: %@", buf, 0xCu);
      _MBLog(@"E ", "=keybag= Error opening keybag with data: %@", v4);
    }
  }

  keybag = self->_keybag;
  v7 = keybag;

  return keybag;
}

- (BOOL)unlockWithAccountType:(int64_t)type error:(id *)error
{
  v6 = self->_keybag;
  v7 = v6;
  if (v6 && [(MBKeyBag *)v6 isUnlocked])
  {
    v8 = 1;
    v9 = v7;
  }

  else
  {
    keybagData = [(MBCKKeyBag *)self keybagData];
    secret = [(MBCKKeyBag *)self secret];
    v9 = [MBKeyBag OTAKeyBagWithData:keybagData secret:secret error:error];

    if (v9)
    {
      secret2 = [(MBCKKeyBag *)self secret];
      v20 = 0;
      v8 = [v9 unlockWithSecret:secret2 error:&v20];
      v13 = v20;

      if (v8)
      {
        objc_storeStrong(&self->_keybag, v9);
        v14 = MBGetDefaultLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          keybagUUIDString = [(MBCKKeyBag *)self keybagUUIDString];
          *buf = 138543362;
          v22 = keybagUUIDString;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "=keybag= Unlocked keybag %{public}@", buf, 0xCu);

          keybagUUIDString2 = [(MBCKKeyBag *)self keybagUUIDString];
          _MBLog(@"Db", "=keybag= Unlocked keybag %{public}@", keybagUUIDString2);
        }
      }

      else
      {
        v17 = MBGetDefaultLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v22 = v13;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "=keybag= Failed to unlock key bag: %{public}@", buf, 0xCu);
          _MBLog(@"E ", "=keybag= Failed to unlock key bag: %{public}@", v13);
        }

        if (error)
        {
          v18 = v13;
          *error = v13;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)lock
{
  keybag = self->_keybag;
  if (keybag)
  {
    self->_keybag = 0;

    v4 = MBGetDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      keybagUUIDString = [(MBCKKeyBag *)self keybagUUIDString];
      *buf = 138543362;
      v8 = keybagUUIDString;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "=keybag= Locked keybag %{public}@", buf, 0xCu);

      keybagUUIDString2 = [(MBCKKeyBag *)self keybagUUIDString];
      _MBLog(@"Db", "=keybag= Locked keybag %{public}@", keybagUUIDString2);
    }
  }
}

- (CKRecordID)recordID
{
  v3 = [CKRecordID alloc];
  keybagUUIDString = [(MBCKKeyBag *)self keybagUUIDString];
  v5 = [MBCKKeyBag recordIDStringWithUUIDString:keybagUUIDString];
  v6 = +[MBCKDatabaseManager syncZoneID];
  v7 = [v3 initWithRecordName:v5 zoneID:v6];

  return v7;
}

- (unint64_t)hash
{
  keybagUUID = [(MBCKKeyBag *)self keybagUUID];
  v4 = [keybagUUID hash];
  keybagData = [(MBCKKeyBag *)self keybagData];
  v6 = [keybagData hash] ^ v4;
  secret = [(MBCKKeyBag *)self secret];
  v8 = [secret hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    keybagUUID = [(MBCKKeyBag *)self keybagUUID];
    keybagUUID2 = [v5 keybagUUID];
    if ([keybagUUID isEqualToData:keybagUUID2])
    {
      keybagData = [(MBCKKeyBag *)self keybagData];
      keybagData2 = [v5 keybagData];
      if ([keybagData isEqualToData:keybagData2])
      {
        secret = [(MBCKKeyBag *)self secret];
        secret2 = [v5 secret];
        v12 = [secret isEqualToData:secret2];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)recordRepresentation
{
  v9.receiver = self;
  v9.super_class = MBCKKeyBag;
  recordRepresentation = [(MBCKModel *)&v9 recordRepresentation];
  keybagData = self->_keybagData;
  encryptedValues = [recordRepresentation encryptedValues];
  [encryptedValues setObject:keybagData forKeyedSubscript:@"keybagData"];

  secret = self->_secret;
  encryptedValues2 = [recordRepresentation encryptedValues];
  [encryptedValues2 setObject:secret forKeyedSubscript:@"secret"];

  return recordRepresentation;
}

- (id)_getRecordIDString
{
  keybagUUID = [(MBCKKeyBag *)self keybagUUID];

  if (!keybagUUID)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"MBCKKeyBag.m" lineNumber:333 description:@"Keybag is missing a UUID"];
  }

  keybagUUID2 = [(MBCKKeyBag *)self keybagUUID];
  v6 = [MBCKKeyBag recordIDStringWithUUID:keybagUUID2];

  return v6;
}

+ (BOOL)unlockKeybag:(id)keybag accountType:(int64_t)type error:(id *)error block:(id)block
{
  keybagCopy = keybag;
  blockCopy = block;
  if (!keybagCopy)
  {
    __assert_rtn("+[MBCKKeyBag unlockKeybag:accountType:error:block:]", "MBCKKeyBag.m", 350, "keybag");
  }

  if (!error)
  {
    __assert_rtn("+[MBCKKeyBag unlockKeybag:accountType:error:block:]", "MBCKKeyBag.m", 351, "error");
  }

  v12 = blockCopy;
  if (!blockCopy)
  {
    __assert_rtn("+[MBCKKeyBag unlockKeybag:accountType:error:block:]", "MBCKKeyBag.m", 352, "block");
  }

  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000694A4;
  v37[3] = &unk_1003BBFE8;
  v37[4] = self;
  if (qword_100421628 != -1)
  {
    dispatch_once(&qword_100421628, v37);
  }

  dispatch_semaphore_wait(qword_100421610, 0xFFFFFFFFFFFFFFFFLL);
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_1000680F0;
  v35 = sub_100068100;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1000680F0;
  v29 = sub_100068100;
  v30 = 0;
  v13 = qword_100421618;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100069550;
  block[3] = &unk_1003BC818;
  v14 = keybagCopy;
  v21 = v14;
  v22 = &v31;
  v23 = &v25;
  typeCopy = type;
  dispatch_sync(v13, block);
  v15 = v32[5];
  if (v15)
  {
    keybag = [v32[5] keybag];
    if (!keybag)
    {
      __assert_rtn("+[MBCKKeyBag unlockKeybag:accountType:error:block:]", "MBCKKeyBag.m", 440, "keybag");
    }

    (v12)[2](v12, keybag);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000699CC;
    v19[3] = &unk_1003BC840;
    v19[4] = &v31;
    dispatch_sync(qword_100421618, v19);
  }

  else
  {
    v17 = v26[5];
    if (!v17)
    {
      __assert_rtn("+[MBCKKeyBag unlockKeybag:accountType:error:block:]", "MBCKKeyBag.m", 436, "unlockError");
    }

    *error = v17;
  }

  dispatch_semaphore_signal(qword_100421610);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v15 != 0;
}

+ (BOOL)_deviceHasValidKeyBagReferences:(id)references
{
  referencesCopy = references;
  keybagManager = [referencesCopy keybagManager];
  keybagRefs = [keybagManager keybagRefs];
  v6 = [keybagRefs copy];

  keybagManager2 = [referencesCopy keybagManager];

  keybagsByUUIDString = [keybagManager2 keybagsByUUIDString];
  v9 = [keybagsByUUIDString copy];

  v10 = [v6 count];
  LOBYTE(v10) = v10 == [v9 count];

  return v10;
}

+ (BOOL)_removeInvalidKeyBagReferencesFromDevice:(id)device tracker:(id)tracker validationState:(id)state error:(id *)error
{
  deviceCopy = device;
  trackerCopy = tracker;
  stateCopy = state;
  account = [trackerCopy account];
  persona = [account persona];

  if (!persona)
  {
    __assert_rtn("+[MBCKKeyBag _removeInvalidKeyBagReferencesFromDevice:tracker:validationState:error:]", "MBCKKeyBag.m", 462, "persona");
  }

  if (!stateCopy)
  {
    __assert_rtn("+[MBCKKeyBag _removeInvalidKeyBagReferencesFromDevice:tracker:validationState:error:]", "MBCKKeyBag.m", 464, "validationState");
  }

  if (!deviceCopy)
  {
    __assert_rtn("+[MBCKKeyBag _removeInvalidKeyBagReferencesFromDevice:tracker:validationState:error:]", "MBCKKeyBag.m", 466, "device");
  }

  keybagManager = [deviceCopy keybagManager];
  hasFetchedKeybags = [keybagManager hasFetchedKeybags];

  if (hasFetchedKeybags)
  {
    errorCopy = error;
    v51 = persona;
    v52 = stateCopy;
    v53 = trackerCopy;
    keybagManager2 = [deviceCopy keybagManager];
    keybagRefs = [keybagManager2 keybagRefs];
    v18 = [keybagRefs copy];

    keybagManager3 = [deviceCopy keybagManager];
    keybagsByUUIDString = [keybagManager3 keybagsByUUIDString];
    v21 = [keybagsByUUIDString copy];

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = v18;
    v22 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
    v54 = deviceCopy;
    if (v22)
    {
      v23 = v22;
      v24 = 0;
      v25 = 0;
      v26 = *v58;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v58 != v26)
          {
            objc_enumerationMutation(obj);
          }

          recordID = [*(*(&v57 + 1) + 8 * i) recordID];
          v29 = [MBCKKeyBag UUIDStringFromRecordID:recordID];

          v30 = [v21 objectForKeyedSubscript:v29];
          v31 = MBGetDefaultLog();
          v32 = v31;
          if (v30)
          {
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              keybagData = [v30 keybagData];
              v34 = [keybagData length];
              *buf = 138412546;
              v62 = v29;
              v63 = 2048;
              v64 = v34;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "=keybag= Fetched keybag %@ (%llu bytes)", buf, 0x16u);

              keybagData2 = [v30 keybagData];
              _MBLog(@"Df", "=keybag= Fetched keybag %@ (%llu bytes)", v29, [keybagData2 length]);

              deviceCopy = v54;
            }

            ++v25;
          }

          else
          {
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v62 = v29;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "=keybag= Found invalid keybag ref:%@", buf, 0xCu);
              _MBLog(@"E ", "=keybag= Found invalid keybag ref:%@", v29);
            }

            keybagManager4 = [deviceCopy keybagManager];
            [keybagManager4 removeKeybagWithUUID:v29];

            ++v24;
          }
        }

        v23 = [obj countByEnumeratingWithState:&v57 objects:v65 count:16];
      }

      while (v23);
    }

    else
    {
      v24 = 0;
      v25 = 0;
    }

    keybagManager5 = [deviceCopy keybagManager];
    keybagsByUUIDString2 = [keybagManager5 keybagsByUUIDString];
    v40 = [keybagsByUUIDString2 count];
    keybagManager6 = [deviceCopy keybagManager];
    keybagRefs2 = [keybagManager6 keybagRefs];
    if (v40 != [keybagRefs2 count])
    {
      __assert_rtn("+[MBCKKeyBag _removeInvalidKeyBagReferencesFromDevice:tracker:validationState:error:]", "MBCKKeyBag.m", 490, "device.keybagManager.keybagsByUUIDString.count == device.keybagManager.keybagRefs.count");
    }

    stateCopy = v52;
    v43 = v24;
    persona = v51;
    if ([v52 trackValidationFailureWithInvalidKeyBagCount:v43 validKeyBagCount:v25 persona:v51 error:errorCopy])
    {
      deviceCopy = v54;
      recordRepresentation = [v54 recordRepresentation];
      v56 = 0;
      trackerCopy = v53;
      v45 = [v53 saveRecord:recordRepresentation delegate:0 error:&v56];
      v46 = v56;

      if (v45)
      {
        v37 = [v52 trackRepairedDeviceRecordWithPersona:v51 error:errorCopy];
      }

      else
      {
        if (errorCopy)
        {
          v47 = v46;
          *errorCopy = v46;
        }

        v48 = MBGetDefaultLog();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v62 = v46;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "=keybag= Failed to save repaired device record: %@", buf, 0xCu);
          _MBLog(@"E ", "=keybag= Failed to save repaired device record: %@", v46);
        }

        v37 = 0;
      }
    }

    else
    {
      v37 = 0;
      deviceCopy = v54;
      trackerCopy = v53;
    }
  }

  else if (error)
  {
    [MBError errorWithCode:1 format:@"MBCKDevice has not fetched keybag records"];
    *error = v37 = 0;
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

+ (BOOL)validateAndRepairInvalidKeyBagReferencesFromDeviceRecordWithTracker:(id)tracker state:(id *)state error:(id *)error
{
  trackerCopy = tracker;
  if (!trackerCopy)
  {
    __assert_rtn("+[MBCKKeyBag validateAndRepairInvalidKeyBagReferencesFromDeviceRecordWithTracker:state:error:]", "MBCKKeyBag.m", 509, "tracker");
  }

  v9 = trackerCopy;
  account = [trackerCopy account];
  if (!account)
  {
    __assert_rtn("+[MBCKKeyBag validateAndRepairInvalidKeyBagReferencesFromDeviceRecordWithTracker:state:error:]", "MBCKKeyBag.m", 511, "account");
  }

  v11 = account;
  persona = [account persona];
  if (!persona)
  {
    __assert_rtn("+[MBCKKeyBag validateAndRepairInvalidKeyBagReferencesFromDeviceRecordWithTracker:state:error:]", "MBCKKeyBag.m", 513, "persona");
  }

  if (!state)
  {
    __assert_rtn("+[MBCKKeyBag validateAndRepairInvalidKeyBagReferencesFromDeviceRecordWithTracker:state:error:]", "MBCKKeyBag.m", 514, "outState");
  }

  v13 = persona;
  v14 = [MBKeyBagValidationState stateForPersona:persona];
  v15 = MBGetDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "=keybag= Loaded keybag validation state: %@", buf, 0xCu);
    _MBLog(@"Df", "=keybag= Loaded keybag validation state: %@", v14);
  }

  v16 = +[MBRemoteConfiguration sharedInstance];
  [v16 keyBagValidationPeriodForAccount:v11 defaultValue:1209600.0];
  v18 = v17;

  v19 = +[NSDate now];
  v20 = [v14 shouldValidateKeyBagReferencesOnDate:v19 period:v18];

  if (v20)
  {
    v21 = v14;
    *state = v14;
    v22 = +[MBCKManager sharedInstance];
    v23 = MBDeviceUUID();
    v33 = 0;
    v24 = [MBCKAccount fetchDeviceRecordSnapshotsAndKeybags:v23 account:v11 manager:v22 tracker:v9 error:&v33];
    v25 = v33;

    if (v24)
    {
      if ([self _deviceHasValidKeyBagReferences:v24])
      {
        if (([v14 requiresDeviceRecordReferenceRepair] & 1) == 0 && (objc_msgSend(v14, "requiresEncryptionKeyRepair") & 1) == 0)
        {
          keybagManager = [v24 keybagManager];
          keybagRefs = [keybagManager keybagRefs];
          v27 = [v14 trackValidationSuccess:objc_msgSend(keybagRefs persona:"count") error:{v13, error}];

          goto LABEL_19;
        }

        if (![v14 requiresDeviceRecordReferenceRepair])
        {
          v30 = MBGetDefaultLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "=keybag= Resuming pending encryption key repair", buf, 2u);
            _MBLog(@"Df", "=keybag= Resuming pending encryption key repair");
          }

          v27 = 1;
          goto LABEL_19;
        }

        v26 = [v14 trackRepairedDeviceRecordWithPersona:v13 error:error];
      }

      else
      {
        v26 = [self _removeInvalidKeyBagReferencesFromDevice:v24 tracker:v9 validationState:v14 error:error];
      }
    }

    else
    {
      if (![MBError isError:v25 withCode:204])
      {
        if (error)
        {
          v29 = v25;
          v27 = 0;
          *error = v25;
        }

        else
        {
          v27 = 0;
        }

        goto LABEL_19;
      }

      v26 = [v14 resetValidationStateWithPersona:v13 error:error];
    }

    v27 = v26;
LABEL_19:

    goto LABEL_20;
  }

  *state = 0;
  v27 = 1;
LABEL_20:

  return v27;
}

- (MBCKDevice)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

@end