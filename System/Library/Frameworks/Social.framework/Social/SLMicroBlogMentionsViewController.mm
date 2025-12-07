@interface SLMicroBlogMentionsViewController
+ (id)_blankSurrogateProfileImage;
- (SLMicroBlogMentionsDelegate)delegate;
- (SLMicroBlogMentionsViewController)initWithSheetDelegate:(id)delegate;
- (id)mentions;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)chooseRow:(int64_t)row;
- (void)completeWithSelectedMention:(id)mention;
- (void)loadView;
- (void)setMentions:(id)mentions;
- (void)setSearchString:(id)string;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateMentions;
@end

@implementation SLMicroBlogMentionsViewController

- (SLMicroBlogMentionsViewController)initWithSheetDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = SLMicroBlogMentionsViewController;
  v5 = [(SLMicroBlogMentionsViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sheetDelegate, delegateCopy);
  }

  return v6;
}

- (void)completeWithSelectedMention:(id)mention
{
  mentionCopy = mention;
  delegate = [(SLMicroBlogMentionsViewController *)self delegate];
  [delegate mentionsViewController:self finishedWithResult:mentionCopy];
}

- (id)mentions
{
  mentions = self->_mentions;
  if (!mentions)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_mentions;
    self->_mentions = v4;

    [(SLMicroBlogMentionsViewController *)self updateMentions];
    mentions = self->_mentions;
  }

  return mentions;
}

- (void)setMentions:(id)mentions
{
  mentionsCopy = mentions;
  _SLLog(v3, 7, @"SLMicroBlogMentionsViewController setMentions:", v6, v7, v8, v9, v10, v22);
  mentions = self->_mentions;
  self->_mentions = mentionsCopy;
  v12 = mentionsCopy;

  tableView = self->_tableView;
  v14 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
  [(UITableView *)tableView reloadSections:v14 withRowAnimation:100];

  [(UITableView *)self->_tableView sizeThatFits:0.0, 1100.0];
  v16 = v15;
  [(NSArray *)self->_mentions count];

  _SLLog(v3, 7, @"SLMicroBlogMentionsViewController preferredContentSize => %g %g for _mentions.count %d", v17, v18, v19, v20, v21, 0x4074000000000000);

  [(SLMicroBlogMentionsViewController *)self setPreferredContentSize:320.0, v16];
}

- (void)updateMentions
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__SLMicroBlogMentionsViewController_updateMentions__block_invoke;
  v5[3] = &unk_1E8176688;
  v5[4] = self;
  v3 = MEMORY[0x1C6917BF0](v5, a2);
  WeakRetained = objc_loadWeakRetained(&self->_sheetDelegate);
  [WeakRetained recordsMatchingPrefixString:self->_searchString completion:v3];
}

uint64_t __51__SLMicroBlogMentionsViewController_updateMentions__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  _SLLog(v3, 7, @"Got mentions match error %{public}@ and results %@", v7, v8, v9, v10, v11, a3);
  if (v6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__SLMicroBlogMentionsViewController_updateMentions__block_invoke_2;
    block[3] = &unk_1E8176118;
    block[4] = *(a1 + 32);
    v14 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  return 1;
}

uint64_t __51__SLMicroBlogMentionsViewController_updateMentions__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setMentions:*(a1 + 40)];
  [*(a1 + 32) willChangeValueForKey:@"contentSizeForViewInPopover"];
  v2 = *(a1 + 32);

  return [v2 didChangeValueForKey:@"contentSizeForViewInPopover"];
}

- (void)setSearchString:(id)string
{
  stringCopy = string;
  _SLLog(v3, 7, @"SLMicroBlogMentionsViewController setSearchString: %@", v6, v7, v8, v9, v10, stringCopy);
  v11 = [(NSString *)self->_searchString compare:stringCopy];
  v12 = [stringCopy copy];

  searchString = self->_searchString;
  self->_searchString = v12;

  if (v11)
  {
    if ([(NSString *)self->_searchString length])
    {

      [(SLMicroBlogMentionsViewController *)self updateMentions];
    }

    else
    {

      [(SLMicroBlogMentionsViewController *)self setMentions:0];
    }
  }
}

