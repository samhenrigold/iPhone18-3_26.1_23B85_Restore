@interface GEOExperimentConfiguration
+ (id)sharedConfiguration;
- (GEOABAssignmentResponse)experimentsInfo;
- (GEOExperimentConfiguration)init;
- (id)_mapsAbClientMetadata;
- (id)_parsecClientMetadata;
@end

@implementation GEOExperimentConfiguration

+ (id)sharedConfiguration
{
  if (sharedConfiguration_once_136550 != -1)
  {
    dispatch_once(&sharedConfiguration_once_136550, &__block_literal_global_136551);
  }

  v3 = _singleton_136552;

  return v3;
}

void __49__GEOExperimentConfiguration_sharedConfiguration__block_invoke()
{
  v0 = objc_alloc_init(GEOExperimentConfiguration);
  v1 = _singleton_136552;
  _singleton_136552 = v0;
}

- (GEOExperimentConfiguration)init
{
  v13.receiver = self;
  v13.super_class = GEOExperimentConfiguration;
  v2 = [(GEOExperimentConfiguration *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_experimentsInfoLock._os_unfair_lock_opaque = 0;
    v4 = [[GEOObserverHashTable alloc] initWithProtocol:&unk_1EFA28458 queue:0];
    experimentObservers = v3->_experimentObservers;
    v3->_experimentObservers = v4;

    v6 = _sServerProxyClass_136543;
    if (!_sServerProxyClass_136543)
    {
      v6 = objc_opt_class();
    }

    v7 = [[v6 alloc] initWithDelegate:v3];
    serverProxy = v3->_serverProxy;
    v3->_serverProxy = v7;

    os_unfair_lock_lock_with_options();
    experimentsInfo = [(GEOExperimentServerProxy *)v3->_serverProxy experimentsInfo];
    experimentsInfo = v3->_experimentsInfo;
    v3->_experimentsInfo = experimentsInfo;

    os_unfair_lock_unlock(&v3->_experimentsInfoLock);
    v11 = v3;
  }

  return v3;
}

- (GEOABAssignmentResponse)experimentsInfo
{
  os_unfair_lock_lock_with_options();
  v3 = self->_experimentsInfo;
  os_unfair_lock_unlock(&self->_experimentsInfoLock);

  return v3;
}

- (id)_mapsAbClientMetadata
{
  if (GEOConfigGetBOOL(247, &GeoServicesConfig_ShouldPassABClientMetadata_Metadata))
  {
    os_unfair_lock_lock_with_options();
    mapsAbClientMetadata = [(GEOABAssignmentResponse *)self->_experimentsInfo mapsAbClientMetadata];
    os_unfair_lock_unlock(&self->_experimentsInfoLock);
  }

  else
  {
    mapsAbClientMetadata = 0;
  }

  return mapsAbClientMetadata;
}

- (id)_parsecClientMetadata
{
  os_unfair_lock_lock_with_options();
  parsecClientMetadata = [(GEOABAssignmentResponse *)self->_experimentsInfo parsecClientMetadata];
  os_unfair_lock_unlock(&self->_experimentsInfoLock);

  return parsecClientMetadata;
}

@end