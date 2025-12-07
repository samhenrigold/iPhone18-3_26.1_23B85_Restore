@interface NRUnarchivedObjectVerifier
+ (void)unarchivingVerifyObjectClasses:(id)classes name:(id)name classes:(id)a5 owner:(id)owner;
+ (void)unarchivingVerifyObjectIsNotNil:(id)nil name:(id)name owner:(id)owner;
@end

@implementation NRUnarchivedObjectVerifier

+ (void)unarchivingVerifyObjectIsNotNil:(id)nil name:(id)name owner:(id)owner
{
  if (!nil)
  {
    v6 = MEMORY[0x1E696AEC0];
    nameCopy = name;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v6 stringWithFormat:@"failure unarchiving %@", v9];

    [MEMORY[0x1E695DF30] raise:v10 format:{@"%@ is nil", nameCopy}];
  }
}

+ (void)unarchivingVerifyObjectClasses:(id)classes name:(id)name classes:(id)a5 owner:(id)owner
{
  v30 = *MEMORY[0x1E69E9840];
  classesCopy = classes;
  nameCopy = name;
  v11 = a5;
  ownerCopy = owner;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    while (2)
    {
      v17 = 0;
      do
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        if (objc_opt_isKindOfClass())
        {
          v21 = v13;
          goto LABEL_11;
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v18 = MEMORY[0x1E696AEC0];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  v21 = [v18 stringWithFormat:@"failure unarchiving %@", v20];

  v22 = MEMORY[0x1E695DF30];
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  [v22 raise:v21 format:{@"%@ is class %@ expected one of %@", nameCopy, v24, v13}];

LABEL_11:
}

@end