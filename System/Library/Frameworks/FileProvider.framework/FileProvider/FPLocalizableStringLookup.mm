@interface FPLocalizableStringLookup
- (NSString)tableName;
- (id)localizedStringForKey:(id)key;
- (void)setTableName:(id)name;
@end

@implementation FPLocalizableStringLookup

- (void)setTableName:(id)name
{
  v8 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v4 = MEMORY[0x1E695DEC8];
  nameCopy2 = name;
  v6 = [v4 arrayWithObjects:&nameCopy count:1];

  [(FPLocalizableStringLookup *)self setTableNames:v6, nameCopy, v8];
}

- (NSString)tableName
{
  tableNames = [(FPLocalizableStringLookup *)self tableNames];
  lastObject = [tableNames lastObject];

  return lastObject;
}

- (id)localizedStringForKey:(id)key
{
  v27 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(FPLocalizableStringLookup *)self tableNames];
  v21 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v21)
  {
    v20 = *v23;
    v5 = @"UNLOCALIZED_FALLBACK_MARKER";
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        cfBundle = self->_cfBundle;
        v9 = self->_bundle;
        v10 = cfBundle;
        v11 = v7;
        v12 = keyCopy;
        v13 = keyCopy;
        if (v10)
        {
          v14 = CFBundleCopyLocalizedString(v10, v13, v5, v11);
        }

        else
        {
          v14 = [(NSBundle *)v9 localizedStringForKey:v13 value:v5 table:v11];
        }

        v15 = v14;
        v16 = v5;
        if ([v14 isEqualToString:v5])
        {
          v17 = 0;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {

          keyCopy = v12;
          goto LABEL_17;
        }

        keyCopy = v12;
        v5 = v16;
      }

      v21 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  v17 = keyCopy;
LABEL_17:

  return v17;
}

@end