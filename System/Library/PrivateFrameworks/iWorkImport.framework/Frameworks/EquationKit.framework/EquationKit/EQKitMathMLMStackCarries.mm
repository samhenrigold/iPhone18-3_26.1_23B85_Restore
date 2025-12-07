@interface EQKitMathMLMStackCarries
- (BOOL)isBaseFontNameUsed;
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (id)layoutSchemata;
- (void)dealloc;
@end

@implementation EQKitMathMLMStackCarries

- (id)layoutSchemata
{
  *a2 = &unk_2884CB990;
  *(a2 + 8) = 16;
  result = self;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v26 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = EQKitMathMLMStackCarries;
  v6 = [(EQKitMathMLMStackCarries *)&v24 init];
  if (v6)
  {
    v7 = [parser parseChildrenAsArrayFromXMLNode:node];
    v8 = [v7 count];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      for (i = 0; i != v9; ++i)
      {
        v12 = [v7 objectAtIndex:i];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!v10)
            {
              v10 = [v7 mutableCopy];
              v7 = v10;
            }

            v13 = [[EQKitMathMLMStackCarry alloc] initWithChild:v12];
            [v10 replaceObjectAtIndex:i withObject:v13];
          }
        }
      }
    }

    else
    {
      v10 = 0;
    }

    v14 = v7;
    v6->mChildren = v14;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        v18 = 0;
        do
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v20 + 1) + 8 * v18++) setParent:v6];
        }

        while (v16 != v18);
        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v16);
    }
  }

  return v6;
}

- (const)mathMLAttributes
{
  if ((atomic_load_explicit(&qword_280A38B38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38B38))
  {
    sub_275C8E754(qword_280A38B20, &unk_275D0C194, &dword_275D0C19C);
    __cxa_guard_release(&qword_280A38B38);
  }

  return qword_280A38B20;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMStackCarries;
  [(EQKitMathMLMStackCarries *)&v3 dealloc];
}

- (BOOL)isBaseFontNameUsed
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  mChildren = self->mChildren;
  v3 = [(NSArray *)mChildren countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(mChildren);
        }

        if ([*(*(&v8 + 1) + 8 * v6) isBaseFontNameUsed])
        {
          LOBYTE(v3) = 1;
          return v3;
        }

        ++v6;
      }

      while (v4 != v6);
      v3 = [(NSArray *)mChildren countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

@end