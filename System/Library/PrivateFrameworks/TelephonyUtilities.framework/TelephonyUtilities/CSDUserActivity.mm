@interface CSDUserActivity
+ (CSDUserActivity)activityWithType:(unsigned int)type dynamicIdentifier:(id)identifier userInfo:(id)info originatingDeviceType:(id)deviceType;
+ (id)_userActivityTypeStringForActivityType:(unsigned int)type;
+ (id)appHistoryActivityWithTitle:(id)title subtitle:(id)subtitle keywords:(id)keywords userInfo:(id)info;
+ (unsigned)activityTypeForUserActivityTypeString:(id)string;
+ (void)registerActivityType:(unsigned int)type dynamicIdentifier:(id)identifier;
+ (void)unregisterActivityType:(unsigned int)type dynamicIdentifier:(id)identifier;
- (id)description;
- (void)addUserInfoEntriesFromDictionary:(id)dictionary;
- (void)becomeCurrent;
- (void)invalidate;
- (void)resignCurrent;
@end

@implementation CSDUserActivity

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  userActivity = [(CSDUserActivity *)self userActivity];
  activityType = [userActivity activityType];
  [v3 appendFormat:@" activityType=%@", activityType];

  dynamicIdentifier = [(CSDUserActivity *)self dynamicIdentifier];
  [v3 appendFormat:@" dynamicIdentifier=%@", dynamicIdentifier];

  userActivity2 = [(CSDUserActivity *)self userActivity];
  userInfo = [userActivity2 userInfo];
  [v3 appendFormat:@" activityUserInfo=%@", userInfo];

  [v3 appendString:@">"];
  v9 = [v3 copy];

  return v9;
}

+ (id)appHistoryActivityWithTitle:(id)title subtitle:(id)subtitle keywords:(id)keywords userInfo:(id)info
{
  infoCopy = info;
  keywordsCopy = keywords;
  subtitleCopy = subtitle;
  titleCopy = title;
  v14 = objc_alloc_init(CSDUserActivity);
  v15 = [self _userActivityTypeStringForActivityType:4];
  v16 = [[NSUserActivity alloc] _initWithTypeIdentifier:v15 suggestedActionType:1 options:0];
  [v16 _setContentType:v15];
  v17 = [NSDate dateWithTimeIntervalSinceNow:864000.0];
  [v16 setExpirationDate:v17];

  [v16 setEligibleForSearch:1];
  [v16 setEligibleForPublicIndexing:0];
  [v16 setEligibleForHandoff:0];
  [v16 setTitle:titleCopy];

  [v16 _setSubtitle:subtitleCopy];
  [v16 _setContentUserAction:NSUserActivityContentUserActionCall];
  v18 = [NSSet setWithArray:keywordsCopy];

  [v16 setKeywords:v18];
  [(CSDUserActivity *)v14 setUserActivity:v16];
  userActivity = [(CSDUserActivity *)v14 userActivity];
  [userActivity setUserInfo:infoCopy];

  return v14;
}

+ (CSDUserActivity)activityWithType:(unsigned int)type dynamicIdentifier:(id)identifier userInfo:(id)info originatingDeviceType:(id)deviceType
{
  v8 = *&type;
  identifierCopy = identifier;
  deviceTypeCopy = deviceType;
  infoCopy = info;
  v13 = objc_alloc_init(CSDUserActivity);
  v14 = [self _userActivityTypeStringForActivityType:v8];
  v15 = v14;
  if (v8 <= 5)
  {
    if (((1 << v8) & 0x2C) != 0)
    {
      v16 = [NSUserActivity alloc];
      v23[0] = UAUserActivityAlwaysPickKey;
      v23[1] = UAAlwaysAdvertise;
      v24[0] = &off_10063ED98;
      v24[1] = &__kCFBooleanTrue;
      v17 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
      v18 = [v16 _initWithUserActivityType:v15 dynamicActivityType:identifierCopy options:v17];
      [(CSDUserActivity *)v13 setUserActivity:v18];

LABEL_7:
      goto LABEL_8;
    }

    if (((1 << v8) & 0x11) != 0)
    {
      v17 = sub_100004778(v14);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v22[0] = 67109120;
        v22[1] = v8;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[WARN] Bad activity type: %d", v22, 8u);
      }

      goto LABEL_7;
    }

    v21 = [[NSUserActivity alloc] _initWithTypeIdentifier:v14 suggestedActionType:12 options:&__NSDictionary0__struct];
    [(CSDUserActivity *)v13 setUserActivity:v21];
  }

