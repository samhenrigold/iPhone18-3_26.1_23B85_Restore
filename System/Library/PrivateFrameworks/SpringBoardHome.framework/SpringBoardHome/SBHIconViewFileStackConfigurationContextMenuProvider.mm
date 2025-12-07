@interface SBHIconViewFileStackConfigurationContextMenuProvider
- (SBHIconViewFileStackConfigurationContextMenuProvider)init;
- (SBHIconViewFileStackConfigurationContextMenuProvider)initWithUniqueIdentifier:(id)identifier;
- (SBHIconViewFileStackConfigurationContextMenuProviderDelegate)delegate;
- (id)contextMenuSectionsForIconView:(id)view atLocation:(CGPoint)location;
@end

@implementation SBHIconViewFileStackConfigurationContextMenuProvider

- (SBHIconViewFileStackConfigurationContextMenuProvider)init
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(SBHIconViewFileStackConfigurationContextMenuProvider *)self initWithUniqueIdentifier:uUID];

  return v4;
}

- (SBHIconViewFileStackConfigurationContextMenuProvider)initWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SBHIconViewFileStackConfigurationContextMenuProvider;
  v5 = [(SBHIconViewFileStackConfigurationContextMenuProvider *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v6;
  }

  return v5;
}

- (id)contextMenuSectionsForIconView:(id)view atLocation:(CGPoint)location
{
  v115 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  icon = [viewCopy icon];
  isFileStackIcon = [icon isFileStackIcon];

  if (isFileStackIcon)
  {
    icon2 = [viewCopy icon];
    v8 = objc_opt_class();
    v9 = icon2;
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v81 = v11;
    v82 = objc_alloc_init(MEMORY[0x1E695DF70]);
    objc_initWeak(&location, v11);
    v78 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = [v11 url];

    if (v12)
    {
      v13 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"arrowshape.turn.up.right.circle"];
      v14 = MEMORY[0x1E696AEC0];
      v15 = SBHBundle(v13);
      v16 = [v15 localizedStringForKey:@"OPEN_ITEM_TITLE_WITH_NAME" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      displayName = [v81 displayName];
      v18 = [v14 stringWithFormat:v16, displayName];

      v19 = MEMORY[0x1E69DC628];
      v110[0] = MEMORY[0x1E69E9820];
      v110[1] = 3221225472;
      v110[2] = __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke;
      v110[3] = &unk_1E808B348;
      objc_copyWeak(&v111, &location);
      v20 = [v19 actionWithTitle:v18 image:v13 identifier:0 handler:v110];
      [v78 addObject:v20];

      objc_destroyWeak(&v111);
    }

    v79 = objc_alloc_init(MEMORY[0x1E695DF70]);
    objc_initWeak(&from, self);
    v77 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"minus.circle"];
    v21 = MEMORY[0x1E69DC628];
    v22 = SBHBundle(v77);
    v23 = [v22 localizedStringForKey:@"REMOVE_FROM_DOCK_CONTEXT_MENU_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    v106[0] = MEMORY[0x1E69E9820];
    v106[1] = 3221225472;
    v106[2] = __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_2_30;
    v106[3] = &unk_1E808F3F8;
    objc_copyWeak(&v107, &from);
    objc_copyWeak(&v108, &location);
    v76 = [v21 actionWithTitle:v23 image:v77 identifier:0 handler:v106];

    [v76 setAttributes:2];
    [v79 addObject:v76];
    v75 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"folder"];
    v24 = MEMORY[0x1E69DC628];
    v25 = SBHBundle(v75);
    v26 = [v25 localizedStringForKey:@"FILE_STACK_CONFIGURATION_CONTEXT_MENU_SHOW_IN_FILES_ITEM_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    v103[0] = MEMORY[0x1E69E9820];
    v103[1] = 3221225472;
    v103[2] = __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_3;
    v103[3] = &unk_1E808F3F8;
    objc_copyWeak(&v104, &location);
    objc_copyWeak(&v105, &from);
    v74 = [v24 actionWithTitle:v26 image:v75 identifier:0 handler:v103];

    [v79 addObject:v74];
    displayMode = [v81 displayMode];
    supportedDisplayModes = [MEMORY[0x1E699A418] supportedDisplayModes];
    v89 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    obj = supportedDisplayModes;
    v28 = [obj countByEnumeratingWithState:&v99 objects:v114 count:16];
    if (v28)
    {
      v29 = *v100;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v100 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v99 + 1) + 8 * i);
          localizedName = [v31 localizedName];
          v33 = MEMORY[0x1E69DCAB8];
          symbolName = [v31 symbolName];
          v35 = [v33 _systemImageNamed:symbolName];

          v36 = MEMORY[0x1E69DC628];
          v97[0] = MEMORY[0x1E69E9820];
          v97[1] = 3221225472;
          v97[2] = __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_58;
          v97[3] = &unk_1E808F420;
          objc_copyWeak(&v98, &location);
          v97[4] = v31;
          v37 = [v36 actionWithTitle:localizedName image:v35 identifier:0 handler:v97];
          identifier = [displayMode identifier];
          identifier2 = [v31 identifier];
          LODWORD(v31) = [identifier isEqualToString:identifier2];

          [v37 setState:v31];
          [v89 addObject:v37];

          objc_destroyWeak(&v98);
        }

        v28 = [obj countByEnumeratingWithState:&v99 objects:v114 count:16];
      }

      while (v28);
    }

    supportedSortOrders = [MEMORY[0x1E699A418] supportedSortOrders];
    v87 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sortOrder = [v81 sortOrder];
    isCurrentSortOrderAscending = [v81 isCurrentSortOrderAscending];
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v83 = supportedSortOrders;
    v42 = [v83 countByEnumeratingWithState:&v93 objects:v113 count:16];
    if (v42)
    {
      v85 = *v94;
      do
      {
        for (j = 0; j != v42; ++j)
        {
          if (*v94 != v85)
          {
            objc_enumerationMutation(v83);
          }

          v44 = *(*(&v93 + 1) + 8 * j);
          localizedName2 = [v44 localizedName];
          identifier3 = [sortOrder identifier];
          identifier4 = [v44 identifier];
          v48 = [identifier3 isEqualToString:identifier4];

          v50 = &stru_1F3D472A8;
          if (v48)
          {
            v51 = SBHBundle(v49);
            if (isCurrentSortOrderAscending)
            {
              [v51 localizedStringForKey:@"FILE_STACK_CONFIGURATION_CONTEXT_MENU_SORT_ASCENDING_SUBTITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
            }

            else
            {
              [v51 localizedStringForKey:@"FILE_STACK_CONFIGURATION_CONTEXT_MENU_SORT_DESCENDING_SUBTITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
            }
            v50 = ;
          }

          v52 = MEMORY[0x1E69DCAB8];
          symbolName2 = [v44 symbolName];
          v54 = [v52 _systemImageNamed:symbolName2];

          v55 = MEMORY[0x1E69DC628];
          v90[0] = MEMORY[0x1E69E9820];
          v90[1] = 3221225472;
          v90[2] = __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_2_65;
          v90[3] = &unk_1E808F448;
          objc_copyWeak(&v91, &location);
          v90[4] = v44;
          v92 = isCurrentSortOrderAscending;
          v56 = [v55 actionWithTitle:localizedName2 image:v54 identifier:0 handler:v90];
          [v56 setState:v48];
          [v56 setSubtitle:v50];
          [v87 addObject:v56];

          objc_destroyWeak(&v91);
        }

        v42 = [v83 countByEnumeratingWithState:&v93 objects:v113 count:16];
      }

      while (v42);
    }

    v57 = [v87 count];
    if (v57)
    {
      v58 = MEMORY[0x1E69DCC60];
      v59 = SBHBundle(v57);
      v60 = [v59 localizedStringForKey:@"FILE_STACK_CONFIGURATION_CONTEXT_MENU_SORT_ORDER_SECTION_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      v61 = [v58 menuWithTitle:v60 image:0 identifier:0 options:1 children:v87];

      [v82 addObject:v61];
    }

    v62 = [v89 count];
    if (v62)
    {
      v63 = MEMORY[0x1E69DCC60];
      v64 = SBHBundle(v62);
      v65 = [v64 localizedStringForKey:@"FILE_STACK_CONFIGURATION_CONTEXT_MENU_DISPLAY_MODE_SECTION_TITLE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
      v66 = [v63 menuWithTitle:v65 image:0 identifier:0 options:1 children:v89];

      [v82 addObject:v66];
    }

    v67 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"gearshape"];
    v68 = MEMORY[0x1E69DCC60];
    v69 = SBHBundle(v67);
    v70 = [v69 localizedStringForKey:@"OPTIONS" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    v71 = [v68 menuWithTitle:v70 image:v67 identifier:0 options:32 children:v79];

    [v82 addObject:v71];
    if ([v78 count])
    {
      v72 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F3D472A8 image:0 identifier:0 options:1 children:v78];
      [v82 addObject:v72];
    }

    objc_destroyWeak(&v105);
    objc_destroyWeak(&v104);

    objc_destroyWeak(&v108);
    objc_destroyWeak(&v107);

    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    v82 = 0;
  }

  return v82;
}

void __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained url];
    v4 = v3;
    if (v3)
    {
      [v3 startAccessingSecurityScopedResource];
      v5 = v4;
      FPExtendBookmarkForDocumentURL();
    }
  }
}

