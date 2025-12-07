@interface JavaUtilWeakHashMap_Entry
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)getKey;
- (id)setValueWithId:(id)id;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaUtilWeakHashMap_Entry

- (id)getKey
{
  v3.receiver = self;
  v3.super_class = JavaUtilWeakHashMap_Entry;
  return [(JavaLangRefReference *)&v3 get];
}

- (id)setValueWithId:(id)id
{
  value = self->value_;
  JreStrongAssign(&self->value_, id);
  return value;
}

- (BOOL)isEqual:(id)equal
{
  getValue = [JavaUtilMap_Entry_class_(self a2)];
  if (getValue)
  {
    v7 = JavaUtilMap_Entry_class_(getValue, v6);
    if (equal && ([v7 isInstance:equal] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    v11.receiver = self;
    v11.super_class = JavaUtilWeakHashMap_Entry;
    v8 = [(JavaLangRefReference *)&v11 get];
    if (v8)
    {
      if (equal)
      {
        LODWORD(getValue) = [v8 isEqual:{objc_msgSend(equal, "getKey")}];
        if (!getValue)
        {
          return getValue;
        }

LABEL_11:
        value = self->value_;
        getValue = [equal getValue];
        if (value)
        {
          LOBYTE(getValue) = [value isEqual:getValue];
        }

        else
        {
          LOBYTE(getValue) = getValue == 0;
        }

        return getValue;
      }
    }

    else if (equal)
    {
      if ([equal getKey])
      {
        LOBYTE(getValue) = 0;
        return getValue;
      }

      goto LABEL_11;
    }

    JreThrowNullPointerException();
  }

  return getValue;
}

- (unint64_t)hash
{
  hash = self->hash__;
  value = self->value_;
  if (value)
  {
    LODWORD(value) = [value hash];
  }

  return value + hash;
}

- (NSString)description
{
  v11.receiver = self;
  v11.super_class = JavaUtilWeakHashMap_Entry;
  v2 = [(JavaLangRefReference *)&v11 get];
  return JreStrcat("@C@", v3, v4, v5, v6, v7, v8, v9, v2);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilWeakHashMap_Entry;
  [(JavaLangRefReference *)&v3 dealloc];
}

@end