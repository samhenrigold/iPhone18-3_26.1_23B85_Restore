@interface NSPersistentHistoryChange(PhotoLibraryServices)
- (id)_pl_prettyDescriptionWithIndent:()PhotoLibraryServices;
@end

@implementation NSPersistentHistoryChange(PhotoLibraryServices)

- (id)_pl_prettyDescriptionWithIndent:()PhotoLibraryServices
{
  v34 = *MEMORY[0x1E69E9840];
  changedObjectID = [self changedObjectID];
  pl_shortURI = [changedObjectID pl_shortURI];

  if ([self changeType] == 1)
  {
    updatedProperties = [self updatedProperties];
    string = PLDescriptionForUpdateProperties(updatedProperties);
  }

  else
  {
    if ([self changeType] != 2)
    {
      string = &stru_1F0F06D80;
      goto LABEL_17;
    }

    tombstone = [self tombstone];
    updatedProperties = tombstone;
    if (tombstone)
    {
      v27 = pl_shortURI;
      allKeys = [tombstone allKeys];
      v10 = [allKeys sortedArrayUsingSelector:sel_compare_];

      string = [MEMORY[0x1E696AD60] string];
      [(__CFString *)string appendString:@" {"];
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      obj = v10;
      v11 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v30;
        v14 = &stru_1F0F06D80;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            v16 = string;
            if (*v30 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v29 + 1) + 8 * i);
            v18 = [updatedProperties objectForKeyedSubscript:v17];
            v26 = v17;
            string = v16;
            [(__CFString *)v16 appendFormat:@"%@%@: %@", v14, v26, v18];

            v14 = @", ";
          }

          v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
          v14 = @", ";
        }

        while (v12);
      }

      [(__CFString *)string appendString:@"}"];
      pl_shortURI = v27;
    }

    else
    {
      string = &stru_1F0F06D80;
    }
  }

LABEL_17:
  v19 = MEMORY[0x1E696AEC0];
  v20 = PLIndentToString();
  changeID = [self changeID];
  changeType = [self changeType];
  v23 = @"insert";
  if (changeType == 1)
  {
    v23 = @"update";
  }

  if (changeType == 2)
  {
    v23 = @"delete";
  }

  v24 = [v19 stringWithFormat:@"%@Change %08lld: %@ %@%@\n", v20, changeID, v23, pl_shortURI, string];

  return v24;
}

@end