@interface MKHomescreenMigrator
- (MKHomescreenMigrator)init;
- (id)build:(id)build x:(int64_t)x y:(int64_t)y folderItems:(id)items;
- (id)export;
- (id)export:(id)export;
- (void)build:(id)build item:(id)item ID:(int64_t *)d page:(int64_t)page x:(int64_t)x y:(int64_t)y maxWidth:(int64_t)width maxHeight:(int64_t)self0;
- (void)import:(id)import;
@end

@implementation MKHomescreenMigrator

- (MKHomescreenMigrator)init
{
  v6.receiver = self;
  v6.super_class = MKHomescreenMigrator;
  v2 = [(MKHomescreenMigrator *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D66AB8]);
    service = v2->_service;
    v2->_service = v3;
  }

  return v2;
}

- (id)export
{
  osMigrationHomeScreenLayout = [(SBSHomeScreenService *)self->_service osMigrationHomeScreenLayout];
  v4 = [(MKHomescreenMigrator *)self export:osMigrationHomeScreenLayout];
  if ([v4 count])
  {
    v5 = v4;
  }

  else
  {
    osMigrationDefaultHomeScreenLayout = [(SBSHomeScreenService *)self->_service osMigrationDefaultHomeScreenLayout];

    v5 = [(MKHomescreenMigrator *)self export:osMigrationDefaultHomeScreenLayout];
    osMigrationHomeScreenLayout = osMigrationDefaultHomeScreenLayout;
  }

  return v5;
}

- (id)export:(id)export
{
  v44 = *MEMORY[0x277D85DE8];
  exportCopy = export;
  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v40 = 0;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v22 = exportCopy;
  obj = [exportCopy pages];
  v25 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v25)
  {
    v5 = 0;
    v24 = *v37;
    do
    {
      v6 = 0;
      do
      {
        if (*v37 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v6;
        v7 = *(*(&v36 + 1) + 8 * v6);
        numberOfColumns = [v7 numberOfColumns];
        numberOfRows = [v7 numberOfRows];
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        layoutItems = [v7 layoutItems];
        v11 = [layoutItems countByEnumeratingWithState:&v32 objects:v42 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v33;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v33 != v13)
              {
                objc_enumerationMutation(layoutItems);
              }

              -[MKHomescreenMigrator build:item:ID:page:x:y:maxWidth:maxHeight:](self, "build:item:ID:page:x:y:maxWidth:maxHeight:", v27, *(*(&v32 + 1) + 8 * i), &v40, v5, [*(*(&v32 + 1) + 8 * i) columnIndex], objc_msgSend(*(*(&v32 + 1) + 8 * i), "rowIndex"), numberOfColumns, numberOfRows);
            }

            v12 = [layoutItems countByEnumeratingWithState:&v32 objects:v42 count:16];
          }

          while (v12);
        }

        ++v5;
        v6 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
    }

    while (v25);
  }

  else
  {
    numberOfColumns = 0;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  bottomBarItems = [v22 bottomBarItems];
  v16 = [bottomBarItems countByEnumeratingWithState:&v28 objects:v41 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v29;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(bottomBarItems);
        }

        [(MKHomescreenMigrator *)self build:v27 item:*(*(&v28 + 1) + 8 * j) ID:&v40 page:-1 x:v18++ y:0 maxWidth:numberOfColumns maxHeight:1];
      }

      v17 = [bottomBarItems countByEnumeratingWithState:&v28 objects:v41 count:16];
    }

    while (v17);
  }

  return v27;
}

