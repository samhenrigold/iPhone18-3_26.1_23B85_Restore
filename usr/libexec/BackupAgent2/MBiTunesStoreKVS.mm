@interface MBiTunesStoreKVS
+ (id)iTunesStoreKVS;
+ (id)mergeKnownAccountsByDSID:(id)d into:(id)into;
- (MBiTunesStoreKVS)init;
- (id)knownAccounts;
- (id)knownAccountsByDSID;
- (id)valueForDomain:(id)domain key:(id)key;
- (void)removeAllValues;
- (void)setValue:(id)value forDomain:(id)domain key:(id)key;
- (void)setValuesWithDictionary:(id)dictionary forDomain:(id)domain;
@end

@implementation MBiTunesStoreKVS

+ (id)iTunesStoreKVS
{
  v2 = objc_alloc_init(MBiTunesStoreKVS);

  return v2;
}

- (MBiTunesStoreKVS)init
{
  v6.receiver = self;
  v6.super_class = MBiTunesStoreKVS;
  v2 = [(MBiTunesStoreKVS *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SSKeyValueStore);
    KVS = v2->_KVS;
    v2->_KVS = v3;
  }

  return v2;
}

- (id)valueForDomain:(id)domain key:(id)key
{
  domainCopy = domain;
  keyCopy = key;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_10008EEE8;
  v36 = sub_10008EEF8;
  v37 = 0;
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      *buf = 138412802;
      v39 = domainCopy;
      v40 = 2112;
      v41 = keyCopy;
      v42 = 2112;
      v43 = v10;
      v11 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Getting value %@/%@ from %@", buf, 0x20u);
    }

    v12 = objc_opt_class();
    _MBLog(@"I ", "Getting value %@/%@ from %@", domainCopy, keyCopy, v12);
  }

  v13 = dispatch_semaphore_create(0);
  KVS = self->_KVS;
  v26 = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_10008EF00;
  v29 = &unk_1000FE728;
  v31 = &v32;
  v15 = v13;
  v30 = v15;
  [(SSKeyValueStore *)KVS getValueForDomain:domainCopy key:keyCopy usingBlock:&v26];
  MBSemaphoreWaitForever();
  if (v33[5])
  {
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v16 = v16;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = objc_opt_class();
        v18 = v33[5];
        *buf = 138413058;
        v39 = domainCopy;
        v40 = 2112;
        v41 = keyCopy;
        v42 = 2112;
        v43 = v17;
        v44 = 2112;
        v45 = v18;
        v19 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Found value %@/%@ from %@: %@", buf, 0x2Au);
      }

      v20 = objc_opt_class();
      _MBLog(@"I ", "Found value %@/%@ from %@: %@", domainCopy, keyCopy, v20, v33[5], v26, v27, v28, v29);
    }
  }

  else
  {
    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v16 = v16;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v21 = objc_opt_class();
        *buf = 138412802;
        v39 = domainCopy;
        v40 = 2112;
        v41 = keyCopy;
        v42 = 2112;
        v43 = v21;
        v22 = v21;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Didn't find value %@/%@ in %@", buf, 0x20u);
      }

      v23 = objc_opt_class();
      _MBLog(@"I ", "Didn't find value %@/%@ in %@", domainCopy, keyCopy, v23);
    }
  }

  v24 = v33[5];
  _Block_object_dispose(&v32, 8);

  return v24;
}

- (void)setValue:(id)value forDomain:(id)domain key:(id)key
{
  valueCopy = value;
  domainCopy = domain;
  keyCopy = key;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v11 = MBGetDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      *buf = 138413058;
      v28 = domainCopy;
      v29 = 2112;
      v30 = keyCopy;
      v31 = 2112;
      v32 = v13;
      v33 = 2112;
      v34 = valueCopy;
      v14 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Setting value %@/%@ in %@: %@", buf, 0x2Au);
    }

    v15 = objc_opt_class();
    _MBLog(@"I ", "Setting value %@/%@ in %@: %@", domainCopy, keyCopy, v15, valueCopy);
  }

  v16 = dispatch_semaphore_create(0);
  KVS = self->_KVS;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10008F1E0;
  v20[3] = &unk_1000FE750;
  v22 = &v23;
  v18 = v16;
  v21 = v18;
  [(SSKeyValueStore *)KVS setValue:valueCopy forDomain:domainCopy key:keyCopy completionBlock:v20];
  MBSemaphoreWaitForever();
  if ((v24[3] & 1) == 0)
  {
    v19 = [[MBException alloc] initWithCode:1 format:{@"Failed to set value %@/%@ in %@", domainCopy, keyCopy, objc_opt_class()}];
    objc_exception_throw(v19);
  }

  _Block_object_dispose(&v23, 8);
}

