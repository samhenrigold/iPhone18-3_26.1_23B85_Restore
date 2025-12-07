@interface SharingViewController
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation SharingViewController

- (void)viewDidAppear:(BOOL)appear
{
  v23.receiver = self;
  v23.super_class = SharingViewController;
  [(SharingViewController *)&v23 viewDidAppear:appear];
  view = [(SharingViewController *)self view];
  window = [view window];
  _rootSheetPresentationController = [window _rootSheetPresentationController];
  [_rootSheetPresentationController _setShouldScaleDownBehindDescendantSheets:0];

  presentationContext = [(BaseViewController *)self presentationContext];
  sharingData = [presentationContext sharingData];

  if (sharingData)
  {
    v9 = [SharingItem alloc];
    presentationContext2 = [(BaseViewController *)self presentationContext];
    sharingData2 = [presentationContext2 sharingData];
    v12 = [(SharingItem *)v9 initWithData:sharingData2];

    v13 = [UIActivityViewController alloc];
    v24 = v12;
    v14 = [NSArray arrayWithObjects:&v24 count:1];
    v15 = [v13 initWithActivityItems:v14 applicationActivities:0];

    objc_initWeak(&location, self);
    v17 = _NSConcreteStackBlock;
    v18 = 3221225472;
    v19 = sub_100002CCC;
    v20 = &unk_10000C3E8;
    objc_copyWeak(&v21, &location);
    v16 = objc_retainBlock(&v17);
    [v15 setCompletionWithItemsHandler:{v16, v17, v18, v19, v20}];
    [(SharingViewController *)self presentViewController:v15 animated:1 completion:0];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = [[UIActivityViewController alloc] initWithActivityItems:&off_10000CAE0 applicationActivities:0];
    [(SharingViewController *)self presentViewController:v12 animated:1 completion:0];
  }
}

@end