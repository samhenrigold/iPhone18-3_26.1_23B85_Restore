@interface PTPCDefaultsManager
- (BOOL)_validateInstrumentationConfigDict:(id)dict;
- (BOOL)_valueHasExpectedClass:(id)class value:(id)value;
- (NSDictionary)configurationDict;
- (PTPCDefaultsManager)initWithDefaultsDomain:(id)domain configurationDictKey:(id)key keyToExpectedClassDict:(id)dict errorOut:(id *)out;
- (id)objectForKey:(id)key;
- (id)setObjectForKey:(id)key objectValue:(id)value;
- (void)resetPersistedDefaults;
@end

@implementation PTPCDefaultsManager

- (BOOL)_valueHasExpectedClass:(id)class value:(id)value
{
  classCopy = class;
  valueCopy = value;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v14 = sub_1000031A4(isKindOfClass);
    if (os_signpost_enabled(v14))
    {
      LOWORD(v22) = 0;
      v15 = "InvalidDefaultsKey";
      v16 = "Defaults contain non-string key";
      v17 = v14;
      v18 = 2;
LABEL_10:
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v15, v16, &v22, v18);
    }

LABEL_11:

    v13 = 0;
    goto LABEL_12;
  }

  keyToExpectedClass = [(PTPCDefaultsManager *)self keyToExpectedClass];
  v10 = [keyToExpectedClass objectForKeyedSubscript:classCopy];

  if (!v10)
  {
    v14 = sub_1000031A4(v11);
    if (os_signpost_enabled(v14))
    {
      v22 = 138543362;
      v23 = classCopy;
      v15 = "UnknownDefaultsKey";
      v16 = "Defaults contain unknown key: %{public}@";
      v17 = v14;
      v18 = 12;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (valueCopy)
  {
    v12 = objc_opt_isKindOfClass();
    if ((v12 & 1) == 0)
    {
      v14 = sub_1000031A4(v12);
      if (os_signpost_enabled(v14))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = 138543618;
        v23 = classCopy;
        v24 = 2114;
        v25 = v21;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UnexpectedClassForKey", "Key '%{public}@' has unexpected class '%{public}@'", &v22, 0x16u);
      }

      goto LABEL_11;
    }
  }

  v13 = 1;
LABEL_12:

  return v13;
}

- (BOOL)_validateInstrumentationConfigDict:(id)dict
{
  dictCopy = dict;
  if (!dictCopy)
  {
    allKeys = sub_100003420(0);
    if (os_signpost_enabled(allKeys))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, allKeys, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NilConfigurationDictIsValid", "", buf, 2u);
    }

    goto LABEL_14;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    allKeys = sub_1000031A4(isKindOfClass);
    if (os_signpost_enabled(allKeys))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138543362;
      v23 = v15;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, allKeys, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UnexpectedClassForConfigurationDict", "Expected dictionary, got unexpected class '%{public}@'", buf, 0xCu);
    }

    LOBYTE(v13) = 0;
    goto LABEL_18;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  allKeys = [dictCopy allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v7)
  {
LABEL_14:
    LOBYTE(v13) = 1;
    goto LABEL_18;
  }

  v8 = v7;
  v9 = *v18;
LABEL_5:
  v10 = 0;
  while (1)
  {
    if (*v18 != v9)
    {
      objc_enumerationMutation(allKeys);
    }

    v11 = *(*(&v17 + 1) + 8 * v10);
    v12 = [dictCopy objectForKeyedSubscript:v11];
    v13 = [(PTPCDefaultsManager *)self _valueHasExpectedClass:v11 value:v12];

    if (!v13)
    {
      break;
    }

    if (v8 == ++v10)
    {
      v8 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
      LOBYTE(v13) = 1;
      if (v8)
      {
        goto LABEL_5;
      }

      break;
    }
  }

LABEL_18:

  return v13;
}

- (NSDictionary)configurationDict
{
  defaults = [(PTPCDefaultsManager *)self defaults];
  configurationDictKey = [(PTPCDefaultsManager *)self configurationDictKey];
  v5 = [defaults valueForKey:configurationDictKey];

  return v5;
}

- (void)resetPersistedDefaults
{
  defaults = [(PTPCDefaultsManager *)self defaults];
  configurationDictKey = [(PTPCDefaultsManager *)self configurationDictKey];
  [defaults removeObjectForKey:configurationDictKey];

  v6 = sub_100003420(v5);
  if (os_signpost_enabled(v6))
  {
    defaultsDomain = [(PTPCDefaultsManager *)self defaultsDomain];
    v8 = 138543362;
    v9 = defaultsDomain;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "HardResetSuccess", "Reset of collection configuration for domain %{public}@", &v8, 0xCu);
  }
}

