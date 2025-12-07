@interface GDSoftware
- (GDSoftware)initWithTriplesIterator:(id)iterator;
- (id)description;
@end

@implementation GDSoftware

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  entityIdentifier = [(GDSoftware *)self entityIdentifier];
  bundleIdentifiers = [(GDSoftware *)self bundleIdentifiers];
  v6 = [bundleIdentifiers componentsJoinedByString:@"|"];
  v7 = [v3 stringWithFormat:@"<GDSoftware id:%@ bs:%@>", entityIdentifier, v6];

  return v7;
}

- (GDSoftware)initWithTriplesIterator:(id)iterator
{
  v30 = *MEMORY[0x1E69E9840];
  iteratorCopy = iterator;
  v28.receiver = self;
  v28.super_class = GDSoftware;
  v5 = [(GDSoftware *)&v28 init];
  if (v5)
  {
    v6 = objc_opt_new();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = iteratorCopy;
    v7 = iteratorCopy;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        v11 = 0;
        do
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v24 + 1) + 8 * v11);
          if (!v5->_entityIdentifier)
          {
            v13 = [GDEntityIdentifier alloc];
            subject = [v12 subject];
            v15 = [(GDEntityIdentifier *)v13 initWithString:subject];
            entityIdentifier = v5->_entityIdentifier;
            v5->_entityIdentifier = v15;
          }

          predicate = [v12 predicate];
          if ([predicate isEqual:@"nm_bundleID"])
          {
            object = [v12 object];
            [v6 addObject:object];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v9);
    }

    if (!v5->_entityIdentifier || ![v6 count])
    {

      v21 = 0;
      iteratorCopy = v23;
      goto LABEL_18;
    }

    v19 = [v6 copy];
    bundleIdentifiers = v5->_bundleIdentifiers;
    v5->_bundleIdentifiers = v19;

    iteratorCopy = v23;
  }

  v21 = v5;
LABEL_18:

  return v21;
}

@end