@interface MTLDebugDeadlineProfile
- (void)validateCommandQueue:(id)queue;
@end

@implementation MTLDebugDeadlineProfile

- (void)validateCommandQueue:(id)queue
{
  v3 = atomic_load(&self->_commandQueue);
  if (v3)
  {
    if (v3 == queue)
    {
      return;
    }

    v6 = 29;
LABEL_11:
    [MTLDebugDeadlineProfile validateCommandQueue:v6];
    return;
  }

  atomic_compare_exchange_strong(&self->_commandQueue, &v3, queue);
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (v3 && v5 != queue)
  {
    v6 = 25;
    goto LABEL_11;
  }
}

@end