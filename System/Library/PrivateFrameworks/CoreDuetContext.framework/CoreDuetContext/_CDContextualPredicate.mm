@interface _CDContextualPredicate
+ (id)andPredicateWithSubpredicates:(id)subpredicates;
+ (id)contextualPredicateForKeyPaths:(id)paths withPredicate:(id)predicate;
+ (id)notPredicateWithSubpredicate:(id)subpredicate;
+ (id)orPredicateWithSubpredicates:(id)subpredicates;
+ (id)predicateForChangeAtKeyPath:(id)path;
+ (id)predicateForChangeAtKeyPath:(id)path withMinimumDurationInPreviousState:(double)state;
+ (id)predicateForChangeAtKeyPaths:(id)paths;
+ (id)predicateForKeyPath:(id)path equalToValue:(id)value;
+ (id)predicateForKeyPath:(id)path equalToValue:(id)value withMinimumDurationInPreviousState:(double)state;
+ (id)predicateForKeyPath:(id)path withFormat:(id)format;
+ (id)predicateForKeyPath:(id)path withPredicate:(id)predicate;
+ (id)predicateForKeyPath:(id)path withPredicate:(id)predicate withPredicateForPreviousState:(id)state withMinimumDurationInPreviousState:(double)previousState;
- (BOOL)evaluateWithObject:(id)object;
- (BOOL)evaluateWithState:(id)state previousValue:(id)value;
- (BOOL)isEqual:(id)equal;
- (_CDContextualPredicate)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initForChangeAtKeyPath:(id)path;
- (id)initForChangeAtKeyPath:(id)path equalToValue:(id)value;
- (id)initForChangeAtKeyPaths:(id)paths;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CDContextualPredicate

+ (id)predicateForChangeAtKeyPath:(id)path
{
  pathCopy = path;
  v5 = [[self alloc] initForChangeAtKeyPath:pathCopy];

  return v5;
}

- (id)initForChangeAtKeyPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = _CDContextualPredicate;
  v5 = [(_CDContextualPredicate *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObject:pathCopy];
    keyPaths = v5->_keyPaths;
    v5->_keyPaths = v6;
  }

  return v5;
}

+ (id)predicateForChangeAtKeyPaths:(id)paths
{
  pathsCopy = paths;
  v5 = [[self alloc] initForChangeAtKeyPaths:pathsCopy];

  return v5;
}

- (id)initForChangeAtKeyPaths:(id)paths
{
  pathsCopy = paths;
  v9.receiver = self;
  v9.super_class = _CDContextualPredicate;
  v5 = [(_CDContextualPredicate *)&v9 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithArray:pathsCopy];
    keyPaths = v5->_keyPaths;
    v5->_keyPaths = v6;
  }

  return v5;
}

+ (id)predicateForKeyPath:(id)path equalToValue:(id)value
{
  valueCopy = value;
  pathCopy = path;
  v8 = [[self alloc] initForChangeAtKeyPath:pathCopy equalToValue:valueCopy];

  return v8;
}

- (id)initForChangeAtKeyPath:(id)path equalToValue:(id)value
{
  pathCopy = path;
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = _CDContextualPredicate;
  v8 = [(_CDContextualPredicate *)&v14 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DFD8] setWithObject:pathCopy];
    keyPaths = v8->_keyPaths;
    v8->_keyPaths = v9;

    valueCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"self.%@.value == %@", pathCopy, valueCopy];
    predicate = v8->_predicate;
    v8->_predicate = valueCopy;
  }

  return v8;
}

+ (id)predicateForKeyPath:(id)path withPredicate:(id)predicate
{
  predicateCopy = predicate;
  pathCopy = path;
  v8 = objc_alloc_init(self);
  v9 = [MEMORY[0x1E695DFD8] setWithObject:pathCopy];

  [v8 setKeyPaths:v9];
  [v8 setPredicate:predicateCopy];

  return v8;
}

