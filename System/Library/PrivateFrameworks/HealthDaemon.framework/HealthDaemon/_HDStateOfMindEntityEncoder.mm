@interface _HDStateOfMindEntityEncoder
- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error;
- (id)createBareObjectWithRow:(HDSQLiteRow *)row;
- (id)orderedProperties;
@end

@implementation _HDStateOfMindEntityEncoder

- (id)orderedProperties
{
  v8[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"reflective_interval";
  v8[1] = @"valence";
  v8[2] = @"context";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  orderedProperties = [superclassEncoder orderedProperties];
  v6 = [v3 arrayByAddingObjectsFromArray:orderedProperties];

  return v6;
}

- (id)createBareObjectWithRow:(HDSQLiteRow *)row
{
  _init = [objc_alloc(MEMORY[0x277CCDA30]) _init];

  return _init;
}

- (id)codableRepresentationForPersistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  transaction = [(HDEntityEncoder *)self transaction];
  v10 = [HDStateOfMindLabelEntity labelsForObjectID:d transaction:transaction error:error];

  if (v10)
  {
    transaction2 = [(HDEntityEncoder *)self transaction];
    v12 = [HDStateOfMindDomainEntity domainsForObjectID:d transaction:transaction2 error:error];

    if (v12)
    {
      superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
      v14 = [superclassEncoder codableRepresentationForPersistentID:d row:row error:error];

      if (v14)
      {
        v15 = objc_alloc_init(HDCodableStateOfMind);
        [(HDCodableStateOfMind *)v15 setSample:v14];
        [(HDCodableStateOfMind *)v15 setReflectiveInterval:HDSQLiteColumnWithNameAsInt64()];
        HDSQLiteColumnWithNameAsDouble();
        [(HDCodableStateOfMind *)v15 setValence:?];
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v16 = v10;
        v17 = [v16 countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v33;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v33 != v19)
              {
                objc_enumerationMutation(v16);
              }

              -[HDCodableStateOfMind addLabels:](v15, "addLabels:", [*(*(&v32 + 1) + 8 * i) longLongValue]);
            }

            v18 = [v16 countByEnumeratingWithState:&v32 objects:v37 count:16];
          }

          while (v18);
        }

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v21 = v12;
        v22 = [v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v29;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v29 != v24)
              {
                objc_enumerationMutation(v21);
              }

              -[HDCodableStateOfMind addDomains:](v15, "addDomains:", [*(*(&v28 + 1) + 8 * j) longLongValue]);
            }

            v23 = [v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v23);
        }

        v26 = HDSQLiteColumnWithNameAsString();
        if (v26)
        {
          [(HDCodableStateOfMind *)v15 setContext:v26];
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)applyPropertiesToObject:(id)object persistentID:(int64_t)d row:(HDSQLiteRow *)row error:(id *)error
{
  objectCopy = object;
  superclassEncoder = [(HDEntityEncoder *)self superclassEncoder];
  v12 = [superclassEncoder applyPropertiesToObject:objectCopy persistentID:d row:row error:error];

  if (v12)
  {
    transaction = [(HDEntityEncoder *)self transaction];
    v14 = [HDStateOfMindLabelEntity labelsForObjectID:d transaction:transaction error:error];

    if (v14)
    {
      transaction2 = [(HDEntityEncoder *)self transaction];
      v16 = [HDStateOfMindDomainEntity domainsForObjectID:d transaction:transaction2 error:error];

      v17 = v16 != 0;
      if (v16)
      {
        HDSQLiteColumnWithNameAsInt64();
        [objectCopy _setKind:HKStateOfMindKindFromReflectiveInterval()];
        HDSQLiteColumnWithNameAsDouble();
        [objectCopy _setValence:?];
        v18 = HDSQLiteColumnWithNameAsString();
        [objectCopy _setContext:v18];

        [objectCopy _setLabels:v14];
        v19 = [v16 hk_map:&__block_literal_global_202];
        [objectCopy _setAssociations:v19];
      }
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

@end