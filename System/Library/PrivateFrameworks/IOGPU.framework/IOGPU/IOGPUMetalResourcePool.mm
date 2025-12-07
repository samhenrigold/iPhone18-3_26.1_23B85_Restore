@interface IOGPUMetalResourcePool
- (BOOL)updateResourcePurgeability;
- (IOGPUMetalResourcePool)initWithDevice:(id)device resourceClass:(Class)class resourceArgs:(const IOGPUNewResourceArgs *)args resourceArgsSize:(unsigned int)size options:(id)options;
- (unint64_t)allocatedSize;
- (void)dealloc;
- (void)purge;
- (void)purgeWithLock;
- (void)setResourceArgs:(const IOGPUNewResourceArgs *)args resourceArgsSize:(unsigned int)size;
@end

@implementation IOGPUMetalResourcePool

- (BOOL)updateResourcePurgeability
{
  os_unfair_lock_lock(&self->_priv.lock);
  if (self->_priv.nonvolatileQueue.tqh_first)
  {
    v3 = mach_absolute_time();
    v4 = **(self->_priv.nonvolatileQueue.tqh_last + 1);
    if (v4)
    {
      p_priv = &self->_priv;
      v6 = v3 - self->age_to_purge;
      do
      {
        if (v4->_priv.time_added >= v6)
        {
          break;
        }

        v7 = **(v4->_priv.entry.tqe_prev + 1);
        [(IOGPUMetalResource *)v4 setPurgeableState:3];
        tqe_next = v4->_priv.entry.tqe_next;
        tqe_prev = v4->_priv.entry.tqe_prev;
        if (tqe_next)
        {
          tqe_next->_priv.entry.tqe_prev = tqe_prev;
          v10 = v4->_priv.entry.tqe_next;
          tqe_prev = v4->_priv.entry.tqe_prev;
        }

        else
        {
          v10 = 0;
          self->_priv.nonvolatileQueue.tqh_last = tqe_prev;
        }

        *tqe_prev = v10;
        tqh_first = p_priv->volatileQueue.tqh_first;
        v4->_priv.entry.tqe_next = p_priv->volatileQueue.tqh_first;
        p_tqe_next = &v4->_priv.entry.tqe_next;
        if (tqh_first)
        {
          tqh_first->_priv.entry.tqe_prev = p_tqe_next;
        }

        else
        {
          self->_priv.volatileQueue.tqh_last = p_tqe_next;
        }

        p_priv->volatileQueue.tqh_first = v4;
        v4->_priv.entry.tqe_prev = &p_priv->volatileQueue.tqh_first;
        v4 = v7;
      }

      while (v7);
    }

    os_unfair_lock_unlock(&self->_priv.lock);
    return self->_priv.nonvolatileQueue.tqh_first != 0;
  }

  else
  {
    os_unfair_lock_unlock(&self->_priv.lock);
    return 0;
  }
}

- (IOGPUMetalResourcePool)initWithDevice:(id)device resourceClass:(Class)class resourceArgs:(const IOGPUNewResourceArgs *)args resourceArgsSize:(unsigned int)size options:(id)options
{
  v16.receiver = self;
  v16.super_class = IOGPUMetalResourcePool;
  v11 = [(IOGPUMetalResourcePool *)&v16 init:device];
  v12 = v11;
  if (v11)
  {
    v11->_priv.volatileQueue.tqh_first = 0;
    v11->_priv.nonvolatileQueue.tqh_first = 0;
    v11->_priv.volatileQueue.tqh_last = &v11->_priv.volatileQueue.tqh_first;
    v11->_priv.nonvolatileQueue.tqh_last = &v11->_priv.nonvolatileQueue.tqh_first;
    *&v11->_priv.lock._os_unfair_lock_opaque = 0;
    v11->_resourceClass = class;
    v11->_device = device;
    if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) == 0)
    {
      [IOGPUMetalResourcePool initWithDevice:resourceClass:resourceArgs:resourceArgsSize:options:];
    }

    if (size <= 0x57)
    {
      [IOGPUMetalResourcePool initWithDevice:resourceClass:resourceArgs:resourceArgsSize:options:];
    }

    v12->_resourceArgsSize = size;
    v13 = malloc_type_malloc(size, 0x1000040931E79F6uLL);
    v12->_resourceArgs = v13;
    memcpy(v13, args, v12->_resourceArgsSize);
    v12->_resourceArgs->var0.var10 |= 0x4000u;
    info = 0;
    mach_timebase_info(&info);
    v12->age_to_purge = 1000000000 * info.denom / info.numer;
    v12->generation = 0;
    v12->_allocatedSize = 0;
  }

  return v12;
}

