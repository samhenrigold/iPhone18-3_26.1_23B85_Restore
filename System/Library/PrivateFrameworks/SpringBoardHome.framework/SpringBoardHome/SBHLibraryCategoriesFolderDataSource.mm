@interface SBHLibraryCategoriesFolderDataSource
- (BOOL)containsIcon:(id)icon;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDataSource:(id)source;
- (NSArray)categoryIdentifiers;
- (SBHLibraryCategoriesFolderDataSource)initWithCategoriesFolder:(id)folder;
- (id)categoryForIdentifier:(id)identifier;
- (id)reloadData;
- (id)reloadDataSourceUsingIcons:(id)icons categoryMap:(id)map;
- (id)reloadDataWithCategoryMap:(id)map;
- (unint64_t)categoryIdentifiersCount;
- (void)_noteDidAddIcon:(id)icon;
- (void)_noteDidReplaceIcon:(id)icon;
- (void)_noteIconVisibilityDidChange:(id)change;
- (void)_noteWillLayoutIconState:(id)state;
- (void)_noteWillRemoveIcon:(id)icon;
- (void)_regenerateCategoriesFolder;
- (void)setMaximumNumberOfDisplayedCategories:(int64_t)categories;
@end

@implementation SBHLibraryCategoriesFolderDataSource

- (SBHLibraryCategoriesFolderDataSource)initWithCategoriesFolder:(id)folder
{
  folderCopy = folder;
  model = [folderCopy model];
  v13.receiver = self;
  v13.super_class = SBHLibraryCategoriesFolderDataSource;
  v7 = [(SBHLibraryCategoriesFolderDataSource *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_iconModel, model);
    objc_storeStrong(&v8->_categoriesFolder, folder);
    v8->_maximumNumberOfDisplayedCategories = -1;
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v8->_observers;
    v8->_observers = weakObjectsHashTable;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__noteDidAddIcon_ name:@"SBIconModelDidAddIconNotification" object:v8->_iconModel];
    [defaultCenter addObserver:v8 selector:sel__noteDidReplaceIcon_ name:@"SBIconModelDidReplaceIconNotification" object:v8->_iconModel];
    [defaultCenter addObserver:v8 selector:sel__noteWillRemoveIcon_ name:@"SBIconModelWillRemoveIconNotification" object:v8->_iconModel];
    [defaultCenter addObserver:v8 selector:sel__noteIconVisibilityDidChange_ name:@"SBIconModelVisibilityDidChangeNotification" object:v8->_iconModel];
    [defaultCenter addObserver:v8 selector:sel__noteWillLayoutIconState_ name:@"SBIconModelWillLayoutIconStateNotification" object:v8->_iconModel];
  }

  return v8;
}

- (BOOL)isEqualToDataSource:(id)source
{
  sourceCopy = source;
  v5 = sourceCopy;
  if (sourceCopy)
  {
    if (self == sourceCopy)
    {
      v15 = 1;
    }

    else
    {
      v6 = [MEMORY[0x1E698E6A0] builderWithObject:sourceCopy ofExpectedClass:objc_opt_class()];
      mappedIcons = self->_mappedIcons;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __60__SBHLibraryCategoriesFolderDataSource_isEqualToDataSource___block_invoke;
      v21[3] = &unk_1E808CAD8;
      v8 = v5;
      v22 = v8;
      v9 = [v6 appendObject:mappedIcons counterpart:v21];
      iconModel = self->_iconModel;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __60__SBHLibraryCategoriesFolderDataSource_isEqualToDataSource___block_invoke_2;
      v19[3] = &unk_1E808CAD8;
      v11 = v8;
      v20 = v11;
      v12 = [v6 appendObject:iconModel counterpart:v19];
      categoriesFolder = self->_categoriesFolder;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __60__SBHLibraryCategoriesFolderDataSource_isEqualToDataSource___block_invoke_3;
      v17[3] = &unk_1E808CAD8;
      v18 = v11;
      v14 = [v6 appendObject:categoriesFolder counterpart:v17];
      v15 = [v6 isEqual];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SBHLibraryCategoriesFolderDataSource *)self isEqualToDataSource:equalCopy];

  return v5;
}

