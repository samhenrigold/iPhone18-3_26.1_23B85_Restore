@interface SecDbKeychainMetadataKeyStore
+ (id)sharedStore;
+ (void)resetSharedStore;
- (BOOL)readKeyDataForClass:(int)class fromDb:(__OpaqueSecDbConnection *)db actualKeyclass:(int *)keyclass wrappedKey:(id *)key error:(id *)error;
- (id)_init;
- (id)fetchKeyForClass:(int)class fromDb:(__OpaqueSecDbConnection *)db keybag:(int)keybag specifier:(id)specifier allowWrites:(BOOL)writes error:(id *)error;
- (id)keyForKeyclass:(int)keyclass keybag:(int)keybag keySpecifier:(id)specifier allowWrites:(BOOL)writes error:(id *)error;
- (id)newKeyForKeyclass:(int)keyclass withKeybag:(int)keybag keySpecifier:(id)specifier database:(__OpaqueSecDbConnection *)database error:(id *)error;
- (id)validateWrappedKey:(id)key forKeyClass:(int)class actualKeyClass:(int *)keyClass keybag:(int)keybag keySpecifier:(id)specifier error:(id *)error;
- (id)writeKey:(id)key ForKeyclass:(int)keyclass withKeybag:(int)keybag keySpecifier:(id)specifier database:(__OpaqueSecDbConnection *)database error:(id *)error;
- (void)_onQueueDropAllKeys;
- (void)_onQueueDropClassAKeys;
- (void)dealloc;
- (void)dropAllKeys;
- (void)dropClassAKeys;
@end

@implementation SecDbKeychainMetadataKeyStore

+ (void)resetSharedStore
{
  if (qword_100073730 != -1)
  {
    sub_10003E610();
  }

  v3 = qword_100073718;

  dispatch_sync(v3, &stru_100059EC0);
}

+ (id)sharedStore
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000127E8;
  v10 = sub_1000127F8;
  v11 = 0;
  if (qword_100073730 != -1)
  {
    sub_10003E624();
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100012800;
  v5[3] = &unk_100059EE8;
  v5[4] = &v6;
  v5[5] = self;
  dispatch_sync(qword_100073718, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_init
{
  v13.receiver = self;
  v13.super_class = SecDbKeychainMetadataKeyStore;
  v2 = [(SecDbKeychainMetadataKeyStore *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    keysDict = v2->_keysDict;
    v2->_keysDict = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("SecDbKeychainMetadataKeyStore", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v2->_keybagNotificationToken = -1;
    objc_initWeak(&location, v2);
    v8 = v2->_queue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000129CC;
    v10[3] = &unk_100059F10;
    objc_copyWeak(&v11, &location);
    notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &v2->_keybagNotificationToken, v8, v10);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  keybagNotificationToken = self->_keybagNotificationToken;
  if (keybagNotificationToken != -1)
  {
    notify_cancel(keybagNotificationToken);
    self->_keybagNotificationToken = -1;
  }

  v4.receiver = self;
  v4.super_class = SecDbKeychainMetadataKeyStore;
  [(SecDbKeychainMetadataKeyStore *)&v4 dealloc];
}

- (void)dropClassAKeys
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012BB4;
  block[3] = &unk_100059F38;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_onQueueDropClassAKeys
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = secLogObjForScope("SecDbKeychainMetadataKeyStore");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "dropping class A metadata keys", v4, 2u);
  }

  [(NSMutableDictionary *)self->_keysDict setObject:0 forKeyedSubscript:&off_10006C220];
  [(NSMutableDictionary *)self->_keysDict setObject:0 forKeyedSubscript:&off_10006C238];
  [(NSMutableDictionary *)self->_keysDict setObject:0 forKeyedSubscript:&off_10006C250];
}

- (void)dropAllKeys
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012CE8;
  block[3] = &unk_100059F38;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_onQueueDropAllKeys
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = secLogObjForScope("SecDbKeychainMetadataKeyStore");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "dropping all metadata keys", v4, 2u);
  }

  [(NSMutableDictionary *)self->_keysDict removeAllObjects];
}

