@interface WKDataListSuggestionsPopover
- (WKDataListSuggestionsPopover)initWithInformation:(void *)information inView:(id)view;
- (id).cxx_construct;
- (void)didSelectOptionAtIndex:(int64_t)index;
- (void)showSuggestionsDropdown:(void *)dropdown activationType:(unsigned __int8)type;
- (void)updateWithInformation:(void *)information;
@end

@implementation WKDataListSuggestionsPopover

- (WKDataListSuggestionsPopover)initWithInformation:(void *)information inView:(id)view
{
  v9.receiver = self;
  v9.super_class = WKDataListSuggestionsPopover;
  v5 = [(WKDataListSuggestionsControl *)&v9 initWithInformation:information inView:?];
  if (v5)
  {
    v6 = [[WKFormRotatingAccessoryPopover alloc] initWithView:view];
    m_ptr = v5->_popover.m_ptr;
    v5->_popover.m_ptr = v6;
    if (m_ptr)
    {
    }
  }

  return v5;
}

- (void)updateWithInformation:(void *)information
{
  v4.receiver = self;
  v4.super_class = WKDataListSuggestionsPopover;
  [(WKDataListSuggestionsControl *)&v4 updateWithInformation:information];
  [(WKDataListSuggestionsViewController *)self->_suggestionsViewController.m_ptr reloadData];
  [(WKContentView *)[(WKDataListSuggestionsControl *)self view] setDataListTextSuggestions:[(WKDataListSuggestionsControl *)self textSuggestions]];
}

- (void)showSuggestionsDropdown:(void *)dropdown activationType:(unsigned __int8)type
{
  v9.receiver = self;
  v9.super_class = WKDataListSuggestionsPopover;
  [(WKDataListSuggestionsControl *)&v9 showSuggestionsDropdown:dropdown activationType:type];
  v5 = [[WKDataListSuggestionsViewController alloc] initWithStyle:0];
  m_ptr = self->_suggestionsViewController.m_ptr;
  self->_suggestionsViewController.m_ptr = v5;
  if (m_ptr)
  {

    v5 = self->_suggestionsViewController.m_ptr;
  }

  [(WKDataListSuggestionsViewController *)v5 setControl:self];
  [(WKDataListSuggestionsViewController *)self->_suggestionsViewController.m_ptr reloadData];
  [(WKContentView *)[(WKDataListSuggestionsControl *)self view] setDataListTextSuggestions:[(WKDataListSuggestionsControl *)self textSuggestions]];
  v7 = self->_popover.m_ptr;
  v8 = [objc_alloc(MEMORY[0x1E69DCDD8]) initWithContentViewController:self->_suggestionsViewController.m_ptr];
  [(WKRotatingPopover *)v7 setPopoverController:v8];
  if (v8)
  {
  }

  [(WKRotatingPopover *)self->_popover.m_ptr presentPopoverAnimated:0];
}

- (void)didSelectOptionAtIndex:(int64_t)index
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = WKDataListSuggestionsPopover;
  [(WKDataListSuggestionsControl *)&v10 didSelectOptionAtIndex:?];
  [(UIPopoverController *)[(WKRotatingPopover *)self->_popover.m_ptr popoverController] dismissPopoverAnimated:1];
  objc_msgSend_suggestionAtIndex_(self);
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v9);
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v4);
    }
  }

  else
  {
    v9 = &stru_1F1147748;
    v5 = &stru_1F1147748;
  }

  v11[0] = [WKDataListTextSuggestion textSuggestionWithInputText:v9];
  -[WKContentView setDataListTextSuggestions:](-[WKDataListSuggestionsControl view](self, "view"), "setDataListTextSuggestions:", [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1]);
  v7 = v9;
  v9 = 0;
  if (v7)
  {
  }

  if (v8)
  {
    if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v6);
    }
  }
}

- (id).cxx_construct
{
  *(self + 6) = 0;
  *(self + 7) = 0;
  return self;
}

@end