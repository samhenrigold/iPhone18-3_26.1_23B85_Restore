@interface SUUISearchController
- (SUUISearchBar)searchBar;
- (void)_setSuffix:(id)suffix;
- (void)setActive:(BOOL)active;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SUUISearchController

- (void)_setSuffix:(id)suffix
{
  v66[1] = *MEMORY[0x277D85DE8];
  suffixCopy = suffix;
  if (!self->_suffixLabel)
  {
    v5 = objc_alloc_init(MEMORY[0x277D756B8]);
    suffixLabel = self->_suffixLabel;
    self->_suffixLabel = v5;

    [(UILabel *)self->_suffixLabel setAutoresizingMask:1];
    v7 = self->_suffixLabel;
    v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
    [(UILabel *)v7 setTextColor:v8];

    v9 = self->_suffixLabel;
    v10 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    [(UILabel *)v9 setFont:v10];

    v11 = self->_suffixLabel;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v11 setBackgroundColor:clearColor];

    [(UILabel *)self->_suffixLabel setHidden:[(SUUISearchController *)self isActive]];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] == 1)
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      keyWindow = [mEMORY[0x277D75128] keyWindow];
      bounds = [keyWindow bounds];
      if (v18 > SUUICompactThreshold(bounds, v17))
      {
        [(SUUISearchController *)self delegate];
        v20 = v19 = suffixCopy;
        v21 = [v20 searchControllerClientContext:self];
        shouldForceTransientSearchControllerBahavior = [v21 shouldForceTransientSearchControllerBahavior];

        suffixCopy = v19;
        if ((shouldForceTransientSearchControllerBahavior & 1) == 0)
        {
          searchBar = [(SUUISearchController *)self searchBar];
          searchField = [searchBar searchField];
          [searchField addSubview:self->_suffixLabel];
LABEL_9:

          goto LABEL_10;
        }

LABEL_8:
        searchBar = [(SUUISearchController *)self searchBar];
        searchField = [searchBar searchField];
        _clearButton = [searchField _clearButton];
        [_clearButton addSubview:self->_suffixLabel];

        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

LABEL_10:
  [(UILabel *)self->_suffixLabel setText:suffixCopy];
  [(UILabel *)self->_suffixLabel sizeToFit];
  [(UILabel *)self->_suffixLabel frame];
  v27 = v26;
  v29 = v28;
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice2 userInterfaceIdiom] != 1)
  {
LABEL_15:

    goto LABEL_16;
  }

  mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
  keyWindow2 = [mEMORY[0x277D75128]2 keyWindow];
  bounds2 = [keyWindow2 bounds];
  if (v35 <= SUUICompactThreshold(bounds2, v34))
  {

    goto LABEL_15;
  }

  [(SUUISearchController *)self delegate];
  v37 = v36 = suffixCopy;
  v38 = [v37 searchControllerClientContext:self];
  shouldForceTransientSearchControllerBahavior2 = [v38 shouldForceTransientSearchControllerBahavior];

  suffixCopy = v36;
  if ((shouldForceTransientSearchControllerBahavior2 & 1) == 0)
  {
    superview = [(UILabel *)self->_suffixLabel superview];
    [superview frame];
    v42 = v41 - v27 + -30.0;

    v43 = 8.0;
    goto LABEL_17;
  }

LABEL_16:
  v42 = -5.0 - v27;
  v43 = 3.0;
LABEL_17:
  [(UILabel *)self->_suffixLabel setFrame:v42, v43, v27, v29];
  searchBar2 = [(SUUISearchController *)self searchBar];
  searchField2 = [searchBar2 searchField];

  v45 = objc_alloc_init(MEMORY[0x277CCAB68]);
  paddingString = self->_paddingString;
  self->_paddingString = v45;

  v47 = suffixCopy;
  if ([suffixCopy length])
  {
    v48 = 0;
    v49 = *MEMORY[0x277D740A8];
    do
    {
      [(NSMutableString *)self->_paddingString appendString:@"_", searchField2];
      v50 = self->_paddingString;
      v65 = v49;
      font = [searchField2 font];
      v66[0] = font;
      v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:&v65 count:1];
      [(NSMutableString *)v50 sizeWithAttributes:v52];
      v54 = v53;

      if (v54 > v27)
      {
        break;
      }

      ++v48;
    }

    while (v48 < [v47 length]);
  }

  searchBar3 = [(SUUISearchController *)self searchBar];
  searchField3 = [searchBar3 searchField];
  text = [searchField3 text];
  isNaturallyRTL = [text isNaturallyRTL];

  if ((isNaturallyRTL & 1) == 0)
  {
    searchBar4 = [(SUUISearchController *)self searchBar];
    searchField4 = [searchBar4 searchField];
    if (([(SUUISearchController *)self isActive]& 1) != 0)
    {
      v61 = 0;
    }

    else
    {
      v61 = self->_paddingString;
    }

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [searchField4 _setSuffix:v61 withColor:clearColor2];
  }
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  searchBar = [(SUUISearchController *)self searchBar];
  text = [searchBar text];
  v15.receiver = self;
  v15.super_class = SUUISearchController;
  [(SUUISearchController *)&v15 setActive:activeCopy];
  searchField = [searchBar searchField];
  [searchField setText:text];

  [searchBar setShowsSearchResultsButton:0];
  [(UILabel *)self->_suffixLabel setHidden:activeCopy];
  searchField2 = [searchBar searchField];
  if (([(SUUISearchController *)self isActive]& 1) != 0)
  {
    paddingString = 0;
  }

  else
  {
    paddingString = self->_paddingString;
  }

  clearColor = [MEMORY[0x277D75348] clearColor];
  [searchField2 _setSuffix:paddingString withColor:clearColor];

  if (!activeCopy)
  {
    v11 = dispatch_time(0, 300000000);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __34__SUUISearchController_setActive___block_invoke;
    v12[3] = &unk_2798F5AF8;
    v13 = searchBar;
    selfCopy = self;
    dispatch_after(v11, MEMORY[0x277D85CD0], v12);
  }
}

void __34__SUUISearchController_setActive___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) searchField];
  if ([*(a1 + 40) isActive])
  {
    v2 = 0;
  }

  else
  {
    v2 = *(*(a1 + 40) + 1440);
  }

  v3 = [MEMORY[0x277D75348] clearColor];
  [v4 _setSuffix:v2 withColor:v3];
}

- (SUUISearchBar)searchBar
{
  searchBar = self->_searchBar;
  if (!searchBar)
  {
    v4 = objc_alloc_init(SUUISearchBar);
    v5 = self->_searchBar;
    self->_searchBar = v4;

    searchBar = self->_searchBar;
  }

  return searchBar;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = SUUISearchController;
  coordinatorCopy = coordinator;
  [(SUUISearchController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8 = [(SUUISearchController *)self delegate:v9.receiver];
  [v8 searchControllerWillTransitionToSize:coordinatorCopy withTransitionCoordinator:{width, height}];
}

@end