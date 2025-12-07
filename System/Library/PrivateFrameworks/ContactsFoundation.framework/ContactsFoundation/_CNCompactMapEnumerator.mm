@interface _CNCompactMapEnumerator
- (_CNCompactMapEnumerator)initWithEnumerator:(id)enumerator transform:(id)transform;
- (id)nextObject;
@end

@implementation _CNCompactMapEnumerator

- (_CNCompactMapEnumerator)initWithEnumerator:(id)enumerator transform:(id)transform
{
  enumeratorCopy = enumerator;
  transformCopy = transform;
  v15.receiver = self;
  v15.super_class = _CNCompactMapEnumerator;
  v9 = [(_CNCompactMapEnumerator *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_enumerator, enumerator);
    v11 = [transformCopy copy];
    transform = v10->_transform;
    v10->_transform = v11;

    v13 = v10;
  }

  return v10;
}

- (id)nextObject
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_enumerator;
  v4 = [(NSEnumerator *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = (*(self->_transform + 2))(self->_transform);
        if (v8)
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [(NSEnumerator *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

@end