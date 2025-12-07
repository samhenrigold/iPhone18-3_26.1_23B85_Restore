@interface GEOConfigRemoteProxy
- (GEOConfigRemoteProxy)init;
@end

@implementation GEOConfigRemoteProxy

- (GEOConfigRemoteProxy)init
{
  v7.receiver = self;
  v7.super_class = GEOConfigRemoteProxy;
  v2 = [(GEOConfigRemoteProxy *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock = 0;
    strongObjectsPointerArray = [MEMORY[0x1E696AE08] strongObjectsPointerArray];
    configStores = v3->_configStores;
    v3->_configStores = strongObjectsPointerArray;

    if ([(NSPointerArray *)v3->_configStores count]<= 8)
    {
      do
      {
        [(NSPointerArray *)v3->_configStores addPointer:0];
      }

      while ([(NSPointerArray *)v3->_configStores count]< 9);
    }
  }

  return v3;
}

@end