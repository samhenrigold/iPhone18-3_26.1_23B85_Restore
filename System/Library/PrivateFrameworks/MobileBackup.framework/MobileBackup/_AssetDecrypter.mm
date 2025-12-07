@interface _AssetDecrypter
- (BOOL)decrypt:(id)decrypt restorable:(id)restorable metadata:(id)metadata error:(id *)error;
- (id)_initWithTracker:(id)tracker device:(id)device;
- (id)_keybag:(id *)_keybag metadata:(id)metadata;
- (id)_localFileInfo:(id)info;
@end

@implementation _AssetDecrypter

- (id)_initWithTracker:(id)tracker device:(id)device
{
  trackerCopy = tracker;
  deviceCopy = device;
  if (!trackerCopy)
  {
    __assert_rtn("[_AssetDecrypter _initWithTracker:device:]", "MBAssetDecrypter.m", 42, "tracker");
  }

  v9 = deviceCopy;
  if (!deviceCopy)
  {
    __assert_rtn("[_AssetDecrypter _initWithTracker:device:]", "MBAssetDecrypter.m", 43, "device");
  }

  v13.receiver = self;
  v13.super_class = _AssetDecrypter;
  v10 = [(_AssetDecrypter *)&v13 init];
  p_isa = &v10->super.isa;
  if (v10)
  {
    objc_storeStrong(&v10->_tracker, tracker);
    objc_storeStrong(p_isa + 2, device);
  }

  return p_isa;
}

- (BOOL)decrypt:(id)decrypt restorable:(id)restorable metadata:(id)metadata error:(id *)error
{
  decryptCopy = decrypt;
  restorableCopy = restorable;
  metadataCopy = metadata;
  if (!decryptCopy)
  {
    __assert_rtn("[_AssetDecrypter decrypt:restorable:metadata:error:]", "MBAssetDecrypter.m", 56, "encryptedFilePath");
  }

  if (!restorableCopy)
  {
    __assert_rtn("[_AssetDecrypter decrypt:restorable:metadata:error:]", "MBAssetDecrypter.m", 57, "restorable");
  }

  v12 = metadataCopy;
  if (!metadataCopy)
  {
    __assert_rtn("[_AssetDecrypter decrypt:restorable:metadata:error:]", "MBAssetDecrypter.m", 58, "metadata");
  }

  if (!error)
  {
    __assert_rtn("[_AssetDecrypter decrypt:restorable:metadata:error:]", "MBAssetDecrypter.m", 59, "error");
  }

  v13 = [(_AssetDecrypter *)self _keybag:error metadata:metadataCopy];
  if (v13)
  {
    account = [(MBCKOperationTracker *)self->_tracker account];
    v15 = account;
    if (!account)
    {
      __assert_rtn("[_AssetDecrypter decrypt:restorable:metadata:error:]", "MBAssetDecrypter.m", 69, "account");
    }

    persona = [account persona];
    accountType = [persona accountType];

    v17 = MBGetDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      keybagUUIDString = [v13 keybagUUIDString];
      *buf = 138412546;
      *&buf[4] = decryptCopy;
      *&buf[12] = 2112;
      *&buf[14] = keybagUUIDString;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Decrypting asset in place at %@ with keybag %@", buf, 0x16u);

      keybagUUIDString2 = [v13 keybagUUIDString];
      _MBLog(@"Db", "Decrypting asset in place at %@ with keybag %@", decryptCopy, keybagUUIDString2);
    }

    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    memset(buf, 0, sizeof(buf));
    [restorableCopy getNode:buf];
    v20 = v15;
    v21 = *(&v62 + 1);
    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v52 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = sub_100063EFC;
    v47 = sub_100063F0C;
    v48 = 0;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100063F14;
    v36[3] = &unk_1003BC728;
    v40 = &v49;
    v22 = decryptCopy;
    v37 = v22;
    v33 = v12;
    v23 = v12;
    v38 = v23;
    selfCopy = self;
    v41 = &v43;
    v42 = v21;
    v24 = [MBCKKeyBag unlockKeybag:v13 accountType:accountType error:error block:v36];
    v25 = *(v50 + 24);
    if ((v25 & 1) == 0)
    {
      if (v24)
      {
        if (!v44[5])
        {
          __assert_rtn("[_AssetDecrypter decrypt:restorable:metadata:error:]", "MBAssetDecrypter.m", 92, "decryptError");
        }

        v26 = [(_AssetDecrypter *)self _localFileInfo:v22];
        v27 = MBGetDefaultLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = v44[5];
          *v53 = 138413058;
          v54 = v22;
          v55 = 2112;
          v56 = v23;
          v57 = 2112;
          v58 = v26;
          v59 = 2112;
          v60 = v28;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to decrypt asset at %@, metadata:%@, on-disk:%@: %@", v53, 0x2Au);
          _MBLog(@"E ", "Failed to decrypt asset at %@, metadata:%@, on-disk:%@: %@", v22, v23, v26, v44[5]);
        }

        *error = v44[5];
      }

      else
      {
        v26 = MBGetDefaultLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v31 = *error;
          *v53 = 138412546;
          v54 = v22;
          v55 = 2112;
          v56 = v31;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to unlock keybag to decrypt asset at %@: %@", v53, 0x16u);
          _MBLog(@"E ", "Failed to unlock keybag to decrypt asset at %@: %@", v22, *error);
        }
      }
    }

    v12 = v33;
    _Block_object_dispose(&v43, 8);

    _Block_object_dispose(&v49, 8);
  }

  else
  {
    v29 = MBGetDefaultLog();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = *error;
      *buf = 138412546;
      *&buf[4] = decryptCopy;
      *&buf[12] = 2112;
      *&buf[14] = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to find a keybag to decrypt asset at %@: %@", buf, 0x16u);
      _MBLog(@"E ", "Failed to find a keybag to decrypt asset at %@: %@", decryptCopy, *error);
    }

    [MBError errorWithCode:205 path:decryptCopy format:@"No keybag found for protected asset"];
    *error = v25 = 0;
  }

  return v25;
}

