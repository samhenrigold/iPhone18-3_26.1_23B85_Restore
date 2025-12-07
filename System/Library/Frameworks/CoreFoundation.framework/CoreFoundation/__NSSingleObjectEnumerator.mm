@interface __NSSingleObjectEnumerator
- (__NSSingleObjectEnumerator)init;
- (__NSSingleObjectEnumerator)initWithObject:(id)object collection:(id)collection;
- (id)description;
- (id)nextObject;
- (void)dealloc;
@end

@implementation __NSSingleObjectEnumerator

- (id)nextObject
{
  v3 = self->_theObjectToReturn;
  self->_theObjectToReturn = 0;
  theCollection = self->_theCollection;
  self->_theCollection = 0;

  return v3;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = __NSSingleObjectEnumerator;
  [(__NSSingleObjectEnumerator *)&v3 dealloc];
}

- (__NSSingleObjectEnumerator)initWithObject:(id)object collection:(id)collection
{
  v9 = *MEMORY[0x1E69E9840];
  if (object)
  {
    v8.receiver = self;
    v8.super_class = __NSSingleObjectEnumerator;
    v6 = [(__NSSingleObjectEnumerator *)&v8 init];
    if (v6)
    {
      v6->_theObjectToReturn = object;
      v6->_theCollection = collection;
    }

    return v6;
  }

  else
  {

    return [(__NSSingleObjectEnumerator *)self init];
  }
}

- (__NSSingleObjectEnumerator)init
{
  qword_1EA849A30 = "Attempt to create a single-object enumerator with no object/collection";
  __break(1u);
  return self;
}

- (id)description
{
  v9 = *MEMORY[0x1E69E9840];
  Mutable = CFStringCreateMutable(0, 0);
  if (self->_theObjectToReturn)
  {
    v8.receiver = self;
    v8.super_class = __NSSingleObjectEnumerator;
    v5 = [&v8 description];
    CFStringAppendFormat(Mutable, 0, @"%@ that will yield %@", v5, self->_theObjectToReturn);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = __NSSingleObjectEnumerator;
    v6 = [&v7 description];
    CFStringAppendFormat(Mutable, 0, @"%@ that yielded its object", v6);
  }

  return CFAutorelease(Mutable);
}

@end