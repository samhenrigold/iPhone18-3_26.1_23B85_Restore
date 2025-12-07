@interface IKCSSMediaQueryAndList
- (BOOL)evaluate;
- (IKCSSMediaQueryAndList)init;
- (id)description;
- (id)expressionAsString;
- (void)setType:(id)type;
@end

@implementation IKCSSMediaQueryAndList

- (IKCSSMediaQueryAndList)init
{
  v6.receiver = self;
  v6.super_class = IKCSSMediaQueryAndList;
  v2 = [(IKCSSMediaQueryAndList *)&v6 init];
  if (v2)
  {
    v3 = +[(IKArray *)IKMutableArray];
    queryList = v2->_queryList;
    v2->_queryList = v3;

    v2->_negated = 0;
  }

  return v2;
}

- (void)setType:(id)type
{
  ik_sharedInstance = [type ik_sharedInstance];
  type = self->_type;
  self->_type = ik_sharedInstance;

  MEMORY[0x2821F96F8](ik_sharedInstance, type);
}

- (id)expressionAsString
{
  v19 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_queryList;
  v5 = [(IKArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (v8)
        {
          type = [(IKCSSMediaQueryAndList *)self type];
          expressionAsString = [v10 expressionAsString];
          [string appendFormat:@"%@ and (%@)", type, expressionAsString, v14];
        }

        else
        {
          type = [*(*(&v14 + 1) + 8 * i) expressionAsString];
          [string appendFormat:@" and (%@)", type];
        }

        v8 = 0;
      }

      v6 = [(IKArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v8 = 0;
    }

    while (v6);
  }

  return string;
}

- (BOOL)evaluate
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [[IKStyleMediaQuery alloc] initWithMediaType:self->_type featureValues:0 isNegated:0];
  if (v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = self->_queryList;
    v5 = [(IKArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if (![*(*(&v12 + 1) + 8 * i) evaluate])
          {
            v9 = 0;
            goto LABEL_12;
          }
        }

        v6 = [(IKArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v9 = 1;
LABEL_12:
  }

  else
  {
    v9 = 0;
  }

  negated = self->_negated;

  return (v9 ^ negated) & 1;
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = string;
  if (self->_negated)
  {
    [string appendString:@"!"];
  }

  objc_msgSend(v4, "appendFormat:", @"(type=%@, exprs=["), self->_type;
  if ([(IKArray *)self->_queryList count])
  {
    v5 = [(IKArray *)self->_queryList objectAtIndex:0];
    [v4 appendFormat:@"%@", v5];

    if ([(IKArray *)self->_queryList count]>= 2)
    {
      v6 = 1;
      do
      {
        v7 = [(IKArray *)self->_queryList objectAtIndex:v6];
        [v4 appendFormat:@" && %@", v7];

        ++v6;
      }

      while (v6 < [(IKArray *)self->_queryList count]);
    }
  }

  [v4 appendString:@"]"]);

  return v4;
}

@end