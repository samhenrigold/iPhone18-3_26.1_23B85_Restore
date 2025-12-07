@interface NSArray(DOCNode)
- (id)fpfs_syncFPItemsFromNodes;
@end

@implementation NSArray(DOCNode)

- (id)fpfs_syncFPItemsFromNodes
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = dispatch_group_create();
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = self;
  v4 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v4)
  {
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        dispatch_group_enter(v3);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __45__NSArray_DOCNode__fpfs_syncFPItemsFromNodes__block_invoke;
        v12[3] = &unk_278F9B900;
        v15 = v20;
        v13 = v2;
        v14 = v3;
        [v7 fetchFPItem:v12];
      }

      v4 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v4);
  }

  dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v8 = [v2 count];
  if (v8 == [obj count])
  {
    v9 = v2;
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  _Block_object_dispose(v20, 8);

  return v9;
}

@end