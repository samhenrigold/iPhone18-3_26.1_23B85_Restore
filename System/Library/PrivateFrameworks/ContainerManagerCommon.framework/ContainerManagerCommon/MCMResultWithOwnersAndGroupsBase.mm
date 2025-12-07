@interface MCMResultWithOwnersAndGroupsBase
- (BOOL)encodeResultOntoReply:(id)reply;
- (MCMResultWithOwnersAndGroupsBase)init;
- (NSArray)groupIdentifiers;
- (NSArray)ownerIdentifiers;
- (void)addOwner:(id)owner group:(id)group;
@end

@implementation MCMResultWithOwnersAndGroupsBase

- (MCMResultWithOwnersAndGroupsBase)init
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = MCMResultWithOwnersAndGroupsBase;
  v2 = [(MCMResultBase *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    mutableOwnerIdentifiers = v2->_mutableOwnerIdentifiers;
    v2->_mutableOwnerIdentifiers = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    mutableGroupIdentifiers = v2->_mutableGroupIdentifiers;
    v2->_mutableGroupIdentifiers = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    facts = v2->_facts;
    v2->_facts = v7;
  }

  return v2;
}

- (BOOL)encodeResultOntoReply:(id)reply
{
  v29 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v23.receiver = self;
  v23.super_class = MCMResultWithOwnersAndGroupsBase;
  v5 = [(MCMResultBase *)&v23 encodeResultOntoReply:replyCopy];
  if (v5)
  {
    error = [(MCMResultBase *)self error];

    if (!error)
    {
      v20 = v5;
      v7 = [(NSMutableSet *)self->_facts count];
      if (v7 <= 1)
      {
        v7 = 1;
      }

      bytes = malloc_type_calloc(v7, 0x10uLL, 0x1000040451B5BE8uLL);
      __s = bytes;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v19 = 48;
      v8 = self->_facts;
      v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v25 objects:v24 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = 0;
        v12 = *v26;
        do
        {
          v13 = 0;
          v14 = &bytes[16 * v11 + 8];
          v11 += v10;
          do
          {
            if (*v26 != v12)
            {
              objc_enumerationMutation(v8);
            }

            v15 = *(*(&v25 + 1) + 8 * v13);
            *(v14 - 1) = [v15 ownerIndex];
            *v14 = [v15 groupIndex];
            v14 += 16;
            ++v13;
          }

          while (v10 != v13);
          v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v25 objects:v24 count:16];
        }

        while (v10);
      }

      xpc_dictionary_set_data(replyCopy, "ReplyFacts", bytes, 16 * [*(&self->super.super.isa + v19) count]);
      v16 = _CFXPCCreateXPCObjectFromCFObject();
      if (v16)
      {
        xpc_dictionary_set_value(replyCopy, "ReplyOwnerIdentifiers", v16);
      }

      v17 = _CFXPCCreateXPCObjectFromCFObject();
      LOBYTE(v5) = v20;
      if (v17)
      {
        xpc_dictionary_set_value(replyCopy, "ReplyGroupIdentifiers", v17);
      }

      if (bytes)
      {
        free(bytes);
        memset_s(&__s, 8uLL, 0, 8uLL);
      }
    }
  }

  return v5;
}

- (void)addOwner:(id)owner group:(id)group
{
  ownerCopy = owner;
  groupCopy = group;
  v7 = [(NSMutableArray *)self->_mutableOwnerIdentifiers indexOfObject:ownerCopy];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(NSMutableArray *)self->_mutableOwnerIdentifiers count];
    [(NSMutableArray *)self->_mutableOwnerIdentifiers addObject:ownerCopy];
  }

  ownerCopy = [(NSMutableArray *)self->_mutableGroupIdentifiers indexOfObject:groupCopy, ownerCopy];
  if (ownerCopy == 0x7FFFFFFFFFFFFFFFLL)
  {
    ownerCopy = [(NSMutableArray *)self->_mutableGroupIdentifiers count];
    [(NSMutableArray *)self->_mutableGroupIdentifiers addObject:groupCopy];
  }

  v9 = [[MCMResultWithOwnersAndGroupsBaseFact alloc] initWithOwnerIndex:v7 groupIndex:ownerCopy];
  [(NSMutableSet *)self->_facts addObject:v9];
}

- (NSArray)groupIdentifiers
{
  v2 = [(NSMutableArray *)self->_mutableGroupIdentifiers copy];

  return v2;
}

- (NSArray)ownerIdentifiers
{
  v2 = [(NSMutableArray *)self->_mutableOwnerIdentifiers copy];

  return v2;
}

@end