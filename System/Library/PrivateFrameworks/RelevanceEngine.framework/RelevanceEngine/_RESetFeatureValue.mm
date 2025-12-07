@interface _RESetFeatureValue
+ (id)featureValueWithSet:(id)set;
- (BOOL)isEqual:(id)equal;
- (unint64_t)_integralFeatureValue;
- (unint64_t)hash;
@end

@implementation _RESetFeatureValue

+ (id)featureValueWithSet:(id)set
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  setCopy = set;
  v4 = [setCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(setCopy);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          goto LABEL_12;
        }
      }

      v5 = [setCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  if (!setCopy)
  {
LABEL_12:
    v8 = [MEMORY[0x277CBEB98] set];

    setCopy = v8;
  }

  v9 = [setCopy count];
  v10 = off_2785F9270;
  if (v9 >= 3)
  {
    v10 = off_2785F91B0;
  }

  v11 = [objc_alloc(*v10) initWithSet:setCopy];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      setValue = [(REFeatureValue *)self setValue];
      setValue2 = [(REFeatureValue *)v5 setValue];
      if (setValue == setValue2)
      {
        v8 = 1;
      }

      else
      {
        v8 = [setValue isEqual:setValue2];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  setValue = [(REFeatureValue *)self setValue];
  v3 = [setValue countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(setValue);
        }

        v5 ^= [*(*(&v9 + 1) + 8 * i) hash];
      }

      v4 = [setValue countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_integralFeatureValue
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  setValue = [(REFeatureValue *)self setValue];
  v3 = [setValue countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(setValue);
        }

        v5 ^= [*(*(&v9 + 1) + 8 * i) _integralFeatureValue];
      }

      v4 = [setValue countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end