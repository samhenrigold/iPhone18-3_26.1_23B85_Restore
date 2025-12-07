@interface _GEOConfigChangedBlockListener
- (void)callListener;
@end

@implementation _GEOConfigChangedBlockListener

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

    v5 = self->block;
    if (v5)
    {
      queue = self->queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __46___GEOConfigChangedBlockListener_callListener__block_invoke;
      block[3] = &unk_1E705D9B8;
      v10 = v5;
      v11 = v8;
      v7 = v5;
      dispatch_async(queue, block);
    }
  }
}

@end