- (id)reloadData
{
  iconModel = [(SBHLibraryCategoriesFolderDataSource *)self iconModel];
  leafIcons = [iconModel leafIcons];
  v5 = [(SBHLibraryCategoriesFolderDataSource *)self reloadDataSourceUsingIcons:leafIcons categoryMap:self->_categoryMap];

  return v5;
}

- (id)reloadDataWithCategoryMap:(id)map
{
  mapCopy = map;
  iconModel = [(SBHLibraryCategoriesFolderDataSource *)self iconModel];
  leafIcons = [iconModel leafIcons];

  v7 = [(SBHLibraryCategoriesFolderDataSource *)self reloadDataSourceUsingIcons:leafIcons categoryMap:mapCopy];

  return v7;
}

- (id)reloadDataSourceUsingIcons:(id)icons categoryMap:(id)map
{
  iconsCopy = icons;
  mapCopy = map;
  if (![iconsCopy isEqual:self->_mappedIcons] || (objc_msgSend(mapCopy, "isEqualToCategoryMap:", self->_categoryMap) & 1) == 0)
  {
    v8 = [iconsCopy copy];
    mappedIcons = self->_mappedIcons;
    self->_mappedIcons = v8;

    objc_storeStrong(&self->_categoryMap, map);
    [(SBHLibraryCategoriesFolderDataSource *)self _regenerateCategoriesFolder];
    objc_storeStrong(&self->_categoryMap, map);
  }

  categoriesFolder = self->_categoriesFolder;
  v11 = categoriesFolder;

  return categoriesFolder;
}

- (void)setMaximumNumberOfDisplayedCategories:(int64_t)categories
{
  if (self->_maximumNumberOfDisplayedCategories != categories)
  {
    self->_maximumNumberOfDisplayedCategories = categories;
    [(SBHLibraryCategoriesFolderDataSource *)self _regenerateCategoriesFolder];
  }
}