+ (id)contextualPredicateForKeyPaths:(id)paths withPredicate:(id)predicate
{
  predicateCopy = predicate;
  pathsCopy = paths;
  v8 = objc_alloc_init(self);
  [v8 setKeyPaths:pathsCopy];

  [v8 setPredicate:predicateCopy];

  return v8;
}

+ (id)predicateForKeyPath:(id)path withFormat:(id)format
{
  v5 = MEMORY[0x1E696AE18];
  pathCopy = path;
  v7 = [v5 predicateWithFormat:format arguments:&v11];
  v8 = [_CDContextualPredicate predicateForKeyPath:pathCopy withPredicate:v7];

  return v8;
}

+ (id)predicateForChangeAtKeyPath:(id)path withMinimumDurationInPreviousState:(double)state
{
  pathCopy = path;
  v7 = objc_alloc_init(self);
  v8 = [MEMORY[0x1E695DFD8] setWithObject:pathCopy];

  [v7 setKeyPaths:v8];
  [v7 setMinimumDurationInPreviousState:state];

  return v7;
}

+ (id)predicateForKeyPath:(id)path equalToValue:(id)value withMinimumDurationInPreviousState:(double)state
{
  valueCopy = value;
  pathCopy = path;
  v10 = objc_alloc_init(self);
  v11 = [MEMORY[0x1E695DFD8] setWithObject:pathCopy];
  [v10 setKeyPaths:v11];

  valueCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"self.%@.value == %@", pathCopy, valueCopy];

  [v10 setPredicate:valueCopy];
  [v10 setMinimumDurationInPreviousState:state];

  return v10;
}

+ (id)predicateForKeyPath:(id)path withPredicate:(id)predicate withPredicateForPreviousState:(id)state withMinimumDurationInPreviousState:(double)previousState
{
  stateCopy = state;
  predicateCopy = predicate;
  pathCopy = path;
  v13 = objc_alloc_init(self);
  v14 = [MEMORY[0x1E695DFD8] setWithObject:pathCopy];

  [v13 setKeyPaths:v14];
  [v13 setPredicate:predicateCopy];

  [v13 setPredicateForPreviousState:stateCopy];
  [v13 setMinimumDurationInPreviousState:previousState];

  return v13;
}

+ (id)notPredicateWithSubpredicate:(id)subpredicate
{
  v40 = *MEMORY[0x1E69E9840];
  subpredicateCopy = subpredicate;
  predicate = [subpredicateCopy predicate];
  v33 = predicate;
  if (predicate)
  {
    [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:predicate];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v6 = ;
  keyPaths = [subpredicateCopy keyPaths];
  v8 = [keyPaths copy];

  v31 = v8;
  v32 = v6;
  v9 = [self contextualPredicateForKeyPaths:v8 withPredicate:v6];
  circularLocationRegions = [subpredicateCopy circularLocationRegions];
  [v9 setCircularLocationRegions:circularLocationRegions];

  v34 = subpredicateCopy;
  timeBasedPredicateEvaluationIntervals = [subpredicateCopy timeBasedPredicateEvaluationIntervals];
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  v13 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v14 = timeBasedPredicateEvaluationIntervals;
  v15 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v36;
    do
    {
      v18 = 0;
      v19 = distantPast;
      do
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v35 + 1) + 8 * v18);
        v21 = objc_alloc(MEMORY[0x1E696AB80]);
        startDate = [v20 startDate];
        v23 = [v21 initWithStartDate:v19 endDate:startDate];

        [v23 duration];
        if (v24 > 0.0)
        {
          [v13 addObject:v23];
        }

        distantPast = [v20 endDate];

        ++v18;
        v19 = distantPast;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v16);
  }

  v25 = objc_alloc(MEMORY[0x1E696AB80]);
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v27 = [v25 initWithStartDate:distantPast endDate:distantFuture];

  [v27 duration];
  if (v28 > 0.0)
  {
    [v13 addObject:v27];
  }

  v29 = [v13 copy];

  [v9 setTimeBasedPredicateEvaluationIntervals:v29];

  return v9;
}

