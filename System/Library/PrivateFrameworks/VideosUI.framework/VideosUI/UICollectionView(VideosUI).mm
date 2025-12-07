@interface UICollectionView(VideosUI)
+ (id)_vui_indexPathsWithIndexSet:()VideosUI andSection:;
- (void)_vui_applyChangeSet:()VideosUI inSection:updateDataSourceBlock:applyChangeBlock:shouldWrapInUpdate:completionHandler:;
- (void)_vui_applyDeleteChange:()VideosUI inSection:applyChangeBlock:;
- (void)_vui_applyInsertChange:()VideosUI inSection:applyChangeBlock:;
- (void)_vui_applyItemUpdateChanges:()VideosUI inSection:applyChangeBlock:;
- (void)_vui_applyMoveChanges:()VideosUI inSection:applyChangeBlock:;
- (void)_vui_applySectionUpdateChanges:()VideosUI applyChangeBlock:updateDataSourceBlock:;
- (void)_vui_applyUpdateChanges:()VideosUI inSection:applyChangeBlock:updateDataSourceBlock:;
@end

@implementation UICollectionView(VideosUI)

- (void)_vui_applyChangeSet:()VideosUI inSection:updateDataSourceBlock:applyChangeBlock:shouldWrapInUpdate:completionHandler:
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __136__UICollectionView_VideosUI___vui_applyChangeSet_inSection_updateDataSourceBlock_applyChangeBlock_shouldWrapInUpdate_completionHandler___block_invoke;
  v29[3] = &unk_1E8732758;
  v32 = v15;
  v35 = a7;
  v34 = a4;
  v30 = v14;
  selfCopy = self;
  v33 = v16;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __136__UICollectionView_VideosUI___vui_applyChangeSet_inSection_updateDataSourceBlock_applyChangeBlock_shouldWrapInUpdate_completionHandler___block_invoke_2;
  v22[3] = &unk_1E8732780;
  v28 = a7;
  v22[4] = self;
  v23 = v30;
  v24 = v33;
  v25 = v32;
  v26 = v17;
  v27 = a4;
  v18 = v17;
  v19 = v32;
  v20 = v33;
  v21 = v30;
  [self performBatchUpdates:v29 completion:v22];
}

- (void)_vui_applyDeleteChange:()VideosUI inSection:applyChangeBlock:
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v8 && (!v9 || ((*(v9 + 2))(v9, a4, v8) & 1) == 0))
  {
    sourceIndexes = [v8 sourceIndexes];
    v12 = sourceIndexes;
    if (a4 == -1)
    {
      v20 = VUIDefaultLogObject(sourceIndexes);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = 138412290;
        v22 = v12;
        _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_INFO, "Applying Delete Change: Deleting Sections At: %@", &v21, 0xCu);
      }

      [self deleteSections:v12];
    }

    else
    {
      v13 = [objc_opt_class() _vui_indexPathsWithIndexSet:sourceIndexes andSection:a4];
      v14 = [v13 count];
      v15 = [self numberOfItemsInSection:a4];
      v16 = v15;
      v17 = VUIDefaultLogObject(v15);
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
      if (v14 == v16)
      {
        if (v18)
        {
          v21 = 134217984;
          v22 = a4;
          _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_INFO, "Applying Delete Change: Deleting Section At: %lu", &v21, 0xCu);
        }

        v19 = [MEMORY[0x1E696AC90] indexSetWithIndex:a4];
        [self deleteSections:v19];
      }

      else
      {
        if (v18)
        {
          v21 = 134218242;
          v22 = a4;
          v23 = 2112;
          v24 = v13;
          _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_INFO, "Applying Delete Change To Section: %lu. Delete Items At: %@", &v21, 0x16u);
        }

        [self deleteItemsAtIndexPaths:v13];
      }
    }
  }
}

- (void)_vui_applyInsertChange:()VideosUI inSection:applyChangeBlock:
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v8 && (!v9 || ((*(v9 + 2))(v9, a4, v8) & 1) == 0))
  {
    destinationIndexes = [v8 destinationIndexes];
    v12 = destinationIndexes;
    if (a4 == -1)
    {
      v18 = VUIDefaultLogObject(destinationIndexes);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = 138412290;
        v20 = v12;
        _os_log_impl(&dword_1E323F000, v18, OS_LOG_TYPE_INFO, "Applying Insert Change: Inserting Sections At: %@", &v19, 0xCu);
      }

      [self insertSections:v12];
    }

    else
    {
      v13 = [objc_opt_class() _vui_indexPathsWithIndexSet:destinationIndexes andSection:a4];
      numberOfSections = [self numberOfSections];
      if (numberOfSections <= a4)
      {
        v15 = VUIDefaultLogObject(numberOfSections);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v19 = 134217984;
          v20 = a4;
          _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_INFO, "Applying Insert Change: Inserting Section At: %lu", &v19, 0xCu);
        }

        v16 = [MEMORY[0x1E696AC90] indexSetWithIndex:a4];
        [self insertSections:v16];
      }

      v17 = VUIDefaultLogObject(numberOfSections);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v19 = 134218242;
        v20 = a4;
        v21 = 2112;
        v22 = v13;
        _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_INFO, "Applying Insert Change To Section: %lu. Insert Items At: %@", &v19, 0x16u);
      }

      [self insertItemsAtIndexPaths:v13];
    }
  }
}

