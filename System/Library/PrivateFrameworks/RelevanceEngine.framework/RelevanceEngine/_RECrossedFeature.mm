@interface _RECrossedFeature
- (BOOL)isEqual:(id)equal;
- (_RECrossedFeature)initWithFeatures:(id)features;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_computeHash;
- (void)_replaceDependentFeature:(id)feature withFeature:(id)withFeature;
- (void)_updateFeaturesArray;
@end

@implementation _RECrossedFeature

- (_RECrossedFeature)initWithFeatures:(id)features
{
  v50 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  v37 = +[(REFeatureSet *)REMutableFeatureSet];
  v4 = +[REMLModel featureBitWidth];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = featuresCopy;
  v5 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v45;
    v9 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v45 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v44 + 1) + 8 * i);
        _bitCount = [v11 _bitCount];
        if (_bitCount < 0)
        {
          RERaiseInternalException(v9, @"Feature %@ cannot be crossed. It may need to be transformed first", v13, v14, v15, v16, v17, v18, v11);
        }

        else
        {
          v19 = _bitCount + v7;
          if (_bitCount + v7 <= v4)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              _dependentFeatures = [v11 _dependentFeatures];
              [v37 unionFeatureSet:_dependentFeatures];
            }

            else
            {
              [v37 addFeature:v11];
            }

            v7 = v19;
          }

          else
          {
            RERaiseInternalException(v9, @"Feature %@ cannot be crossed with other features. It requires too much precision", v13, v14, v15, v16, v17, v18, v11);
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v6);
  }

  v43.receiver = self;
  v43.super_class = _RECrossedFeature;
  v21 = [(_RECrossedFeature *)&v43 init];
  if (v21)
  {
    v22 = [v37 copy];
    dependentFeatures = v21->_dependentFeatures;
    v21->_dependentFeatures = v22;

    [(_RECrossedFeature *)v21 _updateFeaturesArray];
    v21->_bitCount = 0;
    string = [MEMORY[0x277CCAB68] string];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v25 = v21->_features;
    v26 = [(NSArray *)v25 countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v40;
      v29 = 1;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v40 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v31 = *(*(&v39 + 1) + 8 * j);
          if ([string length])
          {
            [string appendString:@"X"];
          }

          name = [v31 name];
          [string appendString:name];

          if ([v31 featureType] == 2)
          {
            v29 = 2;
          }

          v21->_bitCount += [v31 _bitCount];
        }

        v27 = [(NSArray *)v25 countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v27);
    }

    else
    {
      v29 = 1;
    }

    v33 = [string copy];
    name = v21->_name;
    v21->_name = v33;

    v21->_featureType = v29;
    [(_RECrossedFeature *)v21 _computeHash];
  }

  return v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = v5;
      if (self->_featureType == v5->_featureType)
      {
        features = self->_features;
        v8 = v5->_features;
        v9 = features;
        v10 = v9;
        if (v9 == v8)
        {
          v11 = 1;
        }

        else
        {
          v11 = [(NSArray *)v9 isEqual:v8];
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)_replaceDependentFeature:(id)feature withFeature:(id)withFeature
{
  withFeatureCopy = withFeature;
  featureCopy = feature;
  name = [featureCopy name];
  name2 = [withFeatureCopy name];
  v9 = [name isEqualToString:name2];

  if ((v9 & 1) == 0)
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"This API is only meant to switch around pointers to the same type of object", v10, v11, v12, v13, v14, v15, v19);
  }

  v16 = [(REFeatureSet *)self->_dependentFeatures mutableCopy];
  [v16 removeFeature:featureCopy];

  [v16 addFeature:withFeatureCopy];
  v17 = [v16 copy];
  dependentFeatures = self->_dependentFeatures;
  self->_dependentFeatures = v17;

  [(_RECrossedFeature *)self _updateFeaturesArray];
  [(_RECrossedFeature *)self _computeHash];
}

- (void)_updateFeaturesArray
{
  allFeatures = [(REFeatureSet *)self->_dependentFeatures allFeatures];
  v3 = [allFeatures sortedArrayUsingComparator:&__block_literal_global_75];
  features = self->_features;
  self->_features = v3;
}

- (void)_computeHash
{
  v13 = *MEMORY[0x277D85DE8];
  self->_hash = self->_featureType;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_features;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        self->_hash ^= [*(*(&v8 + 1) + 8 * v7++) hash];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  features = self->_features;

  return [v4 initWithFeatures:features];
}

@end