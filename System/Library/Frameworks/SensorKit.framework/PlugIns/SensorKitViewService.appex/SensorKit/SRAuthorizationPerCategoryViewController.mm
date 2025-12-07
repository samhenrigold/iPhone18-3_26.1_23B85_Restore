@interface SRAuthorizationPerCategoryViewController
+ (id)perCategoryViewControllerWithBundle:(id)bundle services:(id)services authStore:(id)store completionHandler:(id)handler cancelHandler:(id)cancelHandler;
+ (void)initialize;
- (id)currentAuthGroup;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)cancelPrompt;
- (void)dealloc;
- (void)deny;
- (void)showNextAuthFlowPerCategory:(BOOL)category;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SRAuthorizationPerCategoryViewController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_100015F38 = os_log_create("com.apple.SensorKit", "SRAuthorizationPerCategoryViewController");
  }
}

+ (id)perCategoryViewControllerWithBundle:(id)bundle services:(id)services authStore:(id)store completionHandler:(id)handler cancelHandler:(id)cancelHandler
{
  v12 = objc_alloc_init(SRAuthorizationPerCategoryViewController);
  [(SRAuthorizationPerCategoryViewController *)v12 setAppBundle:bundle];
  [(SRAuthorizationPerCategoryViewController *)v12 setServices:services];
  [(SRAuthorizationPerCategoryViewController *)v12 setAuthIndex:0];
  v13 = [NSMutableArray arrayWithCapacity:[(NSArray *)[(SRAuthorizationPerCategoryViewController *)v12 services] count]];
  if ([(NSArray *)[(SRAuthorizationPerCategoryViewController *)v12 services] count])
  {
    v14 = 0;
    do
    {
      [(NSMutableArray *)v13 addObject:&off_100010808];
      ++v14;
    }

    while (v14 < [(NSArray *)[(SRAuthorizationPerCategoryViewController *)v12 services] count]);
  }

  [(SRAuthorizationPerCategoryViewController *)v12 setAuthState:v13];
  [(SRAuthorizationPerCategoryViewController *)v12 setCompletionHandler:handler];
  [(SRAuthorizationPerCategoryViewController *)v12 setCancelHandler:cancelHandler];
  [(SRAuthorizationPerCategoryViewController *)v12 setAuthStore:store];

  return v12;
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = SRAuthorizationPerCategoryViewController;
  [(SRAuthorizationPerCategoryViewController *)&v9 viewDidLoad];
  [-[SRAuthorizationPerCategoryViewController tableView](self "tableView")];
  [-[SRAuthorizationPerCategoryViewController tableView](self "tableView")];
  [-[SRAuthorizationPerCategoryViewController tableView](self "tableView")];
  v8 = 0;
  [-[SRAuthorizationPerCategoryViewController navigationItem](self "navigationItem")];
  if (![-[SRAuthorizationPerCategoryViewController navigationItem](self "navigationItem")])
  {
    v5 = qword_100015F38;
    if (os_log_type_enabled(qword_100015F38, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v11 = v8;
      _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "Failed to localize string because %{public}@", buf, 0xCu);
    }
  }

  [-[SRAuthorizationPerCategoryViewController navigationItem](self "navigationItem")];
  [-[SRAuthorizationPerCategoryViewController navigationItem](self "navigationItem")];
  v6 = [UIView alloc];
  [-[SRAuthorizationPerCategoryViewController tableView](self "tableView")];
  [-[SRAuthorizationPerCategoryViewController tableView](self "tableView")];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = SRAuthorizationPerCategoryViewController;
  [(SRAuthorizationPerCategoryViewController *)&v8 viewWillAppear:appear];
  currentAuthGroup = [(SRAuthorizationPerCategoryViewController *)self currentAuthGroup];
  [-[SRAuthorizationPerCategoryViewController view](self "view")];
  [-[SRAuthorizationPerCategoryViewController tableView](self "tableView")];
  v7 = [-[SRAuthorizationPerCategoryViewController navigationController](self "navigationController")];
  v9 = NSForegroundColorAttributeName;
  v10 = +[UIColor systemGrayColor];
  [v7 setTitleTextAttributes:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v10, &v9, 1)}];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = [-[SRAuthorizationPerCategoryViewController navigationController](self "navigationController")];
  v7 = NSForegroundColorAttributeName;
  v8 = +[UIColor labelColor];
  [v5 setTitleTextAttributes:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v8, &v7, 1)}];
  v6.receiver = self;
  v6.super_class = SRAuthorizationPerCategoryViewController;
  [(SRAuthorizationPerCategoryViewController *)&v6 viewWillDisappear:disappearCopy];
}

