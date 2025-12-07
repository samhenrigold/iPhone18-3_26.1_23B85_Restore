@interface OTFollowup
- (BOOL)clearAllRepairFollowUps:(id)ups error:(id *)error;
- (BOOL)clearFollowUp:(unsigned __int8)up activeAccount:(id)account error:(id *)error;
- (BOOL)hasPosted:(unsigned __int8)posted;
- (BOOL)postFollowUp:(unsigned __int8)up activeAccount:(id)account error:(id *)error;
- (OTFollowup)initWithFollowupController:(id)controller;
- (id)createCDPFollowupContext:(unsigned __int8)context;
- (id)sfaStatus;
- (id)sysdiagnoseStatus;
- (void)clearAllPostedFlags;
@end

@implementation OTFollowup

- (id)sfaStatus
{
  v21 = +[NSMutableDictionary dictionary];
  if (objc_opt_class())
  {
    v26 = 0;
    v19 = [[FLFollowUpController alloc] initWithClientIdentifier:0];
    v2 = [v19 pendingFollowUpItems:&v26];
    v3 = v26;
    if (v3)
    {
      v4 = sub_100006274("octagon");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Fetching pending follow ups failed with: %@", buf, 0xCu);
      }
    }

    v18 = v3;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v2;
    v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          notification = [v9 notification];
          creationDate = [notification creationDate];

          if (creationDate)
          {
            v12 = [CKKSAnalytics fuzzyDaysSinceDate:creationDate];
          }

          else
          {
            v12 = 10000;
          }

          uniqueIdentifier = [v9 uniqueIdentifier];
          v14 = [NSString stringWithFormat:@"OACFU-%@", uniqueIdentifier];

          v15 = [NSNumber numberWithInteger:v12];
          [v21 setObject:v15 forKeyedSubscript:v14];
        }

        v6 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v6);
    }

    v16 = sub_100006274("octagon");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v21;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Analytics CFUs are %@", buf, 0xCu);
    }
  }

  return v21;
}

- (id)sysdiagnoseStatus
{
  if (objc_opt_class())
  {
    v2 = +[NSMutableDictionary dictionary];
    v25 = 0;
    v20 = [[FLFollowUpController alloc] initWithClientIdentifier:0];
    v3 = [v20 pendingFollowUpItems:&v25];
    v4 = v25;
    if (v4)
    {
      v5 = sub_100006274("octagon");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Fetching pending follow ups failed with: %@", buf, 0xCu);
      }

      v6 = [v4 description];
      [v2 setObject:v6 forKeyedSubscript:@"error"];
    }

    v19 = v4;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          notification = [v12 notification];
          creationDate = [notification creationDate];

          if (creationDate)
          {
            uniqueIdentifier2 = objc_alloc_init(NSISO8601DateFormatter);
            v16 = [uniqueIdentifier2 stringForObjectValue:creationDate];
            uniqueIdentifier = [v12 uniqueIdentifier];
            [v2 setObject:v16 forKeyedSubscript:uniqueIdentifier];
          }

          else
          {
            uniqueIdentifier2 = [v12 uniqueIdentifier];
            [v2 setObject:@"creation-date-missing" forKeyedSubscript:uniqueIdentifier2];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)clearAllRepairFollowUps:(id)ups error:(id *)error
{
  upsCopy = ups;
  v7 = [(OTFollowup *)self clearFollowUp:3 activeAccount:upsCopy error:error];
  v8 = v7 & [(OTFollowup *)self clearFollowUp:5 activeAccount:upsCopy error:error];
  LOBYTE(error) = [(OTFollowup *)self clearFollowUp:4 activeAccount:upsCopy error:error];

  return v8 & error;
}

- (BOOL)clearFollowUp:(unsigned __int8)up activeAccount:(id)account error:(id *)error
{
  upCopy = up;
  accountCopy = account;
  v9 = [(OTFollowup *)self createCDPFollowupContext:upCopy];
  if (qword_10039E108 != -1)
  {
    dispatch_once(&qword_10039E108, &stru_1003420B8);
  }

  if (byte_10039E100 == 1)
  {
    v10 = sub_100006274("followup");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      altDSID = [accountCopy altDSID];
      personaUniqueString = [accountCopy personaUniqueString];
      v23 = 138412546;
      v24 = altDSID;
      v25 = 2112;
      v26 = personaUniqueString;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setting altdsid (%@) on context for persona (%@)", &v23, 0x16u);
    }

    altDSID2 = [accountCopy altDSID];
    [v9 setAltDSID:altDSID2];
  }

  if (!v9)
  {
    goto LABEL_16;
  }

  v14 = sub_100006274("followup");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if ((upCopy - 1) > 4)
    {
      v15 = @"none";
    }

    else
    {
      v15 = *(&off_100343A40 + (upCopy - 1));
    }

    v23 = 138412290;
    v24 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Clearing follow ups (for Octagon) of type %@", &v23, 0xCu);
  }

  cdpd = [(OTFollowup *)self cdpd];
  v17 = [cdpd clearFollowUpWithContext:v9 error:error];

  if (v17)
  {
    postedCFUTypes = [(OTFollowup *)self postedCFUTypes];
    v19 = postedCFUTypes;
    if ((upCopy - 1) > 4)
    {
      v20 = @"none";
    }

    else
    {
      v20 = *(&off_100343A40 + (upCopy - 1));
    }

    [postedCFUTypes removeObject:v20];

    v21 = 1;
  }

  else
  {
LABEL_16:
    v21 = 0;
  }

  return v21;
}

