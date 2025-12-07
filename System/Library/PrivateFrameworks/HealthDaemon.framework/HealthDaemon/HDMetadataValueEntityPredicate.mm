@interface HDMetadataValueEntityPredicate
+ (id)_predicateWithMetadataKey:(void *)key valuesWithinRange:;
+ (id)predicateWithMetadataKey:(id)key allowedValues:(id)values;
+ (id)predicateWithMetadataKey:(id)key exists:(BOOL)exists;
+ (id)predicateWithMetadataKey:(id)key value:(id)value operatorType:(unint64_t)type;
+ (void)_predicateWithMetadataKey:(char)key exists:;
+ (void)_predicateWithMetadataKey:(void *)key allowedValues:;
+ (void)_predicateWithMetadataKey:(void *)key value:(uint64_t)value operatorType:;
- (NSString)description;
- (id)SQLForEntityClass:(Class)class;
- (id)_valuePredicateForValue:(uint64_t)value operatorType:;
- (void)bindToStatement:(sqlite3_stmt *)statement bindingIndex:(int *)index;
@end

@implementation HDMetadataValueEntityPredicate

+ (id)predicateWithMetadataKey:(id)key allowedValues:(id)values
{
  v40 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valuesCopy = values;
  v8 = HKMetadataAliasesForKey();
  v9 = 0x277CBE000uLL;
  if ([v8 count])
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v11 = [(HDMetadataValueEntityPredicate *)self _predicateWithMetadataKey:keyCopy allowedValues:valuesCopy];
    [v10 addObject:v11];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v30 = v8;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v34 + 1) + 8 * i);
          v18 = [v12 objectForKeyedSubscript:v17];
          v19 = [(HDMetadataValueEntityPredicate *)self _predicateWithMetadataKey:v17 allowedValues:v18];
          [v10 addObject:v19];
        }

        v14 = [v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v14);
    }

    v20 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v10];

    v8 = v30;
    v9 = 0x277CBE000;
  }

  else
  {
    v20 = 0;
  }

  v21 = HKMetadataAliasRangesForKey();
  if (![v21 count])
  {
    if (v20)
    {
      v25 = 0;
      goto LABEL_18;
    }

    goto LABEL_24;
  }

  v22 = objc_alloc_init(*(v9 + 2840));
  v23 = [(HDMetadataValueEntityPredicate *)self _predicateWithMetadataKey:keyCopy allowedValues:valuesCopy];
  [v22 addObject:v23];

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __73__HDMetadataValueEntityPredicate_predicateWithMetadataKey_allowedValues___block_invoke;
  v31[3] = &unk_27861FD28;
  v32 = v22;
  selfCopy = self;
  v24 = v22;
  [v21 enumerateKeysAndObjectsUsingBlock:v31];
  v25 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v24];

  if (v20 && v25)
  {
    v26 = MEMORY[0x277D10B20];
    v38[0] = v20;
    v38[1] = v25;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
    v28 = [v26 predicateMatchingAnyPredicates:v27];

LABEL_19:
    v25 = v28;
    goto LABEL_20;
  }

  if (v20)
  {
LABEL_18:
    v28 = v20;
    goto LABEL_19;
  }

  if (!v25)
  {
LABEL_24:
    v25 = [(HDMetadataValueEntityPredicate *)self _predicateWithMetadataKey:keyCopy allowedValues:valuesCopy];
  }

LABEL_20:

  return v25;
}

+ (void)_predicateWithMetadataKey:(void *)key allowedValues:
{
  keyCopy = key;
  v5 = a2;
  objc_opt_self();
  v6 = objc_alloc_init(objc_opt_class());
  v7 = HDMetadataKeyPredicateForKey(v5);

  v8 = v6[1];
  v6[1] = v7;

  v9 = [(HDMetadataValueEntityPredicate *)v6 _valuePredicateForValue:keyCopy operatorType:10];

  v10 = v6[2];
  v6[2] = v9;

  *(v6 + 24) = 0;

  return v6;
}

