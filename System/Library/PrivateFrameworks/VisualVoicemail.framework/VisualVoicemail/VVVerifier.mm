@interface VVVerifier
- (BOOL)valueForCheckpointKey:(id)key exists:(BOOL *)exists;
- (VVVerifier)initWithAccountDir:(id)dir;
- (id)_checkpointDictionary;
- (id)_checkpointDictionaryFilePath;
- (id)configurationDictionary;
- (id)humanReadableConfigurationDictionary:(id *)dictionary;
- (id)keyDescriptions;
- (id)readableError;
- (void)_checkpointDictionaryChanged;
- (void)_mapFromSourceDictionary:(id)dictionary destinationDictionary:(id)destinationDictionary inKey:(id)key outDescription:(id)description;
- (void)_saveCheckpointDictionary;
- (void)storeValue:(BOOL)value forCheckpointKey:(id)key;
@end

@implementation VVVerifier

- (VVVerifier)initWithAccountDir:(id)dir
{
  dirCopy = dir;
  v8.receiver = self;
  v8.super_class = VVVerifier;
  v5 = [(VVVerifier *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(VVVerifier *)v5 setAccountDir:dirCopy];
  }

  return v6;
}

- (id)_checkpointDictionaryFilePath
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006721C;
  block[3] = &unk_1000EE5B8;
  block[4] = self;
  if (qword_10010D978 != -1)
  {
    dispatch_once(&qword_10010D978, block);
  }

  return qword_10010D970;
}

- (id)_checkpointDictionary
{
  checkpointDictionary = self->_checkpointDictionary;
  if (!checkpointDictionary)
  {
    _checkpointDictionaryFilePath = [(VVVerifier *)self _checkpointDictionaryFilePath];
    v5 = +[NSFileManager defaultManager];
    if ([v5 fileExistsAtPath:_checkpointDictionaryFilePath])
    {
      v6 = [[NSMutableDictionary alloc] initWithContentsOfFile:_checkpointDictionaryFilePath];
    }

    else
    {
      v6 = objc_alloc_init(NSMutableDictionary);
    }

    v7 = self->_checkpointDictionary;
    self->_checkpointDictionary = v6;

    checkpointDictionary = self->_checkpointDictionary;
  }

  return checkpointDictionary;
}

- (void)_saveCheckpointDictionary
{
  if (self->_checkpointDictionary)
  {
    _checkpointDictionaryFilePath = [(VVVerifier *)self _checkpointDictionaryFilePath];
    checkpointDictionary = self->_checkpointDictionary;
    v13 = 0;
    v5 = [(NSMutableDictionary *)checkpointDictionary writeToFile:_checkpointDictionaryFilePath options:268435457 error:&v13];
    v6 = v13;
    if ((v5 & 1) == 0)
    {
      v7 = vm_vmd_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10009D970();
      }
    }

    v8 = [NSURL fileURLWithPath:_checkpointDictionaryFilePath];
    v12 = 0;
    v9 = [v8 setResourceValue:&__kCFBooleanTrue forKey:NSURLIsExcludedFromBackupKey error:&v12];
    v10 = v12;
    if ((v9 & 1) == 0)
    {
      v11 = vm_vmd_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10009D9D8();
      }
    }

    notify_post([@"com.apple.visualvoicemail.VVVerifierChanged" UTF8String]);
  }
}

- (void)storeValue:(BOOL)value forCheckpointKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  v22 = [NSNumber numberWithBool:valueCopy];
  if (valueCopy)
  {
    v29 = 0uLL;
    v30 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    keyDescriptions = [(VVVerifier *)self keyDescriptions];
    v8 = [keyDescriptions countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(keyDescriptions);
        }

        v12 = [*(*(&v27 + 1) + 8 * v11) valueForKey:@"KeyName"];
        _checkpointDictionary = [(VVVerifier *)self _checkpointDictionary];
        [_checkpointDictionary setValue:v22 forKey:v12];

        LOBYTE(_checkpointDictionary) = [v12 isEqualToString:keyCopy];
        if (_checkpointDictionary)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [keyDescriptions countByEnumeratingWithState:&v27 objects:v32 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  else
  {
    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    keyDescriptions = [(VVVerifier *)self keyDescriptions];
    v14 = [keyDescriptions countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v24;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v24 != v17)
          {
            objc_enumerationMutation(keyDescriptions);
          }

          v19 = [*(*(&v23 + 1) + 8 * i) valueForKey:@"KeyName"];
          if (v16)
          {
            _checkpointDictionary2 = [(VVVerifier *)self _checkpointDictionary];
            [_checkpointDictionary2 removeObjectForKey:v19];
          }

          if ([v19 isEqualToString:keyCopy])
          {
            _checkpointDictionary3 = [(VVVerifier *)self _checkpointDictionary];
            [_checkpointDictionary3 setValue:v22 forKey:keyCopy];

            v16 = 1;
          }
        }

        v15 = [keyDescriptions countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v15);
    }
  }

  [(VVVerifier *)self _saveCheckpointDictionary];
}

