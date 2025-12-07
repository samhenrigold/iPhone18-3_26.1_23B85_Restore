@interface GKEntity
+ (GKEntity)entity;
- (GKComponent)componentForClass:(Class)componentClass;
- (GKEntity)init;
- (GKEntity)initWithCoder:(id)coder;
- (id)copy;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addComponent:(GKComponent *)component;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)removeComponent:(id)component;
- (void)removeComponentForClass:(Class)componentClass;
- (void)updateWithDeltaTime:(NSTimeInterval)seconds;
@end

@implementation GKEntity

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_components allValues];
  v4 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        componentSystem = [v8 componentSystem];
        v10 = componentSystem;
        if (componentSystem)
        {
          [componentSystem removeComponentWithEntity:self];
          [v8 setEntity:0];
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11.receiver = self;
  v11.super_class = GKEntity;
  [(GKEntity *)&v11 dealloc];
}

+ (GKEntity)entity
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (GKEntity)init
{
  v6.receiver = self;
  v6.super_class = GKEntity;
  v2 = [(GKEntity *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    components = v2->_components;
    v2->_components = dictionary;
  }

  return v2;
}

- (GKEntity)initWithCoder:(id)coder
{
  v26[12] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(GKEntity *)self init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v26[0] = objc_opt_class();
    v26[1] = objc_opt_class();
    v26[2] = objc_opt_class();
    v26[3] = objc_opt_class();
    v26[4] = objc_opt_class();
    v26[5] = objc_opt_class();
    v26[6] = objc_opt_class();
    v26[7] = objc_opt_class();
    v26[8] = objc_opt_class();
    v26[9] = objc_opt_class();
    v26[10] = objc_opt_class();
    v26[11] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:12];
    [v6 addObjectsFromArray:v7];

    allowedClasses = [coderCopy allowedClasses];
    [v6 unionSet:allowedClasses];

    v9 = [coderCopy decodeObjectOfClasses:v6 forKey:@"_components"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v6;
      v20 = coderCopy;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        do
        {
          v14 = 0;
          do
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v21 + 1) + 8 * v14);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              components = v5->_components;
              componentName = [v15 componentName];
              [(NSMutableDictionary *)components setObject:v15 forKey:componentName];

              [v15 setEntity:v5];
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v12);
      }

      v6 = v19;
      coderCopy = v20;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  components = self->_components;
  coderCopy = coder;
  allValues = [(NSMutableDictionary *)components allValues];
  [coderCopy encodeObject:allValues forKey:@"_components"];
}

- (void)updateWithDeltaTime:(NSTimeInterval)seconds
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  objectEnumerator = [(NSMutableDictionary *)self->_components objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 == v7)
        {
          v9 = *(*(&v10 + 1) + 8 * i);
          if ([v9 usesPerComponentUpdate])
          {
            continue;
          }
        }

        else
        {
          objc_enumerationMutation(objectEnumerator);
          v9 = *(*(&v10 + 1) + 8 * i);
          if ([v9 usesPerComponentUpdate])
          {
            continue;
          }
        }

        [v9 updateWithDeltaTime:seconds];
      }

      v6 = [objectEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)addComponent:(GKComponent *)component
{
  components = self->_components;
  v6 = component;
  componentName = [(GKComponent *)v6 componentName];
  [(NSMutableDictionary *)components setObject:v6 forKey:componentName];

  [(GKComponent *)v6 setEntity:self];
  [(GKComponent *)v6 didAddToEntity];
}

- (void)removeComponentForClass:(Class)componentClass
{
  v6 = NSStringFromClass(componentClass);
  v4 = [(NSMutableDictionary *)self->_components objectForKey:?];
  v5 = v4;
  if (v4)
  {
    [v4 willRemoveFromEntity];
    [(NSMutableDictionary *)self->_components removeObjectForKey:v6];
    [v5 setEntity:0];
  }
}

- (GKComponent)componentForClass:(Class)componentClass
{
  components = self->_components;
  v4 = NSStringFromClass(componentClass);
  v5 = [(NSMutableDictionary *)components objectForKey:v4];

  return v5;
}

- (id)copy
{
  v3 = MEMORY[0x23EE6C350](self, a2);

  return [(GKEntity *)self copyWithZone:v3];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];

  return v4;
}

- (void)removeComponent:(id)component
{
  components = self->_components;
  componentCopy = component;
  componentName = [componentCopy componentName];
  [(NSMutableDictionary *)components removeObjectForKey:componentName];

  [componentCopy setEntity:0];
}

@end