@interface _PSFeatureDictionary
+ (id)_toPlistValue:(uint64_t)value;
+ (uint64_t)_fromPlistValue:(uint64_t)value timeBucket:;
- (_PSFeatureDictionary)initWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count;
- (id)keyEnumerator;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectForKey:(id)key;
- (void)_removeObjectForKey:(uint64_t)key;
- (void)_setPlistValue:(uint64_t)value inTimeBucket:(void *)bucket forKey:;
- (void)_timeBucketsCreateIfNeeded;
- (void)_unoptimizedValuesCreateIfNeeded;
- (void)addEntriesFromDictionary:(id)dictionary overwrite:(BOOL)overwrite;
- (void)addFeatureWithIntValue:(id)value doubleValue:(id)doubleValue stringValue:(id)stringValue BOOLValue:(id)lValue timeBucket:(int)bucket forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation _PSFeatureDictionary

- (_PSFeatureDictionary)initWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count
{
  v8 = [(_PSFeatureDictionary *)self init];
  if (v8 && count)
  {
    do
    {
      v10 = *objects++;
      v9 = v10;
      v11 = *keys++;
      [(_PSFeatureDictionary *)v8 setObject:v9 forKeyedSubscript:v11];
      --count;
    }

    while (count);
  }

  return v8;
}

+ (id)_toPlistValue:(uint64_t)value
{
  v2 = a2;
  objc_opt_self();
  if (![v2 hasBoolValue])
  {
    if ([v2 hasIntValue])
    {
      v6 = objc_autoreleasePoolPush();
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v2, "intValue")}];
    }

    else
    {
      if (![v2 hasDoubleValue])
      {
        stringValue = [v2 stringValue];
        v12 = stringValue;
        if (stringValue)
        {
          null = stringValue;
        }

        else
        {
          null = [MEMORY[0x1E695DFB0] null];
        }

        v5 = null;

        goto LABEL_18;
      }

      v6 = objc_autoreleasePoolPush();
      [v2 doubleValue];
      v8 = v7;
      v9 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:v7];
      if (malloc_size(v9) || ([v9 timeIntervalSinceReferenceDate], v14 != v8))
      {
        v10 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
      }

      else
      {
        v10 = v9;
      }

      v5 = v10;
    }

    objc_autoreleasePoolPop(v6);
    goto LABEL_18;
  }

  bOOLValue = [v2 BOOLValue];
  v4 = &unk_1F2D8C898;
  if (bOOLValue)
  {
    v4 = &unk_1F2D8C870;
  }

  v5 = v4;
LABEL_18:

  return v5;
}

