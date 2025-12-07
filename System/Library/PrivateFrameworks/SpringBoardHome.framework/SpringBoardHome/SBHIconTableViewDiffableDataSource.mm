@interface SBHIconTableViewDiffableDataSource
- (id)sectionIndexTitlesForTableView:(id)view;
- (void)applyQueryResult:(id)result animatingDifferences:(BOOL)differences;
- (void)applyQueryResult:(id)result animatingDifferences:(BOOL)differences completion:(id)completion;
- (void)applySnapshot:(id)snapshot animatingDifferences:(BOOL)differences completion:(id)completion;
@end

@implementation SBHIconTableViewDiffableDataSource

- (id)sectionIndexTitlesForTableView:(id)view
{
  if ([(SBHIconLibraryQueryResult *)self->_queryResult sortMethodology]== 1)
  {
    totalNumberOfItems = [(SBHIconLibraryQueryResult *)self->_queryResult totalNumberOfItems];
    if (totalNumberOfItems)
    {
      totalNumberOfItems = [(SBHIconLibraryQueryResult *)self->_queryResult sectionIndexTitles];
    }
  }

  else
  {
    totalNumberOfItems = 0;
  }

  return totalNumberOfItems;
}

- (void)applyQueryResult:(id)result animatingDifferences:(BOOL)differences completion:(id)completion
{
  differencesCopy = differences;
  resultCopy = result;
  v9 = MEMORY[0x1E696AF00];
  completionCopy = completion;
  isMainThread = [v9 isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v12 = SBLogCommon(isMainThread);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [(SBHIconTableViewDiffableDataSource *)v12 applyQueryResult:v13 animatingDifferences:v14 completion:v15, v16, v17, v18, v19];
    }
  }

  queryResult = self->_queryResult;
  self->_queryResult = resultCopy;
  v21 = resultCopy;

  snapshot = [(SBHIconLibraryQueryResult *)v21 snapshot];

  [(SBHIconTableViewDiffableDataSource *)self applySnapshot:snapshot animatingDifferences:differencesCopy completion:completionCopy];
}

- (void)applyQueryResult:(id)result animatingDifferences:(BOOL)differences
{
  differencesCopy = differences;
  resultCopy = result;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v8 = SBLogCommon(isMainThread);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(SBHIconTableViewDiffableDataSource *)v8 applyQueryResult:v9 animatingDifferences:v10 completion:v11, v12, v13, v14, v15];
    }
  }

  queryResult = self->_queryResult;
  self->_queryResult = resultCopy;
  v17 = resultCopy;

  snapshot = [(SBHIconLibraryQueryResult *)v17 snapshot];

  [(UITableViewDiffableDataSource *)self applySnapshot:snapshot animatingDifferences:differencesCopy];
}

- (void)applySnapshot:(id)snapshot animatingDifferences:(BOOL)differences completion:(id)completion
{
  differencesCopy = differences;
  snapshotCopy = snapshot;
  completionCopy = completion;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v11 = SBLogCommon(isMainThread);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(SBHIconTableViewDiffableDataSource *)v11 applyQueryResult:v12 animatingDifferences:v13 completion:v14, v15, v16, v17, v18];
    }
  }

  v19.receiver = self;
  v19.super_class = SBHIconTableViewDiffableDataSource;
  [(UITableViewDiffableDataSource *)&v19 applySnapshot:snapshotCopy animatingDifferences:differencesCopy completion:completionCopy];
}

@end