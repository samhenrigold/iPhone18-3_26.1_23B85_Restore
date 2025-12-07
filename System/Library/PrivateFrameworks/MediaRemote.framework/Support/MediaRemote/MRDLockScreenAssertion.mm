@interface MRDLockScreenAssertion
- (MRDLockScreenAssertion)init;
- (void)createAssertion;
- (void)dealloc;
- (void)delayCreateAssertion;
- (void)setAssertion:(id)assertion;
@end

@implementation MRDLockScreenAssertion

- (MRDLockScreenAssertion)init
{
  v5.receiver = self;
  v5.super_class = MRDLockScreenAssertion;
  v2 = [(MRDLockScreenAssertion *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MRDLockScreenAssertion *)v2 createAssertion];
  }

  return v3;
}

- (void)setAssertion:(id)assertion
{
  assertionCopy = assertion;
  v5 = _MRLogForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (assertionCopy)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDLockScreenController] Activating lockScreenAssertion", buf, 2u);
    }

    v7 = [[MROSTransaction alloc] initWithName:@"com.apple.mediaremoted.LockScreen"];
    transaction = self->_transaction;
    self->_transaction = v7;

    MRRegisterTransaction();
  }

  else
  {
    if (v6)
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDLockScreenController] Deactivating lockScreenAssertion", v11, 2u);
    }

    v9 = self->_transaction;
    self->_transaction = 0;
  }

  assertion = self->_assertion;
  self->_assertion = assertionCopy;
}

- (void)createAssertion
{
  objc_initWeak(&location, self);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v3 = qword_100529408;
  v22 = qword_100529408;
  if (!qword_100529408)
  {
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_1000FABF0;
    v17 = &unk_1004B8728;
    v18 = &v19;
    sub_1000FABF0(&v14);
    v3 = v20[3];
  }

  v4 = v3;
  _Block_object_dispose(&v19, 8);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v5 = qword_100529418;
  v22 = qword_100529418;
  if (!qword_100529418)
  {
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_1000FADBC;
    v17 = &unk_1004B8728;
    v18 = &v19;
    v6 = sub_1000FAC48();
    v7 = dlsym(v6, "SBSLockScreenContentAssertionSlotPlatter");
    *(v18[1] + 24) = v7;
    qword_100529418 = *(v18[1] + 24);
    v5 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (v5)
  {
    v8 = *v5;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000FA964;
    v11[3] = &unk_1004B7D50;
    objc_copyWeak(&v12, &location);
    v9 = [v3 acquireContentProviderAssertionForType:1 slot:v8 identifier:@"SBDashBoardNowPlayingAssertionIdentifier" errorHandler:v11];
    [(MRDLockScreenAssertion *)self setAssertion:v9];

    if (!self->_assertion)
    {
      [(MRDLockScreenAssertion *)self delayCreateAssertion];
    }

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = dlerror();
    abort_report_np("%s", v10);
    __break(1u);
  }
}

- (void)delayCreateAssertion
{
  objc_initWeak(&location, self);
  v2 = dispatch_time(0, 1000000000);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000FAB00;
  v3[3] = &unk_1004B8280;
  objc_copyWeak(&v4, &location);
  dispatch_after(v2, &_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  [(MRDLockScreenAssertion *)self setAssertion:0];
  v3.receiver = self;
  v3.super_class = MRDLockScreenAssertion;
  [(MRDLockScreenAssertion *)&v3 dealloc];
}

@end