LABEL_8:
  [(CSDUserActivity *)v13 setDynamicIdentifier:identifierCopy];
  userActivity = [(CSDUserActivity *)v13 userActivity];
  [userActivity setUserInfo:infoCopy];

  [(CSDUserActivity *)v13 setOriginatingDeviceType:deviceTypeCopy];

  return v13;
}

+ (void)registerActivityType:(unsigned int)type dynamicIdentifier:(id)identifier
{
  v4 = *&type;
  identifierCopy = identifier;
  v6 = [CSDUserActivity _userActivityTypeStringForActivityType:v4];
  v7 = [CSDUserActivity activityTypeSupportsDynamicIdentifierRegistration:v4];
  v8 = v7;
  v9 = sub_100004778(v7);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Registering for %@ user activity type and dynamic identifier %@", &v11, 0x16u);
    }

    [NSUserActivity _registerUserActivityType:v6 dynamicActivityType:identifierCopy];
  }

  else
  {
    if (v10)
    {
      v11 = 138412546;
      v12 = v6;
      v13 = 1024;
      LODWORD(v14) = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Asked to register for activity type %@ (%d), but that is not supported", &v11, 0x12u);
    }
  }
}

+ (void)unregisterActivityType:(unsigned int)type dynamicIdentifier:(id)identifier
{
  v4 = *&type;
  identifierCopy = identifier;
  v6 = [CSDUserActivity _userActivityTypeStringForActivityType:v4];
  v7 = [CSDUserActivity activityTypeSupportsDynamicIdentifierRegistration:v4];
  v8 = v7;
  v9 = sub_100004778(v7);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = 138412546;
      v12 = v6;
      v13 = 2112;
      v14 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Unregistering for %@ user activity type and dynamic identifier %@", &v11, 0x16u);
    }

    [NSUserActivity _unregisterUserActivityType:v6 dynamicActivityType:identifierCopy];
  }

  else
  {
    if (v10)
    {
      v11 = 138412546;
      v12 = v6;
      v13 = 1024;
      LODWORD(v14) = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Asked to unregister for activity type %@ (%d), but that is not supported", &v11, 0x12u);
    }
  }
}

+ (unsigned)activityTypeForUserActivityTypeString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"com.apple.mobilephone"])
  {
    v4 = 1;
  }

  else
  {
    v5 = TUCallHandoffActivityType();
    v6 = [stringCopy isEqualToString:v5];

    if (v6)
    {
      v4 = 2;
    }

    else if ([stringCopy isEqualToString:@"com.apple.telephonyutilities.suppressringtone"])
    {
      v4 = 3;
    }

    else if ([stringCopy isEqualToString:TUUserActivityTypeConversationHandoff])
    {
      v4 = 5;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (id)_userActivityTypeStringForActivityType:(unsigned int)type
{
  v3 = 0;
  if (type <= 2)
  {
    if (type == 1)
    {
      v3 = @"com.apple.mobilephone";
    }

    else if (type == 2)
    {
      v3 = TUCallHandoffActivityType();
    }
  }

  else
  {
    switch(type)
    {
      case 3u:
        v3 = @"com.apple.telephonyutilities.suppressringtone";
        break;
      case 4u:
        v3 = TUCallPhoneAppHistoryActivityType();
        break;
      case 5u:
        v3 = TUUserActivityTypeConversationHandoff;
        break;
    }
  }

  return v3;
}

- (void)addUserInfoEntriesFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  userActivity = [(CSDUserActivity *)self userActivity];
  [userActivity addUserInfoEntriesFromDictionary:dictionaryCopy];

  userActivity2 = [(CSDUserActivity *)self userActivity];
  [userActivity2 setNeedsSave:1];
}

- (void)becomeCurrent
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    userActivity = [(CSDUserActivity *)self userActivity];
    v6 = 138412290;
    v7 = userActivity;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Beginning advertising user activity as current: %@", &v6, 0xCu);
  }

  userActivity2 = [(CSDUserActivity *)self userActivity];
  [userActivity2 becomeCurrent];
}

- (void)resignCurrent
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    userActivity = [(CSDUserActivity *)self userActivity];
    v6 = 138412290;
    v7 = userActivity;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping advertising user activity as current, without invalidating: %@", &v6, 0xCu);
  }

  userActivity2 = [(CSDUserActivity *)self userActivity];
  [userActivity2 resignCurrent];
}

- (void)invalidate
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    userActivity = [(CSDUserActivity *)self userActivity];
    v6 = 138412290;
    v7 = userActivity;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Invalidating user activity: %@", &v6, 0xCu);
  }

  userActivity2 = [(CSDUserActivity *)self userActivity];
  [userActivity2 invalidate];
}

@end