- (void)loadView
{
  v13.receiver = self;
  v13.super_class = SLMicroBlogMentionsViewController;
  [(SLMicroBlogMentionsViewController *)&v13 loadView];
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  view = [(SLMicroBlogMentionsViewController *)self view];
  [view frame];
  v5 = [v3 initWithFrame:?];
  tableView = self->_tableView;
  self->_tableView = v5;

  [(UITableView *)self->_tableView setAutoresizingMask:18];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setOpaque:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UITableView *)self->_tableView setBackgroundColor:clearColor];

  backgroundView = [(UITableView *)self->_tableView backgroundView];
  [backgroundView setOpaque:0];

  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  backgroundView2 = [(UITableView *)self->_tableView backgroundView];
  [backgroundView2 setBackgroundColor:clearColor2];

  [(UITableView *)self->_tableView setRowHeight:*MEMORY[0x1E69DE3D0]];
  v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v11 lineHeight];
  [(UITableView *)self->_tableView setEstimatedRowHeight:v12 + v12];

  [(SLMicroBlogMentionsViewController *)self setView:self->_tableView];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(SLMicroBlogMentionsViewController *)self mentions:view];
  _SLLog(v4, 7, @"Mentions tableView:numberOfRowsInSection: with results %@", v6, v7, v8, v9, v10, v5);
  v11 = [v5 count];

  return v11;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  _SLLog(v4, 7, @"Mentions tableView:cellForRowAtIndexPath: %@", v9, v10, v11, v12, v13, pathCopy);
  v14 = [pathCopy indexAtPosition:1];

  mentions = [(SLMicroBlogMentionsViewController *)self mentions];
  v16 = [mentions objectAtIndex:v14];

  _SLLog(v4, 7, @"Mentions tableView:cellForRowAtIndexPath: using userRecord %@", v17, v18, v19, v20, v21, v16);
  v22 = MEMORY[0x1E696AEC0];
  screen_name = [v16 screen_name];
  v24 = [v22 stringWithFormat:@"@%@", screen_name];

  v25 = [viewCopy dequeueReusableCellWithIdentifier:@"MicroBlogMentionCell"];
  if (!v25)
  {
    v25 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"MicroBlogMentionCell"];
  }

  [v25 setOpaque:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v25 setBackgroundColor:clearColor];

  textLabel = [v25 textLabel];
  [textLabel setText:v24];

  name = [v16 name];

  if (name)
  {
    name2 = [v16 name];
    detailTextLabel = [v25 detailTextLabel];
    [detailTextLabel setText:name2];
  }

  profileImageCache = [v16 profileImageCache];
  imageView = [v25 imageView];
  [imageView setImage:profileImageCache];

  imageView2 = [v25 imageView];
  image = [imageView2 image];

  if (!image)
  {
    WeakRetained = objc_loadWeakRetained(&self->_sheetDelegate);
    v36 = objc_opt_respondsToSelector();

    if (v36)
    {
      v37 = objc_loadWeakRetained(&self->_sheetDelegate);
      screen_name2 = [v16 screen_name];
      v39 = [v37 cachedProfileImageDataForScreenName:screen_name2];

      if (v39)
      {
        v40 = [MEMORY[0x1E69DCAB8] imageWithData:v39];
        imageView3 = [v25 imageView];
        [imageView3 setImage:v40];
      }
    }
  }

  imageView4 = [v25 imageView];
  image2 = [imageView4 image];

  if (!image2)
  {
    v44 = +[SLMicroBlogMentionsViewController _blankSurrogateProfileImage];
    [v16 setProfileImageCache:v44];

    profileImageCache2 = [v16 profileImageCache];
    imageView5 = [v25 imageView];
    [imageView5 setImage:profileImageCache2];

    _SLLog(v4, 7, @"Mentions will fetch profile image for userRecord %@", v47, v48, v49, v50, v51, v16);
    v52 = objc_loadWeakRetained(&self->_sheetDelegate);
    screen_name3 = [v16 screen_name];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __69__SLMicroBlogMentionsViewController_tableView_cellForRowAtIndexPath___block_invoke;
    v55[3] = &unk_1E81766B0;
    v56 = v16;
    selfCopy = self;
    v58 = viewCopy;
    [v52 fetchProfileImageDataForScreenName:screen_name3 completion:v55];
  }

  return v25;
}

void __69__SLMicroBlogMentionsViewController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  _SLLog(v3, 7, @"Mentions did fetch profile image data %lx error %{public}@ for userRecord %@", v7, v8, v9, v10, v11, v6);
  if (v6 && !a3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__SLMicroBlogMentionsViewController_tableView_cellForRowAtIndexPath___block_invoke_2;
    block[3] = &unk_1E8176028;
    v13 = *(a1 + 32);
    v12 = v13.i64[0];
    v15 = vextq_s8(v13, v13, 8uLL);
    v16 = v6;
    v17 = *(a1 + 48);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __69__SLMicroBlogMentionsViewController_tableView_cellForRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  v19 = [*(a1 + 32) mentions];
  v3 = [v19 indexOfObject:*(a1 + 40)];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = v3;
    v5 = [MEMORY[0x1E69DCAB8] imageWithData:*(a1 + 48)];
    _SLLog(v1, 7, @"Mentions built image %@ for userRecord %@", v6, v7, v8, v9, v10, v5);
    if (v5)
    {
      [*(a1 + 40) setProfileImageCache:v5];
      v11 = MEMORY[0x1E695DEC8];
      v12 = [MEMORY[0x1E696AC88] indexPathForRow:v4 inSection:0];
      v13 = [v11 arrayWithObject:v12];

      _SLLog(v1, 7, @"Mentions refreshing row %@ for userRecord %@", v14, v15, v16, v17, v18, v13);
      [*(a1 + 56) reloadRowsAtIndexPaths:v13 withRowAnimation:100];
    }
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  [cellCopy setOpaque:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [cellCopy setBackgroundColor:clearColor];
}

- (void)chooseRow:(int64_t)row
{
  v6 = [(NSArray *)self->_mentions objectAtIndex:row];
  screen_name = [v6 screen_name];
  v5 = [screen_name stringByAppendingString:@" "];

  [(SLMicroBlogMentionsViewController *)self completeWithSelectedMention:v5];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  _SLLog(v4, 7, @"SLMicroBlogMentionsViewController didSelectRowAtIndexPath: %@", v7, v8, v9, v10, v11, pathCopy);
  v12 = [pathCopy indexAtPosition:1];

  [(SLMicroBlogMentionsViewController *)self chooseRow:v12];
}

+ (id)_blankSurrogateProfileImage
{
  v2 = _blankSurrogateProfileImage___blankImage;
  if (!_blankSurrogateProfileImage___blankImage)
  {
    v8.width = 50.0;
    v8.height = 50.0;
    UIGraphicsBeginImageContext(v8);
    CurrentContext = UIGraphicsGetCurrentContext();
    UIGraphicsPushContext(CurrentContext);
    UIGraphicsPopContext();
    v4 = UIGraphicsGetImageFromCurrentImageContext();
    v5 = _blankSurrogateProfileImage___blankImage;
    _blankSurrogateProfileImage___blankImage = v4;

    UIGraphicsEndImageContext();
    v2 = _blankSurrogateProfileImage___blankImage;
  }

  return v2;
}

- (SLMicroBlogMentionsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end