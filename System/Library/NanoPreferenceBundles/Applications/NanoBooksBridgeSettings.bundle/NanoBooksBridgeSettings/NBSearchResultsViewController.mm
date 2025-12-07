@interface NBSearchResultsViewController
- (NBSearchResultsViewController)init;
- (NBSelectAudiobookDelegate)delegate;
- (id)_specifierForJaliscoItem:(id)item;
- (id)_specifierForMediaItem:(id)item;
- (id)specifiers;
- (void)searchForString:(id)string;
- (void)setFamilyDSIDs:(id)ds;
- (void)setIncludeFamily:(BOOL)family;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation NBSearchResultsViewController

- (NBSearchResultsViewController)init
{
  v8.receiver = self;
  v8.super_class = NBSearchResultsViewController;
  v2 = [(NBSearchResultsViewController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    familyDSIDs = v2->_familyDSIDs;
    v2->_familyDSIDs = &__NSArray0__struct;

    v3->_includeFamily = 0;
    v5 = objc_alloc_init(NBSearchDataSource);
    searchDataSource = v3->_searchDataSource;
    v3->_searchDataSource = v5;
  }

  return v3;
}

- (void)setFamilyDSIDs:(id)ds
{
  v4 = [ds copy];
  familyDSIDs = self->_familyDSIDs;
  self->_familyDSIDs = v4;

  if ([(NBSearchResultsViewController *)self includeFamily])
  {
    v6 = self->_familyDSIDs;
    searchDataSource = [(NBSearchResultsViewController *)self searchDataSource];
    [searchDataSource setFamilyDSIDs:v6];
  }
}

- (void)setIncludeFamily:(BOOL)family
{
  self->_includeFamily = family;
  if (family)
  {
    familyDSIDs = self->_familyDSIDs;
  }

  else
  {
    familyDSIDs = &__NSArray0__struct;
  }

  searchDataSource = [(NBSearchResultsViewController *)self searchDataSource];
  [searchDataSource setFamilyDSIDs:familyDSIDs];
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v18 = OBJC_IVAR___PSListController__specifiers;
    v4 = +[NSMutableArray array];
    [(NBSearchResultsViewController *)self searchResults];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = v23 = 0u;
    v5 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (!v5)
    {
      goto LABEL_19;
    }

    v6 = v5;
    v7 = *v21;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        v10 = BUDynamicCast();
        if (v10)
        {
          v11 = [(NBSearchResultsViewController *)self _specifierForMediaItem:v10];
          v12 = v11;
          if (v11)
          {
            goto LABEL_9;
          }
        }

        else
        {
          objc_opt_class();
          v13 = BUDynamicCast();
          if (v13)
          {
            v12 = [(NBSearchResultsViewController *)self _specifierForJaliscoItem:v13];
          }

          else
          {
            v12 = 0;
          }

          if (v12)
          {
LABEL_9:
            [v4 addObject:v12];
            goto LABEL_17;
          }
        }

        v14 = NBDefaultLog(v11);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v25 = v9;
          _os_log_error_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "Attempted to format search result of invalid type (%@)", buf, 0xCu);
        }

LABEL_17:
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (!v6)
      {
LABEL_19:
        v15 = [v4 copy];
        v16 = *&self->PSListController_opaque[v18];
        *&self->PSListController_opaque[v18] = v15;

        v3 = *&self->PSListController_opaque[v18];
        break;
      }
    }
  }

  return v3;
}

- (void)searchForString:(id)string
{
  stringCopy = string;
  searchDataSource = [(NBSearchResultsViewController *)self searchDataSource];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_6B64;
  v6[3] = &unk_20A38;
  v6[4] = self;
  [searchDataSource filterResultsUsingSearchString:stringCopy completion:v6];
}

