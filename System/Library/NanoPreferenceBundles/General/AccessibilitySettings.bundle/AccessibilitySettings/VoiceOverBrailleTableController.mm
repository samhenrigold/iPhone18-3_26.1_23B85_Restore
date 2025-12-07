@interface VoiceOverBrailleTableController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (BRLTTableEnumerator)tableEnumerator;
- (VoiceOverBrailleTableController)init;
- (id)_addNewTableSpecifier;
- (id)_defaultTable;
- (id)_tableSpecifiers;
- (id)preCustomBrailleSpecifiers;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)_addLanguage:(id)language;
- (void)_donePressed;
- (void)_editPressed:(id)pressed;
- (void)_manageEditButton;
- (void)_removeTableSpecifier:(id)specifier;
- (void)reloadSpecifiers;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation VoiceOverBrailleTableController

- (VoiceOverBrailleTableController)init
{
  v4.receiver = self;
  v4.super_class = VoiceOverBrailleTableController;
  v2 = [(AccessibilityBridgeBaseController *)&v4 init];
  [(VoiceOverBrailleTableController *)v2 _manageEditButton];
  return v2;
}

- (void)reloadSpecifiers
{
  v3.receiver = self;
  v3.super_class = VoiceOverBrailleTableController;
  [(VoiceOverBrailleTableController *)&v3 reloadSpecifiers];
  [(VoiceOverBrailleTableController *)self _manageEditButton];
}

- (id)specifiers
{
  if (VOSCustomBrailleEnabled())
  {
    v3 = *MEMORY[0x277D3FC48];
    v4 = *(&self->super.super.super.super.super.super.isa + v3);
    if (!v4)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v6 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"LanguagesGroup"];
      [v5 addObject:v6];
      _tableSpecifiers = [(VoiceOverBrailleTableController *)self _tableSpecifiers];
      [v5 addObjectsFromArray:_tableSpecifiers];

      _addNewTableSpecifier = [(VoiceOverBrailleTableController *)self _addNewTableSpecifier];
      [v5 addObject:_addNewTableSpecifier];

      v9 = *(&self->super.super.super.super.super.super.isa + v3);
      *(&self->super.super.super.super.super.super.isa + v3) = v5;

      v4 = *(&self->super.super.super.super.super.super.isa + v3);
    }

    preCustomBrailleSpecifiers = v4;
  }

  else
  {
    preCustomBrailleSpecifiers = [(VoiceOverBrailleTableController *)self preCustomBrailleSpecifiers];
  }

  return preCustomBrailleSpecifiers;
}

- (void)viewWillAppear:(BOOL)appear
{
  v24[3] = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = VoiceOverBrailleTableController;
  [(AccessibilityBridgeBaseController *)&v23 viewWillAppear:appear];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL = [v3 bundleURL];
  v7 = [v4 initWithKey:@"BRAILLE_TABLES" table:@"VoiceOverSettings" locale:currentLocale bundleURL:bundleURL];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL2 = [v3 bundleURL];
  v11 = [v8 initWithKey:@"BRAILLE" table:@"VoiceOverSettings" locale:currentLocale2 bundleURL:bundleURL2];

  v12 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale3 = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL3 = [v3 bundleURL];
  v15 = [v12 initWithKey:@"VOICEOVER_TITLE" table:@"AccessibilitySettings" locale:currentLocale3 bundleURL:bundleURL3];

  v16 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale4 = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL4 = [v3 bundleURL];
  v19 = [v16 initWithKey:@"ACCESSIBILITY_TITLE" table:@"AccessibilitySettings" locale:currentLocale4 bundleURL:bundleURL4];

  v20 = MEMORY[0x277CF3470];
  v24[0] = v19;
  v24[1] = v15;
  v24[2] = v11;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
  v22 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=ACCESSIBILITY_ID&path=VOICEOVER_ID/BrailleRow/tableIdentifier"];
  [v20 emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"ACCESSIBILITY_ID" title:v7 localizedNavigationComponents:v21 deepLink:v22];
}

