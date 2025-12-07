@interface IMDServiceReachabilityBaseDelegate
- (BOOL)hasValidDowngradeRequestForHandleID:(id)d;
- (BOOL)isInternationalSpamFilteringEnabled;
- (BOOL)isMMSEnabledForContext:(id)context;
- (BOOL)isMessagesTheDefaultTextApp;
- (BOOL)isSMSEnabledForContext:(id)context;
- (BOOL)isUsableForSending;
- (BOOL)networkDataAvailable;
- (BOOL)shouldDowngradeToRecipient:(id)recipient fromSender:(id)sender withContext:(id)context;
- (IMDServiceReachabilityBaseDelegate)init;
- (IMDServiceReachabilityBaseDelegate)initWithServiceSession:(id)session;
- (IMDServiceSession)serviceSession;
- (NSArray)idsRegisteredSIMIDs;
- (NSArray)phoneNumbersOfActiveSubscriptions;
- (NSString)internalServiceName;
- (id)phoneNumberOnSubscriptionWithSIMID:(id)d;
@end

@implementation IMDServiceReachabilityBaseDelegate

- (IMDServiceSession)serviceSession
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (IMDServiceReachabilityBaseDelegate)initWithServiceSession:(id)session
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5.receiver = self;
  v5.super_class = IMDServiceReachabilityBaseDelegate;
  return [(IMDServiceReachabilityBaseDelegate *)&v5 init];
}

- (BOOL)networkDataAvailable
{
  sharedAccountController = [objc_opt_self() sharedAccountController];
  if (sharedAccountController)
  {
    v3 = sharedAccountController;
    networkDataAvailable = [sharedAccountController networkDataAvailable];

    LOBYTE(sharedAccountController) = networkDataAvailable;
  }

  else
  {
    __break(1u);
  }

  return sharedAccountController;
}

- (BOOL)isUsableForSending
{
  selfCopy = self;
  serviceSession = [(IMDServiceReachabilityBaseDelegate *)selfCopy serviceSession];
  if (serviceSession)
  {
    v4 = serviceSession;
    isActive = [(IMDServiceSession *)serviceSession isActive];
  }

  else
  {
    isActive = 0;
  }

  return isActive;
}

- (NSArray)idsRegisteredSIMIDs
{
  sharedInstance = [objc_opt_self() sharedInstance];
  registeredSIMIDs = [sharedInstance registeredSIMIDs];

  if (!registeredSIMIDs)
  {
    v4 = sub_22B7DB918();
    v5 = sub_22B7DB8F8();
    v4, v6, v7, v8, v9, v10, v11, v12, v14, v15;
    registeredSIMIDs = v5;
  }

  return registeredSIMIDs;
}

- (NSString)internalServiceName
{
  selfCopy = self;
  result = [(IMDServiceReachabilityBaseDelegate *)selfCopy serviceSession];
  if (result)
  {
    v4 = result;
    service = [(NSString *)result service];

    internalName = [service internalName];
    if (!internalName)
    {
      sub_22B7DB6A8();
      v8 = v7;
      internalName = sub_22B7DB678();
      v8, v9, v10, v11, v12, v13, v14, v15, v16, v17;
    }

    return internalName;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)phoneNumberOnSubscriptionWithSIMID:(id)d
{
  v4 = sub_22B7DB6A8();
  v6 = v5;
  selfCopy = self;
  sub_22B7C7E44(v4, v6);
  v9 = v8;

  v6, v10, v11, v12, v13, v14, v15, v16, v26, v28;
  if (v9)
  {
    v17 = sub_22B7DB678();
    v9, v18, v19, v20, v21, v22, v23, v24, v27, v29;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (NSArray)phoneNumbersOfActiveSubscriptions
{
  v3 = objc_opt_self();
  selfCopy = self;
  sharedInstance = [v3 sharedInstance];
  ctSubscriptionInfo = [sharedInstance ctSubscriptionInfo];

  if (ctSubscriptionInfo)
  {
    phoneNumbersOfActiveSubscriptions = [ctSubscriptionInfo phoneNumbersOfActiveSubscriptions];

    v8 = sub_22B7DB918();
    selfCopy = phoneNumbersOfActiveSubscriptions;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v9 = sub_22B7DB8F8();
  v8, v10, v11, v12, v13, v14, v15, v16, v18, v19;

  return v9;
}

- (BOOL)hasValidDowngradeRequestForHandleID:(id)d
{
  dCopy = d;
  selfCopy = self;
  serviceSession = [(IMDServiceReachabilityBaseDelegate *)selfCopy serviceSession];
  if (serviceSession)
  {
    v7 = serviceSession;
    v8 = [(IMDServiceSession *)serviceSession hasValidDowngradeRequestForHandleID:dCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (IMDServiceReachabilityBaseDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)isMessagesTheDefaultTextApp
{
  v2 = objc_opt_self();

  return [v2 isMessagesTheDefaultTextApp];
}

- (BOOL)isSMSEnabledForContext:(id)context
{
  v4 = objc_opt_self();
  selfCopy = self;
  sharedInstance = [v4 sharedInstance];
  if (sharedInstance)
  {
    v7 = sharedInstance;
    supportsSMS = [sharedInstance supportsSMS];

    if (supportsSMS)
    {
      v9 = 1;
    }

    else
    {
      sub_22B7C8040();
      v9 = v10;
    }

    LOBYTE(sharedInstance) = v9 & 1;
  }

  else
  {
    __break(1u);
  }

  return sharedInstance;
}

- (BOOL)isMMSEnabledForContext:(id)context
{
  v4 = objc_opt_self();
  contextCopy = context;
  senderLastAddressedHandle = [contextCopy senderLastAddressedHandle];
  senderLastAddressedSIMID = [contextCopy senderLastAddressedSIMID];
  LOBYTE(v4) = [v4 IMMMSEnabledForPhoneNumber:senderLastAddressedHandle simID:senderLastAddressedSIMID];

  return v4;
}

- (BOOL)shouldDowngradeToRecipient:(id)recipient fromSender:(id)sender withContext:(id)context
{
  v7 = sub_22B7DB6A8();
  v9 = v8;
  v10 = sub_22B7DB6A8();
  v12 = v11;
  contextCopy = context;
  selfCopy = self;
  LOBYTE(v10) = sub_22B7C7C04(v7, v9, v10, v12, contextCopy);

  v9, v15, v16, v17, v18, v19, v20, v21, v30, v32;
  v12, v22, v23, v24, v25, v26, v27, v28, v31, v33;
  return v10 & 1;
}

- (BOOL)isInternationalSpamFilteringEnabled
{
  v2 = objc_opt_self();

  return [v2 isInternationalSpamFilteringEnabled];
}

@end