@interface VSKeychainEditingContext
- (BOOL)save:(id *)save;
- (VSKeychainEditingContext)init;
- (VSKeychainStore)keychainStore;
- (id)_deleteQueryForItemValues:(id)values withItemKind:(id)kind;
- (id)_findOrCreateItemForCommittedValues:(id)values withItemKind:(id)kind;
- (id)_queryForItemValues:(id)values withItemKind:(id)kind;
- (id)_subsetOfRegisteredItemsWithKeyPath:(id)path;
- (id)executeFetchRequest:(id)request error:(id *)error;
- (void)_populateErrors:(id)errors withError:(id)error affectingItem:(id)item;
- (void)_populateQuery:(__CFDictionary *)query usingPredicate:(id)predicate withItemKind:(id)kind;
- (void)_populateResult:(id)result forRequest:(id)request fromMatch:(id)match;
- (void)deleteItem:(id)item;
- (void)fulfillFault:(id)fault;
- (void)insertItem:(id)item;
@end

@implementation VSKeychainEditingContext

- (VSKeychainEditingContext)init
{
  v6.receiver = self;
  v6.super_class = VSKeychainEditingContext;
  v2 = [(VSKeychainEditingContext *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    items = v2->_items;
    v2->_items = v3;
  }

  return v2;
}

- (void)_populateQuery:(__CFDictionary *)query usingPredicate:(id)predicate withItemKind:(id)kind
{
  v79 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  kindCopy = kind;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = MEMORY[0x277CBEAD8];
      v11 = *MEMORY[0x277CBE660];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      [v10 raise:v11 format:{@"Unexpectedly, predicate was %@, instead of NSCompoundPredicate.", v13}];
    }

    v14 = predicateCopy;
    if ([v14 compoundPredicateType] != 1)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported compound predicate: %@", v14}];
    }

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    subpredicates = [v14 subpredicates];
    v16 = [subpredicates countByEnumeratingWithState:&v73 objects:v78 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v74;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v74 != v18)
          {
            objc_enumerationMutation(subpredicates);
          }

          [(VSKeychainEditingContext *)self _populateQuery:query usingPredicate:*(*(&v73 + 1) + 8 * i) withItemKind:kindCopy];
        }

        v17 = [subpredicates countByEnumeratingWithState:&v73 objects:v78 count:16];
      }

      while (v17);
    }

    goto LABEL_61;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = MEMORY[0x277CBEAD8];
      v21 = *MEMORY[0x277CBE660];
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      [v20 raise:v21 format:{@"Unexpectedly, predicate was %@, instead of NSComparisonPredicate.", v23}];
    }

    v24 = predicateCopy;
    leftExpression = [v24 leftExpression];
    rightExpression = [v24 rightExpression];
    expressionType = [leftExpression expressionType];
    expressionType2 = [rightExpression expressionType];
    v66 = rightExpression;
    if ((expressionType != 3 || (v29 = rightExpression, v30 = leftExpression, expressionType2)) && (expressionType || (v29 = leftExpression, v30 = rightExpression, expressionType2 != 3)))
    {
      v33 = *MEMORY[0x277CBE660];
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported expressions in comparison predicate: %@", v24}];
      v29 = 0;
    }

    else
    {
      v31 = leftExpression;
      v32 = rightExpression;
      if (v30)
      {
        goto LABEL_28;
      }

      v33 = *MEMORY[0x277CBE660];
    }

    [MEMORY[0x277CBEAD8] raise:v33 format:@"The keyPathExpressionOrNil parameter must not be nil."];
    v30 = 0;
