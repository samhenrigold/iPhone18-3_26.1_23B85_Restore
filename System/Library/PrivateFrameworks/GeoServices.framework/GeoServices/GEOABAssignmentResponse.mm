@interface GEOABAssignmentResponse
- (GEOABClientConfig)clientConfig;
- (GEOABSecondPartyPlaceRequestClientMetaData)mapsAbClientMetadata;
- (GEOABSecondPartyPlaceRequestClientMetaData)parsecClientMetadata;
- (void)_readClientConfig;
- (void)_readMapsAbClientMetadata;
- (void)_readParsecClientMetadata;
@end

@implementation GEOABAssignmentResponse

- (GEOABClientConfig)clientConfig
{
  [(GEOABAssignmentResponse *)self _readClientConfig];
  clientConfig = self->_clientConfig;

  return clientConfig;
}

- (void)_readClientConfig
{
  if (self)
  {
    os_unfair_lock_lock((self + 120));
    if ((*(self + 128) & 0x80) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOABAssignmentResponseReadSpecified(self, *(self + 8), &_readClientConfig_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 120));
  }
}

- (GEOABSecondPartyPlaceRequestClientMetaData)mapsAbClientMetadata
{
  [(GEOABAssignmentResponse *)self _readMapsAbClientMetadata];
  mapsAbClientMetadata = self->_mapsAbClientMetadata;

  return mapsAbClientMetadata;
}

- (void)_readMapsAbClientMetadata
{
  if (self)
  {
    os_unfair_lock_lock((self + 120));
    if ((*(self + 128) & 0x100) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOABAssignmentResponseReadSpecified(self, *(self + 8), &_readMapsAbClientMetadata_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 120));
  }
}

- (GEOABSecondPartyPlaceRequestClientMetaData)parsecClientMetadata
{
  [(GEOABAssignmentResponse *)self _readParsecClientMetadata];
  parsecClientMetadata = self->_parsecClientMetadata;

  return parsecClientMetadata;
}

- (void)_readParsecClientMetadata
{
  if (self)
  {
    os_unfair_lock_lock((self + 120));
    if ((*(self + 128) & 0x200) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOABAssignmentResponseReadSpecified(self, *(self + 8), &_readParsecClientMetadata_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 120));
  }
}

@end