@interface COSScreenTimeSetupController
+ (BOOL)_screenTimeEnabledWithoutPasscodeForFamilyMember:(id)member;
+ (BOOL)controllerNeedsToRunForBuddyControllerDelegate:(id)delegate;
- (COSScreenTimeSetupController)init;
- (id)familyMember;
- (id)familyMemberFirstName;
- (void)miniFlowStepComplete:(id)complete nextControllerClass:(Class)class;
@end

@implementation COSScreenTimeSetupController

- (COSScreenTimeSetupController)init
{
  v6.receiver = self;
  v6.super_class = COSScreenTimeSetupController;
  v2 = [(COSScreenTimeSetupController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(COSScreenTimeSetPasscodeViewController);
    firstController = v2->_firstController;
    v2->_firstController = v3;

    [(COSScreenTimeSetPasscodeViewController *)v2->_firstController setMiniFlowDelegate:v2];
  }

  return v2;
}

- (void)miniFlowStepComplete:(id)complete nextControllerClass:(Class)class
{
  if (class)
  {
    delegate = objc_alloc_init(class);
    [delegate setMiniFlowDelegate:self];
    [(COSScreenTimeSetupController *)self pushController:delegate animated:1];
  }

  else
  {
    delegate = [(COSScreenTimeSetupController *)self delegate];
    [delegate buddyControllerDone:self];
  }
}

- (id)familyMember
{
  delegate = [(COSScreenTimeSetupController *)self delegate];
  setupFlowUserInfo = [delegate setupFlowUserInfo];
  v4 = [setupFlowUserInfo objectForKeyedSubscript:BPSPairingFlowFamilyMember];

  return v4;
}

- (id)familyMemberFirstName
{
  familyMember = [(COSScreenTimeSetupController *)self familyMember];
  firstName = [familyMember firstName];

  return firstName;
}

+ (BOOL)controllerNeedsToRunForBuddyControllerDelegate:(id)delegate
{
  delegateCopy = delegate;
  setupFlowUserInfo = [delegateCopy setupFlowUserInfo];
  v5 = [setupFlowUserInfo objectForKeyedSubscript:BPSPairingFlowFamilyMember];

  if (v5)
  {
    v7 = [objc_opt_class() _screenTimeEnabledWithoutPasscodeForFamilyMember:v5];
    v8 = v7;
  }

  else
  {
    v9 = sub_100015C10(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100186218();
    }

    v8 = 0;
  }

  v10 = sub_100015C10(v7);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "+[COSScreenTimeSetupController controllerNeedsToRunForBuddyControllerDelegate:]";
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s => %d", &v12, 0x12u);
  }

  return v8;
}

+ (BOOL)_screenTimeEnabledWithoutPasscodeForFamilyMember:(id)member
{
  memberCopy = member;
  v4 = sub_100015C10(memberCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    dsid = [memberCopy dsid];
    *buf = 136315650;
    *&buf[4] = "+[COSScreenTimeSetupController _screenTimeEnabledWithoutPasscodeForFamilyMember:]";
    *&buf[12] = 2112;
    *&buf[14] = memberCopy;
    *&buf[22] = 2114;
    v32 = dsid;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s: familyMember:%@, dsid:%{public}@", buf, 0x20u);
  }

  dsid2 = [memberCopy dsid];

  if (dsid2)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2050000000;
    v7 = qword_1002BD278;
    v30 = qword_1002BD278;
    if (!qword_1002BD278)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1000163E4;
      v32 = &unk_1002680D0;
      v33 = &v27;
      sub_1000163E4(buf);
      v7 = v28[3];
    }

    v8 = v7;
    _Block_object_dispose(&v27, 8);
    v9 = objc_opt_new();
    v27 = 0;
    v28 = &v27;
    v29 = 0x2050000000;
    v10 = qword_1002BD288;
    v30 = qword_1002BD288;
    if (!qword_1002BD288)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1000165AC;
      v32 = &unk_1002680D0;
      v33 = &v27;
      sub_1000165AC(buf);
      v10 = v28[3];
    }

    v11 = v10;
    _Block_object_dispose(&v27, 8);
    v12 = [v10 alloc];
    dsid3 = [memberCopy dsid];
    v14 = [v12 initWithDSID:dsid3];

    v26 = 0;
    v15 = [v9 currentConfigurationForUser:v14 error:&v26];
    v16 = v26;
    v17 = v16;
    if (v16)
    {
      v18 = sub_100015C10(v16);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100186298();
      }

      LOBYTE(v19) = 0;
    }

    else
    {
      screenTimeState = [v15 screenTimeState];
      if (screenTimeState == 1)
      {
        passcode = [v15 passcode];
        v19 = passcode == 0;
      }

      else
      {
        v19 = 0;
      }

      v18 = sub_100015C10(screenTimeState);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        screenTimeState2 = [v15 screenTimeState];
        passcode2 = [v15 passcode];
        v24 = @"YES";
        *buf = 136316162;
        *&buf[4] = "+[COSScreenTimeSetupController _screenTimeEnabledWithoutPasscodeForFamilyMember:]";
        *&buf[12] = 2048;
        *&buf[14] = screenTimeState2;
        if (!passcode2)
        {
          v24 = @"NO";
        }

        *&buf[22] = 2112;
        v32 = v24;
        LOWORD(v33) = 1024;
        *(&v33 + 2) = v19;
        HIWORD(v33) = 2114;
        v34 = v15;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s: screenTimeState:%zd hasPasscode:%@ => enabledWithoutPasscode:%d; currentConfiguration:%{public}@", buf, 0x30u);
      }
    }
  }

  else
  {
    LOBYTE(v19) = 0;
  }

  return v19;
}

@end