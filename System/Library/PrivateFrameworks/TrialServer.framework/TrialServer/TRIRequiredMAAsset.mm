@interface TRIRequiredMAAsset
+ (id)assetWithFactorName:(id)name isInstalled:(BOOL)installed isOnDemand:(BOOL)demand metadata:(id)metadata fullAssetId:(id)id;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAsset:(id)asset;
- (TRIRequiredMAAsset)initWithFactorName:(id)name isInstalled:(BOOL)installed isOnDemand:(BOOL)demand metadata:(id)metadata fullAssetId:(id)id;
- (id)copyWithReplacementFactorName:(id)name;
- (id)copyWithReplacementFullAssetId:(id)id;
- (id)copyWithReplacementIsInstalled:(BOOL)installed;
- (id)copyWithReplacementIsOnDemand:(BOOL)demand;
- (id)copyWithReplacementMetadata:(id)metadata;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRIRequiredMAAsset

- (TRIRequiredMAAsset)initWithFactorName:(id)name isInstalled:(BOOL)installed isOnDemand:(BOOL)demand metadata:(id)metadata fullAssetId:(id)id
{
  nameCopy = name;
  metadataCopy = metadata;
  idCopy = id;
  if (nameCopy)
  {
    if (metadataCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3029 description:{@"Invalid parameter not satisfying: %@", @"metadata != nil"}];

    if (idCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3028 description:{@"Invalid parameter not satisfying: %@", @"factorName != nil"}];

  if (!metadataCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (idCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3030 description:{@"Invalid parameter not satisfying: %@", @"fullAssetId != nil"}];

LABEL_4:
  v23.receiver = self;
  v23.super_class = TRIRequiredMAAsset;
  v17 = [(TRIRequiredMAAsset *)&v23 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_factorName, name);
    v18->_isInstalled = installed;
    v18->_isOnDemand = demand;
    objc_storeStrong(&v18->_metadata, metadata);
    objc_storeStrong(&v18->_fullAssetId, id);
  }

  return v18;
}

+ (id)assetWithFactorName:(id)name isInstalled:(BOOL)installed isOnDemand:(BOOL)demand metadata:(id)metadata fullAssetId:(id)id
{
  demandCopy = demand;
  installedCopy = installed;
  idCopy = id;
  metadataCopy = metadata;
  nameCopy = name;
  v15 = [[self alloc] initWithFactorName:nameCopy isInstalled:installedCopy isOnDemand:demandCopy metadata:metadataCopy fullAssetId:idCopy];

  return v15;
}

- (id)copyWithReplacementFactorName:(id)name
{
  nameCopy = name;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:nameCopy isInstalled:self->_isInstalled isOnDemand:self->_isOnDemand metadata:self->_metadata fullAssetId:self->_fullAssetId];

  return v5;
}

- (id)copyWithReplacementIsInstalled:(BOOL)installed
{
  installedCopy = installed;
  v5 = objc_alloc(objc_opt_class());
  isOnDemand = self->_isOnDemand;
  factorName = self->_factorName;
  metadata = self->_metadata;
  fullAssetId = self->_fullAssetId;

  return [v5 initWithFactorName:factorName isInstalled:installedCopy isOnDemand:isOnDemand metadata:metadata fullAssetId:fullAssetId];
}

- (id)copyWithReplacementIsOnDemand:(BOOL)demand
{
  demandCopy = demand;
  v5 = objc_alloc(objc_opt_class());
  isInstalled = self->_isInstalled;
  factorName = self->_factorName;
  metadata = self->_metadata;
  fullAssetId = self->_fullAssetId;

  return [v5 initWithFactorName:factorName isInstalled:isInstalled isOnDemand:demandCopy metadata:metadata fullAssetId:fullAssetId];
}

- (id)copyWithReplacementMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:self->_factorName isInstalled:self->_isInstalled isOnDemand:self->_isOnDemand metadata:metadataCopy fullAssetId:self->_fullAssetId];

  return v5;
}

- (id)copyWithReplacementFullAssetId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:self->_factorName isInstalled:self->_isInstalled isOnDemand:self->_isOnDemand metadata:self->_metadata fullAssetId:idCopy];

  return v5;
}

- (BOOL)isEqualToAsset:(id)asset
{
  assetCopy = asset;
  v5 = assetCopy;
  if (!assetCopy || (v6 = self->_factorName == 0, [assetCopy factorName], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8) || (factorName = self->_factorName) != 0 && (objc_msgSend(v5, "factorName"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSString isEqual:](factorName, "isEqual:", v10), v10, !v11) || (isInstalled = self->_isInstalled, isInstalled != objc_msgSend(v5, "isInstalled")) || (isOnDemand = self->_isOnDemand, isOnDemand != objc_msgSend(v5, "isOnDemand")) || (v14 = self->_metadata == 0, objc_msgSend(v5, "metadata"), v15 = objc_claimAutoreleasedReturnValue(), v16 = v15 != 0, v15, v14 == v16) || (metadata = self->_metadata) != 0 && (objc_msgSend(v5, "metadata"), v18 = objc_claimAutoreleasedReturnValue(), v19 = -[TRIMAAssetMetadata isEqual:](metadata, "isEqual:", v18), v18, !v19) || (v20 = self->_fullAssetId == 0, objc_msgSend(v5, "fullAssetId"), v21 = objc_claimAutoreleasedReturnValue(), v22 = v21 != 0, v21, v20 == v22))
  {
    v25 = 0;
  }

  else
  {
    fullAssetId = self->_fullAssetId;
    if (fullAssetId)
    {
      fullAssetId = [v5 fullAssetId];
      v25 = [(TRIFullMAAssetId *)fullAssetId isEqual:fullAssetId];
    }

    else
    {
      v25 = 1;
    }
  }

  return v25 & 1;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIRequiredMAAsset *)self isEqualToAsset:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_factorName hash];
  v4 = self->_isInstalled - v3 + 32 * v3;
  v5 = self->_isOnDemand - v4 + 32 * v4;
  v6 = [(TRIMAAssetMetadata *)self->_metadata hash]- v5 + 32 * v5;
  return [(TRIFullMAAssetId *)self->_fullAssetId hash]- v6 + 32 * v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  factorName = self->_factorName;
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isInstalled];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isOnDemand];
  v7 = [v3 initWithFormat:@"<TRIRequiredMAAsset | factorName:%@ isInstalled:%@ isOnDemand:%@ metadata:%@ fullAssetId:%@>", factorName, v5, v6, self->_metadata, self->_fullAssetId];

  return v7;
}

@end