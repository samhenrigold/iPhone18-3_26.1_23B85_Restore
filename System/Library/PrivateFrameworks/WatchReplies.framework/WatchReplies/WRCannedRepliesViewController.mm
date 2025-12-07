@interface WRCannedRepliesViewController
- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path;
- (WRCannedRepliesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)cannedReplies;
- (id)cannedRepliesFromSpecifiers;
- (id)customReply:(id)reply;
- (id)includeSmartReplies;
- (id)newCannedReplySpecifier;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)addNewReply:(id)reply;
- (void)configureCellAccessoryImage:(id)image;
- (void)loadRepliesStoreIfNeeded;
- (void)returnPressedAtEnd;
- (void)saveReplies;
- (void)setCustomReply:(id)reply specifier:(id)specifier;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setIncludeSmartReplies:(id)replies specifier:(id)specifier;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)updateEditDoneButton;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WRCannedRepliesViewController

- (WRCannedRepliesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v6.receiver = self;
  v6.super_class = WRCannedRepliesViewController;
  v4 = [(WRCannedRepliesViewController *)&v6 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v4->_supportedEnhancedEditing = +[WRCannedRepliesStore supportsEnhancedEditing];
  }

  return v4;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = WRCannedRepliesViewController;
  [(WRCannedRepliesViewController *)&v4 viewDidLoad];
  if (![(WRCannedRepliesViewController *)self category])
  {
    v3 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Set the category before accessing the view. WRCategoryQuickboard is an invalid category." userInfo:0];
    [v3 raise];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = WRCannedRepliesViewController;
  [(WRCannedRepliesViewController *)&v4 viewWillAppear:appear];
  [(WRCannedRepliesViewController *)self updateEditDoneButton];
}

- (void)updateEditDoneButton
{
  if (self->_supportedEnhancedEditing && (-[WRCannedRepliesViewController cannedReplies](self, "cannedReplies"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 count], v3, v4))
  {
    editButtonItem = [(WRCannedRepliesViewController *)self editButtonItem];
    navigationItem = [(WRCannedRepliesViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:editButtonItem];
  }

  else
  {
    editButtonItem = [(WRCannedRepliesViewController *)self navigationItem];
    [editButtonItem setRightBarButtonItem:0];
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  if (editing)
  {
    isEditing = 0;
  }

  else
  {
    isEditing = [(WRCannedRepliesViewController *)self isEditing];
  }

  v11.receiver = self;
  v11.super_class = WRCannedRepliesViewController;
  [(WRCannedRepliesViewController *)&v11 setEditing:editingCopy animated:animatedCopy];
  [(WRCannedRepliesViewController *)self returnPressedAtEnd];
  if (self->_supportedEnhancedEditing)
  {
    table = [(WRCannedRepliesViewController *)self table];
    [table setEditing:editingCopy animated:1];

    addNewSpecifier = self->_addNewSpecifier;
    if (addNewSpecifier)
    {
      if (!editingCopy)
      {
        lastObject = [*(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) lastObject];
        [(WRCannedRepliesViewController *)self insertSpecifier:addNewSpecifier afterSpecifier:lastObject animated:animatedCopy];

        if (!isEditing)
        {
          return;
        }

LABEL_9:
        [(WRCannedRepliesViewController *)self saveReplies];
        return;
      }

      [(WRCannedRepliesViewController *)self removeSpecifier:self->_addNewSpecifier animated:animatedCopy];
    }

    if (!isEditing)
    {
      return;
    }

    goto LABEL_9;
  }
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = MEMORY[0x277D3FAD8];
    v7 = WRBundle(v5);
    v8 = [v7 localizedStringForKey:@"DEFAULT_REPLIES" value:&stru_288224B90 table:@"WRCannedRepliesViewController"];
    v9 = [v6 groupSpecifierWithName:v8];

    v11 = WRBundle(v10);
    v12 = [v11 localizedStringForKey:@"DEFAULT_REPLIES_HELP" value:&stru_288224B90 table:@"WRCannedRepliesViewController"];
    [v9 setObject:v12 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    [v5 addObject:v9];
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = [v5 indexOfObject:v9];
    v13 = v32[3];
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v32[3] = v13 + 1;
      cannedReplies = [(WRCannedRepliesViewController *)self cannedReplies];
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = __43__WRCannedRepliesViewController_specifiers__block_invoke;
      v27 = &unk_279E66A28;
      selfCopy = self;
      v15 = v5;
      v29 = v15;
      v30 = &v31;
      v16 = [cannedReplies enumerateObjectsUsingBlock:&v24];
      if (self->_supportedEnhancedEditing)
      {
        v17 = MEMORY[0x277D3FAD8];
        v18 = WRBundle(v16);
        v19 = [v18 localizedStringForKey:@"ADD_NEW_REPLY" value:&stru_288224B90 table:@"WRCannedRepliesViewController"];
        v20 = [v17 preferenceSpecifierNamed:v19 target:self set:0 get:0 detail:0 cell:13 edit:{0, v24, v25, v26, v27, selfCopy}];
        addNewSpecifier = self->_addNewSpecifier;
        self->_addNewSpecifier = v20;

        [(PSSpecifier *)self->_addNewSpecifier setButtonAction:sel_addNewReply_];
        [(PSSpecifier *)self->_addNewSpecifier setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FF38]];
        [v15 addObject:self->_addNewSpecifier];
      }
    }

    v22 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;

    _Block_object_dispose(&v31, 8);
    v4 = *(&self->super.super.super.super.super.isa + v3);
  }

  return v4;
}

void __43__WRCannedRepliesViewController_specifiers__block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v17 = v3;
  if (v4[1496] == 1)
  {
    v5 = [v3 defaultReplyText];
    v6 = [v5 isEqualToString:@"SMART_REPLIES_MARKER"];

    if (v6)
    {
      v8 = MEMORY[0x277D3FAD8];
      v9 = WRBundle(v7);
      v10 = [v9 localizedStringForKey:@"SMART_REPLIES" value:&stru_288224B90 table:@"WRCannedRepliesViewController"];
      v11 = [v8 preferenceSpecifierNamed:v10 target:a1[4] set:sel_setIncludeSmartReplies_specifier_ get:sel_includeSmartReplies detail:0 cell:6 edit:0];
      v12 = a1[4];
      v13 = *(v12 + 1472);
      *(v12 + 1472) = v11;

      v14 = *(a1[4] + 1472);
      goto LABEL_6;
    }

    v4 = a1[4];
  }

  v14 = [v4 newCannedReplySpecifier];
  v15 = [v17 defaultReplyText];
  [v14 setPlaceholder:v15];

LABEL_6:
  [v14 setProperty:v17 forKey:@"WRCannedReplyKey"];
  v16 = a1[5];
  ++*(*(a1[6] + 8) + 24);
  [v16 insertObject:v14 atIndex:?];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v12.receiver = self;
  v12.super_class = WRCannedRepliesViewController;
  v5 = [(WRCannedRepliesViewController *)&v12 tableView:view cellForRowAtIndexPath:path];
  v6 = [v5 tag];
  if (v6 == 6)
  {
    v9 = BPSBridgeTintColor();
    textLabel = [v5 textLabel];
    [textLabel setTextColor:v9];

    [v5 setSelectionStyle:3];
  }

  else if (v6 == 8)
  {
    editableTextField = [v5 editableTextField];
    [editableTextField setClearButtonMode:1];

    editableTextField2 = [v5 editableTextField];
    [editableTextField2 setReturnKeyType:9];

    [v5 setShowsReorderControl:{-[WRCannedRepliesViewController isEditing](self, "isEditing")}];
    [(WRCannedRepliesViewController *)self configureCellAccessoryImage:v5];
  }

  return v5;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v10 = 0;
  if (self->_supportedEnhancedEditing)
  {
    v8 = [(WRCannedRepliesViewController *)self specifierAtIndexPath:pathCopy];
    cellType = [v8 cellType];

    if (cellType == 8)
    {
      v10 = 1;
    }
  }

  return v10;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1 && self->_supportedEnhancedEditing)
  {
    v6 = [(WRCannedRepliesViewController *)self specifierAtIndexPath:path];
    [WRCannedRepliesViewController removeSpecifier:"removeSpecifier:animated:" animated:?];
    if (([(WRCannedRepliesViewController *)self isEditing]& 1) == 0)
    {
      [(WRCannedRepliesViewController *)self saveReplies];
    }
  }
}

- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path
{
  pathCopy = path;
  if (self->_supportedEnhancedEditing && [(WRCannedRepliesViewController *)self isEditing])
  {
    v6 = [(WRCannedRepliesViewController *)self specifierAtIndexPath:pathCopy];
    cellType = [v6 cellType];

    v8 = ((cellType - 6) & 0xFFFFFFFFFFFFFFFDLL) == 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  viewCopy = view;
  pathCopy = path;
  indexPathCopy = indexPath;
  if (self->_supportedEnhancedEditing)
  {
    v10 = *MEMORY[0x277D3FC48];
    if ([*(&self->super.super.super.super.super.isa + v10) count])
    {
      v11 = [(WRCannedRepliesViewController *)self indexForIndexPath:pathCopy];
      v12 = [(WRCannedRepliesViewController *)self indexForIndexPath:indexPathCopy];
      if (v11 >= [*(&self->super.super.super.super.super.isa + v10) count])
      {
        [WRCannedRepliesViewController tableView:moveRowAtIndexPath:toIndexPath:];
      }

      if (v11 < [*(&self->super.super.super.super.super.isa + v10) count])
      {
        v13 = [(WRCannedRepliesViewController *)self specifierAtIndex:v11];
        if (v13)
        {
          v14 = [*(&self->super.super.super.super.super.isa + v10) mutableCopy];
          if (v12 >= [v14 count])
          {
            [WRCannedRepliesViewController tableView:moveRowAtIndexPath:toIndexPath:];
          }

          if (v12 < [v14 count])
          {
            [v14 removeObjectAtIndex:v11];
            [v14 insertObject:v13 atIndex:v12];
          }

          v15 = *(&self->super.super.super.super.super.isa + v10);
          *(&self->super.super.super.super.super.isa + v10) = v14;
        }
      }
    }
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = WRCannedRepliesViewController;
  if ([-[WRCannedRepliesViewController class](&v11 class)])
  {
    v10.receiver = self;
    v10.super_class = WRCannedRepliesViewController;
    [(WRCannedRepliesViewController *)&v10 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }

  v8 = [viewCopy cellForRowAtIndexPath:pathCopy];
  if ([v8 tag] == 6)
  {
    control = [v8 control];
    [control setOn:objc_msgSend(control animated:{"isOn") ^ 1, 1}];
  }
}

- (void)returnPressedAtEnd
{
  keyWindow = [*MEMORY[0x277D76620] keyWindow];
  firstResponder = [keyWindow firstResponder];
  [firstResponder resignFirstResponder];
}

- (id)newCannedReplySpecifier
{
  result = [MEMORY[0x277D3FB40] preferenceSpecifierNamed:0 target:self set:sel_setCustomReply_specifier_ get:sel_customReply_ detail:0 cell:8 edit:0];
  *(result + *MEMORY[0x277D3FC88]) = 2;
  return result;
}

- (void)setCustomReply:(id)reply specifier:(id)specifier
{
  replyCopy = reply;
  specifierCopy = specifier;
  v7 = [specifierCopy propertyForKey:@"WRCannedReplyKey"];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v9 = [replyCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if (([replyCopy isEqualToString:&stru_288224B90] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", &stru_288224B90) & 1) == 0)
  {
    [v7 setText:replyCopy];
    [(WRCannedRepliesViewController *)self saveReplies];
  }

  else
  {
    [(WRCannedRepliesViewController *)self reloadSpecifier:specifierCopy];
  }

  text = [v7 text];
  if ([text length])
  {
  }

  else
  {
    defaultReplyText = [v7 defaultReplyText];
    v12 = [defaultReplyText length];

    if (!v12)
    {
      [(WRCannedRepliesViewController *)self removeSpecifier:specifierCopy animated:0];
      [(WRCannedRepliesViewController *)self saveReplies];
    }
  }
}

- (id)customReply:(id)reply
{
  v3 = [reply propertyForKey:@"WRCannedReplyKey"];
  text = [v3 text];

  return text;
}

- (void)setIncludeSmartReplies:(id)replies specifier:(id)specifier
{
  repliesStore = self->_repliesStore;
  bOOLValue = [replies BOOLValue];

  [(WRCannedRepliesStore *)repliesStore setIncludeSmartReplies:bOOLValue];
}

- (id)includeSmartReplies
{
  v2 = MEMORY[0x277CCABB0];
  includeSmartReplies = [(WRCannedRepliesStore *)self->_repliesStore includeSmartReplies];

  return [v2 numberWithBool:includeSmartReplies];
}

- (void)configureCellAccessoryImage:(id)image
{
  editableTextField = [image editableTextField];
  v15 = editableTextField;
  if (!self->_accessoryImage || !self->_highlightedAccessoryImage)
  {
    _clearButton = [editableTextField _clearButton];
    v6 = [_clearButton imageForState:0];

    v7 = BPSAccessoryHighlightColor();
    v8 = [v6 _flatImageWithColor:v7];
    accessoryImage = self->_accessoryImage;
    self->_accessoryImage = v8;

    v10 = BPSAccessoryColor();
    v11 = [v6 _flatImageWithColor:v10];
    highlightedAccessoryImage = self->_highlightedAccessoryImage;
    self->_highlightedAccessoryImage = v11;

    editableTextField = v15;
  }

  _clearButton2 = [editableTextField _clearButton];
  [_clearButton2 setImage:self->_accessoryImage forState:0];

  _clearButton3 = [v15 _clearButton];
  [_clearButton3 setImage:self->_highlightedAccessoryImage forState:1];
}

- (void)addNewReply:(id)reply
{
  v4 = [(WRCannedRepliesViewController *)self indexOfSpecifier:self->_addNewSpecifier];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    newCannedReplySpecifier = [(WRCannedRepliesViewController *)self newCannedReplySpecifier];
    v6 = objc_alloc_init(WRCannedReply);
    [newCannedReplySpecifier setProperty:v6 forKey:@"WRCannedReplyKey"];

    [(WRCannedRepliesViewController *)self insertSpecifier:newCannedReplySpecifier atIndex:v5 animated:1];
    [(WRCannedRepliesViewController *)self saveReplies];
    table = [(WRCannedRepliesViewController *)self table];
    v8 = [(WRCannedRepliesViewController *)self indexPathForSpecifier:newCannedReplySpecifier];
    v9 = [table cellForRowAtIndexPath:v8];

    editableTextField = [v9 editableTextField];
    [editableTextField becomeFirstResponder];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v12 = *MEMORY[0x277D770B0];
    editableTextField2 = [v9 editableTextField];
    [defaultCenter postNotificationName:v12 object:editableTextField2];
  }
}

- (id)cannedRepliesFromSpecifiers
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v4 = *MEMORY[0x277D3FC48];
  v5 = [v3 initWithCapacity:{objc_msgSend(*(&self->super.super.super.super.super.isa + v4), "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = *(&self->super.super.super.super.super.isa + v4);
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) propertyForKey:{@"WRCannedReplyKey", v13}];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)cannedReplies
{
  [(WRCannedRepliesViewController *)self loadRepliesStoreIfNeeded];
  repliesStore = self->_repliesStore;

  return [(WRCannedRepliesStore *)repliesStore cannedReplies];
}

- (void)loadRepliesStoreIfNeeded
{
  if (!self->_repliesStore)
  {
    self->_repliesStore = [[WRCannedRepliesStore alloc] initWithCategory:[(WRCannedRepliesViewController *)self category]];

    MEMORY[0x2821F96F8]();
  }
}

- (void)saveReplies
{
  [(WRCannedRepliesViewController *)self loadRepliesStoreIfNeeded];
  cannedRepliesFromSpecifiers = [(WRCannedRepliesViewController *)self cannedRepliesFromSpecifiers];
  [(WRCannedRepliesStore *)self->_repliesStore setCannedReplies:cannedRepliesFromSpecifiers];
}

@end