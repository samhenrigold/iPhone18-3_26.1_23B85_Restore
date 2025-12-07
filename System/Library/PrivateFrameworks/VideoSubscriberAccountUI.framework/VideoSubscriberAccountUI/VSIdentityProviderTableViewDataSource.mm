@interface VSIdentityProviderTableViewDataSource
- (BOOL)hasStorefrontOrIdentityProviderAtIndexPath:(id)path;
- (VSIdentityProviderTableViewDataSource)init;
- (id)_additionalProvidersRowTitle;
- (id)_cellReuseIdentifierForRowAtIndexPath:(id)path;
- (id)_textColorForRowAtIndexPath:(id)path;
- (id)_titleForRowAtIndexPath:(id)path;
- (id)identityProviderForRowAtIndexPath:(id)path;
- (id)preferredIndexPathForIdentityProviderWithName:(id)name;
- (id)sectionIndexTitlesForTableView:(id)view;
- (id)storefrontAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view indexPathForSectionIndexTitle:(id)title atIndex:(int64_t)index;
- (int64_t)_cellStyleForRowAtIndexPath:(id)path;
- (int64_t)_textAlignmentForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_scrollToTableHeaderView;
- (void)setAdditionalProvidersMode:(unint64_t)mode;
- (void)setIdentityProviders:(id)providers;
- (void)setNumberOfLinesForCell:(id)cell atIndexPath:(id)path;
- (void)setTableView:(id)view;
- (void)setTvProviderSupportedStorefronts:(id)storefronts;
@end

@implementation VSIdentityProviderTableViewDataSource

- (VSIdentityProviderTableViewDataSource)init
{
  v10.receiver = self;
  v10.super_class = VSIdentityProviderTableViewDataSource;
  v2 = [(VSIdentityProviderTableViewDataSource *)&v10 init];
  v3 = v2;
  if (v2)
  {
    providerSections = v2->_providerSections;
    v5 = MEMORY[0x277CBEBF8];
    v2->_providerSections = MEMORY[0x277CBEBF8];

    storefrontSections = v3->_storefrontSections;
    v3->_storefrontSections = v5;

    identityProviders = v3->_identityProviders;
    v3->_identityProviders = v5;

    destinationsBySectionIndexTitle = v3->_destinationsBySectionIndexTitle;
    v3->_destinationsBySectionIndexTitle = MEMORY[0x277CBEC10];
  }

  return v3;
}

