@interface AUAudioUnitBusArray
- (AUAudioUnitBusArray)init;
- (AUAudioUnitBusArray)initWithAudioUnit:(AUAudioUnit *)owner busType:(AUAudioUnitBusType)busType busses:(NSArray *)busArray;
- (id).cxx_construct;
- (vector<BusPropertyObserver,)observers;
- (void)addObserverToAllBusses:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context;
- (void)dealloc;
- (void)indexBusses;
- (void)removeObserverFromAllBusses:(NSObject *)observer forKeyPath:(NSString *)keyPath context:(void *)context;
- (void)replaceBusses:(NSArray *)busArray;
- (void)setObservers:()vector<BusPropertyObserver;
@end

@implementation AUAudioUnitBusArray

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 7) = 0;
  return self;
}

- (void)setObservers:()vector<BusPropertyObserver
{
  p_observers = &self->_observers;
  if (p_observers != a3)
  {
    std::vector<BusPropertyObserver>::__assign_with_size[abi:ne200100]<BusPropertyObserver*,BusPropertyObserver*>(p_observers, a3->__begin_, a3->__end_, (a3->__end_ - a3->__begin_) >> 5);
  }
}

- (vector<BusPropertyObserver,)observers
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  return std::vector<BusPropertyObserver>::__init_with_size[abi:ne200100]<BusPropertyObserver*,BusPropertyObserver*>(retstr, self->_observers.__begin_, self->_observers.__end_, (self->_observers.__end_ - self->_observers.__begin_) >> 5);
}

- (void)replaceBusses:(NSArray *)busArray
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = busArray;
  v5 = [(AUAudioUnitBusArray *)self count];
  v6 = [(NSArray *)v4 count];
  if (self->_busType == 1)
  {
    v7 = @"inputBusses";
  }

  else
  {
    v7 = @"outputBusses";
  }

  v22 = v7;
  if (v5 != v6)
  {
    [(AUAudioUnit *)self->_ownerAudioUnit willChangeValueForKey:v22];
  }

  begin = self->_observers.__begin_;
  end = self->_observers.__end_;
  while (begin != end)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = self->_busses;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v11)
    {
      v12 = *v28;
      do
      {
        v13 = 0;
        do
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(v10);
          }

          BusPropertyObserver::remove(begin, *(*(&v27 + 1) + 8 * v13++));
        }

        while (v11 != v13);
        v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v11);
    }

    begin = (begin + 32);
  }

  v14 = [(NSArray *)v4 mutableCopy];
  busses = self->_busses;
  self->_busses = v14;

  v16 = self->_observers.__begin_;
  v17 = self->_observers.__end_;
  while (v16 != v17)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v18 = self->_busses;
    v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v19)
    {
      v20 = *v24;
      do
      {
        v21 = 0;
        do
        {
          if (*v24 != v20)
          {
            objc_enumerationMutation(v18);
          }

          BusPropertyObserver::add(v16, *(*(&v23 + 1) + 8 * v21++));
        }

        while (v19 != v21);
        v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v19);
    }

    v16 = (v16 + 32);
  }

  [(AUAudioUnitBusArray *)self indexBusses];
  if (v5 != v6)
  {
    [(AUAudioUnit *)self->_ownerAudioUnit didChangeValueForKey:v22];
  }
}

- (void)indexBusses
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_busses;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 setIndex:{v5, v9}];
        [v8 setBusType:self->_busType];
        [v8 setOwnerAudioUnit:self->_ownerAudioUnit];
        ++v5;
      }

      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)removeObserverFromAllBusses:(NSObject *)observer forKeyPath:(NSString *)keyPath context:(void *)context
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = observer;
  v9 = keyPath;
  begin = self->_observers.__begin_;
  for (i = self->_observers.__end_; begin != i; i = self->_observers.__end_)
  {
    WeakRetained = objc_loadWeakRetained(begin);
    if (WeakRetained == v8 && [*(begin + 1) isEqualToString:v9])
    {
      v13 = *(begin + 3);

      if (v13 == context)
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v14 = self->_busses;
        v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
        v16 = v15;
        if (v15)
        {
          v17 = *v21;
          do
          {
            v18 = 0;
            do
            {
              if (*v21 != v17)
              {
                objc_enumerationMutation(v14);
              }

              BusPropertyObserver::remove(begin, *(*(&v20 + 1) + 8 * v18++));
            }

            while (v16 != v18);
            v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
          }

          while (v16);
        }

        v19 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<BusPropertyObserver *,BusPropertyObserver *,BusPropertyObserver *>(begin + 4, self->_observers.__end_, begin);
        std::vector<BusPropertyObserver>::__base_destruct_at_end[abi:ne200100](&self->_observers, v19);
        break;
      }
    }

    else
    {
    }

    begin = (begin + 32);
  }
}

- (void)addObserverToAllBusses:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(void *)context
{
  v25 = *MEMORY[0x1E69E9840];
  v10 = keyPath;
  objc_initWeak(&location, observer);
  v11 = v10;
  v21 = v11;
  v22 = options;
  v23 = context;
  std::vector<BusPropertyObserver>::push_back[abi:ne200100](&self->_observers, &location);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v12 = self->_busses;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v13)
  {
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v12);
        }

        BusPropertyObserver::add(&location, *(*(&v16 + 1) + 8 * v15++));
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }

  objc_destroyWeak(&location);
}

- (void)dealloc
{
  busses = self->_busses;
  self->_busses = 0;

  v4.receiver = self;
  v4.super_class = AUAudioUnitBusArray;
  [(AUAudioUnitBusArray *)&v4 dealloc];
}

- (AUAudioUnitBusArray)initWithAudioUnit:(AUAudioUnit *)owner busType:(AUAudioUnitBusType)busType busses:(NSArray *)busArray
{
  v8 = owner;
  v9 = busArray;
  v15.receiver = self;
  v15.super_class = AUAudioUnitBusArray;
  v10 = [(AUAudioUnitBusArray *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_ownerAudioUnit = v8;
    v10->_busType = busType;
    if (v9)
    {
      v12 = [(NSArray *)v9 mutableCopy];
    }

    else
    {
      v12 = 0;
    }

    busses = v11->_busses;
    v11->_busses = v12;

    [(AUAudioUnitBusArray *)v11 indexBusses];
  }

  return v11;
}

- (AUAudioUnitBusArray)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[AUAudioUnitBusArray init]"];
  [v3 raise:*MEMORY[0x1E695D940] format:{@"Don't call %@.", v4}];

  return 0;
}

@end