@interface MCMXPCMessageWithOwnersAndGroupsBase
- (MCMXPCMessageWithOwnersAndGroupsBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
@end

@implementation MCMXPCMessageWithOwnersAndGroupsBase

- (MCMXPCMessageWithOwnersAndGroupsBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v43 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v32.receiver = self;
  v32.super_class = MCMXPCMessageWithOwnersAndGroupsBase;
  v9 = [(MCMXPCMessageBase *)&v32 initWithXPCObject:objectCopy context:context error:error];
  v10 = v9;
  if (v9)
  {
    v31 = 1;
    v9->_containerClass = 0;
    ownerIdentifiers = v9->_ownerIdentifiers;
    v9->_ownerIdentifiers = 0;

    groupIdentifiers = v10->_groupIdentifiers;
    v10->_groupIdentifiers = 0;

    uint64 = xpc_dictionary_get_uint64(objectCopy, "ContainerClass");
    v10->_containerClass = uint64;
    if (uint64 - 1 >= 0xE)
    {
      v14 = 0;
      v22 = 0;
      v23 = 20;
LABEL_29:
      v31 = v23;
      goto LABEL_30;
    }

    v10->_containerClass = container_class_normalized();
    v14 = [(MCMXPCMessageBase *)v10 nsObjectFromXPCObject:objectCopy key:"OwnerIdentifiersArray" error:&v31];
    if (v14)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = 0;
LABEL_28:
        v23 = 110;
        goto LABEL_29;
      }

      v30 = v14;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v15 = v14;
      v16 = [(NSSet *)v15 countByEnumeratingWithState:&v39 objects:v38 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v40;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v40 != v18)
            {
              objc_enumerationMutation(v15);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v22 = 0;
              v31 = 110;
              goto LABEL_38;
            }
          }

          v17 = [(NSSet *)v15 countByEnumeratingWithState:&v39 objects:v38 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v20 = [MEMORY[0x1E695DFD8] setWithArray:v15];
      v21 = v10->_ownerIdentifiers;
      v10->_ownerIdentifiers = v20;
    }

    else
    {
      v23 = v31;
      if (v31 != 1)
      {
        v14 = 0;
        v22 = 0;
        goto LABEL_30;
      }
    }

    v22 = [(MCMXPCMessageBase *)v10 nsObjectFromXPCObject:objectCopy key:"GroupIdentifiers" error:&v31];
    if (!v22)
    {
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v14;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v22 = v22;
      v24 = [(NSSet *)v22 countByEnumeratingWithState:&v34 objects:v33 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v35;
        while (2)
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v35 != v26)
            {
              objc_enumerationMutation(v22);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v31 = 110;
              v15 = v22;
              goto LABEL_38;
            }
          }

          v25 = [(NSSet *)v22 countByEnumeratingWithState:&v34 objects:v33 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }
      }

      v28 = [MEMORY[0x1E695DFD8] setWithArray:v22];
      v15 = v10->_groupIdentifiers;
      v10->_groupIdentifiers = v28;
LABEL_38:

      v14 = v30;
LABEL_39:
      v23 = v31;
      if (v31 == 1)
      {
LABEL_33:

        goto LABEL_34;
      }

LABEL_30:
      if (error)
      {
        *error = v23;
      }

      v10 = 0;
      goto LABEL_33;
    }

    goto LABEL_28;
  }

LABEL_34:

  return v10;
}

@end