@interface TRIAssetIdFactorName
+ (id)nameWithAssetId:(id)id factorName:(id)name;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToName:(id)name;
- (TRIAssetIdFactorName)initWithAssetId:(id)id factorName:(id)name;
- (id)copyWithReplacementAssetId:(id)id;
- (id)copyWithReplacementFactorName:(id)name;
- (id)description;
@end

@implementation TRIAssetIdFactorName

- (TRIAssetIdFactorName)initWithAssetId:(id)id factorName:(id)name
{
  idCopy = id;
  nameCopy = name;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:2447 description:{@"Invalid parameter not satisfying: %@", @"assetId != nil"}];
  }

  v14.receiver = self;
  v14.super_class = TRIAssetIdFactorName;
  v10 = [(TRIAssetIdFactorName *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_assetId, id);
    objc_storeStrong(&v11->_factorName, name);
  }

  return v11;
}

+ (id)nameWithAssetId:(id)id factorName:(id)name
{
  nameCopy = name;
  idCopy = id;
  v8 = [[self alloc] initWithAssetId:idCopy factorName:nameCopy];

  return v8;
}

- (id)copyWithReplacementAssetId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithAssetId:idCopy factorName:self->_factorName];

  return v5;
}

- (id)copyWithReplacementFactorName:(id)name
{
  nameCopy = name;
  v5 = [objc_alloc(objc_opt_class()) initWithAssetId:self->_assetId factorName:nameCopy];

  return v5;
}

- (BOOL)isEqualToName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (!nameCopy || (v6 = self->_assetId == 0, [nameCopy assetId], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8) || (assetId = self->_assetId) != 0 && (objc_msgSend(v5, "assetId"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[TRIAssetId isEqual:](assetId, "isEqual:", v10), v10, !v11) || (v12 = self->_factorName == 0, objc_msgSend(v5, "factorName"), v13 = objc_claimAutoreleasedReturnValue(), v14 = v13 != 0, v13, v12 == v14))
  {
    v17 = 0;
  }

  else
  {
    factorName = self->_factorName;
    if (factorName)
    {
      factorName = [v5 factorName];
      v17 = [(NSString *)factorName isEqual:factorName];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIAssetIdFactorName *)self isEqualToName:v5];
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIAssetIdFactorName | assetId:%@ factorName:%@>", self->_assetId, self->_factorName];

  return v2;
}

@end