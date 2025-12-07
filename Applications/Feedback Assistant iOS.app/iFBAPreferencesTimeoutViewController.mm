@interface iFBAPreferencesTimeoutViewController
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)rowForTimeout:(int64_t)timeout;
- (int64_t)timeoutForRow:(int64_t)row;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation iFBAPreferencesTimeoutViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = iFBAPreferencesTimeoutViewController;
  [(iFBAPreferencesTimeoutViewController *)&v4 viewDidLoad];
  tableView = [(iFBAPreferencesTimeoutViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"TimeoutCell"];
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = iFBAPreferencesTimeoutViewController;
  [(iFBAPreferencesTimeoutViewController *)&v10 viewWillAppear:appear];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"TOUCH_ID_REQUIRE" value:&stru_1000E2210 table:0];
  navigationItem = [(iFBAPreferencesTimeoutViewController *)self navigationItem];
  [navigationItem setTitle:v5];

  if (+[iFBKUtils deviceSupportsFaceID])
  {
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"FACE_ID_REQUIRE" value:&stru_1000E2210 table:0];
    navigationItem2 = [(iFBAPreferencesTimeoutViewController *)self navigationItem];
    [navigationItem2 setTitle:v8];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  v9 = +[NSUserDefaults standardUserDefaults];
  v8 = [pathCopy row];

  [v9 setInteger:-[iFBAPreferencesTimeoutViewController timeoutForRow:](self forKey:{"timeoutForRow:", v8), @"TouchIDTimeoutDuration"}];
  [viewCopy reloadData];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"TimeoutCell"];
  v8 = +[UIListContentConfiguration cellConfiguration];
  v9 = sub_100033808(-[iFBAPreferencesTimeoutViewController timeoutForRow:](self, "timeoutForRow:", [pathCopy row]));
  [v8 setText:v9];

  [v7 setContentConfiguration:v8];
  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [v10 integerForKey:@"TouchIDTimeoutDuration"];

  v12 = [(iFBAPreferencesTimeoutViewController *)self rowForTimeout:v11];
  v13 = [pathCopy row];

  if (v12 == v13)
  {
    v14 = 3;
  }

  else
  {
    v14 = 0;
  }

  [v7 setAccessoryType:v14];

  return v7;
}

- (int64_t)rowForTimeout:(int64_t)timeout
{
  result = timeout;
  if (timeout > 299)
  {
    if (timeout == 300)
    {
      return 2;
    }

    if (timeout == 900)
    {
      return 3;
    }
  }

  else
  {
    if (!timeout)
    {
      return result;
    }

    if (timeout == 60)
    {
      return 1;
    }
  }

  return -1;
}

- (int64_t)timeoutForRow:(int64_t)row
{
  if ((row - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_1000C1A48[row - 1];
  }
}

@end