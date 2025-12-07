@interface GEOLogMsgStateExperiments
- (GEOLogMsgStateExperiments)init;
- (GEOPDDatasetABStatus)datasetAbStatus;
- (void)_readDatasetAbStatus;
@end

@implementation GEOLogMsgStateExperiments

- (GEOPDDatasetABStatus)datasetAbStatus
{
  [(GEOLogMsgStateExperiments *)self _readDatasetAbStatus];
  datasetAbStatus = self->_datasetAbStatus;

  return datasetAbStatus;
}

- (void)_readDatasetAbStatus
{
  if (self)
  {
    os_unfair_lock_lock((self + 64));
    if ((*(self + 68) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOLogMsgStateExperimentsReadSpecified(self, *(self + 8), &_readDatasetAbStatus_tags_190684);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 64));
  }
}

- (GEOLogMsgStateExperiments)init
{
  v6.receiver = self;
  v6.super_class = GEOLogMsgStateExperiments;
  v2 = [(GEOLogMsgStateExperiments *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

@end