@interface EQKitMathMLMTable
- (BOOL)isBaseFontNameUsed;
- (NSString)description;
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (id)layoutSchemata;
- (void)dealloc;
@end

@implementation EQKitMathMLMTable

- (id)layoutSchemata
{
  *a2 = &unk_2884CB990;
  *(a2 + 8) = 19;
  result = self;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v22 = *MEMORY[0x277D85DE8];
  [parser pushState:2];
  v7 = [parser parseChildrenAsArrayFromXMLNode:node];
  v20.receiver = self;
  v20.super_class = EQKitMathMLMTable;
  v8 = [(EQKitMathMLMTable *)&v20 init];
  v9 = v8;
  if (parser)
  {
    if (node)
    {
      if (v8)
      {
        v10 = v7;
        v9->mChildren = v10;
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v11 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v17;
          do
          {
            v14 = 0;
            do
            {
              if (*v17 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [*(*(&v16 + 1) + 8 * v14++) setParent:v9];
            }

            while (v12 != v14);
            v12 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
          }

          while (v12);
        }
      }
    }
  }

  [parser popState];
  return v9;
}

- (const)mathMLAttributes
{
  if ((atomic_load_explicit(&qword_280A38BF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38BF8))
  {
    sub_275C8E754(qword_280A38BE0, dword_275D0C20C, &unk_275D0C220);
    __cxa_guard_release(&qword_280A38BF8);
  }

  return qword_280A38BE0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMTable;
  [(EQKitMathMLMTable *)&v3 dealloc];
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

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p %@>", NSStringFromClass(v4), self, self->mChildren];
}

@end