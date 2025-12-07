@interface ACDManagedAccountType
- (id)_dataclassStringsFromManaged:(id)managed;
- (id)description;
- (id)supportedDataclassStrings;
- (id)syncableDataclassStrings;
@end

@implementation ACDManagedAccountType

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  identifier = [(ACDManagedAccountType *)self identifier];
  v4 = [v2 stringWithFormat:@"<ACDManagedAccountType:%@>", identifier];

  return v4;
}

- (id)supportedDataclassStrings
{
  supportedDataclasses = [(ACDManagedAccountType *)self supportedDataclasses];
  v4 = [(ACDManagedAccountType *)self _dataclassStringsFromManaged:supportedDataclasses];

  return v4;
}

- (id)syncableDataclassStrings
{
  syncableDataclasses = [(ACDManagedAccountType *)self syncableDataclasses];
  v4 = [(ACDManagedAccountType *)self _dataclassStringsFromManaged:syncableDataclasses];

  return v4;
}

- (id)_dataclassStringsFromManaged:(id)managed
{
  v17 = *MEMORY[0x1E69E9840];
  managedCopy = managed;
  if ([managedCopy count])
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = managedCopy;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          name = [*(*(&v12 + 1) + 8 * i) name];
          [v4 addObject:name];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end