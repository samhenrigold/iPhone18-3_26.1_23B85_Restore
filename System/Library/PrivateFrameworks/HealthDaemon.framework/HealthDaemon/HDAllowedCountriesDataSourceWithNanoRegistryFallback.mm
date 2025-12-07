@interface HDAllowedCountriesDataSourceWithNanoRegistryFallback
- (HDAllowedCountriesDataSourceWithNanoRegistryFallback)initWithDaemon:(id)daemon allowedCountriesDataSource:(id)source availableRegionsDevicePropertyName:(id)name loggingCategory:(id)category shouldReturnLocalAvailabilityForNilDeviceRegions:(BOOL)regions;
- (HKCountrySet)activeRemoteCountrySet;
- (id)remoteCountrySetForDevice:(id)device;
- (void)_nanoRegistryCountryListForDevice:(void *)device;
@end

@implementation HDAllowedCountriesDataSourceWithNanoRegistryFallback

- (HDAllowedCountriesDataSourceWithNanoRegistryFallback)initWithDaemon:(id)daemon allowedCountriesDataSource:(id)source availableRegionsDevicePropertyName:(id)name loggingCategory:(id)category shouldReturnLocalAvailabilityForNilDeviceRegions:(BOOL)regions
{
  daemonCopy = daemon;
  sourceCopy = source;
  nameCopy = name;
  categoryCopy = category;
  v21.receiver = self;
  v21.super_class = HDAllowedCountriesDataSourceWithNanoRegistryFallback;
  v16 = [(HDAllowedCountriesDataSourceWithNanoRegistryFallback *)&v21 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_allowedCountriesDataSource, source);
    nanoRegistryDeviceCapabilityProvider = [daemonCopy nanoRegistryDeviceCapabilityProvider];
    pairedDeviceCapabilityProvider = v17->_pairedDeviceCapabilityProvider;
    v17->_pairedDeviceCapabilityProvider = nanoRegistryDeviceCapabilityProvider;

    objc_storeStrong(&v17->_devicePropertyName, name);
    objc_storeStrong(&v17->_loggingCategory, category);
    v17->_shouldReturnLocalAvailabilityForNilDeviceRegions = regions;
  }

  return v17;
}

- (HKCountrySet)activeRemoteCountrySet
{
  v11 = *MEMORY[0x277D85DE8];
  activeRemoteCountrySet = [(HDAllowedCountriesDataSource *)self->_allowedCountriesDataSource activeRemoteCountrySet];
  v4 = activeRemoteCountrySet;
  if (activeRemoteCountrySet)
  {
    v5 = activeRemoteCountrySet;
  }

  else
  {
    activePairedDevice = [(HDPairedDeviceCapabilityProviding *)self->_pairedDeviceCapabilityProvider activePairedDevice];
    if (activePairedDevice)
    {
      v5 = [(HDAllowedCountriesDataSourceWithNanoRegistryFallback *)self _nanoRegistryCountryListForDevice:activePairedDevice];
    }

    else
    {
      _HKInitializeLogging();
      loggingCategory = self->_loggingCategory;
      if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138543362;
        selfCopy = self;
        _os_log_impl(&dword_228986000, loggingCategory, OS_LOG_TYPE_DEFAULT, "[%{public}@] No active paired device found", &v9, 0xCu);
      }

      v5 = 0;
    }
  }

  return v5;
}

- (void)_nanoRegistryCountryListForDevice:(void *)device
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (device)
  {
    v5 = [v3 valueForProperty:device[3]];
    if (v5)
    {
      localCountrySet = [objc_alloc(MEMORY[0x277CCD260]) initWithDictionaryRepresentation:v5 provenance:2];
    }

    else
    {
      _HKInitializeLogging();
      v7 = device[4];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543618;
        deviceCopy2 = device;
        v12 = 2114;
        v13 = v4;
        _os_log_impl(&dword_228986000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Nil available regions found for paired device %{public}@", &v10, 0x16u);
      }

      if (*(device + 40) != 1)
      {
        device = 0;
        goto LABEL_11;
      }

      _HKInitializeLogging();
      v8 = device[4];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543618;
        deviceCopy2 = device;
        v12 = 2114;
        v13 = v4;
        _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Returning local device availability for paired device %{public}@", &v10, 0x16u);
      }

      localCountrySet = [device localCountrySet];
    }

    device = localCountrySet;
LABEL_11:
  }

  return device;
}

- (id)remoteCountrySetForDevice:(id)device
{
  deviceCopy = device;
  v5 = [(HDAllowedCountriesDataSource *)self->_allowedCountriesDataSource remoteCountrySetForDevice:deviceCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(HDAllowedCountriesDataSourceWithNanoRegistryFallback *)self _nanoRegistryCountryListForDevice:deviceCopy];
  }

  v8 = v7;

  return v8;
}

@end