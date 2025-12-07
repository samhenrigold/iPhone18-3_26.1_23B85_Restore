@interface TRIFactorPackAsset
+ (id)assetWithFactorName:(id)name assetId:(id)id filePath:(id)path factorPackId:(id)packId;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAsset:(id)asset;
- (TRIFactorPackAsset)initWithFactorName:(id)name assetId:(id)id filePath:(id)path factorPackId:(id)packId;
- (id)copyWithReplacementAssetId:(id)id;
- (id)copyWithReplacementFactorName:(id)name;
- (id)copyWithReplacementFactorPackId:(id)id;
- (id)copyWithReplacementFilePath:(id)path;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRIFactorPackAsset

- (TRIFactorPackAsset)initWithFactorName:(id)name assetId:(id)id filePath:(id)path factorPackId:(id)packId
{
  nameCopy = name;
  idCopy = id;
  pathCopy = path;
  packIdCopy = packId;
  if (nameCopy)
  {
    if (idCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3619 description:{@"Invalid parameter not satisfying: %@", @"assetId != nil"}];

    if (packIdCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3618 description:{@"Invalid parameter not satisfying: %@", @"factorName != nil"}];

  if (!idCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (packIdCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3620 description:{@"Invalid parameter not satisfying: %@", @"factorPackId != nil"}];

LABEL_4:
  v22.receiver = self;
  v22.super_class = TRIFactorPackAsset;
  v16 = [(TRIFactorPackAsset *)&v22 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_factorName, name);
    objc_storeStrong(&v17->_assetId, id);
    objc_storeStrong(&v17->_filePath, path);
    objc_storeStrong(&v17->_factorPackId, packId);
  }

  return v17;
}

+ (id)assetWithFactorName:(id)name assetId:(id)id filePath:(id)path factorPackId:(id)packId
{
  packIdCopy = packId;
  pathCopy = path;
  idCopy = id;
  nameCopy = name;
  v14 = [[self alloc] initWithFactorName:nameCopy assetId:idCopy filePath:pathCopy factorPackId:packIdCopy];

  return v14;
}

- (id)copyWithReplacementFactorName:(id)name
{
  nameCopy = name;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:nameCopy assetId:self->_assetId filePath:self->_filePath factorPackId:self->_factorPackId];

  return v5;
}

- (id)copyWithReplacementAssetId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:self->_factorName assetId:idCopy filePath:self->_filePath factorPackId:self->_factorPackId];

  return v5;
}

- (id)copyWithReplacementFilePath:(id)path
{
  pathCopy = path;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:self->_factorName assetId:self->_assetId filePath:pathCopy factorPackId:self->_factorPackId];

  return v5;
}

- (id)copyWithReplacementFactorPackId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:self->_factorName assetId:self->_assetId filePath:self->_filePath factorPackId:idCopy];

  return v5;
}

- (BOOL)isEqualToAsset:(id)asset
{
  assetCopy = asset;
  v5 = assetCopy;
  if (!assetCopy || (v6 = self->_factorName == 0, [assetCopy factorName], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8) || (factorName = self->_factorName) != 0 && (objc_msgSend(v5, "factorName"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSString isEqual:](factorName, "isEqual:", v10), v10, !v11) || (v12 = self->_assetId == 0, objc_msgSend(v5, "assetId"), v13 = objc_claimAutoreleasedReturnValue(), v14 = v13 != 0, v13, v12 == v14) || (assetId = self->_assetId) != 0 && (objc_msgSend(v5, "assetId"), v16 = objc_claimAutoreleasedReturnValue(), v17 = -[TRIAssetId isEqual:](assetId, "isEqual:", v16), v16, !v17) || (v18 = self->_filePath == 0, objc_msgSend(v5, "filePath"), v19 = objc_claimAutoreleasedReturnValue(), v20 = v19 != 0, v19, v18 == v20) || (filePath = self->_filePath) != 0 && (objc_msgSend(v5, "filePath"), v22 = objc_claimAutoreleasedReturnValue(), v23 = -[NSString isEqual:](filePath, "isEqual:", v22), v22, !v23) || (v24 = self->_factorPackId == 0, objc_msgSend(v5, "factorPackId"), v25 = objc_claimAutoreleasedReturnValue(), v26 = v25 != 0, v25, v24 == v26))
  {
    v29 = 0;
  }

  else
  {
    factorPackId = self->_factorPackId;
    if (factorPackId)
    {
      factorPackId = [v5 factorPackId];
      v29 = [(TRIFactorPackId *)factorPackId isEqual:factorPackId];
    }

    else
    {
      v29 = 1;
    }
  }

  return v29 & 1;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIFactorPackAsset *)self isEqualToAsset:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_factorName hash];
  v4 = [(TRIAssetId *)self->_assetId hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_filePath hash]- v4 + 32 * v4;
  return [(TRIFactorPackId *)self->_factorPackId hash]- v5 + 32 * v5;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIFactorPackAsset | factorName:%@ assetId:%@ filePath:%@ factorPackId:%@>", self->_factorName, self->_assetId, self->_filePath, self->_factorPackId];

  return v2;
}

@end