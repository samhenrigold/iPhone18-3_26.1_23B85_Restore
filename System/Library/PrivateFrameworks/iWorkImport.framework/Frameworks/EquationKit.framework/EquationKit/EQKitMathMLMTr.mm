@interface EQKitMathMLMTr
- (BOOL)isBaseFontNameUsed;
- (EQKitMathMLMTr)init;
- (EQKitMathMLMTr)initWithChildren:(id)children node:(_xmlNode *)node;
- (NSString)description;
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (id)layoutSchemata;
- (void)dealloc;
@end

@implementation EQKitMathMLMTr

- (id)layoutSchemata
{
  *a2 = &unk_2884CB990;
  *(a2 + 8) = 20;
  result = self;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

- (EQKitMathMLMTr)init
{
  array = [MEMORY[0x277CBEA60] array];

  return [(EQKitMathMLMTr *)self initWithChildren:array];
}

- (EQKitMathMLMTr)initWithChildren:(id)children node:(_xmlNode *)node
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = EQKitMathMLMTr;
  v5 = [(EQKitMathMLMTr *)&v16 init:children];
  if (v5)
  {
    childrenCopy = children;
    v5->mChildren = childrenCopy;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = [(NSArray *)childrenCopy countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(childrenCopy);
          }

          [*(*(&v12 + 1) + 8 * v10++) setParent:v5];
        }

        while (v8 != v10);
        v8 = [(NSArray *)childrenCopy countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v8);
    }
  }

  return v5;
}

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  [parser pushState:3];
  [parser parseChildrenAsArrayFromXMLNode:node];
  [parser popState];

  return MEMORY[0x2821F9670](self, sel_initWithChildren_node_);
}

- (const)mathMLAttributes
{
  if ((atomic_load_explicit(&qword_280A38C18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38C18))
  {
    sub_275C8E754(qword_280A38C00, &unk_275D0C220, &unk_275D0C228);
    __cxa_guard_release(&qword_280A38C18);
  }

  return qword_280A38C00;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMTr;
  [(EQKitMathMLMTr *)&v3 dealloc];
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