- (id)preCustomBrailleSpecifiers
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v19 = *MEMORY[0x277D3FC48];
    array = [MEMORY[0x277CBEB18] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = [&unk_284E7E778 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      do
      {
        v8 = 0;
        do
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(&unk_284E7E778);
          }

          v9 = *(*(&v20 + 1) + 8 * v8);
          v10 = [objc_alloc(MEMORY[0x277CF3348]) initWithIdentifier:v9];
          localizedName = [v10 localizedName];
          v12 = [v9 isEqualToString:@"com.apple.scrod.braille.table.duxbury.eng-xueb"];
          v13 = @"ENGLISH_UNIFIED_BRAILLE_TABLE";
          if ((v12 & 1) != 0 || (v14 = [v9 isEqualToString:@"com.apple.scrod.braille.table.duxbury.eng-xna"], v13 = @"ENGLISH_US_BRAILLE_TABLE", v14))
          {
            v15 = settingsLocString(v13, @"VoiceOverSettings");

            localizedName = v15;
          }

          v16 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:localizedName target:self set:0 get:0 detail:0 cell:3 edit:0];
          [v16 setProperty:v9 forKey:@"tableIdentifier"];
          [array addObject:v16];

          ++v8;
        }

        while (v6 != v8);
        v6 = [&unk_284E7E778 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v6);
    }

    v17 = *(&self->super.super.super.super.super.super.isa + v19);
    *(&self->super.super.super.super.super.super.isa + v19) = array;

    v3 = *(&self->super.super.super.super.super.super.isa + v19);
  }

  return v3;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = VoiceOverBrailleTableController;
  v4 = [(VoiceOverBrailleTableController *)&v7 tableView:view cellForRowAtIndexPath:path];
  textLabel = [v4 textLabel];
  [textLabel setNumberOfLines:0];

  return v4;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  v21 = cellCopy;
  specifier = [v21 specifier];
  if (VOSCustomBrailleEnabled())
  {
    v10 = [specifier propertyForKey:@"IsLanguage"];
    bOOLValue = [v10 BOOLValue];

    if ([*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) isEditing])
    {
      if (bOOLValue)
      {
        [v21 setUserInteractionEnabled:1];
        [v21 setCellEnabled:1];
        v12 = v21;
        v13 = 1;
LABEL_11:
        [v12 setShowsReorderControl:v13];
        goto LABEL_15;
      }

      [v21 setUserInteractionEnabled:0];
      [v21 setCellEnabled:0];
      titleLabel = [v21 titleLabel];
      v19 = titleLabel;
      v20 = 0;
    }

    else
    {
      [v21 setUserInteractionEnabled:1];
      [v21 setCellEnabled:1];
      if (bOOLValue)
      {
        v12 = v21;
        v13 = 0;
        goto LABEL_11;
      }

      titleLabel = [v21 titleLabel];
      v19 = titleLabel;
      v20 = 1;
    }

    [titleLabel setEnabled:v20];
  }

  else
  {
    v14 = [specifier propertyForKey:@"tableIdentifier"];
    accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
    v16 = [accessibilityDomainAccessor objectForKey:*MEMORY[0x277CE8010]];

    if (v16 || [pathCopy row])
    {
      v17 = [v14 isEqual:v16];
    }

    else
    {
      v17 = 1;
    }

    [v21 setChecked:v17];
  }

