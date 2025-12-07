@interface SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)numericalizedFeatureAtIndex:(unint64_t)index;
- (unsigned)shapeAtIndex:(unint64_t)index;
- (void)addFeature:(id)feature;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor

- (void)mergeFrom:(id)from
{
  v21 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  shapesCount = [fromCopy shapesCount];
  if (shapesCount)
  {
    v6 = shapesCount;
    for (i = 0; i != v6; ++i)
    {
      -[SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor addShape:](self, "addShape:", [fromCopy shapeAtIndex:i]);
    }
  }

  numericalizedFeaturesCount = [fromCopy numericalizedFeaturesCount];
  if (numericalizedFeaturesCount)
  {
    v9 = numericalizedFeaturesCount;
    for (j = 0; j != v9; ++j)
    {
      -[SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor addNumericalizedFeature:](self, "addNumericalizedFeature:", [fromCopy numericalizedFeatureAtIndex:j]);
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = fromCopy[7];
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor *)self addFeature:*(*(&v16 + 1) + 8 * v15++), v16];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (unint64_t)hash
{
  v3 = PBRepeatedUInt32Hash();
  v4 = PBRepeatedUInt32Hash() ^ v3;
  return v4 ^ [(NSMutableArray *)self->_features hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && PBRepeatedUInt32IsEqual() && PBRepeatedUInt32IsEqual())
  {
    features = self->_features;
    if (features | equalCopy[7])
    {
      v6 = [(NSMutableArray *)features isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_features;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

        v11 = [*(*(&v13 + 1) + 8 * v10) copyWithZone:{zone, v13}];
        [v5 addFeature:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor *)self shapesCount])
  {
    [toCopy clearShapes];
    shapesCount = [(SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor *)self shapesCount];
    if (shapesCount)
    {
      v5 = shapesCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addShape:{-[SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor shapeAtIndex:](self, "shapeAtIndex:", i)}];
      }
    }
  }

  if ([(SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor *)self numericalizedFeaturesCount])
  {
    [toCopy clearNumericalizedFeatures];
    numericalizedFeaturesCount = [(SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor *)self numericalizedFeaturesCount];
    if (numericalizedFeaturesCount)
    {
      v8 = numericalizedFeaturesCount;
      for (j = 0; j != v8; ++j)
      {
        [toCopy addNumericalizedFeature:{-[SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor numericalizedFeatureAtIndex:](self, "numericalizedFeatureAtIndex:", j)}];
      }
    }
  }

  if ([(SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor *)self featuresCount])
  {
    [toCopy clearFeatures];
    featuresCount = [(SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor *)self featuresCount];
    if (featuresCount)
    {
      v11 = featuresCount;
      for (k = 0; k != v11; ++k)
      {
        v13 = [(SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor *)self featureAtIndex:k];
        [toCopy addFeature:v13];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_shapes.count)
  {
    v5 = 0;
    do
    {
      PBDataWriterWriteUint32Field();
      ++v5;
    }

    while (v5 < self->_shapes.count);
  }

  if (self->_numericalizedFeatures.count)
  {
    v6 = 0;
    do
    {
      PBDataWriterWriteUint32Field();
      ++v6;
    }

    while (v6 < self->_numericalizedFeatures.count);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_features;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteStringField();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = PBRepeatedUInt32NSArray();
  [dictionary setObject:v4 forKey:@"shape"];

  v5 = PBRepeatedUInt32NSArray();
  [dictionary setObject:v5 forKey:@"numericalized_feature"];

  features = self->_features;
  if (features)
  {
    [dictionary setObject:features forKey:@"feature"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor;
  v4 = [(SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addFeature:(id)feature
{
  featureCopy = feature;
  features = self->_features;
  v8 = featureCopy;
  if (!features)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_features;
    self->_features = v6;

    featureCopy = v8;
    features = self->_features;
  }

  [(NSMutableArray *)features addObject:featureCopy];
}

- (unsigned)numericalizedFeatureAtIndex:(unint64_t)index
{
  p_numericalizedFeatures = &self->_numericalizedFeatures;
  count = self->_numericalizedFeatures.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_numericalizedFeatures->list[index];
}

- (unsigned)shapeAtIndex:(unint64_t)index
{
  p_shapes = &self->_shapes;
  count = self->_shapes.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_shapes->list[index];
}

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor;
  [(SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor *)&v3 dealloc];
}

@end