- (void)setIdentityProviders:(id)providers
{
  v86[1] = *MEMORY[0x277D85DE8];
  providersCopy = providers;
  selfCopy = self;
  objc_storeStrong(&self->_identityProviders, providers);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [providersCopy mutableCopy];
  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"rankForSorting" ascending:1];
  v9 = [MEMORY[0x277CCA9C0] expressionForKeyPath:@"rankForSorting"];
  v54 = [MEMORY[0x277CCA9C0] expressionForConstantValue:0];
  v55 = v9;
  v53 = [MEMORY[0x277CCA918] predicateWithLeftExpression:v9 rightExpression:? modifier:? type:? options:?];
  [v7 filterUsingPredicate:?];
  v56 = v8;
  v86[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:1];
  [v7 sortUsingDescriptors:v10];

  if ([v7 count])
  {
    v11 = objc_alloc_init(VSIdentityProviderSection);
    [(VSIdentityProviderSection *)v11 setIdentityProviders:v7];
    [v6 addObject:v11];
  }

  v12 = VSDefaultLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
    *buf = 138412546;
    v83 = v13;
    v84 = 2112;
    v85 = v7;
    _os_log_impl(&dword_270DD4000, v12, OS_LOG_TYPE_DEFAULT, "Found %@ featured providers: %@", buf, 0x16u);
  }

  v59 = providersCopy;
  v14 = [providersCopy mutableCopy];
  v15 = [v14 count];
  if (v15 < [(VSIdentityProviderTableViewDataSource *)self _minimumProviderCountForIndexes])
  {
    [v14 removeObjectsInArray:v7];
  }

  v57 = v7;
  v58 = v6;
  v52 = [v14 count];
  currentCollation = [MEMORY[0x277D75700] currentCollation];
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  sectionIndexTitles = [currentCollation sectionIndexTitles];
  v19 = [sectionIndexTitles count];

  if (v19)
  {
    v20 = 0;
    do
    {
      v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v17 addObject:v21];

      ++v20;
      sectionIndexTitles2 = [currentCollation sectionIndexTitles];
      v23 = [sectionIndexTitles2 count];
    }

    while (v20 < v23);
  }

  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v24 = v14;
  v25 = [v24 countByEnumeratingWithState:&v75 objects:v81 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v76;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v76 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v75 + 1) + 8 * i);
        v30 = [v17 objectAtIndex:{objc_msgSend(currentCollation, "sectionForObject:collationStringSelector:", v29, sel_nameForSorting)}];
        [v30 addObject:v29];
      }

      v26 = [v24 countByEnumeratingWithState:&v75 objects:v81 count:16];
    }

    while (v26);
  }

  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v32 = v17;
  v33 = [v32 countByEnumeratingWithState:&v71 objects:v80 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v72;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v72 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = [currentCollation sortedArrayFromArray:*(*(&v71 + 1) + 8 * j) collationStringSelector:sel_nameForSorting];
        [v31 addObject:v37];
      }

      v34 = [v32 countByEnumeratingWithState:&v71 objects:v80 count:16];
    }

    while (v34);
  }

  v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v39 = [v58 count];
  sectionIndexTitles3 = [currentCollation sectionIndexTitles];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __62__VSIdentityProviderTableViewDataSource_setIdentityProviders___block_invoke;
  v65[3] = &unk_279E1AA40;
  v41 = currentCollation;
  v66 = v41;
  v42 = v31;
  v67 = v42;
  v69 = v52;
  v70 = v39;
  v43 = v38;
  v68 = v43;
  [sectionIndexTitles3 enumerateObjectsUsingBlock:v65];

  [(VSIdentityProviderTableViewDataSource *)self setDestinationsBySectionIndexTitle:v43];
  v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v45 = v42;
  v46 = [v45 countByEnumeratingWithState:&v61 objects:v79 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v62;
    do
    {
      for (k = 0; k != v47; ++k)
      {
        if (*v62 != v48)
        {
          objc_enumerationMutation(v45);
        }

        [v44 addObjectsFromArray:*(*(&v61 + 1) + 8 * k)];
      }

      v47 = [v45 countByEnumeratingWithState:&v61 objects:v79 count:16];
    }

    while (v47);
  }

  v50 = objc_alloc_init(VSIdentityProviderSection);
  [(VSIdentityProviderSection *)v50 setIdentityProviders:v44];
  [v58 addObject:v50];
  [(VSIdentityProviderTableViewDataSource *)selfCopy setProviderSections:v58];
  tableView = [(VSIdentityProviderTableViewDataSource *)selfCopy tableView];
  [tableView reloadData];
}

void __62__VSIdentityProviderTableViewDataSource_setIdentityProviders___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = [*(a1 + 32) sectionForSectionIndexTitleAtIndex:a3];
  if (v5 < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = v5;
    v7 = 0;
    for (i = 0; i != v6; ++i)
    {
      v9 = [*(a1 + 40) objectAtIndex:i];
      v7 += [v9 count];
    }
  }

  if (v7 >= *(a1 + 56) - 1)
  {
    v10 = *(a1 + 56) - 1;
  }

  else
  {
    v10 = v7;
  }

  v11 = [MEMORY[0x277CCAA70] indexPathForRow:v10 inSection:*(a1 + 64)];
  [*(a1 + 48) setObject:v11 forKey:v12];
}

