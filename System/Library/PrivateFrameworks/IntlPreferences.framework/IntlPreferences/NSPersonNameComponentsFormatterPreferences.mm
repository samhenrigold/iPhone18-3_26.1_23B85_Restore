@interface NSPersonNameComponentsFormatterPreferences
+ (id)infoClassFromPreferencesSource:(unint64_t)source;
+ (id)mappedPreferencesForPreferences:(id)preferences from:(unint64_t)from to:(unint64_t)to;
+ (void)_postPreferencesChangedNotification;
+ (void)_setPreference:(id)preference toValue:(int64_t)value usingExistingGetter:(SEL)getter;
+ (void)_syncronizeGizmoDefaultWithKey:(id)key value:(int64_t)value;
@end

@implementation NSPersonNameComponentsFormatterPreferences

+ (void)_setPreference:(id)preference toValue:(int64_t)value usingExistingGetter:(SEL)getter
{
  key = preference;
  v8 = [MEMORY[0x277CCAC08] performSelector:getter];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:value];
  CFPreferencesSetValue(key, v9, *MEMORY[0x277CBF008], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (v8 != value)
  {
    [self _syncronizeGizmoDefaultWithKey:key value:value];
    [self _postPreferencesChangedNotification];
  }
}

+ (void)_postPreferencesChangedNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"NSPersonNamePreferencesDidChangeNotification", 0, 0, 1u);
}

+ (void)_syncronizeGizmoDefaultWithKey:(id)key value:(int64_t)value
{
  v35[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (getNRPairedDeviceRegistryClass() && getNPSManagerClass())
  {
    sharedInstance = [getNRPairedDeviceRegistryClass() sharedInstance];
    getActivePairedDevice = [sharedInstance getActivePairedDevice];

    v8 = getActivePairedDevice;
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v9 = getNRWatchOSVersionForRemoteDeviceSymbolLoc_ptr;
    v33 = getNRWatchOSVersionForRemoteDeviceSymbolLoc_ptr;
    if (!getNRWatchOSVersionForRemoteDeviceSymbolLoc_ptr)
    {
      v25 = MEMORY[0x277D85DD0];
      v26 = 3221225472;
      v27 = __getNRWatchOSVersionForRemoteDeviceSymbolLoc_block_invoke;
      v28 = &unk_2787A8FA0;
      v29 = &v30;
      v10 = NanoRegistryLibrary();
      v31[3] = dlsym(v10, "NRWatchOSVersionForRemoteDevice");
      getNRWatchOSVersionForRemoteDeviceSymbolLoc_ptr = *(v29[1] + 24);
      v9 = v31[3];
    }

    _Block_object_dispose(&v30, 8);
    if (v9)
    {
      v11 = v9(v8);

      v12 = (v11 & 0xFFFE0000) != 0;
      v13 = objc_alloc_init(getNPSManagerClass());
      if (v12)
      {
        v14 = [MEMORY[0x277CBEB98] setWithObject:keyCopy];
        [v13 synchronizeUserDefaultsDomain:@".GlobalPreferences" keys:v14];
        goto LABEL_13;
      }

      v15 = +[IPiOSABNamePreferenceInfoProvider domain];
      v30 = 0;
      v31 = &v30;
      v32 = 0x2020000000;
      v16 = getPSIsNanoMirroringDomainSymbolLoc_ptr;
      v33 = getPSIsNanoMirroringDomainSymbolLoc_ptr;
      if (!getPSIsNanoMirroringDomainSymbolLoc_ptr)
      {
        v25 = MEMORY[0x277D85DD0];
        v26 = 3221225472;
        v27 = __getPSIsNanoMirroringDomainSymbolLoc_block_invoke;
        v28 = &unk_2787A8FA0;
        v29 = &v30;
        __getPSIsNanoMirroringDomainSymbolLoc_block_invoke(&v25);
        v16 = v31[3];
      }

      _Block_object_dispose(&v30, 8);
      if (v16)
      {
        v17 = v16(v15);

        if (!v17)
        {
LABEL_14:

          goto LABEL_15;
        }

        v34 = keyCopy;
        v18 = [MEMORY[0x277CCABB0] numberWithInteger:value];
        v35[0] = v18;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
        v14 = [NSPersonNameComponentsFormatterPreferences mappedPreferencesForPreferences:v19 from:0 to:2];

        v20 = +[IPiOSABNamePreferenceInfoProvider domain];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __83__NSPersonNameComponentsFormatterPreferences__syncronizeGizmoDefaultWithKey_value___block_invoke;
        v22[3] = &unk_2787A9108;
        v23 = v20;
        v24 = v13;
        v21 = v20;
        [v14 enumerateKeysAndObjectsUsingBlock:v22];

LABEL_13:
        goto LABEL_14;
      }

      +[NSPersonNameComponentsFormatterPreferences _syncronizeGizmoDefaultWithKey:value:];
    }

    else
    {
      +[NSPersonNameComponentsFormatterPreferences _syncronizeGizmoDefaultWithKey:value:];
    }

    __break(1u);
  }

LABEL_15:
}

void __83__NSPersonNameComponentsFormatterPreferences__syncronizeGizmoDefaultWithKey_value___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v7 = getNPSDomainAccessorClass_softClass;
  v19 = getNPSDomainAccessorClass_softClass;
  if (!getNPSDomainAccessorClass_softClass)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __getNPSDomainAccessorClass_block_invoke;
    v15[3] = &unk_2787A8FA0;
    v15[4] = &v16;
    __getNPSDomainAccessorClass_block_invoke(v15);
    v7 = v17[3];
  }

  v8 = v7;
  _Block_object_dispose(&v16, 8);
  v9 = [[v7 alloc] initWithDomain:*(a1 + 32)];
  [v9 setInteger:objc_msgSend(v6 forKey:{"integerValue"), v5}];
  v10 = [v9 synchronize];
  v13 = a1 + 32;
  v11 = *(a1 + 32);
  v12 = *(v13 + 8);
  v14 = [MEMORY[0x277CBEB98] setWithObject:v5];
  [v12 synchronizeNanoDomain:v11 keys:v14];
}

