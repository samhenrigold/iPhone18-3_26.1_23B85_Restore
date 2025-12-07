@interface AUAudioUnitBus
- (AUAudioUnitBus)initWithFormat:(AVAudioFormat *)format error:(NSError *)outError;
- (BOOL)setFormat:(AVAudioFormat *)format error:(NSError *)outError;
- (id).cxx_construct;
- (vector<BusPropertyObserver,)observers;
- (void)addObserver:(id)observer forKeyPath:(id)path options:(unint64_t)options context:(void *)context;
- (void)dealloc;
- (void)removeObserver:(id)observer forKeyPath:(id)path;
- (void)removeObserver:(id)observer forKeyPath:(id)path context:(void *)context;
- (void)setEnabled:(BOOL)enabled;
- (void)setMaximumChannelCount:(AUAudioChannelCount)maximumChannelCount;
- (void)setObservers:()vector<BusPropertyObserver;
- (void)setSupportedChannelCounts:(NSArray *)supportedChannelCounts;
@end

@implementation AUAudioUnitBus

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 13) = 0;
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

- (void)removeObserver:(id)observer forKeyPath:(id)path context:(void *)context
{
  observerCopy = observer;
  pathCopy = path;
  begin = self->_observers.__begin_;
  self->_removingObserverWithContext = 1;
  for (i = self->_observers.__end_; begin != i; i = self->_observers.__end_)
  {
    WeakRetained = objc_loadWeakRetained(begin);
    if (WeakRetained == observerCopy && [*(begin + 1) isEqualToString:pathCopy])
    {
      v13 = *(begin + 3);

      if (v13 == context)
      {
        v14 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<BusPropertyObserver *,BusPropertyObserver *,BusPropertyObserver *>(begin + 4, self->_observers.__end_, begin);
        std::vector<BusPropertyObserver>::__base_destruct_at_end[abi:ne200100](&self->_observers, v14);
        v15.receiver = self;
        v15.super_class = AUAudioUnitBus;
        [(AUAudioUnitBus *)&v15 removeObserver:observerCopy forKeyPath:pathCopy context:context];
        break;
      }
    }

    else
    {
    }

    begin = (begin + 32);
  }

  self->_removingObserverWithContext = 0;
}

- (void)removeObserver:(id)observer forKeyPath:(id)path
{
  observerCopy = observer;
  pathCopy = path;
  if (self->_removingObserverWithContext)
  {
    v15.receiver = self;
    v15.super_class = AUAudioUnitBus;
    [(AUAudioUnitBus *)&v15 removeObserver:observerCopy forKeyPath:pathCopy];
  }

  else
  {
    begin = self->_observers.__begin_;
    for (i = self->_observers.__end_; begin != i; i = self->_observers.__end_)
    {
      WeakRetained = objc_loadWeakRetained(begin);
      v11 = WeakRetained;
      if (WeakRetained == observerCopy)
      {
        v12 = [*(begin + 1) isEqualToString:pathCopy];

        if (v12)
        {
          v13 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<BusPropertyObserver *,BusPropertyObserver *,BusPropertyObserver *>(begin + 4, self->_observers.__end_, begin);
          std::vector<BusPropertyObserver>::__base_destruct_at_end[abi:ne200100](&self->_observers, v13);
          v14.receiver = self;
          v14.super_class = AUAudioUnitBus;
          [(AUAudioUnitBus *)&v14 removeObserver:observerCopy forKeyPath:pathCopy];
          break;
        }
      }

      else
      {
      }

      begin = (begin + 32);
    }
  }
}

- (void)addObserver:(id)observer forKeyPath:(id)path options:(unint64_t)options context:(void *)context
{
  observerCopy = observer;
  pathCopy = path;
  objc_initWeak(&location, observerCopy);
  v12 = pathCopy;
  v15 = v12;
  optionsCopy = options;
  contextCopy = context;
  std::vector<BusPropertyObserver>::push_back[abi:ne200100](&self->_observers, &location);
  v13.receiver = self;
  v13.super_class = AUAudioUnitBus;
  [(AUAudioUnitBus *)&v13 addObserver:observerCopy forKeyPath:v12 options:options context:context];

  objc_destroyWeak(&location);
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    [(AUAudioUnitBus *)self willChangeValueForKey:@"enabled"];
    self->_enabled = enabled;

    [(AUAudioUnitBus *)self didChangeValueForKey:@"enabled"];
  }
}

