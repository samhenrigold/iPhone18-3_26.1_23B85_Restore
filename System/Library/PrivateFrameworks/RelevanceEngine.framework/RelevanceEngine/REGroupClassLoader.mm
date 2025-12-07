@interface REGroupClassLoader
- (BOOL)isEqual:(id)equal;
- (REGroupClassLoader)initWithLoaders:(id)loaders;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_enumerateBundleConfigurations:(id)configurations;
- (void)_enumerateClassesWithBlock:(id)block;
- (void)enumerateObjectsWithBlock:(id)block;
@end

@implementation REGroupClassLoader

- (REGroupClassLoader)initWithLoaders:(id)loaders
{
  loadersCopy = loaders;
  v9.receiver = self;
  v9.super_class = REGroupClassLoader;
  v5 = [(REClassLoader *)&v9 init];
  if (v5)
  {
    v6 = [loadersCopy copy];
    loaders = v5->_loaders;
    v5->_loaders = v6;
  }

  return v5;
}

- (void)_enumerateClassesWithBlock:(id)block
{
  v15 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_loaders;
  v6 = [(NSOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) enumerateClassesWithBlock:{blockCopy, v10}];
      }

      while (v7 != v9);
      v7 = [(NSOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_enumerateBundleConfigurations:(id)configurations
{
  v15 = *MEMORY[0x277D85DE8];
  configurationsCopy = configurations;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_loaders;
  v6 = [(NSOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) enumerateBundleConfigurations:{configurationsCopy, v10}];
      }

      while (v7 != v9);
      v7 = [(NSOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)enumerateObjectsWithBlock:(id)block
{
  v15 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_loaders;
  v6 = [(NSOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) enumerateObjectsWithBlock:{blockCopy, v10}];
      }

      while (v7 != v9);
      v7 = [(NSOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSOrderedSet *)self->_loaders copyWithZone:zone];
  v7 = v5[5];
  v5[5] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      loaders = self->_loaders;
      v6 = equalCopy->_loaders;
      v7 = loaders;
      v8 = v7;
      if (v7 == v6)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(NSOrderedSet *)v7 isEqual:v6];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end