+ (id)andPredicateWithSubpredicates:(id)subpredicates
{
  v60 = *MEMORY[0x1E69E9840];
  subpredicatesCopy = subpredicates;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DFA8] set];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __56___CDContextualPredicate_andPredicateWithSubpredicates___block_invoke;
  v49[3] = &unk_1E7886400;
  v49[4] = &v50;
  [subpredicatesCopy enumerateObjectsUsingBlock:v49];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = subpredicatesCopy;
  v8 = [obj countByEnumeratingWithState:&v45 objects:v58 count:16];
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = *v46;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v46 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v45 + 1) + 8 * i);
      predicate = [v11 predicate];

      if (predicate)
      {
        predicate2 = [v11 predicate];
        [array addObject:predicate2];
      }

      predicateForPreviousState = [v11 predicateForPreviousState];

      if (predicateForPreviousState)
      {
        predicateForPreviousState2 = [v11 predicateForPreviousState];
        [array2 addObject:predicateForPreviousState2];
      }

      else
      {
        if (*(v51 + 24) != 1)
        {
          goto LABEL_13;
        }

        predicateForPreviousState2 = [MEMORY[0x1E696AE18] predicateWithValue:1];
        [array2 addObject:predicateForPreviousState2];
      }

LABEL_13:
      keyPaths = [v11 keyPaths];
      [v5 unionSet:keyPaths];

      timeBasedPredicateEvaluationIntervals = [v11 timeBasedPredicateEvaluationIntervals];
      array3 = [timeBasedPredicateEvaluationIntervals array];

      if (array3)
      {
        [v6 addObjectsFromArray:array3];
      }

      circularLocationRegions = [v11 circularLocationRegions];
      v20 = circularLocationRegions == 0;

      if (!v20)
      {
        circularLocationRegions2 = [v11 circularLocationRegions];
        allObjects = [circularLocationRegions2 allObjects];
        [v7 addObjectsFromArray:allObjects];
      }
    }

    v8 = [obj countByEnumeratingWithState:&v45 objects:v58 count:16];
  }

  while (v8);
LABEL_19:

  v39 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array];
  if ([array2 count])
  {
    [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:array2];
    [MEMORY[0x1E695DFD8] setWithSet:{v5, objc_claimAutoreleasedReturnValue()}];
  }

  else
  {
    [MEMORY[0x1E695DFD8] setWithSet:{v5, 0}];
  }
  v23 = ;
  v42 = [self contextualPredicateForKeyPaths:v23 withPredicate:v39];

  v40 = [v6 copy];
  if ([v40 count])
  {
    v24 = objc_alloc(MEMORY[0x1E696AB80]);
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    v27 = [v24 initWithStartDate:distantPast endDate:distantFuture];

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v28 = v40;
    v29 = [v28 countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v29)
    {
      v30 = *v55;
      do
      {
        v31 = 0;
        v32 = v27;
        do
        {
          if (*v55 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v27 = [v32 intersectionWithDateInterval:*(*(&v54 + 1) + 8 * v31)];

          ++v31;
          v32 = v27;
        }

        while (v29 != v31);
        v29 = [v28 countByEnumeratingWithState:&v54 objects:v59 count:16];
      }

      while (v29);
    }

    if (v27 && ([v27 duration], v33 > 0.0))
    {
      v34 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithObject:v27];
    }

    else
    {
      v34 = objc_alloc_init(MEMORY[0x1E695DFB8]);
    }

    v35 = v34;
  }

  else
  {
    v35 = objc_alloc_init(MEMORY[0x1E695DFB8]);
  }

  [v42 setTimeBasedPredicateEvaluationIntervals:v35];
  v36 = [v7 copy];
  [v42 setCircularLocationRegions:v36];

  [v42 setPredicateForPreviousState:v38];
  _Block_object_dispose(&v50, 8);

  return v42;
}

