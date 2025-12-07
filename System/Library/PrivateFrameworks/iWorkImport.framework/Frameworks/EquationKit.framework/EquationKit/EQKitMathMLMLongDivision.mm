@interface EQKitMathMLMLongDivision
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (id)layoutSchemata;
- (void)dealloc;
@end

@implementation EQKitMathMLMLongDivision

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v13.receiver = self;
  v13.super_class = EQKitMathMLMLongDivision;
  v6 = [(EQKitMathMLMLongDivision *)&v13 init];
  if (v6)
  {
    v7 = [parser parseChildrenAsArrayFromXMLNode:node];
    if ([v7 count] < 3)
    {
      [parser reportError:5 withNode:node];

      return 0;
    }

    else
    {
      v8 = [v7 objectAtIndex:0];
      v6->mDivisor = v8;
      [(EQKitMathMLNode *)v8 setParent:v6];
      v9 = [v7 mutableCopy];
      [v9 removeObjectAtIndex:0];
      v10 = objc_alloc_init(EQKitMathMLMStackLine);
      [v9 insertObject:v10 atIndex:1];
      v11 = [[EQKitMathMLMStack alloc] initWithChildren:v9];
      v6->mStack = v11;
      [(EQKitMathMLNode *)v11 setParent:v6];
    }
  }

  return v6;
}

- (const)mathMLAttributes
{
  if ((atomic_load_explicit(&qword_280A38960, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38960))
  {
    sub_275C8E754(qword_280A38948, &dword_275D0BEF4, &unk_275D0BEF8);
    __cxa_guard_release(&qword_280A38960);
  }

  return qword_280A38948;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMLongDivision;
  [(EQKitMathMLMLongDivision *)&v3 dealloc];
}

- (id)layoutSchemata
{
  *a2 = &unk_2884CB990;
  *(a2 + 8) = 18;
  result = self;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

@end