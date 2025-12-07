@interface EQKitMathMLMath
- (NSString)description;
- (Schemata)layoutSchemata;
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (id)newLayout;
- (void)dealloc;
@end

@implementation EQKitMathMLMath

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v13.receiver = self;
  v13.super_class = EQKitMathMLMath;
  v6 = [(EQKitMathMLMath *)&v13 init];
  if (v6)
  {
    v7 = operator new(0x230uLL, MEMORY[0x277D826F0]);
    if (v7)
    {
      v8 = v7;
      v9 = sub_275CB3F9C(v7);
      v6->mAttributeCollection = v10;
      [parser setAttributeCollection:{v8, v9}];
      v11 = [parser parseChildrenAsNodeFromXMLNode:node];
      v6->mExpression = v11;
      [(EQKitMathMLNode *)v11 setParent:v6];
    }

    else
    {
      v6->mAttributeCollection = 0;
    }

    if (v6->mExpression)
    {
      v6->mEnvironment = [parser environment];
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (const)mathMLAttributes
{
  if ((atomic_load_explicit(&qword_280A38920, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38920))
  {
    sub_275C8E754(qword_280A38908, &dword_275D0BEC8, dword_275D0BECC);
    __cxa_guard_release(&qword_280A38920);
  }

  return qword_280A38908;
}

- (void)dealloc
{
  mAttributeCollection = self->mAttributeCollection;
  if (mAttributeCollection)
  {
    (*(*mAttributeCollection + 8))(mAttributeCollection, a2);
  }

  v4.receiver = self;
  v4.super_class = EQKitMathMLMath;
  [(EQKitMathMLMath *)&v4 dealloc];
}

- (id)newLayout
{
  v2 = [EQKitLayout alloc];

  return MEMORY[0x2821F9670](v2, sel_initWithRoot_environment_);
}

- (Schemata)layoutSchemata
{
  if (self->mExpression)
  {
    array = [MEMORY[0x277CBEA60] arrayWithObject:?];
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  return sub_275CC771C(array, retstr);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p expr=%@>", NSStringFromClass(v4), self, self->mExpression];
}

@end