@interface DOCItemCollectionCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityScrollToVisible;
- (id)_accessibilityItemCollectionViewController;
- (id)_axAttrTitle;
- (id)_axCustomActionsFromUIMenu:(id)menu;
- (id)accessibilityCustomActions;
- (id)accessibilityIdentifier;
- (unint64_t)accessibilityTraits;
@end

@implementation DOCItemCollectionCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UICollectionViewCell" isKindOfClass:@"UICollectionReusableView"];
  [validationsCopy validateClass:@"UICollectionReusableView" hasInstanceMethod:@"_collectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionCell" hasInstanceMethod:@"accessibilityCellManager" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionCellContent" hasInstanceMethod:@"accessibilityItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionCell" isKindOfClass:@"UICollectionViewCell"];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionCell" hasInstanceMethod:@"accessibilityCellManager" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionCell" hasInstanceMethod:@"accessibilityIsRenaming" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionCellContent" hasInstanceMethod:@"accessibilityShouldDim" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionViewController" hasInstanceMethod:@"accessibilityIsRenamingInline" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionViewController" conformsToProtocol:@"UIContextMenuInteractionDelegate"];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionViewController" hasInstanceMethod:@"contextMenuForItemsAt:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCItemCollectionViewController" hasInstanceMethod:@"contextMenuForFolder" withFullSignature:{"@", 0}];
}

- (id)accessibilityIdentifier
{
  v3 = [(DOCItemCollectionCellAccessibility *)self safeValueForKey:@"accessibilityCellManager"];
  v4 = [v3 safeValueForKey:@"accessibilityItem"];
  v5 = __UIAccessibilitySafeClass();

  _axAttrTitle = [(DOCItemCollectionCellAccessibility *)self _axAttrTitle];
  string = [_axAttrTitle string];

  filename = [v5 filename];
  pathExtension = [filename pathExtension];
  if ([v5 folderType] == 1)
  {
    fp_appContainerBundleIdentifier = [v5 fp_appContainerBundleIdentifier];
    v11 = __UIAXStringForVariables();
  }

  else
  {
    v11 = __UIAXStringForVariables();
  }

  return v11;
}

- (id)_axAttrTitle
{
  objc_opt_class();
  v3 = [(DOCItemCollectionCellAccessibility *)self safeValueForKey:@"accessibilityTitleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  attributedText = [v4 attributedText];

  return attributedText;
}

- (id)_axCustomActionsFromUIMenu:(id)menu
{
  v42 = *MEMORY[0x29EDCA608];
  menuCopy = menu;
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v20 = menuCopy;
  obj = [menuCopy safeArrayForKey:@"children"];
  v23 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v23)
  {
    v22 = *v37;
    do
    {
      v5 = 0;
      do
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v5;
        v6 = [*(*(&v36 + 1) + 8 * v5) safeArrayForKey:@"children"];
        v25 = [objc_alloc(MEMORY[0x29EDBA0F0]) initWithKey:@"title" ascending:1];
        [MEMORY[0x29EDB8D80] arrayWithObject:?];
        v24 = v26 = v6;
        v7 = [v6 sortedArrayUsingDescriptors:?];
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v33;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v33 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v31 = 0;
              objc_opt_class();
              v13 = __UIAccessibilityCastAsClass();
              if (v31 == 1)
              {
                abort();
              }

              v14 = v13;
              if (v13)
              {
                title = [v13 title];
                if ([title length] && (objc_msgSend(v4, "containsObject:", title) & 1) == 0)
                {
                  v16 = [AXDocumentCustomAction alloc];
                  v29[0] = MEMORY[0x29EDCA5F8];
                  v29[1] = 3221225472;
                  v29[2] = __65__DOCItemCollectionCellAccessibility__axCustomActionsFromUIMenu___block_invoke;
                  v29[3] = &unk_29F2BB930;
                  v17 = v14;
                  v30 = v17;
                  v18 = [(AXDocumentCustomAction *)v16 initWithName:title actionHandler:v29];
                  [(AXDocumentCustomAction *)v18 setAction:v17];
                  [array addObject:v18];
                  [v4 addObject:title];
                }
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v10);
        }

        v5 = v27 + 1;
      }

      while (v27 + 1 != v23);
      v23 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v23);
  }

  return array;
}

