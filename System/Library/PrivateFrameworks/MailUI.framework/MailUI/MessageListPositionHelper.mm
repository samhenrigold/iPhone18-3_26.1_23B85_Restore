@interface MessageListPositionHelper
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset;
- (CGRect)_visibleRectInMessageList;
- (MessageListPositionHelper)initWithCollectionView:(id)view dataSource:(id)source;
- (NSArray)actuallyVisibleItemIDs;
- (id)_firstVisibleIndexPathForCollectionView:(id)view;
- (void)_calculateStartingPositionForCollectionView:(id)view dataSource:(id)source;
- (void)recalculateFirstVisibleIndex;
- (void)setUserIsScrolling:(BOOL)scrolling;
@end

@implementation MessageListPositionHelper

uint64_t ___ef_log_MessageListPositionHelper_block_invoke()
{
  v0 = os_log_create("com.apple.email", "MessageListPositionHelper");
  v1 = _ef_log_MessageListPositionHelper_log;
  _ef_log_MessageListPositionHelper_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (MessageListPositionHelper)initWithCollectionView:(id)view dataSource:(id)source
{
  viewCopy = view;
  sourceCopy = source;
  v12.receiver = self;
  v12.super_class = MessageListPositionHelper;
  v9 = [(MessageListPositionHelper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_collectionView, view);
    objc_storeStrong(&v10->_dataSource, source);
    [(MessageListPositionHelper *)v10 _calculateStartingPositionForCollectionView:viewCopy dataSource:sourceCopy];
  }

  return v10;
}

- (void)setUserIsScrolling:(BOOL)scrolling
{
  if (self->_userIsScrolling != scrolling)
  {
    self->_userIsScrolling = scrolling;
    if (!scrolling)
    {
      [(MessageListPositionHelper *)self recalculateFirstVisibleIndex];
    }
  }
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v44 = *MEMORY[0x277D85DE8];
  if (![(MessageListPositionHelper *)self userIsScrolling])
  {
    firstVisibleItemID = [(MessageListPositionHelper *)self firstVisibleItemID];

    if (firstVisibleItemID)
    {
      dataSource = [(MessageListPositionHelper *)self dataSource];
      firstVisibleItemID2 = [(MessageListPositionHelper *)self firstVisibleItemID];
      v9 = [dataSource indexPathForItemIdentifier:firstVisibleItemID2];

      if (!v9)
      {
        v13 = _ef_log_MessageListPositionHelper(v10);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          LOWORD(v34) = 0;
          v14 = "Item no longer present in list. Not adjusting content offset.";
          v15 = v13;
          v16 = 2;
          goto LABEL_10;
        }

LABEL_19:

        goto LABEL_20;
      }

      item = [v9 item];
      firstVisibleIndex = [(MessageListPositionHelper *)self firstVisibleIndex];
      if (item == firstVisibleIndex)
      {
        v13 = _ef_log_MessageListPositionHelper(firstVisibleIndex);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v34 = 134217984;
          v35 = item;
          v14 = "First visible index (%ld) unchanged. Not adjusting content offset.";
          v15 = v13;
          v16 = 12;
LABEL_10:
          _os_log_impl(&dword_214A5E000, v15, OS_LOG_TYPE_INFO, v14, &v34, v16);
          goto LABEL_19;
        }

        goto LABEL_19;
      }

      v17 = firstVisibleIndex;
      collectionView = [(MessageListPositionHelper *)self collectionView];
      v13 = collectionView;
      if (v17 > 2)
      {
        v25 = [collectionView cellForItemAtIndexPath:v9];
        [v25 frame];
        v27 = v26;

        [(MessageListPositionHelper *)self firstVisibleCellOrigin];
        v29 = v27 - v28;
        startingContentOffset = [(MessageListPositionHelper *)self startingContentOffset];
        y = v31 + v29;
        v21 = _ef_log_MessageListPositionHelper(startingContentOffset);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v34 = 134219010;
          v35 = item;
          v36 = 2114;
          v37 = v9;
          v38 = 2048;
          v39 = v27;
          v40 = 2048;
          v41 = v29;
          v42 = 2048;
          v43 = y;
          v22 = "targetContentOffsetForProposedContentOffset - index:%ld indexPath:%{public}@ cellOrigin:%f cellDelta:%f offset:%f";
          v23 = v21;
          v24 = 52;
          goto LABEL_17;
        }
      }

      else
      {
        if (item <= v17)
        {
          goto LABEL_19;
        }

        adjustedContentInset = [collectionView adjustedContentInset];
        y = -v20;
        v21 = _ef_log_MessageListPositionHelper(adjustedContentInset);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v34 = 134217984;
          v35 = item;
          v22 = "Pinning to top - new first visible index %ld";
          v23 = v21;
          v24 = 12;
LABEL_17:
          _os_log_impl(&dword_214A5E000, v23, OS_LOG_TYPE_DEFAULT, v22, &v34, v24);
        }
      }

      x = 0.0;
      goto LABEL_19;
    }

    [(MessageListPositionHelper *)self recalculateFirstVisibleIndex];
  }

