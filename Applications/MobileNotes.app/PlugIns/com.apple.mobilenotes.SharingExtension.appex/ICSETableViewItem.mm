@interface ICSETableViewItem
+ (id)tableViewItemFromObject:(id)object selectedNote:(id)note selectedFolder:(id)folder isSearchResult:(BOOL)result isAccountPicker:(BOOL)picker;
+ (id)tableViewItemsForObjects:(id)objects selectedNote:(id)note selectedFolder:(id)folder isSearchResult:(BOOL)result noteContainer:(id)container isAccountPicker:(BOOL)picker;
+ (void)configureTableViewNibs:(id)nibs;
- (BOOL)isChecked;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSelectable;
- (ICFolder)selectedFolder;
- (ICNote)selectedNote;
- (ICNoteContainer)noteContainer;
- (NSString)cellIdentifier;
- (UIEdgeInsets)seperatorInsets;
- (UIImage)image;
- (double)cellHeight;
- (unint64_t)hash;
@end

@implementation ICSETableViewItem

- (double)cellHeight
{
  v3 = sub_1000032EC(self, a2);
  if ([(ICSETableViewItem *)self isSearchResult]|| ICAccessibilityAccessibilityLargerTextSizesEnabled())
  {
    return UITableViewAutomaticDimension;
  }

  return v3;
}