- (void)setValuesWithDictionary:(id)dictionary forDomain:(id)domain
{
  dictionaryCopy = dictionary;
  domainCopy = domain;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v8 = MBGetDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      *buf = 138412802;
      v25 = domainCopy;
      v26 = 2112;
      v27 = v10;
      v28 = 2112;
      v29 = dictionaryCopy;
      v11 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Setting values with dictionary %@ in %@: %@", buf, 0x20u);
    }

    v12 = objc_opt_class();
    _MBLog(@"I ", "Setting values with dictionary %@ in %@: %@", domainCopy, v12, dictionaryCopy);
  }

  v13 = dispatch_semaphore_create(0);
  KVS = self->_KVS;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10008F450;
  v17[3] = &unk_1000FE750;
  v19 = &v20;
  v15 = v13;
  v18 = v15;
  [(SSKeyValueStore *)KVS setValuesWithDictionary:dictionaryCopy forDomain:domainCopy completionBlock:v17];
  MBSemaphoreWaitForever();
  if ((v21[3] & 1) == 0)
  {
    v16 = [[MBException alloc] initWithCode:1 format:{@"Failed to set values with dictionary %@/%@ in %@", domainCopy, objc_opt_class(), dictionaryCopy}];
    objc_exception_throw(v16);
  }

  _Block_object_dispose(&v20, 8);
}

- (void)removeAllValues
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v3 = MBGetDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      *buf = 138412290;
      v20 = v5;
      v6 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Removing all values from %@", buf, 0xCu);
    }

    v7 = objc_opt_class();
    _MBLog(@"I ", "Removing all values from %@", v7);
  }

  v8 = dispatch_semaphore_create(0);
  KVS = self->_KVS;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10008F678;
  v12[3] = &unk_1000FE750;
  v14 = &v15;
  v10 = v8;
  v13 = v10;
  [(SSKeyValueStore *)KVS removeAllValuesWithCompletionBlock:v12];
  MBSemaphoreWaitForever();
  if ((v16[3] & 1) == 0)
  {
    v11 = [[MBException alloc] initWithCode:1 format:{@"Failed to remove all values from %@", objc_opt_class()}];
    objc_exception_throw(v11);
  }

  _Block_object_dispose(&v15, 8);
}

+ (id)mergeKnownAccountsByDSID:(id)d into:(id)into
{
  dCopy = d;
  intoCopy = into;
  v7 = [NSMutableDictionary dictionaryWithDictionary:intoCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = dCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [intoCopy objectForKeyedSubscript:{v13, v17}];

        if (!v14)
        {
          v15 = [v8 objectForKeyedSubscript:v13];
          [v7 setObject:v15 forKeyedSubscript:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)knownAccounts
{
  v2 = [(MBiTunesStoreKVS *)self valueForDomain:@"com.apple.mobile.iTunes.store" key:@"KnownAccounts"];
  if (!v2)
  {
LABEL_18:
    v8 = 0;
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v3 = MBGetDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v21 = @"com.apple.mobile.iTunes.store";
      v22 = 2112;
      v23 = @"KnownAccounts";
      v24 = 2112;
      v25 = objc_opt_class();
      v9 = v25;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@/%@ not an array in %@", buf, 0x20u);

      v10 = objc_opt_class();
      _MBLog(@"Df", "%@/%@ not an array in %@", @"com.apple.mobile.iTunes.store", @"KnownAccounts", v10);
    }

LABEL_17:

    goto LABEL_18;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v11 = MBGetDefaultLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = objc_opt_class();
            *buf = 138412802;
            v21 = @"com.apple.mobile.iTunes.store";
            v22 = 2112;
            v23 = @"KnownAccounts";
            v24 = 2112;
            v25 = v12;
            v13 = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@/%@ item not a dictionary in %@", buf, 0x20u);

            v14 = objc_opt_class();
            _MBLog(@"Df", "%@/%@ item not a dictionary in %@", @"com.apple.mobile.iTunes.store", @"KnownAccounts", v14);
          }

          goto LABEL_17;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v26 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = v3;
LABEL_19:

  return v8;
}

- (id)knownAccountsByDSID
{
  knownAccounts = [(MBiTunesStoreKVS *)self knownAccounts];
  v3 = knownAccounts;
  if (knownAccounts)
  {
    v4 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [knownAccounts count]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v17 = v3;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v33 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      v18 = *v20;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = [v10 objectForKeyedSubscript:@"DSPersonID"];
          if (v11)
          {
            [v4 setObject:v10 forKeyedSubscript:v11];
          }

          else
          {
            v12 = MBGetDefaultLog();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = objc_opt_class();
              *buf = 138413314;
              v24 = @"DSPersonID";
              v25 = 2112;
              v26 = @"com.apple.mobile.iTunes.store";
              v27 = 2112;
              v28 = @"KnownAccounts";
              v29 = 2112;
              v30 = v10;
              v31 = 2112;
              v32 = v13;
              v14 = v13;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ not in %@/%@ value in %@: %@", buf, 0x34u);

              v8 = v18;
              v15 = objc_opt_class();
              _MBLog(@"Df", "%@ not in %@/%@ value in %@: %@", @"DSPersonID", @"com.apple.mobile.iTunes.store", @"KnownAccounts", v10, v15);
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v33 count:16];
      }

      while (v7);
    }

    v3 = v17;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end