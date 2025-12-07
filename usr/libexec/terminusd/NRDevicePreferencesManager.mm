@interface NRDevicePreferencesManager
- (id)description;
- (void)dealloc;
@end

@implementation NRDevicePreferencesManager

- (id)description
{
  v3 = [NSString alloc];
  if (self)
  {
    v4 = self->_devicePreferencesTypeLink;
    policyTrafficClassifiersDict = self->_policyTrafficClassifiersDict;
  }

  else
  {
    v4 = 0;
    policyTrafficClassifiersDict = 0;
  }

  policyTrafficClassifiersDict = [v3 initWithFormat:@"Active Link Preferences: %@, Policy Traffic Classifiers: %@", v4, policyTrafficClassifiersDict];

  return policyTrafficClassifiersDict;
}

- (void)dealloc
{
  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    if (self)
    {
      nrUUID = self->_nrUUID;
    }

    else
    {
      nrUUID = 0;
    }

    v6 = nrUUID;
    v7 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v7, 1, "%s%.30s:%-4d Dealloc: %@", ", "[NRDevicePreferencesManager dealloc]"", 64, self);
  }

  v8.receiver = self;
  v8.super_class = NRDevicePreferencesManager;
  [(NRDevicePreferencesManager *)&v8 dealloc];
}

@end