- (UIEdgeInsets)seperatorInsets
{
  if ([(ICSETableViewItem *)self isSearchResult])
  {
    v3 = 52.0;
  }

  else if ([(ICSETableViewItem *)self isInFolderList]&& ([(ICSETableViewItem *)self folderListItem], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    folderListItem = [(ICSETableViewItem *)self folderListItem];
    v6 = [folderListItem level] - 1;

    v3 = v6 * 33.0 + 53.0;
  }

  else
  {
    folder = [(ICSETableViewItem *)self folder];
    if (folder)
    {

      v3 = 53.0;
    }

    else
    {
      isAccountFolder = [(ICSETableViewItem *)self isAccountFolder];
      v3 = 53.0;
      if (!isAccountFolder)
      {
        v3 = 41.0;
      }
    }
  }

  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  result.right = v11;
  result.bottom = v10;
  result.left = v3;
  result.top = v9;
  return result;
}

- (BOOL)isSelectable
{
  if (-[ICSETableViewItem isHeader](self, "isHeader") || (-[ICSETableViewItem note](self, "note"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isPasswordProtected], v3, (v4 & 1) != 0) || (-[ICSETableViewItem note](self, "note"), (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, -[ICSETableViewItem note](self, "note"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEditable"), v7, v6, !v8))
  {
    isSystemFolder = 0;
  }

  else
  {
    folder = [(ICSETableViewItem *)self folder];
    if (folder)
    {
      v10 = folder;
      folder2 = [(ICSETableViewItem *)self folder];
      if ([folder2 canMoveAddOrDeleteContents])
      {
        isSystemFolder = 1;
      }

      else
      {
        folder3 = [(ICSETableViewItem *)self folder];
        isSystemFolder = [folder3 isSystemFolder];
      }
    }

    else
    {
      isSystemFolder = 1;
    }
  }

  return isSystemFolder & 1;
}

- (BOOL)isChecked
{
  note = [(ICSETableViewItem *)self note];
  selectedNote = [(ICSETableViewItem *)self selectedNote];
  selectedFolder = [(ICSETableViewItem *)self selectedFolder];
  account = [(ICSETableViewItem *)self account];
  if (selectedNote)
  {
    v7 = selectedNote;
  }

  else
  {
    v7 = selectedFolder;
  }

  account2 = [v7 account];
  note2 = [(ICSETableViewItem *)self note];

  if (note2)
  {
    v10 = note;
    v11 = selectedNote;
LABEL_6:
    LOBYTE(isAccountPicker) = [v10 isEqual:v11];
    goto LABEL_7;
  }

  account3 = [(ICSETableViewItem *)self account];
  if (!account3)
  {
    LOBYTE(isAccountPicker) = 0;
    goto LABEL_7;
  }

  v15 = account3;
  isAccountPicker = [(ICSETableViewItem *)self isAccountPicker];

  if (isAccountPicker)
  {
    v10 = account2;
    v11 = account;
    goto LABEL_6;
  }

LABEL_7:

  return isAccountPicker;
}

- (UIImage)image
{
  if ([(ICSETableViewItem *)self isHeader])
  {
    goto LABEL_2;
  }

  if ([(ICSETableViewItem *)self isChecked])
  {
    v4 = [UIImage systemImageNamed:@"checkmark"];
    goto LABEL_8;
  }

  note = [(ICSETableViewItem *)self note];
  isPasswordProtected = [note isPasswordProtected];

  if (isPasswordProtected)
  {
    v7 = @"lock.fill";
LABEL_7:
    v4 = [UIImage ic_smallSystemImageNamed:v7];
    goto LABEL_8;
  }

  note2 = [(ICSETableViewItem *)self note];
  if ([note2 isSharedViaICloud])
  {
    noteContainer = [(ICSETableViewItem *)self noteContainer];
    isSharedViaICloud = [noteContainer isSharedViaICloud];

    if ((isSharedViaICloud & 1) == 0)
    {
      v7 = @"person.crop.circle";
      goto LABEL_7;
    }
  }

  else
  {
  }

  folder = [(ICSETableViewItem *)self folder];
  if (folder)
  {

LABEL_19:
    folder2 = [(ICSETableViewItem *)self folder];
    systemImageName = [folder2 systemImageName];
    v15 = systemImageName;
    if (systemImageName)
    {
      v16 = systemImageName;
    }

    else
    {
      v16 = +[ICFolder defaultSystemImageName];
    }

    v17 = v16;

    v3 = [UIImage ic_systemImageNamed:v17];

    goto LABEL_9;
  }

  if ([(ICSETableViewItem *)self isAccountFolder])
  {
    goto LABEL_19;
  }

  if (![(ICSETableViewItem *)self isSystemPaperFolder])
  {
LABEL_2:
    v3 = 0;
    goto LABEL_9;
  }

  v4 = [UIImage ic_systemImageNamed:@"quicknote"];
LABEL_8:
  v3 = v4;
LABEL_9:

  return v3;
}

- (NSString)cellIdentifier
{
  if ([(ICSETableViewItem *)self isSearchResult])
  {
    note = [(ICSETableViewItem *)self note];

    if (note)
    {
      return @"SearchResultNoteCell";
    }

    folder = [(ICSETableViewItem *)self folder];
    if (folder || [(ICSETableViewItem *)self isSystemPaperFolder])
    {

      return @"SearchResultFolderCell";
    }

    if ([(ICSETableViewItem *)self isAccountFolder])
    {
      return @"SearchResultFolderCell";
    }

    v6 = os_log_create("com.apple.notes", "SharingExtension");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000B3A58(v6);
    }
  }

  return @"NoteCell";
}

+ (id)tableViewItemFromObject:(id)object selectedNote:(id)note selectedFolder:(id)folder isSearchResult:(BOOL)result isAccountPicker:(BOOL)picker
{
  pickerCopy = picker;
  resultCopy = result;
  noteCopy = note;
  folderCopy = folder;
  objectCopy = object;
  objc_opt_class();
  v13 = ICDynamicCast();
  objc_opt_class();
  v14 = ICDynamicCast();
  objc_opt_class();
  v15 = ICDynamicCast();
  objc_opt_class();
  v16 = ICDynamicCast();

  if (v16)
  {
    if ([v16 isAccount])
    {
      objc_opt_class();
      noteContainer = [v16 noteContainer];
      v18 = ICDynamicCast();
      v19 = v15;
      v15 = v18;
    }

    else
    {
      objc_opt_class();
      noteContainer = [v16 noteContainer];
      v20 = ICDynamicCast();
      v19 = v14;
      v14 = v20;
    }
  }

  if ([v13 isDeletedOrInTrash])
  {

    v13 = 0;
  }

  if ([v14 isTrashFolder])
  {

    v14 = 0;
  }

  if (v16 || v13 || v14 || v15)
  {
    v21 = objc_alloc_init(ICSETableViewItem);
    [(ICSETableViewItem *)v21 setNote:v13];
    [(ICSETableViewItem *)v21 setFolder:v14];
    [(ICSETableViewItem *)v21 setAccount:v15];
    [(ICSETableViewItem *)v21 setFolderListItem:v16];
    [(ICSETableViewItem *)v21 setSelectedNote:noteCopy];
    [(ICSETableViewItem *)v21 setSelectedFolder:folderCopy];
    title = [v13 title];
    if (v14)
    {
      localizedTitle = [v14 localizedTitle];
      v24 = [localizedTitle copy];
      v25 = title;
      v26 = v15;
      v27 = folderCopy;
      v28 = noteCopy;
      v29 = pickerCopy;
      v30 = v24;

      v31 = v30;
      pickerCopy = v29;
      noteCopy = v28;
      folderCopy = v27;
      v15 = v26;
      title = v31;
    }

    [(ICSETableViewItem *)v21 setTitle:title];
    [(ICSETableViewItem *)v21 setIsSearchResult:resultCopy];
    [(ICSETableViewItem *)v21 setIsAccountPicker:pickerCopy];
    if (v15)
    {
      accountName = [v15 accountName];
      v33 = accountName;
      if (pickerCopy)
      {
        [(ICSETableViewItem *)v21 setTitle:accountName];
      }

      else
      {
        [accountName localizedUppercaseString];
        v42 = title;
        v34 = v15;
        v35 = folderCopy;
        v36 = noteCopy;
        pickerCopy = v37 = pickerCopy;
        [(ICSETableViewItem *)v21 setTitle:pickerCopy];

        LODWORD(pickerCopy) = v37;
        noteCopy = v36;
        folderCopy = v35;
        v15 = v34;
        title = v42;
      }

      [(ICSETableViewItem *)v21 setIsAccountHeader:pickerCopy ^ 1];
    }

    if (v13)
    {
      modificationDate = [v13 modificationDate];
      ic_briefFormattedDate = [modificationDate ic_briefFormattedDate];
      [(ICSETableViewItem *)v21 setSecondaryTitle:ic_briefFormattedDate];
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)tableViewItemsForObjects:(id)objects selectedNote:(id)note selectedFolder:(id)folder isSearchResult:(BOOL)result noteContainer:(id)container isAccountPicker:(BOOL)picker
{
  pickerCopy = picker;
  resultCopy = result;
  objectsCopy = objects;
  noteCopy = note;
  folderCopy = folder;
  containerCopy = container;
  v17 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(objectsCopy, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = objectsCopy;
  v18 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = [self tableViewItemFromObject:*(*(&v26 + 1) + 8 * i) selectedNote:noteCopy selectedFolder:folderCopy isSearchResult:resultCopy isAccountPicker:pickerCopy];
        [v22 setNoteContainer:containerCopy];
        [v17 ic_addNonNilObject:v22];
      }

      v19 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v19);
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    note = [v5 note];
    note2 = [(ICSETableViewItem *)self note];
    if (note == note2)
    {
      v10 = 1;
    }

    else
    {
      folder = [v5 folder];
      folder2 = [(ICSETableViewItem *)self folder];
      v10 = folder == folder2;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  note = [(ICSETableViewItem *)self note];
  v4 = [note hash];
  folder = [(ICSETableViewItem *)self folder];
  v6 = [folder hash];
  v14 = sub_1000111EC(v4, v7, v8, v9, v10, v11, v12, v13, v6);

  return v14;
}

+ (void)configureTableViewNibs:(id)nibs
{
  nibsCopy = nibs;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [UINib nibWithNibName:@"ICSETableViewCell" bundle:v4];

  [nibsCopy registerNib:v5 forCellReuseIdentifier:@"NoteCell"];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [UINib nibWithNibName:@"ICSEFolderSearchResultTableViewCell" bundle:v6];

  [nibsCopy registerNib:v7 forCellReuseIdentifier:@"SearchResultFolderCell"];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [UINib nibWithNibName:@"ICSENoteSearchResultTableViewCell" bundle:v8];

  [nibsCopy registerNib:v9 forCellReuseIdentifier:@"SearchResultNoteCell"];
}

- (ICNote)selectedNote
{
  WeakRetained = objc_loadWeakRetained(&self->_selectedNote);

  return WeakRetained;
}

- (ICFolder)selectedFolder
{
  WeakRetained = objc_loadWeakRetained(&self->_selectedFolder);

  return WeakRetained;
}

- (ICNoteContainer)noteContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_noteContainer);

  return WeakRetained;
}

@end