- (void)setTvProviderSupportedStorefronts:(id)storefronts
{
  v24 = *MEMORY[0x277D85DE8];
  storefrontsCopy = storefronts;
  objc_storeStrong(&self->_tvProviderSupportedStorefronts, storefronts);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = storefrontsCopy;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        if ([v14 isFeatured])
        {
          v15 = v6;
        }

        else
        {
          v15 = v7;
        }

        [v15 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  if ([v6 count])
  {
    v16 = objc_alloc_init(VSStorefrontSection);
    [(VSStorefrontSection *)v16 setStorefronts:v6];
    [v8 addObject:v16];
  }

  v17 = objc_alloc_init(VSStorefrontSection);
  [(VSStorefrontSection *)v17 setStorefronts:v7];
  [v8 addObject:v17];
  [(VSIdentityProviderTableViewDataSource *)self setStorefrontSections:v8];
  tableView = [(VSIdentityProviderTableViewDataSource *)self tableView];
  [tableView reloadData];
}

- (void)setTableView:(id)view
{
  viewCopy = view;
  tableView = self->_tableView;
  if (tableView != viewCopy)
  {
    v7 = viewCopy;
    [(UITableView *)tableView setDataSource:0];
    objc_storeStrong(&self->_tableView, view);
    [(UITableView *)self->_tableView setDataSource:self];
    tableView = [(UITableView *)self->_tableView setSectionIndexMinimumDisplayRowCount:[(VSIdentityProviderTableViewDataSource *)self _minimumProviderCountForIndexes]];
    viewCopy = v7;
  }

  MEMORY[0x2821F96F8](tableView, viewCopy);
}

- (void)setAdditionalProvidersMode:(unint64_t)mode
{
  if (self->_additionalProvidersMode != mode)
  {
    self->_additionalProvidersMode = mode;
    tableView = [(VSIdentityProviderTableViewDataSource *)self tableView];
    [tableView reloadData];

    if (mode - 5 <= 1)
    {
      tableView2 = [(VSIdentityProviderTableViewDataSource *)self tableView];
      [tableView2 vs_scrollToTopAnimated:0];

      tableView3 = [(VSIdentityProviderTableViewDataSource *)self tableView];
      [tableView3 setNeedsFocusUpdate];
    }
  }
}

- (id)identityProviderForRowAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  providerSections = [(VSIdentityProviderTableViewDataSource *)self providerSections];
  if (section >= [providerSections count])
  {
    v10 = 0;
  }

  else
  {
    v7 = [providerSections objectAtIndex:section];
    v8 = [pathCopy row];
    identityProviders = [v7 identityProviders];
    if (v8 >= [identityProviders count])
    {
      v10 = 0;
    }

    else
    {
      v10 = [identityProviders objectAtIndex:v8];
    }
  }

  return v10;
}

- (id)preferredIndexPathForIdentityProviderWithName:(id)name
{
  v35 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [(VSIdentityProviderTableViewDataSource *)self providerSections];
  v22 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v22)
  {
    v5 = 0;
    v21 = *v30;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        v24 = v5;
        if (*v30 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        identityProviders = [v7 identityProviders];
        v9 = [identityProviders countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = 0;
          v12 = *v26;
LABEL_8:
          v13 = 0;
          v23 = v11 + v10;
          while (1)
          {
            if (*v26 != v12)
            {
              objc_enumerationMutation(identityProviders);
            }

            displayName = [*(*(&v25 + 1) + 8 * v13) displayName];
            object = [displayName object];
            v16 = [object isEqualToString:nameCopy];

            if (v16)
            {
              break;
            }

            ++v11;
            if (v10 == ++v13)
            {
              v10 = [identityProviders countByEnumeratingWithState:&v25 objects:v33 count:16];
              v11 = v23;
              if (v10)
              {
                goto LABEL_8;
              }

              goto LABEL_14;
            }
          }

          v17 = v24;
          v18 = [MEMORY[0x277CCAA70] indexPathForRow:v11 inSection:v24];

          if (v18)
          {
            goto LABEL_19;
          }
        }

        else
        {
LABEL_14:

          v17 = v24;
        }

        v5 = v17 + 1;
      }

      v22 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v22);
  }

  v18 = 0;
LABEL_19:

  return v18;
}

- (id)storefrontAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  v6 = [pathCopy row];

  storefrontSections = [(VSIdentityProviderTableViewDataSource *)self storefrontSections];
  v8 = [storefrontSections objectAtIndex:section];

  storefronts = [v8 storefronts];
  v10 = [storefronts objectAtIndex:v6];

  return v10;
}

- (BOOL)hasStorefrontOrIdentityProviderAtIndexPath:(id)path
{
  pathCopy = path;
  additionalProvidersMode = self->_additionalProvidersMode;
  if (additionalProvidersMode == 5)
  {
    v6 = [(VSIdentityProviderTableViewDataSource *)self identityProviderForRowAtIndexPath:pathCopy];
  }

  else
  {
    if (additionalProvidersMode != 6)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v6 = [(VSIdentityProviderTableViewDataSource *)self storefrontAtIndexPath:pathCopy];
  }

  v7 = v6 != 0;

LABEL_7:
  return v7;
}