LABEL_28:
    v36 = leftExpression;
    v37 = v30;
    if (!v29)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The constantExpressionOrNil parameter must not be nil."];
    }

    v38 = v29;
    keyPath = [v37 keyPath];
    if (!keyPath || ([kindCopy attributesByName], v40 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v40, "objectForKey:", keyPath), v41 = objc_claimAutoreleasedReturnValue(), v40, !v41))
    {
      v42 = *MEMORY[0x277CBE660];
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unknown keypath %@ for item kind %@", keyPath, kindCopy}];
      [MEMORY[0x277CBEAD8] raise:v42 format:@"The attributeOrNil parameter must not be nil."];
      v41 = 0;
    }

    v65 = keyPath;
    v43 = v41;
    constantValue = [v38 constantValue];
    v68 = v43;
    attributeValueClassName = [v43 attributeValueClassName];
    NSClassFromString(attributeValueClassName);

    predicateOperatorType = [v24 predicateOperatorType];
    if (predicateOperatorType == 10)
    {
      v46 = v36;
      v52 = v36 == v37;
      v47 = v66;
      if (v52 && v66 == v38)
      {
        v53 = constantValue;
        if (![constantValue conformsToProtocol:&unk_284E09B08])
        {
          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unable to enumerate constant value: %@", constantValue}];
          v51 = v65;
          goto LABEL_60;
        }

        v61 = v37;
        v62 = v46;
        v63 = v24;
        v64 = predicateCopy;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v54 = constantValue;
        v55 = [v54 countByEnumeratingWithState:&v69 objects:v77 count:16];
        if (v55)
        {
          v56 = v55;
          v57 = *v70;
          v58 = *MEMORY[0x277CBE660];
          do
          {
            for (j = 0; j != v56; ++j)
            {
              if (*v70 != v57)
              {
                objc_enumerationMutation(v54);
              }

              v60 = *(*(&v69 + 1) + 8 * j);
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                [MEMORY[0x277CBEAD8] raise:v58 format:{@"Unexpected value %@ for attribute %@", v60, v68}];
              }
            }

            v56 = [v54 countByEnumeratingWithState:&v69 objects:v77 count:16];
          }

          while (v56);
        }

        v24 = v63;
        predicateCopy = v64;
        v37 = v61;
        v46 = v62;
        v47 = v66;
      }

      else
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported left (%@) and right (%@) expressions for IN operator.", v46, v66}];
      }

      v51 = v65;
    }

    else
    {
      v46 = v36;
      if (predicateOperatorType == 4)
      {
        v47 = v66;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unexpected value %@ for attribute %@", constantValue, v68}];
        }

        secItemAttributeKey = [v68 secItemAttributeKey];
        v49 = constantValue;
        if (CFDictionaryContainsKey(query, secItemAttributeKey))
        {
          Value = CFDictionaryGetValue(query, secItemAttributeKey);
          v51 = v65;
          if (!CFEqual(Value, v49))
          {
            CFRelease(v49);
            [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Duplicative predicate for key path %@", v65}];
          }
        }

        else
        {
          CFDictionarySetValue(query, secItemAttributeKey, v49);
          v51 = v65;
        }

        CFRelease(v49);
      }

      else
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported operator type (%lu) in comparison predicate: %@", predicateOperatorType, v24}];
        v51 = v65;
        v47 = v66;
      }
    }

    v53 = constantValue;
LABEL_60:

    goto LABEL_61;
  }

  v34 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  v35 = [predicateCopy isEqual:v34];

  if (predicateCopy && (v35 & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Unsupported predicate: %@", predicateCopy}];
  }

LABEL_61:
}

- (id)_findOrCreateItemForCommittedValues:(id)values withItemKind:(id)kind
{
  v27 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  kindCopy = kind;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  items = [(VSKeychainEditingContext *)self items];
  v9 = [items countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v23 != v11)
      {
        objc_enumerationMutation(items);
      }

      v13 = *(*(&v22 + 1) + 8 * v12);
      committedValues = [v13 committedValues];
      v15 = [committedValues isEqual:valuesCopy];

      if (v15)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [items countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v16 = v13;

    if (v16)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_9:
  }

  itemClassName = [kindCopy itemClassName];
  v18 = NSClassFromString(itemClassName);

  v16 = [[v18 alloc] initWithItemKind:kindCopy insertIntoEditingContext:0];
  [v16 setEditingContext:self];
  [v16 setHasFaultForData:1];
  items2 = [(VSKeychainEditingContext *)self items];
  [items2 addObject:v16];

  [v16 _setCommittedValues:valuesCopy registeringUndo:0];
  v20 = [valuesCopy mutableCopy];
  [v16 setPrimitiveValues:v20];

  if (!v16)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The itemOrNil parameter must not be nil."];
  }