void __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = SBLogIcon(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_2_cold_1(a1, a3, v5);
    }
  }

  else
  {
    v5 = [MEMORY[0x1E6963608] defaultWorkspace];
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *MEMORY[0x1E69635A0];
    v15[0] = *MEMORY[0x1E6963568];
    v15[1] = v9;
    v16[0] = a2;
    v16[1] = MEMORY[0x1E695E118];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v11 = [v5 operationToOpenResource:v7 usingApplication:v8 uniqueDocumentIdentifier:0 userInfo:v10 delegate:0];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_20;
    v12[3] = &unk_1E80897D8;
    v14 = *(a1 + 48);
    v13 = *(a1 + 32);
    [v11 setCompletionBlock:v12];
    [v11 start];
  }
}

id *__98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_20(id *result)
{
  if (*(result + 40) == 1)
  {
    return [result[4] stopAccessingSecurityScopedResource];
  }

  return result;
}

void __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_2_30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = objc_loadWeakRetained((a1 + 40));
    if (v3)
    {
      v4 = [v5 delegate];
      if (objc_opt_respondsToSelector())
      {
        [v4 requestDeleteFileStackIcon:v3];
      }
    }

    WeakRetained = v5;
  }
}

void __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_3(uint64_t a1)
{
  v14[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    if (v3)
    {
      v4 = [WeakRetained url];
      v5 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v4 resolvingAgainstBaseURL:0];
      v6 = [MEMORY[0x1E696AF60] queryItemWithName:@"reveal" value:@"true"];
      v7 = [MEMORY[0x1E696AF60] queryItemWithName:@"showcontents" value:@"false"];
      [v5 setScheme:@"shareddocuments"];
      v14[0] = v6;
      v14[1] = v7;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
      [v5 setQueryItems:v8];

      v9 = [v5 URL];
      v10 = dispatch_get_global_queue(25, 0);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_4;
      v12[3] = &unk_1E8088C90;
      v13 = v9;
      v11 = v9;
      dispatch_async(v10, v12);
    }
  }
}

