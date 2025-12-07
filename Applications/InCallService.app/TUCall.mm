@interface TUCall
- (BOOL)canDisplayAlertUI:(BOOL)i;
- (BOOL)carrierAllowsReportVoiceCall;
- (BOOL)isBranded;
- (BOOL)isCallbackAllowed;
- (BOOL)isMessagingAllowed;
- (BOOL)isReminderAllowed;
- (BOOL)isSOSOrFakeSOS;
- (BOOL)isThumper;
- (NSString)carrierName;
@end

@implementation TUCall

- (BOOL)canDisplayAlertUI:(BOOL)i
{
  iCopy = i;
  selfCopy = self;
  LOBYTE(iCopy) = sub_100005014(iCopy);

  return iCopy & 1;
}

- (BOOL)isBranded
{
  imageURL = [(TUCall *)self imageURL];
  if (imageURL)
  {
    localizedLabel = [(TUCall *)self localizedLabel];
    if (localizedLabel)
    {
      callDirectoryName = [(TUCall *)self callDirectoryName];
      v6 = callDirectoryName == 0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isMessagingAllowed
{
  v3 = +[PHSOSViewController isSOSDismissalAssertionActive];
  if (v3)
  {
    v4 = sub_100004F84(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 0;
      v5 = "isMessagingAllowed returning false due sos being enabled.";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, v32, 2u);
    }
  }

  else
  {
    handle = [(TUCall *)self handle];
    value = [handle value];
    v8 = [value length];

    if (v8)
    {
      hasSendMessageCapability = [(TUCall *)self hasSendMessageCapability];
      if (hasSendMessageCapability)
      {
        isBlocked = [(TUCall *)self isBlocked];
        if (isBlocked)
        {
          v4 = sub_100004F84(isBlocked);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            *v32 = 0;
            v5 = "isMessagingAllowed returning false due to the caller being blocked.";
            goto LABEL_13;
          }
        }

        else
        {
          isConferenced = [(TUCall *)self isConferenced];
          if (isConferenced)
          {
            v4 = sub_100004F84(isConferenced);
            if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_14;
            }

            *v32 = 0;
            v5 = "isMessagingAllowed returning false due to the caller being a connference call.";
            goto LABEL_13;
          }

          v14 = +[TUCallCenter sharedInstance];
          isAmbiguous = [v14 isAmbiguous];

          if (isAmbiguous)
          {
            v4 = sub_100004F84(v16);
            if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_14;
            }

            *v32 = 0;
            v5 = "isMessagingAllowed returning false due to the caller being ambiguous";
            goto LABEL_13;
          }

          v17 = +[PHInCallUtilities sharedInstance];
          isSetupAssistantRunning = [v17 isSetupAssistantRunning];

          if (isSetupAssistantRunning)
          {
            v4 = sub_100004F84(v19);
            if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_14;
            }

            *v32 = 0;
            v5 = "isMessagingAllowed returning false due to setup assitant running";
            goto LABEL_13;
          }

          v20 = +[PHInCallUtilities sharedInstance];
          isInLostMode = [v20 isInLostMode];

          if (isInLostMode)
          {
            v4 = sub_100004F84(v22);
            if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_14;
            }

            *v32 = 0;
            v5 = "isMessagingAllowed returning false due the device being in lost mode";
            goto LABEL_13;
          }

          v23 = +[PHInCallUtilities sharedInstance];
          canSendText = [v23 canSendText];

          if ((canSendText & 1) == 0)
          {
            v4 = sub_100004F84(v25);
            if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_14;
            }

            *v32 = 0;
            v5 = "isMessagingAllowed returning false due being unable to send texts.";
            goto LABEL_13;
          }

          v26 = +[PHInCallUtilities sharedInstance];
          isSMSRestricted = [v26 isSMSRestricted];

          if (isSMSRestricted)
          {
            v4 = sub_100004F84(v28);
            if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_14;
            }

            *v32 = 0;
            v5 = "isMessagingAllowed returning false due to being sms restricted.";
            goto LABEL_13;
          }

          if (!+[PHInCallUIUtilities isSpringBoardPasscodeLocked])
          {
            return 1;
          }

          v29 = +[PHInCallUtilities sharedInstance];
          isLockScreenMessagingAllowed = [v29 isLockScreenMessagingAllowed];

          if (isLockScreenMessagingAllowed)
          {
            return 1;
          }

          v4 = sub_100004F84(v31);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            *v32 = 0;
            v5 = "isMessagingAllowed returning false due to springboard being password locked.";
            goto LABEL_13;
          }
        }
      }

      else
      {
        v4 = sub_100004F84(hasSendMessageCapability);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *v32 = 0;
          v5 = "isMessagingAllowed returning false due to the caller not having capability to recieve a messages.";
          goto LABEL_13;
        }
      }
    }

    else
    {
      v4 = sub_100004F84(v9);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 0;
        v5 = "isMessagingAllowed returning false due to invalid handle length of 0";
        goto LABEL_13;
      }
    }
  }

