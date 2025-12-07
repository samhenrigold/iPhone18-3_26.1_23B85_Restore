@interface RTRoutineManagerRegistrantPeopleDiscovery
- (RTRoutineManagerRegistrantPeopleDiscovery)initWithConfigurationIdentifier:(id)identifier;
- (id)startMonitoringForPeopleDiscovery:(id)discovery;
- (id)stopMonitoringForPeopleDiscovery;
- (void)onDensityUpdate:(id)update error:(id)error;
@end

@implementation RTRoutineManagerRegistrantPeopleDiscovery

- (RTRoutineManagerRegistrantPeopleDiscovery)initWithConfigurationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = RTRoutineManagerRegistrantPeopleDiscovery;
  v5 = [(RTRoutineManagerRegistrantPeopleDiscovery *)&v11 init];
  v6 = v5;
  if (v5)
  {
    densityHandler = v5->_densityHandler;
    v5->_densityHandler = 0;

    v8 = [identifierCopy copy];
    configurationIdentifier = v6->_configurationIdentifier;
    v6->_configurationIdentifier = v8;
  }

  return v6;
}

- (id)startMonitoringForPeopleDiscovery:(id)discovery
{
  v21[1] = *MEMORY[0x1E69E9840];
  discoveryCopy = discovery;
  v6 = discoveryCopy;
  if (discoveryCopy)
  {
    densityCallbackConfiguration = [discoveryCopy densityCallbackConfiguration];

    if (!densityCallbackConfiguration)
    {
LABEL_5:
      objc_storeStrong(&self->_configuration, discovery);
      v12 = 0;
      self->_registered = 1;
      goto LABEL_8;
    }

    densityCallbackConfiguration2 = [v6 densityCallbackConfiguration];
    densityUpdateHandler = [densityCallbackConfiguration2 densityUpdateHandler];

    if (densityUpdateHandler)
    {
      densityUpdateHandler2 = [densityCallbackConfiguration2 densityUpdateHandler];
      densityHandler = self->_densityHandler;
      self->_densityHandler = densityUpdateHandler2;

      goto LABEL_5;
    }

    v15 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A578];
    v19 = @"Invalid parameter value for density update handler.  Requires non-nil value.";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v12 = [v15 errorWithDomain:@"RTErrorDomain" code:7 userInfo:v16];
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A578];
    v21[0] = @"Invalid configuration to register for people discovery service.  Requires non-nil value.";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v12 = [v13 errorWithDomain:@"RTErrorDomain" code:7 userInfo:v14];
  }

LABEL_8:

  return v12;
}

- (id)stopMonitoringForPeopleDiscovery
{
  self->_registered = 0;
  densityHandler = self->_densityHandler;
  self->_densityHandler = 0;

  configuration = self->_configuration;
  self->_configuration = 0;

  return 0;
}

- (void)onDensityUpdate:(id)update error:(id)error
{
  v25 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  errorCopy = error;
  v9 = self->_configuration;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromSelector(a2);
      if (self->_registered)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v13 = [(RTPeopleDiscoveryServiceConfiguration *)v9 description];
      v15 = 138413314;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v21 = 2048;
      v22 = [updateCopy count];
      v23 = 2112;
      v24 = errorCopy;
      _os_log_impl(&dword_1BF1C4000, v10, OS_LOG_TYPE_INFO, "%@, registered, %@, monitoredConfig, %@, densityBundles count, %lu, error, %@", &v15, 0x34u);
    }
  }

  if (self->_registered)
  {
    densityHandler = self->_densityHandler;
    if (densityHandler)
    {
      densityHandler[2](densityHandler, updateCopy, errorCopy);
    }
  }
}

@end