void __73__HDMetadataValueEntityPredicate_predicateWithMetadataKey_allowedValues___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(a1 + 32);
        v12 = [(HDMetadataValueEntityPredicate *)*(a1 + 40) _predicateWithMetadataKey:v5 valuesWithinRange:*(*(&v13 + 1) + 8 * v10)];
        [v11 addObject:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

+ (id)_predicateWithMetadataKey:(void *)key valuesWithinRange:
{
  v15[2] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = a2;
  v6 = objc_opt_self();
  minValue = [keyCopy minValue];
  v8 = [(HDMetadataValueEntityPredicate *)v6 _predicateWithMetadataKey:v5 value:minValue operatorType:3];

  maxValue = [keyCopy maxValue];

  v10 = [(HDMetadataValueEntityPredicate *)v6 _predicateWithMetadataKey:v5 value:maxValue operatorType:0];

  v11 = MEMORY[0x277D10B20];
  v15[0] = v8;
  v15[1] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v13 = [v11 predicateMatchingAllPredicates:v12];

  return v13;
}

+ (id)predicateWithMetadataKey:(id)key value:(id)value operatorType:(unint64_t)type
{
  v73 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  valueCopy = value;
  if (valueCopy)
  {
    [MEMORY[0x277CBEB98] setWithObject:valueCopy];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v10 = ;
  v11 = HKMetadataAliasesForKey();
  v49 = v11;
  v50 = valueCopy;
  v46 = v10;
  v47 = keyCopy;
  if ([v11 count])
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = [(HDMetadataValueEntityPredicate *)self _predicateWithMetadataKey:keyCopy value:valueCopy operatorType:type];
    [v12 addObject:v13];

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v14 = v11;
    v52 = [v14 countByEnumeratingWithState:&v58 objects:v72 count:16];
    if (v52)
    {
      v15 = *v59;
      v48 = v14;
      v51 = *v59;
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v59 != v15)
          {
            objc_enumerationMutation(v14);
          }

          v17 = *(*(&v58 + 1) + 8 * i);
          v18 = [v14 objectForKeyedSubscript:{v17, v46}];
          v19 = [v18 count];
          v53 = v18;
          if (valueCopy || v19)
          {
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            v20 = v18;
            v21 = [v20 countByEnumeratingWithState:&v54 objects:v71 count:16];
            if (v21)
            {
              v22 = v21;
              v23 = *v55;
              do
              {
                for (j = 0; j != v22; ++j)
                {
                  if (*v55 != v23)
                  {
                    objc_enumerationMutation(v20);
                  }

                  v25 = [(HDMetadataValueEntityPredicate *)self _predicateWithMetadataKey:v17 value:*(*(&v54 + 1) + 8 * j) operatorType:type];
                  [v12 addObject:v25];
                }

                v22 = [v20 countByEnumeratingWithState:&v54 objects:v71 count:16];
              }

              while (v22);
              v11 = v49;
              valueCopy = v50;
              v14 = v48;
            }

            v15 = v51;
          }

          else
          {
            v20 = [(HDMetadataValueEntityPredicate *)self _predicateWithMetadataKey:v17 value:0 operatorType:type];
            [v12 addObject:v20];
          }
        }

        v52 = [v14 countByEnumeratingWithState:&v58 objects:v72 count:16];
      }

      while (v52);
    }

    if (valueCopy && type == 5)
    {
      v26 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v12];
    }

    else
    {
      v26 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:{v12, v46}];
    }

    v27 = v26;

    keyCopy = v47;
  }

  else
  {
    v27 = 0;
  }

  v28 = HKMetadataAliasRangesForKey();
  if (![v28 count])
  {
    if (v27)
    {
      v33 = 0;
LABEL_51:
      v43 = v27;

      v33 = v43;
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v29 = v28;
  v30 = objc_opt_self();
  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __84__HDMetadataValueEntityPredicate__predicateWithMetadataKeyAliasRanges_operatorType___block_invoke;
  v62[3] = &unk_27861FD50;
  v63 = v31;
  typeCopy = type;
  v65 = v30;
  v66 = sel__predicateWithMetadataKeyAliasRanges_operatorType_;
  v32 = v31;
  [v29 enumerateKeysAndObjectsUsingBlock:v62];

  if (type == 5)
  {
    [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v32];
  }

  else
  {
    [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v32];
  }
  v34 = ;

  v35 = [(HDMetadataValueEntityPredicate *)self _predicateWithMetadataKey:keyCopy value:valueCopy operatorType:type];
  v36 = v35;
  if (valueCopy)
  {
    v37 = type == 5;
  }

  else
  {
    v37 = 0;
  }

  v38 = v37;
  v39 = MEMORY[0x277D10B20];
  if (v37)
  {
    v70[0] = v34;
    v70[1] = v35;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
    [v39 predicateMatchingAllPredicates:v40];
  }

  else
  {
    v69[0] = v34;
    v69[1] = v35;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:2];
    [v39 predicateMatchingAnyPredicates:v40];
  }
  v33 = ;

  if (v27 && v33)
  {
    v41 = MEMORY[0x277D10B20];
    valueCopy = v50;
    if (v38)
    {
      v68[0] = v27;
      v68[1] = v33;
      v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
      [v41 predicateMatchingAllPredicates:v42];
    }

    else
    {
      v67[0] = v27;
      v67[1] = v33;
      v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];
      [v41 predicateMatchingAnyPredicates:v42];
    }
    v44 = ;

    v33 = v44;
    v11 = v49;
    goto LABEL_56;
  }

  valueCopy = v50;
  if (v27)
  {
    v11 = v49;
    goto LABEL_51;
  }

  v11 = v49;
  if (!v33)
  {
LABEL_55:
    v33 = [(HDMetadataValueEntityPredicate *)self _predicateWithMetadataKey:v47 value:valueCopy operatorType:type];
  }