LABEL_14:

  return 0;
}

- (BOOL)isCallbackAllowed
{
  handle = [(TUCall *)self handle];
  value = [handle value];
  v4 = [value length];

  if (v4)
  {
    return +[PHInCallUIUtilities isSpringBoardPasscodeLocked]^ 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isReminderAllowed
{
  v3 = +[PHSOSViewController isSOSDismissalAssertionActive];
  if (v3)
  {
    v4 = sub_100004F84(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      v5 = "isReminderAllowed returning false due sos being enabled.";
LABEL_25:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, v25, 2u);
    }
  }

  else
  {
    handle = [(TUCall *)self handle];
    value = [handle value];
    v8 = [value length];

    if (v8)
    {
      isBlocked = [(TUCall *)self isBlocked];
      if (isBlocked)
      {
        v4 = sub_100004F84(isBlocked);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *v25 = 0;
          v5 = "isReminderAllowed returning false due to the caller being blocked.";
          goto LABEL_25;
        }
      }

      else
      {
        isConferenced = [(TUCall *)self isConferenced];
        if (isConferenced)
        {
          v4 = sub_100004F84(isConferenced);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
          {
            *v25 = 0;
            v5 = "isReminderAllowed returning false due to the caller being a connference call.";
            goto LABEL_25;
          }
        }

        else
        {
          v12 = +[TUCallCenter sharedInstance];
          isAmbiguous = [v12 isAmbiguous];

          if (isAmbiguous)
          {
            v4 = sub_100004F84(v14);
            if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
            {
              *v25 = 0;
              v5 = "isReminderAllowed returning false due to the caller being ambiguous";
              goto LABEL_25;
            }
          }

          else
          {
            v15 = +[PHInCallUtilities sharedInstance];
            isSetupAssistantRunning = [v15 isSetupAssistantRunning];

            if (isSetupAssistantRunning)
            {
              v4 = sub_100004F84(v17);
              if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
              {
                *v25 = 0;
                v5 = "isReminderAllowed returning false due to setup assitant running";
                goto LABEL_25;
              }
            }

            else
            {
              v18 = +[PHInCallUtilities sharedInstance];
              isInLostMode = [v18 isInLostMode];

              if (isInLostMode)
              {
                v4 = sub_100004F84(v20);
                if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
                {
                  *v25 = 0;
                  v5 = "isReminderAllowed returning false due the device being in lost mode";
                  goto LABEL_25;
                }
              }

              else
              {
                v21 = [LSApplicationProxy applicationProxyForIdentifier:@"com.apple.reminders"];
                isRemovedSystemApp = [v21 isRemovedSystemApp];

                if (!isRemovedSystemApp)
                {
                  return 1;
                }

                v4 = sub_100004F84(v23);
                if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
                {
                  *v25 = 0;
                  v5 = "isReminderAllowed returning false due reminders not being installed.";
                  goto LABEL_25;
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v4 = sub_100004F84(v9);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 0;
        v5 = "isReminderAllowed returning false due to invalid handle length of 0";
        goto LABEL_25;
      }
    }
  }

  return 0;
}

- (BOOL)isThumper
{
  provider = [(TUCall *)self provider];
  if ([provider isTelephonyProvider] && -[TUCall isHostedOnCurrentDevice](self, "isHostedOnCurrentDevice") && -[TUCall isEndpointOnCurrentDevice](self, "isEndpointOnCurrentDevice"))
  {
    v4 = +[TUCallCapabilities supportsPrimaryCalling]^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)isSOSOrFakeSOS
{
  selfCopy = self;
  v3 = sub_10015631C();

  return v3 & 1;
}

- (BOOL)carrierAllowsReportVoiceCall
{
  selfCopy = self;
  v3 = sub_10016B2DC();

  return v3 & 1;
}

- (NSString)carrierName
{
  selfCopy = self;
  sub_10016B410();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

@end