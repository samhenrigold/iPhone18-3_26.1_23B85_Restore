@interface _GEOConfigChangedDelegateListener
- (void)callListener;
@end

@implementation _GEOConfigChangedDelegateListener

- (void)callListener
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->keyHelper);
    if (WeakRetained)
    {
      v4 = *(WeakRetained + 40);
    }

    else
    {
      v4 = 0uLL;
    }

    v8 = v4;

    v5 = objc_loadWeakRetained(&self->delegate);
    if (v5)
    {
      queue = self->queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __49___GEOConfigChangedDelegateListener_callListener__block_invoke;
      block[3] = &unk_1E7071608;
      v10 = v5;
      v11 = v8;
      v7 = v5;
      dispatch_async(queue, block);
    }
  }
}

@end