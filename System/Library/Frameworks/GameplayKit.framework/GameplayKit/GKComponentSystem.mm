@interface GKComponentSystem
- (BOOL)respondsToSelector:(SEL)selector;
- (GKComponentSystem)initWithComponentClass:(Class)cls;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)performSelector:(SEL)selector withObject:(id)object;
- (void)addComponent:(id)component;
- (void)addComponentWithEntity:(GKEntity *)entity;
- (void)forwardInvocation:(id)invocation;
- (void)removeComponent:(id)component;
- (void)removeComponentWithEntity:(GKEntity *)entity;
- (void)updateWithDeltaTime:(NSTimeInterval)seconds;
@end

@implementation GKComponentSystem

- (GKComponentSystem)initWithComponentClass:(Class)cls
{
  v6.receiver = self;
  v6.super_class = GKComponentSystem;
  result = [(GKComponentSystem *)&v6 init];
  if (result)
  {
    v5 = result;
    objc_storeStrong(&result->_componentClass, cls);
    return v5;
  }

  return result;
}

- (void)addComponent:(id)component
{
  v17[1] = *MEMORY[0x277D85DE8];
  v14 = component;
  v4 = objc_opt_class();
  componentClass = self->_componentClass;
  if (v4 != componentClass)
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = *MEMORY[0x277CBE660];
    v16 = @"supportedClass";
    v17[0] = componentClass;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v12 = [v9 exceptionWithName:v10 reason:@"component class is not supported by this system" userInfo:v11];
    v13 = v12;

    objc_exception_throw(v12);
  }

  [v14 setUsesPerComponentUpdate:1];
  components = self->_components;
  if (!components)
  {
    v7 = objc_opt_new();
    v8 = self->_components;
    self->_components = v7;

    components = self->_components;
  }

  [(NSMutableArray *)components addObject:v14, v14];
  [v15 setComponentSystem:self];
}

- (void)addComponentWithEntity:(GKEntity *)entity
{
  v4 = [(GKEntity *)entity componentForClass:self->_componentClass];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(GKComponentSystem *)self addComponent:v4];
    v5 = v6;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)removeComponentWithEntity:(GKEntity *)entity
{
  v4 = [(GKEntity *)entity componentForClass:self->_componentClass];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(GKComponentSystem *)self removeComponent:v4];
    v5 = v6;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)removeComponent:(id)component
{
  v4 = component;
  if ([(NSMutableArray *)self->_components containsObject:?])
  {
    [(NSMutableArray *)self->_components removeObject:v4];
    [v4 setComponentSystem:0];
  }
}

- (void)updateWithDeltaTime:(NSTimeInterval)seconds
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_components;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) updateWithDeltaTime:{seconds, v9}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)performSelector:(SEL)selector withObject:(id)object
{
  v21 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  if ([(objc_class *)self->_componentClass instancesRespondToSelector:selector])
  {
    v7 = [(objc_class *)self->_componentClass instanceMethodForSelector:selector];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_components;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v7(*(*(&v16 + 1) + 8 * i), selector, objectCopy);
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    v13 = 0;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = GKComponentSystem;
    v13 = [(GKComponentSystem *)&v15 performSelector:selector withObject:objectCopy];
  }

  return v13;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v6.receiver = self;
  v6.super_class = GKComponentSystem;
  if ([(GKComponentSystem *)&v6 respondsToSelector:?])
  {
    return 1;
  }

  else
  {
    return [(objc_class *)self->_componentClass instancesRespondToSelector:selector];
  }
}

- (id)methodSignatureForSelector:(SEL)selector
{
  if ([(NSMutableArray *)self->_components count])
  {
    v5 = [(NSMutableArray *)self->_components objectAtIndexedSubscript:0];
    v6 = [v5 methodSignatureForSelector:selector];

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)forwardInvocation:(id)invocation
{
  v16 = *MEMORY[0x277D85DE8];
  invocationCopy = invocation;
  if ([(NSMutableArray *)self->_components count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = self->_components;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [invocationCopy invokeWithTarget:*(*(&v11 + 1) + 8 * v9++)];
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = GKComponentSystem;
    [(GKComponentSystem *)&v10 forwardInvocation:invocationCopy];
  }
}

@end