LABEL_20:
  v32 = x;
  v33 = y;
  result.y = v33;
  result.x = v32;
  return result;
}

- (void)recalculateFirstVisibleIndex
{
  collectionView = [(MessageListPositionHelper *)self collectionView];
  dataSource = [(MessageListPositionHelper *)self dataSource];
  [(MessageListPositionHelper *)self _calculateStartingPositionForCollectionView:collectionView dataSource:dataSource];
}

- (NSArray)actuallyVisibleItemIDs
{
  [(MessageListPositionHelper *)self _visibleRectInMessageList];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  collectionView = [(MessageListPositionHelper *)self collectionView];
  v12 = [(MessageListPositionHelper *)self _sortedIndexPathsForVisibleItemsInCollectionView:collectionView];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__MessageListPositionHelper_actuallyVisibleItemIDs__block_invoke;
  v15[3] = &unk_278189238;
  v15[4] = self;
  v15[5] = v4;
  v15[6] = v6;
  v15[7] = v8;
  v15[8] = v10;
  v13 = [v12 ef_compactMap:v15];

  return v13;
}

id __51__MessageListPositionHelper_actuallyVisibleItemIDs__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) collectionView];
  v5 = [v4 cellForItemAtIndexPath:v3];

  [v5 frame];
  MidX = CGRectGetMidX(v12);
  [v5 frame];
  v11.y = CGRectGetMidY(v13);
  v11.x = MidX;
  if (CGRectContainsPoint(*(a1 + 40), v11))
  {
    v7 = [*(a1 + 32) dataSource];
    v8 = [v7 itemIdentifierForIndexPath:v3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGRect)_visibleRectInMessageList
{
  collectionView = [(MessageListPositionHelper *)self collectionView];
  [collectionView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  collectionView2 = [(MessageListPositionHelper *)self collectionView];
  [collectionView2 contentOffset];
  v14 = v13;

  collectionView3 = [(MessageListPositionHelper *)self collectionView];
  [collectionView3 adjustedContentInset];
  v17 = v16;
  v19 = v18;

  v20 = v14 + v17;
  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  v21 = CGRectGetHeight(v26) - v17 - v19;
  v27.origin.x = v5;
  v27.origin.y = v7;
  v27.size.width = v9;
  v27.size.height = v11;
  Width = CGRectGetWidth(v27);
  v23 = 0.0;
  v24 = v20;
  v25 = v21;
  result.size.height = v25;
  result.size.width = Width;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (id)_firstVisibleIndexPathForCollectionView:(id)view
{
  v3 = [(MessageListPositionHelper *)self _sortedIndexPathsForVisibleItemsInCollectionView:view];
  firstObject = [v3 firstObject];

  return firstObject;
}

- (void)_calculateStartingPositionForCollectionView:(id)view dataSource:(id)source
{
  v22 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  sourceCopy = source;
  v8 = [(MessageListPositionHelper *)self _firstVisibleIndexPathForCollectionView:viewCopy];
  v9 = v8;
  if (v8)
  {
    v10 = [sourceCopy itemIdentifierForIndexPath:v8];
    [(MessageListPositionHelper *)self setFirstVisibleItemID:v10];

    -[MessageListPositionHelper setFirstVisibleIndex:](self, "setFirstVisibleIndex:", [v9 item]);
    [viewCopy contentOffset];
    [(MessageListPositionHelper *)self setStartingContentOffset:v11];
    v12 = [viewCopy cellForItemAtIndexPath:v9];
    [v12 frame];
    [(MessageListPositionHelper *)self setFirstVisibleCellOrigin:v13];
  }

  v14 = _ef_log_MessageListPositionHelper(v8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    firstVisibleItemID = [(MessageListPositionHelper *)self firstVisibleItemID];
    v16 = 138543874;
    v17 = v9;
    v18 = 2114;
    v19 = firstVisibleItemID;
    v20 = 2048;
    firstVisibleIndex = [(MessageListPositionHelper *)self firstVisibleIndex];
    _os_log_impl(&dword_214A5E000, v14, OS_LOG_TYPE_INFO, "Updating starting position for first visible indexpath:%{public}@ itemID:%{public}@ index:%ld", &v16, 0x20u);
  }
}

@end