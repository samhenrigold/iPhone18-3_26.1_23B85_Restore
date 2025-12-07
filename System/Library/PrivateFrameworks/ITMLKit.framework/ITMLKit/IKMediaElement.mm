@interface IKMediaElement
- (IKViewElement)relatedContent;
- (NSArray)assets;
- (unint64_t)scrubBehavior;
@end

@implementation IKMediaElement

- (unint64_t)scrubBehavior
{
  attributes = [(IKViewElement *)self attributes];
  v3 = [attributes objectForKeyedSubscript:@"scrubBehavior"];

  v4 = [v3 isEqualToString:@"delayed"];
  return v4;
}

- (NSArray)assets
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  children = [(IKViewElement *)self children];
  v3 = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    array = 0;
    v6 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(children);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        elementName = [v8 elementName];
        v10 = [elementName isEqualToString:@"asset"];

        if (v10)
        {
          if (!array)
          {
            array = [MEMORY[0x277CBEB18] array];
          }

          [(NSArray *)array addObject:v8];
        }
      }

      v4 = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  else
  {
    array = 0;
  }

  if ([(NSArray *)array count])
  {
    v11 = array;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (IKViewElement)relatedContent
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  children = [(IKViewElement *)self children];
  v3 = [children countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(children);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        elementName = [v7 elementName];
        v9 = [elementName isEqualToString:@"relatedContent"];

        if (v9)
        {
          v10 = v7;
          goto LABEL_11;
        }
      }

      v4 = [children countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

@end