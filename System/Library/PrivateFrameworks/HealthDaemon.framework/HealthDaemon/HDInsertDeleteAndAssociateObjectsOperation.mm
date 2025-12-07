@interface HDInsertDeleteAndAssociateObjectsOperation
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (HDInsertDeleteAndAssociateObjectsOperation)initWithCoder:(id)coder;
- (HDInsertDeleteAndAssociateObjectsOperation)initWithObjectsToInsertByDataProvenance:(id)provenance objectsToDelete:(id)delete associations:(id)associations;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDInsertDeleteAndAssociateObjectsOperation

- (HDInsertDeleteAndAssociateObjectsOperation)initWithObjectsToInsertByDataProvenance:(id)provenance objectsToDelete:(id)delete associations:(id)associations
{
  provenanceCopy = provenance;
  deleteCopy = delete;
  associationsCopy = associations;
  v19.receiver = self;
  v19.super_class = HDInsertDeleteAndAssociateObjectsOperation;
  v11 = [(HDInsertDeleteAndAssociateObjectsOperation *)&v19 init];
  if (v11)
  {
    v12 = objc_msgSend_copy(provenanceCopy);
    objectsToInsertByDataProvenance = v11->_objectsToInsertByDataProvenance;
    v11->_objectsToInsertByDataProvenance = v12;

    v14 = objc_msgSend_copy(deleteCopy);
    objectsToDelete = v11->_objectsToDelete;
    v11->_objectsToDelete = v14;

    v16 = objc_msgSend_copy(associationsCopy);
    associations = v11->_associations;
    v11->_associations = v16;
  }

  return v11;
}

- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  Current = CFAbsoluteTimeGetCurrent();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = self->_objectsToInsertByDataProvenance;
  v9 = [(NSDictionary *)obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v33;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v33 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v32 + 1) + 8 * v12);
      dataManager = [profileCopy dataManager];
      v15 = [(NSDictionary *)self->_objectsToInsertByDataProvenance objectForKeyedSubscript:v13];
      v16 = [dataManager insertDataObjects:v15 withProvenance:v13 creationDate:error error:Current];

      if (!v16)
      {
        goto LABEL_20;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSDictionary *)obj countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  dataManager2 = [profileCopy dataManager];
  v18 = [dataManager2 deleteDataObjects:self->_objectsToDelete restrictedSourceEntities:0 failIfNotFound:0 recursiveDeleteAuthorizationBlock:0 error:error];

  LOBYTE(v16) = 0;
  if (v18)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = self->_associations;
    v19 = [(NSDictionary *)obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v29;
LABEL_12:
      v22 = 0;
      while (1)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v28 + 1) + 8 * v22);
        v24 = [(NSDictionary *)self->_associations objectForKeyedSubscript:v23];
        v27 = 0;
        v16 = [HDAssociationEntity associateSampleUUIDs:v24 withSampleUUID:v23 type:0 behavior:0 destinationSubObjectReference:0 lastInsertedEntityID:&v27 profile:profileCopy error:error];

        if (!v16)
        {
          break;
        }

        if (v20 == ++v22)
        {
          v20 = [(NSDictionary *)obj countByEnumeratingWithState:&v28 objects:v36 count:16];
          LOBYTE(v16) = 1;
          if (v20)
          {
            goto LABEL_12;
          }

          break;
        }
      }
    }

    else
    {
      LOBYTE(v16) = 1;
    }

LABEL_20:
  }

  return v16;
}

- (HDInsertDeleteAndAssociateObjectsOperation)initWithCoder:(id)coder
{
  v25[4] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = HDInsertDeleteAndAssociateObjectsOperation;
  v5 = [(HDInsertDeleteAndAssociateObjectsOperation *)&v22 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v25[2] = objc_opt_class();
    v25[3] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"objectsToInsertByDataProvenance"];
    objectsToInsertByDataProvenance = v5->_objectsToInsertByDataProvenance;
    v5->_objectsToInsertByDataProvenance = v9;

    v11 = MEMORY[0x277CBEB98];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"objectsToDelete"];
    objectsToDelete = v5->_objectsToDelete;
    v5->_objectsToDelete = v14;

    v16 = MEMORY[0x277CBEB98];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v23[2] = objc_opt_class();
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
    v18 = [v16 setWithArray:v17];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"associations"];
    associations = v5->_associations;
    v5->_associations = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  objectsToInsertByDataProvenance = self->_objectsToInsertByDataProvenance;
  coderCopy = coder;
  [coderCopy encodeObject:objectsToInsertByDataProvenance forKey:@"objectsToInsertByDataProvenance"];
  [coderCopy encodeObject:self->_objectsToDelete forKey:@"objectsToDelete"];
  [coderCopy encodeObject:self->_associations forKey:@"associations"];
}

@end