- (BOOL)containsIcon:(id)icon
{
  v19 = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  categoriesFolder = [(SBHLibraryCategoriesFolderDataSource *)self categoriesFolder];
  icons = [categoriesFolder icons];

  v7 = [icons countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(icons);
        }

        category = [*(*(&v14 + 1) + 8 * i) category];
        icons2 = [category icons];
        v12 = [icons2 containsObject:iconCopy];

        if (v12)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [icons countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)categoryForIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  categoriesFolder = [(SBHLibraryCategoriesFolderDataSource *)self categoriesFolder];
  icons = [categoriesFolder icons];

  category2 = [icons countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (category2)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != category2; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(icons);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        category = [v10 category];
        categoryIdentifier = [category categoryIdentifier];
        v13 = [categoryIdentifier isEqual:identifierCopy];

        if (v13)
        {
          category2 = [v10 category];
          goto LABEL_11;
        }
      }

      category2 = [icons countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (category2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return category2;
}

- (NSArray)categoryIdentifiers
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  categoriesFolder = [(SBHLibraryCategoriesFolderDataSource *)self categoriesFolder];
  icons = [categoriesFolder icons];

  v6 = [icons countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(icons);
        }

        category = [*(*(&v13 + 1) + 8 * i) category];
        categoryIdentifier = [category categoryIdentifier];
        [v3 addObject:categoryIdentifier];
      }

      v7 = [icons countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v3;
}

- (unint64_t)categoryIdentifiersCount
{
  categoriesFolder = [(SBHLibraryCategoriesFolderDataSource *)self categoriesFolder];
  icons = [categoriesFolder icons];
  v4 = [icons count];

  return v4;
}

- (void)_regenerateCategoriesFolder
{
  v185 = *MEMORY[0x1E69E9840];
  iconModel = [(SBHLibraryCategoriesFolderDataSource *)self iconModel];
  v4 = objc_opt_new();
  mappedIcons = self->_mappedIcons;
  v171[0] = MEMORY[0x1E69E9820];
  v171[1] = 3221225472;
  v171[2] = __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke;
  v171[3] = &unk_1E808CB00;
  v105 = iconModel;
  v172 = v105;
  v6 = v4;
  v173 = v6;
  [(NSSet *)mappedIcons enumerateObjectsUsingBlock:v171];
  v7 = MEMORY[0x1E695DFD8];
  v119 = v6;
  allKeys = [v6 allKeys];
  v115 = [v7 setWithArray:allKeys];

  v111 = objc_opt_new();
  v9 = objc_opt_new();
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  selfCopy = self;
  icons = [(SBRootFolder *)self->_categoriesFolder icons];
  v11 = [icons countByEnumeratingWithState:&v167 objects:v184 count:16];
  v122 = v9;
  if (v11)
  {
    v12 = v11;
    v13 = *v168;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v168 != v13)
        {
          objc_enumerationMutation(icons);
        }

        v15 = *(*(&v167 + 1) + 8 * i);
        category = [v15 category];
        category2 = [v15 category];
        categoryIdentifier = [category2 categoryIdentifier];

        v19 = [v9 objectForKey:categoryIdentifier];

        if (v19)
        {
          v21 = SBLogProactiveAppLibrary(v20);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = [v9 objectForKey:categoryIdentifier];
            *buf = 138412546;
            v181 = category;
            v182 = 2112;
            v183 = v22;
            _os_log_error_impl(&dword_1BEB18000, v21, OS_LOG_TYPE_ERROR, "Error; duplicate category: %@ / %@", buf, 0x16u);

            v9 = v122;
          }
        }

        else
        {
          [v9 bs_setSafeObject:category forKey:categoryIdentifier];
        }
      }

      v12 = [icons countByEnumeratingWithState:&v167 objects:v184 count:16];
    }

    while (v12);
  }

  firstList = [(SBFolder *)selfCopy->_categoriesFolder firstList];
  categoryIdentifiers = [(SBHLibraryCategoryMap *)selfCopy->_categoryMap categoryIdentifiers];
  v25 = [categoryIdentifiers count];
  maximumNumberOfDisplayedCategories = selfCopy->_maximumNumberOfDisplayedCategories;
  if (v25 >= maximumNumberOfDisplayedCategories)
  {
    v27 = selfCopy->_maximumNumberOfDisplayedCategories;
  }

  else
  {
    v27 = v25;
  }

  if (maximumNumberOfDisplayedCategories >= 0)
  {
    v28 = v27;
  }

  else
  {
    v28 = v25;
  }

  v29 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:categoryIdentifiers range:0 copyItems:{v28, 0}];

  v30 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_2;
  aBlock[3] = &unk_1E808CB70;
  v108 = v30;
  v163 = v108;
  v164 = selfCopy;
  v104 = v115;
  v165 = v104;
  v166 = &__block_literal_global_47;
  v31 = _Block_copy(aBlock);
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v109 = firstList;
  obj = [firstList icons];
  v32 = [obj countByEnumeratingWithState:&v158 objects:v179 count:16];
  v120 = v31;
  if (v32)
  {
    v33 = v32;
    v112 = 0;
    v116 = *v159;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v159 != v116)
        {
          objc_enumerationMutation(obj);
        }

        v35 = *(*(&v158 + 1) + 8 * j);
        category3 = [v35 category];
        categoryIdentifier2 = [category3 categoryIdentifier];
        v156[0] = MEMORY[0x1E69E9820];
        v156[1] = 3221225472;
        v156[2] = __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_4;
        v156[3] = &unk_1E808CB98;
        v38 = categoryIdentifier2;
        v157 = v38;
        v39 = [v29 bs_firstObjectPassingTest:v156];
        v40 = v39;
        if (v39 && v38 && ([v39 isEqualToCategoryIdentifier:v38] & 1) == 0 && objc_msgSend(category3, "updateCategoryIdentifier:", v40))
        {
          v41 = v40;

          v112 = 1;
          v38 = v41;
        }

        predictionCategoryID = [v38 predictionCategoryID];
        v43 = v31[2](v31, v38);
        if (predictionCategoryID != 7)
        {
          if (![v29 containsObject:v38] || !objc_msgSend(v43, "count") || (objc_msgSend(category3, "icons"), v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v44, "count"), v44, !v45))
          {
            category4 = [v35 category];
            [category4 updateCategoryWithIcons:MEMORY[0x1E695E0F0]];

            [v109 removeIcon:v35];
            [v122 removeObjectForKey:v38];
            v47 = [v29 mutableCopy];
            [v47 removeObject:v38];
            v48 = [v47 copy];

            v112 = 1;
            v29 = v48;
          }

          v31 = v120;
        }
      }

      v33 = [obj countByEnumeratingWithState:&v158 objects:v179 count:16];
    }

    while (v33);
  }

  else
  {
    v112 = 0;
  }

  v49 = objc_opt_new();
  v50 = objc_opt_new();
  v153[0] = MEMORY[0x1E69E9820];
  v153[1] = 3221225472;
  v153[2] = __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_5;
  v153[3] = &unk_1E808CBC0;
  v107 = v50;
  v154 = v107;
  v51 = v49;
  v155 = v51;
  [v109 enumerateIconsUsingBlock:v153];
  v151[0] = MEMORY[0x1E69E9820];
  v151[1] = 3221225472;
  v151[2] = __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_39;
  v151[3] = &unk_1E808CBE8;
  obja = v109;
  v152 = obja;
  v103 = v51;
  [v51 enumerateObjectsUsingBlock:v151];
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v117 = [v29 copy];
  v52 = [v117 countByEnumeratingWithState:&v147 objects:v178 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v148;
    v55 = v122;
    do
    {
      for (k = 0; k != v53; ++k)
      {
        if (*v148 != v54)
        {
          objc_enumerationMutation(v117);
        }

        v57 = *(*(&v147 + 1) + 8 * k);
        if ([v57 predictionCategoryID] != 7)
        {
          v58 = [v55 objectForKey:v57];
          leafIdentifier = [v58 leafIdentifier];
          v60 = [v107 objectForKey:leafIdentifier];

          v61 = v120[2](v120, v57);
          v144[0] = MEMORY[0x1E69E9820];
          v144[1] = 3221225472;
          v144[2] = __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_2_41;
          v144[3] = &unk_1E808CC10;
          v145 = v119;
          v146 = &__block_literal_global_47;
          v62 = [v61 bs_mapNoNulls:v144];
          if (![v62 count])
          {
            if (v60)
            {
              [obja removeIcon:v60];
            }

            if (v58)
            {
              [v58 updateCategoryWithIcons:v62];
              [v122 removeObjectForKey:v57];
              v63 = [v29 mutableCopy];
              [v63 removeObject:v57];
              v64 = [v63 copy];

              v29 = v64;
            }
          }

          v55 = v122;
        }
      }

      v53 = [v117 countByEnumeratingWithState:&v147 objects:v178 count:16];
    }

    while (v53);
  }

  v65 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v143 = 0u;
  icons2 = [obja icons];
  v67 = [icons2 countByEnumeratingWithState:&v140 objects:v177 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v141;
    do
    {
      for (m = 0; m != v68; ++m)
      {
        if (*v141 != v69)
        {
          objc_enumerationMutation(icons2);
        }

        v71 = *(*(&v140 + 1) + 8 * m);
        leafIdentifier2 = [v71 leafIdentifier];
        [v65 setObject:v71 forKey:leafIdentifier2];
      }

      v68 = [icons2 countByEnumeratingWithState:&v140 objects:v177 count:16];
    }

    while (v68);
  }

  v106 = v65;

  [obja removeAllIcons];
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v110 = v29;
  v73 = [v110 countByEnumeratingWithState:&v136 objects:v176 count:16];
  if (!v73)
  {
    v75 = v120;
    goto LABEL_91;
  }

  v74 = v73;
  v75 = v120;
  v118 = *v137;
  do
  {
    v76 = 0;
    do
    {
      if (*v137 != v118)
      {
        objc_enumerationMutation(v110);
      }

      v77 = *(*(&v136 + 1) + 8 * v76);
      v78 = objc_autoreleasePoolPush();
      v79 = [v122 objectForKey:v77];
      leafIdentifier3 = [(SBHLibraryCategory *)v79 leafIdentifier];
      if (leafIdentifier3)
      {
        v81 = [(SBFolder *)selfCopy->_categoriesFolder iconWithIdentifier:leafIdentifier3];
        if (!v81)
        {
          v81 = [v106 objectForKey:leafIdentifier3];
          [v106 removeObjectForKey:leafIdentifier3];
        }
      }

      else
      {
        v81 = 0;
      }

      v82 = v75[2](v75, v77);
      v133[0] = MEMORY[0x1E69E9820];
      v133[1] = 3221225472;
      v133[2] = __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_3_43;
      v133[3] = &unk_1E808CC10;
      v134 = v119;
      v135 = &__block_literal_global_47;
      v83 = [v82 bs_mapNoNulls:v133];
      predictionCategoryID2 = [v77 predictionCategoryID];
      if ([v83 count])
      {
        v85 = 1;
      }

      else
      {
        v85 = predictionCategoryID2 == 7;
      }

      if (!v85)
      {
        if (v81)
        {
          [obja removeIcon:v81];
        }

        v75 = v120;
        if (v79)
        {
          [(SBHLibraryCategory *)v79 updateCategoryWithIcons:v83];
          [v122 removeObjectForKey:v77];
        }

        [v108 removeObjectForKey:v77];
        goto LABEL_84;
      }

      if (v79)
      {
        if (!v81)
        {
          goto LABEL_87;
        }
      }

      else
      {
        v79 = objc_alloc_init(SBHLibraryCategory);
        [(SBHLibraryCategory *)v79 setCategoryIdentifier:v77];
        iconModel2 = [(SBHLibraryCategoriesFolderDataSource *)selfCopy iconModel];
        [(SBHLibraryCategory *)v79 setIconDelegate:iconModel2];

        [v122 setObject:v79 forKey:v77];
        v112 = 1;
        if (!v81)
        {
LABEL_87:
          v81 = [[SBHLibraryPodCategoryIcon alloc] initWithCategory:v79];
          v112 = 1;
        }
      }

      v86 = [obja addIcon:v81];
      if ([(SBHLibraryCategory *)v79 updateCategoryWithIcons:v83])
      {
        [v111 addObject:v77];
      }

      compactPodAdditionalItemsFolder = [(SBHLibraryCategory *)v79 compactPodAdditionalItemsFolder];
      SBTreeNodeSetParent(compactPodAdditionalItemsFolder, selfCopy->_categoriesFolder);

      compactPodFolder = [(SBHLibraryCategory *)v79 compactPodFolder];
      SBTreeNodeSetParent(compactPodFolder, selfCopy->_categoriesFolder);

      expandedPodFolder = [(SBHLibraryCategory *)v79 expandedPodFolder];
      SBTreeNodeSetParent(expandedPodFolder, selfCopy->_categoriesFolder);

      v75 = v120;
LABEL_84:

      objc_autoreleasePoolPop(v78);
      ++v76;
    }

    while (v74 != v76);
    v91 = [v110 countByEnumeratingWithState:&v136 objects:v176 count:16];
    v74 = v91;
  }

  while (v91);
