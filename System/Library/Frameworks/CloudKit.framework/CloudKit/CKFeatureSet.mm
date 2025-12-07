@interface CKFeatureSet
- (BOOL)hasValue:(id)value forName:(id)name;
- (BOOL)isEqual:(id)equal;
- (CKFeatureSet)initWithCoder:(id)coder;
- (CKFeatureSet)initWithFeatures:(id)features;
- (NSArray)features;
- (id)description;
- (id)valuesForName:(id)name;
- (unint64_t)hash;
- (void)addFeatures:(id)features;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKFeatureSet

- (CKFeatureSet)initWithFeatures:(id)features
{
  featuresCopy = features;
  v10.receiver = self;
  v10.super_class = CKFeatureSet;
  v5 = [(CKFeatureSet *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_new();
    featureMap = v5->_featureMap;
    v5->_featureMap = v6;

    objc_msgSend_addFeatures_(v5, v8, featuresCopy);
  }

  return v5;
}

- (void)addFeatures:(id)features
{
  v31 = *MEMORY[0x1E69E9840];
  featuresCopy = features;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(featuresCopy, v5, &v26, v30, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(featuresCopy);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        featureMap = self->_featureMap;
        v14 = objc_msgSend_name(v12, v7, v8);
        v16 = objc_msgSend_objectForKeyedSubscript_(featureMap, v15, v14);

        if (!v16)
        {
          v16 = objc_opt_new();
        }

        v19 = objc_msgSend_value(v12, v17, v18);
        objc_msgSend_setObject_forKeyedSubscript_(v16, v20, v12, v19);

        v21 = self->_featureMap;
        v24 = objc_msgSend_name(v12, v22, v23);
        objc_msgSend_setObject_forKeyedSubscript_(v21, v25, v16, v24);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(featuresCopy, v7, &v26, v30, 16);
    }

    while (v9);
  }
}

- (NSArray)features
{
  v44 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_features)
  {
    v3 = objc_opt_new();
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v6 = objc_msgSend_allValues(selfCopy->_featureMap, v4, v5);
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v37, v43, 16);
    if (v10)
    {
      v11 = *v38;
      do
      {
        v12 = 0;
        do
        {
          if (*v38 != v11)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v37 + 1) + 8 * v12);
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v14 = objc_msgSend_allValues(v13, v8, v9, 0);
          v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v33, v42, 16);
          if (v17)
          {
            v18 = *v34;
            do
            {
              v19 = 0;
              do
              {
                if (*v34 != v18)
                {
                  objc_enumerationMutation(v14);
                }

                objc_msgSend_addObject_(v3, v16, *(*(&v33 + 1) + 8 * v19++));
              }

              while (v17 != v19);
              v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v33, v42, 16);
            }

            while (v17);
          }

          ++v12;
        }

        while (v12 != v10);
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v37, v43, 16);
      }

      while (v10);
    }

    v20 = objc_alloc(MEMORY[0x1E696AEB0]);
    v22 = objc_msgSend_initWithKey_ascending_(v20, v21, @"name", 1);
    v23 = objc_alloc(MEMORY[0x1E696AEB0]);
    v25 = objc_msgSend_initWithKey_ascending_(v23, v24, @"value", 1);
    v41[0] = v22;
    v41[1] = v25;
    v27 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v26, v41, 2);
    v29 = objc_msgSend_sortedArrayUsingDescriptors_(v3, v28, v27);
    features = selfCopy->_features;
    selfCopy->_features = v29;
  }

  objc_sync_exit(selfCopy);

  v31 = selfCopy->_features;

  return v31;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_features(self, v5, v6);
  v8 = NSStringFromSelector(sel_features);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, v7, v8);

  objc_autoreleasePoolPop(v4);
}

- (CKFeatureSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = CKFeatureSet;
  v5 = [(CKFeatureSet *)&v22 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v13 = objc_msgSend_setWithObjects_(v6, v12, v7, v8, v9, v10, v11, 0);
    v14 = NSStringFromSelector(sel_features);
    v16 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v15, v13, v14);
    v17 = *(v5 + 1);
    *(v5 + 1) = v16;

    v18 = objc_opt_new();
    v19 = *(v5 + 2);
    *(v5 + 2) = v18;

    objc_msgSend_addFeatures_(v5, v20, *(v5 + 1));
  }

  return v5;
}

- (id)valuesForName:(id)name
{
  nameCopy = name;
  v7 = objc_msgSend_featureMap(self, v5, v6);
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, nameCopy);

  v12 = objc_msgSend_allKeys(v9, v10, v11);
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  v15 = v14;

  return v14;
}

- (BOOL)hasValue:(id)value forName:(id)name
{
  nameCopy = name;
  valueCopy = value;
  v10 = objc_msgSend_featureMap(self, v8, v9);
  v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, nameCopy);

  v14 = objc_msgSend_valueForKey_(v12, v13, valueCopy);

  return v14 != 0;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    v9 = objc_msgSend_features(self, v7, v8);
    v12 = objc_msgSend_features(equalCopy, v10, v11);
    isEqual = objc_msgSend_isEqual_(v9, v13, v12);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = objc_msgSend_features(self, a2, v2, 0);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v13, v17, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v14;
    v10 = 1;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v10 = objc_msgSend_hash(*(*(&v13 + 1) + 8 * i), v6, v7) - v10 + 32 * v10;
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v13, v17, 16);
    }

    while (v8);
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (id)description
{
  v13.receiver = self;
  v13.super_class = CKFeatureSet;
  v3 = [(CKFeatureSet *)&v13 description];
  v6 = objc_msgSend_features(self, v4, v5);
  v9 = objc_msgSend_description(v6, v7, v8);
  v11 = objc_msgSend_stringByAppendingFormat_(v3, v10, @": %@", v9);

  return v11;
}

@end