+ (id)mappedPreferencesForPreferences:(id)preferences from:(unint64_t)from to:(unint64_t)to
{
  v8 = MEMORY[0x277CBEB38];
  preferencesCopy = preferences;
  dictionary = [v8 dictionary];
  v11 = [self infoClassFromPreferencesSource:from];
  v12 = [self infoClassFromPreferencesSource:to];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __86__NSPersonNameComponentsFormatterPreferences_mappedPreferencesForPreferences_from_to___block_invoke;
  v19[3] = &unk_2787A9130;
  v20 = v11;
  v21 = v12;
  v13 = dictionary;
  v22 = v13;
  v14 = v12;
  v15 = v11;
  [preferencesCopy enumerateKeysAndObjectsUsingBlock:v19];

  v16 = v22;
  v17 = v13;

  return v13;
}

void __86__NSPersonNameComponentsFormatterPreferences_mappedPreferencesForPreferences_from_to___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a3;
  v7 = a2;
  v8 = [v5 nativeKeyNameToCanonicalKeyName];
  v15 = [v8 objectForKeyedSubscript:v7];

  v9 = [a1[5] canonicalNameToNativeKeyName];
  v10 = [v9 objectForKeyedSubscript:v15];

  v11 = [a1[4] valueToValueIdentifierMapFromCanonicalKey:v15];
  v12 = [v11 objectForKeyedSubscript:v6];

  v13 = [a1[5] valueIdentifierToValueMapFromCanonicalKey:v15];
  v14 = [v13 objectForKeyedSubscript:v12];

  if (v10 && v14)
  {
    [a1[6] setObject:v14 forKeyedSubscript:v10];
  }
}

+ (id)infoClassFromPreferencesSource:(unint64_t)source
{
  if (source > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_opt_class();
  }

  return v4;
}

+ (uint64_t)_syncronizeGizmoDefaultWithKey:value:.cold.1()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  return __getNRPairedDeviceRegistryClass_block_invoke_cold_1();
}

@end