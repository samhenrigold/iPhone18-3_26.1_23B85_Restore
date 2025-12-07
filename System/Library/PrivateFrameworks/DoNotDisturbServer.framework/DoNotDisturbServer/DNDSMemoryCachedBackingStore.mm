@interface DNDSMemoryCachedBackingStore
- (DNDSCachedBackingStoreDelegate)delegate;
- (DNDSMemoryCachedBackingStore)initWithUnderlyingBackingStore:(id)store;
- (id)backingStore:(id)store migrateDictionaryRepresentation:(id)representation fromVersionNumber:(unint64_t)number toVersionNumber:(unint64_t)versionNumber;
- (id)readRecordWithError:(id *)error;
- (unint64_t)writeRecord:(id)record writePartition:(BOOL)partition error:(id *)error;
- (void)purgeCache;
@end

@implementation DNDSMemoryCachedBackingStore

- (DNDSMemoryCachedBackingStore)initWithUnderlyingBackingStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = DNDSMemoryCachedBackingStore;
  v6 = [(DNDSMemoryCachedBackingStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingBackingStore, store);
    [storeCopy setDelegate:v7];
    v7->_lock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (id)readRecordWithError:(id *)error
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_cache)
  {
    v5 = [(DNDSBackingStore *)self->_underlyingBackingStore readRecordWithError:error];
    cache = self->_cache;
    self->_cache = v5;
  }

  os_unfair_lock_unlock(&self->_lock);
  v7 = self->_cache;

  return v7;
}

- (unint64_t)writeRecord:(id)record writePartition:(BOOL)partition error:(id *)error
{
  partitionCopy = partition;
  recordCopy = record;
  os_unfair_lock_lock(&self->_lock);
  if (([(DNDSBackingStoreRecord *)self->_cache isEqual:recordCopy]& 1) != 0)
  {
    v9 = 1;
  }

  else
  {
    v10 = [recordCopy copyWithZone:0];
    cache = self->_cache;
    self->_cache = v10;

    v9 = [(DNDSBackingStore *)self->_underlyingBackingStore writeRecord:recordCopy writePartition:partitionCopy error:error];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (void)purgeCache
{
  os_unfair_lock_lock(&self->_lock);
  cache = self->_cache;
  self->_cache = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)backingStore:(id)store migrateDictionaryRepresentation:(id)representation fromVersionNumber:(unint64_t)number toVersionNumber:(unint64_t)versionNumber
{
  representationCopy = representation;
  storeCopy = store;
  delegate = [(DNDSMemoryCachedBackingStore *)self delegate];
  v13 = [delegate backingStore:storeCopy migrateDictionaryRepresentation:representationCopy fromVersionNumber:number toVersionNumber:versionNumber];

  return v13;
}

- (DNDSCachedBackingStoreDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end