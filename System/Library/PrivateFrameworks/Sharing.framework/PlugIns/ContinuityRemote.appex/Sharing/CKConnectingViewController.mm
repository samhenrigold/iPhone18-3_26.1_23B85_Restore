@interface CKConnectingViewController
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation CKConnectingViewController

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  if (gLogCategory_ContinuityKeyboard <= 30)
  {
    if (gLogCategory_ContinuityKeyboard != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100005D4C(self, a2, appear);
    }
  }

  v11.receiver = selfCopy;
  v11.super_class = CKConnectingViewController;
  [(CKConnectingViewController *)&v11 viewDidAppear:appearCopy];
  WeakRetained = objc_loadWeakRetained(&selfCopy->_connectingLabel);
  v6 = SFLocalizedStringForKey();
  [WeakRetained setText:v6];

  if ([selfCopy->super._mainController testFlags])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000394C;
    v8[3] = &unk_10000C4A0;
    v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    v10 = selfCopy;
    v7 = v9;
    dispatch_source_set_event_handler(v7, v8);
    SFDispatchTimerSet();
    dispatch_resume(v7);
  }
}

@end