uint64_t __65__DOCItemCollectionCellAccessibility__axCustomActionsFromUIMenu___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  AXPerformSafeBlock();

  return 1;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(DOCItemCollectionCellAccessibility *)self safeValueForKey:@"accessibilityCellManager"];
  v4 = [v3 safeBoolForKey:@"accessibilityShouldDim"];

  if (v4)
  {
    v7.receiver = self;
    v7.super_class = DOCItemCollectionCellAccessibility;
    return *MEMORY[0x29EDC7FA8] | [(DOCItemCollectionCellAccessibility *)&v7 accessibilityTraits];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = DOCItemCollectionCellAccessibility;
    return [(DOCItemCollectionCellAccessibility *)&v6 accessibilityTraits];
  }
}

- (id)accessibilityCustomActions
{
  v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%p-_accessibilityCustomActions", self];
  v4 = MEMORY[0x29EDC7300];
  v5 = [*MEMORY[0x29EDC7300] objectForKeyedSubscript:v3];

  if (v5)
  {
    array = [*v4 objectForKeyedSubscript:v3];
  }

  else if (-[DOCItemCollectionCellAccessibility safeBoolForKey:](self, "safeBoolForKey:", @"accessibilityIsRenaming") & 1) != 0 || (-[DOCItemCollectionCellAccessibility safeValueForKey:](self, "safeValueForKey:", @"_collectionView"), v7 = objc_claimAutoreleasedReturnValue(), [v7 _accessibilityViewController], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "safeBoolForKey:", @"accessibilityIsRenamingInline"), v8, v7, (v9))
  {
    array = MEMORY[0x29EDB8E90];
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy_;
    v16 = __Block_byref_object_dispose_;
    v17 = 0;
    AXPerformSafeBlock();
    if (v13[5])
    {
      array = [MEMORY[0x29EDB8DE8] array];
      v10 = [(DOCItemCollectionCellAccessibility *)self _axCustomActionsFromUIMenu:v13[5]];
      [array addObjectsFromArray:v10];

      [*v4 setObject:array forKeyedSubscript:v3];
    }

    else
    {
      array = MEMORY[0x29EDB8E90];
    }

    _Block_object_dispose(&v12, 8);
  }

  return array;
}

void __64__DOCItemCollectionCellAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1, uint64_t a2)
{
  v19[1] = *MEMORY[0x29EDCA608];
  v3 = [*(a1 + 32) _accessibilityAncestorIsKindOf:objc_opt_class()];
  if (v3)
  {
    LOBYTE(v13) = 0;
    objc_opt_class();
    v4 = __UIAccessibilityCastAsClass();
    v5 = [*(a1 + 32) _accessibilityItemCollectionViewController];
    if (objc_opt_respondsToSelector())
    {
      v6 = [v4 _accessibilityIndexPath];
      v19[0] = v6;
      v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v19 count:1];

      v13 = 0;
      v14 = &v13;
      v15 = 0x3032000000;
      v16 = __Block_byref_object_copy_;
      v17 = __Block_byref_object_dispose_;
      v18 = 0;
      v11 = v5;
      v12 = v7;
      AXPerformSafeBlock();
      v8 = v14[5];

      _Block_object_dispose(&v13, 8);
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }
  }
}

uint64_t __64__DOCItemCollectionCellAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) contextMenuForItemsAt:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

- (id)_accessibilityItemCollectionViewController
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 _accessibilityFindViewAncestor:&__block_literal_global startWithSelf:1];
  _accessibilityViewController = [v3 _accessibilityViewController];

  return _accessibilityViewController;
}

uint64_t __80__DOCItemCollectionCellAccessibility__accessibilityItemCollectionViewController__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  NSClassFromString(&cfstr_Documentmanage_1.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)accessibilityScrollToVisible
{
  v9 = 0;
  objc_opt_class();
  v3 = [(DOCItemCollectionCellAccessibility *)self safeValueForKey:@"_collectionView"];
  v4 = __UIAccessibilityCastAsClass();

  delegate = [v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate scrollViewWillBeginDragging:v4];
  }

  v8.receiver = self;
  v8.super_class = DOCItemCollectionCellAccessibility;
  accessibilityScrollToVisible = [(DOCItemCollectionCellAccessibility *)&v8 accessibilityScrollToVisible];

  return accessibilityScrollToVisible;
}

@end