LABEL_13:

  return v16;
}

- (void)_populateResult:(id)result forRequest:(id)request fromMatch:(id)match
{
  selfCopy = self;
  v32 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  requestCopy = request;
  matchCopy = match;
  predicate = [requestCopy predicate];
  v25 = requestCopy;
  itemKind = [requestCopy itemKind];
  forceUnwrapObject = [itemKind forceUnwrapObject];

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  properties = [forceUnwrapObject properties];
  v13 = [properties countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(properties);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        name = [v17 name];
        defaultValue = [v17 defaultValue];
        v20 = [matchCopy objectForKey:{objc_msgSend(v17, "secItemAttributeKey")}];
        v21 = v20;
        if (v20 || (v21 = defaultValue) != 0)
        {
          [v11 setObject:v21 forKey:name];
        }
      }

      v14 = [properties countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v14);
  }

  v22 = [(VSKeychainEditingContext *)selfCopy _findOrCreateItemForCommittedValues:v11 withItemKind:forceUnwrapObject];
  if ([predicate evaluateWithObject:v22])
  {
    [resultCopy addObject:v22];
  }
}

- (id)_queryForItemValues:(id)values withItemKind:(id)kind
{
  v23 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  kindCopy = kind;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  properties = [kindCopy properties];
  v9 = [properties countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(properties);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        secItemAttributeKey = [v13 secItemAttributeKey];
        name = [v13 name];
        v16 = [valuesCopy objectForKey:name];
        if (v16)
        {
          [v7 setObject:v16 forKey:secItemAttributeKey];
        }
      }

      v10 = [properties countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)_deleteQueryForItemValues:(id)values withItemKind:(id)kind
{
  v26[3] = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  kindCopy = kind;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = objc_alloc(MEMORY[0x277CBEB98]);
  v26[0] = @"accessGroup";
  v26[1] = @"creatorCode";
  v26[2] = @"creationDate";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:3];
  v10 = [v8 initWithArray:v9];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = kindCopy;
  properties = [kindCopy properties];
  v12 = [properties countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(properties);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        name = [v16 name];
        if ([v10 containsObject:name])
        {
          v18 = [valuesCopy objectForKey:name];
          if (v18)
          {
            [v7 setObject:v18 forKey:{objc_msgSend(v16, "secItemAttributeKey")}];
          }
        }
      }

      v13 = [properties countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  [v7 setObject:*MEMORY[0x277CDC148] forKey:*MEMORY[0x277CDC140]];

  return v7;
}

- (void)_populateErrors:(id)errors withError:(id)error affectingItem:(id)item
{
  itemCopy = item;
  errorCopy = error;
  errorsCopy = errors;
  userInfo = [errorCopy userInfo];
  v15 = [userInfo mutableCopy];

  [v15 setObject:itemCopy forKey:@"VSKeychainAffectedItemsKey"];
  v11 = MEMORY[0x277CCA9B8];
  domain = [errorCopy domain];
  code = [errorCopy code];

  v14 = [v11 errorWithDomain:domain code:code userInfo:v15];
  [errorsCopy addObject:v14];
}

- (void)fulfillFault:(id)fault
{
  faultCopy = fault;
  if (([faultCopy hasFaultForData] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Item must have a fault for its data."];
  }

  itemKind = [faultCopy itemKind];
  committedValues = [faultCopy committedValues];
  v7 = [(VSKeychainEditingContext *)self _queryForItemValues:committedValues withItemKind:itemKind];

  secItemClass = [itemKind secItemClass];
  [v7 setObject:secItemClass forKey:*MEMORY[0x277CDC228]];
  [v7 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDC558]];
  keychainStore = [(VSKeychainEditingContext *)self keychainStore];
  v20 = 0;
  v10 = [keychainStore findItemsMatchingQuery:v7 error:&v20];
  v11 = v20;

  if (v10)
  {
    v13 = v10;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ![v13 count])
    {
      v19 = VSErrorLogObject(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [VSKeychainEditingContext fulfillFault:];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
        primitiveValues = [faultCopy primitiveValues];
        v16 = [v14 copy];
        [primitiveValues setObject:v16 forKey:@"data"];

        committedValues2 = [faultCopy committedValues];
        v18 = [v14 copy];

        [committedValues2 setObject:v18 forKey:@"data"];
        [faultCopy setHasFaultForData:0];
      }

      else
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Unexpected result type."];
      }
    }
  }

  else
  {
    v13 = VSErrorLogObject(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [VSKeychainEditingContext fulfillFault:];
    }
  }
}