- (void)build:(id)build item:(id)item ID:(int64_t *)d page:(int64_t)page x:(int64_t)x y:(int64_t)y maxWidth:(int64_t)width maxHeight:(int64_t)self0
{
  v61 = *MEMORY[0x277D85DE8];
  buildCopy = build;
  itemCopy = item;
  item = [itemCopy item];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  item2 = [itemCopy item];
  item4 = item2;
  if (isKindOfClass)
  {
    bundleIdentifier = [item2 bundleIdentifier];
    v22 = [[MKHomescreen alloc] initWithID:*d page:page folder:-1 x:x y:y bundleID:bundleIdentifier maxWidth:width maxHeight:height];
    [buildCopy addObject:v22];
    ++*d;

LABEL_3:
    goto LABEL_15;
  }

  objc_opt_class();
  v23 = objc_opt_isKindOfClass();

  item3 = [itemCopy item];
  v25 = item3;
  if ((v23 & 1) == 0)
  {
    objc_opt_class();
    v40 = objc_opt_isKindOfClass();
    v41 = v25;
    v42 = v40;

    if ((v42 & 1) == 0)
    {
      goto LABEL_15;
    }

    item4 = [itemCopy item];
    obja = [item4 numberOfColumns];
    numberOfRows = [item4 numberOfRows];
    widgetIdentifier = [item4 widgetIdentifier];
    widgetKind = [item4 widgetKind];
    hostApp = [item4 hostApp];
    [hostApp bundleIdentifier];
    v44 = v47 = y;

    v45 = [[MKHomescreen alloc] initWithID:*d page:page x:x y:v47 width:obja height:numberOfRows bundleID:widgetIdentifier host:v44 kind:widgetKind maxWidth:width maxHeight:height];
    [buildCopy addObject:v45];
    ++*d;

    goto LABEL_3;
  }

  v52 = itemCopy;
  yCopy = y;
  v27 = *d;
  displayName = [item3 displayName];
  v28 = [[MKHomescreen alloc] initWithID:*d page:page x:x y:yCopy name:displayName maxWidth:width maxHeight:height];
  v29 = buildCopy;
  v46 = v28;
  [buildCopy addObject:?];
  ++*d;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v50 = v25;
  obj = [v25 apps];
  v30 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = 0;
    v33 = *v57;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v57 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = *(*(&v56 + 1) + 8 * i);
        v36 = [MKHomescreen alloc];
        v37 = *d;
        bundleIdentifier2 = [v35 bundleIdentifier];
        v39 = [(MKHomescreen *)v36 initWithID:v37 page:0 folder:v27 x:v32 y:0 bundleID:bundleIdentifier2 maxWidth:0x7FFFFFFFLL maxHeight:1];

        [v29 addObject:v39];
        ++*d;
        ++v32;
      }

      v31 = [obj countByEnumeratingWithState:&v56 objects:v60 count:16];
    }

    while (v31);
  }

  buildCopy = v29;
  itemCopy = v52;
LABEL_15:
}