LABEL_91:

  v131[0] = MEMORY[0x1E69E9820];
  v131[1] = 3221225472;
  v131[2] = __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_4_46;
  v131[3] = &unk_1E808CC38;
  v92 = v110;
  v132 = v92;
  [obja sortUsingComparator:v131];
  [MEMORY[0x1E6979518] begin];
  if (v112)
  {
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v93 = [(NSHashTable *)selfCopy->_observers copy];
    v94 = [v93 countByEnumeratingWithState:&v127 objects:v175 count:16];
    if (v94)
    {
      v95 = v94;
      v96 = *v128;
      do
      {
        for (n = 0; n != v95; ++n)
        {
          if (*v128 != v96)
          {
            objc_enumerationMutation(v93);
          }

          [*(*(&v127 + 1) + 8 * n) categoriesDataSourceNeedsAnimatedReload:selfCopy];
        }

        v95 = [v93 countByEnumeratingWithState:&v127 objects:v175 count:16];
      }

      while (v95);
    }

    v75 = v120;
  }

  if ([v111 count])
  {
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;
    v98 = [(NSHashTable *)selfCopy->_observers copy];
    v99 = [v98 countByEnumeratingWithState:&v123 objects:v174 count:16];
    if (v99)
    {
      v100 = v99;
      v101 = *v124;
      do
      {
        for (ii = 0; ii != v100; ++ii)
        {
          if (*v124 != v101)
          {
            objc_enumerationMutation(v98);
          }

          [*(*(&v123 + 1) + 8 * ii) categoriesDataSource:selfCopy shouldAnimateLayoutForCategories:v111];
        }

        v100 = [v98 countByEnumeratingWithState:&v123 objects:v174 count:16];
      }

      while (v100);
    }

    v75 = v120;
  }

  [MEMORY[0x1E6979518] commit];
}

