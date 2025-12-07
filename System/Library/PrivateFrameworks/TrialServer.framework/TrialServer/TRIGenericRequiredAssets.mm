@interface TRIGenericRequiredAssets
+ (id)assetsWithCloudKit:(id)kit mobileAsset:(id)asset;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAssets:(id)assets;
- (TRIGenericRequiredAssets)initWithCloudKit:(id)kit mobileAsset:(id)asset;
- (id)copyWithReplacementCloudKit:(id)kit;
- (id)copyWithReplacementMobileAsset:(id)asset;
- (id)description;
@end

@implementation TRIGenericRequiredAssets

- (TRIGenericRequiredAssets)initWithCloudKit:(id)kit mobileAsset:(id)asset
{
  kitCopy = kit;
  assetCopy = asset;
  v10 = assetCopy;
  if (kitCopy)
  {
    if (assetCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3151 description:{@"Invalid parameter not satisfying: %@", @"cloudKit != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3152 description:{@"Invalid parameter not satisfying: %@", @"mobileAsset != nil"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = TRIGenericRequiredAssets;
  v11 = [(TRIGenericRequiredAssets *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_cloudKit, kit);
    objc_storeStrong(&v12->_mobileAsset, asset);
  }

  return v12;
}

+ (id)assetsWithCloudKit:(id)kit mobileAsset:(id)asset
{
  assetCopy = asset;
  kitCopy = kit;
  v8 = [[self alloc] initWithCloudKit:kitCopy mobileAsset:assetCopy];

  return v8;
}

- (id)copyWithReplacementCloudKit:(id)kit
{
  kitCopy = kit;
  v5 = [objc_alloc(objc_opt_class()) initWithCloudKit:kitCopy mobileAsset:self->_mobileAsset];

  return v5;
}

- (id)copyWithReplacementMobileAsset:(id)asset
{
  assetCopy = asset;
  v5 = [objc_alloc(objc_opt_class()) initWithCloudKit:self->_cloudKit mobileAsset:assetCopy];

  return v5;
}

- (BOOL)isEqualToAssets:(id)assets
{
  assetsCopy = assets;
  v5 = assetsCopy;
  if (!assetsCopy || (v6 = self->_cloudKit == 0, [assetsCopy cloudKit], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8) || (cloudKit = self->_cloudKit) != 0 && (objc_msgSend(v5, "cloudKit"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSArray isEqual:](cloudKit, "isEqual:", v10), v10, !v11) || (v12 = self->_mobileAsset == 0, objc_msgSend(v5, "mobileAsset"), v13 = objc_claimAutoreleasedReturnValue(), v14 = v13 != 0, v13, v12 == v14))
  {
    v17 = 0;
  }

  else
  {
    mobileAsset = self->_mobileAsset;
    if (mobileAsset)
    {
      mobileAsset = [v5 mobileAsset];
      v17 = [(NSArray *)mobileAsset isEqual:mobileAsset];
    }

    else
    {
      v17 = 1;
    }
  }

  return v17 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIGenericRequiredAssets *)self isEqualToAssets:v5];
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIGenericRequiredAssets | cloudKit:%@ mobileAsset:%@>", self->_cloudKit, self->_mobileAsset];

  return v2;
}

@end