LABEL_15:
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v4 = [(VoiceOverBrailleTableController *)self specifierAtIndex:[(VoiceOverBrailleTableController *)self indexForIndexPath:path]];
  v5 = [v4 propertyForKey:@"IsLanguage"];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v4 = [(VoiceOverBrailleTableController *)self specifierAtIndex:[(VoiceOverBrailleTableController *)self indexForIndexPath:path]];
  v5 = [v4 propertyForKey:@"IsLanguage"];
  if ([v5 BOOLValue])
  {
    identifier = [v4 identifier];
    v7 = ~[identifier isEqualToString:@"DefaultLanguage"];

    v8 = v7 & 1;
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path
{
  v4 = [(VoiceOverBrailleTableController *)self specifierAtIndex:[(VoiceOverBrailleTableController *)self indexForIndexPath:path]];
  v5 = [v4 propertyForKey:@"IsLanguage"];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  v9 = [view cellForRowAtIndexPath:indexPathCopy];
  specifier = [v9 specifier];

  v11 = [specifier propertyForKey:@"IsLanguage"];
  bOOLValue = [v11 BOOLValue];

  if (bOOLValue)
  {
    v13 = indexPathCopy;
  }

  else
  {
    v13 = pathCopy;
  }

  v14 = v13;

  return v13;
}

- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path
{
  v4 = [(AccessibilityBridgeBaseController *)self specifierForIndexPath:path];
  v5 = [v4 propertyForKey:@"IsLanguage"];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  v54 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  indexPathCopy = indexPath;
  if ([pathCopy isEqual:indexPathCopy])
  {
    goto LABEL_26;
  }

  v11 = [viewCopy cellForRowAtIndexPath:pathCopy];
  specifier = [v11 specifier];

  v51 = [specifier propertyForKey:@"Table"];
  v47 = specifier;
  identifier = [specifier identifier];
  v14 = [identifier isEqualToString:@"DefaultLanguage"];

  v15 = [viewCopy cellForRowAtIndexPath:indexPathCopy];
  specifier2 = [v15 specifier];

  v48 = [specifier2 propertyForKey:@"Table"];
  v46 = specifier2;
  identifier2 = [specifier2 identifier];
  v18 = [identifier2 isEqualToString:@"DefaultLanguage"];

  selfCopy = self;
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v42 = *MEMORY[0x277CE7FF0];
  v20 = [accessibilityDomainAccessor objectForKey:?];

  v21 = [v20 mutableCopy];
  if (![v21 count])
  {
    goto LABEL_25;
  }

  v43 = v20;
  v44 = indexPathCopy;
  v40 = pathCopy;
  v41 = viewCopy;
  v22 = 0;
  v49 = 0x7FFFFFFFFFFFFFFFLL;
  v50 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v23 = [v21 objectAtIndexedSubscript:{v22, v40, v41}];
    v24 = v23;
    if (v14)
    {
      pathCopy = [v23 objectForKeyedSubscript:@"Default"];
      if ([pathCopy BOOLValue])
      {

LABEL_13:
        v49 = v22;
        goto LABEL_19;
      }
    }

    v25 = [v24 objectForKeyedSubscript:@"RotorItem"];
    identifier3 = [v51 identifier];
    v27 = [v25 isEqualToString:identifier3];

    if (v14)
    {

      if (v27)
      {
        goto LABEL_13;
      }
    }

    else if (v27)
    {
      goto LABEL_13;
    }

    if (v18)
    {
      v20 = [v24 objectForKeyedSubscript:@"Default"];
      if ([v20 BOOLValue])
      {
        v28 = 1;
LABEL_15:

        goto LABEL_16;
      }
    }

    v29 = [v24 objectForKeyedSubscript:@"RotorItem"];
    identifier4 = [v48 identifier];
    v28 = [v29 isEqualToString:identifier4];

    if (v18)
    {
      goto LABEL_15;
    }

LABEL_16:
    v31 = v50;
    if (v28)
    {
      v31 = v22;
    }

    v50 = v31;
LABEL_19:

    ++v22;
  }

  while (v22 < [v21 count]);
  pathCopy = v40;
  viewCopy = v41;
  v20 = v43;
  indexPathCopy = v44;
  if (v49 != 0x7FFFFFFFFFFFFFFFLL && v50 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v32 = [v21 objectAtIndexedSubscript:v49];
    [v21 removeObjectAtIndex:v49];
    [v21 insertObject:v32 atIndex:v50];
    [(AccessibilityBridgeBaseController *)selfCopy setGizmoAccessibilityPref:v21 forKey:v42];
    v33 = BRLLogTranslation();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [v21 debugDescription];
      *buf = 138412290;
      v53 = v34;
      _os_log_impl(&dword_23BCCF000, v33, OS_LOG_TYPE_DEFAULT, "Reordered braille languages settings %@", buf, 0xCu);
    }

    v35 = *MEMORY[0x277D3FC48];
    v36 = [*(&selfCopy->super.super.super.super.super.super.isa + v35) mutableCopy];
    v37 = [(VoiceOverBrailleTableController *)selfCopy indexOfSpecifier:v47];
    v38 = [v36 objectAtIndexedSubscript:v37];
    [v36 removeObjectAtIndex:v37];
    [v36 insertObject:v38 atIndex:v50 - v49 + v37];
    v39 = *(&selfCopy->super.super.super.super.super.super.isa + v35);
    *(&selfCopy->super.super.super.super.super.super.isa + v35) = v36;

    v20 = v43;
    indexPathCopy = v44;
  }