- (BOOL)setFormat:(AVAudioFormat *)format error:(NSError *)outError
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = format;
  if ([(AVAudioFormat *)v7 commonFormat]== AVAudioPCMFormatFloat32 && (![(AVAudioFormat *)v7 isInterleaved]|| [(AVAudioFormat *)v7 channelCount]<= 1) && [(AVAudioFormat *)v7 channelCount]&& (!self->_maximumChannelCount || [(AVAudioFormat *)v7 channelCount]<= self->_maximumChannelCount))
  {
    supportedChannelCounts = self->_supportedChannelCounts;
    if (supportedChannelCounts)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v11 = supportedChannelCounts;
      v12 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        v13 = *v19;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v11);
            }

            unsignedIntegerValue = [*(*(&v18 + 1) + 8 * i) unsignedIntegerValue];
            if (unsignedIntegerValue == [(AVAudioFormat *)v7 channelCount])
            {

              goto LABEL_23;
            }
          }

          v12 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      if (!outError)
      {
        goto LABEL_10;
      }

LABEL_21:
      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-10868 userInfo:0];
      *outError = v16;

      goto LABEL_9;
    }

LABEL_23:
    if (self->_format != v7)
    {
      ownerAudioUnit = self->_ownerAudioUnit;
      if (ownerAudioUnit && ![(AUAudioUnit *)ownerAudioUnit shouldChangeToFormat:v7 forBus:self])
      {
        if (!outError)
        {
          goto LABEL_10;
        }

        goto LABEL_21;
      }

      [(AUAudioUnitBus *)self willChangeValueForKey:@"format"];
      objc_storeStrong(&self->_format, format);
      [(AUAudioUnitBus *)self didChangeValueForKey:@"format"];
    }

    LOBYTE(outError) = 1;
    goto LABEL_10;
  }

  if (outError)
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-10868 userInfo:0];
    *outError = v8;

LABEL_9:
    LOBYTE(outError) = 0;
  }

LABEL_10:

  return outError;
}

- (void)setMaximumChannelCount:(AUAudioChannelCount)maximumChannelCount
{
  if (self->_maximumChannelCount != maximumChannelCount)
  {
    [(AUAudioUnitBus *)self willChangeValueForKey:@"maximumChannelCount"];
    self->_maximumChannelCount = maximumChannelCount;

    [(AUAudioUnitBus *)self didChangeValueForKey:@"maximumChannelCount"];
  }
}

- (void)setSupportedChannelCounts:(NSArray *)supportedChannelCounts
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = supportedChannelCounts;
  if (self->_supportedChannelCounts != v5)
  {
    [(AUAudioUnitBus *)self willChangeValueForKey:@"supportedChannelCounts"];
    objc_storeStrong(&self->_supportedChannelCounts, supportedChannelCounts);
    [(AUAudioUnitBus *)self didChangeValueForKey:@"supportedChannelCounts"];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = self->_supportedChannelCounts;
    v7 = 0;
    v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          unsignedIntegerValue = [*(*(&v13 + 1) + 8 * i) unsignedIntegerValue];
          if (v7 <= unsignedIntegerValue)
          {
            v7 = unsignedIntegerValue;
          }

          else
          {
            v7 = v7;
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [(AUAudioUnitBus *)self setMaximumChannelCount:v7];
    if (![(AUAudioUnitBus *)self setFormat:self->_format error:0])
    {
      format = self->_format;
      self->_format = 0;
    }
  }
}

- (void)dealloc
{
  begin = self->_observers.__begin_;
  end = self->_observers.__end_;
  while (begin != end)
  {
    BusPropertyObserver::remove(begin, self);
    begin = (begin + 32);
  }

  name = self->_name;
  self->_name = 0;

  format = self->_format;
  self->_format = 0;

  supportedChannelLayoutTags = self->_supportedChannelLayoutTags;
  self->_supportedChannelLayoutTags = 0;

  supportedChannelCounts = self->_supportedChannelCounts;
  self->_supportedChannelCounts = 0;

  v9.receiver = self;
  v9.super_class = AUAudioUnitBus;
  [(AUAudioUnitBus *)&v9 dealloc];
}

- (AUAudioUnitBus)initWithFormat:(AVAudioFormat *)format error:(NSError *)outError
{
  v6 = format;
  v11.receiver = self;
  v11.super_class = AUAudioUnitBus;
  v7 = [(AUAudioUnitBus *)&v11 init];
  v8 = v7;
  if (v7 && (v7->_maximumChannelCount = -1, v7->_shouldAllocateBuffer = 1, [(AUAudioUnitBus *)v7 setFormat:v6 error:outError]))
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end