void __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  v3 = *(a1 + 32);
  v6 = 0;
  [v2 openSensitiveURL:v3 withOptions:MEMORY[0x1E695E0F8] error:&v6];
  v4 = v6;

  if (v4)
  {
    v5 = SBLogDockFileStack();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_4_cold_1(v4, v5);
    }
  }
}

void __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_58(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setDisplayMode:*(a1 + 32)];
    WeakRetained = v3;
  }
}

void __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_2_65(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = [WeakRetained sortOrder];
    v4 = [v3 identifier];
    v5 = [*(a1 + 32) identifier];
    v6 = [v4 isEqualToString:v5];

    if (v6)
    {
      [v7 setCurrentSortOrderAscending:(*(a1 + 48) & 1) == 0];
    }

    else
    {
      [v7 setSortOrder:*(a1 + 32)];
    }

    WeakRetained = v7;
  }
}

- (SBHIconViewFileStackConfigurationContextMenuProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 136315650;
  v5 = "[SBHIconViewFileStackConfigurationContextMenuProvider contextMenuSectionsForIconView:atLocation:]_block_invoke_2";
  v6 = 2114;
  v7 = v3;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&dword_1BEB18000, log, OS_LOG_TYPE_ERROR, "%s FPExtendBookmarkForDocumentURL: %{public}@, bookmarkError: %{public}@.", &v4, 0x20u);
}

void __98__SBHIconViewFileStackConfigurationContextMenuProvider_contextMenuSectionsForIconView_atLocation___block_invoke_4_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_ERROR, "Failed to handle Show in Files, error: %{public}@", &v2, 0xCu);
}

@end