@interface TRIPurgeableConstruct
+ (id)constructWithFactorPackId:(id)id treatmentId:(id)treatmentId namespaceName:(id)name purgeableAssetFactorNames:(id)names;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConstruct:(id)construct;
- (TRIPurgeableConstruct)initWithFactorPackId:(id)id treatmentId:(id)treatmentId namespaceName:(id)name purgeableAssetFactorNames:(id)names;
- (id)copyWithReplacementFactorPackId:(id)id;
- (id)copyWithReplacementNamespaceName:(id)name;
- (id)copyWithReplacementPurgeableAssetFactorNames:(id)names;
- (id)copyWithReplacementTreatmentId:(id)id;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRIPurgeableConstruct

- (TRIPurgeableConstruct)initWithFactorPackId:(id)id treatmentId:(id)treatmentId namespaceName:(id)name purgeableAssetFactorNames:(id)names
{
  idCopy = id;
  treatmentIdCopy = treatmentId;
  nameCopy = name;
  namesCopy = names;
  v16 = namesCopy;
  if (nameCopy)
  {
    if (namesCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3853 description:{@"Invalid parameter not satisfying: %@", @"namespaceName != nil"}];

    if (v16)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3854 description:{@"Invalid parameter not satisfying: %@", @"purgeableAssetFactorNames != nil"}];

LABEL_3:
  v22.receiver = self;
  v22.super_class = TRIPurgeableConstruct;
  v17 = [(TRIPurgeableConstruct *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_factorPackId, id);
    objc_storeStrong(&v18->_treatmentId, treatmentId);
    objc_storeStrong(&v18->_namespaceName, name);
    objc_storeStrong(&v18->_purgeableAssetFactorNames, names);
  }

  return v18;
}

+ (id)constructWithFactorPackId:(id)id treatmentId:(id)treatmentId namespaceName:(id)name purgeableAssetFactorNames:(id)names
{
  namesCopy = names;
  nameCopy = name;
  treatmentIdCopy = treatmentId;
  idCopy = id;
  v14 = [[self alloc] initWithFactorPackId:idCopy treatmentId:treatmentIdCopy namespaceName:nameCopy purgeableAssetFactorNames:namesCopy];

  return v14;
}

- (id)copyWithReplacementFactorPackId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorPackId:idCopy treatmentId:self->_treatmentId namespaceName:self->_namespaceName purgeableAssetFactorNames:self->_purgeableAssetFactorNames];

  return v5;
}

- (id)copyWithReplacementTreatmentId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorPackId:self->_factorPackId treatmentId:idCopy namespaceName:self->_namespaceName purgeableAssetFactorNames:self->_purgeableAssetFactorNames];

  return v5;
}

- (id)copyWithReplacementNamespaceName:(id)name
{
  nameCopy = name;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorPackId:self->_factorPackId treatmentId:self->_treatmentId namespaceName:nameCopy purgeableAssetFactorNames:self->_purgeableAssetFactorNames];

  return v5;
}

- (id)copyWithReplacementPurgeableAssetFactorNames:(id)names
{
  namesCopy = names;
  v5 = [objc_alloc(objc_opt_class()) initWithFactorPackId:self->_factorPackId treatmentId:self->_treatmentId namespaceName:self->_namespaceName purgeableAssetFactorNames:namesCopy];

  return v5;
}

- (BOOL)isEqualToConstruct:(id)construct
{
  constructCopy = construct;
  v5 = constructCopy;
  if (!constructCopy || (v6 = self->_factorPackId == 0, [constructCopy factorPackId], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8) || (factorPackId = self->_factorPackId) != 0 && (objc_msgSend(v5, "factorPackId"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[TRIFactorPackId isEqual:](factorPackId, "isEqual:", v10), v10, !v11) || (v12 = self->_treatmentId == 0, objc_msgSend(v5, "treatmentId"), v13 = objc_claimAutoreleasedReturnValue(), v14 = v13 != 0, v13, v12 == v14) || (treatmentId = self->_treatmentId) != 0 && (objc_msgSend(v5, "treatmentId"), v16 = objc_claimAutoreleasedReturnValue(), v17 = -[NSString isEqual:](treatmentId, "isEqual:", v16), v16, !v17) || (v18 = self->_namespaceName == 0, objc_msgSend(v5, "namespaceName"), v19 = objc_claimAutoreleasedReturnValue(), v20 = v19 != 0, v19, v18 == v20) || (namespaceName = self->_namespaceName) != 0 && (objc_msgSend(v5, "namespaceName"), v22 = objc_claimAutoreleasedReturnValue(), v23 = -[NSString isEqual:](namespaceName, "isEqual:", v22), v22, !v23) || (v24 = self->_purgeableAssetFactorNames == 0, objc_msgSend(v5, "purgeableAssetFactorNames"), v25 = objc_claimAutoreleasedReturnValue(), v26 = v25 != 0, v25, v24 == v26))
  {
    v29 = 0;
  }

  else
  {
    purgeableAssetFactorNames = self->_purgeableAssetFactorNames;
    if (purgeableAssetFactorNames)
    {
      purgeableAssetFactorNames = [v5 purgeableAssetFactorNames];
      v29 = [(NSSet *)purgeableAssetFactorNames isEqual:purgeableAssetFactorNames];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIPurgeableConstruct *)self isEqualToConstruct:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(TRIFactorPackId *)self->_factorPackId hash];
  v4 = [(NSString *)self->_treatmentId hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_namespaceName hash]- v4 + 32 * v4;
  return [(NSSet *)self->_purgeableAssetFactorNames hash]- v5 + 32 * v5;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIPurgeableConstruct | factorPackId:%@ treatmentId:%@ namespaceName:%@ purgeableAssetFactorNames:%@>", self->_factorPackId, self->_treatmentId, self->_namespaceName, self->_purgeableAssetFactorNames];

  return v2;
}

@end