@interface TRITreatmentRecordFetchPlan
+ (id)planWithRecordId:(id)id assetIndexes:(id)indexes;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPlan:(id)plan;
- (TRITreatmentRecordFetchPlan)initWithRecordId:(id)id assetIndexes:(id)indexes;
- (id)copyWithReplacementAssetIndexes:(id)indexes;
- (id)copyWithReplacementRecordId:(id)id;
- (id)description;
@end

@implementation TRITreatmentRecordFetchPlan

- (TRITreatmentRecordFetchPlan)initWithRecordId:(id)id assetIndexes:(id)indexes
{
  idCopy = id;
  indexesCopy = indexes;
  v10 = indexesCopy;
  if (idCopy)
  {
    if (indexesCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4027 description:{@"Invalid parameter not satisfying: %@", @"recordId != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4028 description:{@"Invalid parameter not satisfying: %@", @"assetIndexes != nil"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = TRITreatmentRecordFetchPlan;
  v11 = [(TRITreatmentRecordFetchPlan *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_recordId, id);
    objc_storeStrong(&v12->_assetIndexes, indexes);
  }

  return v12;
}

+ (id)planWithRecordId:(id)id assetIndexes:(id)indexes
{
  indexesCopy = indexes;
  idCopy = id;
  v8 = [[self alloc] initWithRecordId:idCopy assetIndexes:indexesCopy];

  return v8;
}

- (id)copyWithReplacementRecordId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithRecordId:idCopy assetIndexes:self->_assetIndexes];

  return v5;
}

- (id)copyWithReplacementAssetIndexes:(id)indexes
{
  indexesCopy = indexes;
  v5 = [objc_alloc(objc_opt_class()) initWithRecordId:self->_recordId assetIndexes:indexesCopy];

  return v5;
}

- (BOOL)isEqualToPlan:(id)plan
{
  planCopy = plan;
  v5 = planCopy;
  if (!planCopy || (v6 = self->_recordId == 0, [planCopy recordId], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8) || (recordId = self->_recordId) != 0 && (objc_msgSend(v5, "recordId"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[CKRecordID isEqual:](recordId, "isEqual:", v10), v10, !v11) || (v12 = self->_assetIndexes == 0, objc_msgSend(v5, "assetIndexes"), v13 = objc_claimAutoreleasedReturnValue(), v14 = v13 != 0, v13, v12 == v14))
  {
    v17 = 0;
  }

  else
  {
    assetIndexes = self->_assetIndexes;
    if (assetIndexes)
    {
      assetIndexes = [v5 assetIndexes];
      v17 = [(NSIndexSet *)assetIndexes isEqual:assetIndexes];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRITreatmentRecordFetchPlan *)self isEqualToPlan:v5];
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRITreatmentRecordFetchPlan | recordId:%@ assetIndexes:%@>", self->_recordId, self->_assetIndexes];

  return v2;
}

@end