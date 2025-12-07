@interface _LSDeviceIdentifierCache
- (_LSDeviceIdentifierCache)initWithPersona:(id)persona;
- (id)allIdentifiersNotDispatched;
- (id)applyPerUserEntropyNotDispatched:(id)dispatched type:(int64_t)type;
- (id)deviceIdentifierVendorSeed;
- (id)extractUUIDForKey:(id)key;
- (id)generateSomePerUserEntropyNotDispatched;
- (id)identifiersOfTypeNotDispatched:(int64_t)dispatched;
- (void)clearAllIdentifiersOfType:(int64_t)type;
- (void)clearIdentifiersForUninstallationWithVendorName:(id)name bundleIdentifier:(id)identifier;
- (void)generatePerUserEntropyIfNeededNotDispatched;
- (void)getIdentifierOfType:(int64_t)type vendorName:(id)name bundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)save;
@end

@implementation _LSDeviceIdentifierCache

- (id)allIdentifiersNotDispatched
{
  v37 = *MEMORY[0x1E69E9840];
  deviceUnlockedSinceBoot = [(_LSDeviceIdentifierCache *)self deviceUnlockedSinceBoot];
  if (!deviceUnlockedSinceBoot)
  {
    p_super = _LSDefaultLog(deviceUnlockedSinceBoot);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, p_super, OS_LOG_TYPE_DEFAULT, "Identifiers file unavailable (not yet unlocked)", buf, 2u);
    }

    v4 = 0;
    goto LABEL_26;
  }

  v4 = self->_identifiers;
  if (v4)
  {
    goto LABEL_27;
  }

  v5 = self->_identifiersFileURL;
  p_super = &v5->super;
  if (v5)
  {
    v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v5];
    if (v7)
    {
LABEL_5:
      v8 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:1 format:0 error:0];
      identifiers = self->_identifiers;
      self->_identifiers = v8;

      v10 = [(NSDictionary *)self->_identifiers objectForKeyedSubscript:@"LSVendors"];
      v11 = v10 == 0;

      if (v11)
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        [(NSDictionary *)self->_identifiers setObject:dictionary forKeyedSubscript:@"LSVendors"];

        [(_LSDeviceIdentifierCache *)self save];
      }

      v13 = [(_LSDeviceIdentifierCache *)self extractUUIDForKey:@"LSAdvertiserIdentifier"];
      advertiserIdentifier = self->_advertiserIdentifier;
      self->_advertiserIdentifier = v13;

      v15 = [(_LSDeviceIdentifierCache *)self extractUUIDForKey:@"LSVendorSeed"];
      vendorIdentifierSeed = self->_vendorIdentifierSeed;
      self->_vendorIdentifierSeed = v15;

      goto LABEL_21;
    }

    v17 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/var/db/lsd/com.apple.lsdidentifiers.plist" isDirectory:0];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v17 path];
    v20 = [defaultManager fileExistsAtPath:path];

    if (v20)
    {
      v22 = _LSDefaultLog(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v17;
        _os_log_impl(&dword_18162D000, v22, OS_LOG_TYPE_DEFAULT, "Identifiers file does not exist, attempting to read file from old location in %@", buf, 0xCu);
      }

      v23 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v17];
      v7 = v23;
      if (!v23)
      {
        v24 = _LSDefaultLog(0);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v36 = v17;
          _os_log_impl(&dword_18162D000, v24, OS_LOG_TYPE_DEFAULT, "Invalid data found at %@", buf, 0xCu);
        }
      }

      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      [defaultManager2 removeItemAtURL:v17 error:0];

      if (!v23)
      {
        goto LABEL_21;
      }

      goto LABEL_5;
    }
  }

LABEL_21:
  v26 = self->_identifiers;
  if (!v26)
  {
    v27 = _LSDefaultLog(v5);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v27, OS_LOG_TYPE_DEFAULT, "Creating identifiers table for the first time.", buf, 2u);
    }

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v34 = dictionary2;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v30 = [v29 copy];
    v31 = self->_identifiers;
    self->_identifiers = v30;

    [(_LSDeviceIdentifierCache *)self save];
    v26 = self->_identifiers;
  }

  v4 = v26;
LABEL_26:

LABEL_27:

  return v4;
}