+ (id)orPredicateWithSubpredicates:(id)subpredicates
{
  v77 = *MEMORY[0x1E69E9840];
  subpredicatesCopy = subpredicates;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v55 = [MEMORY[0x1E695DFA8] set];
  v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v50 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = 0;
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __55___CDContextualPredicate_orPredicateWithSubpredicates___block_invoke;
  v61[3] = &unk_1E7886400;
  v61[4] = &v62;
  [subpredicatesCopy enumerateObjectsUsingBlock:v61];
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = subpredicatesCopy;
  v5 = [obj countByEnumeratingWithState:&v57 objects:v74 count:16];
  if (v5)
  {
    v6 = *v58;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v58 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v57 + 1) + 8 * i);
        predicate = [v8 predicate];

        if (predicate)
        {
          predicate2 = [v8 predicate];
          [array addObject:predicate2];
        }

        predicateForPreviousState = [v8 predicateForPreviousState];

        if (predicateForPreviousState)
        {
          predicateForPreviousState2 = [v8 predicateForPreviousState];
          [array2 addObject:predicateForPreviousState2];
        }

        else
        {
          if (*(v63 + 24) != 1)
          {
            goto LABEL_13;
          }

          predicateForPreviousState2 = [MEMORY[0x1E696AE18] predicateWithValue:1];
          [array2 addObject:predicateForPreviousState2];
        }

LABEL_13:
        keyPaths = [v8 keyPaths];
        [v55 unionSet:keyPaths];

        timeBasedPredicateEvaluationIntervals = [v8 timeBasedPredicateEvaluationIntervals];
        array3 = [timeBasedPredicateEvaluationIntervals array];

        if (array3)
        {
          [v51 addObjectsFromArray:array3];
        }

        circularLocationRegions = [v8 circularLocationRegions];
        v17 = circularLocationRegions == 0;

        if (!v17)
        {
          circularLocationRegions2 = [v8 circularLocationRegions];
          allObjects = [circularLocationRegions2 allObjects];
          [v50 addObjectsFromArray:allObjects];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v57 objects:v74 count:16];
    }

    while (v5);
  }

  if ([array count])
  {
    v45 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:array];
  }

  else
  {
    v45 = 0;
  }

  if ([array2 count])
  {
    v43 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:array2];
  }

  else
  {
    v43 = 0;
  }

  v20 = [MEMORY[0x1E695DFD8] setWithSet:v55];
  v44 = [self contextualPredicateForKeyPaths:v20 withPredicate:v45];

  v42 = [v51 copy];
  allObjects2 = [v42 copy];
  do
  {
    v56 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v46 = allObjects2;
    v48 = [v46 countByEnumeratingWithState:&v70 objects:v76 count:16];
    if (v48)
    {
      v47 = *v71;
      do
      {
        for (j = 0; j != v48; ++j)
        {
          if (*v71 != v47)
          {
            objc_enumerationMutation(v46);
          }

          v22 = *(*(&v70 + 1) + 8 * j);
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v23 = [v56 copy];
          v24 = [v23 countByEnumeratingWithState:&v66 objects:v75 count:16];
          if (v24)
          {
            v25 = *v67;
            do
            {
              for (k = 0; k != v24; ++k)
              {
                if (*v67 != v25)
                {
                  objc_enumerationMutation(v23);
                }

                v27 = *(*(&v66 + 1) + 8 * k);
                if ([v22 intersectsDateInterval:v27])
                {
                  startDate = [v22 startDate];
                  startDate2 = [v27 startDate];
                  v30 = [startDate earlierDate:startDate2];

                  endDate = [v22 endDate];
                  endDate2 = [v27 endDate];
                  v33 = [endDate laterDate:endDate2];

                  v34 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v30 endDate:v33];
                  [v56 removeObject:v27];

                  v22 = v34;
                }
              }

              v24 = [v23 countByEnumeratingWithState:&v66 objects:v75 count:16];
            }

            while (v24);
          }

          [v22 duration];
          if (v35 > 0.0)
          {
            [v56 addObject:v22];
          }
        }

        v48 = [v46 countByEnumeratingWithState:&v70 objects:v76 count:16];
      }

      while (v48);
    }

    v36 = [v56 count];
    v37 = [v46 count];
    allObjects2 = [v56 allObjects];
  }

  while (v36 != v37);
  v38 = [allObjects2 sortedArrayUsingSelector:sel_compare_];
  v39 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v38];

  [v44 setTimeBasedPredicateEvaluationIntervals:v39];
  v40 = [v50 copy];
  [v44 setCircularLocationRegions:v40];

  [v44 setPredicateForPreviousState:v43];
  _Block_object_dispose(&v62, 8);

  return v44;
}

