@interface GEOClientNetworkMetrics
- (GEOClientNetworkMetrics)init;
- (NSMutableArray)transactionMetrics;
- (void)_readTransactionMetrics;
@end

@implementation GEOClientNetworkMetrics

- (GEOClientNetworkMetrics)init
{
  v6.receiver = self;
  v6.super_class = GEOClientNetworkMetrics;
  v2 = [(GEOClientNetworkMetrics *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

- (void)_readTransactionMetrics
{
  if (self)
  {
    os_unfair_lock_lock((self + 64));
    if ((*(self + 88) & 0x200) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOClientNetworkMetricsReadSpecified(self, *(self + 8), &_readTransactionMetrics_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 64));
  }
}

- (NSMutableArray)transactionMetrics
{
  [(GEOClientNetworkMetrics *)self _readTransactionMetrics];
  transactionMetrics = self->_transactionMetrics;

  return transactionMetrics;
}

@end