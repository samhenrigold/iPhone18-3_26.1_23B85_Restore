@interface IKCSSMediaQueryOrList
- (BOOL)evaluate;
- (IKCSSMediaQueryOrList)init;
- (id)description;
- (id)expressionAsString;
@end

@implementation IKCSSMediaQueryOrList

- (IKCSSMediaQueryOrList)init
{
  v6.receiver = self;
  v6.super_class = IKCSSMediaQueryOrList;
  v2 = [(IKCSSMediaQueryOrList *)&v6 init];
  if (v2)
  {
    v3 = +[(IKArray *)IKMutableArray];
    queryList = v2->_queryList;
    v2->_queryList = v3;
  }

  return v2;
}

- (id)expressionAsString
{
  v17 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_queryList;
  v5 = [(IKArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = @"%@";
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        expressionAsString = [*(*(&v12 + 1) + 8 * i) expressionAsString];
        [string appendFormat:v8, expressionAsString];

        v8 = @" or %@";
      }

      v6 = [(IKArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v8 = @" or %@";
    }

    while (v6);
  }

  return string;
}

- (BOOL)evaluate
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_queryList;
  v3 = [(IKArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) evaluate])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(IKArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  objc_msgSend(string, "appendString:", @"(");
  if ([(IKArray *)self->_queryList count])
  {
    v4 = [(IKArray *)self->_queryList objectAtIndex:0];
    [string appendFormat:@"%@", v4];

    if ([(IKArray *)self->_queryList count]>= 2)
    {
      v5 = 1;
      do
      {
        v6 = [(IKArray *)self->_queryList objectAtIndex:v5];
        [string appendFormat:@" || %@", v6];

        ++v5;
      }

      while (v5 < [(IKArray *)self->_queryList count]);
    }
  }

  [string appendString:@""]);

  return string;
}

@end