- (id)validateWrappedKey:(id)key forKeyClass:(int)class actualKeyClass:(int *)keyClass keybag:(int)keybag keySpecifier:(id)specifier error:(id *)error
{
  v10 = *&keybag;
  keyCopy = key;
  specifierCopy = specifier;
  if (*keyClass)
  {
    classCopy = *keyClass;
  }

  else
  {
    classCopy = class;
  }

  v16 = [NSMutableData dataWithLength:32];
  v33 = 0;
  v17 = [SecAKSObjCWrappers aksDecryptWithKeybag:v10 keyclass:classCopy ciphertext:keyCopy outKeyclass:0 plaintext:v16 personaId:0 personaIdLength:0 error:&v33];
  v18 = v33;
  v19 = v18;
  if (v17)
  {
    v32 = v18;
    v20 = [[_SFAESKey alloc] initWithData:v16 specifier:specifierCopy error:&v32];
    v21 = v32;

    if (v20)
    {
      goto LABEL_21;
    }

    v22 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      LODWORD(v35[0]) = classCopy;
      WORD2(v35[0]) = 2112;
      *(v35 + 6) = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "SecDbKeychainItemV7: AKS decrypted metadata blob for class %d but could not turn it into a key: %@", buf, 0x12u);
    }

    goto LABEL_12;
  }

  if (classCopy > 30 || *keyClass)
  {
    v21 = v18;
    goto LABEL_12;
  }

  *keyClass = classCopy | 0x20;
  v31 = v18;
  v28 = [SecAKSObjCWrappers aksDecryptWithKeybag:"aksDecryptWithKeybag:keyclass:ciphertext:outKeyclass:plaintext:personaId:personaIdLength:error:" keyclass:v10 ciphertext:0 outKeyclass:&v31 plaintext:? personaId:? personaIdLength:? error:?];
  v29 = v31;

  if (!v28)
  {
    v21 = v29;
    goto LABEL_12;
  }

  v30 = v29;
  v20 = [[_SFAESKey alloc] initWithData:v16 specifier:specifierCopy error:&v30];
  v21 = v30;

  if (!v20)
  {
LABEL_12:
    domain = [v21 domain];
    if ([domain isEqualToString:kCFErrorDomainOSStatus])
    {
      code = [v21 code];

      if (code == -25308)
      {
        if (error)
        {
LABEL_15:
          v25 = v21;
          v20 = 0;
          *error = v21;
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    else
    {
    }

    v26 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35[0] = v21;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "SecDbKeychainItemV7: Unable to create key from retrieved data: %@", buf, 0xCu);
    }

    if (error)
    {
      goto LABEL_15;
    }

LABEL_20:
    v20 = 0;
  }

LABEL_21:

  return v20;
}

- (id)newKeyForKeyclass:(int)keyclass withKeybag:(int)keybag keySpecifier:(id)specifier database:(__OpaqueSecDbConnection *)database error:(id *)error
{
  v9 = *&keybag;
  v10 = *&keyclass;
  specifierCopy = specifier;
  v19 = 0;
  v13 = [[_SFAESKey alloc] initRandomKeyWithSpecifier:specifierCopy error:&v19];
  v14 = v19;
  v15 = v14;
  if (v13)
  {
    v16 = [(SecDbKeychainMetadataKeyStore *)self writeKey:v13 ForKeyclass:v10 withKeybag:v9 keySpecifier:specifierCopy database:database error:error];
  }

  else if (error)
  {
    v17 = v14;
    v16 = 0;
    *error = v15;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)writeKey:(id)key ForKeyclass:(int)keyclass withKeybag:(int)keybag keySpecifier:(id)specifier database:(__OpaqueSecDbConnection *)database error:(id *)error
{
  v11 = *&keybag;
  v12 = *&keyclass;
  keyCopy = key;
  specifierCopy = specifier;
  dispatch_assert_queue_V2(self->_queue);
  v16 = [NSMutableData dataWithLength:128];
  v41 = v12;
  keyData = [keyCopy keyData];
  v40 = 0;
  v18 = [SecAKSObjCWrappers aksEncryptWithKeybag:v11 keyclass:v12 plaintext:keyData outKeyclass:&v41 ciphertext:v16 personaId:0 personaIdLength:0 error:&v40];
  v19 = v40;

  if (v18)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v47 = 0x2020000000;
    v48 = 1;
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000134DC;
    v29[3] = &unk_100059F60;
    p_buf = &buf;
    v32 = &v36;
    v34 = v12;
    v35 = v41;
    v30 = v16;
    databaseCopy = database;
    v20 = SecDbPrepare(database, @"INSERT OR REPLACE INTO metadatakeys (keyclass, actualKeyclass, data) VALUES (?,?,?)", &v39, v29);
    v21 = v20 & *(*(&buf + 1) + 24);
    *(*(&buf + 1) + 24) = v21;
    if (v21)
    {
      v22 = keyCopy;
    }

    else
    {
      v25 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v37[3];
        *v42 = 67109378;
        v43 = v12;
        v44 = 2112;
        v45 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Failed to write new metadata key for %d: %@", v42, 0x12u);
      }

      v27 = v37[3];
      if (error)
      {
        v22 = 0;
        *error = v27;
        v37[3] = 0;
      }

      else
      {
        if (v27)
        {
          v37[3] = 0;
          CFRelease(v27);
        }

        v22 = 0;
      }
    }

    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v23 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v19;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "SecDbMetadataKeyStore: Unable to encrypt new metadata key to keybag: %@", &buf, 0xCu);
    }

    if (error)
    {
      v24 = v19;
      v22 = 0;
      *error = v19;
    }

    else
    {
      v22 = 0;
    }
  }

  return v22;
}

