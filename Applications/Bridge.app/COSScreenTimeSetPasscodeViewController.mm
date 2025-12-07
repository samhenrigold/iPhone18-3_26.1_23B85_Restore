@interface COSScreenTimeSetPasscodeViewController
- (BOOL)_errorIsUserCanceledSettingPIN:(id)n;
- (COSScreenTimeSetPasscodeViewController)init;
- (STSMiniFlowControllerDelegate)miniFlowDelegate;
- (id)detailString;
- (id)suggestedButtonTitle;
- (id)titleString;
- (void)_collectThenSetScreenTimePasscodeForFamilyMember:(id)member withCompletionHandler:(id)handler;
- (void)suggestedButtonPressed:(id)pressed;
@end

@implementation COSScreenTimeSetPasscodeViewController

- (COSScreenTimeSetPasscodeViewController)init
{
  v5.receiver = self;
  v5.super_class = COSScreenTimeSetPasscodeViewController;
  v2 = [(COSScreenTimeSetPasscodeViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(COSScreenTimeSetPasscodeViewController *)v2 setStyle:2];
  }

  return v3;
}

- (id)titleString
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SCREEN_TIME_SET_PASSCODE_TITLE" value:&stru_10026E598 table:@"ScreenTimeSetupLocalizable"];

  return v3;
}

- (id)detailString
{
  miniFlowDelegate = [(COSScreenTimeSetPasscodeViewController *)self miniFlowDelegate];
  familyMemberFirstName = [miniFlowDelegate familyMemberFirstName];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"SCREEN_TIME_SET_PASSCODE_DETAIL_%@_%@" value:&stru_10026E598 table:@"ScreenTimeSetupLocalizable"];
  v6 = [NSString stringWithFormat:v5, familyMemberFirstName, familyMemberFirstName];

  return v6;
}

- (id)suggestedButtonTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SCREEN_TIME_CONTINUE" value:&stru_10026E598 table:@"ScreenTimeSetupLocalizable"];

  return v3;
}

- (void)suggestedButtonPressed:(id)pressed
{
  v4 = sub_100015C10(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[COSScreenTimeSetPasscodeViewController suggestedButtonPressed:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  miniFlowDelegate = [(COSScreenTimeSetPasscodeViewController *)self miniFlowDelegate];
  familyMember = [miniFlowDelegate familyMember];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006CCB8;
  v7[3] = &unk_1002684A8;
  v7[4] = self;
  [(COSScreenTimeSetPasscodeViewController *)self _collectThenSetScreenTimePasscodeForFamilyMember:familyMember withCompletionHandler:v7];
}

- (void)_collectThenSetScreenTimePasscodeForFamilyMember:(id)member withCompletionHandler:(id)handler
{
  memberCopy = member;
  handlerCopy = handler;
  v7 = sub_100015C10(handlerCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    dsid = [memberCopy dsid];
    *buf = 136315650;
    *&buf[4] = "[COSScreenTimeSetPasscodeViewController _collectThenSetScreenTimePasscodeForFamilyMember:withCompletionHandler:]";
    *&buf[12] = 2112;
    *&buf[14] = memberCopy;
    *&buf[22] = 2114;
    v47 = dsid;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: familyMember:%@, dsid:%{public}@", buf, 0x20u);
  }

  dsid2 = [memberCopy dsid];
  v10 = dsid2 == 0;

  if (v10)
  {
    v44 = NSLocalizedDescriptionKey;
    v45 = @"Missing familyMember.dsid";
    v23 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v21 = [NSError errorWithDomain:@"COSScreenTimeSetupErrorDomain" code:1 userInfo:v23];

    v13 = sub_100015C10(v24);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1001880A0();
    }

    goto LABEL_22;
  }

  v38 = 0;
  v39 = &v38;
  v40 = 0x2050000000;
  v11 = qword_1002BD448;
  v41 = qword_1002BD448;
  if (!qword_1002BD448)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10006D734;
    v47 = &unk_1002680D0;
    v48 = &v38;
    sub_10006D734(buf);
    v11 = v39[3];
  }

  v12 = v11;
  _Block_object_dispose(&v38, 8);
  v13 = objc_alloc_init(v11);
  v38 = 0;
  v39 = &v38;
  v40 = 0x2050000000;
  v14 = qword_1002BD458;
  v41 = qword_1002BD458;
  if (!qword_1002BD458)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10006D8FC;
    v47 = &unk_1002680D0;
    v48 = &v38;
    sub_10006D8FC(buf);
    v14 = v39[3];
  }

  v15 = v14;
  _Block_object_dispose(&v38, 8);
  v16 = [v14 alloc];
  dsid3 = [memberCopy dsid];
  v18 = [v16 initWithDSID:dsid3];

  v37 = 0;
  v19 = [v13 currentConfigurationForUser:v18 error:&v37];
  v20 = v37;
  if (v20)
  {
    v21 = v20;
    v22 = sub_100015C10(v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100187FB0();
    }

LABEL_21:

LABEL_22:
    handlerCopy[2](handlerCopy, v21);
    v18 = v21;
    goto LABEL_23;
  }

  screenTimeState = [v19 screenTimeState];
  v26 = sub_100015C10(screenTimeState);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[COSScreenTimeSetPasscodeViewController _collectThenSetScreenTimePasscodeForFamilyMember:withCompletionHandler:]";
    *&buf[12] = 2114;
    *&buf[14] = v19;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%s: currentConfiguration:%{public}@", buf, 0x16u);
  }

  if (screenTimeState != 1)
  {
    v42 = NSLocalizedDescriptionKey;
    v43 = @"Screen Time not enabled";
    v31 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v21 = [NSError errorWithDomain:@"COSScreenTimeSetupErrorDomain" code:1 userInfo:v31];

    v22 = sub_100015C10(v32);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_100188024();
    }

    goto LABEL_21;
  }

  v28 = sub_100015C10(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[COSScreenTimeSetPasscodeViewController _collectThenSetScreenTimePasscodeForFamilyMember:withCompletionHandler:]";
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%s: collecting passcode (async)", buf, 0xCu);
  }

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10006D410;
  v33[3] = &unk_100269A40;
  v34 = v19;
  v35 = v13;
  v36 = handlerCopy;
  v29 = v13;
  v30 = v19;
  [v29 collectPasscodeFromUserWithCompletionHandler:v33];

LABEL_23:
}

- (BOOL)_errorIsUserCanceledSettingPIN:(id)n
{
  nCopy = n;
  domain = [nCopy domain];
  if ([domain isEqualToString:@"STErrorDomain"])
  {
    v5 = [nCopy code] == 48;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (STSMiniFlowControllerDelegate)miniFlowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->miniFlowDelegate);

  return WeakRetained;
}

@end