- (BOOL)valueForCheckpointKey:(id)key exists:(BOOL *)exists
{
  keyCopy = key;
  _checkpointDictionary = [(VVVerifier *)self _checkpointDictionary];
  v8 = [_checkpointDictionary valueForKey:keyCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (exists)
    {
      *exists = 1;
    }

    bOOLValue = [v8 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
    if (exists)
    {
      *exists = 0;
    }
  }

  return bOOLValue;
}

- (id)keyDescriptions
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100067858;
  block[3] = &unk_1000EE5B8;
  block[4] = self;
  if (qword_10010D980 != -1)
  {
    dispatch_once(&qword_10010D980, block);
  }

  return self->_keyDescriptions;
}

- (id)readableError
{
  [(VVVerifier *)self keyDescriptions];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 objectForKey:@"KeyName"];
        v12 = 0;
        if (![(VVVerifier *)self valueForCheckpointKey:v9 exists:&v12])
        {
          if (v12 == 1)
          {
            v10 = [v8 valueForKey:@"LatestFailure"];
          }

          else
          {
            v10 = 0;
          }

          goto LABEL_14;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_14:

  return v10;
}

- (void)_checkpointDictionaryChanged
{
  checkpointDictionary = self->_checkpointDictionary;
  self->_checkpointDictionary = 0;

  uTF8String = [@"com.apple.visualvoicemail.VVVerifierChanged" UTF8String];

  notify_post(uTF8String);
}

- (id)configurationDictionary
{
  accountDir = [(VVVerifier *)self accountDir];
  v3 = [accountDir URLByAppendingPathComponent:@"com.apple.voicemail.imap.parameters.plist"];

  v4 = [[NSDictionary alloc] initWithContentsOfURL:v3];

  return v4;
}

- (void)_mapFromSourceDictionary:(id)dictionary destinationDictionary:(id)destinationDictionary inKey:(id)key outDescription:(id)description
{
  dictionaryCopy = dictionary;
  destinationDictionaryCopy = destinationDictionary;
  keyCopy = key;
  descriptionCopy = description;
  allKeys = [dictionaryCopy allKeys];
  v13 = [allKeys containsObject:keyCopy];

  if (v13)
  {
    v14 = [dictionaryCopy objectForKey:keyCopy];
    v15 = [NSString stringWithFormat:@"%@", v14];
    [destinationDictionaryCopy setObject:v15 forKey:descriptionCopy];
  }

  else
  {
    [destinationDictionaryCopy setObject:&stru_1000F0098 forKey:descriptionCopy];
  }
}

- (id)humanReadableConfigurationDictionary:(id *)dictionary
{
  configurationDictionary = [(VVVerifier *)self configurationDictionary];
  if (configurationDictionary)
  {
    v6 = [NSMutableDictionary dictionaryWithCapacity:6];
    v7 = [configurationDictionary objectForKey:@"AccountSettings"];
    [(VVVerifier *)self _mapFromSourceDictionary:v7 destinationDictionary:v6 inKey:@"name" outDescription:@"Name"];
    [(VVVerifier *)self _mapFromSourceDictionary:v7 destinationDictionary:v6 inKey:@"port" outDescription:@"Port"];
    [(VVVerifier *)self _mapFromSourceDictionary:v7 destinationDictionary:v6 inKey:@"server" outDescription:@"Server"];
    [(VVVerifier *)self _mapFromSourceDictionary:configurationDictionary destinationDictionary:v6 inKey:@"AccountState" outDescription:@"State"];
    [(VVVerifier *)self _mapFromSourceDictionary:configurationDictionary destinationDictionary:v6 inKey:@"BeaconCount" outDescription:@"Beacons"];
    [(VVVerifier *)self _mapFromSourceDictionary:configurationDictionary destinationDictionary:v6 inKey:@"GreetingType" outDescription:@"Greeting"];
    if (dictionary)
    {
      *dictionary = [NSArray arrayWithObjects:@"Name", @"Port", @"Server", @"State", @"Beacons", @"Greeting", 0];
    }
  }

  else
  {
    v6 = 0;
    if (dictionary)
    {
      *dictionary = 0;
    }
  }

  return v6;
}

@end