- (void)import:(id)import
{
  v64 = *MEMORY[0x277D85DE8];
  importCopy = import;
  v43 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = importCopy;
  v6 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v45 = 0;
    v46 = 0;
    v11 = 0;
    v47 = *v58;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v58 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v57 + 1) + 8 * i);
        if ([v13 folder] < 0)
        {
          v14 = v43;

          v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v13, "page")}];

          page = [v13 page];
          if (v11 <= page)
          {
            v11 = page;
          }

          maxWidth = [v13 maxWidth];
          v18 = v45;
          if (v45 <= maxWidth)
          {
            v18 = maxWidth;
          }

          v45 = v18;
          maxHeight = [v13 maxHeight];
          v20 = v46;
          if (v46 <= maxHeight)
          {
            v20 = maxHeight;
          }

          v46 = v20;
        }

        else
        {
          v14 = v5;

          v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v13, "folder")}];
        }

        v8 = v15;
        v10 = v14;
        v21 = [v14 objectForKeyedSubscript:v8];

        v9 = v21;
        if (!v21)
        {
          v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v10 setObject:v9 forKeyedSubscript:v8];
        }

        [v9 addObject:v13];
      }

      v7 = [obj countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v7);
    v41 = v11 + 1;
  }

  else
  {
    v10 = 0;
    v45 = 0;
    v46 = 0;
    v41 = 1;
  }

  v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0;
  do
  {
    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v48 = v22;
    v24 = [MEMORY[0x277CCABB0] numberWithInteger:v22];
    v25 = [v43 objectForKeyedSubscript:v24];

    v26 = [v25 countByEnumeratingWithState:&v53 objects:v62 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v54;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v54 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = -[MKHomescreenMigrator build:x:y:folderItems:](self, "build:x:y:folderItems:", *(*(&v53 + 1) + 8 * j), [*(*(&v53 + 1) + 8 * j) x], objc_msgSend(*(*(&v53 + 1) + 8 * j), "y"), v5);
          [v23 addObject:v30];
        }

        v27 = [v25 countByEnumeratingWithState:&v53 objects:v62 count:16];
      }

      while (v27);
    }

    v31 = [objc_alloc(MEMORY[0x277D66B80]) initWithIdentifier:v48 numberOfRows:v46 numberOfColumns:v45 layoutItems:v23];
    [v42 addObject:v31];

    v22 = v48 + 1;
  }

  while (v48 + 1 != v41);
  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v33 = [v43 objectForKeyedSubscript:&unk_286AAC8A8];
  v34 = [v33 countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = 0;
    v37 = *v50;
    do
    {
      for (k = 0; k != v35; ++k)
      {
        if (*v50 != v37)
        {
          objc_enumerationMutation(v33);
        }

        v39 = [(MKHomescreenMigrator *)self build:*(*(&v49 + 1) + 8 * k) x:v36 y:0 folderItems:v5];
        [v32 addObject:v39];
        ++v36;
      }

      v35 = [v33 countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v35);
  }

  v40 = [objc_alloc(MEMORY[0x277D66B70]) initWithPages:v42 bottomBarItems:v32];
  [(SBSHomeScreenService *)self->_service importOSMigrationHomeScreenLayout:v40];
}

- (id)build:(id)build x:(int64_t)x y:(int64_t)y folderItems:(id)items
{
  v46 = *MEMORY[0x277D85DE8];
  buildCopy = build;
  itemsCopy = items;
  bundleID = [buildCopy bundleID];
  if ([bundleID length])
  {
    host = [buildCopy host];
    v13 = [host length];

    if (v13)
    {
      v14 = objc_alloc(MEMORY[0x277D66B60]);
      host2 = [buildCopy host];
      v16 = [v14 initWithBundleIdentifier:host2];

      v17 = objc_alloc(MEMORY[0x277D66B88]);
      bundleID2 = [buildCopy bundleID];
      kind = [buildCopy kind];
      v20 = [v17 initWithWidgetIdentifier:bundleID2 widgetKind:kind hostApp:v16 numberOfRows:objc_msgSend(buildCopy numberOfColumns:{"height"), objc_msgSend(buildCopy, "width")}];

      goto LABEL_15;
    }
  }

  else
  {
  }

  bundleID3 = [buildCopy bundleID];
  v22 = [bundleID3 length];

  if (v22)
  {
    v23 = objc_alloc(MEMORY[0x277D66B60]);
    bundleID4 = [buildCopy bundleID];
    v20 = [v23 initWithBundleIdentifier:bundleID4];
  }

  else
  {
    yCopy = y;
    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v26 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(buildCopy, "ID")}];
    v27 = [itemsCopy objectForKeyedSubscript:v26];

    v28 = [v27 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v42;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v42 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v41 + 1) + 8 * i);
          v33 = objc_alloc(MEMORY[0x277D66B60]);
          bundleID5 = [v32 bundleID];
          v35 = [v33 initWithBundleIdentifier:bundleID5];

          [v25 addObject:v35];
        }

        v29 = [v27 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v29);
    }

    v36 = objc_alloc(MEMORY[0x277D66B68]);
    name = [buildCopy name];
    v20 = [v36 initWithDisplayName:name apps:v25];

    y = yCopy;
  }

LABEL_15:
  v38 = [objc_alloc(MEMORY[0x277D66B78]) initWithIdentifier:objc_msgSend(buildCopy rowIndex:"ID") columnIndex:y item:{x, v20}];

  return v38;
}

@end