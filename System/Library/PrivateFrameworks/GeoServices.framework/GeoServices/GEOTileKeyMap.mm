@interface GEOTileKeyMap
- (void)dealloc;
@end

@implementation GEOTileKeyMap

- (void)dealloc
{
  if (!self->_type)
  {
    for (i = *(self->_map + 2); i; i = *i)
    {
    }
  }

  map = self->_map;
  if (map)
  {
    v5 = map[2];
    if (v5)
    {
      do
      {
        v6 = *v5;
        operator delete(v5);
        v5 = v6;
      }

      while (v6);
    }

    v7 = *map;
    *map = 0;
    if (v7)
    {
      operator delete(v7);
    }

    MEMORY[0x18CFD1E40](map, 0x10A0C408EF24B1CLL);
  }

  v8.receiver = self;
  v8.super_class = GEOTileKeyMap;
  [(GEOTileKeyMap *)&v8 dealloc];
}

@end