LABEL_56:

  return v33;
}

+ (void)_predicateWithMetadataKey:(void *)key value:(uint64_t)value operatorType:
{
  keyCopy = key;
  v7 = a2;
  objc_opt_self();
  v8 = objc_alloc_init(objc_opt_class());
  v9 = HDMetadataKeyPredicateForKey(v7);

  v10 = v8[1];
  v8[1] = v9;

  v11 = [(HDMetadataValueEntityPredicate *)v8 _valuePredicateForValue:keyCopy operatorType:value];
  v12 = v8[2];
  v8[2] = v11;

  if (keyCopy)
  {
    v13 = value == 5;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  *(v8 + 24) = v14;

  return v8;
}

void __84__HDMetadataValueEntityPredicate__predicateWithMetadataKeyAliasRanges_operatorType___block_invoke(void *a1, void *a2, void *a3)
{
  v44[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    v36 = v5;
    v37 = *v39;
    v33 = v6;
    do
    {
      v10 = 0;
      do
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v38 + 1) + 8 * v10);
        v12 = a1[5];
        if (v12 <= 2)
        {
          if ((v12 - 1) < 2)
          {
            v13 = a1[4];
            v14 = a1[6];
            v15 = [*(*(&v38 + 1) + 8 * v10) maxValue];
LABEL_15:
            v17 = v15;
            v19 = [(HDMetadataValueEntityPredicate *)v14 _predicateWithMetadataKey:v5 value:v15 operatorType:a1[5]];
            [v13 addObject:v19];

            goto LABEL_16;
          }

          if (!v12)
          {
LABEL_14:
            v13 = a1[4];
            v14 = a1[6];
            v15 = [*(*(&v38 + 1) + 8 * v10) minValue];
            goto LABEL_15;
          }

          goto LABEL_18;
        }

        if (v12 == 3)
        {
          goto LABEL_14;
        }

        if (v12 != 5)
        {
          if (v12 == 4)
          {
            v16 = a1[4];
            v17 = [(HDMetadataValueEntityPredicate *)a1[6] _predicateWithMetadataKey:v5 valuesWithinRange:*(*(&v38 + 1) + 8 * v10)];
            v18 = v16;
            v9 = v37;
            [v18 addObject:v17];
            goto LABEL_16;
          }

LABEL_18:
          v17 = [MEMORY[0x277CCA890] currentHandler];
          [v17 handleFailureInMethod:a1[7] object:a1[6] file:@"HDMetadataValueEntity.m" lineNumber:455 description:@"Unsupported operator type for aliased value range"];
          goto LABEL_16;
        }

        v34 = MEMORY[0x277D10B20];
        v35 = a1[4];
        v17 = [(HDMetadataValueEntityPredicate *)a1[6] _predicateWithMetadataKey:v5 exists:0];
        v42[0] = v17;
        v20 = v11;
        v21 = v36;
        v22 = objc_opt_self();
        v23 = [v20 minValue];
        v24 = [(HDMetadataValueEntityPredicate *)v22 _predicateWithMetadataKey:v21 value:v23 operatorType:0];

        v25 = [v20 maxValue];

        v26 = [(HDMetadataValueEntityPredicate *)v22 _predicateWithMetadataKey:v21 value:v25 operatorType:3];

        v9 = v37;
        v27 = MEMORY[0x277D10B20];
        v44[0] = v24;
        v44[1] = v26;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
        v29 = [v27 predicateMatchingAnyPredicates:v28];

        v42[1] = v29;
        v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
        v31 = [v34 predicateMatchingAnyPredicates:v30];
        [v35 addObject:v31];

        v5 = v36;
        v6 = v33;

LABEL_16:
        ++v10;
      }

      while (v8 != v10);
      v32 = [v6 countByEnumeratingWithState:&v38 objects:v43 count:16];
      v8 = v32;
    }

    while (v32);
  }
}

