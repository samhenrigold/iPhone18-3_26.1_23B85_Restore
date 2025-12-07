@interface __IOGCFastPathReader
- (id)description;
- (void)dealloc;
@end

@implementation __IOGCFastPathReader

- (void)dealloc
{
  kdebug_trace();
  readerInterface = self->readerInterface;
  if (readerInterface)
  {
    ((*readerInterface)->var3)(readerInterface);
    self->readerInterface = 0;
  }

  allocator = self->allocator;
  if (allocator)
  {
    objc_destructInstance(self);
    CFAllocatorDeallocate(allocator, self);
    CFRelease(allocator);
  }

  else
  {
    v5.receiver = self;
    v5.super_class = __IOGCFastPathReader;
    [(__IOGCFastPathReader *)&v5 dealloc];
  }

  kdebug_trace();
}

- (id)description
{
  readerInterface = self->readerInterface;
  if (readerInterface && *readerInterface && (var7 = (*readerInterface)->var7) != 0)
  {
    v5 = var7();

    return v5;
  }

  else
  {
    queue = self->queue;
    if (queue)
    {
      providerID = queue->client->providerID;
      queue = queue->queueID;
    }

    else
    {
      providerID = 0;
    }

    return [MEMORY[0x1E696AEC0] stringWithFormat:@"IOGCFastPathReader %#010llx / %#010llx", providerID, queue];
  }
}

@end