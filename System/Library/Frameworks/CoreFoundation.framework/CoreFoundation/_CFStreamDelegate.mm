@interface _CFStreamDelegate
- (_CFStreamDelegate)initWithStreamEvents:(unint64_t)events callback:(void *)callback context:(id *)context;
- (void)dealloc;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation _CFStreamDelegate

- (_CFStreamDelegate)initWithStreamEvents:(unint64_t)events callback:(void *)callback context:(id *)context
{
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = _CFStreamDelegate;
  v8 = [(_CFStreamDelegate *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_flags = events;
    v8->_cb._rcb = callback;
    v10 = *&context->var0;
    v11 = *&context->var2;
    v8->_client.copyDescription = context->var4;
    *&v8->_client.version = v10;
    *&v8->_client.retain = v11;
    retain = v8->_client.retain;
    if (retain)
    {
      if (v8->_client.release)
      {
        v8->_client.info = retain(v8->_client.info);
      }
    }
  }

  return v9;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  release = self->_client.release;
  if (release)
  {
    info = self->_client.info;
    if (info)
    {
      release(info, a2);
    }
  }

  v5.receiver = self;
  v5.super_class = _CFStreamDelegate;
  [(_CFStreamDelegate *)&v5 dealloc];
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  if ((self->_flags & event) != 0)
  {
    (self->_cb._rcb)(stream, event, self->_client.info);
  }
}

@end