+ (uint64_t)_fromPlistValue:(uint64_t)value timeBucket:
{
  v4 = a2;
  objc_opt_self();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (CFNumberIsFloatType(v4))
      {
        if (value || ([v4 doubleValue], v11 != 0.0))
        {
          v12 = objc_alloc(MEMORY[0x1E698ECC0]);
          v13 = 0;
          v14 = v4;
LABEL_30:
          v15 = 0;
          goto LABEL_31;
        }

        if (internedValues_onceToken == -1)
        {
LABEL_42:
          v21 = internedValues_values_4;
LABEL_43:
          v22 = v21;
          goto LABEL_44;
        }

LABEL_49:
        +[_PSFeatureDictionary _fromPlistValue:timeBucket:];
        goto LABEL_42;
      }

      if (!value)
      {
        unsignedIntegerValue = [v4 unsignedIntegerValue];
        if (unsignedIntegerValue == 1)
        {
          if (internedValues_onceToken != -1)
          {
            +[_PSFeatureDictionary _fromPlistValue:timeBucket:];
          }

          v21 = internedValues_values_3;
          goto LABEL_43;
        }

        if (!unsignedIntegerValue)
        {
          if (internedValues_onceToken != -1)
          {
            +[_PSFeatureDictionary _fromPlistValue:timeBucket:];
          }

          v21 = internedValues_values_2;
          goto LABEL_43;
        }
      }

      v12 = objc_alloc(MEMORY[0x1E698ECC0]);
      v13 = v4;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = objc_alloc(MEMORY[0x1E698ECC0]);
        v13 = 0;
        v14 = 0;
        v15 = v4;
LABEL_31:
        v22 = [v12 initWithIntValue:v13 doubleValue:v14 stringValue:v15 BOOLValue:0 timeBucketValue:value];
LABEL_44:
        v10 = v22;
        goto LABEL_45;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v4 timeIntervalSinceReferenceDate];
        v20 = v19;
        if (value || v19 != 0.0)
        {
          v24 = objc_alloc(MEMORY[0x1E698ECC0]);
          v6 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
          v7 = v24;
          v8 = v6;
          v9 = 0;
          goto LABEL_4;
        }

        if (internedValues_onceToken == -1)
        {
          goto LABEL_42;
        }

        goto LABEL_49;
      }

      if (!value)
      {
        if (internedValues_onceToken != -1)
        {
          +[_PSFeatureDictionary _fromPlistValue:timeBucket:];
        }

        v21 = internedValues_values_5;
        goto LABEL_43;
      }

      v12 = objc_alloc(MEMORY[0x1E698ECC0]);
      v13 = 0;
    }

    v14 = 0;
    goto LABEL_30;
  }

  if (!value)
  {
    v16 = [v4 objectForKeyedSubscript:@"BOOL"];
    bOOLValue = [v16 BOOLValue];

    if (bOOLValue)
    {
      if (internedValues_onceToken != -1)
      {
        +[_PSFeatureDictionary _fromPlistValue:timeBucket:];
      }

      v18 = &internedValues_values_0;
    }

    else
    {
      if (internedValues_onceToken != -1)
      {
        +[_PSFeatureDictionary _fromPlistValue:timeBucket:];
      }

      v18 = &internedValues_values_1;
    }

    v21 = *v18;
    goto LABEL_43;
  }

  v5 = objc_alloc(MEMORY[0x1E698ECC0]);
  v6 = [v4 objectForKeyedSubscript:@"BOOL"];
  v7 = v5;
  v8 = 0;
  v9 = v6;
LABEL_4:
  v10 = [v7 initWithIntValue:0 doubleValue:v8 stringValue:0 BOOLValue:v9 timeBucketValue:value];

LABEL_45:
  return v10;
}

- (id)objectForKey:(id)key
{
  v21 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_timeBuckets;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_timeBuckets objectForKeyedSubscript:v10, v16];
        v12 = [v11 objectForKeyedSubscript:keyCopy];
        if (v12)
        {
          v14 = v12;
          v13 = +[_PSFeatureDictionary _fromPlistValue:timeBucket:](_PSFeatureDictionary, v12, [v10 integerValue]);

          goto LABEL_11;
        }
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = [(NSMutableDictionary *)self->_unoptimizedValues objectForKeyedSubscript:keyCopy];
LABEL_11:

  return v13;
}

- (id)keyEnumerator
{
  v3 = [(NSMutableDictionary *)self->_timeBuckets count];
  if (v3 != 1)
  {
    if (!v3)
    {
      if (self->_unoptimizedValues)
      {
        unoptimizedValues = self->_unoptimizedValues;
      }

      else
      {
        unoptimizedValues = MEMORY[0x1E695E0F8];
      }

      keyEnumerator = [(NSMutableDictionary *)unoptimizedValues keyEnumerator];
      goto LABEL_7;
    }

LABEL_13:
    keyEnumerator = [[_PSFeatureDictionaryEnumerator alloc] initWithCollection:?];
LABEL_7:
    keyEnumerator2 = keyEnumerator;
    goto LABEL_10;
  }

  if ([(NSMutableDictionary *)self->_unoptimizedValues count])
  {
    goto LABEL_13;
  }

  v7 = objc_autoreleasePoolPush();
  objectEnumerator = [(NSMutableDictionary *)self->_timeBuckets objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  keyEnumerator2 = [nextObject keyEnumerator];

  objc_autoreleasePoolPop(v7);
LABEL_10:

  return keyEnumerator2;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objectCopy;
    v8 = [_PSFeatureDictionary _toPlistValue:v7];
    timeBucketValue = [v7 timeBucketValue];

    [(_PSFeatureDictionary *)self _setPlistValue:v8 inTimeBucket:timeBucketValue forKey:keyCopy];
  }

  else
  {
    [(_PSFeatureDictionary *)self setObject:keyCopy forKey:objectCopy];
  }
}