void __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([*(a1 + 32) isIconVisible:?])
  {
    v3 = [v4 leafIdentifier];
    [*(a1 + 40) bs_setSafeObject:v4 forKey:v3];
  }
}

id __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_33(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 length];
  v4 = *MEMORY[0x1E69DE790];
  if (v3 > [*MEMORY[0x1E69DE790] length] && objc_msgSend(v2, "hasPrefix:", v4))
  {
    v5 = [v2 substringFromIndex:{objc_msgSend(v4, "length")}];

    v2 = v5;
  }

  return v2;
}

id __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (!v4)
  {
    v5 = [*(*(a1 + 40) + 16) sortedApplicationIdentifiersForCategoryIdentifier:v3];
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_3;
    v10 = &unk_1E808CB48;
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v4 = [v5 bs_filter:&v7];
    [*(a1 + 32) bs_setSafeObject:v4 forKey:{v3, v7, v8, v9, v10}];
  }

  return v4;
}

uint64_t __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  v3 = [v1 containsObject:v2];

  return v3;
}

BOOL __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 predictionCategoryID];
  if (v4 == [*(a1 + 32) predictionCategoryID])
  {
    v5 = [v3 predictionCategoryIndex];
    v6 = v5 == [*(a1 + 32) predictionCategoryIndex];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isLeafIcon])
  {
    v4 = [v3 leafIdentifier];
    if (v4)
    {
      v5 = [*(a1 + 32) objectForKey:v4];

      if (v5)
      {
        v6 = SBLogProactiveAppLibrary([*(a1 + 40) addObject:v3]);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_5_cold_1(v3, v6);
        }
      }

      else
      {
        [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
      }
    }
  }
}

