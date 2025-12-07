@interface UITableView(VideosUI)
+ (id)_vui_indexPathsWithIndexSet:()VideosUI andSection:;
- (void)_vui_applyDeleteChange:()VideosUI inSection:rowAnimation:;
- (void)_vui_applyInsertChange:()VideosUI inSection:rowAnimation:;
- (void)_vui_applyMoveChanges:()VideosUI inSection:rowAnimation:;
- (void)_vui_applyUpdateChanges:()VideosUI inSection:rowAnimation:;
- (void)vui_applyChangeSet:()VideosUI inSection:rowAnimation:updateDataSourceBlock:completionHandler:;
@end

@implementation UITableView(VideosUI)

- (void)vui_applyChangeSet:()VideosUI inSection:rowAnimation:updateDataSourceBlock:completionHandler:
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __107__UITableView_VideosUI__vui_applyChangeSet_inSection_rowAnimation_updateDataSourceBlock_completionHandler___block_invoke;
  v23[3] = &unk_1E8731C20;
  v25 = v13;
  v23[4] = self;
  v24 = v12;
  v26 = a4;
  v27 = a5;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __107__UITableView_VideosUI__vui_applyChangeSet_inSection_rowAnimation_updateDataSourceBlock_completionHandler___block_invoke_2;
  v18[3] = &unk_1E8731C48;
  v18[4] = self;
  v19 = v24;
  v21 = a4;
  v22 = a5;
  v20 = v14;
  v15 = v14;
  v16 = v24;
  v17 = v13;
  [self performBatchUpdates:v23 completion:v18];
}

- (void)_vui_applyDeleteChange:()VideosUI inSection:rowAnimation:
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    sourceIndexes = [a3 sourceIndexes];
    v9 = sourceIndexes;
    if (a4 == -1)
    {
      v12 = VUIDefaultLogObject(sourceIndexes);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = v9;
        _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_INFO, "Applying Delete Change: Deleting Sections At: %@", &v13, 0xCu);
      }

      [self deleteSections:v9 withRowAnimation:100];
    }

    else
    {
      v10 = [objc_opt_class() _vui_indexPathsWithIndexSet:sourceIndexes andSection:a4];
      v11 = VUIDefaultLogObject(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = v10;
        _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_INFO, "Applying Delete Change. Deleting Rows At: %@", &v13, 0xCu);
      }

      [self deleteRowsAtIndexPaths:v10 withRowAnimation:a5];
    }
  }
}

- (void)_vui_applyInsertChange:()VideosUI inSection:rowAnimation:
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    destinationIndexes = [a3 destinationIndexes];
    v9 = [objc_opt_class() _vui_indexPathsWithIndexSet:destinationIndexes andSection:a4];
    v10 = VUIDefaultLogObject(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_INFO, "Applying Insert Change. Inserting Rows At: %@", &v11, 0xCu);
    }

    [self insertRowsAtIndexPaths:v9 withRowAnimation:a5];
  }
}

- (void)_vui_applyMoveChanges:()VideosUI inSection:rowAnimation:
{
  v30 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = a3;
  v5 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v22;
    *&v6 = 138412546;
    v18 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        sourceIndexes = [v10 sourceIndexes];
        destinationIndexes = [v10 destinationIndexes];
        firstIndex = [sourceIndexes firstIndex];
        firstIndex2 = [destinationIndexes firstIndex];
        v15 = [MEMORY[0x1E696AC88] indexPathForRow:firstIndex inSection:a4];
        v16 = [MEMORY[0x1E696AC88] indexPathForRow:firstIndex2 inSection:a4];
        v17 = VUIDefaultLogObject(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = v18;
          v26 = v15;
          v27 = 2112;
          v28 = v16;
          _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_INFO, "Applying Move Change To Row %@ to %@", buf, 0x16u);
        }

        [self moveRowAtIndexPath:v15 toIndexPath:v16];
      }

      v7 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v7);
  }
}

- (void)_vui_applyUpdateChanges:()VideosUI inSection:rowAnimation:
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        destinationIndexes = [*(*(&v21 + 1) + 8 * v13) destinationIndexes];
        firstIndex = [destinationIndexes firstIndex];
        v16 = [MEMORY[0x1E696AC88] indexPathForRow:firstIndex inSection:a4];
        [v8 addObject:v16];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v11);
  }

  v17 = [v8 count];
  if (v17)
  {
    v18 = VUIDefaultLogObject(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
      *buf = 138412546;
      v26 = v19;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&dword_1E323F000, v18, OS_LOG_TYPE_INFO, "Applying Update Change To Section: %@. Reloading Rows At: %@", buf, 0x16u);
    }

    [self reloadRowsAtIndexPaths:v8 withRowAnimation:a5];
  }
}

+ (id)_vui_indexPathsWithIndexSet:()VideosUI andSection:
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__UITableView_VideosUI___vui_indexPathsWithIndexSet_andSection___block_invoke;
  v10[3] = &unk_1E8731C70;
  v8 = v7;
  v11 = v8;
  v12 = a4;
  [v6 enumerateIndexesUsingBlock:v10];

  return v8;
}

@end