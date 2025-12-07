@interface IDSDevice(DNDServer)
- (BOOL)_dnds_isIOS14EraOS;
- (BOOL)_dnds_supportsSilenceLists;
- (uint64_t)_dnds_assertionSyncProtocolVersion;
- (uint64_t)_dnds_configurationSyncProtocolVersion;
- (uint64_t)_dnds_minorBuildVersion;
- (uint64_t)_dnds_pairedDeviceClass;
@end

@implementation IDSDevice(DNDServer)

- (uint64_t)_dnds_pairedDeviceClass
{
  deviceType = [self deviceType];
  if ((deviceType - 1) > 8)
  {
    return 0;
  }

  else
  {
    return qword_2491FFB90[deviceType - 1];
  }
}

- (uint64_t)_dnds_assertionSyncProtocolVersion
{
  v9 = 0uLL;
  v10 = 0;
  objc_msgSend_operatingSystemVersion(self, a2);
  productBuildVersion = [self productBuildVersion];
  _dnds_pairedDeviceClass = [self _dnds_pairedDeviceClass];
  v7 = v9;
  v8 = v10;
  v5 = DNDSAssertionSyncProtocolVersionFromOperatingSystemVersionAndBuildVersion(&v7, productBuildVersion, _dnds_pairedDeviceClass);

  return v5;
}

- (uint64_t)_dnds_configurationSyncProtocolVersion
{
  v9 = 0uLL;
  v10 = 0;
  objc_msgSend_operatingSystemVersion(self, a2);
  productBuildVersion = [self productBuildVersion];
  _dnds_pairedDeviceClass = [self _dnds_pairedDeviceClass];
  v7 = v9;
  v8 = v10;
  v5 = DNDSConfigurationSyncProtocolVersionFromOperatingSystemVersionAndBuildVersion(&v7, productBuildVersion, _dnds_pairedDeviceClass);

  return v5;
}

- (uint64_t)_dnds_minorBuildVersion
{
  productBuildVersion = [self productBuildVersion];
  v2 = DNDSMinorBuildVersionFromBuildVersion(productBuildVersion);

  return v2;
}

- (BOOL)_dnds_isIOS14EraOS
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  objc_msgSend_operatingSystemVersion(self, a2);
  _dnds_pairedDeviceClass = [self _dnds_pairedDeviceClass];
  if (_dnds_pairedDeviceClass == 1)
  {
    if (v5 == 14)
    {
      return 1;
    }
  }

  else
  {
    if (_dnds_pairedDeviceClass != 3)
    {
      return _dnds_pairedDeviceClass == 2 && v5 == 10 && v6 == 18;
    }

    if (v5 == 7)
    {
      return 1;
    }
  }

  return 0;
}

- (BOOL)_dnds_supportsSilenceLists
{
  v7 = 0uLL;
  v8 = 0;
  objc_msgSend_operatingSystemVersion(self, a2);
  _dnds_pairedDeviceClass = [self _dnds_pairedDeviceClass];
  v5 = v7;
  v6 = v8;
  return DNDSsupportsSilenceListsSFromOperatingSystemVersionAndDeviceClass(&v5, _dnds_pairedDeviceClass);
}

@end