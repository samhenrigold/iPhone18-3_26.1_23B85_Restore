@interface JavaUtilProperties_$1
- (JavaUtilProperties_$1)initWithJavaUtilProperties:(id)properties;
- (void)charactersWithCharArray:(id)array withInt:(int)int withInt:(int)withInt;
- (void)dealloc;
- (void)startElementWithNSString:(id)string withNSString:(id)sString withNSString:(id)nSString withOrgXmlSaxAttributes:(id)attributes;
@end

@implementation JavaUtilProperties_$1

- (void)startElementWithNSString:(id)string withNSString:(id)sString withNSString:(id)nSString withOrgXmlSaxAttributes:(id)attributes
{
  JreStrongAssign(&self->key_, 0);
  if (!nSString)
  {
    goto LABEL_8;
  }

  if (![nSString isEqual:@"entry"])
  {
    return;
  }

  if (!attributes)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v9 = [attributes getValueWithNSString:@"key"];

  JreStrongAssign(&self->key_, v9);
}

- (void)charactersWithCharArray:(id)array withInt:(int)int withInt:(int)withInt
{
  if (self->key_)
  {
    [(JavaUtilHashtable *)self->this$0_ putWithId:self->key_ withId:[NSString stringWithCharacters:array offset:*&int length:*&withInt]];

    JreStrongAssign(&self->key_, 0);
  }
}

- (JavaUtilProperties_$1)initWithJavaUtilProperties:(id)properties
{
  JreStrongAssign(&self->this$0_, properties);
  OrgXmlSaxHelpersDefaultHandler_init();
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilProperties__1;
  [(JavaUtilProperties_$1 *)&v3 dealloc];
}

@end