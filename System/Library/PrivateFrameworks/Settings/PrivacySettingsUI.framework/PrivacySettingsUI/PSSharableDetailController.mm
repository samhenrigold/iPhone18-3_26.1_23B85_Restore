@interface PSSharableDetailController
- (void)shareLog;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PSSharableDetailController

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = PSSharableDetailController;
  [(PSDetailController *)&v10 viewWillAppear:appear];
  v4 = objc_alloc_init(MEMORY[0x277D75788]);
  [v4 configureWithOpaqueBackground];
  navigationItem = [(PSSharableDetailController *)self navigationItem];
  [navigationItem setStandardAppearance:v4];

  navigationItem2 = [(PSSharableDetailController *)self navigationItem];
  [navigationItem2 setCompactAppearance:v4];

  navigationItem3 = [(PSSharableDetailController *)self navigationItem];
  [navigationItem3 setScrollEdgeAppearance:v4];

  v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:9 target:self action:sel_shareLog];
  navigationItem4 = [(PSSharableDetailController *)self navigationItem];
  [navigationItem4 setRightBarButtonItem:v8];
}

- (void)shareLog
{
  v16[1] = *MEMORY[0x277D85DE8];
  specifier = [(PSSharableDetailController *)self specifier];
  v4 = [specifier propertyForKey:*MEMORY[0x277D3F908]];

  if ([v4 length])
  {
    v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4 isDirectory:0];
    v6 = objc_alloc(MEMORY[0x277D546D8]);
    v16[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v8 = [v6 initWithActivityItems:v7 applicationActivities:0];

    v9 = *MEMORY[0x277D54740];
    v15[0] = *MEMORY[0x277D54718];
    v15[1] = v9;
    v10 = *MEMORY[0x277D54780];
    v15[2] = *MEMORY[0x277D54708];
    v15[3] = v10;
    v15[4] = *MEMORY[0x277D54778];
    v15[5] = @"com.apple.mobilenotes.SharingExtension";
    v15[6] = @"com.apple.reminders.RemindersEditorExtension";
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:7];
    [v8 setExcludedActivityTypes:v11];

    navigationItem = [(PSSharableDetailController *)self navigationItem];
    rightBarButtonItem = [navigationItem rightBarButtonItem];
    popoverPresentationController = [v8 popoverPresentationController];
    [popoverPresentationController setBarButtonItem:rightBarButtonItem];

    [(PSSharableDetailController *)self presentViewController:v8 animated:1 completion:0];
  }
}

@end