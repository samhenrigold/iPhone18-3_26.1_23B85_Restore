@interface GEOABSecondPartyPlaceRequestClientMetaData
- (GEOABSecondPartyPlaceRequestClientMetaData)init;
- (GEOPDABClientDatasetMetadata)clientDatasetMetadata;
- (unint64_t)hash;
- (void)_readClientDatasetMetadata;
@end

@implementation GEOABSecondPartyPlaceRequestClientMetaData

- (GEOPDABClientDatasetMetadata)clientDatasetMetadata
{
  [(GEOABSecondPartyPlaceRequestClientMetaData *)self _readClientDatasetMetadata];
  clientDatasetMetadata = self->_clientDatasetMetadata;

  return clientDatasetMetadata;
}

- (void)_readClientDatasetMetadata
{
  if (self)
  {
    os_unfair_lock_lock((self + 56));
    if ((*(self + 60) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOABSecondPartyPlaceRequestClientMetaDataReadSpecified(self, *(self + 8), &_readClientDatasetMetadata_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 56));
  }
}

- (unint64_t)hash
{
  [(GEOABSecondPartyPlaceRequestClientMetaData *)self readAll:1];
  v3 = [(NSMutableArray *)self->_serverAbAssignments hash];
  v4 = [(NSMutableArray *)self->_clientConfigs hash]^ v3;
  return v4 ^ [(GEOPDABClientDatasetMetadata *)self->_clientDatasetMetadata hash];
}

- (GEOABSecondPartyPlaceRequestClientMetaData)init
{
  v6.receiver = self;
  v6.super_class = GEOABSecondPartyPlaceRequestClientMetaData;
  v2 = [(GEOABSecondPartyPlaceRequestClientMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

@end