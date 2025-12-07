@interface WKDataListSuggestionsViewController
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)reloadData;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation WKDataListSuggestionsViewController

- (void)reloadData
{
  [-[WKDataListSuggestionsViewController tableView](self "tableView")];
  suggestionsCount = [(WKDataListSuggestionsControl *)[(WKDataListSuggestionsViewController *)self control] suggestionsCount];
  v4 = 242.0;
  if (suggestionsCount <= 5)
  {
    v4 = suggestionsCount * 44.0;
  }

  [(WKDataListSuggestionsViewController *)self setPreferredContentSize:320.0, v4];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(WKDataListSuggestionsViewController *)self control:view];

  return [(WKDataListSuggestionsControl *)v4 suggestionsCount];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = [view dequeueReusableCellWithIdentifier:@"WKDataListSuggestionCell"];
  if (v6)
  {
    v7 = v6;
    v8 = v6;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:@"WKDataListSuggestionCell"];
  }

  control = [(WKDataListSuggestionsViewController *)self control];
  [path row];
  if (!control)
  {
    v16 = 0;
    goto LABEL_9;
  }

  objc_msgSend_suggestionAtIndex_(control);
  if (!v16)
  {
LABEL_9:
    v18 = &stru_1F1147748;
    v11 = &stru_1F1147748;
    goto LABEL_10;
  }

  atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
  MEMORY[0x19EB00B70](&v18);
  if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v16, v10);
  }

LABEL_10:
  [objc_msgSend(v7 textLabel];
  v13 = v18;
  v18 = 0;
  if (v13)
  {
  }

  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v12);
  }

  [objc_msgSend(v7 textLabel];
  [objc_msgSend(v7 "textLabel")];
  if (v7)
  {
    v14 = v7;
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  control = [(WKDataListSuggestionsViewController *)self control];
  v6 = [path row];

  [(WKDataListSuggestionsControl *)control didSelectOptionAtIndex:v6];
}

@end