- (id)executeFetchRequest:(id)request error:(id *)error
{
  v68 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  itemKind = [requestCopy itemKind];
  forceUnwrapObject = [itemKind forceUnwrapObject];

  CFDictionarySetValue(Mutable, *MEMORY[0x277CDC228], [forceUnwrapObject secItemClass]);
  predicate = [requestCopy predicate];
  [(VSKeychainEditingContext *)self _populateQuery:Mutable usingPredicate:predicate withItemKind:forceUnwrapObject];
  v11 = *MEMORY[0x277CDC140];
  if (!CFDictionaryContainsKey(Mutable, *MEMORY[0x277CDC140]))
  {
    CFDictionarySetValue(Mutable, v11, *MEMORY[0x277CDC148]);
  }

  fetchLimit = [requestCopy fetchLimit];
  CFDictionarySetValue(Mutable, *MEMORY[0x277CDC428], *MEMORY[0x277CDC430]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CDC550], *MEMORY[0x277CBED28]);
  keychainStore = [(VSKeychainEditingContext *)self keychainStore];
  v65 = 0;
  v13 = [keychainStore findItemsMatchingQuery:Mutable error:&v65];
  v14 = v65;

  if (v13)
  {
    v55 = requestCopy;
    v15 = v13;
    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objc_opt_class();
    v54 = v16;
    v50 = v15;
    v51 = v14;
    if (objc_opt_isKindOfClass())
    {
      selfCopy = self;
      v49 = forceUnwrapObject;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v17 = MEMORY[0x277CBEAD8];
        v18 = *MEMORY[0x277CBE660];
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = v17;
        v16 = v54;
        [v21 raise:v18 format:{@"Unexpectedly, result was %@, instead of NSArray.", v20}];
      }

      v22 = v15;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v23 = [v22 countByEnumeratingWithState:&v61 objects:v67 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v62;
        v26 = *MEMORY[0x277CBE658];
        v53 = *MEMORY[0x277CBE660];
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v62 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v28 = *(*(&v61 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v29 = MEMORY[0x277CBEAD8];
                v30 = objc_opt_class();
                v31 = NSStringFromClass(v30);
                v32 = v29;
                requestCopy = v55;
                [v32 raise:v53 format:{@"Unexpectedly, matchingValue was %@, instead of NSDictionary.", v31}];

                v16 = v54;
              }

              [(VSKeychainEditingContext *)selfCopy _populateResult:v16 forRequest:requestCopy fromMatch:v28];
            }

            else
            {
              [MEMORY[0x277CBEAD8] raise:v26 format:{@"Unexpected matching value: %@", v28}];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v61 objects:v67 count:16];
        }

        while (v24);
      }

      forceUnwrapObject = v49;
      self = selfCopy;
      v14 = v51;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v34 = MEMORY[0x277CBEAD8];
          v35 = *MEMORY[0x277CBE660];
          v36 = objc_opt_class();
          v37 = NSStringFromClass(v36);
          v38 = v35;
          v16 = v54;
          [v34 raise:v38 format:{@"Unexpectedly, result was %@, instead of NSDictionary.", v37}];
        }

        requestCopy = v55;
        [(VSKeychainEditingContext *)self _populateResult:v16 forRequest:v55 fromMatch:v15];
      }

      else
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Unexpected match result: %@", v15}];
      }
    }

    sortDescriptors = [requestCopy sortDescriptors];
    if (sortDescriptors)
    {
      [v16 sortUsingDescriptors:sortDescriptors];
    }

    v40 = [v16 count];
    if (fetchLimit && v40 > fetchLimit)
    {
      [v16 removeObjectsInRange:{fetchLimit, v40 - fetchLimit}];
    }

    if ([requestCopy includesDataValues])
    {
      v41 = v13;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v42 = v16;
      v43 = [v42 countByEnumeratingWithState:&v57 objects:v66 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v58;
        do
        {
          for (j = 0; j != v44; ++j)
          {
            if (*v58 != v45)
            {
              objc_enumerationMutation(v42);
            }

            v47 = *(*(&v57 + 1) + 8 * j);
            if ([v47 hasFaultForData])
            {
              [(VSKeychainEditingContext *)self fulfillFault:v47];
            }
          }

          v44 = [v42 countByEnumeratingWithState:&v57 objects:v66 count:16];
        }

        while (v44);
      }

      v16 = v54;
      requestCopy = v55;
      v13 = v41;
      v14 = v51;
    }
  }

  else if (error)
  {
    v33 = v14;
    v16 = 0;
    *error = v14;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)insertItem:(id)item
{
  itemCopy = item;
  if ([itemCopy hasChanges])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Attempting to insert an item that has changes."];
  }

  undoManager = [(VSKeychainEditingContext *)self undoManager];
  editingContext = [itemCopy editingContext];
  v6 = editingContext;
  if (editingContext)
  {
    if (editingContext != self)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Item already has another context."];
    }
  }

  else
  {
    [itemCopy setEditingContext:self];
    v7 = [undoManager prepareWithInvocationTarget:itemCopy];
    [v7 setEditingContext:0];
  }

  items = [(VSKeychainEditingContext *)self items];
  [items addObject:itemCopy];
  v9 = [undoManager prepareWithInvocationTarget:items];
  [v9 removeObject:itemCopy];

  [itemCopy setInserted:1];
}

