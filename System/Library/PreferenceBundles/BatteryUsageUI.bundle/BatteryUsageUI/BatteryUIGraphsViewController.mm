@interface BatteryUIGraphsViewController
- (BOOL)validateDictionary:(id)dictionary;
- (BatteryUIGraphsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (UIActivityIndicatorView)activityIndicator;
- (void)didReceiveMemoryWarning;
- (void)reportIssue;
- (void)setUpModelingView:(id)view;
- (void)viewDidLoad;
@end

@implementation BatteryUIGraphsViewController

- (UIActivityIndicatorView)activityIndicator
{
  activityIndicator = self->_activityIndicator;
  if (!activityIndicator)
  {
    v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:2];
    v5 = self->_activityIndicator;
    self->_activityIndicator = v4;

    [(UIActivityIndicatorView *)self->_activityIndicator setSize:50.0, 50.0];
    view = [(BatteryUIGraphsViewController *)self view];
    [view center];
    [(UIActivityIndicatorView *)self->_activityIndicator setCenter:?];

    activityIndicator = self->_activityIndicator;
  }

  return activityIndicator;
}

- (BatteryUIGraphsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = BatteryUIGraphsViewController;
  v4 = [(BatteryUIGraphsViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(BatteryUIGraphsViewController *)v4 setTitle:@"Modeling Details"];
  }

  return v5;
}

- (BOOL)validateDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"ModelData"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)setUpModelingView:(id)view
{
  viewCopy = view;
  if ([(BatteryUIGraphsViewController *)self validateDictionary:viewCopy])
  {
    objc_storeStrong(&self->_currentDictionary, view);
    v58 = viewCopy;
    v6 = [viewCopy objectForKeyedSubscript:@"ModelData"];
    v7 = [UIScrollView alloc];
    navigationController = [(BatteryUIGraphsViewController *)self navigationController];
    [navigationController navigationBar];
    v9 = v59 = self;
    [v9 frame];
    v10 = 20.0;
    v12 = v11 + 20.0;
    view = [(BatteryUIGraphsViewController *)self view];
    [view frame];
    v15 = v14;
    view2 = [(BatteryUIGraphsViewController *)self view];
    [view2 frame];
    v18 = v17;
    navigationController2 = [(BatteryUIGraphsViewController *)self navigationController];
    navigationBar = [navigationController2 navigationBar];
    [navigationBar frame];
    v22 = [v7 initWithFrame:{0.0, v12, v15, v18 - v21}];
    [(BatteryUIGraphsViewController *)self setRootScrollView:v22];

    view3 = [(BatteryUIGraphsViewController *)self view];
    rootScrollView = [(BatteryUIGraphsViewController *)self rootScrollView];
    [view3 addSubview:rootScrollView];

    selfCopy = self;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = v6;
    v26 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = 20;
      v29 = &UITableViewAutomaticDimension_ptr;
      v30 = *v62;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v62 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v61 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v33 = [UILabel alloc];
            rootScrollView2 = [(BatteryUIGraphsViewController *)selfCopy rootScrollView];
            [rootScrollView2 frame];
            v36 = [v33 initWithFrame:{10.0, v28, v35 + -20.0, 20.0}];

            v37 = [v32 objectForKeyedSubscript:@"ModelGraphName"];
            [v36 setText:v37];

            [v36 frame];
            [v36 sizeThatFits:{v38, v39}];
            rootScrollView3 = [(BatteryUIGraphsViewController *)selfCopy rootScrollView];
            [rootScrollView3 addSubview:v36];

            v41 = v30;
            v42 = v29;
            v43 = [PLBatteryUIGraphViewInternal alloc];
            rootScrollView4 = [(BatteryUIGraphsViewController *)selfCopy rootScrollView];
            [rootScrollView4 frame];
            v46 = v45 + -20.0;
            v47 = +[PLBatteryUIGraphViewInternal graphHeight];
            v48 = [v32 objectForKeyedSubscript:@"ModelGraphArray"];
            v49 = [(PLBatteryUIGraphViewInternal *)v43 initWithFrame:v48 andData:10.0, (v28 + 20), v46, v47];

            selfCopy = v59;
            v50 = [v32 objectForKeyedSubscript:@"ModelGraphType"];
            -[PLBatteryUIGraphViewInternal setGraphType:](v49, "setGraphType:", [v50 intValue]);

            rootScrollView5 = [(BatteryUIGraphsViewController *)v59 rootScrollView];
            [rootScrollView5 addSubview:v49];

            v29 = v42;
            v30 = v41;
            v28 += +[PLBatteryUIGraphViewInternal graphHeight]+ 40;
          }
        }

        v27 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
      }

      while (v27);
      v10 = v28;
    }

    rootScrollView6 = [(BatteryUIGraphsViewController *)selfCopy rootScrollView];
    [rootScrollView6 frame];
    v54 = v53;
    rootScrollView7 = [(BatteryUIGraphsViewController *)selfCopy rootScrollView];
    [rootScrollView7 setContentSize:{v54, v10}];

    rootScrollView8 = [(BatteryUIGraphsViewController *)selfCopy rootScrollView];
    [rootScrollView8 setScrollEnabled:1];

    view4 = [(BatteryUIGraphsViewController *)selfCopy view];
    [view4 setUserInteractionEnabled:1];

    viewCopy = v58;
  }
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = BatteryUIGraphsViewController;
  [(BatteryUIGraphsViewController *)&v15 viewDidLoad];
  view = [(BatteryUIGraphsViewController *)self view];
  activityIndicator = [(BatteryUIGraphsViewController *)self activityIndicator];
  [view addSubview:activityIndicator];

  v5 = [UIBarButtonItem alloc];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [UIImage imageNamed:@"radar.png" inBundle:v6];
  v8 = [v5 initWithImage:v7 style:0 target:self action:"reportIssue"];
  navigationItem = [(BatteryUIGraphsViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v8];

  view2 = [(BatteryUIGraphsViewController *)self view];
  v11 = +[UIColor whiteColor];
  [view2 setBackgroundColor:v11];

  activityIndicator2 = [(BatteryUIGraphsViewController *)self activityIndicator];
  [activityIndicator2 startAnimating];

  v13 = +[BatteryUsageQueryModule sharedModule];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_5A64;
  v14[3] = &unk_1638C0;
  v14[4] = self;
  [v13 populateBatteryModelsWithCompletion:v14];
}

- (void)reportIssue
{
  v3 = [[BatteryUsageRadarComposeViewController alloc] initWithParentView:self andDictionary:self->_currentDictionary];
  [(BatteryUIGraphsViewController *)self setRadarController:v3];

  radarController = [(BatteryUIGraphsViewController *)self radarController];
  [radarController showRadarComposeAlert];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = BatteryUIGraphsViewController;
  [(BatteryUIGraphsViewController *)&v2 didReceiveMemoryWarning];
}

@end