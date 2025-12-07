@interface TMLReactiveValue
+ (id)valueForTarget:(id)target withKeyPath:(id)path;
- (TMLReactiveValue)initWithBindings:(id)bindings valueType:(unint64_t)type;
- (void)assignToTarget:(id)target withKeyPath:(id)path;
- (void)bindingValueChanged:(id)changed;
- (void)unassign;
@end

@implementation TMLReactiveValue

- (TMLReactiveValue)initWithBindings:(id)bindings valueType:(unint64_t)type
{
  bindingsCopy = bindings;
  v11.receiver = self;
  v11.super_class = TMLReactiveValue;
  v8 = [(TMLReactiveValue *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_bindings, bindings);
    v9->_valueType = type;
  }

  return v9;
}

- (void)assignToTarget:(id)target withKeyPath:(id)path
{
  targetCopy = target;
  pathCopy = path;
  [(TMLReactiveValue *)self unassign];
  if ([(NSArray *)self->_bindings count])
  {
    v8 = objc_getAssociatedObject(targetCopy, "pbccppmsc");
    if (!v8)
    {
      v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
      objc_setAssociatedObject(targetCopy, "pbccppmsc", v8, 1);
    }

    objc_storeStrong(&self->_keyPath, path);
    v9 = objc_opt_class();
    if (qword_2806D9268 != -1)
    {
      sub_26F2016A4();
    }

    if ([qword_2806D9260 containsObject:v9])
    {
      self->_targetUnsafe = targetCopy;
    }

    else
    {
      objc_storeWeak(&self->_targetWeak, targetCopy);
    }

    [v8 setObject:self forKey:pathCopy];
    bindings = self->_bindings;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_26F1CB9A8;
    v11[3] = &unk_279DC64B0;
    v11[4] = self;
    [(NSArray *)bindings enumerateObjectsUsingBlock:v11];
  }
}

- (void)unassign
{
  WeakRetained = objc_loadWeakRetained(&self->_targetWeak);
  if (WeakRetained)
  {
    v4 = WeakRetained;
  }

  else
  {
    v4 = self->_targetUnsafe;
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  if (self->_keyPath)
  {
    v5 = objc_getAssociatedObject(v4, "pbccppmsc");
    [v5 removeObjectForKey:self->_keyPath];
    bindings = self->_bindings;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_26F1CBB04;
    v8[3] = &unk_279DC64B0;
    v8[4] = self;
    [(NSArray *)bindings enumerateObjectsUsingBlock:v8];
  }

LABEL_6:
  objc_storeWeak(&self->_targetWeak, 0);
  keyPath = self->_keyPath;
  self->_targetUnsafe = 0;
  self->_keyPath = 0;
}

+ (id)valueForTarget:(id)target withKeyPath:(id)path
{
  pathCopy = path;
  v6 = objc_getAssociatedObject(target, "pbccppmsc");
  v7 = [v6 objectForKeyedSubscript:pathCopy];

  return v7;
}

- (void)bindingValueChanged:(id)changed
{
  WeakRetained = objc_loadWeakRetained(&self->_targetWeak);
  if (WeakRetained || (WeakRetained = self->_targetUnsafe) != 0)
  {
    v6 = WeakRetained;
    value = [(TMLReactiveValue *)self value];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [v6 setValue:value forKeyPath:self->_keyPath];
    }
  }
}

@end