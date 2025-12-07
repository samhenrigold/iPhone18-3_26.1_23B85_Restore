@interface MCMCommandOperationDeleteItem
- (BOOL)isEqual:(id)equal;
- (MCMCommandOperationDeleteItem)initWithCacheEntry:(id)entry codeSignIdentifiersToRemove:(id)remove manifest:(id)manifest;
- (id)description;
- (unint64_t)hash;
- (void)setManifest:(id)manifest;
@end

@implementation MCMCommandOperationDeleteItem

- (void)setManifest:(id)manifest
{
  p_manifest = &self->_manifest;

  objc_storeStrong(p_manifest, manifest);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  cacheEntry = [(MCMCommandOperationDeleteItem *)self cacheEntry];
  codeSignIdentifiersToRemove = [(MCMCommandOperationDeleteItem *)self codeSignIdentifiersToRemove];
  v6 = [v3 stringWithFormat:@"<%@, removeCS = %@>", cacheEntry, codeSignIdentifiersToRemove];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  cacheEntry = [(MCMCommandOperationDeleteItem *)self cacheEntry];
  LOBYTE(self) = [cacheEntry isEqual:equalCopy];

  return self;
}

- (unint64_t)hash
{
  cacheEntry = [(MCMCommandOperationDeleteItem *)self cacheEntry];
  v3 = [cacheEntry hash];

  return v3;
}

- (MCMCommandOperationDeleteItem)initWithCacheEntry:(id)entry codeSignIdentifiersToRemove:(id)remove manifest:(id)manifest
{
  v16 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  removeCopy = remove;
  manifestCopy = manifest;
  v15.receiver = self;
  v15.super_class = MCMCommandOperationDeleteItem;
  v12 = [(MCMCommandOperationDeleteItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_cacheEntry, entry);
    objc_storeStrong(&v13->_codeSignIdentifiersToRemove, remove);
    objc_storeStrong(&v13->_manifest, manifest);
  }

  return v13;
}

@end