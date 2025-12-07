@interface LSApplicationProxiesOfTypeQuery
@end

@implementation LSApplicationProxiesOfTypeQuery

uint64_t __70___LSApplicationProxiesOfTypeQuery__enumerateWithXPCConnection_block___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  [(_LSDatabase *)v5 store];
  v6 = _CSStringCopyCFString();
  v7 = v6;
  if (v6)
  {
    v8 = [v6 isEqual:*(a1 + 32)];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end