- (id)_additionalProvidersRowTitle
{
  additionalProvidersMode = [(VSIdentityProviderTableViewDataSource *)self additionalProvidersMode];
  switch(additionalProvidersMode)
  {
    case 1uLL:
      v3 = @"IDENTITY_PROVIDER_PICKER_OTHER_PROVIDERS_ROW_TITLE";
      goto LABEL_7;
    case 5uLL:
      v3 = @"REGIONS_PICKER_OTHER_REGIONS_ROW_TITLE";
      goto LABEL_7;
    case 3uLL:
      v3 = @"IDENTITY_PROVIDER_PICKER_OTHER_PROVIDERS_ROW_TITLE_DEVELOPER";
LABEL_7:
      vs_frameworkBundle = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
      v5 = [vs_frameworkBundle localizedStringForKey:v3 value:0 table:0];

      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (id)_cellReuseIdentifierForRowAtIndexPath:(id)path
{
  v3 = [(VSIdentityProviderTableViewDataSource *)self identityProviderForRowAtIndexPath:path];

  if (v3)
  {
    return @"IdentityProviderCell";
  }

  else
  {
    return @"AdditionalProvidersCell";
  }
}

- (int64_t)_cellStyleForRowAtIndexPath:(id)path
{
  v3 = [(VSIdentityProviderTableViewDataSource *)self identityProviderForRowAtIndexPath:path];

  return v3 != 0;
}

- (id)_titleForRowAtIndexPath:(id)path
{
  v4 = [(VSIdentityProviderTableViewDataSource *)self identityProviderForRowAtIndexPath:path];
  v5 = v4;
  if (v4)
  {
    displayName = [v4 displayName];
    forceUnwrapObject = [displayName forceUnwrapObject];

    if (forceUnwrapObject)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  forceUnwrapObject = [(VSIdentityProviderTableViewDataSource *)self _additionalProvidersRowTitle];
  if (!forceUnwrapObject)
  {
LABEL_3:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The title parameter must not be nil."];
  }

LABEL_4:

  return forceUnwrapObject;
}

- (int64_t)_textAlignmentForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(VSIdentityProviderTableViewDataSource *)self additionalProvidersMode]== 6 || ([(VSIdentityProviderTableViewDataSource *)self identityProviderForRowAtIndexPath:pathCopy], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v6 = 4;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)_textColorForRowAtIndexPath:(id)path
{
  v4 = MEMORY[0x277D75348];
  pathCopy = path;
  vsa_primaryLabelColor = [v4 vsa_primaryLabelColor];
  if ([(VSIdentityProviderTableViewDataSource *)self additionalProvidersMode]== 6)
  {
    [(VSIdentityProviderTableViewDataSource *)self storefrontAtIndexPath:pathCopy];
  }

  else
  {
    [(VSIdentityProviderTableViewDataSource *)self identityProviderForRowAtIndexPath:pathCopy];
  }
  v7 = ;

  if (v7)
  {
    vsa_primaryLabelColor2 = [MEMORY[0x277D75348] vsa_primaryLabelColor];

    vsa_primaryLabelColor = vsa_primaryLabelColor2;
  }

  return vsa_primaryLabelColor;
}

- (void)_scrollToTableHeaderView
{
  tableView = [(VSIdentityProviderTableViewDataSource *)self tableView];
  tableHeaderView = [tableView tableHeaderView];
  [tableHeaderView bounds];
  [tableView convertRect:tableHeaderView fromView:?];
  [tableView scrollRectToVisible:0 animated:?];
}

- (void)setNumberOfLinesForCell:(id)cell atIndexPath:(id)path
{
  textLabel = [cell textLabel];
  [textLabel setNumberOfLines:0];
}

- (id)tableView:(id)view indexPathForSectionIndexTitle:(id)title atIndex:(int64_t)index
{
  v18 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:index];
    v14 = 138412546;
    v15 = titleCopy;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_270DD4000, v8, OS_LOG_TYPE_DEFAULT, "Requesting index path for title %@ at index %@", &v14, 0x16u);
  }

  if ([titleCopy isEqualToString:*MEMORY[0x277D76F40]])
  {
    [(VSIdentityProviderTableViewDataSource *)self performSelector:sel__scrollToTableHeaderView withObject:0 afterDelay:0.0];
    v10 = 0;
  }

  else
  {
    destinationsBySectionIndexTitle = [(VSIdentityProviderTableViewDataSource *)self destinationsBySectionIndexTitle];
    v10 = [destinationsBySectionIndexTitle objectForKey:titleCopy];
  }

  v12 = VSDefaultLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v10;
    _os_log_impl(&dword_270DD4000, v12, OS_LOG_TYPE_DEFAULT, "Returning index path %@", &v14, 0xCu);
  }

  return v10;
}

