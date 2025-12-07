@interface GEOTileKeyList
- (id)newXPCData;
- (void)dealloc;
@end

@implementation GEOTileKeyList

- (void)dealloc
{
  p_head = &self->_head;
  head = self->_head;
  if (head)
  {
    do
    {
      v5 = head[2];
      free(head);
      head = v5;
    }

    while (v5);
  }

  *p_head = 0;
  p_head[1] = 0;
  v6.receiver = self;
  v6.super_class = GEOTileKeyList;
  [(GEOTileKeyList *)&v6 dealloc];
}

- (id)newXPCData
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(GEOTileKeyList *)self count])
  {
    v3 = 16 * [(GEOTileKeyList *)self count];
    v4 = malloc_type_malloc(v3, 0x33288989uLL);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    selfCopy = self;
    v6 = [(GEOTileKeyList *)selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v15;
      do
      {
        v10 = 0;
        v11 = &v4[16 * v8];
        v8 += v7;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(selfCopy);
          }

          *v11 = **(*(&v14 + 1) + 8 * v10);
          v11 += 16;
          ++v10;
        }

        while (v7 != v10);
        v7 = [(GEOTileKeyList *)selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v12 = xpc_data_create(v4, v3);
    free(v4);
    return v12;
  }

  else
  {

    return xpc_data_create(0, 0);
  }
}

@end