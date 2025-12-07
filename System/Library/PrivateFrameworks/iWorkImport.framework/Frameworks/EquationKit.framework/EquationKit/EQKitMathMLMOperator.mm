@interface EQKitMathMLMOperator
- (EQKitMathMLMOperator)initWithString:(id)string environment:(id)environment;
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser;
- (id)layoutSchemata;
- (id)stretchyLayoutSchemata;
@end

@implementation EQKitMathMLMOperator

- (id)layoutSchemata
{
  *a2 = &unk_2884CB990;
  *(a2 + 8) = 10;
  result = self;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

- (id)stretchyLayoutSchemata
{
  *a2 = &unk_2884CB990;
  *(a2 + 8) = 11;
  result = self;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  return result;
}

- (EQKitMathMLMOperator)initWithString:(id)string environment:(id)environment
{
  v14.receiver = self;
  v14.super_class = EQKitMathMLMOperator;
  v6 = [EQKitMathMLMToken initWithString:sel_initWithString_environment_ environment:?];
  if (v6)
  {
    operatorDictionary = [environment operatorDictionary];
    uTF8String = [string UTF8String];
    v9 = strlen(uTF8String);
    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_275C8EE7C();
    }

    v10 = v9;
    if (v9 >= 0x17)
    {
      operator new();
    }

    v13 = v9;
    if (v9)
    {
      memmove(&__dst, uTF8String, v9);
    }

    *(&__dst + v10) = 0;
    v6->mOperatorId = sub_275CC8278(operatorDictionary, &__dst);
    if (v13 < 0)
    {
      operator delete(__dst);
    }
  }

  return v6;
}

- (id)initFromXMLNode:(_xmlNode *)node parser:(id)parser
{
  v5.receiver = self;
  v5.super_class = EQKitMathMLMOperator;
  return [(EQKitMathMLMToken *)&v5 initFromXMLNode:node parser:parser];
}

- (const)mathMLAttributes
{
  if ((atomic_load_explicit(&qword_280A38B98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280A38B98))
  {
    sub_275C8E754(qword_280A38B80, dword_275D0C1AC, &qword_275D0C1D8);
    __cxa_guard_release(&qword_280A38B98);
  }

  return qword_280A38B80;
}

@end