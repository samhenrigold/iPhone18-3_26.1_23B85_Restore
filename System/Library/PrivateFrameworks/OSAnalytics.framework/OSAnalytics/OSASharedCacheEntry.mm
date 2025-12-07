@interface OSASharedCacheEntry
- (void)setSharedCacheInfo:(dyld_shared_cache_loadinfo_v2 *)info;
@end

@implementation OSASharedCacheEntry

- (void)setSharedCacheInfo:(dyld_shared_cache_loadinfo_v2 *)info
{
  v6 = *MEMORY[0x1E69E9840];
  memset(v5, 0, sizeof(v5));
  uuid_unparse(info->sharedCacheUUID, v5);
  self->_sharedCacheID = info->sharedCacheID;
  self->_sharedCacheSlide = info->sharedCacheSlide;
  self->_sharedCacheUnreliableSlidBaseAddress = info->sharedCacheUnreliableSlidBaseAddress;
  self->_sharedCacheUuid = v5;
  self->_original = info;
  self->_isDefaultSharedCache = info->sharedCacheFlags == 1;
}

@end