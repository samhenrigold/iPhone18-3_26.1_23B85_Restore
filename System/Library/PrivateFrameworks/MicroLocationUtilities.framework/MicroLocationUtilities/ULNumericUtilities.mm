@interface ULNumericUtilities
+ (double)magnitudeOfVector:(id)vector;
+ (double)sumOfVector:(id)vector;
+ (id)dotProduct:(id)product vectorB:(id)b;
@end

@implementation ULNumericUtilities

+ (id)dotProduct:(id)product vectorB:(id)b
{
  productCopy = product;
  bCopy = b;
  v7 = [productCopy count];
  if (v7 == [bCopy count] && objc_msgSend(productCopy, "count"))
  {
    if ([productCopy count])
    {
      v8 = 0;
      v9 = 0.0;
      do
      {
        v10 = [productCopy objectAtIndexedSubscript:v8];
        [v10 doubleValue];
        v12 = v11;
        v13 = [bCopy objectAtIndexedSubscript:v8];
        [v13 doubleValue];
        v9 = v9 + v12 * v14;

        ++v8;
      }

      while (v8 < [productCopy count]);
    }

    else
    {
      v9 = 0.0;
    }

    v15 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (double)sumOfVector:(id)vector
{
  v16 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [vectorCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(vectorCopy);
        }

        [*(*(&v11 + 1) + 8 * i) doubleValue];
        v7 = v7 + v9;
      }

      v5 = [vectorCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

+ (double)magnitudeOfVector:(id)vector
{
  v16 = *MEMORY[0x277D85DE8];
  vectorCopy = vector;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [vectorCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(vectorCopy);
        }

        [*(*(&v11 + 1) + 8 * i) doubleValue];
        v7 = v7 + v9 * v9;
      }

      v5 = [vectorCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return sqrt(v7);
}

@end