LABEL_25:

LABEL_26:
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v39 = *MEMORY[0x277D85DE8];
  v7 = [(VoiceOverBrailleTableController *)self specifierAtIndex:[(VoiceOverBrailleTableController *)self indexForIndexPath:path]];
  v8 = [v7 propertyForKey:@"IsLanguage"];
  bOOLValue = [v8 BOOLValue];

  if (style == 1 && bOOLValue)
  {
    accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
    v34 = *MEMORY[0x277CE7FF0];
    v11 = [accessibilityDomainAccessor objectForKey:?];

    v35 = v11;
    v12 = [v11 mutableCopy];
    v13 = [v7 propertyForKey:@"Table"];
    if ([v12 count])
    {
      v14 = 0;
      while (1)
      {
        v15 = [v12 objectAtIndexedSubscript:v14];
        v16 = [v15 objectForKeyedSubscript:@"RotorItem"];
        identifier = [v13 identifier];
        v18 = [v16 isEqualToString:identifier];

        if (v18)
        {
          break;
        }

        if ([v12 count] <= ++v14)
        {
          goto LABEL_9;
        }
      }

      [v12 removeObjectAtIndex:v14];
    }

LABEL_9:
    v19 = BRLLogTranslation();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v12;
      _os_log_impl(&dword_23BCCF000, v19, OS_LOG_TYPE_DEFAULT, "Setting new items after removing: %@", buf, 0xCu);
    }

    [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v12 forKey:v34];
    if (VOSCustomBrailleEnabled())
    {
      accessibilityDomainAccessor2 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
      v21 = *MEMORY[0x277CE8000];
      v22 = [accessibilityDomainAccessor2 objectForKey:*MEMORY[0x277CE8000]];

      identifier2 = [v13 identifier];
      v24 = [identifier2 isEqualToString:v22];

      if (v24)
      {
        _defaultTable = [(VoiceOverBrailleTableController *)self _defaultTable];
        identifier3 = [_defaultTable identifier];
        [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:identifier3 forKey:v21];
      }

      accessibilityDomainAccessor3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
      v28 = *MEMORY[0x277CE7FE8];
      v29 = [accessibilityDomainAccessor3 objectForKey:*MEMORY[0x277CE7FE8]];

      identifier4 = [v13 identifier];
      v31 = [identifier4 isEqualToString:v29];

      if (v31)
      {
        _defaultTable2 = [(VoiceOverBrailleTableController *)self _defaultTable];
        identifier5 = [_defaultTable2 identifier];
        [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:identifier5 forKey:v28];
      }
    }

    [(VoiceOverBrailleTableController *)self removeSpecifier:v7 animated:1];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__VoiceOverBrailleTableController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke;
  block[3] = &unk_278B90C98;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __82__VoiceOverBrailleTableController_tableView_commitEditingStyle_forRowAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessibilityDomainAccessor];
  v3 = [v2 objectForKey:*MEMORY[0x277CE7FF0]];

  if ([v3 count] <= 1)
  {
    [*(a1 + 32) setEditing:0 animated:1];
    [*(*(a1 + 32) + *MEMORY[0x277D3FC60]) reloadData];
    [*(a1 + 32) _manageEditButton];
  }
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  v4 = [(VoiceOverBrailleTableController *)self specifierAtIndex:[(VoiceOverBrailleTableController *)self indexForIndexPath:path]];
  identifier = [v4 identifier];
  v6 = [identifier isEqualToString:@"DefaultLanguage"];

  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277D75AD8]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = VoiceOverBrailleTableController;
  [(VoiceOverBrailleTableController *)&v11 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  if ((VOSCustomBrailleEnabled() & 1) == 0)
  {
    v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
    specifier = [v8 specifier];

    v10 = [specifier propertyForKey:@"tableIdentifier"];
    [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v10 forKey:*MEMORY[0x277CE8010]];
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v7 = *MEMORY[0x277D3FC60];
  [*(&self->super.super.super.super.super.super.isa + v7) beginUpdates];
  v8.receiver = self;
  v8.super_class = VoiceOverBrailleTableController;
  [(VoiceOverBrailleTableController *)&v8 setEditing:editingCopy animated:animatedCopy];
  [*(&self->super.super.super.super.super.super.isa + v7) endUpdates];
  [*(&self->super.super.super.super.super.super.isa + v7) setEditing:editingCopy animated:animatedCopy];
  [*(&self->super.super.super.super.super.super.isa + v7) reloadData];
}

- (BRLTTableEnumerator)tableEnumerator
{
  tableEnumerator = self->_tableEnumerator;
  if (!tableEnumerator)
  {
    tableEnumeratorWithSystemBundlePath = [MEMORY[0x277CF3358] tableEnumeratorWithSystemBundlePath];
    v5 = self->_tableEnumerator;
    self->_tableEnumerator = tableEnumeratorWithSystemBundlePath;

    tableEnumerator = self->_tableEnumerator;
  }

  return tableEnumerator;
}

- (id)_tableSpecifiers
{
  v55 = *MEMORY[0x277D85DE8];
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v4 = [accessibilityDomainAccessor objectForKey:*MEMORY[0x277CE7FF0]];

  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  mEMORY[0x277CE7DA0] = [MEMORY[0x277CE7DA0] sharedInstance];
  userLocale = [mEMORY[0x277CE7DA0] userLocale];

  if ([v4 count])
  {
    v42 = userLocale;
    v43 = v4;
    v44 = v5;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v50;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v50 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v49 + 1) + 8 * i) objectForKeyedSubscript:@"Default"];
          bOOLValue = [v13 BOOLValue];

          if (bOOLValue)
          {
            v15 = VOSBrailleTableForRotorItem();
            v16 = MEMORY[0x277D3FAD8];
            localizedNameWithService = [v15 localizedNameWithService];
            v18 = [v16 preferenceSpecifierNamed:localizedNameWithService target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

            [v18 setProperty:MEMORY[0x277CBEC38] forKey:@"IsLanguage"];
            [v18 setProperty:v15 forKey:@"Table"];
            [v18 setIdentifier:@"DefaultLanguage"];
            mEMORY[0x277CE7DA0]2 = [MEMORY[0x277CE7DA0] sharedInstance];
            userLocale2 = [mEMORY[0x277CE7DA0]2 userLocale];

            [v18 setProperty:userLocale2 forKey:@"Locale"];
            tableEnumerator = [(VoiceOverBrailleTableController *)self tableEnumerator];
            [v18 setProperty:tableEnumerator forKey:@"TableEnumerator"];

            [v5 addObject:v18];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v10);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v22 = v8;
    v23 = [v22 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v46;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v46 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v45 + 1) + 8 * j) objectForKeyedSubscript:@"Default"];
          bOOLValue2 = [v27 BOOLValue];

          if ((bOOLValue2 & 1) == 0)
          {
            v29 = VOSBrailleTableForRotorItem();
            if (VOSCustomBrailleEnabled())
            {
              replacements = [v29 replacements];
              v31 = [replacements count];

              if (!v31)
              {
LABEL_21:
                v32 = MEMORY[0x277D3FAD8];
                localizedNameWithService2 = [v29 localizedNameWithService];
                v34 = [v32 preferenceSpecifierNamed:localizedNameWithService2 target:self set:0 get:0 detail:0 cell:3 edit:0];

                [v34 setProperty:MEMORY[0x277CBEC38] forKey:@"IsLanguage"];
                [v34 setProperty:v29 forKey:@"Table"];
                [v44 addObject:v34];
              }
            }

            else if (([v29 isCustomBrailleTable] & 1) == 0)
            {
              goto LABEL_21;
            }

            continue;
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v24);
    }

    v4 = v43;
    v5 = v44;
    userLocale = v42;
  }

  else
  {
    tableEnumerator2 = [(VoiceOverBrailleTableController *)self tableEnumerator];
    v36 = [objc_opt_class() defaultTableForLocale:userLocale];

    v37 = MEMORY[0x277D3FAD8];
    localizedNameWithService3 = [v36 localizedNameWithService];
    v39 = [v37 preferenceSpecifierNamed:localizedNameWithService3 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

    [v39 setIdentifier:@"DefaultLanguage"];
    [v39 setProperty:MEMORY[0x277CBEC38] forKey:@"IsLanguage"];
    [v39 setProperty:userLocale forKey:@"Locale"];
    tableEnumerator3 = [(VoiceOverBrailleTableController *)self tableEnumerator];
    [v39 setProperty:tableEnumerator3 forKey:@"TableEnumerator"];

    [v39 setProperty:v36 forKey:@"Table"];
    [v5 addObject:v39];
  }

  return v5;
}