- (void)deleteItem:(id)item
{
  itemCopy = item;
  editingContext = [itemCopy editingContext];
  v5 = editingContext;
  if (editingContext)
  {
    if (editingContext != self)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Item does not belong to this context."];
    }

    [itemCopy setDeleted:1];
  }
}

- (id)_subsetOfRegisteredItemsWithKeyPath:(id)path
{
  v4 = [MEMORY[0x277CCA9C0] expressionForKeyPath:path];
  v5 = [MEMORY[0x277CCA9C0] expressionForConstantValue:MEMORY[0x277CBEC38]];
  v6 = [MEMORY[0x277CCA918] predicateWithLeftExpression:v4 rightExpression:v5 modifier:0 type:4 options:0];
  items = [(VSKeychainEditingContext *)self items];
  v8 = [items filteredSetUsingPredicate:v6];

  return v8;
}

- (VSKeychainStore)keychainStore
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_keychainStore;
  if (!v3)
  {
    v3 = objc_alloc_init(VSKeychainStore);
    objc_storeStrong(&selfCopy->_keychainStore, v3);
  }

  objc_sync_exit(selfCopy);

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The __orNil parameter must not be nil."];
  }

  return v3;
}

- (BOOL)save:(id *)save
{
  selfCopy = self;
  v126 = *MEMORY[0x277D85DE8];
  v4 = VSDefaultLogObject(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v125 = "[VSKeychainEditingContext save:]";
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  deletedItems = [(VSKeychainEditingContext *)selfCopy deletedItems];
  v7 = [deletedItems copy];

  updatedItems = [(VSKeychainEditingContext *)selfCopy updatedItems];
  v9 = [updatedItems copy];

  insertedItems = [(VSKeychainEditingContext *)selfCopy insertedItems];
  v11 = [insertedItems copy];

  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v79 = v11;
  [v12 setObject:v11 forKey:@"VSInsertedKeychainItemsKey"];
  v73 = v9;
  [v12 setObject:v9 forKey:@"VSUpdatedKeychainItemsKey"];
  [v12 setObject:v7 forKey:@"VSDeletedKeychainItemsKey"];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v75 = v12;
  [defaultCenter postNotificationName:@"VSKeychainEditingContextWillSaveNotification" object:selfCopy userInfo:v12];
  undoManager = [(VSKeychainEditingContext *)selfCopy undoManager];
  keychainStore = [(VSKeychainEditingContext *)selfCopy keychainStore];
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  obj = v7;
  v91 = [obj countByEnumeratingWithState:&v117 objects:v123 count:16];
  v94 = v5;
  v96 = selfCopy;
  if (v91)
  {
    v89 = *v118;
    v86 = *MEMORY[0x277CDC228];
    v81 = *MEMORY[0x277CBE660];
    v95 = 1;
    do
    {
      for (i = 0; i != v91; i = i + 1)
      {
        if (*v118 != v89)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v117 + 1) + 8 * i);
        itemKind = [v14 itemKind];
        committedValues = [v14 committedValues];
        v17 = [(VSKeychainEditingContext *)selfCopy _deleteQueryForItemValues:committedValues withItemKind:itemKind];
        [v17 setObject:objc_msgSend(itemKind forKey:{"secItemClass"), v86}];
        v116 = 0;
        v18 = selfCopy;
        v19 = [keychainStore deleteItemsMatchingQuery:v17 error:&v116];
        v20 = v116;
        v21 = v20;
        if (v19)
        {
          undoManager2 = [(VSKeychainEditingContext *)v18 undoManager];
          v112[0] = MEMORY[0x277D85DD0];
          v112[1] = 3221225472;
          v112[2] = __33__VSKeychainEditingContext_save___block_invoke;
          v112[3] = &unk_278B753E8;
          v112[4] = v18;
          v113 = committedValues;
          v114 = itemKind;
          v115 = keychainStore;
          [undoManager2 registerUndoWithTarget:v18 handler:v112];

          [v14 setDeleted:0];
          items = [(VSKeychainEditingContext *)v18 items];
          v24 = [undoManager prepareWithInvocationTarget:items];
          [v24 addObject:v14];

          [items removeObject:v14];
          v25 = [undoManager prepareWithInvocationTarget:v14];
          [v25 setEditingContext:v18];

          v5 = v94;
          [v14 setEditingContext:0];

          selfCopy = v18;
        }

        else
        {
          v26 = VSDefaultLogObject(v20);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v125 = v21;
            _os_log_impl(&dword_23AB8E000, v26, OS_LOG_TYPE_DEFAULT, "VSKeychainEditingContext: Deletion error %@", buf, 0xCu);
          }

          if (!v21)
          {
            [MEMORY[0x277CBEAD8] raise:v81 format:@"The deletionError parameter must not be nil."];
          }

          selfCopy = v96;
          [(VSKeychainEditingContext *)v96 _populateErrors:v5 withError:v21 affectingItem:v14];
          v95 = 0;
        }
      }

      v91 = [obj countByEnumeratingWithState:&v117 objects:v123 count:16];
    }

    while (v91);
  }

  else
  {
    v95 = 1;
  }

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v82 = v79;
  v92 = [v82 countByEnumeratingWithState:&v108 objects:v122 count:16];
  if (v92)
  {
    v27 = *v109;
    v90 = *MEMORY[0x277CDC550];
    v87 = *MEMORY[0x277CDC228];
    v77 = *MEMORY[0x277CBE658];
    v80 = *MEMORY[0x277CDBF90];
    v76 = *MEMORY[0x277CBE660];
    v28 = keychainStore;
    v85 = *v109;
    do
    {
      for (j = 0; j != v92; j = j + 1)
      {
        if (*v109 != v27)
        {
          objc_enumerationMutation(v82);
        }

        v30 = *(*(&v108 + 1) + 8 * j);
        itemKind2 = [v30 itemKind];
        primitiveValues = [v30 primitiveValues];
        v33 = [(VSKeychainEditingContext *)selfCopy _queryForItemValues:primitiveValues withItemKind:itemKind2];

        [v33 setObject:MEMORY[0x277CBEC38] forKey:v90];
        [v33 setObject:objc_msgSend(itemKind2 forKey:{"secItemClass"), v87}];
        v107 = 0;
        v34 = [v28 addItem:v33 error:&v107];
        v35 = v107;
        v36 = v35;
        if (v34)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v84 = v36;
            primitiveValues2 = [v30 primitiveValues];
            itemKind3 = [v30 itemKind];
            attributesBySecItemAttributeKey = [itemKind3 attributesBySecItemAttributeKey];
            v40 = [attributesBySecItemAttributeKey objectForKey:v80];
            name = [v40 name];

            if (name)
            {
              v42 = name;
              v43 = [v34 objectForKey:v80];
              if (v43)
              {
                primitiveValues3 = [v30 primitiveValues];
                [primitiveValues3 setObject:v43 forKey:v42];
              }
            }

            undoManager3 = [(VSKeychainEditingContext *)v96 undoManager];
            v103[0] = MEMORY[0x277D85DD0];
            v103[1] = 3221225472;
            v103[2] = __33__VSKeychainEditingContext_save___block_invoke_158;
            v103[3] = &unk_278B75410;
            v104 = primitiveValues2;
            v105 = itemKind2;
            v28 = keychainStore;
            v106 = keychainStore;
            v46 = primitiveValues2;
            [undoManager3 registerUndoWithTarget:v96 handler:v103];

            [v30 _setCommittedValues:v46 registeringUndo:1];
            [v30 setInserted:0];

            selfCopy = v96;
            v5 = v94;
            v27 = v85;
            v36 = v84;
          }

          else
          {
            [MEMORY[0x277CBEAD8] raise:v77 format:{@"Unexpected add result: %@", v34}];
          }
        }

        else
        {
          v47 = v28;
          v48 = v5;
          v49 = v35;
          v50 = VSDefaultLogObject(v35);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v125 = v49;
            _os_log_impl(&dword_23AB8E000, v50, OS_LOG_TYPE_DEFAULT, "VSKeychainEditingContext: Insertion error %@", buf, 0xCu);
          }

          v36 = v49;
          if (!v49)
          {
            [MEMORY[0x277CBEAD8] raise:v76 format:@"The additionError parameter must not be nil."];
          }

          v5 = v48;
          [(VSKeychainEditingContext *)selfCopy _populateErrors:v48 withError:v36 affectingItem:v30];
          v95 = 0;
          v28 = v47;
          v27 = v85;
        }
      }

      v92 = [v82 countByEnumeratingWithState:&v108 objects:v122 count:16];
    }

    while (v92);
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v93 = v73;
  v51 = [v93 countByEnumeratingWithState:&v99 objects:v121 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v100;
    v54 = *MEMORY[0x277CDC228];
    v88 = *MEMORY[0x277CBE660];
    do
    {
      for (k = 0; k != v52; ++k)
      {
        if (*v100 != v53)
        {
          objc_enumerationMutation(v93);
        }

        v56 = *(*(&v99 + 1) + 8 * k);
        itemKind4 = [v56 itemKind];
        committedValues2 = [v56 committedValues];
        v59 = [(VSKeychainEditingContext *)v96 _queryForItemValues:committedValues2 withItemKind:itemKind4];

        [v59 setObject:objc_msgSend(itemKind4 forKey:{"secItemClass"), v54}];
        changedValues = [v56 changedValues];
        v61 = [(VSKeychainEditingContext *)v96 _queryForItemValues:changedValues withItemKind:itemKind4];

        v98 = 0;
        LODWORD(changedValues) = [keychainStore updateAttributes:v61 ofItemsMatchingQuery:v59 error:&v98];
        v62 = v98;
        v63 = v62;
        if (changedValues)
        {
          primitiveValues4 = [v56 primitiveValues];
          [v56 _setCommittedValues:primitiveValues4 registeringUndo:1];

          [v56 setUpdated:0];
        }

        else
        {
          v65 = VSDefaultLogObject(v62);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v125 = v63;
            _os_log_impl(&dword_23AB8E000, v65, OS_LOG_TYPE_DEFAULT, "VSKeychainEditingContext: Update error %@", buf, 0xCu);
          }

          if (!v63)
          {
            [MEMORY[0x277CBEAD8] raise:v88 format:@"The updateError parameter must not be nil."];
          }

          [(VSKeychainEditingContext *)v96 _populateErrors:v94 withError:v63 affectingItem:v56];
          v95 = 0;
        }
      }

      v52 = [v93 countByEnumeratingWithState:&v99 objects:v121 count:16];
    }

    while (v52);
  }

  if (v95)
  {
    v67 = defaultCenter;
    v66 = v75;
    [defaultCenter postNotificationName:@"VSKeychainEditingContextDidSaveNotification" object:v96 userInfo:v75];
    v68 = v94;
    v69 = keychainStore;
  }

  else
  {
    v68 = v94;
    v67 = defaultCenter;
    v66 = v75;
    v69 = keychainStore;
    if (save)
    {
      if ([v94 count] < 2)
      {
        *save = [v94 firstObject];
      }

      else
      {
        v70 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v70 setObject:v94 forKey:@"VSKeychainDetailedErrorsKey"];
        *save = [MEMORY[0x277CCA9B8] errorWithDomain:@"VSKeychainErrorDomain" code:0 userInfo:v70];
      }
    }
  }

  return v95 & 1;
}

