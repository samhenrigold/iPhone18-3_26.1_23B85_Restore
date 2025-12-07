@interface JavaUtilHashtable_HashtableEntry
- (BOOL)isEqual:(id)equal;
- (JavaUtilHashtable_HashtableEntry)initWithId:(id)id withId:(id)withId withInt:(int)int withJavaUtilHashtable_HashtableEntry:(id)entry;
- (id)setValueWithId:(id)id;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaUtilHashtable_HashtableEntry

- (JavaUtilHashtable_HashtableEntry)initWithId:(id)id withId:(id)withId withInt:(int)int withJavaUtilHashtable_HashtableEntry:(id)entry
{
  JreStrongAssign(&self->key_, id);
  JreStrongAssign(&self->value_, withId);
  self->hash__ = int;
  JreStrongAssign(&self->next_, entry);
  return self;
}

- (id)setValueWithId:(id)id
{
  if (!id)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"value == null");
    objc_exception_throw(v5);
  }

  value = self->value_;
  JreStrongAssign(&self->value_, id);
  return value;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [JavaUtilMap_Entry_class_(self a2)];
  if (!v5)
  {
    return 0;
  }

  v7 = JavaUtilMap_Entry_class_(v5, v6);
  if (!equal)
  {
    JreThrowNullPointerException();
  }

  if (([v7 isInstance:equal] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  key = self->key_;
  if (!key)
  {
LABEL_11:
    JreThrowNullPointerException();
  }

  if (![key isEqual:{objc_msgSend(equal, "getKey")}])
  {
    return 0;
  }

  value = self->value_;
  if (!value)
  {
    goto LABEL_11;
  }

  getValue = [equal getValue];

  return [value isEqual:getValue];
}

- (unint64_t)hash
{
  key = self->key_;
  if (!key || (v4 = [key hash], (value = self->value_) == 0))
  {
    JreThrowNullPointerException();
  }

  return ([value hash] ^ v4);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilHashtable_HashtableEntry;
  [(JavaUtilHashtable_HashtableEntry *)&v3 dealloc];
}

@end