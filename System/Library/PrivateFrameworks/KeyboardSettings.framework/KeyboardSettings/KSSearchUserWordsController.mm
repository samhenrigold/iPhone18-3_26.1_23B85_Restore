@interface KSSearchUserWordsController
- (KSSearchUserWordsController)initWithNavigationController:(id)controller;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)dealloc;
- (void)filterContentForSearchText:(id)text;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateSearchResultsForSearchController:(id)controller;
@end

@implementation KSSearchUserWordsController

- (KSSearchUserWordsController)initWithNavigationController:(id)controller
{
  v7[3] = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = KSSearchUserWordsController;
  v4 = [(KSSearchUserWordsController *)&v6 init];
  if (v4)
  {
    v7[0] = &stru_28679E3A8;
    v7[1] = &stru_28679E3A8;
    v7[2] = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"NO_RESULTS", &stru_28679E3A8, @"Keyboard"}];
    v4->_noResults = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
    [(KSSearchUserWordsController *)v4 setEdgesForExtendedLayout:4];
    [(KSSearchUserWordsController *)v4 setParentNavigationController:controller];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = KSSearchUserWordsController;
  [(KSSearchUserWordsController *)&v3 dealloc];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  v7.receiver = self;
  v7.super_class = KSSearchUserWordsController;
  [KSSearchUserWordsController setEditing:sel_setEditing_animated_ animated:?];
  [-[KSSearchUserWordsController navigationItem](self "navigationItem")];
  [-[KSSearchUserWordsController tableView](self "tableView")];
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (style == 1)
  {
    [view deselectRowAtIndexPath:path animated:?];
    v7 = -[NSArray objectAtIndex:](-[KSSearchUserWordsController filteredListContent](self, "filteredListContent"), "objectAtIndex:", [path row]);
    dictionaryController = [(KSSearchUserWordsController *)self dictionaryController];
    v9[0] = v7;
    -[KSUserWordsManager addEntries:removeEntries:withCompletionHandler:](dictionaryController, "addEntries:removeEntries:withCompletionHandler:", 0, [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1], 0);
  }
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  if ([(NSArray *)[(KSSearchUserWordsController *)self filteredListContent] count])
  {
    return path;
  }

  else
  {
    return 0;
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  [view deselectRowAtIndexPath:path animated:1];
  v6 = -[KSEditUserWordController initWithUserWord:]([KSEditUserWordController alloc], "initWithUserWord:", -[NSArray objectAtIndex:](-[KSSearchUserWordsController filteredListContent](self, "filteredListContent"), "objectAtIndex:", [path row]));
  [(KSEditUserWordController *)v6 setDictionaryController:[(KSSearchUserWordsController *)self dictionaryController]];
  [(UINavigationController *)[(KSSearchUserWordsController *)self parentNavigationController] pushViewController:v6 animated:1];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  result = [(NSArray *)[(KSSearchUserWordsController *)self filteredListContent:view] count];
  if (!result)
  {
    noResults = [(KSSearchUserWordsController *)self noResults];

    return [(NSArray *)noResults count];
  }

  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  if ([(NSArray *)[(KSSearchUserWordsController *)self filteredListContent] count])
  {
    v7 = @"kCellIdentifier";
  }

  else
  {
    v7 = @"kNoResultsIdentifier";
  }

  v8 = [view dequeueReusableCellWithIdentifier:v7];
  if (!v8)
  {
    v9 = [(NSArray *)[(KSSearchUserWordsController *)self filteredListContent] count]!= 0;
    v8 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:v9 reuseIdentifier:v7];
    [v8 setAccessoryType:0];
  }

  if ([(NSArray *)[(KSSearchUserWordsController *)self filteredListContent] count])
  {
    v10 = -[NSArray objectAtIndex:](-[KSSearchUserWordsController filteredListContent](self, "filteredListContent"), "objectAtIndex:", [path row]);
    [objc_msgSend(v8 "detailTextLabel")];
    [objc_msgSend(v8 "textLabel")];
  }

  else
  {
    [objc_msgSend(v8 "textLabel")];
    [objc_msgSend(v8 "textLabel")];
    textLabel = [v8 textLabel];
    [textLabel setTextColor:{objc_msgSend(MEMORY[0x277D75348], "colorWithWhite:alpha:", 0.8, 1.0)}];
    [objc_msgSend(v8 "textLabel")];
  }

  return v8;
}

- (void)filterContentForSearchText:(id)text
{
  -[KSSearchUserWordsController setFilteredListContent:](self, "setFilteredListContent:", -[NSArray filteredArrayUsingPredicate:](-[KSUserWordsManager entries](-[KSSearchUserWordsController dictionaryController](self, "dictionaryController"), "entries"), "filteredArrayUsingPredicate:", [MEMORY[0x277CCAC30] predicateWithFormat:@"(shortcut CONTAINS[c] %@) OR (phrase CONTAINS[c] %@)", text, text]));
  tableView = [(KSSearchUserWordsController *)self tableView];

  [tableView reloadData];
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  if ([controller isActive])
  {
    v5 = [objc_msgSend(controller "searchBar")];

    [(KSSearchUserWordsController *)self filterContentForSearchText:v5];
  }
}

@end