- (id)_addNewTableSpecifier
{
  v3 = settingsLocString(@"ADD_NEW_BRAILLE_LANGUAGE_BUTTON", @"VoiceOverSettings");
  v4 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v3 target:self set:0 get:0 detail:0 cell:13 edit:0];
  [v4 setButtonAction:sel__addLanguage_];
  tableEnumerator = [(VoiceOverBrailleTableController *)self tableEnumerator];
  [v4 setProperty:tableEnumerator forKey:@"TableEnumerator"];

  v6 = MEMORY[0x277CBEC38];
  [v4 setProperty:MEMORY[0x277CBEC38] forKey:@"IsAddingNewLanguage"];
  [v4 setProperty:v6 forKey:@"IsNewLanguage"];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__VoiceOverBrailleTableController__addNewTableSpecifier__block_invoke;
  aBlock[3] = &unk_278B90C98;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  [v4 setProperty:v7 forKey:@"DismissBlock"];

  [v4 setProperty:@"ADD_NEW_BRAILLE_LANGUAGE" forKey:*MEMORY[0x277D3FFB8]];

  return v4;
}

uint64_t __56__VoiceOverBrailleTableController__addNewTableSpecifier__block_invoke(uint64_t a1)
{
  [*(a1 + 32) reloadSpecifiers];
  v2 = *(a1 + 32);

  return [v2 _manageEditButton];
}