- (id)sectionIndexTitlesForTableView:(id)view
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v3 addObject:*MEMORY[0x277D76F40]];
  currentCollation = [MEMORY[0x277D75700] currentCollation];
  sectionIndexTitles = [currentCollation sectionIndexTitles];
  [v3 addObjectsFromArray:sectionIndexTitles];

  return v3;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  providerSections = [(VSIdentityProviderTableViewDataSource *)self providerSections];
  v5 = [providerSections count];

  additionalProvidersMode = [(VSIdentityProviderTableViewDataSource *)self additionalProvidersMode];
  if (additionalProvidersMode <= 4)
  {
    if (additionalProvidersMode != 1 && additionalProvidersMode != 3)
    {
      return v5;
    }

    return ++v5;
  }

  if (additionalProvidersMode != 6)
  {
    if (additionalProvidersMode != 5)
    {
      return v5;
    }

    return ++v5;
  }

  storefrontSections = [(VSIdentityProviderTableViewDataSource *)self storefrontSections];
  v9 = [storefrontSections count];

  return v9;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if ([(VSIdentityProviderTableViewDataSource *)self additionalProvidersMode]== 6)
  {
    storefrontSections = [(VSIdentityProviderTableViewDataSource *)self storefrontSections];
    providerSections = [storefrontSections objectAtIndex:section];

    storefronts = [providerSections storefronts];
    v9 = [storefronts count];
LABEL_5:

    goto LABEL_6;
  }

  providerSections = [(VSIdentityProviderTableViewDataSource *)self providerSections];
  v10 = [providerSections count];
  if (v10 > section)
  {
    storefronts = [providerSections objectAtIndex:section];
    identityProviders = [storefronts identityProviders];
    v9 = [identityProviders count];

    goto LABEL_5;
  }

  if (v10 == section)
  {
    additionalProvidersMode = [(VSIdentityProviderTableViewDataSource *)self additionalProvidersMode];
    v9 = additionalProvidersMode <= 5 && ((1 << additionalProvidersMode) & 0x2A) != 0;
  }

  else
  {
    v9 = 0;
  }

LABEL_6:

  return v9;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([(VSIdentityProviderTableViewDataSource *)self additionalProvidersMode]== 6)
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"IdentityProviderCell"];
    if (!v8)
    {
      v8 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"IdentityProviderCell"];
    }

    v9 = [(VSIdentityProviderTableViewDataSource *)self storefrontAtIndexPath:pathCopy];
    displayName = [v9 displayName];
    [v8 setAccessoryType:{-[VSIdentityProviderTableViewDataSource cellAccessoryType](self, "cellAccessoryType")}];
    textLabel = [v8 textLabel];
    [textLabel setText:displayName];
  }

  else
  {
    v9 = [(VSIdentityProviderTableViewDataSource *)self _cellReuseIdentifierForRowAtIndexPath:pathCopy];
    v8 = [viewCopy dequeueReusableCellWithIdentifier:v9];
    if (!v8)
    {
      v12 = [(VSIdentityProviderTableViewDataSource *)self _cellStyleForRowAtIndexPath:pathCopy];
      v8 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:v12 reuseIdentifier:v9];
    }

    displayName = [(VSIdentityProviderTableViewDataSource *)self _titleForRowAtIndexPath:pathCopy];
    textLabel2 = [v8 textLabel];
    [textLabel2 setText:displayName];

    [(VSIdentityProviderTableViewDataSource *)self setNumberOfLinesForCell:v8 atIndexPath:pathCopy];
    [v8 setAccessoryType:{-[VSIdentityProviderTableViewDataSource cellAccessoryType](self, "cellAccessoryType")}];
    textLabel = [v8 textLabel];
  }

  [textLabel setTextAlignment:{-[VSIdentityProviderTableViewDataSource _textAlignmentForRowAtIndexPath:](self, "_textAlignmentForRowAtIndexPath:", pathCopy)}];
  v14 = [(VSIdentityProviderTableViewDataSource *)self _textColorForRowAtIndexPath:pathCopy];
  [textLabel setTextColor:v14];
  [textLabel setLineBreakMode:0];
  if (!v8)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The cell parameter must not be nil."];
  }

  return v8;
}

@end