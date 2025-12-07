@interface ManagedSettingsObserver
- (ManagedSettingsObserver)init;
- (void)_fetchManagedSettings;
- (void)_managedSettingsChangedWithEvent:(id)event settingsGroup:(id)group;
- (void)_managedSettingsSubcribeForChangesAndEvents;
- (void)dealloc;
@end

@implementation ManagedSettingsObserver

- (ManagedSettingsObserver)init
{
  v11.receiver = self;
  v11.super_class = ManagedSettingsObserver;
  v2 = [(ManagedSettingsObserver *)&v11 init];
  if (v2)
  {
    v3 = _os_feature_enabled_impl();
    if (v3)
    {
      v5 = sub_1005FCECC(v3, v4);
      if (v5)
      {
        v7 = sub_100017F4C(v5, v6);
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 3221225472;
        v9[2] = sub_1004A2334;
        v9[3] = &unk_100ADF820;
        v10 = v2;
        sub_10000CA94(v7, v9);
      }
    }
  }

  return v2;
}

- (void)dealloc
{
  [(ManagedSettingsObserver *)self setAllowTemporaryPairingOfAppleAudioAccessories:0];
  v3.receiver = self;
  v3.super_class = ManagedSettingsObserver;
  [(ManagedSettingsObserver *)&v3 dealloc];
}

- (void)_fetchManagedSettings
{
  v3 = _os_feature_enabled_impl();
  if (v3 && sub_1005FCECC(v3, v4))
  {
    v5 = objc_opt_new();
    audioAccessory = [v5 audioAccessory];
    temporaryPairingConfiguration = [audioAccessory temporaryPairingConfiguration];
    unpairingTime = [temporaryPairingConfiguration unpairingTime];
    hour = [unpairingTime hour];

    if ((hour != 0) != [(ManagedSettingsObserver *)self allowTemporaryPairingOfAppleAudioAccessories])
    {
      [(ManagedSettingsObserver *)self setAllowTemporaryPairingOfAppleAudioAccessories:hour != 0];
      v10 = qword_100BCE8D8;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        allowTemporaryPairingOfAppleAudioAccessories = [(ManagedSettingsObserver *)self allowTemporaryPairingOfAppleAudioAccessories];
        v12 = "FALSE";
        if (allowTemporaryPairingOfAppleAudioAccessories)
        {
          v12 = "TRUE";
        }

        v13 = 136315138;
        v14 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "allowTemporaryPairingOfAppleAudioAccessories set to %s", &v13, 0xCu);
      }
    }
  }
}

- (void)_managedSettingsChangedWithEvent:(id)event settingsGroup:(id)group
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  groupCopy = group;
  v6 = [groupCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    v8 = MOSettingsGroupNameAudioAccessory;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(groupCopy);
        }

        if ([*(*(&v10 + 1) + 8 * v9) isEqualToString:{v8, v10}])
        {
          [(ManagedSettingsObserver *)self _fetchManagedSettings];
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [groupCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_managedSettingsSubcribeForChangesAndEvents
{
  v3 = [NSSet alloc];
  v4 = [v3 initWithObjects:{MOSettingsGroupNameAudioAccessory, 0}];
  [MOSystemEffectiveSettingsStore subscribeForChangesInGroups:v4 eventName:@"com.apple.bluetoothd.effective-settings.changed"];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1004A27CC;
  v5[3] = &unk_100AF88B0;
  v5[4] = self;
  [MOSystemEffectiveSettingsStore startObservingChangesWithHandler:v5];
}

@end