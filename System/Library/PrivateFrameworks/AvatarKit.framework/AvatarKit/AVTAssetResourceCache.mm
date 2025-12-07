@interface AVTAssetResourceCache
- (AVTAssetResourceCache)init;
- (id)resourceForAsset:(id)asset;
- (void)releaseAsset:(id)asset;
@end

@implementation AVTAssetResourceCache

- (AVTAssetResourceCache)init
{
  v7.receiver = self;
  v7.super_class = AVTAssetResourceCache;
  v2 = [(AVTAssetResourceCache *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_policy = 0;
    v4 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:? valueOptions:? capacity:?];
    resources = v3->_resources;
    v3->_resources = v4;
  }

  return v3;
}

- (void)releaseAsset:(id)asset
{
  resources = self->_resources;
  assetCopy = asset;
  [(NSMapTable *)resources removeObjectForKey:?];
  [assetCopy decrUseCount];
}

- (id)resourceForAsset:(id)asset
{
  assetCopy = asset;
  v5 = [(NSMapTable *)self->_resources objectForKey:?];
  if (!v5)
  {
    v5 = [assetCopy resourceByCachingIfNeeded:?];
    [NSMapTable setObject:"setObject:forKey:" forKey:?];
  }

  return v5;
}

@end