id __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_2_41(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  v3 = [v1 objectForKeyedSubscript:v2];

  return v3;
}

id __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_3_43(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  v3 = [v1 objectForKeyedSubscript:v2];

  return v3;
}

uint64_t __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_4_46(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 category];
  v8 = [v7 categoryIdentifier];
  v9 = [v5 indexOfObject:v8];

  v10 = *(a1 + 32);
  v11 = [v6 category];

  v12 = [v11 categoryIdentifier];
  v13 = [v10 indexOfObject:v12];

  v14 = 1;
  if (v9 <= v13)
  {
    v14 = -1;
  }

  if (v9 == v13)
  {
    return 0;
  }

  else
  {
    return v14;
  }
}

- (void)_noteDidAddIcon:(id)icon
{
  if (self->_categoryMap)
  {
    userInfo = [icon userInfo];
    v9 = [userInfo objectForKey:@"icon"];

    v6 = v9;
    if (v9)
    {
      isWidgetIcon = [v9 isWidgetIcon];
      v6 = v9;
      if ((isWidgetIcon & 1) == 0)
      {
        if (![v9 isApplicationIcon] || (isWidgetIcon = objc_msgSend(v9, "leafIdentifierAndApplicationBundleIDMatches"), v6 = v9, isWidgetIcon))
        {
          v7 = [(NSSet *)self->_mappedIcons mutableCopy];
          [v7 bs_safeAddObject:v9];
          if (([v7 isEqualToSet:self->_mappedIcons] & 1) == 0)
          {
            v8 = [(SBHLibraryCategoriesFolderDataSource *)self reloadDataSourceUsingIcons:v7 categoryMap:self->_categoryMap];
          }

          v6 = v9;
        }
      }
    }

    MEMORY[0x1EEE66BB8](isWidgetIcon, v6);
  }
}

