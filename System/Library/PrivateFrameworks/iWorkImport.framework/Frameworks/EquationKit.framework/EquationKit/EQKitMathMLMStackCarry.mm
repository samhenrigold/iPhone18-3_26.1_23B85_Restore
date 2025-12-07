@interface EQKitMathMLMStackCarry
- (EQKitMathMLMStackCarry)initWithChild:(id)child;
- (EQKitMathMLMStackCarry)initWithChildren:(id)children;
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (id)layoutSchemata;
- (void)dealloc;
@end

@implementation EQKitMathMLMStackCarry

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v5 = [parser parseChildrenAsArrayFromXMLNode:node];

  return [(EQKitMathMLMStackCarry *)self initWithChildren:v5];
}

- (const)mathMLAttributes
{
  if ((atomic_load_explicit(&qword_280A38A18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38A18))
  {
    sub_275C8E754(qword_280A38A00, &dword_275D0C148, &dword_275D0C14C);
    __cxa_guard_release(&qword_280A38A18);
  }

  return qword_280A38A00;
}

- (EQKitMathMLMStackCarry)initWithChildren:(id)children
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = EQKitMathMLMStackCarry;
  v4 = [(EQKitMathMLMStackCarry *)&v15 init];
  if (v4)
  {
    childrenCopy = children;
    v4->mChildren = childrenCopy;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [(NSArray *)childrenCopy countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(childrenCopy);
          }

          [*(*(&v11 + 1) + 8 * v9++) setParent:v4];
        }

        while (v7 != v9);
        v7 = [(NSArray *)childrenCopy countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return v4;
}

- (EQKitMathMLMStackCarry)initWithChild:(id)child
{
  v4 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{child, 0}];
  v5 = [(EQKitMathMLMStackCarry *)self initWithChildren:v4];

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMStackCarry;
  [(EQKitMathMLMStackCarry *)&v3 dealloc];
}

- (id)layoutSchemata
{
  *a2 = &unk_2884CB990;
  *(a2 + 8) = 17;
  result = self;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

@end