@interface TSMTIEMaskElement
- (TSMTIEMaskElement)initWithCoefficient:(double)coefficient offset:(double)offset lowerLimit:(double)limit upperLimit:(double)upperLimit;
- (TSMTIEMaskElement)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TSMTIEMaskElement

- (TSMTIEMaskElement)initWithCoefficient:(double)coefficient offset:(double)offset lowerLimit:(double)limit upperLimit:(double)upperLimit
{
  v11.receiver = self;
  v11.super_class = TSMTIEMaskElement;
  result = [(TSMTIEMaskElement *)&v11 init];
  if (result)
  {
    result->_a = coefficient;
    result->_b = offset;
    result->_lowerLimit = limit;
    result->_upperLimit = upperLimit;
  }

  return result;
}

- (TSMTIEMaskElement)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:?];
  v6 = [dictionaryCopy objectForKeyedSubscript:?];
  v7 = [dictionaryCopy objectForKeyedSubscript:?];
  v8 = [dictionaryCopy objectForKeyedSubscript:?];

  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    if (v8)
    {
LABEL_3:
      if (!v5)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }
  }

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  if (!v5)
  {
LABEL_11:

    v9 = 0;
    goto LABEL_12;
  }

LABEL_7:
  if (!v6 || !v7 || !v8)
  {
    goto LABEL_11;
  }

  [v5 doubleValue];
  [v6 doubleValue];
  [v7 doubleValue];
  [v8 doubleValue];
  v9 = [TSMTIEMaskElement initWithCoefficient:"initWithCoefficient:offset:lowerLimit:upperLimit:" offset:? lowerLimit:? upperLimit:?];
LABEL_12:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  [(TSMTIEMaskElement *)self a];
  [(TSMTIEMaskElement *)self b];
  [(TSMTIEMaskElement *)self lowerLimit];
  [(TSMTIEMaskElement *)self upperLimit];

  return [v4 initWithCoefficient:? offset:? lowerLimit:? upperLimit:?];
}

@end