- (void)dealloc
{
  [(SRAuthorizationPerCategoryViewController *)self setAuthState:0];
  [(SRAuthorizationPerCategoryViewController *)self setServices:0];
  [(SRAuthorizationPerCategoryViewController *)self setAppBundle:0];
  [(SRAuthorizationPerCategoryViewController *)self setCompletionHandler:0];
  [(SRAuthorizationPerCategoryViewController *)self setCancelHandler:0];
  [(SRAuthorizationPerCategoryViewController *)self setBoldButton:0];
  [(SRAuthorizationPerCategoryViewController *)self setHeightAnchor:0];

  self->_currentAuthGroup = 0;
  [(SRAuthorizationPerCategoryViewController *)self setAuthStore:0];
  v3.receiver = self;
  v3.super_class = SRAuthorizationPerCategoryViewController;
  [(SRAuthorizationPerCategoryViewController *)&v3 dealloc];
}

- (id)currentAuthGroup
{
  result = self->_currentAuthGroup;
  if (!result)
  {
    result = [SRAuthorizationGroup authorizationGroupWithServiceName:[(NSArray *)[(SRAuthorizationPerCategoryViewController *)self services] objectAtIndexedSubscript:[(SRAuthorizationPerCategoryViewController *)self authIndex]]];
    self->_currentAuthGroup = result;
  }

  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = [path row];
  switch(v6)
  {
    case 2u:
      tableView = [(SRAuthorizationPerCategoryViewController *)self tableView];
      v13 = objc_opt_class();
      v7 = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass(v13)];
      if (!v7)
      {
        v14 = [SRButtonTrayCell alloc];
        v15 = objc_opt_class();
        v7 = [(SRButtonTrayCell *)v14 initWithStyle:0 reuseIdentifier:NSStringFromClass(v15)];
        [-[SRAuthorizationPerCategoryViewController tableView](self "tableView")];
        [-[SRButtonTrayCell contentView](v7 "contentView")];
      }

      [(UIButton *)[(SRButtonTrayCell *)v7 firstButton] setTitle:[NSString forState:"srui_localizedStringForCode:" srui_localizedStringForCode:?], 0];
      [(UIButton *)[(SRButtonTrayCell *)v7 secondButton] setTitle:[NSString forState:"srui_localizedStringForCode:" srui_localizedStringForCode:?], 0];
      [(UIButton *)[(SRButtonTrayCell *)v7 firstButton] addTarget:self action:"allow" forControlEvents:64];
      [(UIButton *)[(SRButtonTrayCell *)v7 secondButton] addTarget:self action:"deny" forControlEvents:64];
      return v7;
    case 1u:

      return [UITableViewCell skui_tableViewCellForDataSample:view];
    case 0u:
      v7 = +[SRAuthorizationCategoryDetailCell categoryDetailCellForAuthGroup:bundle:titleFont:bodyFont:textColor:OBKStyle:](SRAuthorizationCategoryDetailCell, "categoryDetailCellForAuthGroup:bundle:titleFont:bodyFont:textColor:OBKStyle:", [(SRAuthorizationPerCategoryViewController *)self currentAuthGroup], [(SRAuthorizationPerCategoryViewController *)self appBundle], +[UIFont fontWithDescriptor:size:](UIFont, "fontWithDescriptor:size:", [+[UIFontDescriptor preferredFontDescriptorWithTextStyle:](UIFontDescriptor fontDescriptorWithSymbolicTraits:UIFontTextStyleBody), "fontDescriptorWithSymbolicTraits:", 2], 0.0), +[UIFont preferredFontForTextStyle:](UIFont, "preferredFontForTextStyle:", UIFontTextStyleBody), +[UIColor labelColor], 1);
      [-[SRButtonTrayCell categorySubTitleLabel](v7 "categorySubTitleLabel")];
      v8 = [-[SRAuthorizationPerCategoryViewController currentAuthGroup](self "currentAuthGroup")];
      if ([v8 length])
      {
        v9 = objc_opt_new();
        LODWORD(v10) = 0.5;
        [v9 setHyphenationFactor:v10];
        v22 = NSParagraphStyleAttributeName;
        v23 = v9;
        v11 = [[NSAttributedString alloc] initWithString:v8 attributes:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v23, &v22, 1)}];
      }

      else
      {
        v11 = 0;
      }

      [-[SRButtonTrayCell categoryTitleLabel](v7 "categoryTitleLabel")];
      [-[SRAuthorizationPerCategoryViewController tableView](self "tableView")];
      [-[SRButtonTrayCell contentView](v7 "contentView")];
      return v7;
    default:
      v18 = objc_opt_new();

      return v18;
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  if ([path row] && objc_msgSend(path, "row") != 1)
  {

    [cell setSeparatorStyle:0];
  }

  else
  {
    [cell setSeparatorStyle:1];
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;

    [cell setSeparatorInset:{UIEdgeInsetsZero.top, left, bottom, right}];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  if ([path row] == 1)
  {
    [-[SRAuthorizationPerCategoryViewController navigationController](self "navigationController")];
  }

  [view deselectRowAtIndexPath:path animated:0];
}

