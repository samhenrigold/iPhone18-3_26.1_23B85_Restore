@interface _PFFreeMapEntry
- (_PFFreeMapEntry)init;
- (void)dealloc;
@end

@implementation _PFFreeMapEntry

- (_PFFreeMapEntry)init
{
  v4.receiver = self;
  v4.super_class = _PFFreeMapEntry;
  v2 = [(_PFFreeMapEntry *)&v4 init];
  if (v2)
  {
    v2->_owners = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  return v2;
}

- (void)dealloc
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  owners = self->_owners;
  v4 = [(NSMutableSet *)owners countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(owners);
        }

        [*(*(&v9 + 1) + 8 * i) invalidate];
      }

      v5 = [(NSMutableSet *)owners countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = _PFFreeMapEntry;
  [(_PFFreeMapEntry *)&v8 dealloc];
}

@end