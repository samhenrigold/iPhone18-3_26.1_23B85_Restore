@interface HKCorrelation
+ (HKCorrelation)correlationWithType:(HKCorrelationType *)correlationType startDate:(NSDate *)startDate endDate:(NSDate *)endDate objects:(NSSet *)objects device:(HKDevice *)device metadata:(NSDictionary *)metadata;
- (BOOL)_containsObjects;
- (BOOL)_correlatedObjectsMatchFilterDictionary:(id)dictionary;
- (HKCorrelation)initWithCoder:(id)coder;
- (NSSet)objects;
- (NSSet)objectsForType:(HKObjectType *)objectType;
- (id)_init;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)description;
- (void)_addCorrelatedObject:(id)object;
- (void)_addCorrelatedObjects:(id)objects;
- (void)_filterCorrelatedObjectsWithFilterDictionary:(id)dictionary;
- (void)_removeAllCorrelatedObjects;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKCorrelation

+ (HKCorrelation)correlationWithType:(HKCorrelationType *)correlationType startDate:(NSDate *)startDate endDate:(NSDate *)endDate objects:(NSSet *)objects device:(HKDevice *)device metadata:(NSDictionary *)metadata
{
  v14 = correlationType;
  v15 = startDate;
  v16 = endDate;
  v17 = objects;
  v18 = device;
  v19 = metadata;
  if (v15)
  {
    [(NSDate *)v15 timeIntervalSinceReferenceDate];
    v21 = v20;
    if (v16)
    {
LABEL_3:
      [(NSDate *)v16 timeIntervalSinceReferenceDate];
      v23 = v22;
      goto LABEL_6;
    }
  }

  else
  {
    v21 = 2.22507386e-308;
    if (v16)
    {
      goto LABEL_3;
    }
  }

  v23 = 2.22507386e-308;
LABEL_6:
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __79__HKCorrelation_correlationWithType_startDate_endDate_objects_device_metadata___block_invoke;
  v27[3] = &unk_1E73843A8;
  v28 = v17;
  v24 = v17;
  v25 = [self _newSampleWithType:v14 startDate:v18 endDate:v19 device:v27 metadata:v21 config:v23];

  return v25;
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = HKCorrelation;
  _init = [(HKSample *)&v6 _init];
  if (_init)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v4 = _init[12];
    _init[12] = dictionary;
  }

  return _init;
}

- (NSSet)objects
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)self->_objects allValues];
  v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        [v3 unionSet:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v9.receiver = self;
  v9.super_class = HKCorrelation;
  v5 = [(HKSample *)&v9 description];
  objects = [(HKCorrelation *)self objects];
  v7 = [v3 stringWithFormat:@"<%@> %@ (%ld objects)", v4, v5, objc_msgSend(objects, "count")];

  return v7;
}

- (void)_addCorrelatedObject:(id)object
{
  objectCopy = object;
  sampleType = [objectCopy sampleType];
  v5 = [(NSMutableDictionary *)self->_objects objectForKeyedSubscript:sampleType];
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFA8] set];
    [(NSMutableDictionary *)self->_objects setObject:v5 forKeyedSubscript:sampleType];
  }

  [v5 addObject:objectCopy];
}