- (void)_removeObjectForKey:(uint64_t)key
{
  v3 = a2;
  v4 = v3;
  if (key)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__12;
    v20 = __Block_byref_object_dispose__12;
    v21 = 0;
    v5 = *(key + 8);
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __44___PSFeatureDictionary__removeObjectForKey___block_invoke;
    v11 = &unk_1E7C26330;
    v6 = v3;
    v14 = &v22;
    v15 = &v16;
    v12 = v6;
    keyCopy = key;
    [v5 enumerateKeysAndObjectsUsingBlock:&v8];
    if (*(v23 + 24) == 1)
    {
      if (v17[5])
      {
        [*(key + 8) setObject:0 forKeyedSubscript:{v8, v9, v10, v11}];
      }
    }

    else
    {
      v7 = [*(key + 16) objectForKeyedSubscript:{v6, v8, v9, v10, v11}];

      if (v7)
      {
        [*(key + 16) setObject:0 forKeyedSubscript:v6];
        --*(key + 24);
      }
    }

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v22, 8);
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v4[3] = self->_count;
  timeBuckets = self->_timeBuckets;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44___PSFeatureDictionary_mutableCopyWithZone___block_invoke;
  v10[3] = &unk_1E7C26358;
  v6 = v4;
  v11 = v6;
  [(NSMutableDictionary *)timeBuckets enumerateKeysAndObjectsUsingBlock:v10];
  v7 = [(NSMutableDictionary *)self->_unoptimizedValues mutableCopy];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (void)addEntriesFromDictionary:(id)dictionary overwrite:(BOOL)overwrite
{
  overwriteCopy = overwrite;
  v85 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v56 = dictionaryCopy;
    v7 = &OBJC_IVAR____PSSuggester__lock;
    if (overwriteCopy && self->_count)
    {
      v48 = dictionaryCopy;
      v8 = v56[3];
      context = objc_autoreleasePoolPush();
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      obj = [(NSMutableDictionary *)self->_timeBuckets objectEnumerator];
      v53 = [obj countByEnumeratingWithState:&v71 objects:v83 count:16];
      v9 = 0;
      if (v53)
      {
        v51 = *v72;
        v52 = v8;
        while (2)
        {
          for (i = 0; i != v53; ++i)
          {
            if (*v72 != v51)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v71 + 1) + 8 * i);
            v54 = [v11 count];
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            v70 = 0u;
            v12 = v56;
            v13 = [v12 countByEnumeratingWithState:&v67 objects:v82 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v68;
              do
              {
                for (j = 0; j != v14; ++j)
                {
                  if (*v68 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  [v11 setObject:0 forKeyedSubscript:*(*(&v67 + 1) + 8 * j)];
                }

                v14 = [v12 countByEnumeratingWithState:&v67 objects:v82 count:16];
              }

              while (v14);
            }

            v9 += v54 - [v11 count];
            v8 = v52;
            if (v9 == v52)
            {

              goto LABEL_42;
            }
          }

          v53 = [obj countByEnumeratingWithState:&v71 objects:v83 count:16];
          if (v53)
          {
            continue;
          }

          break;
        }
      }

      dictionaryCopy = v48;
      v7 = &OBJC_IVAR____PSSuggester__lock;
      if (v9 != v8)
      {
        unoptimizedValues = self->_unoptimizedValues;
        if (unoptimizedValues)
        {
          v18 = [(NSMutableDictionary *)unoptimizedValues count];
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v19 = v56;
          v20 = [v19 countByEnumeratingWithState:&v63 objects:v81 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v64;
            do
            {
              for (k = 0; k != v21; ++k)
              {
                if (*v64 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                [(NSMutableDictionary *)self->_unoptimizedValues setObject:0 forKeyedSubscript:*(*(&v63 + 1) + 8 * k)];
              }

              v21 = [v19 countByEnumeratingWithState:&v63 objects:v81 count:16];
            }

            while (v21);
          }

          v8 = v18 + v9 - [(NSMutableDictionary *)self->_unoptimizedValues count];
LABEL_42:
          dictionaryCopy = v48;
          v7 = &OBJC_IVAR____PSSuggester__lock;
        }

        else
        {
          v8 = v9;
        }
      }

      self->_count -= v8;
      objc_autoreleasePoolPop(context);
    }

    v33 = objc_autoreleasePoolPush();
    v34 = v56[1];
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __59___PSFeatureDictionary_addEntriesFromDictionary_overwrite___block_invoke;
    v61[3] = &unk_1E7C26380;
    v61[4] = self;
    v62 = overwriteCopy;
    [v34 enumerateKeysAndObjectsUsingBlock:v61];
    v35 = v7[223];
    v36 = [*(&self->super.super.super.isa + v35) count];
    v37 = *(v56 + v35);
    if (v36)
    {
      if (![v37 count])
      {
LABEL_59:
        objc_autoreleasePoolPop(v33);

        goto LABEL_60;
      }

      v49 = dictionaryCopy;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v38 = *(v56 + v35);
      v39 = [v38 countByEnumeratingWithState:&v57 objects:v80 count:16];
      if (v39)
      {
        v40 = v39;
        v55 = v33;
        v41 = *v58;
        do
        {
          for (m = 0; m != v40; ++m)
          {
            if (*v58 != v41)
            {
              objc_enumerationMutation(v38);
            }

            v43 = *(*(&v57 + 1) + 8 * m);
            if (!overwriteCopy)
            {
              v44 = [(_PSFeatureDictionary *)self objectForKeyedSubscript:*(*(&v57 + 1) + 8 * m)];

              if (v44)
              {
                continue;
              }
            }

            ++self->_count;
            v45 = [*(v56 + v35) objectForKeyedSubscript:v43];
            [*(&self->super.super.super.isa + v35) setObject:v45 forKeyedSubscript:v43];
          }

          v40 = [v38 countByEnumeratingWithState:&v57 objects:v80 count:16];
        }

        while (v40);
        dictionaryCopy = v49;
        v33 = v55;
      }
    }

    else
    {
      v46 = [v37 mutableCopy];
      v38 = *(&self->super.super.super.isa + v35);
      *(&self->super.super.super.isa + v35) = v46;
    }

    goto LABEL_59;
  }

  if (overwriteCopy)
  {
    v79.receiver = self;
    v79.super_class = _PSFeatureDictionary;
    [(_PSFeatureDictionary *)&v79 addEntriesFromDictionary:dictionaryCopy];
  }

  else
  {
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v24 = dictionaryCopy;
    v25 = dictionaryCopy;
    v26 = [v25 countByEnumeratingWithState:&v75 objects:v84 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v76;
      do
      {
        for (n = 0; n != v27; ++n)
        {
          if (*v76 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v75 + 1) + 8 * n);
          v31 = [(_PSFeatureDictionary *)self objectForKeyedSubscript:v30];

          if (!v31)
          {
            v32 = [v25 objectForKeyedSubscript:v30];
            [(_PSFeatureDictionary *)self setObject:v32 forKeyedSubscript:v30];

            ++self->_count;
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v75 objects:v84 count:16];
      }

      while (v27);
    }

    dictionaryCopy = v24;
  }

