@interface ESADelegate
- (BOOL)isNotificationSnoozed;
- (ESADelegate)init;
- (void)cancelAlert;
- (void)prompt:(int)prompt;
@end

@implementation ESADelegate

- (ESADelegate)init
{
  v7.receiver = self;
  v7.super_class = ESADelegate;
  v2 = [(ESADelegate *)&v7 init];
  if (v2)
  {
    v3 = qword_100015A80 == 0;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = objc_alloc_init(ESALocalSettings);
    v5 = qword_100015A80;
    qword_100015A80 = v4;
  }

  return v2;
}

- (void)prompt:(int)prompt
{
  v3 = *&prompt;
  if (([qword_100015A80 isNotificationDisabled] & 1) == 0)
  {
    [qword_100015A80 setAlertType:v3];
    v4 = CloudServicesLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "void prompt(EscrowSecurityAlertType)";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "In %s", &buf, 0xCu);
    }

    if (v3)
    {
      if (v3 == 1)
      {
        v45 = kCFUserNotificationAlertHeaderKey;
        v41 = +[NSBundle mainBundle];
        v40 = [v41 localizedStringForKey:@"RECORD_BURNED_ALERT_MESSAGE_TITLE" value:&stru_1000107A8 table:0];
        *&buf = v40;
        v46 = kCFUserNotificationAlertMessageKey;
        v39 = +[NSBundle mainBundle];
        v5 = [v39 localizedStringForKey:@"RECORD_BURNED_ALERT_MESSAGE" value:&stru_1000107A8 table:0];
        *(&buf + 1) = v5;
        v47 = kCFUserNotificationDefaultButtonTitleKey;
        shouldAllowSnooze = [qword_100015A80 shouldAllowSnooze];
        v18 = +[NSBundle mainBundle];
        v8 = v18;
        if (shouldAllowSnooze)
        {
          v19 = @"NOTNOW";
        }

        else
        {
          v19 = @"RESETKEYCHAIN";
        }

        v10 = [v18 localizedStringForKey:v19 value:&stru_1000107A8 table:0];
        v55 = v10;
        v48 = kCFUserNotificationAlternateButtonTitleKey;
        v11 = +[NSBundle mainBundle];
        v12 = [v11 localizedStringForKey:@"UPDATECODE" value:&stru_1000107A8 table:0];
        v56 = v12;
        v49 = kCFUserNotificationOtherButtonTitleKey;
        v13 = +[NSBundle mainBundle];
        v14 = [v13 localizedStringForKey:@"LEARNMORE" value:&stru_1000107A8 table:0];
        v57 = v14;
        v58 = kCFBooleanTrue;
        v50 = kCFUserNotificationAlertTopMostKey;
        v51 = SBUserNotificationDontDismissOnUnlock;
        v59 = &__kCFBooleanTrue;
        v60 = &__kCFBooleanFalse;
        v52 = SBUserNotificationDismissOnLock;
        v53 = SBUserNotificationPendInSetupIfNotAllowedKey;
        v61 = &__kCFBooleanTrue;
        v15 = [NSDictionary dictionaryWithObjects:&buf forKeys:&v45 count:9];
        v16 = 2;
      }

      else
      {
        if (v3 != 2)
        {
          v16 = 0;
          v15 = 0;
LABEL_17:
          if (qword_100015A90)
          {
            if (dword_100015A98 >= v3)
            {
              v22 = CloudServicesLog();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *v43 = 0;
                v23 = "Don't replace a ELE notification with one about a burned record";
                v25 = v22;
                v26 = 2;
                goto LABEL_37;
              }

              goto LABEL_38;
            }

            v20 = CFUserNotificationUpdate(qword_100015A90, 0.0, v16, v15);
            if (v20)
            {
              v21 = v20;
              v22 = CloudServicesLog();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *v43 = 67109120;
                LODWORD(v44) = v21;
                v23 = "CFUserNotificationUpdate err=%d";
LABEL_25:
                v25 = v22;
                v26 = 8;
LABEL_37:
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v23, v43, v26);
                goto LABEL_38;
              }

              goto LABEL_38;
            }
          }

          else
          {
            error = 0;
            v24 = CFUserNotificationCreate(0, 0.0, v16, &error, v15);
            qword_100015A90 = v24;
            if (error)
            {
              v22 = CloudServicesLog();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *v43 = 67109120;
                LODWORD(v44) = error;
                v23 = "Can't make notification err=%x";
                goto LABEL_25;
              }

LABEL_38:

              return;
            }

            qword_100015AA0 = CFUserNotificationCreateRunLoopSource(0, v24, sub_100001BB8, 0);
            Main = CFRunLoopGetMain();
            CFRunLoopAddSource(Main, qword_100015AA0, kCFRunLoopDefaultMode);
          }

          add_explicit = atomic_fetch_add_explicit(dword_100015AA8, 1u, memory_order_relaxed);
          v29 = CloudServicesLog();
          v30 = v29;
          if (add_explicit)
          {
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              sub_100007AD0(v30, v31, v32, v33, v34, v35, v36, v37);
            }
          }

          else
          {
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *v43 = 136315138;
              v44 = "void prompt(EscrowSecurityAlertType)";
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%s: starting xpc transaction", v43, 0xCu);
            }

            v38 = os_transaction_create();
            v30 = qword_100015A88;
            qword_100015A88 = v38;
          }

          dword_100015A98 = v3;
          v22 = CloudServicesLog();
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_38;
          }

          *v43 = 136315138;
          v44 = "void prompt(EscrowSecurityAlertType)";
          v23 = "Exit %s";
          v25 = v22;
          v26 = 12;
          goto LABEL_37;
        }

        v45 = kCFUserNotificationAlertHeaderKey;
        v41 = +[NSBundle mainBundle];
        v40 = [v41 localizedStringForKey:@"ESCROW_ELE_ALERT_MESSAGE_TITLE" value:&stru_1000107A8 table:0];
        *&buf = v40;
        v46 = kCFUserNotificationAlertMessageKey;
        v39 = +[NSBundle mainBundle];
        v5 = [v39 localizedStringForKey:@"ESCROW_ELE_ALERT_MESSAGE" value:&stru_1000107A8 table:0];
        *(&buf + 1) = v5;
        v47 = kCFUserNotificationDefaultButtonTitleKey;
        shouldAllowSnooze2 = [qword_100015A80 shouldAllowSnooze];
        v7 = +[NSBundle mainBundle];
        v8 = v7;
        if (shouldAllowSnooze2)
        {
          v9 = @"NOTNOW";
        }

        else
        {
          v9 = @"RESETKEYCHAIN";
        }

        v10 = [v7 localizedStringForKey:v9 value:&stru_1000107A8 table:0];
        v55 = v10;
        v48 = kCFUserNotificationAlternateButtonTitleKey;
        v11 = +[NSBundle mainBundle];
        v12 = [v11 localizedStringForKey:@"CREATENEWCODE" value:&stru_1000107A8 table:0];
        v56 = v12;
        v49 = kCFUserNotificationOtherButtonTitleKey;
        v13 = +[NSBundle mainBundle];
        v14 = [v13 localizedStringForKey:@"LEARNMORE" value:&stru_1000107A8 table:0];
        v57 = v14;
        v58 = kCFBooleanTrue;
        v50 = kCFUserNotificationAlertTopMostKey;
        v51 = SBUserNotificationDontDismissOnUnlock;
        v59 = &__kCFBooleanTrue;
        v60 = &__kCFBooleanFalse;
        v52 = SBUserNotificationDismissOnLock;
        v53 = SBUserNotificationPendInSetupIfNotAllowedKey;
        v61 = &__kCFBooleanTrue;
        v15 = [NSDictionary dictionaryWithObjects:&buf forKeys:&v45 count:9];
        v16 = 0;
      }

      goto LABEL_17;
    }
  }
}

- (void)cancelAlert
{
  [qword_100015A80 reset];
  if (qword_100015A90)
  {
    v2 = CloudServicesLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "canceling alert", &v13, 2u);
    }

    CFUserNotificationCancel(qword_100015A90);
    dword_100015A98 = 0;
    if (qword_100015AA0)
    {
      CFRunLoopSourceInvalidate(qword_100015AA0);
      CFRelease(qword_100015AA0);
      qword_100015AA0 = 0;
    }

    if (qword_100015A90)
    {
      CFRelease(qword_100015A90);
      qword_100015A90 = 0;
    }

    add_explicit = atomic_fetch_add_explicit(dword_100015AA8, 0xFFFFFFFF, memory_order_relaxed);
    v4 = CloudServicesLog();
    v5 = v4;
    if (add_explicit == 1)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315138;
        v14 = "void cancelAlert(void)";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s: ending xpc transaction", &v13, 0xCu);
      }

      v5 = qword_100015A88;
      qword_100015A88 = 0;
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100007B48(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

- (BOOL)isNotificationSnoozed
{
  alertType = [qword_100015A80 alertType];
  if (alertType)
  {
    LOBYTE(alertType) = [qword_100015A80 alertType] < 3;
  }

  return alertType;
}

@end