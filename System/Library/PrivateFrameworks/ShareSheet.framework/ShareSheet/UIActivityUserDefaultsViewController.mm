@interface UIActivityUserDefaultsViewController
@end

@implementation UIActivityUserDefaultsViewController

id __52___UIActivityUserDefaultsViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained _provideCellForTableView:v9 indexPath:v8 itemIdentifier:v7];

  return v11;
}

void __91___UIActivityUserDefaultsViewController__provideCellForTableView_indexPath_itemIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) activityProxy];
  v4 = [v3 identifier];
  v5 = [v4 isEqual:*(a1 + 40)];

  if (v5)
  {
    v6 = [*(a1 + 32) activityImageView];
    [v6 setImage:v7];
  }
}

void __91___UIActivityUserDefaultsViewController__provideCellForTableView_indexPath_itemIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) activityProxy];
  v4 = [v3 identifier];
  v5 = [v4 isEqual:*(a1 + 40)];

  if (v5)
  {
    v6 = [*(a1 + 32) activityImageView];
    [v6 setImage:v7];
  }
}

void __91___UIActivityUserDefaultsViewController__provideCellForTableView_indexPath_itemIdentifier___block_invoke_3(uint64_t a1)
{
  v22 = [MEMORY[0x1E6979320] objectForSlot:*(a1 + 48)];
  v2 = *MEMORY[0x1E6979DE0];
  v3 = [*(a1 + 32) activityImageSlotView];
  v4 = [v3 layer];
  [v4 setContentsGravity:v2];

  v5 = [*(a1 + 32) activityImageSlotView];
  v6 = [v5 layer];
  [v6 setContents:v22];

  v7 = [MEMORY[0x1E6979320] objectForSlot:*(a1 + 52)];
  v9 = _ShareSheetDeviceScreenScale(v7, v8);
  v10 = [*(a1 + 32) activityTitleView];
  v11 = [v10 layer];
  [v11 setContentsScale:v9];

  v14 = _ShareSheetDeviceScreenScale(v12, v13);
  v15 = [*(a1 + 32) activityTitleView];
  v16 = [v15 layer];
  [v16 setRasterizationScale:v14];

  v17 = *(a1 + 40);
  v18 = [*(a1 + 32) activityTitleView];
  v19 = [v18 layer];
  [v19 setContentsGravity:v17];

  v20 = [*(a1 + 32) activityTitleView];
  v21 = [v20 layer];
  [v21 setContents:v7];
}

@end