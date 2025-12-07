@interface TRIPurgeableAsset
+ (id)assetWithFactorName:(id)name assetId:(id)id filePath:(id)path factorPackId:(id)packId treatmentId:(id)treatmentId;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAsset:(id)asset;
- (TRIPurgeableAsset)initWithFactorName:(id)name assetId:(id)id filePath:(id)path factorPackId:(id)packId treatmentId:(id)treatmentId;
- (id)copyWithReplacementAssetId:(id)id;
- (id)copyWithReplacementFactorName:(id)name;
- (id)copyWithReplacementFactorPackId:(id)id;
- (id)copyWithReplacementFilePath:(id)path;
- (id)copyWithReplacementTreatmentId:(id)id;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRIPurgeableAsset

- (TRIPurgeableAsset)initWithFactorName:(id)name assetId:(id)id filePath:(id)path factorPackId:(id)packId treatmentId:(id)treatmentId
{
  nameCopy = name;
  idCopy = id;
  pathCopy = path;
  packIdCopy = packId;
  treatmentIdCopy = treatmentId;
  if (nameCopy)
  {
    if (idCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3727 description:{@"Invalid parameter not satisfying: %@", @"factorName != nil"}];

    if (idCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3728 description:{@"Invalid parameter not satisfying: %@", @"assetId != nil"}];

LABEL_3:
  v24.receiver = self;
  v24.super_class = TRIPurgeableAsset;
  v17 = [(TRIPurgeableAsset *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_factorName, name);
    objc_storeStrong(&v18->_assetId, id);
    objc_storeStrong(&v18->_filePath, path);
    objc_storeStrong(&v18->_factorPackId, packId);
    objc_storeStrong(&v18->_treatmentId, treatmentId);
  }

  return v18;
}

+ (id)assetWithFactorName:(id)name assetId:(id)id filePath:(id)path factorPackId:(id)packId treatmentId:(id)treatmentId
{
  treatmentIdCopy = treatmentId;
  packIdCopy = packId;
  pathCopy = path;
  idCopy = id;
  nameCopy = name;
  v17 = [[self alloc] initWithFactorName:nameCopy assetId:idCopy filePath:pathCopy factorPackId:packIdCopy treatmentId:treatmentIdCopy];

  return v17;
}

- (id)copyWithReplacementFactorName:(id)name
{
  nameCopy = name;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:nameCopy assetId:self->_assetId filePath:self->_filePath factorPackId:self->_factorPackId treatmentId:self->_treatmentId];

  return v5;
}

- (id)copyWithReplacementAssetId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:self->_factorName assetId:idCopy filePath:self->_filePath factorPackId:self->_factorPackId treatmentId:self->_treatmentId];

  return v5;
}

- (id)copyWithReplacementFilePath:(id)path
{
  pathCopy = path;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:self->_factorName assetId:self->_assetId filePath:pathCopy factorPackId:self->_factorPackId treatmentId:self->_treatmentId];

  return v5;
}

- (id)copyWithReplacementFactorPackId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:self->_factorName assetId:self->_assetId filePath:self->_filePath factorPackId:idCopy treatmentId:self->_treatmentId];

  return v5;
}

- (id)copyWithReplacementTreatmentId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorName:self->_factorName assetId:self->_assetId filePath:self->_filePath factorPackId:self->_factorPackId treatmentId:idCopy];

  return v5;
}

- (BOOL)isEqualToAsset:(id)asset
{
  assetCopy = asset;
  v5 = assetCopy;
  if (!assetCopy || (v6 = self->_factorName == 0, [assetCopy factorName], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8) || (factorName = self->_factorName) != 0 && (objc_msgSend(v5, "factorName"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSString isEqual:](factorName, "isEqual:", v10), v10, !v11) || (v12 = self->_assetId == 0, objc_msgSend(v5, "assetId"), v13 = objc_claimAutoreleasedReturnValue(), v14 = v13 != 0, v13, v12 == v14) || (assetId = self->_assetId) != 0 && (objc_msgSend(v5, "assetId"), v16 = objc_claimAutoreleasedReturnValue(), v17 = -[TRIAssetId isEqual:](assetId, "isEqual:", v16), v16, !v17) || (v18 = self->_filePath == 0, objc_msgSend(v5, "filePath"), v19 = objc_claimAutoreleasedReturnValue(), v20 = v19 != 0, v19, v18 == v20) || (filePath = self->_filePath) != 0 && (objc_msgSend(v5, "filePath"), v22 = objc_claimAutoreleasedReturnValue(), v23 = -[NSString isEqual:](filePath, "isEqual:", v22), v22, !v23) || (v24 = self->_factorPackId == 0, objc_msgSend(v5, "factorPackId"), v25 = objc_claimAutoreleasedReturnValue(), v26 = v25 != 0, v25, v24 == v26) || (factorPackId = self->_factorPackId) != 0 && (objc_msgSend(v5, "factorPackId"), v28 = objc_claimAutoreleasedReturnValue(), v29 = -[TRIFactorPackId isEqual:](factorPackId, "isEqual:", v28), v28, !v29) || (v30 = self->_treatmentId == 0, objc_msgSend(v5, "treatmentId"), v31 = objc_claimAutoreleasedReturnValue(), v32 = v31 != 0, v31, v30 == v32))
  {
    v35 = 0;
  }

  else
  {
    treatmentId = self->_treatmentId;
    if (treatmentId)
    {
      treatmentId = [v5 treatmentId];
      v35 = [(NSString *)treatmentId isEqual:treatmentId];
    }

    else
    {
      v35 = 1;
    }
  }

  return v35 & 1;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIPurgeableAsset *)self isEqualToAsset:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_factorName hash];
  v4 = [(TRIAssetId *)self->_assetId hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_filePath hash]- v4 + 32 * v4;
  v6 = [(TRIFactorPackId *)self->_factorPackId hash]- v5 + 32 * v5;
  return [(NSString *)self->_treatmentId hash]- v6 + 32 * v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIPurgeableAsset | factorName:%@ assetId:%@ filePath:%@ factorPackId:%@ treatmentId:%@>", self->_factorName, self->_assetId, self->_filePath, self->_factorPackId, self->_treatmentId];

  return v2;
}

@end