+ (void)_predicateWithMetadataKey:(char)key exists:
{
  v4 = a2;
  objc_opt_self();
  v5 = objc_alloc_init(objc_opt_class());
  v6 = HDMetadataKeyPredicateForKey(v4);

  v7 = v5[1];
  v5[1] = v6;

  v8 = v5[2];
  v5[2] = 0;

  *(v5 + 24) = key ^ 1;

  return v5;
}

+ (id)predicateWithMetadataKey:(id)key exists:(BOOL)exists
{
  v31 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v7 = HKMetadataAliasesForKey();
  allKeys = [v7 allKeys];

  v9 = HKMetadataAliasRangesForKey();
  allKeys2 = [v9 allKeys];

  v11 = MEMORY[0x277CBEB98];
  v12 = [allKeys arrayByAddingObjectsFromArray:allKeys2];
  v13 = [v11 setWithArray:v12];

  if ([v13 count])
  {
    v24 = allKeys2;
    v25 = allKeys;
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = [(HDMetadataValueEntityPredicate *)self _predicateWithMetadataKey:keyCopy exists:exists];
    [v14 addObject:v15];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = v13;
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [(HDMetadataValueEntityPredicate *)self _predicateWithMetadataKey:exists exists:?];
          [v14 addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v18);
    }

    if (exists)
    {
      [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v14];
    }

    else
    {
      [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v14];
    }
    v22 = ;
    allKeys2 = v24;
    allKeys = v25;
  }

  else
  {
    v22 = [(HDMetadataValueEntityPredicate *)self _predicateWithMetadataKey:keyCopy exists:exists];
  }

  return v22;
}

