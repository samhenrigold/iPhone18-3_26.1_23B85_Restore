@interface MDLRelativeAssetResolver
- (BOOL)canResolveAssetNamed:(id)named;
- (MDLAsset)asset;
- (MDLRelativeAssetResolver)initWithAsset:(MDLAsset *)asset;
- (id)resolveAssetNamed:(id)named;
@end

@implementation MDLRelativeAssetResolver

- (MDLRelativeAssetResolver)initWithAsset:(MDLAsset *)asset
{
  v4 = asset;
  v9.receiver = self;
  v9.super_class = MDLRelativeAssetResolver;
  v5 = [(MDLRelativeAssetResolver *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_asset, v4);
    v7 = v6;
  }

  return v6;
}

- (BOOL)canResolveAssetNamed:(id)named
{
  namedCopy = named;
  if (namedCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_asset);
    if (WeakRetained)
    {
      v16 = objc_msgSend_resolveAssetNamed_(self, v5, namedCopy, v6, v12, v13, v14, v15, v7, v8, v9, v10);
      v17 = v16 != 0;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)resolveAssetNamed:(id)named
{
  namedCopy = named;
  v16 = namedCopy;
  if (namedCopy)
  {
    if (objc_msgSend_isAbsolutePath(namedCopy, v5, v6, v7, v12, v13, v14, v15, v8, v9, v10, v11))
    {
      v27 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v17, v16, v18, v23, v24, v25, v26, v19, v20, v21, v22);
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_asset);
      v40 = objc_msgSend_URL(WeakRetained, v29, v30, v31, v36, v37, v38, v39, v32, v33, v34, v35);
      v52 = objc_msgSend_URLByDeletingLastPathComponent(v40, v41, v42, v43, v48, v49, v50, v51, v44, v45, v46, v47);

      v27 = objc_msgSend_URLByAppendingPathComponent_(v52, v53, v16, v54, v59, v60, v61, v62, v55, v56, v57, v58);
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (MDLAsset)asset
{
  WeakRetained = objc_loadWeakRetained(&self->_asset);

  return WeakRetained;
}

@end