- (BOOL)evaluateWithObject:(id)object
{
  objectCopy = object;
  LOBYTE(self) = [(NSPredicate *)self->_predicate evaluateWithObject:objectCopy];

  return self;
}

- (BOOL)evaluateWithState:(id)state previousValue:(id)value
{
  v48 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  valueCopy = value;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  keyPaths = [(_CDContextualPredicate *)self keyPaths];
  v9 = [keyPaths countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v9)
  {
    v10 = *v44;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(keyPaths);
        }

        v12 = [stateCopy objectForKeyedSubscript:*(*(&v43 + 1) + 8 * i)];
        v13 = v12 == 0;

        if (v13)
        {

          goto LABEL_47;
        }
      }

      v9 = [keyPaths countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v9);
  }

  if (!valueCopy || (-[_CDContextualPredicate predicateForPreviousState](self, "predicateForPreviousState"), v14 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v14, (isKindOfClass & 1) == 0) || (-[_CDContextualPredicate predicateForPreviousState](self, "predicateForPreviousState"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 compoundPredicateType] == 0, v16, v17))
  {
    predicate = [(_CDContextualPredicate *)self predicate];
    v27 = [predicate evaluateWithObject:stateCopy];

    if (v27)
    {
      v28 = valueCopy != 0;
      predicateForPreviousState = [(_CDContextualPredicate *)self predicateForPreviousState];
      if (!predicateForPreviousState)
      {
        v28 = 0;
      }

      if (v28)
      {
        predicateForPreviousState2 = [(_CDContextualPredicate *)self predicateForPreviousState];
        v25 = [predicateForPreviousState2 evaluateWithObject:valueCopy];
      }

      else
      {
        v25 = 1;
      }

      goto LABEL_48;
    }

LABEL_47:
    v25 = 0;
    goto LABEL_48;
  }

  predicate2 = [(_CDContextualPredicate *)self predicate];
  predicateForPreviousState3 = [(_CDContextualPredicate *)self predicateForPreviousState];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v20 = [predicate2 compoundPredicateType], v20 != objc_msgSend(predicateForPreviousState3, "compoundPredicateType")) || (objc_msgSend(predicate2, "subpredicates"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "count"), objc_msgSend(predicateForPreviousState3, "subpredicates"), v23 = objc_claimAutoreleasedReturnValue(), LOBYTE(v22) = v22 == objc_msgSend(v23, "count"), v23, v21, (v22 & 1) == 0))
  {
    contextChannel = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_FAULT))
    {
      [_CDContextualPredicate evaluateWithState:previousValue:];
    }

    goto LABEL_28;
  }

  compoundPredicateType = [predicate2 compoundPredicateType];
  v42 = compoundPredicateType;
  if (compoundPredicateType == 2)
  {
    v25 = 0;
    goto LABEL_32;
  }

  if (compoundPredicateType != 1)
  {
    contextChannel = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_FAULT))
    {
      [_CDContextualPredicate evaluateWithState:predicate2 previousValue:?];
    }

LABEL_28:
    v25 = 0;
    goto LABEL_29;
  }

  v25 = 1;