- (BOOL)postFollowUp:(unsigned __int8)up activeAccount:(id)account error:(id *)error
{
  upCopy = up;
  accountCopy = account;
  v9 = [(OTFollowup *)self createCDPFollowupContext:upCopy];
  if (qword_10039E108 != -1)
  {
    dispatch_once(&qword_10039E108, &stru_1003420B8);
  }

  if (byte_10039E100 == 1)
  {
    v10 = sub_100006274("followup");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      altDSID = [accountCopy altDSID];
      personaUniqueString = [accountCopy personaUniqueString];
      *buf = 138412546;
      v26 = altDSID;
      v27 = 2112;
      v28 = personaUniqueString;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setting altdsid (%@) on context for persona (%@)", buf, 0x16u);
    }

    altDSID2 = [accountCopy altDSID];
    [v9 setAltDSID:altDSID2];
  }

  if (v9)
  {
    v14 = sub_100006274("followup");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if ((upCopy - 1) > 4)
      {
        v15 = @"none";
      }

      else
      {
        v15 = *(&off_100343A40 + (upCopy - 1));
      }

      *buf = 138412290;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Posting a follow up (for Octagon) of type %@", buf, 0xCu);
    }

    cdpd = [(OTFollowup *)self cdpd];
    v24 = 0;
    v16 = [cdpd postFollowUpWithContext:v9 error:&v24];
    v18 = v24;

    if (v16)
    {
      postedCFUTypes = [(OTFollowup *)self postedCFUTypes];
      v20 = postedCFUTypes;
      if ((upCopy - 1) > 4)
      {
        v21 = @"none";
      }

      else
      {
        v21 = *(&off_100343A40 + (upCopy - 1));
      }

      [postedCFUTypes addObject:v21];
    }

    else if (error)
    {
      v22 = v18;
      *error = v18;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16;
}

- (id)createCDPFollowupContext:(unsigned __int8)context
{
  v3 = 0;
  if (context <= 2)
  {
    if (context == 1)
    {
      v3 = +[CDPFollowUpContext contextForRecoveryKeyRepair];
    }

    else if (context == 2)
    {
      v3 = +[CDPFollowUpContext contextForStateRepair];
    }
  }

  else
  {
    switch(context)
    {
      case 3u:
        v3 = +[CDPFollowUpContext contextForConfirmExistingSecret];
        break;
      case 4u:
        v3 = +[CDPFollowUpContext contextForSecureTerms];
        break;
      case 5u:
        v3 = +[CDPFollowUpContext contextForOfflinePasscodeChange];
        break;
    }
  }

  return v3;
}

- (OTFollowup)initWithFollowupController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = OTFollowup;
  v5 = [(OTFollowup *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(OTFollowup *)v5 setCdpd:controllerCopy];
    v7 = +[NSMutableSet set];
    postedCFUTypes = v6->_postedCFUTypes;
    v6->_postedCFUTypes = v7;
  }

  return v6;
}

- (void)clearAllPostedFlags
{
  postedCFUTypes = [(OTFollowup *)self postedCFUTypes];
  [postedCFUTypes removeAllObjects];
}

- (BOOL)hasPosted:(unsigned __int8)posted
{
  postedCopy = posted;
  postedCFUTypes = [(OTFollowup *)self postedCFUTypes];
  v5 = postedCFUTypes;
  if ((postedCopy - 1) > 4)
  {
    v6 = @"none";
  }

  else
  {
    v6 = *(&off_100343A40 + (postedCopy - 1));
  }

  v7 = [postedCFUTypes containsObject:v6];

  return v7;
}

@end