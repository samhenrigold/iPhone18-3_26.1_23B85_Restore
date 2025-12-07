@interface _LSDOpenService
+ (id)XPCInterface;
- (_LSDOpenService)initWithXPCListener:(id)listener;
@end

@implementation _LSDOpenService

+ (id)XPCInterface
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31___LSDOpenService_XPCInterface__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a2;
  v4[5] = self;
  if (+[_LSDOpenService XPCInterface]::once != -1)
  {
    dispatch_once(&+[_LSDOpenService XPCInterface]::once, v4);
  }

  v2 = +[_LSDOpenService XPCInterface]::result;

  return v2;
}

- (_LSDOpenService)initWithXPCListener:(id)listener
{
  listenerCopy = listener;
  v9.receiver = self;
  v9.super_class = _LSDOpenService;
  v5 = [(_LSDService *)&v9 initWithXPCListener:listenerCopy];
  v6 = v5;
  if (v5)
  {
    v7 = _LSServer_GetIOQueue(v5);
    dispatch_async(v7, &__block_literal_global_34);
  }

  return v6;
}

@end