- (void)_vui_applyMoveChanges:()VideosUI inSection:applyChangeBlock:
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v7;
  v9 = [v7 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v28;
    *&v10 = 134218240;
    v24 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        if (!v8 || (v8[2](v8, a4, *(*(&v27 + 1) + 8 * i)) & 1) == 0)
        {
          sourceIndexes = [v14 sourceIndexes];
          destinationIndexes = [v14 destinationIndexes];
          firstIndex = [sourceIndexes firstIndex];
          firstIndex2 = [destinationIndexes firstIndex];
          v19 = firstIndex2;
          if (a4 == -1)
          {
            v23 = VUIDefaultLogObject(firstIndex2);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              *buf = v24;
              v32 = firstIndex;
              v33 = 2048;
              v34 = v19;
              _os_log_impl(&dword_1E323F000, v23, OS_LOG_TYPE_INFO, "Applying Move Change To Section %lu to %lu", buf, 0x16u);
            }

            [self moveSection:firstIndex toSection:v19];
          }

          else
          {
            v20 = [MEMORY[0x1E696AC88] indexPathForRow:firstIndex inSection:a4];
            v21 = [MEMORY[0x1E696AC88] indexPathForRow:v19 inSection:a4];
            v22 = VUIDefaultLogObject(v21);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v32 = v20;
              v33 = 2112;
              v34 = v21;
              _os_log_impl(&dword_1E323F000, v22, OS_LOG_TYPE_INFO, "Applying Move Change To Item %@ to %@", buf, 0x16u);
            }

            [self moveItemAtIndexPath:v20 toIndexPath:v21];
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v11);
  }
}

- (void)_vui_applyUpdateChanges:()VideosUI inSection:applyChangeBlock:updateDataSourceBlock:
{
  if (a4 == -1)
  {
    v12 = a6;
    v13 = a5;
    v14 = a3;
    [self _vui_applySectionUpdateChanges:? applyChangeBlock:? updateDataSourceBlock:?];
  }

  else
  {
    v10 = MEMORY[0x1E69DF6A8];
    v11 = a6;
    v12 = a5;
    v13 = a3;
    v14 = objc_alloc_init(v10);
    [v14 setUpdateChanges:v13];
    v11[2](v11, v14);

    [self _vui_applyItemUpdateChanges:v13 inSection:a4 applyChangeBlock:v12];
  }
}

- (void)_vui_applySectionUpdateChanges:()VideosUI applyChangeBlock:updateDataSourceBlock:
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v8;
  v11 = [v8 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v30;
    *&v12 = 138412290;
    v26 = v12;
    v27 = v9;
    do
    {
      v15 = 0;
      do
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v29 + 1) + 8 * v15);
        if (!v9 || (v9[2](v9, -1, *(*(&v29 + 1) + 8 * v15)) & 1) == 0)
        {
          destinationIndexes = [v16 destinationIndexes];
          firstIndex = [destinationIndexes firstIndex];
          v19 = VUIDefaultLogObject(firstIndex);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            [MEMORY[0x1E696AD98] numberWithUnsignedInteger:firstIndex];
            v20 = v13;
            v21 = v14;
            v22 = v10;
            v24 = v23 = self;
            *buf = v26;
            v34 = v24;
            _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_INFO, "Applying Update Change: Updating Sections At: %@", buf, 0xCu);

            self = v23;
            v10 = v22;
            v14 = v21;
            v13 = v20;
            v9 = v27;
          }

          updateChangeSet = [v16 updateChangeSet];
          [self _vui_applyChangeSet:updateChangeSet inSection:firstIndex updateDataSourceBlock:v10 applyChangeBlock:v9 shouldWrapInUpdate:1 completionHandler:0];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v13);
  }
}

- (void)_vui_applyItemUpdateChanges:()VideosUI inSection:applyChangeBlock:
{
  selfCopy = self;
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v7;
  v10 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v23 + 1) + 8 * v13);
        if (!v8 || (v8[2](v8, a4, *(*(&v23 + 1) + 8 * v13)) & 1) == 0)
        {
          destinationIndexes = [v14 destinationIndexes];
          firstIndex = [destinationIndexes firstIndex];
          v17 = [MEMORY[0x1E696AC88] indexPathForRow:firstIndex inSection:a4];
          [v9 addObject:v17];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v11);
  }

  v18 = [v9 count];
  if (v18)
  {
    v19 = VUIDefaultLogObject(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
      *buf = 138412546;
      v28 = v20;
      v29 = 2112;
      v30 = v9;
      _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_INFO, "Applying Update Change To Section: %@. Reloading Items At: %@", buf, 0x16u);
    }

    [selfCopy reloadItemsAtIndexPaths:v9];
  }
}

+ (id)_vui_indexPathsWithIndexSet:()VideosUI andSection:
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__UICollectionView_VideosUI___vui_indexPathsWithIndexSet_andSection___block_invoke;
  v10[3] = &unk_1E8731C70;
  v8 = v7;
  v11 = v8;
  v12 = a4;
  [v6 enumerateIndexesUsingBlock:v10];

  return v8;
}

@end