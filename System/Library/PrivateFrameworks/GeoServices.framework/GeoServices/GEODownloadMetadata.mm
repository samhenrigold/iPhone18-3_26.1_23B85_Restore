@interface GEODownloadMetadata
- (GEODownloadMetadata)init;
- (NSString)etag;
- (NSString)url;
- (void)_readEtag;
- (void)_readUrl;
@end

@implementation GEODownloadMetadata

- (NSString)url
{
  [(GEODownloadMetadata *)self _readUrl];
  url = self->_url;

  return url;
}

- (void)_readUrl
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
        GEODownloadMetadataReadSpecified(self, *(self + 8), &_readUrl_tags_44486);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 64));
  }
}

- (void)_readEtag
{
  if (self)
  {
    os_unfair_lock_lock((self + 64));
    if ((*(self + 68) & 4) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEODownloadMetadataReadSpecified(self, *(self + 8), &_readEtag_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 64));
  }
}

- (NSString)etag
{
  [(GEODownloadMetadata *)self _readEtag];
  etag = self->_etag;

  return etag;
}

- (GEODownloadMetadata)init
{
  v6.receiver = self;
  v6.super_class = GEODownloadMetadata;
  v2 = [(GEODownloadMetadata *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_readerLock._os_unfair_lock_opaque = 0;
    v4 = v2;
  }

  return v3;
}

@end