@interface _REMLFeatureExplanation
+ (id)combinedExplanationsFromExplanations:(id)explanations;
- (_REMLFeatureExplanation)explanationWithStyle:(unint64_t)style;
- (_REMLFeatureExplanation)initWithFeature:(id)feature mean:(float)mean variance:(float)variance;
- (id)explanationByCombiningWithExplanation:(id)explanation;
- (int64_t)_rankExplanationToSimilarExplanation:(id)explanation;
@end

@implementation _REMLFeatureExplanation

+ (id)combinedExplanationsFromExplanations:(id)explanations
{
  v59 = *MEMORY[0x277D85DE8];
  explanationsCopy = explanations;
  v4 = [MEMORY[0x277CCA940] set];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v5 = explanationsCopy;
  v6 = [v5 countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v53;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v53 != v8)
        {
          objc_enumerationMutation(v5);
        }

        allFeatures = [*(*(*(&v52 + 1) + 8 * i) + 8) allFeatures];
        [v4 addObjectsFromArray:allFeatures];
      }

      v7 = [v5 countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v7);
  }

  [MEMORY[0x277CBEB58] set];
  v42 = v41 = v5;
  v11 = [v5 mutableCopy];
  v43 = v11;
  while ([v11 count])
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v12 = v4;
    v13 = [v12 countByEnumeratingWithState:&v48 objects:v57 count:16];
    if (!v13)
    {

      break;
    }

    v14 = v13;
    v15 = 0;
    v16 = 0;
    v17 = *v49;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        v19 = v16;
        if (*v49 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v20 = *(*(&v48 + 1) + 8 * j);
        v21 = [v12 countForObject:v20];
        if (v21 <= v19)
        {
          v16 = v19;
        }

        else
        {
          v22 = v20;

          v15 = v22;
          v16 = v21;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v14);

    if (!v15)
    {
      break;
    }

    if (v16)
    {
      if (v21 <= v19)
      {
        v23 = v19;
      }

      else
      {
        v23 = v21;
      }

      do
      {
        [v12 removeObject:v15];
        --v23;
      }

      while (v23);
    }

    v24 = [MEMORY[0x277CBEB58] set];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v25 = v43;
    v26 = [v25 countByEnumeratingWithState:&v44 objects:v56 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v45;
      do
      {
        for (k = 0; k != v27; ++k)
        {
          if (*v45 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v44 + 1) + 8 * k);
          if ([*(v30 + 8) containsFeature:v15])
          {
            [v24 addObject:v30];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v44 objects:v56 count:16];
      }

      while (v27);
    }

    [v25 minusSet:v24];
    anyObject = [v24 anyObject];
    if (anyObject)
    {
      v32 = anyObject;
      [v24 removeObject:anyObject];
      v33 = v32[4];
      v34 = v32[5];
      while ([v24 count])
      {
        anyObject2 = [v24 anyObject];
        [v24 removeObject:anyObject2];
        v33 = v33 + anyObject2[4];
        if (v34 >= anyObject2[5])
        {
          v34 = anyObject2[5];
        }
      }

      v36 = [_REMLFeatureExplanation alloc];
      *&v37 = v33;
      *&v38 = v34;
      v39 = [(_REMLFeatureExplanation *)v36 initWithFeature:v15 mean:v37 variance:v38];

      [v42 addObject:v39];
    }

    v11 = v25;
  }

  return v42;
}

- (_REMLFeatureExplanation)initWithFeature:(id)feature mean:(float)mean variance:(float)variance
{
  featureCopy = feature;
  v14.receiver = self;
  v14.super_class = _REMLFeatureExplanation;
  v9 = [(_REMLFeatureExplanation *)&v14 init];
  if (v9)
  {
    v10 = [REFeatureSet featureSetWithFeature:featureCopy];
    v11 = RERootFeatureSetForFeatures(v10);
    features = v9->_features;
    v9->_features = v11;

    v9->_mean = mean;
    v9->_variance = variance;
  }

  return v9;
}

- (id)explanationByCombiningWithExplanation:(id)explanation
{
  explanationCopy = explanation;
  v5 = objc_alloc_init(_REMLFeatureExplanation);
  v6 = [*(explanationCopy + 1) mutableCopy];
  [v6 intersetFeatureSet:self->_features];
  v7 = [v6 copy];
  features = v5->_features;
  v5->_features = v7;

  v5->_mean = self->_mean + *(explanationCopy + 4);
  variance = self->_variance;
  v10 = *(explanationCopy + 5);

  if (variance >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = variance;
  }

  v5->_mean = v11;

  return v5;
}

- (int64_t)_rankExplanationToSimilarExplanation:(id)explanation
{
  LODWORD(v3) = *(explanation + 4);
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
  *&v6 = self->_mean;
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v8 = [v5 compare:v7];

  return v8;
}

- (_REMLFeatureExplanation)explanationWithStyle:(unint64_t)style
{
  allFeatures = [(REFeatureSet *)self->_features allFeatures];
  v6 = [(REMLExplanation *)self _formattedFeatureListFromFeatures:allFeatures style:style];

  if (style == 1)
  {
    if (self->_mean <= 0.0)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Low probability from %@", v6];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"High probability from %@", v6];
    }
  }

  else
  {
    if (style)
    {
      v7 = @"Unknown style";
      goto LABEL_11;
    }

    if (self->_mean <= 0.0)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Low %@", v6];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"High %@", v6];
    }
  }
  v7 = ;
LABEL_11:

  return v7;
}

@end