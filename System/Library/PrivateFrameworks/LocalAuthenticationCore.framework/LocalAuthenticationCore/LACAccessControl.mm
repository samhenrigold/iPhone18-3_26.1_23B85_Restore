@interface LACAccessControl
+ (BOOL)_checkConstraints:(id)constraints contain:(id)contain;
+ (BOOL)checkACL:(id)l hasConstraint:(id)constraint forOperation:(id)operation;
+ (BOOL)checkACLAllowsAll:(id)all;
+ (__SecAccessControl)allowAllACL;
+ (__SecAccessControl)denyAllACL;
+ (__SecAccessControl)deserializeACL:(id)l;
+ (id)constraintsFromACL:(__SecAccessControl *)l;
+ (id)serializeACL:(__SecAccessControl *)l;
@end

@implementation LACAccessControl

+ (id)constraintsFromACL:(__SecAccessControl *)l
{
  Constraints = SecAccessControlGetConstraints();
  Copy = CFDictionaryCreateCopy(0, Constraints);

  return Copy;
}

+ (id)serializeACL:(__SecAccessControl *)l
{
  v3 = SecAccessControlCopyData();

  return v3;
}

+ (__SecAccessControl)deserializeACL:(id)l
{
  lCopy = l;
  v4 = SecAccessControlCreateFromData();
  if (!v4)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D940];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could note deserialize ACL (%@)", 0];
    v10 = [v7 exceptionWithName:v8 reason:v9 userInfo:0];
    v11 = v10;

    objc_exception_throw(v10);
  }

  v5 = v4;

  return v5;
}

+ (__SecAccessControl)denyAllACL
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = SecAccessControlCreate();
  if (!v2)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not initialize trivial ACL (%@)", 0];
    v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
    v9 = v8;

    objc_exception_throw(v8);
  }

  v3 = v2;
  v10 = @"dacl";
  v11[0] = MEMORY[0x1E695E110];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  SecAccessControlSetConstraints();

  return v3;
}

+ (__SecAccessControl)allowAllACL
{
  error = 0;
  v2 = SecAccessControlCreateWithFlags(0, *MEMORY[0x1E697AC28], 0, &error);
  if (!v2)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D940];
    error = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not initialize trivial ACL (%@)", error];
    v8 = [v5 exceptionWithName:v6 reason:error userInfo:0];
    v9 = v8;

    objc_exception_throw(v8);
  }

  v3 = v2;

  return v3;
}

+ (BOOL)checkACLAllowsAll:(id)all
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = SecAccessControlCreateFromData();
  if (v3 && (SecAccessControlGetRequirePassword() & 1) == 0)
  {
    v5 = SecAccessControlGetConstraints();
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    allValues = [v5 allValues];
    v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      v10 = *MEMORY[0x1E695E4D0];
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(allValues);
          }

          if (!CFEqual(*(*(&v13 + 1) + 8 * i), v10))
          {
            v4 = 0;
            goto LABEL_14;
          }
        }

        v8 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v4 = 1;
LABEL_14:
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)checkACL:(id)l hasConstraint:(id)constraint forOperation:(id)operation
{
  operationCopy = operation;
  constraintCopy = constraint;
  v10 = [self deserializeACL:l];
  v11 = [self constraintsFromACL:v10];
  if (v10)
  {
    CFRelease(v10);
  }

  keyOp = [operationCopy keyOp];
  v13 = [v11 objectForKey:keyOp];

  v14 = [self _checkConstraints:v13 contain:constraintCopy];
  return v14;
}

+ (BOOL)_checkConstraints:(id)constraints contain:(id)contain
{
  v36 = *MEMORY[0x1E69E9840];
  constraintsCopy = constraints;
  containCopy = contain;
  v8 = [constraintsCopy objectForKeyedSubscript:containCopy];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    allValues = [constraintsCopy allValues];
    v11 = [allValues countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v31;
      v25 = allValues;
      v23 = *v31;
      while (2)
      {
        v14 = 0;
        v24 = v12;
        do
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(allValues);
          }

          v15 = *(*(&v30 + 1) + 8 * v14);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && ([self _checkConstraints:v15 contain:containCopy])
          {
            v9 = 1;
            goto LABEL_26;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            v16 = v15;
            v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v27;
              while (2)
              {
                for (i = 0; i != v18; ++i)
                {
                  if (*v27 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v26 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass() & 1) != 0 && ([self _checkConstraints:v21 contain:containCopy])
                  {

                    v9 = 1;
                    allValues = v25;
                    goto LABEL_26;
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
                if (v18)
                {
                  continue;
                }

                break;
              }
            }

            v12 = v24;
            allValues = v25;
            v13 = v23;
          }

          ++v14;
        }

        while (v14 != v12);
        v12 = [allValues countByEnumeratingWithState:&v30 objects:v35 count:16];
        v9 = 0;
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_26:
  }

  return v9;
}

@end