LABEL_60:
}

- (void)_timeBucketsCreateIfNeeded
{
  if (self)
  {
    selfCopy = self;
    v3 = self[1];
    if (!v3)
    {
      v4 = objc_opt_new();
      OUTLINED_FUNCTION_0_5(v4, 8);
      v3 = selfCopy[1];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)_unoptimizedValuesCreateIfNeeded
{
  if (self)
  {
    selfCopy = self;
    v3 = self[2];
    if (!v3)
    {
      v4 = objc_opt_new();
      OUTLINED_FUNCTION_0_5(v4, 16);
      v3 = selfCopy[2];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)_setPlistValue:(uint64_t)value inTimeBucket:(void *)bucket forKey:
{
  v13 = a2;
  bucketCopy = bucket;
  if (self)
  {
    [(_PSFeatureDictionary *)self _removeObjectForKey:bucketCopy];
    v8 = self[1];
    v9 = [MEMORY[0x1E696AD98] numberWithInt:value];
    v10 = [v8 objectForKeyedSubscript:v9];

    if (!v10)
    {
      v10 = objc_opt_new();
      _timeBucketsCreateIfNeeded = [(_PSFeatureDictionary *)self _timeBucketsCreateIfNeeded];
      v12 = [MEMORY[0x1E696AD98] numberWithInt:value];
      [_timeBucketsCreateIfNeeded setObject:v10 forKeyedSubscript:v12];
    }

    [v10 setObject:v13 forKeyedSubscript:bucketCopy];
    ++self[3];
  }
}

- (void)addFeatureWithIntValue:(id)value doubleValue:(id)doubleValue stringValue:(id)stringValue BOOLValue:(id)lValue timeBucket:(int)bucket forKey:(id)key
{
  v9 = *&bucket;
  valueCopy = value;
  doubleValueCopy = doubleValue;
  stringValueCopy = stringValue;
  lValueCopy = lValue;
  keyCopy = key;
  if (valueCopy)
  {
    if (CFNumberIsFloatType(valueCopy))
    {
      v20 = objc_autoreleasePoolPush();
      unsignedIntValue = [valueCopy unsignedIntValue];
      v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:unsignedIntValue];

      objc_autoreleasePoolPop(v20);
      valueCopy = v22;
    }

    v23 = valueCopy;
    v34 = v23;
  }

  else
  {
    if (doubleValueCopy)
    {
      [doubleValueCopy doubleValue];
      v25 = v24;
      v26 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:v24];
      if (!malloc_size(v26) && ([v26 timeIntervalSinceReferenceDate], v27 == v25) && (v28 = v26) != 0)
      {
        v23 = v28;
      }

      else
      {
        if (!CFNumberIsFloatType(doubleValueCopy))
        {
          v29 = objc_autoreleasePoolPush();
          v30 = MEMORY[0x1E696AD98];
          [doubleValueCopy doubleValue];
          v31 = [v30 numberWithDouble:?];

          objc_autoreleasePoolPop(v29);
          doubleValueCopy = v31;
        }

        v23 = doubleValueCopy;
        doubleValueCopy = v23;
      }
    }

    else
    {
      if (stringValueCopy)
      {
        null = [stringValueCopy copy];
      }

      else if (lValueCopy)
      {
        bOOLValue = [lValueCopy BOOLValue];
        v33 = &unk_1F2D8C8E8;
        if (bOOLValue)
        {
          v33 = &unk_1F2D8C8C0;
        }

        null = v33;
      }

      else
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      v23 = null;
      doubleValueCopy = 0;
    }

    v34 = 0;
  }

  [(_PSFeatureDictionary *)self _setPlistValue:v23 inTimeBucket:v9 forKey:keyCopy];
}

- (void)setObject:(uint64_t)a3 forKey:.cold.1(void *a1, void *a2, uint64_t a3)
{
  [(_PSFeatureDictionary *)a1 _removeObjectForKey:a2];
  v6 = [(_PSFeatureDictionary *)a1 _unoptimizedValuesCreateIfNeeded];
  [v6 setObject:a3 forKeyedSubscript:a2];

  ++a1[3];
}

@end