LABEL_32:
  subpredicates = [predicate2 subpredicates];
  v33 = [subpredicates count] == 0;

  if (v33)
  {
    goto LABEL_30;
  }

  v34 = 0;
  while (1)
  {
    subpredicates2 = [predicate2 subpredicates];
    contextChannel = [subpredicates2 objectAtIndexedSubscript:v34];

    subpredicates3 = [predicateForPreviousState3 subpredicates];
    v37 = [subpredicates3 objectAtIndexedSubscript:v34];

    if ([contextChannel evaluateWithObject:stateCopy])
    {
      break;
    }

    if (v42 != 2)
    {
      goto LABEL_45;
    }

LABEL_41:

    subpredicates4 = [predicate2 subpredicates];
    v40 = [subpredicates4 count];

    if (++v34 >= v40)
    {
      goto LABEL_30;
    }
  }

  v38 = [v37 evaluateWithObject:valueCopy];
  if (v42 == 2)
  {
    if (v38)
    {
      v25 = 1;
      goto LABEL_46;
    }

    goto LABEL_41;
  }

  if (v38)
  {
    goto LABEL_41;
  }

LABEL_45:
  v25 = 0;
LABEL_46:

LABEL_29:
LABEL_30:

LABEL_48:
  return v25;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_keyPaths forKey:@"keyPaths"];
  [coderCopy encodeObject:self->_predicate forKey:@"predicate"];
  [coderCopy encodeObject:self->_predicateForPreviousState forKey:@"predicateForPreviousState"];
  [coderCopy encodeObject:self->_timeBasedPredicateEvaluationIntervals forKey:@"timeBasedPredicateEvaluationIntervals"];
  [coderCopy encodeObject:self->_circularLocationRegions forKey:@"circularLocationRegions"];
  [coderCopy encodeBool:self->_evaluateOnEveryKeyPathUpdate forKey:@"evaluateOnEveryKeyPathUpdate"];
  if (self->_minimumDurationInPreviousState > 2.22507386e-308)
  {
    [coderCopy encodeDouble:@"duration" forKey:?];
  }
}

- (_CDContextualPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"keyPaths"];
  if (v8)
  {
    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"predicate"];
    if (v12)
    {
      if (![_CDPredicateValidator validatePredicate:v12 allowedKeys:0 error:0])
      {
        contextChannel = [MEMORY[0x1E6997908] contextChannel];
        if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_FAULT))
        {
          [_CDContextualPredicate initWithCoder:];
        }

        goto LABEL_15;
      }

      [v12 allowEvaluation];
    }

    contextChannel = [coderCopy decodeObjectOfClasses:v11 forKey:@"predicateForPreviousState"];
    if (!contextChannel)
    {
LABEL_8:
      v14 = MEMORY[0x1E695DFD8];
      v15 = objc_opt_class();
      v24 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
      [coderCopy decodeObjectOfClasses:v24 forKey:@"timeBasedPredicateEvaluationIntervals"];
      v16 = v25 = self;
      v17 = MEMORY[0x1E695DFD8];
      v18 = objc_opt_class();
      v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
      v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"circularLocationRegions"];
      v21 = objc_alloc_init(_CDContextualPredicate);
      [(_CDContextualPredicate *)v21 setKeyPaths:v8];
      [(_CDContextualPredicate *)v21 setPredicate:v12];
      [(_CDContextualPredicate *)v21 setPredicateForPreviousState:contextChannel];
      [(_CDContextualPredicate *)v21 setTimeBasedPredicateEvaluationIntervals:v16];
      [(_CDContextualPredicate *)v21 setCircularLocationRegions:v20];
      -[_CDContextualPredicate setEvaluateOnEveryKeyPathUpdate:](v21, "setEvaluateOnEveryKeyPathUpdate:", [coderCopy decodeBoolForKey:@"evaluateOnEveryKeyPathUpdate"]);
      [coderCopy decodeDoubleForKey:@"duration"];
      [(_CDContextualPredicate *)v21 setMinimumDurationInPreviousState:?];

      self = v25;
