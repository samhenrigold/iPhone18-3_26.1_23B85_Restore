@interface SBHFileStackIcon
- (SBHFileStackIcon)initWithLeafIdentifier:(id)identifier applicationBundleID:(id)d;
- (SBHFileStackIcon)initWithUniqueLeafIdentifier;
- (id)displayName;
- (id)uninstallAlertCancelTitle;
- (id)uninstallAlertConfirmTitle;
- (id)uninstallAlertTitle;
- (void)displayName;
- (void)setCurrentSortOrderAscending:(BOOL)ascending;
- (void)setDataSourceUniqueIdentifier:(id)identifier;
- (void)setDisplayMode:(id)mode;
- (void)setSortOrder:(id)order;
@end

@implementation SBHFileStackIcon

- (SBHFileStackIcon)initWithUniqueLeafIdentifier
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v5 = [(SBHFileStackIcon *)self initWithLeafIdentifier:uUIDString applicationBundleID:0];
  return v5;
}

- (SBHFileStackIcon)initWithLeafIdentifier:(id)identifier applicationBundleID:(id)d
{
  v15.receiver = self;
  v15.super_class = SBHFileStackIcon;
  v4 = [(SBLeafIcon *)&v15 initWithLeafIdentifier:identifier applicationBundleID:d];
  if (v4)
  {
    v5 = objc_alloc_init(SBHFileStackIconImageProviderDocumentManagerDataSource);
    v6 = [[SBHFileStackIconImageProvider alloc] initWithFileStackIconImageProviderDataSource:v5];
    imageProvider = v4->_imageProvider;
    v4->_imageProvider = v6;

    [(SBHFileStackIconImageProvider *)v4->_imageProvider setDelegate:v4];
    [(SBIcon *)v4 setGridSizeClass:@"SBHIconGridSizeClassDefault"];
    defaultSortOrder = [MEMORY[0x1E699A418] defaultSortOrder];
    sortOrder = v4->_sortOrder;
    v4->_sortOrder = defaultSortOrder;

    v4->_currentSortOrderAscending = [(DOCSBFolderSortOrder *)v4->_sortOrder isSortAscending];
    defaultDisplayMode = [MEMORY[0x1E699A418] defaultDisplayMode];
    displayMode = v4->_displayMode;
    v4->_displayMode = defaultDisplayMode;

    v12 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    dataSourceUniqueIdentifier = v4->_dataSourceUniqueIdentifier;
    v4->_dataSourceUniqueIdentifier = v12;
  }

  return v4;
}

- (void)setSortOrder:(id)order
{
  v28 = *MEMORY[0x1E69E9840];
  orderCopy = order;
  identifier = [orderCopy identifier];
  identifier2 = [(DOCSBFolderSortOrder *)self->_sortOrder identifier];
  v7 = [identifier isEqualToString:identifier2];

  if ((v7 & 1) == 0)
  {
    supportedSortOrders = [MEMORY[0x1E699A418] supportedSortOrders];
    v22 = orderCopy;
    identifier3 = [orderCopy identifier];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = supportedSortOrders;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          identifier4 = [v15 identifier];
          v17 = [identifier3 isEqualToString:identifier4];

          if (v17)
          {
            v20 = [v15 copy];
            sortOrder = self->_sortOrder;
            self->_sortOrder = v20;

            [(SBIcon *)self archivableStateDidChange];
            v19 = v10;
            goto LABEL_13;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v19 = SBLogIcon(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      orderCopy = v22;
      [SBHFileStackIcon setSortOrder:v22];
    }

    else
    {
LABEL_13:
      orderCopy = v22;
    }
  }
}

- (void)setDisplayMode:(id)mode
{
  v28 = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  identifier = [modeCopy identifier];
  identifier2 = [(DOCSBFolderDisplayMode *)self->_displayMode identifier];
  v7 = [identifier isEqualToString:identifier2];

  if ((v7 & 1) == 0)
  {
    supportedDisplayModes = [MEMORY[0x1E699A418] supportedDisplayModes];
    v22 = modeCopy;
    identifier3 = [modeCopy identifier];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = supportedDisplayModes;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          identifier4 = [v15 identifier];
          v17 = [identifier3 isEqualToString:identifier4];

          if (v17)
          {
            v20 = [v15 copy];
            displayMode = self->_displayMode;
            self->_displayMode = v20;

            [(SBIcon *)self archivableStateDidChange];
            v19 = v10;
            goto LABEL_13;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v19 = SBLogIcon(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      modeCopy = v22;
      [SBHFileStackIcon setDisplayMode:v22];
    }

    else
    {
LABEL_13:
      modeCopy = v22;
    }
  }
}

- (void)setCurrentSortOrderAscending:(BOOL)ascending
{
  if (self->_currentSortOrderAscending != ascending)
  {
    self->_currentSortOrderAscending = ascending;
    [(SBIcon *)self archivableStateDidChange];
  }
}

- (void)setDataSourceUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([identifierCopy isEqual:self->_dataSourceUniqueIdentifier] & 1) == 0)
  {
    v4 = [identifierCopy copy];
    dataSourceUniqueIdentifier = self->_dataSourceUniqueIdentifier;
    self->_dataSourceUniqueIdentifier = v4;

    [(SBIcon *)self archivableStateDidChange];
  }
}

- (id)displayName
{
  url = self->_url;
  v11 = 0;
  v3 = *MEMORY[0x1E695DC10];
  v10 = 0;
  v4 = [(NSURL *)url getResourceValue:&v11 forKey:v3 error:&v10];
  v5 = v11;
  v6 = v10;
  if (v4)
  {
    v7 = v5;
  }

  else
  {
    v8 = SBLogDockFileStack();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SBHFileStackIcon *)v6 displayName];
    }

    v7 = &stru_1F3D472A8;
  }

  return v7;
}

- (id)uninstallAlertTitle
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = SBHBundle(self);
  v5 = [v4 localizedStringForKey:@"REMOVE_FROM_DOCK_ICON_TITLE_WITH_NAME" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
  displayName = [(SBHFileStackIcon *)self displayName];
  v7 = [v3 stringWithFormat:v5, displayName];

  return v7;
}

- (id)uninstallAlertCancelTitle
{
  v2 = SBHBundle(self);
  v3 = [v2 localizedStringForKey:@"REMOVE_FROM_DOCK_BUTTON_CANCEL" value:&stru_1F3D472A8 table:@"SpringBoardHome"];

  return v3;
}

- (id)uninstallAlertConfirmTitle
{
  v2 = SBHBundle(self);
  v3 = [v2 localizedStringForKey:@"REMOVE_FROM_DOCK_BUTTON_REMOVE" value:&stru_1F3D472A8 table:@"SpringBoardHome"];

  return v3;
}

- (void)setSortOrder:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedName];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_17(&dword_1BEB18000, v2, v3, "File Stack Icon Sort Order %@ is not supported", v4, v5, v6, v7, v8, DWORD2(v8));
}

- (void)setDisplayMode:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 localizedName];
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_17(&dword_1BEB18000, v2, v3, "File Stack Icon Display Mode %@ is not supported", v4, v5, v6, v7, v8, DWORD2(v8));
}

- (void)displayName
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_ERROR, "Error in retrieving localized name from URL. Error: %{public}@", &v2, 0xCu);
}

@end