- (void)setResourceArgs:(const IOGPUNewResourceArgs *)args resourceArgsSize:(unsigned int)size
{
  if (size <= 0x57)
  {
    [IOGPUMetalResourcePool setResourceArgs:resourceArgsSize:];
  }

  sizeCopy = size;
  os_unfair_lock_lock(&self->_priv.lock);
  [(IOGPUMetalResourcePool *)self purgeWithLock];
  free(self->_resourceArgs);
  self->_resourceArgsSize = size;
  v8 = malloc_type_malloc(sizeCopy, 0x1000040931E79F6uLL);
  self->_resourceArgs = v8;
  memcpy(v8, args, self->_resourceArgsSize);
  self->_resourceArgs->var0.var10 |= 0x4000u;
  ++self->generation;

  os_unfair_lock_unlock(&self->_priv.lock);
}

- (void)dealloc
{
  [(IOGPUMetalResourcePool *)self purgeWithLock];
  if (self->_allocatedSize)
  {
    [IOGPUMetalResourcePool dealloc];
  }

  free(self->_resourceArgs);
  self->_device = 0;
  v3.receiver = self;
  v3.super_class = IOGPUMetalResourcePool;
  [(IOGPUMetalResourcePool *)&v3 dealloc];
}

- (void)purgeWithLock
{
  tqh_first = self->_priv.volatileQueue.tqh_first;
  if (tqh_first)
  {
    do
    {
      tqe_next = tqh_first->_priv.entry.tqe_next;
      tqe_prev = tqh_first->_priv.entry.tqe_prev;
      if (tqe_next)
      {
        tqe_next->_priv.entry.tqe_prev = tqe_prev;
        v6 = tqh_first->_priv.entry.tqe_next;
        tqe_prev = tqh_first->_priv.entry.tqe_prev;
      }

      else
      {
        v6 = 0;
        self->_priv.volatileQueue.tqh_last = tqe_prev;
      }

      *tqe_prev = v6;
      --self->_priv.count;
      self->_allocatedSize -= [(IOGPUMetalResource *)tqh_first allocatedSize];

      tqh_first = tqe_next;
    }

    while (tqe_next);
  }

  v7 = self->_priv.nonvolatileQueue.tqh_first;
  if (v7)
  {
    do
    {
      v9 = v7->_priv.entry.tqe_next;
      v8 = v7->_priv.entry.tqe_prev;
      if (v9)
      {
        v9->_priv.entry.tqe_prev = v8;
        v10 = v7->_priv.entry.tqe_next;
        v8 = v7->_priv.entry.tqe_prev;
      }

      else
      {
        v10 = 0;
        self->_priv.nonvolatileQueue.tqh_last = v8;
      }

      *v8 = v10;
      --self->_priv.count;
      self->_allocatedSize -= [(IOGPUMetalResource *)v7 allocatedSize];

      v7 = v9;
    }

    while (v9);
  }
}

- (void)purge
{
  os_unfair_lock_lock(&self->_priv.lock);
  [(IOGPUMetalResourcePool *)self purgeWithLock];

  os_unfair_lock_unlock(&self->_priv.lock);
}

- (unint64_t)allocatedSize
{
  os_unfair_lock_lock(&self->_priv.lock);
  allocatedSize = self->_allocatedSize;
  os_unfair_lock_unlock(&self->_priv.lock);
  return allocatedSize;
}

@end