- (id)_keybag:(id *)_keybag metadata:(id)metadata
{
  metadataCopy = metadata;
  if (!_keybag)
  {
    __assert_rtn("[_AssetDecrypter _keybag:metadata:]", "MBAssetDecrypter.m", 101, "error");
  }

  v7 = metadataCopy;
  keybagManager = [(MBCKDevice *)self->_device keybagManager];
  if (!keybagManager)
  {
    __assert_rtn("[_AssetDecrypter _keybag:metadata:]", "MBAssetDecrypter.m", 104, "keybagManager");
  }

  v9 = keybagManager;
  _keybagUUIDData = [v7 _keybagUUIDData];
  v11 = [_keybagUUIDData base64EncodedStringWithOptions:0];
  if (v11)
  {
    v12 = [v9 keybagWithUUID:v11];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      device = self->_device;
      _keybagUUIDData2 = [v7 _keybagUUIDData];
      tracker = self->_tracker;
      v31 = 0;
      v14 = [MBCKKeyBag keybagWithDevice:device keybagUUID:_keybagUUIDData2 operationTracker:tracker error:&v31];
      v18 = v31;

      if (v14)
      {
        [v9 addKeybag:v14];
        v20 = self->_tracker;
        v19 = self->_device;
        v30 = v18;
        v21 = [(MBCKModel *)v19 saveWithOperationTracker:v20 error:&v30];
        v22 = v30;

        if ((v21 & 1) == 0)
        {
          v23 = MBGetDefaultLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            keybagUUIDString = [v14 keybagUUIDString];
            *buf = 138543618;
            v33 = keybagUUIDString;
            v34 = 2112;
            v35 = v22;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to save device record with recovered keybag %{public}@: %@", buf, 0x16u);

            keybagUUIDString2 = [v14 keybagUUIDString];
            _MBLog(@"E ", "Failed to save device record with recovered keybag %{public}@: %@", keybagUUIDString2, v22);
          }
        }

        v26 = v14;
      }

      else
      {
        v27 = MBGetDefaultLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v33 = v11;
          v34 = 2112;
          v35 = v18;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "No keybag found for %{public}@: %@", buf, 0x16u);
          _MBLog(@"E ", "No keybag found for %{public}@: %@", v11, v18);
        }

        if (v18)
        {
          v28 = v18;
        }

        else
        {
          v28 = [MBError errorWithCode:205 format:@"No keybag found with UUID %@ for asset %@", v11, v7];
        }

        *_keybag = v28;
        v22 = v18;
      }
    }
  }

  else
  {
    [MBError errorWithCode:205 format:@"No keybag for asset %@", v7];
    *_keybag = v14 = 0;
  }

  return v14;
}

- (id)_localFileInfo:(id)info
{
  infoCopy = info;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v9 = 0;
  v4 = MBNodeForPath(infoCopy, v10, &v9);
  v5 = v9;
  if (v4)
  {
    v6 = MBNodeAsString(v10);
  }

  else
  {
    v7 = MBGetDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v13 = infoCopy;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to get file info for %@: %@", buf, 0x16u);
      _MBLog(@"E ", "Failed to get file info for %@: %@", infoCopy, v5);
    }

    v6 = @"Unknown file info";
  }

  return v6;
}

@end