@interface SSLimitedSelectableTableView
- (SSLimitedSelectableTableView)initWithFrame:(CGRect)frame style:(int64_t)style limit:(unint64_t)limit;
- (UITableViewDelegate)viewDelegate;
- (void)_refreshTableView;
- (void)selectRowAtIndexPath:(id)path animated:(BOOL)animated scrollPosition:(int64_t)position;
- (void)setDelegate:(id)delegate;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation SSLimitedSelectableTableView

- (SSLimitedSelectableTableView)initWithFrame:(CGRect)frame style:(int64_t)style limit:(unint64_t)limit
{
  v7.receiver = self;
  v7.super_class = SSLimitedSelectableTableView;
  result = [(SSLimitedSelectableTableView *)&v7 initWithFrame:style style:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_limit = limit;
  }

  return result;
}

- (void)setDelegate:(id)delegate
{
  [(SSLimitedSelectableTableView *)self setViewDelegate:delegate];
  v4.receiver = self;
  v4.super_class = SSLimitedSelectableTableView;
  [(SSLimitedSelectableTableView *)&v4 setDelegate:self];
}

- (void)selectRowAtIndexPath:(id)path animated:(BOOL)animated scrollPosition:(int64_t)position
{
  animatedCopy = animated;
  pathCopy = path;
  indexPathsForSelectedRows = [(SSLimitedSelectableTableView *)self indexPathsForSelectedRows];
  v10 = [indexPathsForSelectedRows containsObject:pathCopy];

  if ((v10 & 1) == 0)
  {
    v13.receiver = self;
    v13.super_class = SSLimitedSelectableTableView;
    [(SSLimitedSelectableTableView *)&v13 selectRowAtIndexPath:pathCopy animated:animatedCopy scrollPosition:position];
    v11 = dispatch_time(0, 50000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__SSLimitedSelectableTableView_selectRowAtIndexPath_animated_scrollPosition___block_invoke;
    block[3] = &unk_279B44578;
    block[4] = self;
    dispatch_after(v11, MEMORY[0x277D85CD0], block);
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  [(SSLimitedSelectableTableView *)self _refreshTableView];
  viewDelegate = [(SSLimitedSelectableTableView *)self viewDelegate];
  [viewDelegate tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  [(SSLimitedSelectableTableView *)self _refreshTableView];
  viewDelegate = [(SSLimitedSelectableTableView *)self viewDelegate];
  [viewDelegate tableView:viewCopy didDeselectRowAtIndexPath:pathCopy];
}

- (void)_refreshTableView
{
  if ([(SSLimitedSelectableTableView *)self numberOfSections])
  {
    v3 = 0;
    do
    {
      if ([(SSLimitedSelectableTableView *)self numberOfRowsInSection:v3])
      {
        v4 = 0;
        do
        {
          v5 = [MEMORY[0x277CCAA70] indexPathForRow:v4 inSection:v3];
          v6 = [(SSLimitedSelectableTableView *)self cellForRowAtIndexPath:v5];
          indexPathsForSelectedRows = [(SSLimitedSelectableTableView *)self indexPathsForSelectedRows];
          v8 = [indexPathsForSelectedRows containsObject:v5];

          if (v8)
          {
            [v6 setAccessoryType:3];
          }

          else
          {
            [v6 setAccessoryType:0];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              indexPathsForSelectedRows2 = [(SSLimitedSelectableTableView *)self indexPathsForSelectedRows];
              [v6 setEnable:{objc_msgSend(indexPathsForSelectedRows2, "count") < -[SSLimitedSelectableTableView limit](self, "limit")}];
            }

            else
            {
              [v6 setUserInteractionEnabled:0];
              indexPathsForSelectedRows2 = [v6 imageView];
              systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
              [indexPathsForSelectedRows2 setTintColor:systemGrayColor];
            }
          }

          ++v4;
        }

        while (v4 < [(SSLimitedSelectableTableView *)self numberOfRowsInSection:v3]);
      }

      ++v3;
    }

    while (v3 < [(SSLimitedSelectableTableView *)self numberOfSections]);
  }
}

- (UITableViewDelegate)viewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_viewDelegate);

  return WeakRetained;
}

@end