- (void)_addCorrelatedObjects:(id)objects
{
  v14 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [objectsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(objectsCopy);
        }

        [(HKCorrelation *)self _addCorrelatedObject:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [objectsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (NSSet)objectsForType:(HKObjectType *)objectType
{
  v3 = [(NSMutableDictionary *)self->_objects objectForKeyedSubscript:objectType];
  v4 = [MEMORY[0x1E695DFD8] setWithSet:v3];

  return v4;
}

- (void)_filterCorrelatedObjectsWithFilterDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  objects = self->_objects;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__HKCorrelation__filterCorrelatedObjectsWithFilterDictionary___block_invoke;
  v11[3] = &unk_1E73843D0;
  v12 = dictionaryCopy;
  v7 = dictionary;
  v13 = v7;
  v8 = dictionaryCopy;
  [(NSMutableDictionary *)objects enumerateKeysAndObjectsUsingBlock:v11];
  v9 = self->_objects;
  self->_objects = v7;
  v10 = v7;
}

void __62__HKCorrelation__filterCorrelatedObjectsWithFilterDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695DFA8] set];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * i);
        if ([_HKFilter filter:v8 acceptsDataObject:v14, v15])
        {
          [v7 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  if ([v7 count])
  {
    [*(a1 + 40) setObject:v7 forKeyedSubscript:v5];
  }
}

- (BOOL)_correlatedObjectsMatchFilterDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (dictionaryCopy)
  {
    v6 = 1;
    if ([dictionaryCopy count])
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v15 = 1;
      objects = self->_objects;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __57__HKCorrelation__correlatedObjectsMatchFilterDictionary___block_invoke;
      v9[3] = &unk_1E73843F8;
      v10 = v5;
      v11 = &v12;
      [(NSMutableDictionary *)objects enumerateKeysAndObjectsUsingBlock:v9];
      v6 = *(v13 + 24);

      _Block_object_dispose(&v12, 8);
    }
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

void __57__HKCorrelation__correlatedObjectsMatchFilterDictionary___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if (![_HKFilter filter:v8 acceptsDataObject:*(*(&v14 + 1) + 8 * i), v14])
        {
          *(*(*(a1 + 40) + 8) + 24) = 0;
          *a4 = 1;
          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (BOOL)_containsObjects
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  objects = self->_objects;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__HKCorrelation__containsObjects__block_invoke;
  v5[3] = &unk_1E7384420;
  v5[4] = &v6;
  [(NSMutableDictionary *)objects enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__33__HKCorrelation__containsObjects__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 count];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)_removeAllCorrelatedObjects
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  objects = self->_objects;
  self->_objects = dictionary;

  MEMORY[0x1EEE66BB8](dictionary, objects);
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  var0 = configuration.var0;
  v83 = *MEMORY[0x1E69E9840];
  v80.receiver = self;
  v80.super_class = HKCorrelation;
  v6 = [(HKSample *)&v80 _validateWithConfiguration:configuration.var0, configuration.var1];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
LABEL_3:
    v9 = v8;
    goto LABEL_43;
  }

  correlationType = [(HKCorrelation *)self correlationType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v40 = MEMORY[0x1E696ABC0];
    v41 = objc_opt_class();
    correlationType2 = [(HKCorrelation *)self correlationType];
    v9 = [v40 hk_errorForInvalidArgument:@"@" class:v41 selector:a2 format:{@"Data type %@ must be of type %@", correlationType2, objc_opt_class()}];

    goto LABEL_43;
  }

  if (([objc_opt_class() _allowEmptyCorrelations] & 1) == 0 && !-[HKCorrelation _containsObjects](self, "_containsObjects"))
  {
    v43 = MEMORY[0x1E696ABC0];
    v44 = objc_opt_class();
    v8 = [v43 hk_errorForInvalidArgument:@"@" class:v44 selector:a2 format:{@"%@: Objects must contain one or more HKSample", objc_opt_class()}];
    goto LABEL_3;
  }

  v69 = a2;
  [(HKCorrelation *)self objects];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v12 = v79 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v76 objects:v82 count:16];
  v70 = v12;
  if (!v13)
  {
    goto LABEL_19;
  }

  v14 = v13;
  v71 = *v77;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v77 != v71)
      {
        objc_enumerationMutation(v12);
      }

      v16 = *(*(&v76 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v45 = MEMORY[0x1E696ABC0];
        v46 = objc_opt_class();
        v47 = objc_opt_class();
        v67 = objc_opt_class();
        v68 = v16;
        v48 = @"%@: All objects must be of class %@, received %@";
        v66 = v47;
LABEL_39:
        [v45 hk_errorForInvalidArgument:@"@" class:v46 selector:a2 format:{v48, v66, v67, v68}];
        v9 = LABEL_40:;

        goto LABEL_41;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = MEMORY[0x1E696ABC0];
        v46 = objc_opt_class();
        v49 = objc_opt_class();
        v48 = @"%@: Correlations cannot contain other correlations. Received %@";
LABEL_38:
        v66 = v49;
        v67 = v16;
        goto LABEL_39;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = MEMORY[0x1E696ABC0];
        v46 = objc_opt_class();
        v49 = objc_opt_class();
        v48 = @"%@: Correlations cannot contain workouts. Received %@";
        goto LABEL_38;
      }

      _source = [v16 _source];
      if (_source)
      {
        v18 = _source;
        _source2 = [v16 _source];
        v20 = +[HKSource defaultSource];
        v21 = [_source2 isEqual:v20];

        v12 = v70;
        if ((v21 & 1) == 0)
        {
          v51 = MEMORY[0x1E696ABC0];
          v52 = objc_opt_class();
          [v51 hk_errorForInvalidArgument:@"@" class:v52 selector:a2 format:{@"%@: Correlations cannot contain objects that were saved by other sources. Received %@", objc_opt_class(), v16, v68}];
          goto LABEL_40;
        }
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v76 objects:v82 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_19:

  v22 = +[_HKBehavior sharedBehavior];
  if (![v22 enableBloodPressureValidations] || var0 == -1)
  {

    v9 = 0;
LABEL_41:
    v7 = 0;
  }

  else
  {
    correlationType3 = [(HKCorrelation *)self correlationType];
    code = [correlationType3 code];

    v7 = 0;
    if (code != 80)
    {
      goto LABEL_31;
    }

    v25 = [v12 count];
    if (v25 == 2)
    {
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v27 = v12;
      v28 = [v27 countByEnumeratingWithState:&v72 objects:v81 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = 0;
        v31 = 0;
        v32 = *v73;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v73 != v32)
            {
              objc_enumerationMutation(v27);
            }

            v34 = *(*(&v72 + 1) + 8 * j);
            sampleType = [v34 sampleType];
            v36 = [sampleType code] == 17;

            v30 |= v36;
            sampleType2 = [v34 sampleType];
            LODWORD(sampleType) = [sampleType2 code] == 16;

            v31 |= sampleType;
          }

          v29 = [v27 countByEnumeratingWithState:&v72 objects:v81 count:16];
        }

        while (v29);

        v7 = 0;
        v12 = v70;
        if (v31 & v30)
        {
LABEL_31:
          v9 = 0;
          goto LABEL_42;
        }
      }

      else
      {

        LOBYTE(v31) = 0;
        LOBYTE(v30) = 0;
      }

      _HKInitializeLogging(v38, v39);
      v60 = HKLogDefaultCategory(v58, v59);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_FAULT))
      {
        [HKCorrelation _validateWithConfiguration:v60];
      }

      v61 = MEMORY[0x1E696ABC0];
      v62 = objc_opt_class();
      v63 = objc_opt_class();
      v64 = @"NO";
      if (v31)
      {
        v65 = @"YES";
      }

      else
      {
        v65 = @"NO";
      }

      if (v30)
      {
        v64 = @"YES";
      }

      [v61 hk_errorForInvalidArgument:@"@" class:v62 selector:v69 format:{@"%@: Blood pressure correlations must have a systolic and diastolic quantity type. hasSystolic = %@, hasDiastolic = %@", v63, v65, v64}];
    }

    else
    {
      _HKInitializeLogging(v25, v26);
      v55 = HKLogDefaultCategory(v53, v54);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
      {
        [(HKCorrelation *)v12 _validateWithConfiguration:v55];
      }

      v56 = MEMORY[0x1E696ABC0];
      v57 = objc_opt_class();
      [v56 hk_errorForInvalidArgument:@"@" class:v57 selector:a2 format:{@"%@: Blood pressure correlations must have 2 objects, one systolic BP and one diastolic BP. Received %ld objects.", objc_opt_class(), objc_msgSend(v12, "count"), v68}];
    }
    v9 = ;
  }

LABEL_42:

LABEL_43:

  return v9;
}

- (HKCorrelation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = HKCorrelation;
  v5 = [(HKSample *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"correlatedObjects"];
    objects = v5->_objects;
    v5->_objects = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKCorrelation;
  coderCopy = coder;
  [(HKSample *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_objects forKey:{@"correlatedObjects", v5.receiver, v5.super_class}];
}

- (void)_validateWithConfiguration:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = [a1 count];
  _os_log_fault_impl(&dword_19197B000, a2, OS_LOG_TYPE_FAULT, "Blood pressure correlations must have 2 objects, one systolic BP and one diastolic BP. Received %ld objects.", &v3, 0xCu);
}

@end