- (void)_addLanguage:(id)language
{
  languageCopy = language;
  v6 = objc_alloc_init(VoiceOverBrailleAllLanguagesController);
  [(VoiceOverBrailleAllLanguagesController *)v6 setModalPresentationStyle:2];
  [(VoiceOverBrailleAllLanguagesController *)v6 setSpecifier:languageCopy];

  v5 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v6];
  [(VoiceOverBrailleTableController *)self presentViewController:v5 withTransition:8 completion:0];
}

- (void)_removeTableSpecifier:(id)specifier
{
  v34 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v6 = *MEMORY[0x277CE7FF0];
  v7 = [accessibilityDomainAccessor objectForKey:*MEMORY[0x277CE7FF0]];

  v30 = v7;
  v8 = [v7 mutableCopy];
  v31 = specifierCopy;
  v9 = [specifierCopy propertyForKey:@"Table"];
  if ([v8 count])
  {
    v10 = 0;
    while (1)
    {
      v11 = [v8 objectAtIndexedSubscript:v10];
      v12 = [v11 objectForKeyedSubscript:@"RotorItem"];
      identifier = [v9 identifier];
      v14 = [v12 isEqualToString:identifier];

      if (v14)
      {
        break;
      }

      if ([v8 count] <= ++v10)
      {
        goto LABEL_7;
      }
    }

    [v8 removeObjectAtIndex:v10];
  }

LABEL_7:
  v15 = BRLLogTranslation();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v8;
    _os_log_impl(&dword_23BCCF000, v15, OS_LOG_TYPE_DEFAULT, "Setting new items after removing: %@", buf, 0xCu);
  }

  [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v8 forKey:v6];
  if (VOSCustomBrailleEnabled())
  {
    accessibilityDomainAccessor2 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
    v17 = *MEMORY[0x277CE8000];
    v18 = [accessibilityDomainAccessor2 objectForKey:*MEMORY[0x277CE8000]];

    identifier2 = [v9 identifier];
    v20 = [identifier2 isEqualToString:v18];

    if (v20)
    {
      _defaultTable = [(VoiceOverBrailleTableController *)self _defaultTable];
      identifier3 = [_defaultTable identifier];
      [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:identifier3 forKey:v17];
    }

    accessibilityDomainAccessor3 = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
    v24 = *MEMORY[0x277CE7FE8];
    v25 = [accessibilityDomainAccessor3 objectForKey:*MEMORY[0x277CE7FE8]];

    identifier4 = [v9 identifier];
    v27 = [identifier4 isEqualToString:v25];

    if (v27)
    {
      _defaultTable2 = [(VoiceOverBrailleTableController *)self _defaultTable];
      identifier5 = [_defaultTable2 identifier];
      [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:identifier5 forKey:v24];
    }
  }

  [(VoiceOverBrailleTableController *)self reloadSpecifiers];
}

