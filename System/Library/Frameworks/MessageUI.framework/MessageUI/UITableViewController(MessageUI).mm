@interface UITableViewController(MessageUI)
- (id)mf_updatePreferredContentSizeBasedOnTableView;
- (uint64_t)mf_supportsPopoverPresentation;
- (void)mf_updateTableViewBackgroundColorForPopover;
@end

@implementation UITableViewController(MessageUI)

- (id)mf_updatePreferredContentSizeBasedOnTableView
{
  objc_initWeak(&location, val);
  tableView = [val tableView];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __81__UITableViewController_MessageUI__mf_updatePreferredContentSizeBasedOnTableView__block_invoke;
  v6[3] = &unk_1E8070AA8;
  objc_copyWeak(&v8, &location);
  v7 = tableView;
  v3 = tableView;
  v4 = [v3 ef_observeKeyPath:@"contentSize" options:1 autoCancelToken:1 usingBlock:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v4;
}

- (uint64_t)mf_supportsPopoverPresentation
{
  view = [self view];
  window = [view window];
  if (!window)
  {
    presentingViewController = [self presentingViewController];
    view2 = [presentingViewController view];
    window = [view2 window];

    if (window)
    {
      goto LABEL_4;
    }

    view = [MEMORY[0x1E696AAA8] currentHandler];
    [view handleFailureInMethod:a2 object:self file:@"UITableViewController+MessageUI.m" lineNumber:31 description:@"view must have a window"];
    window = 0;
  }

LABEL_4:
  traitCollection = [window traitCollection];
  mf_supportsPopoverPresentation = [traitCollection mf_supportsPopoverPresentation];

  return mf_supportsPopoverPresentation;
}

- (void)mf_updateTableViewBackgroundColorForPopover
{
  v18 = *MEMORY[0x1E69E9840];
  mf_supportsPopoverPresentation = [self mf_supportsPopoverPresentation];
  v4 = mf_supportsPopoverPresentation;
  if (mf_supportsPopoverPresentation && !MFSolariumFeatureEnabled(mf_supportsPopoverPresentation, v3))
  {
    v6 = 0;
    systemGroupedBackgroundColor = 0;
  }

  else
  {
    systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
    v6 = 1;
  }

  tableView = [self tableView];
  [tableView setBackgroundColor:systemGroupedBackgroundColor];

  if (v6)
  {
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  tableView2 = [self tableView];
  visibleCells = [tableView2 visibleCells];

  v10 = [visibleCells countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v10)
  {
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(visibleCells);
        }

        [*(*(&v13 + 1) + 8 * v12++) mf_updateBackgroundColorForPopover:v4];
      }

      while (v10 != v12);
      v10 = [visibleCells countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

@end