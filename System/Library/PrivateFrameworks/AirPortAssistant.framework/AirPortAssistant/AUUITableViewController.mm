@interface AUUITableViewController
- (AUUITableViewController)initWithCoder:(id)coder;
- (AUUITableViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)initAUUITableViewControllerCommon;
- (void)loadView;
- (void)setDelegate:(id)delegate;
- (void)setTableView:(id)view;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AUUITableViewController

- (void)initAUUITableViewControllerCommon
{
  if (!self->_tableManager)
  {
    v3 = objc_alloc_init(TableViewManager);
    self->_tableManager = v3;

    objc_msgSend_setDelegate_(v3, v4, self, v5);
  }
}

- (AUUITableViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v10.receiver = self;
  v10.super_class = AUUITableViewController;
  v4 = [(AUUITableViewController *)&v10 initWithNibName:name bundle:bundle];
  v8 = v4;
  if (v4)
  {
    objc_msgSend_initAUUITableViewControllerCommon(v4, v5, v6, v7);
  }

  return v8;
}

- (AUUITableViewController)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = AUUITableViewController;
  v3 = [(AUUITableViewController *)&v9 initWithCoder:coder];
  v7 = v3;
  if (v3)
  {
    objc_msgSend_initAUUITableViewControllerCommon(v3, v4, v5, v6);
  }

  return v7;
}

- (void)dealloc
{
  objc_msgSend_setTableView_(self, a2, 0, v2);
  objc_msgSend_setDelegate_(self->_tableManager, v4, 0, v5);

  self->_tableManager = 0;
  v6.receiver = self;
  v6.super_class = AUUITableViewController;
  [(AUUITableViewController *)&v6 dealloc];
}

- (void)loadView
{
  v13.receiver = self;
  v13.super_class = AUUITableViewController;
  [(AUUITableViewController *)&v13 loadView];
  v6 = objc_msgSend_tableView(self, v3, v4, v5);
  v10 = objc_msgSend_tableManager(self, v7, v8, v9);
  objc_msgSend_setManagedTableView_(v10, v11, v6, v12);
}

- (void)setTableView:(id)view
{
  objc_msgSend_initAUUITableViewControllerCommon(self, a2, view, v3);
  objc_msgSend_setManagedTableView_(self->_tableManager, v6, view, v7);
  v8.receiver = self;
  v8.super_class = AUUITableViewController;
  [(AUUITableViewController *)&v8 setTableView:view];
}

- (void)setDelegate:(id)delegate
{
  objc_msgSend_initAUUITableViewControllerCommon(self, a2, delegate, v3);
  tableManager = self->_tableManager;

  objc_msgSend_setDelegate_(tableManager, v6, delegate, v7);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  objc_msgSend_viewWillAppear_(self->_tableManager, a2, appear, v3);
  v6.receiver = self;
  v6.super_class = AUUITableViewController;
  [(AUUITableViewController *)&v6 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  objc_msgSend_viewWillDisappear_(self->_tableManager, a2, disappear, v3);
  v6.receiver = self;
  v6.super_class = AUUITableViewController;
  [(AUUITableViewController *)&v6 viewWillDisappear:disappearCopy];
}

@end