- (BOOL)readKeyDataForClass:(int)class fromDb:(__OpaqueSecDbConnection *)db actualKeyclass:(int *)keyclass wrappedKey:(id *)key error:(id *)error
{
  dispatch_assert_queue_V2(self->_queue);
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_1000127E8;
  v35 = sub_1000127F8;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10001381C;
  v17[3] = &unk_100059FB0;
  classCopy = class;
  v17[4] = &v27;
  v17[5] = &v19;
  v17[8] = db;
  v17[9] = keyclass;
  v17[6] = &v31;
  v17[7] = &v23;
  v12 = SecDbPrepare(db, @"SELECT data, actualKeyclass FROM metadatakeys WHERE keyclass = ?", &v22, v17);
  v13 = (v12 & v28[3]) == 0;
  *(v28 + 24) &= v12;
  if (v13 || (v24[3] & 1) == 0)
  {
    v15 = v20[3];
    if (error)
    {
      *error = v15;
      v20[3] = 0;
    }

    else if (v15)
    {
      v20[3] = 0;
      CFRelease(v15);
    }

    v14 = 0;
    *keyclass = 0;
  }

  else
  {
    *key = v32[5];
    v14 = 1;
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  return v14;
}

- (id)fetchKeyForClass:(int)class fromDb:(__OpaqueSecDbConnection *)db keybag:(int)keybag specifier:(id)specifier allowWrites:(BOOL)writes error:(id *)error
{
  writesCopy = writes;
  v10 = *&keybag;
  v12 = *&class;
  specifierCopy = specifier;
  dispatch_assert_queue_V2(self->_queue);
  v26 = 0;
  v25 = 0;
  v15 = [(SecDbKeychainMetadataKeyStore *)self readKeyDataForClass:v12 fromDb:db actualKeyclass:&v26 wrappedKey:&v25 error:error];
  v16 = v25;
  v17 = v16;
  if (!v15)
  {
    v19 = 0;
    goto LABEL_15;
  }

  if (![v16 length])
  {
    v21 = secLogObjForScope("SecDbMetadataKeyStore");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "No metadata key found on disk despite existing row. That's odd.", buf, 2u);
    }

    v19 = 0;
    goto LABEL_14;
  }

  v18 = v26;
  v19 = [(SecDbKeychainMetadataKeyStore *)self validateWrappedKey:v17 forKeyClass:v12 actualKeyClass:&v26 keybag:v10 keySpecifier:specifierCopy error:error];
  if (v19 && writesCopy && v18 != v26)
  {
    v24 = 0;
    v20 = [(SecDbKeychainMetadataKeyStore *)self writeKey:v19 ForKeyclass:v12 withKeybag:v10 keySpecifier:specifierCopy database:db error:&v24];
    v21 = v24;

    if (!v20)
    {
      v22 = secLogObjForScope("SecWarning");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        v28 = v12;
        v29 = 2112;
        v30 = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "SecDbMetadataKeyStore: Unable to rewrite metadata key for %d to new format: %@", buf, 0x12u);
      }

      v21 = 0;
    }

LABEL_14:
  }

LABEL_15:

  return v19;
}

- (id)keyForKeyclass:(int)keyclass keybag:(int)keybag keySpecifier:(id)specifier allowWrites:(BOOL)writes error:(id *)error
{
  v10 = *&keyclass;
  specifierCopy = specifier;
  if (error)
  {
    off_100073668();
    v15 = v14;
    if (*v14 == 1)
    {
      sub_10003E64C(self, a2);
    }

    *v15 = 1;
    v16 = SecAKSSanitizedKeyclass(v10);
    *buf = 0;
    v49 = buf;
    v50 = 0x3032000000;
    v51 = sub_1000127E8;
    v52 = sub_1000127F8;
    v53 = 0;
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = sub_1000127E8;
    v46 = sub_1000127F8;
    v47 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 1;
    queue = self->_queue;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100013F2C;
    v25[3] = &unk_10005A028;
    v27 = buf;
    v28 = &v34;
    v25[4] = self;
    v29 = &v38;
    v31 = v16;
    keybagCopy = keybag;
    writesCopy = writes;
    v26 = specifierCopy;
    v30 = &v42;
    dispatch_sync(queue, v25);
    if (*(v35 + 24) == 1)
    {
      v18 = *(v49 + 5);
      if (v18)
      {
        goto LABEL_16;
      }
    }

    v19 = v43[5];
    if (v19)
    {
      *error = v19;
      v20 = v39[3];
      if (!v20)
      {
LABEL_15:
        v23 = *(v49 + 5);
        *(v49 + 5) = 0;

        v18 = *(v49 + 5);
LABEL_16:
        *v15 = 0;
        v22 = v18;

        _Block_object_dispose(&v34, 8);
        _Block_object_dispose(&v38, 8);
        _Block_object_dispose(&v42, 8);

        _Block_object_dispose(buf, 8);
        goto LABEL_17;
      }

      v39[3] = 0;
      CFRelease(v20);
    }

    else
    {
      *error = v39[3];
      v39[3] = 0;
    }

    if (!*error)
    {
      __security_simulatecrash(@"Execution has encountered an unexpected state", 0x53C0000Eu);
    }

    goto LABEL_15;
  }

  v21 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "keyForKeyclass called without error param, this is a bug", buf, 2u);
  }

  v22 = 0;
LABEL_17:

  return v22;
}

@end