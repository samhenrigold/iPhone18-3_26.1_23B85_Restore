@interface RingtonePurchase
+ (id)entityFromContext:(id)context;
- (void)_assignToContact:(id)contact inContactStore:(id)store withSoundIdentifier:(id)identifier;
- (void)_assignToContactWithID:(id)d withIdentifier:(id)identifier;
- (void)_assignToPersonWithID:(int)d withIdentifier:(id)identifier;
- (void)applyUserActionWithToneIdentifier:(id)identifier;
- (void)loadFromPurchase:(id)purchase;
@end

@implementation RingtonePurchase

+ (id)entityFromContext:(id)context
{
  v3 = [objc_msgSend(objc_msgSend(context "persistentStoreCoordinator")];

  return [v3 objectForKey:@"RingtonePurchase"];
}

- (void)applyUserActionWithToneIdentifier:(id)identifier
{
  assignToPersonID = [(RingtonePurchase *)self assignToPersonID];
  if (assignToPersonID)
  {
    v6 = assignToPersonID;
    if ([assignToPersonID integerValue] >= 1)
    {
      -[RingtonePurchase _assignToPersonWithID:withIdentifier:](self, "_assignToPersonWithID:withIdentifier:", [v6 intValue], identifier);
    }
  }

  assignToContactID = [(RingtonePurchase *)self assignToContactID];
  if (assignToContactID)
  {
    [(RingtonePurchase *)self _assignToContactWithID:assignToContactID withIdentifier:identifier];
  }

  v8 = [-[RingtonePurchase shouldMakeDefault](self "shouldMakeDefault")];
  if ([-[RingtonePurchase shouldMakeDefaultTextTone](self "shouldMakeDefaultTextTone")])
  {
    v9 = 2;
  }

  else
  {
    v9 = v8;
  }

  if (v9)
  {
    v10 = objc_alloc_init(ISWeakLinkedClassForString());
    [v10 setCurrentToneIdentifier:identifier forAlertType:v9];
  }
}

- (void)loadFromPurchase:(id)purchase
{
  -[RingtonePurchase setAdamID:](self, "setAdamID:", [purchase valueForDownloadProperty:SSDownloadPropertyStoreItemIdentifier]);
  -[RingtonePurchase setAssigneeToneStyle:](self, "setAssigneeToneStyle:", [purchase assigneeToneStyle]);
  -[RingtonePurchase setAssignToPersonID:](self, "setAssignToPersonID:", [purchase assigneeIdentifier]);
  -[RingtonePurchase setAssignToContactID:](self, "setAssignToContactID:", [purchase assigneeContactIdentifier]);
  -[RingtonePurchase setShouldMakeDefault:](self, "setShouldMakeDefault:", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [purchase shouldMakeDefaultRingtone]));
  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [purchase shouldMakeDefaultTextTone]);

  [(RingtonePurchase *)self setShouldMakeDefaultTextTone:v5];
}

- (void)_assignToContactWithID:(id)d withIdentifier:(id)identifier
{
  v7 = objc_alloc_init(ISWeakLinkedClassForString());
  v9[0] = ISWeakLinkedStringConstantForString();
  v9[1] = ISWeakLinkedStringConstantForString();
  v8 = [v7 unifiedContactWithIdentifier:d keysToFetch:+[NSArray arrayWithObjects:count:](NSArray error:{"arrayWithObjects:count:", v9, 2), 0}];
  if (v8)
  {
    [(RingtonePurchase *)self _assignToContact:v8 inContactStore:v7 withSoundIdentifier:identifier];
  }
}

- (void)_assignToPersonWithID:(int)d withIdentifier:(id)identifier
{
  v5 = *&d;
  v7 = objc_alloc_init(ISWeakLinkedClassForString());
  -[RingtonePurchase _assignToContactWithID:withIdentifier:](self, "_assignToContactWithID:withIdentifier:", [v7 contactIdentifierFromPersonID:v5], identifier);
}

- (void)_assignToContact:(id)contact inContactStore:(id)store withSoundIdentifier:(id)identifier
{
  v9 = [contact mutableCopy];
  v10 = [objc_alloc(ISWeakLinkedClassForString()) initWithSound:identifier vibration:0 ignoreMute:0];
  assigneeToneStyle = [(RingtonePurchase *)self assigneeToneStyle];
  if ([assigneeToneStyle isEqualToString:SSItemToneStyleTextTone])
  {
    [v9 setTextAlert:v10];
  }

  else
  {
    [v9 setCallAlert:v10];
  }

  v12 = objc_alloc_init(ISWeakLinkedClassForString());
  [v12 updateContact:v9];
  v13 = +[SSLogConfig sharedDaemonConfig];
  if (!v13)
  {
    v13 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v13 shouldLog];
  if ([v13 shouldLogToDisk])
  {
    LODWORD(v15) = shouldLog | 2;
  }

  else
  {
    LODWORD(v15) = shouldLog;
  }

  oSLogObject = [v13 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v15 = v15;
  }

  else
  {
    v15 &= 2u;
  }

  if (v15)
  {
    v30 = 138412802;
    v31 = objc_opt_class();
    v32 = 2112;
    identifierCopy = identifier;
    v34 = 2112;
    identifier = [contact identifier];
    v17 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Assigning tone (%@) to contact (%@).", &v30, 32);
    if (v17)
    {
      v18 = v17;
      v19 = [NSString stringWithCString:v17 encoding:4];
      free(v18);
      v27 = v19;
      SSFileLog();
    }
  }

  v29 = 0;
  if (([store executeSaveRequest:v12 error:{&v29, v27}] & 1) == 0)
  {
    v20 = +[SSLogConfig sharedDaemonConfig];
    if (!v20)
    {
      v20 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v20 shouldLog];
    if ([v20 shouldLogToDisk])
    {
      LODWORD(v22) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v22) = shouldLog2;
    }

    oSLogObject2 = [v20 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v22 = v22;
    }

    else
    {
      v22 &= 2u;
    }

    if (v22)
    {
      v24 = objc_opt_class();
      v30 = 138412546;
      v31 = v24;
      v32 = 2112;
      identifierCopy = v29;
      LODWORD(v28) = 22;
      v25 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: Failed to assign tone to contact. %@", &v30, v28);
      if (v25)
      {
        v26 = v25;
        [NSString stringWithCString:v25 encoding:4];
        free(v26);
        SSFileLog();
      }
    }
  }
}

@end