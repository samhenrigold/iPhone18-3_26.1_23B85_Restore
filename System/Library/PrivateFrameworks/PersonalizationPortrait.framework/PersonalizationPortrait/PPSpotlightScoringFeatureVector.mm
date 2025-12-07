@interface PPSpotlightScoringFeatureVector
+ (id)decodeFeatureVectorFromData:(id)data version:(id)version;
- (BOOL)containsQidString:(id)string;
- (PPSpotlightScoringFeatureVector)init;
- (id)encodeAsData;
- (id)qidStrings;
- (void)addQidString:(id)string;
@end

@implementation PPSpotlightScoringFeatureVector

- (id)qidStrings
{
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  allObjects = [(NSMutableSet *)self->_features allObjects];
  v5 = [allObjects _pas_mappedArrayWithTransform:&__block_literal_global_4632];
  v6 = [v3 initWithArray:v5];

  return v6;
}

id __45__PPSpotlightScoringFeatureVector_qidStrings__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 unsignedIntValue];

  v6 = [v4 initWithFormat:@"Q%u", v5];

  return v6;
}

- (BOOL)containsQidString:(id)string
{
  v4 = qidStringToNumeric(string);
  features = self->_features;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  LOBYTE(features) = [(NSMutableSet *)features containsObject:v6];

  return features;
}

- (void)addQidString:(id)string
{
  v4 = qidStringToNumeric(string);
  features = self->_features;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  [(NSMutableSet *)features addObject:v6];
}

- (id)encodeAsData
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [(NSMutableSet *)self->_features count];
  if (v4 >= 0xC8)
  {
    v5 = 200;
  }

  else
  {
    v5 = v4;
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:4 * v5];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->_features;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        unsignedIntValue = [*(*(&v17 + 1) + 8 * i) unsignedIntValue];
        [v6 appendBytes:&unsignedIntValue length:4];
      }

      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  if (([v6 length] & 3) != 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [v6 length];
    v15 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPSpotlightScoringFeatureVector.m" lineNumber:38 description:{@"Invalid NSData size of %tu in %@", v14, v15}];
  }

  return v6;
}

- (PPSpotlightScoringFeatureVector)init
{
  v6.receiver = self;
  v6.super_class = PPSpotlightScoringFeatureVector;
  v2 = [(PPSpotlightScoringFeatureVector *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    features = v2->_features;
    v2->_features = v3;
  }

  return v2;
}

+ (id)decodeFeatureVectorFromData:(id)data version:(id)version
{
  v40 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  versionCopy = version;
  if (![dataCopy length])
  {
    v12 = pp_universal_search_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = NSStringFromSelector(a2);
      *buf = 138412290;
      v37 = v13;
      _os_log_debug_impl(&dword_1A7FD3000, v12, OS_LOG_TYPE_DEBUG, "%@: attempt to decode empty feature vector", buf, 0xCu);
      goto LABEL_13;
    }

LABEL_14:

    v21 = 0;
    goto LABEL_15;
  }

  [versionCopy doubleValue];
  if (v9 == 1.0)
  {
    v10 = pp_universal_search_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v32 = NSStringFromSelector(a2);
      [versionCopy doubleValue];
      *buf = 138412546;
      v37 = v32;
      v38 = 2048;
      v39 = v33;
      _os_log_debug_impl(&dword_1A7FD3000, v10, OS_LOG_TYPE_DEBUG, "%@: decoding feature vector of deprecated version: %f", buf, 0x16u);
    }

    v11 = [dataCopy length];
    if (__ROR8__(0xAAAAAAAAAAAAAAABLL * [dataCopy length], 1) >= 0x2AAAAAAAAAAAAAABuLL)
    {
      v12 = pp_default_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v13 = NSStringFromSelector(a2);
        v14 = [dataCopy length];
        *buf = 138412546;
        v37 = v13;
        v38 = 2048;
        v39 = v14;
        _os_log_fault_impl(&dword_1A7FD3000, v12, OS_LOG_TYPE_FAULT, "%@: Invalid V1 NSData size of %tu", buf, 0x16u);
LABEL_13:

        goto LABEL_14;
      }

      goto LABEL_14;
    }

    v21 = objc_opt_new();
    if (v11 >= 6)
    {
      v23 = 0;
      v24 = 6 * (v11 / 6uLL);
      do
      {
        *buf = 0;
        [dataCopy getBytes:buf range:{v23, 4}];
        v25 = v21[1];
        v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*buf];
        [v25 addObject:v26];

        v23 += 6;
      }

      while (v24 != v23);
    }
  }

  else
  {
    [versionCopy doubleValue];
    v16 = v15;
    v17 = +[PPSpotlightScoringFeatureVector featureVectorVersion];
    [v17 doubleValue];
    v19 = v18;

    if (v16 != v19)
    {
      v12 = pp_universal_search_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        [versionCopy doubleValue];
        *buf = 138412546;
        v37 = v13;
        v38 = 2048;
        v39 = v20;
        _os_log_error_impl(&dword_1A7FD3000, v12, OS_LOG_TYPE_ERROR, "%@: attempt to decode feature vector of unsupported version: %f", buf, 0x16u);
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    v27 = [dataCopy length];
    if (([dataCopy length] & 3) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v35 = NSStringFromSelector(a2);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PPSpotlightScoringFeatureVector.m" lineNumber:81 description:{@"%@: Invalid NSData size of %tu", v35, objc_msgSend(dataCopy, "length")}];
    }

    v21 = objc_opt_new();
    if (v27 >> 2)
    {
      v28 = 0;
      v29 = 4 * (v27 >> 2);
      do
      {
        *buf = 0;
        [dataCopy getBytes:buf range:{v28, 4}];
        v30 = v21[1];
        v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*buf];
        [v30 addObject:v31];

        v28 += 4;
      }

      while (v29 != v28);
    }
  }

LABEL_15:

  return v21;
}

@end