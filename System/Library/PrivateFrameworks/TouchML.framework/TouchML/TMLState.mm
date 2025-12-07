@interface TMLState
+ (Class)registerState:(id)state forClass:(Class)class;
+ (id)stateForClass:(Class)class stateName:(id)name;
- (TMLState)init;
- (TMLState)initWithStateName:(id)name;
- (id)tmlIdentifier;
- (id)valueForKeyPath:(id)path;
- (void)applyToObject:(id)object ignorePropertyKeys:(id)keys;
- (void)enterStateFromState:(id)state;
- (void)leaveStateToState:(id)state;
- (void)setValue:(id)value forKeyPath:(id)path;
@end

@implementation TMLState

- (TMLState)init
{
  v8.receiver = self;
  v8.super_class = TMLState;
  v2 = [(TMLState *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:8];
    properties = v2->_properties;
    v2->_properties = v3;

    v5 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:8];
    propertyKeys = v2->_propertyKeys;
    v2->_propertyKeys = v5;
  }

  return v2;
}

- (TMLState)initWithStateName:(id)name
{
  nameCopy = name;
  v5 = [(TMLState *)self init];
  if (v5)
  {
    v6 = [nameCopy copy];
    tmlStateName = v5->_tmlStateName;
    v5->_tmlStateName = v6;
  }

  return v5;
}

+ (Class)registerState:(id)state forClass:(Class)class
{
  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromClass(class);
  v7 = [v5 stringWithFormat:@"%@_State", v6];
  uTF8String = [v7 UTF8String];

  Class = objc_getClass(uTF8String);
  if (!Class)
  {
    Class = objc_allocateClassPair(self, uTF8String, 0);
    objc_registerClassPair(Class);
  }

  return Class;
}

+ (id)stateForClass:(Class)class stateName:(id)name
{
  nameCopy = name;
  if (class)
  {
    do
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = NSStringFromClass(class);
      v8 = [v6 stringWithFormat:@"%@_State", v7];
      uTF8String = [v8 UTF8String];

      Class = objc_getClass(uTF8String);
      Superclass = class_getSuperclass(class);
      class = Superclass;
      if (Class)
      {
        v12 = 1;
      }

      else
      {
        v12 = Superclass == 0;
      }
    }

    while (!v12);
  }

  else
  {
    Class = 0;
  }

  v13 = [[Class alloc] initWithStateName:nameCopy];

  return v13;
}

- (void)setValue:(id)value forKeyPath:(id)path
{
  valueCopy = value;
  pathCopy = path;
  if ([pathCopy isEqualToString:@"tmlState"])
  {
    if (self->_tmlStateName)
    {
      goto LABEL_11;
    }

    v7 = [valueCopy description];
    v8 = [v7 copy];
    tmlStateName = self->_tmlStateName;
    self->_tmlStateName = v8;
LABEL_7:

    goto LABEL_11;
  }

  if ([pathCopy isEqualToString:@"tmlExtends"])
  {
    if (self->_tmlStateExtends)
    {
      goto LABEL_11;
    }

    v7 = [valueCopy description];
    v10 = [v7 copy];
    tmlStateName = self->_tmlStateExtends;
    self->_tmlStateExtends = v10;
    goto LABEL_7;
  }

  tmlParent = [self tmlParent];
  v12 = [TMLRuntime ensurePropertyWithKeyPath:pathCopy forObject:tmlParent writable:1];

  null = valueCopy;
  if (!valueCopy)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  valueCopy = null;
  [(NSMutableDictionary *)self->_properties setObject:null forKey:pathCopy];
  [(NSMutableOrderedSet *)self->_propertyKeys addObject:pathCopy];
LABEL_11:
}

- (id)valueForKeyPath:(id)path
{
  pathCopy = path;
  v5 = [TMLRuntime ensurePropertyWithKeyPath:pathCopy forObject:self writable:0];
  v6 = [(NSMutableDictionary *)self->_properties objectForKey:pathCopy];

  null = [MEMORY[0x277CBEB68] null];
  if (v6 == null)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;

  return v8;
}

- (void)applyToObject:(id)object ignorePropertyKeys:(id)keys
{
  objectCopy = object;
  keysCopy = keys;
  if (self->_tmlStateExtends)
  {
    WeakRetained = objc_loadWeakRetained(&self->_baseState);

    if (!WeakRetained)
    {
      v9 = [objectCopy tmlStateForName:self->_tmlStateExtends];
      objc_storeWeak(&self->_baseState, v9);
    }

    v10 = objc_loadWeakRetained(&self->_baseState);
    [v10 applyToObject:self ignorePropertyKeys:self->_propertyKeys];
  }

  v11 = self->_propertyKeys;
  v12 = v11;
  if (keysCopy)
  {
    v13 = [(NSMutableOrderedSet *)v11 mutableCopy];

    [(NSMutableOrderedSet *)v13 minusOrderedSet:keysCopy];
    v12 = v13;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_26F19AB68;
  v15[3] = &unk_279DC5920;
  v15[4] = self;
  v16 = objectCopy;
  v14 = objectCopy;
  [(NSMutableOrderedSet *)v12 enumerateObjectsUsingBlock:v15];
}

- (id)tmlIdentifier
{
  tmlParent = [self tmlParent];
  tmlIdentifier = [tmlParent tmlIdentifier];

  if (tmlIdentifier)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_State_%@", tmlIdentifier, self->_tmlStateName];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)enterStateFromState:(id)state
{
  v7[1] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_baseState);
  [WeakRetained enterStateFromState:stateCopy];

  if (stateCopy)
  {
    v7[0] = stateCopy;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    [self emitTMLSignal:@"enterState" withArguments:v6];
  }

  else
  {
    [self emitTMLSignal:@"enterState" withArguments:0];
  }
}

- (void)leaveStateToState:(id)state
{
  v7[1] = *MEMORY[0x277D85DE8];
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_baseState);
  [WeakRetained leaveStateToState:stateCopy];

  if (stateCopy)
  {
    v7[0] = stateCopy;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    [self emitTMLSignal:@"leaveState" withArguments:v6];
  }

  else
  {
    [self emitTMLSignal:@"leaveState" withArguments:0];
  }
}

@end