- (void)_noteDidReplaceIcon:(id)icon
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_categoryMap)
  {
    userInfo = [icon userInfo];
    v5 = [userInfo objectForKey:@"icon"];

    if ([v5 isLeafIcon])
    {
      v6 = [(NSSet *)self->_mappedIcons mutableCopy];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      selfCopy = self;
      v7 = self->_mappedIcons;
      v8 = [(NSSet *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v18 + 1) + 8 * i);
            leafIdentifier = [v5 leafIdentifier];
            leafIdentifier2 = [v12 leafIdentifier];
            v15 = [leafIdentifier isEqualToString:leafIdentifier2];

            if (v15)
            {
              [v6 removeObject:v12];
            }
          }

          v9 = [(NSSet *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v9);
      }

      if (([v6 isEqualToSet:selfCopy->_mappedIcons] & 1) == 0)
      {
        v16 = [(SBHLibraryCategoriesFolderDataSource *)selfCopy reloadDataSourceUsingIcons:v6 categoryMap:selfCopy->_categoryMap];
      }
    }
  }
}

- (void)_noteWillRemoveIcon:(id)icon
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_categoryMap)
  {
    userInfo = [icon userInfo];
    v5 = [userInfo objectForKey:@"icon"];

    if ([v5 isLeafIcon] && (objc_msgSend(v5, "isWidgetIcon") & 1) == 0)
    {
      v6 = [(NSSet *)self->_mappedIcons mutableCopy];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      selfCopy = self;
      v7 = self->_mappedIcons;
      v8 = [(NSSet *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v18 + 1) + 8 * i);
            leafIdentifier = [v5 leafIdentifier];
            leafIdentifier2 = [v12 leafIdentifier];
            v15 = [leafIdentifier isEqualToString:leafIdentifier2];

            if (v15)
            {
              [v6 removeObject:v12];
            }
          }

          v9 = [(NSSet *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v9);
      }

      if (([v6 isEqualToSet:selfCopy->_mappedIcons] & 1) == 0)
      {
        v16 = [(SBHLibraryCategoriesFolderDataSource *)selfCopy reloadDataSourceUsingIcons:v6 categoryMap:selfCopy->_categoryMap];
      }
    }
  }
}

- (void)_noteIconVisibilityDidChange:(id)change
{
  if (self->_categoryMap)
  {
    v3 = [(SBHLibraryCategoriesFolderDataSource *)self reloadDataWithCategoryMap:?];
  }
}

- (void)_noteWillLayoutIconState:(id)state
{
  if (self->_categoryMap)
  {
    v3 = [(SBHLibraryCategoriesFolderDataSource *)self reloadDataWithCategoryMap:?];
  }
}

void __67__SBHLibraryCategoriesFolderDataSource__regenerateCategoriesFolder__block_invoke_5_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_ERROR, "Found duplicate icon: %{public}@", &v2, 0xCu);
}

@end