- (id)_specifierForMediaItem:(id)item
{
  itemCopy = item;
  bk_effectiveTitle = [itemCopy bk_effectiveTitle];
  v6 = [PSSpecifier preferenceSpecifierNamed:bk_effectiveTitle target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v6 setProperty:objc_opt_class() forKey:PSCellClassKey];
  bk_effectiveTitle2 = [itemCopy bk_effectiveTitle];
  [v6 setProperty:bk_effectiveTitle2 forKey:NMBUISpecifierTitleKey];

  bk_effectiveAuthor = [itemCopy bk_effectiveAuthor];
  [v6 setProperty:bk_effectiveAuthor forKey:NMBUISpecifierSubtitleKey];

  [v6 setProperty:&off_21A68 forKey:PSTableCellStyleOverrideKey];
  artworkCatalog = [itemCopy artworkCatalog];
  [v6 setProperty:artworkCatalog forKey:NMBUISpecifierArtworkCatalogKey];

  v10 = +[NBBridgeUtilities audiobookArtworkPlaceholderImage];
  [v6 setProperty:v10 forKey:NMBUISpecifierPlaceholderImageKey];

  bk_storeID = [itemCopy bk_storeID];

  delegate = [(NBSearchResultsViewController *)self delegate];
  LODWORD(itemCopy) = [delegate selectAudiobookAdamIdAlreadyPinned:bk_storeID];

  if (itemCopy)
  {
    [v6 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
  }

  return v6;
}

- (id)_specifierForJaliscoItem:(id)item
{
  itemCopy = item;
  title = [itemCopy title];
  v6 = [PSSpecifier preferenceSpecifierNamed:title target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v6 setProperty:objc_opt_class() forKey:PSCellClassKey];
  title2 = [itemCopy title];
  [v6 setProperty:title2 forKey:NMBUISpecifierTitleKey];

  artist = [itemCopy artist];
  [v6 setProperty:artist forKey:NMBUISpecifierSubtitleKey];

  [v6 setProperty:&off_21A68 forKey:PSTableCellStyleOverrideKey];
  artworkCatalog = [itemCopy artworkCatalog];
  [v6 setProperty:artworkCatalog forKey:NMBUISpecifierArtworkCatalogKey];

  v10 = +[NBBridgeUtilities audiobookArtworkPlaceholderImage];
  [v6 setProperty:v10 forKey:NMBUISpecifierPlaceholderImageKey];

  storeID = [itemCopy storeID];

  v12 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [storeID longLongValue]);

  delegate = [(NBSearchResultsViewController *)self delegate];
  LODWORD(v10) = [delegate selectAudiobookAdamIdAlreadyPinned:v12];

  if (v10)
  {
    [v6 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
  }

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [pathCopy row];
  searchResults = [(NBSearchResultsViewController *)self searchResults];
  v10 = [searchResults count];

  if (v8 >= v10)
  {
    bk_storeID = NBDefaultLog(v11);
    if (os_log_type_enabled(bk_storeID, OS_LOG_TYPE_ERROR))
    {
      sub_119A8(self, pathCopy);
    }

    goto LABEL_14;
  }

  searchDataSource = [(NBSearchResultsViewController *)self searchDataSource];
  items = [searchDataSource items];
  v14 = [items objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  objc_opt_class();
  v15 = BUDynamicCast();
  v16 = v15;
  if (v15)
  {
    bk_storeID = [v15 bk_storeID];
  }

  else
  {
    objc_opt_class();
    v18 = BUDynamicCast();
    v19 = v18;
    if (v18)
    {
      storeID = [v18 storeID];
      bk_storeID = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [storeID nb_uint64_t]);
    }

    else
    {
      v21 = NBDefaultLog(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_11A58(v14, pathCopy);
      }

      bk_storeID = 0;
    }
  }

  if (bk_storeID)
  {
    delegate = [(NBSearchResultsViewController *)self delegate];
    [delegate selectAudiobookDidSelectAudiobookWithAdamId:bk_storeID];

LABEL_14:
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (NBSelectAudiobookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end