LABEL_16:

      goto LABEL_17;
    }

    if ([_CDPredicateValidator validatePredicate:contextChannel allowedKeys:0 error:0])
    {
      [contextChannel allowEvaluation];
      goto LABEL_8;
    }

    contextChannel2 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(contextChannel2, OS_LOG_TYPE_FAULT))
    {
      [_CDContextualPredicate initWithCoder:];
    }

LABEL_15:
    v21 = 0;
    goto LABEL_16;
  }

  v21 = 0;
LABEL_17:

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSSet *)self->_keyPaths copy];
  [v4 setKeyPaths:v5];

  [v4 setPredicate:self->_predicate];
  [v4 setPredicateForPreviousState:self->_predicateForPreviousState];
  [v4 setTimeBasedPredicateEvaluationIntervals:self->_timeBasedPredicateEvaluationIntervals];
  [v4 setCircularLocationRegions:self->_circularLocationRegions];
  [v4 setEvaluateOnEveryKeyPathUpdate:self->_evaluateOnEveryKeyPathUpdate];
  [v4 setMinimumDurationInPreviousState:self->_minimumDurationInPreviousState];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      keyPaths = self->_keyPaths;
      keyPaths = [(_CDContextualPredicate *)v6 keyPaths];
      if (![(NSSet *)keyPaths isEqual:keyPaths])
      {
        v13 = 0;
LABEL_22:

        goto LABEL_23;
      }

      predicate = self->_predicate;
      v10 = predicate;
      if (!predicate)
      {
        predicate = [(_CDContextualPredicate *)v6 predicate];
        if (!predicate)
        {
          v22 = 0;
          v12 = 0;
          goto LABEL_14;
        }

        v22 = predicate;
        v10 = self->_predicate;
      }

      predicate2 = [(_CDContextualPredicate *)v6 predicate];
      if (([(NSPredicate *)v10 isEqual:predicate2]& 1) == 0)
      {

        v13 = 0;
        goto LABEL_20;
      }

      v12 = 1;
LABEL_14:
      predicateForPreviousState = self->_predicateForPreviousState;
      v15 = predicateForPreviousState;
      if (!predicateForPreviousState)
      {
        predicateForPreviousState = [(_CDContextualPredicate *)v6 predicateForPreviousState];
        if (!predicateForPreviousState)
        {
          v19 = 0;
          v13 = 1;
          goto LABEL_26;
        }

        v20 = predicateForPreviousState;
        v15 = self->_predicateForPreviousState;
      }

      v17 = [(_CDContextualPredicate *)v6 predicateForPreviousState:v20];
      v13 = [(NSPredicate *)v15 isEqual:v17];

      if (predicateForPreviousState)
      {
        if (!v12)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v19 = v21;
LABEL_26:

      if ((v12 & 1) == 0)
      {
LABEL_20:
        if (!predicate)
        {
        }

        goto LABEL_22;
      }

LABEL_19:

      goto LABEL_20;
    }

    v13 = 0;
  }

LABEL_23:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSSet *)self->_keyPaths hash];
  v4 = [(NSPredicate *)self->_predicate hash]^ v3;
  return v4 ^ [(NSPredicate *)self->_predicateForPreviousState hash];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  predicate = self->_predicate;
  predicateForPreviousState = self->_predicateForPreviousState;
  v8 = [(NSSet *)self->_keyPaths description];
  v9 = [v8 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F1D12BE0];
  v10 = [v3 stringWithFormat:@"%@: %@ / %@ | Keypaths: %@:", v5, predicate, predicateForPreviousState, v9];

  return v10;
}

- (void)evaluateWithState:previousValue:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_fault_impl(&dword_1A9611000, v1, OS_LOG_TYPE_FAULT, "Invalid compound predicate combination snuck through: %@ / %@.", v2, 0x16u);
}

- (void)evaluateWithState:(void *)a1 previousValue:.cold.2(void *a1)
{
  v1 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a1, "compoundPredicateType")}];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_1A9611000, v2, v3, "Unexpected NSCompoundPredicateType %@", v4, v5, v6, v7);
}

@end