- (void)generatePerUserEntropyIfNeededNotDispatched
{
  v26[3] = *MEMORY[0x1E69E9840];
  if (!self->_perUserEntropy)
  {
    deviceUnlockedSinceBoot = [(_LSDeviceIdentifierCache *)self deviceUnlockedSinceBoot];
    if (deviceUnlockedSinceBoot)
    {
      v5 = [__LSDefaultsGetSharedInstance(deviceUnlockedSinceBoot v4)];
      if (v5)
      {
        v7 = _LSPerUserEntropyURL(v5, v6);
        if (v7)
        {
          v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v7];
          if (v8)
          {
            v9 = MEMORY[0x1E696ACD0];
            v10 = MEMORY[0x1E695DFD8];
            v11 = objc_opt_class();
            v12 = objc_opt_class();
            v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
            v14 = [v9 unarchivedObjectOfClasses:v13 fromData:v8 error:0];
            perUserEntropy = self->_perUserEntropy;
            self->_perUserEntropy = v14;
          }

          if (!self->_perUserEntropy)
          {
            generateSomePerUserEntropyNotDispatched = [(_LSDeviceIdentifierCache *)self generateSomePerUserEntropyNotDispatched];
            generateSomePerUserEntropyNotDispatched2 = [(_LSDeviceIdentifierCache *)self generateSomePerUserEntropyNotDispatched];
            generateSomePerUserEntropyNotDispatched3 = [(_LSDeviceIdentifierCache *)self generateSomePerUserEntropyNotDispatched];
            v19 = generateSomePerUserEntropyNotDispatched3;
            if (generateSomePerUserEntropyNotDispatched && generateSomePerUserEntropyNotDispatched3)
            {
              v25[0] = &unk_1EEF8EF60;
              v25[1] = &unk_1EEF8EF78;
              v26[0] = generateSomePerUserEntropyNotDispatched;
              v26[1] = generateSomePerUserEntropyNotDispatched3;
              v25[2] = &unk_1EEF8EF90;
              v26[2] = generateSomePerUserEntropyNotDispatched2;
              v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:3];
              v21 = self->_perUserEntropy;
              self->_perUserEntropy = v20;

              [(_LSDeviceIdentifierCache *)self save];
            }

            else
            {
              v23 = _LSDefaultLog(generateSomePerUserEntropyNotDispatched3);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_18162D000, v23, OS_LOG_TYPE_DEFAULT, "Failed to get per-user entropy for device identifiers. Will only have per-device identifiers.", buf, 2u);
              }
            }
          }
        }

        else
        {
          v8 = _LSDefaultLog(0);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "Failed to get per-user entropy URL for device identifiers. Will only have per-device identifiers.", buf, 2u);
          }
        }
      }

      else
      {
        v22 = self->_perUserEntropy;
        self->_perUserEntropy = MEMORY[0x1E695E0F8];
      }
    }
  }
}

- (_LSDeviceIdentifierCache)initWithPersona:(id)persona
{
  personaCopy = persona;
  v23.receiver = self;
  v23.super_class = _LSDeviceIdentifierCache;
  v6 = [(_LSDeviceIdentifierCache *)&v23 init];
  v7 = v6;
  _LSAssertRunningInServer("[_LSDeviceIdentifierCache initWithPersona:]", v8);
  if (v6)
  {
    objc_storeStrong(&v6->_personaUniqueString, persona);
    identifiers = v6->_identifiers;
    v6->_identifiers = 0;

    advertiserIdentifier = v6->_advertiserIdentifier;
    v6->_advertiserIdentifier = 0;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.launchservices.deviceidentifiers", v11);
    queue = v6->_queue;
    v6->_queue = v12;

    if (personaCopy && (v14 = [personaCopy length]) != 0)
    {
      v16 = [__LSDefaultsGetSharedInstance(v14 v15)];
      uRLByDeletingPathExtension = [v16 URLByDeletingPathExtension];
      personaCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.plist", personaCopy];
      v19 = [uRLByDeletingPathExtension URLByAppendingPathExtension:personaCopy];
      identifiersFileURL = v7->_identifiersFileURL;
      v7->_identifiersFileURL = v19;
    }

    else
    {
      v21 = [__LSDefaultsGetSharedInstance(v14 v15)];
      v16 = v6->_identifiersFileURL;
      v6->_identifiersFileURL = v21;
    }
  }

  return v7;
}

- (void)getIdentifierOfType:(int64_t)type vendorName:(id)name bundleIdentifier:(id)identifier completionHandler:(id)handler
{
  nameCopy = name;
  identifierCopy = identifier;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94___LSDeviceIdentifierCache_getIdentifierOfType_vendorName_bundleIdentifier_completionHandler___block_invoke;
  block[3] = &unk_1E6A1BD10;
  v18 = nameCopy;
  v19 = identifierCopy;
  v21 = handlerCopy;
  typeCopy = type;
  selfCopy = self;
  v14 = handlerCopy;
  v15 = identifierCopy;
  v16 = nameCopy;
  dispatch_async(queue, block);
}

