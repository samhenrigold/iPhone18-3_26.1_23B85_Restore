@interface _DPBitValueRandomizer
+ (id)bitValueRandomizerWithDimensionality:(unint64_t)dimensionality epsilon:(double)epsilon;
- (NSString)description;
- (_DPBitValueRandomizer)initWithDimensionality:(unint64_t)dimensionality epsilon:(double)epsilon;
- (id)randomize:(id)randomize;
- (id)randomizeBitValues:(id)values forKey:(id)key;
- (id)randomizeStrings:(id)strings forKey:(id)key;
@end

@implementation _DPBitValueRandomizer

- (_DPBitValueRandomizer)initWithDimensionality:(unint64_t)dimensionality epsilon:(double)epsilon
{
  if (isInvalidEpsilon(epsilon) || (v12.receiver = self, v12.super_class = _DPBitValueRandomizer, v8 = [(_DPBitValueRandomizer *)&v12 init], (self = v8) != 0) && (v8->_p = dimensionality, v8->_epsilon = epsilon, [_DPBiasedCoin coinWithBias:(1.0 / (exp(epsilon * 0.5) + 1.0))], v9 = objc_claimAutoreleasedReturnValue(), epsilonCoin = self->_epsilonCoin, self->_epsilonCoin = v9, epsilonCoin, !self->_epsilonCoin))
  {
    selfCopy = 0;
  }

  else
  {
    self = self;
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)bitValueRandomizerWithDimensionality:(unint64_t)dimensionality epsilon:(double)epsilon
{
  v4 = [[self alloc] initWithDimensionality:dimensionality epsilon:epsilon];

  return v4;
}

- (id)randomize:(id)randomize
{
  unsignedLongValue = [randomize unsignedLongValue];
  if (unsignedLongValue >= self->_p)
  {
    v6 = 0;
  }

  else
  {
    v5 = unsignedLongValue;
    v6 = [&stru_2839671C8 mutableCopy];
    if (self->_p)
    {
      v7 = 0;
      do
      {
        generateByte = [(_DPBiasedCoin *)self->_epsilonCoin generateByte];
        if ((v7 ^ v5) >= 8)
        {
          v9 = 0;
        }

        else
        {
          v9 = 1 << (v5 & 7);
        }

        [v6 appendFormat:@"%02X", generateByte ^ v9];
        v7 += 8;
      }

      while (v7 < self->_p);
    }
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: { p=%ld  epsilon=%lf ; cEpsilon=%lf ; epsilonCoin=%@ }", v5, self->_p, *&self->_epsilon, 1.0 / (exp(self->_epsilon * 0.5) + 1.0), self->_epsilonCoin];;

  return v6;
}

- (id)randomizeStrings:(id)strings forKey:(id)key
{
  v27 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  keyCopy = key;
  v7 = [_DPBitValueMap bitValueMapForKey:keyCopy];
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  v20 = [MEMORY[0x277CBEBF8] mutableCopy];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = stringsCopy;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [v7 bitValueForString:{*(*(&v22 + 1) + 8 * i), v20}];
        if (([v16 isEqualToNumber:&unk_283975F40] & 1) == 0)
        {
          v17 = [(_DPBitValueRandomizer *)self randomize:v16];
          v18 = -[_DPBitValueRecord initWithKey:clearBitValue:privateBitValueStr:creationDate:submitted:objectId:]([_DPBitValueRecord alloc], "initWithKey:clearBitValue:privateBitValueStr:creationDate:submitted:objectId:", keyCopy, [v16 shortValue], v17, 0, 0, v10);
          if (v18)
          {
            [v20 addObject:v18];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  return v20;
}

- (id)randomizeBitValues:(id)values forKey:(id)key
{
  v26 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  keyCopy = key;
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  v20 = [MEMORY[0x277CBEBF8] mutableCopy];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = valuesCopy;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        if (([v16 isEqualToNumber:&unk_283975F40] & 1) == 0)
        {
          v17 = [(_DPBitValueRandomizer *)self randomize:v16];
          v18 = -[_DPBitValueRecord initWithKey:clearBitValue:privateBitValueStr:creationDate:submitted:objectId:]([_DPBitValueRecord alloc], "initWithKey:clearBitValue:privateBitValueStr:creationDate:submitted:objectId:", keyCopy, [v16 shortValue], v17, 0, 0, v10);
          if (v18)
          {
            [v20 addObject:v18];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  return v20;
}

@end