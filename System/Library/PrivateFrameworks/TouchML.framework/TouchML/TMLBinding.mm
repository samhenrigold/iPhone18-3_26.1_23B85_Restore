@interface TMLBinding
+ (id)bindingForTarget:(id)target withKeyPath:(id)path valueType:(unint64_t)type;
- (TMLBinding)initWithTarget:(id)target keyPath:(id)path valueType:(unint64_t)type;
- (id)value;
- (void)bind:(id)bind;
- (void)dealloc;
- (void)observeTarget;
- (void)tmlObserveValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)unbind:(id)unbind;
- (void)unobserveTarget;
@end

@implementation TMLBinding

- (TMLBinding)initWithTarget:(id)target keyPath:(id)path valueType:(unint64_t)type
{
  targetCopy = target;
  pathCopy = path;
  v19.receiver = self;
  v19.super_class = TMLBinding;
  v11 = [(TMLBinding *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_target, target);
    v13 = [pathCopy copy];
    keyPath = v12->_keyPath;
    v12->_keyPath = v13;

    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
    binders = v12->_binders;
    v12->_binders = v15;

    if (type)
    {
      v12->_valueType = type;
    }

    else
    {
      v17 = [TMLRuntime propertyWithKeyPath:pathCopy forObject:targetCopy];
      v12->_valueType = [v17 type];
    }
  }

  return v12;
}

- (void)dealloc
{
  if (self->_bindCount)
  {
    [(TMLBinding *)self unobserveTarget];
  }

  v3 = objc_getAssociatedObject(self->_target, "bccppmsc");
  [v3 removeObjectForKey:self->_keyPath];
  target = self->_target;
  self->_target = 0;

  keyPath = self->_keyPath;
  self->_keyPath = 0;

  v6.receiver = self;
  v6.super_class = TMLBinding;
  [(TMLBinding *)&v6 dealloc];
}

- (void)bind:(id)bind
{
  bindCopy = bind;
  v5 = bindCopy;
  if (bindCopy)
  {
    v7 = bindCopy;
    bindCopy = [(NSMutableArray *)self->_binders containsObject:bindCopy];
    v5 = v7;
    if ((bindCopy & 1) == 0)
    {
      if (!atomic_fetch_add(&self->_bindCount, 1u))
      {
        [(TMLBinding *)self observeTarget];
      }

      v6 = [[TMLWeakReferenceObject alloc] initWithObject:v7];
      [(NSMutableArray *)self->_binders insertObject:v6 atIndex:[(NSMutableArray *)self->_binders indexOfObject:v6 inSortedRange:0 options:[(NSMutableArray *)self->_binders count] usingComparator:1536, &unk_287F2CF20]];

      v5 = v7;
    }
  }

  MEMORY[0x2821F96F8](bindCopy, v5);
}

- (void)unbind:(id)unbind
{
  unbindCopy = unbind;
  v5 = unbindCopy;
  if (unbindCopy)
  {
    v6 = unbindCopy;
    unbindCopy = [(NSMutableArray *)self->_binders containsObject:unbindCopy];
    v5 = v6;
    if (unbindCopy)
    {
      unbindCopy = [(NSMutableArray *)self->_binders removeObject:v6];
      v5 = v6;
      if (atomic_fetch_add(&self->_bindCount, 0xFFFFFFFF) == 1)
      {
        unbindCopy = [(TMLBinding *)self unobserveTarget];
        v5 = v6;
      }
    }
  }

  MEMORY[0x2821F96F8](unbindCopy, v5);
}

- (void)observeTarget
{
  if ([self->_target conformsToProtocol:&unk_287F5C458])
  {
    self->_didAttachToTargetViaTMLObservable = 1;
    objc_initWeak(&location, self);
    target = self->_target;
    keyPath = self->_keyPath;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = sub_26F1CC230;
    v6[3] = &unk_279DC8188;
    objc_copyWeak(&v7, &location);
    [target tmlAddObserver:self forKeyPath:keyPath callback:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {
    self->_didAttachToTargetViaTMLObservable = 0;
    v5 = self->_target;

    MEMORY[0x2821F9670](v5, sel_addObserver_forKeyPath_options_context_);
  }
}

- (void)unobserveTarget
{
  didAttachToTargetViaTMLObservable = self->_didAttachToTargetViaTMLObservable;
  target = self->_target;
  if (didAttachToTargetViaTMLObservable)
  {
    [target tmlRemoveObserver:self forKeyPath:self->_keyPath];
    self->_didAttachToTargetViaTMLObservable = 0;
  }

  else
  {

    MEMORY[0x2821F9670](target, sel_removeObserver_forKeyPath_context_);
  }
}

+ (id)bindingForTarget:(id)target withKeyPath:(id)path valueType:(unint64_t)type
{
  targetCopy = target;
  pathCopy = path;
  if (targetCopy)
  {
    v9 = objc_getAssociatedObject(targetCopy, "bccppmsc");
    v10 = [v9 objectForKeyedSubscript:pathCopy];
    object = [v10 object];

    if (!object)
    {
      object = [[TMLBinding alloc] initWithTarget:targetCopy keyPath:pathCopy valueType:type];
      if (!v9)
      {
        v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
        objc_setAssociatedObject(targetCopy, "bccppmsc", v9, 1);
      }

      v12 = [[TMLWeakReferenceObject alloc] initWithObject:object];
      [v9 setObject:v12 forKeyedSubscript:pathCopy];
    }
  }

  else
  {
    object = 0;
  }

  return object;
}

- (void)tmlObserveValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v25[2] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
  value = self->_value;
  if (value != v12 && ([value isEqual:v12] & 1) == 0)
  {
    if ((atomic_fetch_or(&self->_flags, 0x40u) & 0x40) != 0)
    {
      v15 = MEMORY[0x277CBEAD8];
      v16 = MEMORY[0x277CCACA8];
      v17 = [objc_opt_class() description];
      v18 = [v16 stringWithFormat:@"Inconsistent binding cycle detected for %@:%@", v17, self->_keyPath];
      target = self->_target;
      v24[0] = @"target";
      v24[1] = @"keyPath";
      keyPath = self->_keyPath;
      v25[0] = target;
      v25[1] = keyPath;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
      v22 = [v15 exceptionWithName:@"TMLRuntimeException" reason:v18 userInfo:v21];
      [TMLExceptionHandler raiseException:v22];
    }

    else
    {
      objc_storeStrong(&self->_value, v12);
      binders = self->_binders;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = sub_26F1CC748;
      v23[3] = &unk_279DC5758;
      v23[4] = self;
      [(NSMutableArray *)binders enumerateObjectsUsingBlock:v23];
      atomic_fetch_and_explicit(&self->_flags, 0xBFu, memory_order_relaxed);
    }
  }
}

- (id)value
{
  value = self->_value;
  null = [MEMORY[0x277CBEB68] null];
  if (value == null)
  {
    v5 = 0;
  }

  else
  {
    v5 = self->_value;
  }

  v6 = v5;

  return v5;
}

@end