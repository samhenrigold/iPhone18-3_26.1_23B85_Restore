@interface SGSearchableItemIdTriple
+ (SGSearchableItemIdTriple)searchableItemIdTripleWithBundleId:(id)id domainId:(id)domainId uniqueId:(id)uniqueId;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSearchableItemIdTriple:(id)triple;
- (SGSearchableItemIdTriple)initWithBundleId:(id)id domainId:(id)domainId uniqueId:(id)uniqueId;
- (unint64_t)hash;
@end

@implementation SGSearchableItemIdTriple

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleId hash];
  v4 = [(NSString *)self->_domainId hash]- v3 + 32 * v3;
  return [(NSString *)self->_uniqueId hash]- v4 + 32 * v4;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGSearchableItemIdTriple *)self isEqualToSearchableItemIdTriple:v5];
  }

  return v6;
}

- (BOOL)isEqualToSearchableItemIdTriple:(id)triple
{
  tripleCopy = triple;
  v5 = tripleCopy;
  if (!tripleCopy || (v6 = self->_bundleId == 0, [tripleCopy bundleId], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8) || (bundleId = self->_bundleId) != 0 && (objc_msgSend(v5, "bundleId"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSString isEqual:](bundleId, "isEqual:", v10), v10, !v11) || (v12 = self->_domainId == 0, objc_msgSend(v5, "domainId"), v13 = objc_claimAutoreleasedReturnValue(), v14 = v13 != 0, v13, v12 == v14) || (domainId = self->_domainId) != 0 && (objc_msgSend(v5, "domainId"), v16 = objc_claimAutoreleasedReturnValue(), v17 = -[NSString isEqual:](domainId, "isEqual:", v16), v16, !v17) || (v18 = self->_uniqueId == 0, objc_msgSend(v5, "uniqueId"), v19 = objc_claimAutoreleasedReturnValue(), v20 = v19 != 0, v19, v18 == v20))
  {
    v23 = 0;
  }

  else
  {
    uniqueId = self->_uniqueId;
    if (uniqueId)
    {
      uniqueId = [v5 uniqueId];
      v23 = [(NSString *)uniqueId isEqual:uniqueId];
    }

    else
    {
      v23 = 1;
    }
  }

  return v23 & 1;
}

- (SGSearchableItemIdTriple)initWithBundleId:(id)id domainId:(id)domainId uniqueId:(id)uniqueId
{
  idCopy = id;
  domainIdCopy = domainId;
  uniqueIdCopy = uniqueId;
  v13 = uniqueIdCopy;
  if (idCopy)
  {
    if (uniqueIdCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSearchableItemIdTriple.m" lineNumber:11 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSearchableItemIdTriple.m" lineNumber:12 description:{@"Invalid parameter not satisfying: %@", @"uniqueId"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = SGSearchableItemIdTriple;
  v14 = [(SGSearchableItemIdTriple *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_bundleId, id);
    objc_storeStrong(&v15->_domainId, domainId);
    objc_storeStrong(&v15->_uniqueId, uniqueId);
  }

  return v15;
}

+ (SGSearchableItemIdTriple)searchableItemIdTripleWithBundleId:(id)id domainId:(id)domainId uniqueId:(id)uniqueId
{
  uniqueIdCopy = uniqueId;
  domainIdCopy = domainId;
  idCopy = id;
  v11 = [[self alloc] initWithBundleId:idCopy domainId:domainIdCopy uniqueId:uniqueIdCopy];

  return v11;
}

@end