- (void)clearIdentifiersForUninstallationWithVendorName:(id)name bundleIdentifier:(id)identifier
{
  nameCopy = name;
  identifierCopy = identifier;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93___LSDeviceIdentifierCache_clearIdentifiersForUninstallationWithVendorName_bundleIdentifier___block_invoke;
  block[3] = &unk_1E6A1B140;
  v12 = nameCopy;
  v13 = identifierCopy;
  selfCopy = self;
  v9 = identifierCopy;
  v10 = nameCopy;
  dispatch_async(queue, block);
}

- (void)clearAllIdentifiersOfType:(int64_t)type
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54___LSDeviceIdentifierCache_clearAllIdentifiersOfType___block_invoke;
  v4[3] = &unk_1E6A18D78;
  v4[4] = self;
  v4[5] = type;
  dispatch_async(queue, v4);
}

- (void)save
{
  queue = self->_queue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32___LSDeviceIdentifierCache_save__block_invoke;
  v3[3] = &unk_1E6A1A830;
  v3[4] = self;
  _LSDispatchCoalescedAfterDelay(&self->_saveFlag, queue, v3, 3.0);
}

- (id)generateSomePerUserEntropyNotDispatched
{
  v5 = *MEMORY[0x1E69E9840];
  if (SecRandomCopyBytes(*MEMORY[0x1E697B308], 0x10uLL, bytes))
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x1E695DEF0] dataWithBytes:bytes length:16];
  }

  return v2;
}

- (id)applyPerUserEntropyNotDispatched:(id)dispatched type:(int64_t)type
{
  v21[2] = *MEMORY[0x1E69E9840];
  dispatchedCopy = dispatched;
  [(_LSDeviceIdentifierCache *)self generatePerUserEntropyIfNeededNotDispatched];
  if (dispatchedCopy)
  {
    perUserEntropy = self->_perUserEntropy;
    v8 = dispatchedCopy;
    if (perUserEntropy)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:type];
      v10 = [(NSDictionary *)perUserEntropy objectForKeyedSubscript:v9];
      v11 = [v10 length];

      v8 = dispatchedCopy;
      if (v11)
      {
        v21[0] = 0;
        v21[1] = 0;
        [dispatchedCopy getUUIDBytes:v21];
        v12 = MEMORY[0x1E695DF88];
        v13 = self->_perUserEntropy;
        v14 = [MEMORY[0x1E696AD98] numberWithInteger:type];
        v15 = [(NSDictionary *)v13 objectForKeyedSubscript:v14];
        v16 = [v12 dataWithCapacity:{objc_msgSend(v15, "length") + 16}];

        v8 = dispatchedCopy;
        if (v16)
        {
          [v16 appendBytes:v21 length:16];
          v17 = self->_perUserEntropy;
          v18 = [MEMORY[0x1E696AD98] numberWithInteger:type];
          v19 = [(NSDictionary *)v17 objectForKeyedSubscript:v18];
          [v16 appendData:v19];

          v8 = [MEMORY[0x1E696AFB0] _LS_UUIDWithData:v16 digestType:1];
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)extractUUIDForKey:(id)key
{
  keyCopy = key;
  v5 = [(NSDictionary *)self->_identifiers objectForKeyedSubscript:keyCopy];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v5];
    [(NSDictionary *)self->_identifiers removeObjectForKey:keyCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)identifiersOfTypeNotDispatched:(int64_t)dispatched
{
  v10 = *MEMORY[0x1E69E9840];
  allIdentifiersNotDispatched = [(_LSDeviceIdentifierCache *)self allIdentifiersNotDispatched];
  v5 = allIdentifiersNotDispatched;
  if (allIdentifiersNotDispatched && (dispatched - 1) >= 2)
  {
    if (!dispatched)
    {
      v6 = [allIdentifiersNotDispatched objectForKeyedSubscript:@"LSVendors"];
      goto LABEL_9;
    }

    v7 = _LSDefaultLog(allIdentifiersNotDispatched);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = dispatched;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Failed to figure out string representation of identifier type %i", v9, 8u);
    }
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (id)deviceIdentifierVendorSeed
{
  v12 = *MEMORY[0x1E69E9840];
  vendorIdentifierSeed = self->_vendorIdentifierSeed;
  if (!vendorIdentifierSeed)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v5 = self->_vendorIdentifierSeed;
    self->_vendorIdentifierSeed = uUID;

    v7 = _LSDefaultLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = self->_vendorIdentifierSeed;
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_INFO, "Generated vendor seed %@", &v10, 0xCu);
    }

    [(_LSDeviceIdentifierCache *)self save];
    vendorIdentifierSeed = self->_vendorIdentifierSeed;
  }

  return vendorIdentifierSeed;
}

@end