- (PTPCDefaultsManager)initWithDefaultsDomain:(id)domain configurationDictKey:(id)key keyToExpectedClassDict:(id)dict errorOut:(id *)out
{
  domainCopy = domain;
  keyCopy = key;
  dictCopy = dict;
  v14 = [[NSUserDefaults alloc] initWithSuiteName:domainCopy];
  v15 = v14;
  if (!v14)
  {
    if (out)
    {
      domainCopy = [NSString stringWithFormat:@"Unable to read defaults domain: '%@'", domainCopy];
      *out = [NSError passiveTraceError:1 description:domainCopy];
    }

    configurationDict = sub_1000031A4(v14);
    if (os_signpost_enabled(configurationDict))
    {
      *buf = 138543362;
      v28 = domainCopy;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, configurationDict, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CouldNotReadDefaults", "Could not read defaults for domain %{public}@", buf, 0xCu);
    }

    goto LABEL_17;
  }

  v26.receiver = self;
  v26.super_class = PTPCDefaultsManager;
  v16 = [(PTPCDefaultsManager *)&v26 init];
  self = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_defaults, v15);
    objc_storeStrong(&self->_defaultsDomain, domain);
    objc_storeStrong(&self->_configurationDictKey, key);
    objc_storeStrong(&self->_keyToExpectedClass, dict);
    configurationDict = [(PTPCDefaultsManager *)self configurationDict];
    v18 = [(PTPCDefaultsManager *)self _validateInstrumentationConfigDict:configurationDict];
    if (v18)
    {
      v19 = sub_100003420(v18);
      if (os_signpost_enabled(v19))
      {
        v20 = [configurationDict description];
        *buf = 138543362;
        v28 = v20;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InitializedDefaultsManager", "Initialized with current config:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_7;
    }

    if (out)
    {
      domainCopy2 = [NSString stringWithFormat:@"Unable to read defaults domain: '%@'", domainCopy];
      *out = [NSError passiveTraceError:1 description:domainCopy2];
    }

    v24 = sub_1000031A4(v18);
    if (os_signpost_enabled(v24))
    {
      *buf = 138543362;
      v28 = domainCopy;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MalformedDefaults", "Could not read defaults for domain %{public}@", buf, 0xCu);
    }

LABEL_17:
    selfCopy = 0;
    goto LABEL_18;
  }

LABEL_7:
  self = self;
  selfCopy = self;
LABEL_18:

  return selfCopy;
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  configurationDict = [(PTPCDefaultsManager *)self configurationDict];
  if (![(PTPCDefaultsManager *)self _validateInstrumentationConfigDict:configurationDict])
  {
    v6 = sub_1000031A4([(PTPCDefaultsManager *)self resetPersistedDefaults]);
    if (os_signpost_enabled(v6))
    {
      LOWORD(v10) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClearingStateDueToInvalidDict", "Encountered invalid persisted configuration. Resetting.", &v10, 2u);
    }

    configurationDict = &__NSDictionary0__struct;
  }

  v7 = [configurationDict objectForKeyedSubscript:keyCopy];
  v8 = sub_100003420(v7);
  if (os_signpost_enabled(v8))
  {
    v10 = 138543618;
    v11 = keyCopy;
    v12 = 2114;
    v13 = v7;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ValueForKey", "Fetched key-value pair: '%{public}@' -> '%{public}@'", &v10, 0x16u);
  }

  return v7;
}

- (id)setObjectForKey:(id)key objectValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v8 = [(PTPCDefaultsManager *)self _valueHasExpectedClass:keyCopy value:valueCopy];
  if (v8)
  {
    configurationDict = [(PTPCDefaultsManager *)self configurationDict];
    if (configurationDict)
    {
      v10 = configurationDict;
    }

    else
    {
      v10 = &__NSDictionary0__struct;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v12 = sub_1000031A4(isKindOfClass);
      if (os_signpost_enabled(v12))
      {
        configurationDictKey = [(PTPCDefaultsManager *)self configurationDictKey];
        v24 = 138543362;
        v25 = configurationDictKey;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfigNotDict", "Object for key '%{public}@' was unexpected class. Clearing and starting over.", &v24, 0xCu);
      }

      v10 = &__NSDictionary0__struct;
    }

    v14 = [v10 mutableCopy];
    v15 = v14;
    if (valueCopy)
    {
      [v14 setObject:valueCopy forKeyedSubscript:keyCopy];
    }

    else
    {
      [v14 removeObjectForKey:keyCopy];
    }

    v18 = [v15 count];
    defaults = [(PTPCDefaultsManager *)self defaults];
    configurationDictKey2 = [(PTPCDefaultsManager *)self configurationDictKey];
    if (v18)
    {
      [defaults setValue:v15 forKey:configurationDictKey2];
    }

    else
    {
      [defaults removeObjectForKey:configurationDictKey2];
    }

    v22 = sub_100003420(v21);
    if (os_signpost_enabled(v22))
    {
      v24 = 138543618;
      v25 = keyCopy;
      v26 = 2114;
      v27 = valueCopy;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SetKeyValue", "Set key-value pair: '%{public}@' -> '%{public}@'", &v24, 0x16u);
    }

    v17 = 0;
  }

  else
  {
    v16 = sub_1000031A4(v8);
    if (os_signpost_enabled(v16))
    {
      v24 = 138543618;
      v25 = keyCopy;
      v26 = 2114;
      v27 = valueCopy;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidKeyValueSetting", "Attempted to set invalid key-value pair: '%{public}@' -> '%{public}@'", &v24, 0x16u);
    }

    v17 = [NSError passiveTraceError:1 description:@"Attempted to set invalid value for key"];
  }

  return v17;
}

@end