- (id)_defaultTable
{
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  v4 = [accessibilityDomainAccessor objectForKey:*MEMORY[0x277CE7FF0]];

  v5 = [v4 indexOfObjectPassingTest:&__block_literal_global_6];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    mEMORY[0x277CE7DA0] = [MEMORY[0x277CE7DA0] sharedInstance];
    userLocale = [mEMORY[0x277CE7DA0] userLocale];

    tableEnumerator = [(VoiceOverBrailleTableController *)self tableEnumerator];
    v9 = [objc_opt_class() defaultTableForLocale:userLocale];
  }

  else
  {
    userLocale = [v4 objectAtIndexedSubscript:v5];
    v9 = VOSBrailleTableForRotorItem();
  }

  return v9;
}

uint64_t __48__VoiceOverBrailleTableController__defaultTable__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = [a2 objectForKeyedSubscript:@"Default"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    *a4 = 1;
  }

  return v6;
}

- (void)_manageEditButton
{
  _tableSpecifiers = [(VoiceOverBrailleTableController *)self _tableSpecifiers];
  v4 = [_tableSpecifiers count];

  if (v4 < 2)
  {
    navigationItem = [(VoiceOverBrailleTableController *)self navigationItem];
    [navigationItem setRightBarButtonItem:0];

    [(VoiceOverBrailleTableController *)self setEditing:0 animated:1];
  }

  else if (([*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC60]) isEditing] & 1) == 0)
  {
    v7 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:2 target:self action:sel__editPressed_];
    navigationItem2 = [(VoiceOverBrailleTableController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:v7];
  }
}

- (void)_editPressed:(id)pressed
{
  [(VoiceOverBrailleTableController *)self setEditing:1 animated:1];
  table = [(VoiceOverBrailleTableController *)self table];
  [table reloadData];

  v6 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel__donePressed];
  navigationItem = [(VoiceOverBrailleTableController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v6];
}

- (void)_donePressed
{
  [(VoiceOverBrailleTableController *)self setEditing:0 animated:1];
  table = [(VoiceOverBrailleTableController *)self table];
  [table reloadData];

  [(VoiceOverBrailleTableController *)self _manageEditButton];
}

@end