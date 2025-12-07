@interface JavaUtilConcurrentConcurrentHashMap_MapEntry
- (BOOL)isEqual:(id)equal;
- (JavaUtilConcurrentConcurrentHashMap_MapEntry)initWithId:(id)id withId:(id)withId withJavaUtilConcurrentConcurrentHashMap:(id)map;
- (id)setValueWithId:(id)id;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation JavaUtilConcurrentConcurrentHashMap_MapEntry

- (JavaUtilConcurrentConcurrentHashMap_MapEntry)initWithId:(id)id withId:(id)withId withJavaUtilConcurrentConcurrentHashMap:(id)map
{
  JreStrongAssign(&self->key_, id);
  JreStrongAssign(&self->val_, withId);
  JreStrongAssign(&self->map_, map);
  return self;
}

- (unint64_t)hash
{
  key = self->key_;
  if (!key || (v4 = [key hash], (val = self->val_) == 0))
  {
    JreThrowNullPointerException();
  }

  return ([val hash] ^ v4);
}

- (BOOL)isEqual:(id)equal
{
  getKey = [JavaUtilMap_Entry_class_(self a2)];
  if (getKey)
  {
    v7 = JavaUtilMap_Entry_class_(getKey, v6);
    if (equal)
    {
      if (([v7 isInstance:equal] & 1) == 0)
      {
        JreThrowClassCastException();
      }

      getKey = [equal getKey];
      if (getKey)
      {
        v8 = getKey;
        getKey = [equal getValue];
        if (getKey)
        {
          v9 = getKey;
          if (v8 == self->key_ || (LODWORD(getKey) = [v8 isEqual:?], getKey))
          {
            if (v9 == self->val_)
            {
              LOBYTE(getKey) = 1;
            }

            else
            {

              LOBYTE(getKey) = [v9 isEqual:?];
            }
          }
        }
      }
    }

    else
    {
      getKey = [0 getKey];
      if (getKey)
      {
        JreThrowNullPointerException();
      }
    }
  }

  return getKey;
}

- (id)setValueWithId:(id)id
{
  if (!id)
  {
    v9 = new_JavaLangNullPointerException_init();
    objc_exception_throw(v9);
  }

  p_val = &self->val_;
  val = self->val_;
  JreStrongAssign(&self->val_, id);
  v7 = p_val[1];
  if (!v7)
  {
    JreThrowNullPointerException();
  }

  [v7 putWithId:self->key_ withId:id];
  return val;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilConcurrentConcurrentHashMap_MapEntry;
  [(JavaUtilConcurrentConcurrentHashMap_MapEntry *)&v3 dealloc];
}

@end