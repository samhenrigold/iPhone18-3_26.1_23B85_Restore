@interface GEOResourceManifestDownload
- (GEODownloadMetadata)metadata;
- (GEOResources)osImageResources;
- (GEOResources)resources;
- (void)_readOsImageResources;
- (void)_readResources;
@end

@implementation GEOResourceManifestDownload

- (void)_readResources
{
  if (self)
  {
    os_unfair_lock_lock((self + 56));
    if ((*(self + 60) & 8) == 0)
    {
      v2 = *(self + 8);
      if (v2)
      {
        v3 = v2;
        objc_sync_enter(v3);
        GEOResourceManifestDownloadReadSpecified(self, *(self + 8), &_readResources_tags_1380);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 56));
  }
}

- (GEODownloadMetadata)metadata
{
  if (self)
  {
    os_unfair_lock_lock(&self->_readerLock);
    if ((*&self->_flags & 2) == 0)
    {
      reader = self->_reader;
      if (reader)
      {
        v4 = reader;
        objc_sync_enter(v4);
        GEOResourceManifestDownloadReadSpecified(self, self->_reader, &_readMetadata_tags_44521);
        objc_sync_exit(v4);
      }
    }

    os_unfair_lock_unlock(&self->_readerLock);
  }

  metadata = self->_metadata;

  return metadata;
}

- (void)_readOsImageResources
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
        GEOResourceManifestDownloadReadSpecified(self, *(self + 8), &_readOsImageResources_tags);
        objc_sync_exit(v3);
      }
    }

    os_unfair_lock_unlock((self + 56));
  }
}

- (GEOResources)osImageResources
{
  [(GEOResourceManifestDownload *)self _readOsImageResources];
  osImageResources = self->_osImageResources;

  return osImageResources;
}

- (GEOResources)resources
{
  [(GEOResourceManifestDownload *)self _readResources];
  resources = self->_resources;

  return resources;
}

@end