void __33__VSKeychainEditingContext_save___block_invoke(uint64_t a1)
{
  v2 = VSDefaultLogObject(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "Will undo deletion.", buf, 2u);
  }

  v3 = [*(a1 + 32) _queryForItemValues:*(a1 + 40) withItemKind:*(a1 + 48)];
  [v3 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDC550]];
  v4 = [*(a1 + 48) secItemClass];
  [v3 setObject:v4 forKey:*MEMORY[0x277CDC228]];
  v5 = *(a1 + 56);
  v11 = 0;
  v6 = [v5 addItem:v3 error:&v11];
  v7 = v11;

  if (v6)
  {
    v9 = VSDefaultLogObject(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_23AB8E000, v9, OS_LOG_TYPE_DEFAULT, "Undid deletion.", v10, 2u);
    }
  }

  else
  {
    v9 = VSErrorLogObject(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __33__VSKeychainEditingContext_save___block_invoke_cold_1();
    }
  }
}

void __33__VSKeychainEditingContext_save___block_invoke_158(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSDefaultLogObject(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Will undo insertion.", buf, 2u);
  }

  v5 = [v3 _queryForItemValues:*(a1 + 32) withItemKind:*(a1 + 40)];

  v6 = [*(a1 + 40) secItemClass];
  [v5 setObject:v6 forKey:*MEMORY[0x277CDC228]];
  v7 = *(a1 + 48);
  v12 = 0;
  v8 = [v7 deleteItemsMatchingQuery:v5 error:&v12];
  v9 = v12;
  v10 = VSErrorLogObject(v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (v8)
  {
    if (v11)
    {
      __33__VSKeychainEditingContext_save___block_invoke_158_cold_2();
    }
  }

  else if (v11)
  {
    __33__VSKeychainEditingContext_save___block_invoke_158_cold_1();
  }
}

@end