- (void)showNextAuthFlowPerCategory:(BOOL)category
{
  [(NSMutableArray *)[(SRAuthorizationPerCategoryViewController *)self authState] setObject:[NSNumber atIndexedSubscript:"numberWithBool:" numberWithBool:category], [(SRAuthorizationPerCategoryViewController *)self authIndex]];
  authIndex = [(SRAuthorizationPerCategoryViewController *)self authIndex];
  if ([(NSArray *)[(SRAuthorizationPerCategoryViewController *)self services] count]- 1 == authIndex)
  {
    v5 = [[SRAuthorizationConfirmationViewController alloc] initWithTitle:[NSString srui_localizedStringForCode:48]];
    [(SRAuthorizationConfirmationViewController *)v5 setAppBundle:[(SRAuthorizationPerCategoryViewController *)self appBundle]];
    [(SRAuthorizationConfirmationViewController *)v5 setServices:[(SRAuthorizationPerCategoryViewController *)self services]];
    [(SRAuthorizationConfirmationViewController *)v5 setAuthState:[(SRAuthorizationPerCategoryViewController *)self authState]];
    [(SRAuthorizationConfirmationViewController *)v5 setCompletionHandler:[(SRAuthorizationPerCategoryViewController *)self completionHandler]];
    [(SRAuthorizationConfirmationViewController *)v5 setCancelHandler:[(SRAuthorizationPerCategoryViewController *)self cancelHandler]];
    [(SRAuthorizationConfirmationViewController *)v5 setAuthStore:[(SRAuthorizationPerCategoryViewController *)self authStore]];
    navigationController = [(SRAuthorizationPerCategoryViewController *)self navigationController];

    [navigationController pushViewController:v5 animated:1];
  }

  else
  {
    v7 = objc_alloc_init(SRAuthorizationPerCategoryViewController);
    [(SRAuthorizationPerCategoryViewController *)v7 setAppBundle:[(SRAuthorizationPerCategoryViewController *)self appBundle]];
    [(SRAuthorizationPerCategoryViewController *)v7 setServices:[(SRAuthorizationPerCategoryViewController *)self services]];
    [(SRAuthorizationPerCategoryViewController *)v7 setAuthState:[(SRAuthorizationPerCategoryViewController *)self authState]];
    [(SRAuthorizationPerCategoryViewController *)v7 setAuthIndex:[(SRAuthorizationPerCategoryViewController *)self authIndex]+ 1];
    [(SRAuthorizationPerCategoryViewController *)v7 setCompletionHandler:[(SRAuthorizationPerCategoryViewController *)self completionHandler]];
    [(SRAuthorizationPerCategoryViewController *)v7 setCancelHandler:[(SRAuthorizationPerCategoryViewController *)self cancelHandler]];
    [(SRAuthorizationPerCategoryViewController *)v7 setAuthStore:[(SRAuthorizationPerCategoryViewController *)self authStore]];
    [-[SRAuthorizationPerCategoryViewController navigationController](self "navigationController")];
  }
}

- (void)deny
{
  objc_initWeak(&location, self);
  appBundle = [(SRAuthorizationPerCategoryViewController *)self appBundle];
  currentAuthGroup = [(SRAuthorizationPerCategoryViewController *)self currentAuthGroup];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_100005F08;
  v9 = &unk_100010510;
  objc_copyWeak(&v10, &location);
  v5 = [UIAlertController skui_alertControllerForRequiredAuthorizationIfNeccesaryForBundle:appBundle authGroup:currentAuthGroup destructiveHandler:&v6];
  if (v5)
  {
    [(SRAuthorizationPerCategoryViewController *)self presentViewController:v5 animated:1 completion:0, v6, v7, v8, v9];
  }

  else
  {
    [(SRAuthorizationPerCategoryViewController *)self showNextAuthFlowPerCategory:v6, v7, v8, v9];
  }

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)cancelPrompt
{
  v2 = *([(SRAuthorizationPerCategoryViewController *)self cancelHandler]+ 2);

  v2();
}

@end