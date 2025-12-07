@interface RBMutableInheritanceCollection
+ (id)collectionWithInheritances:(id)inheritances;
- (id)_initWithCollection:(id)collection;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addInheritance:(id)inheritance;
- (void)removeInheritance:(id)inheritance;
- (void)unionCollection:(id)collection;
@end

@implementation RBMutableInheritanceCollection

+ (id)collectionWithInheritances:(id)inheritances
{
  inheritancesCopy = inheritances;
  v5 = [RBMutableInheritanceCollection alloc];
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___RBMutableInheritanceCollection;
  v6 = objc_msgSendSuper2(&v9, sel_collectionWithInheritances_, inheritancesCopy);

  v7 = [(RBMutableInheritanceCollection *)v5 _initWithCollection:v6];

  return v7;
}

- (id)_initWithCollection:(id)collection
{
  v31 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  v29.receiver = self;
  v29.super_class = RBMutableInheritanceCollection;
  v5 = [(RBMutableInheritanceCollection *)&v29 init];
  if (v5)
  {
    v6 = collectionCopy[1];
    if ([v6 count])
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
      inheritancesByEnvironment = v5->super._inheritancesByEnvironment;
      v5->super._inheritancesByEnvironment = v7;

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __54__RBMutableInheritanceCollection__initWithCollection___block_invoke;
      v27[3] = &unk_279B33230;
      v28 = v5;
      [v6 enumerateKeysAndObjectsUsingBlock:v27];
    }

    v9 = collectionCopy[2];
    if ([v9 count])
    {
      v22 = v6;
      v10 = [v9 mutableCopy];
      inheritances = v5->super._inheritances;
      v5->super._inheritances = v10;

      v12 = objc_alloc_init(MEMORY[0x277CCA940]);
      countedNamespaces = v5->_countedNamespaces;
      v5->_countedNamespaces = v12;

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v14 = v9;
      v15 = [v14 countByEnumeratingWithState:&v23 objects:v30 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v24;
        do
        {
          v18 = 0;
          do
          {
            if (*v24 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = v5->_countedNamespaces;
            endowmentNamespace = [*(*(&v23 + 1) + 8 * v18) endowmentNamespace];
            [(NSCountedSet *)v19 addObject:endowmentNamespace];

            ++v18;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v23 objects:v30 count:16];
        }

        while (v16);
      }

      v6 = v22;
    }
  }

  return v5;
}

void __54__RBMutableInheritanceCollection__initWithCollection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = a2;
  v6 = [a3 mutableCopy];
  [v4 setObject:v6 forKey:v5];
}

- (void)addInheritance:(id)inheritance
{
  inheritanceCopy = inheritance;
  v17 = inheritanceCopy;
  if (!inheritanceCopy)
  {
    [(RBMutableInheritanceCollection *)a2 addInheritance:?];
    inheritanceCopy = 0;
  }

  if (!self->super._inheritances)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    inheritances = self->super._inheritances;
    self->super._inheritances = v6;

    inheritanceCopy = v17;
  }

  if (!self->_countedNamespaces)
  {
    v8 = objc_alloc_init(MEMORY[0x277CCA940]);
    countedNamespaces = self->_countedNamespaces;
    self->_countedNamespaces = v8;

    inheritanceCopy = v17;
  }

  environment = [inheritanceCopy environment];
  if (environment)
  {
    inheritancesByEnvironment = self->super._inheritancesByEnvironment;
    if (!inheritancesByEnvironment)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v13 = self->super._inheritancesByEnvironment;
      self->super._inheritancesByEnvironment = v12;

      inheritancesByEnvironment = self->super._inheritancesByEnvironment;
    }

    v14 = [(NSDictionary *)inheritancesByEnvironment objectForKey:environment];
    if (!v14)
    {
      v14 = [MEMORY[0x277CBEB58] set];
      [(NSDictionary *)self->super._inheritancesByEnvironment setObject:v14 forKey:environment];
    }

    [v14 addObject:v17];
  }

  [(NSSet *)self->super._inheritances addObject:v17];
  v15 = self->_countedNamespaces;
  endowmentNamespace = [v17 endowmentNamespace];
  [(NSCountedSet *)v15 addObject:endowmentNamespace];
}

- (void)removeInheritance:(id)inheritance
{
  inheritanceCopy = inheritance;
  v12 = inheritanceCopy;
  if (!inheritanceCopy)
  {
    [(RBMutableInheritanceCollection *)a2 removeInheritance:?];
    inheritanceCopy = 0;
  }

  environment = [inheritanceCopy environment];
  if (environment)
  {
    v7 = [(NSDictionary *)self->super._inheritancesByEnvironment objectForKey:environment];
    [v7 removeObject:v12];
    if (![v7 count])
    {
      [(NSDictionary *)self->super._inheritancesByEnvironment removeObjectForKey:environment];
    }
  }

  [(NSSet *)self->super._inheritances removeObject:v12];
  countedNamespaces = self->_countedNamespaces;
  endowmentNamespace = [v12 endowmentNamespace];
  [(NSCountedSet *)countedNamespaces removeObject:endowmentNamespace];

  if (![(NSSet *)self->super._inheritances count])
  {
    inheritances = self->super._inheritances;
    self->super._inheritances = 0;
  }

  if (![(NSCountedSet *)self->_countedNamespaces count])
  {
    v11 = self->_countedNamespaces;
    self->_countedNamespaces = 0;
  }
}

- (void)unionCollection:(id)collection
{
  v14 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [collectionCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(collectionCopy);
        }

        [(RBMutableInheritanceCollection *)self addInheritance:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [collectionCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RBInheritanceCollection alloc];

  return [(RBInheritanceCollection *)v4 _initWithCollection:self];
}

- (void)addInheritance:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBInheritanceCollection.m" lineNumber:161 description:{@"Invalid parameter not satisfying: %@", @"inheritance != nil"}];
}

- (void)removeInheritance:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBInheritanceCollection.m" lineNumber:188 description:{@"Invalid parameter not satisfying: %@", @"inheritance != nil"}];
}

@end