- (id)_valuePredicateForValue:(uint64_t)value operatorType:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    if (value == 10)
    {
      HDPredicateForMetadataValues(v5);
    }

    else
    {
      v7 = HDSQLiteComparisonTypeForPredicateOperator();
      HDPredicateForMetadataValue(v6, v7);
    }
    v8 = ;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)SQLForEntityClass:(Class)class
{
  entityClassForEnumeration = [(objc_class *)class entityClassForEnumeration];
  v5 = *MEMORY[0x277D10A40];
  v20 = [entityClassForEnumeration disambiguatedSQLForProperty:*MEMORY[0x277D10A40]];
  v21 = [(HDSQLiteSchemaEntity *)HDMetadataValueEntity disambiguatedSQLForProperty:@"object_id"];
  v6 = +[(HDSQLiteSchemaEntity *)HDMetadataValueEntity];
  v7 = +[(HDSQLiteSchemaEntity *)HDMetadataKeyEntity];
  v8 = [(HDSQLiteSchemaEntity *)HDMetadataValueEntity disambiguatedSQLForProperty:@"key_id"];
  v9 = [(HDSQLiteSchemaEntity *)HDMetadataKeyEntity disambiguatedSQLForProperty:v5];
  v10 = [(HDSQLitePredicate *)self->_keyPredicate SQLForEntityClass:objc_opt_class()];
  v11 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", @"(");
  selfCopy = self;
  valuePredicate = self->_valuePredicate;
  if (!valuePredicate)
  {
    v16 = v20;
    v15 = v21;
    selfCopy2 = selfCopy;
    goto LABEL_9;
  }

  v13 = [(HDSQLitePredicate *)valuePredicate SQLForEntityClass:objc_opt_class()];
  [v11 appendFormat:@"EXISTS (SELECT 1 FROM %@ INNER JOIN %@ ON %@=%@ WHERE ((%@=%@) AND %@ AND (%@)))", v6, v7, v8, v9, v20, v21, v10, v13];

  selfCopy2 = self;
  if (self->_matchObjectsWithoutKey)
  {
    [v11 appendString:@" OR "];
  }

  if (!self->_valuePredicate)
  {
    v16 = v20;
    v15 = v21;
    goto LABEL_9;
  }

  v16 = v20;
  v15 = v21;
  if (selfCopy->_matchObjectsWithoutKey)
  {
LABEL_9:
    if (selfCopy2->_matchObjectsWithoutKey)
    {
      v17 = @"NOT EXISTS";
    }

    else
    {
      v17 = @"EXISTS";
    }

    [v11 appendFormat:@"%@ (SELECT 1 FROM %@ INNER JOIN %@ ON %@=%@ WHERE ((%@=%@) AND %@))", v17, v6, v7, v8, v9, v16, v15, v10];
  }

  [v11 appendString:@""]);

  return v11;
}

- (void)bindToStatement:(sqlite3_stmt *)statement bindingIndex:(int *)index
{
  [HDSQLitePredicate bindToStatement:"bindToStatement:bindingIndex:" bindingIndex:?];
  valuePredicate = self->_valuePredicate;
  if (valuePredicate)
  {
    [(HDSQLitePredicate *)valuePredicate bindToStatement:statement bindingIndex:index];
    if (self->_matchObjectsWithoutKey)
    {
      keyPredicate = self->_keyPredicate;

      [(HDSQLitePredicate *)keyPredicate bindToStatement:statement bindingIndex:index];
    }
  }
}

- (NSString)description
{
  valuePredicate = self->_valuePredicate;
  if (valuePredicate)
  {
    if (self->_matchObjectsWithoutKey)
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = [(HDSQLitePredicate *)valuePredicate description];
      v6 = [v4 stringWithFormat:@"(key does not exist OR %@)", v5];

      goto LABEL_10;
    }

    v8 = [(HDSQLitePredicate *)valuePredicate description];
  }

  else
  {
    if (self->_matchObjectsWithoutKey)
    {
      v7 = @"does not exist";
    }

    else
    {
      v7 = @"exists";
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(key %@)", v7];
  }

  v6 = v8;
LABEL_10:
  v9 = MEMORY[0x277CCACA8];
  v10 = [(HDSQLitePredicate *)self->_keyPredicate description];
  v11 = [v9 stringWithFormat:@"<metadata: %@ AND %@>", v10, v6];

  return v11;
}

@end