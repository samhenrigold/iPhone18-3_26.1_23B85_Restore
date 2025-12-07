@interface UNNotificationContent
- (BOOL)isEqual:(id)equal;
- (NSArray)peopleIdentifiers;
- (NSDate)date;
- (NSSet)topicIdentifiers;
- (NSString)accessoryImageName;
- (NSString)contentType;
- (NSString)defaultActionBundleIdentifier;
- (NSString)defaultActionTitle;
- (NSString)footer;
- (NSString)header;
- (NSString)launchImageName;
- (NSString)subtitle;
- (NSURL)defaultActionURL;
- (UNNotificationContent)contentByUpdatingWithProvider:(id)provider error:(NSError *)outError;
- (UNNotificationContent)init;
- (UNNotificationContent)initWithCoder:(id)coder;
- (UNNotificationIcon)icon;
- (_UNNotificationCommunicationContext)communicationContext;
- (id)_descriptionForDebug:(BOOL)debug;
- (id)_initWithContentType:(id)type communicationContext:(id)context accessoryImageName:(id)name attachments:(id)attachments badge:(id)badge body:(id)body attributedBody:(id)attributedBody categoryIdentifier:(id)self0 date:(id)self1 icon:(id)self2 defaultActionTitle:(id)self3 defaultActionURL:(id)self4 defaultActionBundleIdentifier:(id)self5 expirationDate:(id)self6 header:(id)self7 footer:(id)self8 launchImageName:(id)self9 peopleIdentifiers:(id)identifiers shouldHideDate:(BOOL)hideDate shouldHideTime:(BOOL)time shouldIgnoreDoNotDisturb:(BOOL)disturb shouldIgnoreDowntime:(BOOL)downtime shouldSuppressScreenLightUp:(BOOL)up shouldAuthenticateDefaultAction:(BOOL)action shouldBackgroundDefaultAction:(BOOL)defaultAction shouldPreventNotificationDismissalAfterDefaultAction:(BOOL)afterDefaultAction shouldShowSubordinateIcon:(BOOL)subordinateIcon shouldSuppressDefaultAction:(BOOL)type0 shouldSuppressSyncDismissalWhenRemoved:(BOOL)type1 shouldUseRequestIdentifierForDismissalSync:(BOOL)type2 shouldPreemptPresentedNotification:(BOOL)type3 shouldDisplayActionsInline:(BOOL)type4 sound:(id)type5 subtitle:(id)type6 threadIdentifier:(id)type7 title:(id)type8 topicIdentifiers:(id)type9 realertCount:(unint64_t)context0 summaryArgument:(id)context1 summaryArgumentCount:(unint64_t)context2 targetContentIdentifier:(id)context3 interruptionLevel:(unint64_t)context4 relevanceScore:(double)context5 filterCriteria:(id)context6 screenCaptureProhibited:(BOOL)context7 speechLanguage:(id)context8 userInfo:(id)context9;
- (id)_safeAttributedStringForAttributedString:(id)string debug:(BOOL)debug;
- (id)_safeStringForString:(id)string debug:(BOOL)debug;
- (id)contentByUpdatingWithAttributedMessageContext:(id)context error:(id *)error;
- (id)contentByUpdatingWithReadAnnouncementIntent:(id)intent error:(id *)error;
- (id)contentByUpdatingWithSendMessageIntent:(id)intent error:(id *)error;
- (id)contentByUpdatingWithStartCallIntent:(id)intent error:(id *)error;
- (id)markedMutableCopyWithMessage:(id)message;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)addSecurityScope:(id)scope;
- (void)encodeWithCoder:(id)coder;
- (void)enterSecurityScope;
- (void)leaveSecurityScope;
- (void)removeSecurityScope;
@end

@implementation UNNotificationContent

- (UNNotificationContent)init
{
  v3 = [MEMORY[0x1E695DFD8] set];
  LOBYTE(v7) = 0;
  WORD2(v6) = 0;
  LODWORD(v6) = 0;
  v4 = [UNNotificationContent _initWithContentType:"_initWithContentType:communicationContext:accessoryImageName:attachments:badge:body:attributedBody:categoryIdentifier:date:icon:defaultActionTitle:defaultActionURL:defaultActionBundleIdentifier:expirationDate:header:footer:launchImageName:peopleIdentifiers:shouldHideDate:shouldHideTime:shouldIgnoreDoNotDisturb:shouldIgnoreDowntime:shouldSuppressScreenLightUp:shouldAuthenticateDefaultAction:shouldBackgroundDefaultAction:shouldPreventNotificationDismissalAfterDefaultAction:shouldShowSubordinateIcon:shouldSuppressDefaultAction:shouldSuppressSyncDismissalWhenRemoved:shouldUseRequestIdentifierForDismissalSync:shouldPreemptPresentedNotification:shouldDisplayActionsInline:sound:subtitle:threadIdentifier:title:topicIdentifiers:realertCount:summaryArgument:summaryArgumentCount:targetContentIdentifier:interruptionLevel:relevanceScore:filterCriteria:screenCaptureProhibited:speechLanguage:userInfo:" communicationContext:@"UNNotificationContentTypeDefault" accessoryImageName:0 attachments:0 badge:0.0 body:0 attributedBody:&stru_1F308F460 categoryIdentifier:0 date:0 icon:0 defaultActionTitle:0 defaultActionURL:0 defaultActionBundleIdentifier:0 expirationDate:&stru_1F308F460 header:&stru_1F308F460 footer:&stru_1F308F460 launchImageName:MEMORY[0x1E695E0F0] peopleIdentifiers:0 shouldHideDate:v6 shouldHideTime:0 shouldIgnoreDoNotDisturb:0 shouldIgnoreDowntime:&stru_1F308F460 shouldSuppressScreenLightUp:0 shouldAuthenticateDefaultAction:v3 shouldBackgroundDefaultAction:0 shouldPreventNotificationDismissalAfterDefaultAction:&stru_1F308F460 shouldShowSubordinateIcon:0 shouldSuppressDefaultAction:0 shouldSuppressSyncDismissalWhenRemoved:1 shouldUseRequestIdentifierForDismissalSync:0 shouldPreemptPresentedNotification:v7 shouldDisplayActionsInline:0 sound:0 subtitle:? threadIdentifier:? title:? topicIdentifiers:? realertCount:? summaryArgument:? summaryArgumentCount:? targetContentIdentifier:? interruptionLevel:? relevanceScore:? filterCriteria:? screenCaptureProhibited:? speechLanguage:? userInfo:?];

  return v4;
}

- (NSString)contentType
{
  v2 = [(NSString *)self->_contentType copy];

  return v2;
}

- (NSString)accessoryImageName
{
  v2 = [(NSString *)self->_accessoryImageName copy];

  return v2;
}

- (_UNNotificationCommunicationContext)communicationContext
{
  v2 = [(_UNNotificationCommunicationContext *)self->_communicationContext copy];

  return v2;
}

- (NSDate)date
{
  v2 = [(NSDate *)self->_date copy];

  return v2;
}

- (NSString)defaultActionTitle
{
  v2 = [(NSString *)self->_defaultActionTitle copy];

  return v2;
}

- (UNNotificationIcon)icon
{
  v2 = [(UNNotificationIcon *)self->_icon copy];

  return v2;
}

- (NSURL)defaultActionURL
{
  v2 = [(NSURL *)self->_defaultActionURL copy];

  return v2;
}

- (NSString)defaultActionBundleIdentifier
{
  v2 = [(NSString *)self->_defaultActionBundleIdentifier copy];

  return v2;
}

- (NSString)footer
{
  v2 = [(NSString *)self->_footer copy];

  return v2;
}

- (NSString)header
{
  v2 = [(NSString *)self->_header copy];

  return v2;
}

- (NSString)launchImageName
{
  v2 = [(NSString *)self->_launchImageName copy];

  return v2;
}

- (NSArray)peopleIdentifiers
{
  v2 = [(NSArray *)self->_peopleIdentifiers copy];

  return v2;
}

- (NSString)subtitle
{
  v2 = [(NSString *)self->_subtitle copy];

  return v2;
}

- (NSSet)topicIdentifiers
{
  v2 = [(NSSet *)self->_topicIdentifiers copy];

  return v2;
}

- (id)contentByUpdatingWithSendMessageIntent:(id)intent error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  v6 = [_UNMutableNotificationCommunicationContext mutableContextFromINIntent:intentCopy];
  sender = [intentCopy sender];
  if (sender)
  {
    serviceName = [intentCopy serviceName];
    v9 = [_UNNotificationContact contactFromINPerson:sender serviceName:serviceName];

    if (v9)
    {
      [v6 setSender:v9];
    }

    else
    {
      sender2 = [intentCopy sender];
      isMe = [sender2 isMe];

      if (isMe)
      {
        v12 = @"Warning: [INSendMessageIntent sender] isMe is YES. isMe should be NO for incoming notifications. Some notification features associated with INSendMessageIntent will not work.";
      }

      else
      {
        v12 = @"Warning: [INSendMessageIntent sender] is invalid. Some notification features associated with INSendMessageIntent will not work.";
      }

      UNLogToDeveloper(@"[UNNotificationContent contentByUpdatingWithProvider:(id<UNNotificationContentProviding>)]", v12);
    }
  }

  else
  {
    UNLogToDeveloper(@"[UNNotificationContent contentByUpdatingWithProvider:(id<UNNotificationContentProviding>)]", @"Warning: [INSendMessageIntent sender] is nil. Some notification features associated with INSendMessageIntent will not work.");
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  recipients = [intentCopy recipients];
  v14 = [recipients count];

  if (v14)
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    recipients2 = [intentCopy recipients];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __109__UNNotificationContent_UserNotifications_INSendMessageIntent__contentByUpdatingWithSendMessageIntent_error___block_invoke;
    v35[3] = &unk_1E7CFF750;
    v36 = intentCopy;
    v17 = v15;
    v37 = v17;
    v38 = &v39;
    [recipients2 enumerateObjectsUsingBlock:v35];

    [v6 setRecipients:v17];
  }

  speakableGroupName = [intentCopy speakableGroupName];
  spokenPhrase = [speakableGroupName spokenPhrase];
  [v6 setDisplayName:spokenPhrase];

  conversationIdentifier = [intentCopy conversationIdentifier];
  [v6 setIdentifier:conversationIdentifier];

  donationMetadata = [intentCopy donationMetadata];
  v22 = UNLogCommunicationNotifications;
  v23 = os_log_type_enabled(UNLogCommunicationNotifications, OS_LOG_TYPE_DEFAULT);
  if (donationMetadata)
  {
    if (v23)
    {
      *buf = 136446210;
      v44 = "[UNNotificationContent(UserNotifications_INSendMessageIntent) contentByUpdatingWithSendMessageIntent:error:]";
      _os_log_impl(&dword_1B85E3000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s: Intent has INSendMessageIntentDonationMetadata", buf, 0xCu);
    }

    [v6 setMentionsCurrentUser:{objc_msgSend(donationMetadata, "mentionsCurrentUser")}];
    [v6 setNotifyRecipientAnyway:{objc_msgSend(donationMetadata, "notifyRecipientAnyway")}];
    [v6 setReplyToCurrentUser:{objc_msgSend(donationMetadata, "isReplyToCurrentUser")}];
    [v6 setBusinessCorrespondence:{objc_msgSend(donationMetadata, "isBusinessChat")}];
    recipientCount = [donationMetadata recipientCount];
    if (recipientCount)
    {
      v25 = recipientCount - *(v40 + 24);
      goto LABEL_20;
    }
  }

  else if (v23)
  {
    *buf = 136446210;
    v44 = "[UNNotificationContent(UserNotifications_INSendMessageIntent) contentByUpdatingWithSendMessageIntent:error:]";
    _os_log_impl(&dword_1B85E3000, v22, OS_LOG_TYPE_DEFAULT, "%{public}s: Intent does not have INSendMessageIntentDonationMetadata", buf, 0xCu);
  }

  v25 = 0;
LABEL_20:
  recipients3 = [v6 recipients];
  v27 = [recipients3 count];

  if (v27 <= v25)
  {
    v28 = v25;
  }

  else
  {
    v28 = v27;
  }

  [v6 setRecipientCount:v28];
  v29 = [(UNNotificationContent *)self mutableCopy];
  [v29 setCommunicationContext:v6];
  isGroup = [v6 isGroup];
  v31 = _UNNotificationContentTypeMessagingGroup;
  if (!isGroup)
  {
    v31 = _UNNotificationContentTypeMessagingDirect;
  }

  [v29 setContentType:*v31];
  v32 = UNLogCommunicationNotifications;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    contentType = [v29 contentType];
    *buf = 136446466;
    v44 = "[UNNotificationContent(UserNotifications_INSendMessageIntent) contentByUpdatingWithSendMessageIntent:error:]";
    v45 = 2114;
    v46 = contentType;
    _os_log_impl(&dword_1B85E3000, v32, OS_LOG_TYPE_DEFAULT, "%{public}s: Created communication context for INSendMessageIntent. Set [UNNotificationContent contentType] to '%{public}@'", buf, 0x16u);
  }

  _Block_object_dispose(&v39, 8);

  return v29;
}

void __109__UNNotificationContent_UserNotifications_INSendMessageIntent__contentByUpdatingWithSendMessageIntent_error___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) serviceName];
  v4 = [_UNNotificationContact contactFromINPerson:v5 serviceName:v3];

  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }

  else if ([v5 isMe])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (id)contentByUpdatingWithAttributedMessageContext:(id)context error:(id *)error
{
  contextCopy = context;
  v7 = contextCopy;
  if (contextCopy)
  {
    sendMessageIntent = [contextCopy sendMessageIntent];
    if (sendMessageIntent)
    {
      v9 = [(UNNotificationContent *)self contentByUpdatingWithSendMessageIntent:sendMessageIntent error:error];
      v10 = [v9 mutableCopy];

      attributedContent = [v7 attributedContent];
      [v10 setAttributedBody:attributedContent];

      v12 = [v10 copy];
    }

    else
    {
      UNLogToDeveloper(@"[UNNotificationContent contentByUpdatingWithProvider:(id<UNNotificationContentProviding>)]", @"Warning: [UNNotificationAttributedMessageContext sendMessageIntent] is nil. Some notification features associated with INSendMessageIntent will not work.");
      v12 = [(UNNotificationContent *)self copy];
    }
  }

  else
  {
    UNLogToDeveloper(@"[UNNotificationContent contentByUpdatingWithProvider:(id<UNNotificationContentProviding>)]", @"Warning: attributedMessageContext is nil. Some notification features associated with UNNotificationAttributedMessageContext will not work.");
    v12 = [(UNNotificationContent *)self copy];
  }

  return v12;
}

- (id)contentByUpdatingWithStartCallIntent:(id)intent error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  v6 = [_UNMutableNotificationCommunicationContext mutableContextFromINIntent:intentCopy];
  contacts = [intentCopy contacts];
  v8 = [contacts count];

  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    contacts2 = [intentCopy contacts];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __111__UNNotificationContent_UserNotifications_INStartCallIntentIntent__contentByUpdatingWithStartCallIntent_error___block_invoke;
    v23[3] = &unk_1E7CFF800;
    v24 = intentCopy;
    v11 = v6;
    v25 = v11;
    v26 = v9;
    v12 = v9;
    [contacts2 enumerateObjectsUsingBlock:v23];

    [v11 setRecipients:v12];
    [v11 setRecipientCount:{objc_msgSend(v12, "count")}];
  }

  else
  {
    UNLogToDeveloper(@"[UNNotificationContent contentByUpdatingWithProvider:(id<UNNotificationContentProviding>)]", @"Warning: [INStartCallIntent contacts] is empty. Some notification features associated with INStartCallIntent will not work.");
  }

  if ([intentCopy callCapability] == 2)
  {
    [v6 setCapabilities:1];
  }

  v13 = [(UNNotificationContent *)self mutableCopy];
  [v13 setCommunicationContext:v6];
  if ([intentCopy destinationType] == 3)
  {
    v14 = _UNNotificationContentTypeVoicemail;
  }

  else if ([intentCopy destinationType] == 5 && (objc_msgSend(intentCopy, "callRecordToCallBack"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "callRecordType"), v15, v16 == 2))
  {
    v14 = _UNNotificationContentTypeMissedCall;
  }

  else
  {
    destinationType = [intentCopy destinationType];
    v14 = _UNNotificationContentTypeCallOther;
    if (destinationType == 1)
    {
      v14 = _UNNotificationContentTypeIncomingCall;
    }
  }

  v18 = *v14;
  [v13 setContentType:v18];
  v19 = UNLogCommunicationNotifications;
  if (os_log_type_enabled(UNLogCommunicationNotifications, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    contentType = [v13 contentType];
    *buf = 136446466;
    v28 = "[UNNotificationContent(UserNotifications_INStartCallIntentIntent) contentByUpdatingWithStartCallIntent:error:]";
    v29 = 2114;
    v30 = contentType;
    _os_log_impl(&dword_1B85E3000, v20, OS_LOG_TYPE_DEFAULT, "%{public}s: Created communication context for INStartCallIntent. Set [UNNotificationContent contentType] to '%{public}@'", buf, 0x16u);
  }

  return v13;
}

void __111__UNNotificationContent_UserNotifications_INStartCallIntentIntent__contentByUpdatingWithStartCallIntent_error___block_invoke(id *a1, uint64_t a2)
{
  v3 = [_UNNotificationContact contactFromINPerson:a2 serviceName:0];
  if (v3)
  {
    v6 = v3;
    v4 = [a1[4] contacts];
    v5 = [v4 count];

    if (v5 == 1)
    {
      [a1[5] setSender:v6];
    }

    else
    {
      [a1[6] addObject:v6];
    }

    v3 = v6;
  }
}

- (id)contentByUpdatingWithReadAnnouncementIntent:(id)intent error:(id *)error
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [(UNNotificationContent *)self mutableCopy:intent];
  v5 = UNLogCommunicationNotifications;
  if (os_log_type_enabled(UNLogCommunicationNotifications, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[UNNotificationContent(UserNotifications_INStartCallIntentIntent) contentByUpdatingWithReadAnnouncementIntent:error:]";
    v9 = 2114;
    v10 = @"UNNotificationContentTypeIntercom";
    _os_log_impl(&dword_1B85E3000, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: Setting content type to '%{public}@'", &v7, 0x16u);
  }

  [v4 setContentType:@"UNNotificationContentTypeIntercom"];

  return v4;
}

- (UNNotificationContent)contentByUpdatingWithProvider:(id)provider error:(NSError *)outError
{
  v28[3] = *MEMORY[0x1E69E9840];
  v6 = provider;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v7 = getINSendMessageIntentClass_softClass_0;
  v25 = getINSendMessageIntentClass_softClass_0;
  if (!getINSendMessageIntentClass_softClass_0)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getINSendMessageIntentClass_block_invoke_0;
    v27 = &unk_1E7CFF990;
    v28[0] = &v22;
    __getINSendMessageIntentClass_block_invoke_0(buf);
    v7 = v23[3];
  }

  v8 = v7;
  _Block_object_dispose(&v22, 8);
  if (objc_opt_isKindOfClass())
  {
    v9 = [(UNNotificationContent *)self contentByUpdatingWithSendMessageIntent:v6 error:outError];
LABEL_15:
    v14 = v9;
    goto LABEL_16;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v10 = getINStartCallIntentClass_softClass_0;
  v25 = getINStartCallIntentClass_softClass_0;
  if (!getINStartCallIntentClass_softClass_0)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getINStartCallIntentClass_block_invoke_0;
    v27 = &unk_1E7CFF990;
    v28[0] = &v22;
    __getINStartCallIntentClass_block_invoke_0(buf);
    v10 = v23[3];
  }

  v11 = v10;
  _Block_object_dispose(&v22, 8);
  if (objc_opt_isKindOfClass())
  {
    v9 = [(UNNotificationContent *)self contentByUpdatingWithStartCallIntent:v6 error:outError];
    goto LABEL_15;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v12 = getINReadAnnouncementIntentClass_softClass;
  v25 = getINReadAnnouncementIntentClass_softClass;
  if (!getINReadAnnouncementIntentClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getINReadAnnouncementIntentClass_block_invoke;
    v27 = &unk_1E7CFF990;
    v28[0] = &v22;
    __getINReadAnnouncementIntentClass_block_invoke(buf);
    v12 = v23[3];
  }

  v13 = v12;
  _Block_object_dispose(&v22, 8);
  if (objc_opt_isKindOfClass())
  {
    v9 = [(UNNotificationContent *)self contentByUpdatingWithReadAnnouncementIntent:v6 error:outError];
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(UNNotificationContent *)self contentByUpdatingWithAttributedMessageContext:v6 error:outError];
    goto LABEL_15;
  }

  if (outError)
  {
    *outError = [MEMORY[0x1E696ABC0] un_errorWithUNErrorCode:1500 userInfo:0];
  }

  objc_opt_class();
  UNLogToDeveloper(@"[UNNotificationContent contentByUpdatingWithProvider:(id<UNNotificationContentProviding>)]", @"%{public}s: Error: You provided an invalid object of type %{public}@. Only system framework objects conforming to UNNotificationContentProviding are allowed.");
  v14 = 0;
LABEL_16:
  v15 = UNLogCommunicationNotifications;
  if (os_log_type_enabled(UNLogCommunicationNotifications, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    contentType = [v14 contentType];
    communicationContext = [v14 communicationContext];
    *buf = 136446978;
    *&buf[4] = "[UNNotificationContent contentByUpdatingWithProvider:error:]";
    *&buf[12] = 2114;
    *&buf[14] = v18;
    *&buf[22] = 2114;
    v27 = contentType;
    LOWORD(v28[0]) = 2114;
    *(v28 + 2) = communicationContext;
    _os_log_impl(&dword_1B85E3000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s: Provided object of type '%{public}@'. Assigned content type: '%{public}@' Created communication context: '%{public}@'", buf, 0x2Au);
  }

  return v14;
}

- (id)_initWithContentType:(id)type communicationContext:(id)context accessoryImageName:(id)name attachments:(id)attachments badge:(id)badge body:(id)body attributedBody:(id)attributedBody categoryIdentifier:(id)self0 date:(id)self1 icon:(id)self2 defaultActionTitle:(id)self3 defaultActionURL:(id)self4 defaultActionBundleIdentifier:(id)self5 expirationDate:(id)self6 header:(id)self7 footer:(id)self8 launchImageName:(id)self9 peopleIdentifiers:(id)identifiers shouldHideDate:(BOOL)hideDate shouldHideTime:(BOOL)time shouldIgnoreDoNotDisturb:(BOOL)disturb shouldIgnoreDowntime:(BOOL)downtime shouldSuppressScreenLightUp:(BOOL)up shouldAuthenticateDefaultAction:(BOOL)action shouldBackgroundDefaultAction:(BOOL)defaultAction shouldPreventNotificationDismissalAfterDefaultAction:(BOOL)afterDefaultAction shouldShowSubordinateIcon:(BOOL)subordinateIcon shouldSuppressDefaultAction:(BOOL)type0 shouldSuppressSyncDismissalWhenRemoved:(BOOL)type1 shouldUseRequestIdentifierForDismissalSync:(BOOL)type2 shouldPreemptPresentedNotification:(BOOL)type3 shouldDisplayActionsInline:(BOOL)type4 sound:(id)type5 subtitle:(id)type6 threadIdentifier:(id)type7 title:(id)type8 topicIdentifiers:(id)type9 realertCount:(unint64_t)context0 summaryArgument:(id)context1 summaryArgumentCount:(unint64_t)context2 targetContentIdentifier:(id)context3 interruptionLevel:(unint64_t)context4 relevanceScore:(double)context5 filterCriteria:(id)context6 screenCaptureProhibited:(BOOL)context7 speechLanguage:(id)context8 userInfo:(id)context9
{
  typeCopy = type;
  contextCopy = context;
  obj = name;
  nameCopy = name;
  attachmentsCopy = attachments;
  badgeCopy = badge;
  bodyCopy = body;
  attributedBodyCopy = attributedBody;
  identifierCopy = identifier;
  dateCopy = date;
  iconCopy = icon;
  titleCopy = title;
  lCopy = l;
  bundleIdentifierCopy = bundleIdentifier;
  expirationDateCopy = expirationDate;
  headerCopy = header;
  footerCopy = footer;
  imageNameCopy = imageName;
  identifiersCopy = identifiers;
  soundCopy = sound;
  subtitleCopy = subtitle;
  threadIdentifierCopy = threadIdentifier;
  v56 = a38;
  topicIdentifiersCopy = topicIdentifiers;
  argumentCopy = argument;
  contentIdentifierCopy = contentIdentifier;
  criteriaCopy = criteria;
  languageCopy = language;
  infoCopy = info;
  if (!infoCopy)
  {
    infoCopy = [MEMORY[0x1E695DF20] dictionary];
  }

  v116 = infoCopy;
  v130.receiver = self;
  v130.super_class = UNNotificationContent;
  v63 = [(UNNotificationContent *)&v130 init];
  if (v63)
  {
    v64 = [typeCopy copy];
    contentType = v63->_contentType;
    v63->_contentType = v64;

    v66 = [contextCopy copy];
    communicationContext = v63->_communicationContext;
    v63->_communicationContext = v66;

    objc_storeStrong(&v63->_accessoryImageName, obj);
    v68 = [attachmentsCopy copy];
    attachments = v63->_attachments;
    v63->_attachments = v68;

    v70 = [badgeCopy copy];
    badge = v63->_badge;
    v63->_badge = v70;

    v72 = [bodyCopy copy];
    body = v63->_body;
    v63->_body = v72;

    v74 = [attributedBodyCopy copy];
    attributedBody = v63->_attributedBody;
    v63->_attributedBody = v74;

    v76 = [identifierCopy copy];
    categoryIdentifier = v63->_categoryIdentifier;
    v63->_categoryIdentifier = v76;

    v78 = [dateCopy copy];
    date = v63->_date;
    v63->_date = v78;

    v80 = [expirationDateCopy copy];
    expirationDate = v63->_expirationDate;
    v63->_expirationDate = v80;

    objc_storeStrong(&v63->_icon, icon);
    objc_storeStrong(&v63->_defaultActionTitle, title);
    objc_storeStrong(&v63->_defaultActionURL, l);
    objc_storeStrong(&v63->_defaultActionBundleIdentifier, bundleIdentifier);
    objc_storeStrong(&v63->_header, header);
    objc_storeStrong(&v63->_footer, footer);
    v82 = [imageNameCopy copy];
    launchImageName = v63->_launchImageName;
    v63->_launchImageName = v82;

    v84 = [identifiersCopy copy];
    peopleIdentifiers = v63->_peopleIdentifiers;
    v63->_peopleIdentifiers = v84;

    v63->_shouldHideDate = hideDate;
    v63->_shouldHideTime = time;
    v63->_shouldIgnoreDoNotDisturb = disturb;
    v63->_shouldIgnoreDowntime = downtime;
    v63->_shouldAuthenticateDefaultAction = action;
    v63->_shouldBackgroundDefaultAction = defaultAction;
    v63->_shouldPreventNotificationDismissalAfterDefaultAction = afterDefaultAction;
    v63->_shouldShowSubordinateIcon = subordinateIcon;
    v63->_shouldSuppressDefaultAction = suppressDefaultAction;
    v63->_shouldSuppressScreenLightUp = up;
    v63->_shouldSuppressSyncDismissalWhenRemoved = removed;
    v63->_shouldUseRequestIdentifierForDismissalSync = sync;
    v63->_shouldPreemptPresentedNotification = notification;
    v63->_shouldDisplayActionsInline = inline;
    v86 = [soundCopy copy];
    sound = v63->_sound;
    v63->_sound = v86;

    v88 = [subtitleCopy copy];
    subtitle = v63->_subtitle;
    v63->_subtitle = v88;

    v90 = [threadIdentifierCopy copy];
    threadIdentifier = v63->_threadIdentifier;
    v63->_threadIdentifier = v90;

    v92 = [v56 copy];
    title = v63->_title;
    v63->_title = v92;

    v94 = [topicIdentifiersCopy copy];
    topicIdentifiers = v63->_topicIdentifiers;
    v63->_topicIdentifiers = v94;

    v63->_realertCount = count;
    v96 = [argumentCopy copy];
    summaryArgument = v63->_summaryArgument;
    v63->_summaryArgument = v96;

    v63->_summaryArgumentCount = argumentCount;
    v98 = [contentIdentifierCopy copy];
    targetContentIdentifier = v63->_targetContentIdentifier;
    v63->_targetContentIdentifier = v98;

    v63->_interruptionLevel = level;
    v63->_relevanceScore = score;
    v100 = [criteriaCopy copy];
    filterCriteria = v63->_filterCriteria;
    v63->_filterCriteria = v100;

    v63->_screenCaptureProhibited = prohibited;
    v102 = [languageCopy copy];
    speechLanguage = v63->_speechLanguage;
    v63->_speechLanguage = v102;

    v104 = [v116 copy];
    userInfo = v63->_userInfo;
    v63->_userInfo = v104;
  }

  return v63;
}

- (unint64_t)hash
{
  contentType = [(UNNotificationContent *)self contentType];
  v3 = [contentType hash];
  communicationContext = [(UNNotificationContent *)self communicationContext];
  v4 = [communicationContext hash] ^ v3;
  accessoryImageName = [(UNNotificationContent *)self accessoryImageName];
  v5 = [accessoryImageName hash];
  attachments = [(UNNotificationContent *)self attachments];
  v6 = v4 ^ v5 ^ [attachments hash];
  badge = [(UNNotificationContent *)self badge];
  v7 = [badge hash];
  body = [(UNNotificationContent *)self body];
  v8 = v7 ^ [body hash];
  attributedBody = [(UNNotificationContent *)self attributedBody];
  v9 = v6 ^ v8 ^ [attributedBody hash];
  categoryIdentifier = [(UNNotificationContent *)self categoryIdentifier];
  v10 = [categoryIdentifier hash];
  date = [(UNNotificationContent *)self date];
  v11 = v10 ^ [date hash];
  expirationDate = [(UNNotificationContent *)self expirationDate];
  v12 = v11 ^ [expirationDate hash];
  defaultActionTitle = [(UNNotificationContent *)self defaultActionTitle];
  v13 = v9 ^ v12 ^ [defaultActionTitle hash];
  defaultActionURL = [(UNNotificationContent *)self defaultActionURL];
  v14 = [defaultActionURL hash];
  defaultActionBundleIdentifier = [(UNNotificationContent *)self defaultActionBundleIdentifier];
  v15 = v14 ^ [defaultActionBundleIdentifier hash];
  icon = [(UNNotificationContent *)self icon];
  v16 = v15 ^ [icon hash];
  header = [(UNNotificationContent *)self header];
  v17 = v16 ^ [header hash];
  footer = [(UNNotificationContent *)self footer];
  v18 = v13 ^ v17 ^ [footer hash];
  launchImageName = [(UNNotificationContent *)self launchImageName];
  v19 = [launchImageName hash];
  peopleIdentifiers = [(UNNotificationContent *)self peopleIdentifiers];
  v20 = v19 ^ [peopleIdentifiers hash];
  v21 = v20 ^ [(UNNotificationContent *)self shouldHideDate];
  v22 = v21 ^ [(UNNotificationContent *)self shouldHideTime];
  v23 = v22 ^ [(UNNotificationContent *)self shouldIgnoreDoNotDisturb];
  v24 = v18 ^ v23 ^ [(UNNotificationContent *)self shouldIgnoreDowntime];
  shouldSuppressScreenLightUp = [(UNNotificationContent *)self shouldSuppressScreenLightUp];
  v26 = shouldSuppressScreenLightUp ^ [(UNNotificationContent *)self shouldAuthenticateDefaultAction];
  v27 = v26 ^ [(UNNotificationContent *)self shouldBackgroundDefaultAction];
  v28 = v27 ^ [(UNNotificationContent *)self shouldShowSubordinateIcon];
  v29 = v28 ^ [(UNNotificationContent *)self shouldPreventNotificationDismissalAfterDefaultAction];
  v30 = v24 ^ v29 ^ [(UNNotificationContent *)self shouldSuppressDefaultAction];
  shouldSuppressSyncDismissalWhenRemoved = [(UNNotificationContent *)self shouldSuppressSyncDismissalWhenRemoved];
  v32 = shouldSuppressSyncDismissalWhenRemoved ^ [(UNNotificationContent *)self shouldUseRequestIdentifierForDismissalSync];
  v33 = v32 ^ [(UNNotificationContent *)self shouldPreemptPresentedNotification];
  v34 = v33 ^ [(UNNotificationContent *)self shouldDisplayActionsInline];
  sound = [(UNNotificationContent *)self sound];
  v35 = v34 ^ [sound hash];
  subtitle = [(UNNotificationContent *)self subtitle];
  v36 = v35 ^ [subtitle hash];
  threadIdentifier = [(UNNotificationContent *)self threadIdentifier];
  v38 = v30 ^ v36 ^ [threadIdentifier hash];
  title = [(UNNotificationContent *)self title];
  v40 = [title hash];
  topicIdentifiers = [(UNNotificationContent *)self topicIdentifiers];
  v42 = v40 ^ [topicIdentifiers hash];
  v43 = v42 ^ [(UNNotificationContent *)self realertCount];
  summaryArgument = [(UNNotificationContent *)self summaryArgument];
  v45 = v43 ^ [summaryArgument hash];
  v46 = v45 ^ [(UNNotificationContent *)self summaryArgumentCount];
  targetContentIdentifier = [(UNNotificationContent *)self targetContentIdentifier];
  v48 = v46 ^ [targetContentIdentifier hash];
  v49 = v48 ^ [(UNNotificationContent *)self interruptionLevel];
  v50 = MEMORY[0x1E696AD98];
  [(UNNotificationContent *)self relevanceScore];
  v51 = [v50 numberWithDouble:?];
  v52 = v49 ^ [v51 hash];
  filterCriteria = [(UNNotificationContent *)self filterCriteria];
  v60 = v38 ^ v52 ^ [filterCriteria hash];
  screenCaptureProhibited = [(UNNotificationContent *)self screenCaptureProhibited];
  userInfo = [(UNNotificationContent *)self userInfo];
  v56 = screenCaptureProhibited ^ [userInfo hash];

  speechLanguage = [(UNNotificationContent *)self speechLanguage];
  v58 = v56 ^ [speechLanguage hash];

  return v60 ^ v58;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0
    && (-[UNNotificationContent contentType](self, "contentType"), v5 = objc_claimAutoreleasedReturnValue(), [equalCopy contentType], v6 = objc_claimAutoreleasedReturnValue(), v7 = UNEqualStrings(v5, v6), v6, v5, v7)
    && (-[UNNotificationContent communicationContext](self, "communicationContext"), v8 = objc_claimAutoreleasedReturnValue(), [equalCopy communicationContext], v9 = objc_claimAutoreleasedReturnValue(), v10 = UNEqualObjects(v8, v9), v9, v8, v10)
    && (-[UNNotificationContent accessoryImageName](self, "accessoryImageName"), v11 = objc_claimAutoreleasedReturnValue(), [equalCopy accessoryImageName], v12 = objc_claimAutoreleasedReturnValue(), v13 = UNEqualObjects(v11, v12), v12, v11, v13)
    && (-[UNNotificationContent attachments](self, "attachments"), v14 = objc_claimAutoreleasedReturnValue(), [equalCopy attachments], v15 = objc_claimAutoreleasedReturnValue(), v16 = UNEqualObjects(v14, v15), v15, v14, v16)
    && (-[UNNotificationContent badge](self, "badge"), v17 = objc_claimAutoreleasedReturnValue(), [equalCopy badge], v18 = objc_claimAutoreleasedReturnValue(), v19 = UNEqualObjects(v17, v18), v18, v17, v19)
    && (-[UNNotificationContent body](self, "body"), v20 = objc_claimAutoreleasedReturnValue(), [equalCopy body], v21 = objc_claimAutoreleasedReturnValue(), v22 = UNEqualObjects(v20, v21), v21, v20, v22)
    && (-[UNNotificationContent attributedBody](self, "attributedBody"), v23 = objc_claimAutoreleasedReturnValue(), [equalCopy attributedBody], v24 = objc_claimAutoreleasedReturnValue(), v25 = UNEqualObjects(v23, v24), v24, v23, v25)
    && (-[UNNotificationContent categoryIdentifier](self, "categoryIdentifier"), v26 = objc_claimAutoreleasedReturnValue(), [equalCopy categoryIdentifier], v27 = objc_claimAutoreleasedReturnValue(), v28 = UNEqualStrings(v26, v27), v27, v26, v28)
    && (-[UNNotificationContent date](self, "date"), v29 = objc_claimAutoreleasedReturnValue(), [equalCopy date], v30 = objc_claimAutoreleasedReturnValue(), v31 = UNEqualObjects(v29, v30), v30, v29, v31)
    && (-[UNNotificationContent expirationDate](self, "expirationDate"), v32 = objc_claimAutoreleasedReturnValue(), [equalCopy expirationDate], v33 = objc_claimAutoreleasedReturnValue(), v34 = UNEqualObjects(v32, v33), v33, v32, v34)
    && (-[UNNotificationContent defaultActionTitle](self, "defaultActionTitle"), v35 = objc_claimAutoreleasedReturnValue(), [equalCopy defaultActionTitle], v36 = objc_claimAutoreleasedReturnValue(), v37 = UNEqualStrings(v35, v36), v36, v35, v37)
    && (-[UNNotificationContent defaultActionURL](self, "defaultActionURL"), v38 = objc_claimAutoreleasedReturnValue(), [equalCopy defaultActionURL], v39 = objc_claimAutoreleasedReturnValue(), v40 = UNEqualObjects(v38, v39), v39, v38, v40)
    && (-[UNNotificationContent defaultActionBundleIdentifier](self, "defaultActionBundleIdentifier"), v41 = objc_claimAutoreleasedReturnValue(), [equalCopy defaultActionBundleIdentifier], v42 = objc_claimAutoreleasedReturnValue(), v43 = UNEqualStrings(v41, v42), v42, v41, v43)
    && (-[UNNotificationContent icon](self, "icon"), v44 = objc_claimAutoreleasedReturnValue(), [equalCopy icon], v45 = objc_claimAutoreleasedReturnValue(), v46 = UNEqualObjects(v44, v45), v45, v44, v46)
    && (-[UNNotificationContent header](self, "header"), v47 = objc_claimAutoreleasedReturnValue(), [equalCopy header], v48 = objc_claimAutoreleasedReturnValue(), v49 = UNEqualStrings(v47, v48), v48, v47, v49)
    && (-[UNNotificationContent footer](self, "footer"), v50 = objc_claimAutoreleasedReturnValue(), [equalCopy footer], v51 = objc_claimAutoreleasedReturnValue(), v52 = UNEqualStrings(v50, v51), v51, v50, v52)
    && (-[UNNotificationContent launchImageName](self, "launchImageName"), v53 = objc_claimAutoreleasedReturnValue(), [equalCopy launchImageName], v54 = objc_claimAutoreleasedReturnValue(), v55 = UNEqualObjects(v53, v54), v54, v53, v55)
    && (-[UNNotificationContent peopleIdentifiers](self, "peopleIdentifiers"), v56 = objc_claimAutoreleasedReturnValue(), [equalCopy peopleIdentifiers], v57 = objc_claimAutoreleasedReturnValue(), v58 = UNEqualObjects(v56, v57), v57, v56, v58)
    && (v59 = -[UNNotificationContent shouldHideDate](self, "shouldHideDate"), v59 == [equalCopy shouldHideDate])
    && (v60 = -[UNNotificationContent shouldHideTime](self, "shouldHideTime"), v60 == [equalCopy shouldHideTime])
    && (v61 = -[UNNotificationContent shouldIgnoreDoNotDisturb](self, "shouldIgnoreDoNotDisturb"), v61 == [equalCopy shouldIgnoreDoNotDisturb])
    && (v62 = -[UNNotificationContent shouldIgnoreDowntime](self, "shouldIgnoreDowntime"), v62 == [equalCopy shouldIgnoreDowntime])
    && (v63 = -[UNNotificationContent shouldAuthenticateDefaultAction](self, "shouldAuthenticateDefaultAction"), v63 == [equalCopy shouldAuthenticateDefaultAction])
    && (v64 = -[UNNotificationContent shouldBackgroundDefaultAction](self, "shouldBackgroundDefaultAction"), v64 == [equalCopy shouldBackgroundDefaultAction])
    && (v65 = -[UNNotificationContent shouldShowSubordinateIcon](self, "shouldShowSubordinateIcon"), v65 == [equalCopy shouldShowSubordinateIcon])
    && (v66 = -[UNNotificationContent shouldPreventNotificationDismissalAfterDefaultAction](self, "shouldPreventNotificationDismissalAfterDefaultAction"), v66 == [equalCopy shouldPreventNotificationDismissalAfterDefaultAction])
    && (v67 = -[UNNotificationContent shouldSuppressDefaultAction](self, "shouldSuppressDefaultAction"), v67 == [equalCopy shouldSuppressDefaultAction])
    && (v68 = -[UNNotificationContent shouldSuppressScreenLightUp](self, "shouldSuppressScreenLightUp"), v68 == [equalCopy shouldSuppressScreenLightUp])
    && (v69 = -[UNNotificationContent shouldSuppressSyncDismissalWhenRemoved](self, "shouldSuppressSyncDismissalWhenRemoved"), v69 == [equalCopy shouldSuppressSyncDismissalWhenRemoved])
    && (v70 = -[UNNotificationContent shouldUseRequestIdentifierForDismissalSync](self, "shouldUseRequestIdentifierForDismissalSync"), v70 == [equalCopy shouldUseRequestIdentifierForDismissalSync])
    && (v71 = -[UNNotificationContent shouldPreemptPresentedNotification](self, "shouldPreemptPresentedNotification"), v71 == [equalCopy shouldPreemptPresentedNotification])
    && (v72 = -[UNNotificationContent shouldDisplayActionsInline](self, "shouldDisplayActionsInline"), v72 == [equalCopy shouldDisplayActionsInline])
    && (-[UNNotificationContent sound](self, "sound"), v73 = objc_claimAutoreleasedReturnValue(), [equalCopy sound], v74 = objc_claimAutoreleasedReturnValue(), v75 = UNEqualObjects(v73, v74), v74, v73, v75)
    && (-[UNNotificationContent subtitle](self, "subtitle"), v76 = objc_claimAutoreleasedReturnValue(), [equalCopy subtitle], v77 = objc_claimAutoreleasedReturnValue(), v78 = UNEqualObjects(v76, v77), v77, v76, v78)
    && (-[UNNotificationContent threadIdentifier](self, "threadIdentifier"), v79 = objc_claimAutoreleasedReturnValue(), [equalCopy threadIdentifier], v80 = objc_claimAutoreleasedReturnValue(), v81 = UNEqualStrings(v79, v80), v80, v79, v81)
    && (-[UNNotificationContent title](self, "title"), v82 = objc_claimAutoreleasedReturnValue(), [equalCopy title], v83 = objc_claimAutoreleasedReturnValue(), v84 = UNEqualObjects(v82, v83), v83, v82, v84)
    && (-[UNNotificationContent topicIdentifiers](self, "topicIdentifiers"), v85 = objc_claimAutoreleasedReturnValue(), [equalCopy topicIdentifiers], v86 = objc_claimAutoreleasedReturnValue(), v87 = UNEqualObjects(v85, v86), v86, v85, v87)
    && (v88 = -[UNNotificationContent realertCount](self, "realertCount"), v88 == [equalCopy realertCount])
    && (-[UNNotificationContent summaryArgument](self, "summaryArgument"), v89 = objc_claimAutoreleasedReturnValue(), [equalCopy summaryArgument], v90 = objc_claimAutoreleasedReturnValue(), v91 = UNEqualStrings(v89, v90), v90, v89, v91)
    && (v92 = -[UNNotificationContent summaryArgumentCount](self, "summaryArgumentCount"), v92 == [equalCopy summaryArgumentCount])
    && (-[UNNotificationContent targetContentIdentifier](self, "targetContentIdentifier"), v93 = objc_claimAutoreleasedReturnValue(), [equalCopy targetContentIdentifier], v94 = objc_claimAutoreleasedReturnValue(), v95 = UNEqualStrings(v93, v94), v94, v93, v95)
    && (v96 = -[UNNotificationContent interruptionLevel](self, "interruptionLevel"), v96 == [equalCopy interruptionLevel])
    && (-[UNNotificationContent relevanceScore](self, "relevanceScore"), v98 = v97, [equalCopy relevanceScore], v98 == v99)
    && (-[UNNotificationContent filterCriteria](self, "filterCriteria"), v100 = objc_claimAutoreleasedReturnValue(), [equalCopy filterCriteria], v101 = objc_claimAutoreleasedReturnValue(), v102 = UNEqualStrings(v100, v101), v101, v100, v102)
    && (v103 = -[UNNotificationContent screenCaptureProhibited](self, "screenCaptureProhibited"), v103 == [equalCopy screenCaptureProhibited])
    && (-[UNNotificationContent userInfo](self, "userInfo"), v104 = objc_claimAutoreleasedReturnValue(), [equalCopy userInfo], v105 = objc_claimAutoreleasedReturnValue(), v106 = UNEqualObjects(v104, v105), v105, v104, v106))
  {
    speechLanguage = [(UNNotificationContent *)self speechLanguage];
    speechLanguage2 = [equalCopy speechLanguage];
    v109 = UNEqualStrings(speechLanguage, speechLanguage2);
  }

  else
  {
    v109 = 0;
  }

  return v109;
}

- (id)_descriptionForDebug:(BOOL)debug
{
  debugCopy = debug;
  speechLanguage = [(UNNotificationContent *)self speechLanguage];
  v25 = MEMORY[0x1E696AEC0];
  v23 = objc_opt_class();
  title = [(UNNotificationContent *)self title];
  v30 = [(UNNotificationContent *)self _safeStringForString:title debug:debugCopy];
  subtitle = [(UNNotificationContent *)self subtitle];
  v21 = [(UNNotificationContent *)self _safeStringForString:subtitle debug:debugCopy];
  body = [(UNNotificationContent *)self body];
  v20 = [(UNNotificationContent *)self _safeStringForString:body debug:debugCopy];
  attributedBody = [(UNNotificationContent *)self attributedBody];
  v29 = [(UNNotificationContent *)self _safeAttributedStringForAttributedString:attributedBody debug:debugCopy];
  summaryArgument = [(UNNotificationContent *)self summaryArgument];
  v17 = [(UNNotificationContent *)self _safeStringForString:summaryArgument debug:debugCopy];
  summaryArgumentCount = [(UNNotificationContent *)self summaryArgumentCount];
  categoryIdentifier = [(UNNotificationContent *)self categoryIdentifier];
  launchImageName = [(UNNotificationContent *)self launchImageName];
  threadIdentifier = [(UNNotificationContent *)self threadIdentifier];
  attachments = [(UNNotificationContent *)self attachments];
  badge = [(UNNotificationContent *)self badge];
  sound = [(UNNotificationContent *)self sound];
  realertCount = [(UNNotificationContent *)self realertCount];
  interruptionLevel = [(UNNotificationContent *)self interruptionLevel];
  [(UNNotificationContent *)self relevanceScore];
  v13 = v12;
  filterCriteria = [(UNNotificationContent *)self filterCriteria];
  v15 = [v25 stringWithFormat:@"<%@: %p title: %@, subtitle: %@, body: %@, attributedBody: %@, summaryArgument: %@, summaryArgumentCount: %u, categoryIdentifier: %@, launchImageName: %@, threadIdentifier: %@, attachments: %@, badge: %@, sound: %@, realert: %u, interruptionLevel: %lu, relevanceScore: %.2f, filterCriteria: %@, screenCaptureProhibited: %d, speechLanguage: %@", v23, self, v30, v21, v20, v29, v17, summaryArgumentCount, categoryIdentifier, launchImageName, threadIdentifier, attachments, badge, sound, realertCount, interruptionLevel, v13, filterCriteria, -[UNNotificationContent screenCaptureProhibited](self, "screenCaptureProhibited"), speechLanguage];;

  return v15;
}

- (id)_safeStringForString:(id)string debug:(BOOL)debug
{
  stringCopy = string;
  v6 = stringCopy;
  if (debug || ![(__CFString *)stringCopy length])
  {
    v7 = v6;
  }

  else
  {
    v7 = @"<redacted>";
  }

  v8 = v7;

  return v7;
}

- (id)_safeAttributedStringForAttributedString:(id)string debug:(BOOL)debug
{
  stringCopy = string;
  v6 = stringCopy;
  if (debug || ![stringCopy length])
  {
    v7 = v6;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"<redacted>"];
  }

  v8 = v7;

  return v8;
}

- (id)markedMutableCopyWithMessage:(id)message
{
  messageCopy = message;
  v5 = [(UNNotificationContent *)self mutableCopy];
  [v5 setMarkedMutableCopyMessage:messageCopy];

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  speechLanguage = [(UNNotificationContent *)self speechLanguage];
  v42 = [UNMutableNotificationContent allocWithZone:zone];
  contentType = [(UNNotificationContent *)self contentType];
  communicationContext = [(UNNotificationContent *)self communicationContext];
  accessoryImageName = [(UNNotificationContent *)self accessoryImageName];
  attachments = [(UNNotificationContent *)self attachments];
  badge = [(UNNotificationContent *)self badge];
  body = [(UNNotificationContent *)self body];
  attributedBody = [(UNNotificationContent *)self attributedBody];
  categoryIdentifier = [(UNNotificationContent *)self categoryIdentifier];
  date = [(UNNotificationContent *)self date];
  icon = [(UNNotificationContent *)self icon];
  defaultActionTitle = [(UNNotificationContent *)self defaultActionTitle];
  defaultActionURL = [(UNNotificationContent *)self defaultActionURL];
  defaultActionBundleIdentifier = [(UNNotificationContent *)self defaultActionBundleIdentifier];
  expirationDate = [(UNNotificationContent *)self expirationDate];
  header = [(UNNotificationContent *)self header];
  footer = [(UNNotificationContent *)self footer];
  launchImageName = [(UNNotificationContent *)self launchImageName];
  peopleIdentifiers = [(UNNotificationContent *)self peopleIdentifiers];
  shouldHideDate = [(UNNotificationContent *)self shouldHideDate];
  shouldHideTime = [(UNNotificationContent *)self shouldHideTime];
  shouldIgnoreDoNotDisturb = [(UNNotificationContent *)self shouldIgnoreDoNotDisturb];
  shouldIgnoreDowntime = [(UNNotificationContent *)self shouldIgnoreDowntime];
  shouldSuppressScreenLightUp = [(UNNotificationContent *)self shouldSuppressScreenLightUp];
  shouldAuthenticateDefaultAction = [(UNNotificationContent *)self shouldAuthenticateDefaultAction];
  shouldBackgroundDefaultAction = [(UNNotificationContent *)self shouldBackgroundDefaultAction];
  shouldPreventNotificationDismissalAfterDefaultAction = [(UNNotificationContent *)self shouldPreventNotificationDismissalAfterDefaultAction];
  shouldShowSubordinateIcon = [(UNNotificationContent *)self shouldShowSubordinateIcon];
  shouldSuppressDefaultAction = [(UNNotificationContent *)self shouldSuppressDefaultAction];
  shouldSuppressSyncDismissalWhenRemoved = [(UNNotificationContent *)self shouldSuppressSyncDismissalWhenRemoved];
  shouldUseRequestIdentifierForDismissalSync = [(UNNotificationContent *)self shouldUseRequestIdentifierForDismissalSync];
  shouldPreemptPresentedNotification = [(UNNotificationContent *)self shouldPreemptPresentedNotification];
  shouldDisplayActionsInline = [(UNNotificationContent *)self shouldDisplayActionsInline];
  sound = [(UNNotificationContent *)self sound];
  subtitle = [(UNNotificationContent *)self subtitle];
  threadIdentifier = [(UNNotificationContent *)self threadIdentifier];
  title = [(UNNotificationContent *)self title];
  topicIdentifiers = [(UNNotificationContent *)self topicIdentifiers];
  realertCount = [(UNNotificationContent *)self realertCount];
  summaryArgument = [(UNNotificationContent *)self summaryArgument];
  summaryArgumentCount = [(UNNotificationContent *)self summaryArgumentCount];
  targetContentIdentifier = [(UNNotificationContent *)self targetContentIdentifier];
  interruptionLevel = [(UNNotificationContent *)self interruptionLevel];
  [(UNNotificationContent *)self relevanceScore];
  v10 = v9;
  filterCriteria = [(UNNotificationContent *)self filterCriteria];
  screenCaptureProhibited = [(UNNotificationContent *)self screenCaptureProhibited];
  userInfo = [(UNNotificationContent *)self userInfo];
  LOBYTE(v17) = screenCaptureProhibited;
  BYTE5(v16) = shouldDisplayActionsInline;
  BYTE4(v16) = shouldPreemptPresentedNotification;
  BYTE3(v16) = shouldUseRequestIdentifierForDismissalSync;
  BYTE2(v16) = shouldSuppressSyncDismissalWhenRemoved;
  BYTE1(v16) = shouldSuppressDefaultAction;
  LOBYTE(v16) = shouldShowSubordinateIcon;
  HIBYTE(v15) = shouldPreventNotificationDismissalAfterDefaultAction;
  BYTE6(v15) = shouldBackgroundDefaultAction;
  BYTE5(v15) = shouldAuthenticateDefaultAction;
  BYTE4(v15) = shouldSuppressScreenLightUp;
  BYTE3(v15) = shouldIgnoreDowntime;
  BYTE2(v15) = shouldIgnoreDoNotDisturb;
  BYTE1(v15) = shouldHideTime;
  LOBYTE(v15) = shouldHideDate;
  v43 = [UNNotificationContent _initWithContentType:v42 communicationContext:"_initWithContentType:communicationContext:accessoryImageName:attachments:badge:body:attributedBody:categoryIdentifier:date:icon:defaultActionTitle:defaultActionURL:defaultActionBundleIdentifier:expirationDate:header:footer:launchImageName:peopleIdentifiers:shouldHideDate:shouldHideTime:shouldIgnoreDoNotDisturb:shouldIgnoreDowntime:shouldSuppressScreenLightUp:shouldAuthenticateDefaultAction:shouldBackgroundDefaultAction:shouldPreventNotificationDismissalAfterDefaultAction:shouldShowSubordinateIcon:shouldSuppressDefaultAction:shouldSuppressSyncDismissalWhenRemoved:shouldUseRequestIdentifierForDismissalSync:shouldPreemptPresentedNotification:shouldDisplayActionsInline:sound:subtitle:threadIdentifier:title:topicIdentifiers:realertCount:summaryArgument:summaryArgumentCount:targetContentIdentifier:interruptionLevel:relevanceScore:filterCriteria:screenCaptureProhibited:speechLanguage:userInfo:" accessoryImageName:contentType attachments:communicationContext badge:accessoryImageName body:attachments attributedBody:badge categoryIdentifier:body date:v10 icon:attributedBody defaultActionTitle:categoryIdentifier defaultActionURL:date defaultActionBundleIdentifier:icon expirationDate:defaultActionTitle header:defaultActionURL footer:defaultActionBundleIdentifier launchImageName:expirationDate peopleIdentifiers:header shouldHideDate:footer shouldHideTime:launchImageName shouldIgnoreDoNotDisturb:peopleIdentifiers shouldIgnoreDowntime:v15 shouldSuppressScreenLightUp:v16 shouldAuthenticateDefaultAction:sound shouldBackgroundDefaultAction:subtitle shouldPreventNotificationDismissalAfterDefaultAction:threadIdentifier shouldShowSubordinateIcon:title shouldSuppressDefaultAction:topicIdentifiers shouldSuppressSyncDismissalWhenRemoved:realertCount shouldUseRequestIdentifierForDismissalSync:summaryArgument shouldPreemptPresentedNotification:summaryArgumentCount shouldDisplayActionsInline:targetContentIdentifier sound:interruptionLevel subtitle:filterCriteria threadIdentifier:v17 title:speechLanguage topicIdentifiers:userInfo realertCount:? summaryArgument:? summaryArgumentCount:? targetContentIdentifier:? interruptionLevel:? relevanceScore:? filterCriteria:? screenCaptureProhibited:? speechLanguage:? userInfo:?];

  return v43;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  contentType = [(UNNotificationContent *)self contentType];
  [coderCopy encodeObject:contentType forKey:@"contentType"];

  communicationContext = [(UNNotificationContent *)self communicationContext];
  [coderCopy encodeObject:communicationContext forKey:@"communicationContext"];

  accessoryImageName = [(UNNotificationContent *)self accessoryImageName];
  [coderCopy encodeObject:accessoryImageName forKey:@"accessoryImageName"];

  attachments = [(UNNotificationContent *)self attachments];
  [coderCopy encodeObject:attachments forKey:@"attachments"];

  badge = [(UNNotificationContent *)self badge];
  [coderCopy encodeObject:badge forKey:@"badge"];

  body = [(UNNotificationContent *)self body];
  v11 = [body un_stringWithMaxLength:2000];
  [coderCopy encodeObject:v11 forKey:@"body"];

  attributedBody = [(UNNotificationContent *)self attributedBody];
  _un_RTFDData = [attributedBody _un_RTFDData];
  [coderCopy encodeObject:_un_RTFDData forKey:@"attributedBody"];

  categoryIdentifier = [(UNNotificationContent *)self categoryIdentifier];
  v15 = [categoryIdentifier un_stringWithMaxLength:1000];
  [coderCopy encodeObject:v15 forKey:@"categoryIdentifier"];

  date = [(UNNotificationContent *)self date];
  [coderCopy encodeObject:date forKey:@"date"];

  defaultActionTitle = [(UNNotificationContent *)self defaultActionTitle];
  v18 = [defaultActionTitle un_stringWithMaxLength:1000];
  [coderCopy encodeObject:v18 forKey:@"defaultActionTitle"];

  defaultActionURL = [(UNNotificationContent *)self defaultActionURL];
  [coderCopy encodeObject:defaultActionURL forKey:@"defaultActionURL"];

  defaultActionBundleIdentifier = [(UNNotificationContent *)self defaultActionBundleIdentifier];
  v21 = [defaultActionBundleIdentifier un_stringWithMaxLength:1000];
  [coderCopy encodeObject:v21 forKey:@"defaultActionBundleIdentifier"];

  expirationDate = [(UNNotificationContent *)self expirationDate];
  [coderCopy encodeObject:expirationDate forKey:@"expirationDate"];

  header = [(UNNotificationContent *)self header];
  v24 = [header un_stringWithMaxLength:1000];
  [coderCopy encodeObject:v24 forKey:@"header"];

  footer = [(UNNotificationContent *)self footer];
  v26 = [footer un_stringWithMaxLength:1000];
  [coderCopy encodeObject:v26 forKey:@"footer"];

  icon = [(UNNotificationContent *)self icon];
  [coderCopy encodeObject:icon forKey:@"icon"];

  launchImageName = [(UNNotificationContent *)self launchImageName];
  v29 = [launchImageName un_stringWithMaxLength:1000];
  [coderCopy encodeObject:v29 forKey:@"launchImageName"];

  peopleIdentifiers = [(UNNotificationContent *)self peopleIdentifiers];
  [coderCopy encodeObject:peopleIdentifiers forKey:@"peopleIdentifiers"];

  [coderCopy encodeBool:-[UNNotificationContent shouldHideDate](self forKey:{"shouldHideDate"), @"shouldHideDate"}];
  [coderCopy encodeBool:-[UNNotificationContent shouldHideTime](self forKey:{"shouldHideTime"), @"shouldHideTime"}];
  [coderCopy encodeBool:-[UNNotificationContent shouldIgnoreDoNotDisturb](self forKey:{"shouldIgnoreDoNotDisturb"), @"shouldIgnoreDoNotDisturb"}];
  [coderCopy encodeBool:-[UNNotificationContent shouldIgnoreDowntime](self forKey:{"shouldIgnoreDowntime"), @"shouldIgnoreDowntime"}];
  [coderCopy encodeBool:-[UNNotificationContent shouldAuthenticateDefaultAction](self forKey:{"shouldAuthenticateDefaultAction"), @"shouldAuthenticateDefaultAction"}];
  [coderCopy encodeBool:-[UNNotificationContent shouldBackgroundDefaultAction](self forKey:{"shouldBackgroundDefaultAction"), @"shouldBackgroundDefaultAction"}];
  [coderCopy encodeBool:-[UNNotificationContent shouldPreventNotificationDismissalAfterDefaultAction](self forKey:{"shouldPreventNotificationDismissalAfterDefaultAction"), @"shouldPreventNotificationDismissalAfterDefaultAction"}];
  [coderCopy encodeBool:-[UNNotificationContent shouldShowSubordinateIcon](self forKey:{"shouldShowSubordinateIcon"), @"shouldShowSubordinateIcon"}];
  [coderCopy encodeBool:-[UNNotificationContent shouldSuppressDefaultAction](self forKey:{"shouldSuppressDefaultAction"), @"shouldSuppressDefaultAction"}];
  [coderCopy encodeBool:-[UNNotificationContent shouldSuppressScreenLightUp](self forKey:{"shouldSuppressScreenLightUp"), @"shouldSuppressScreenLightUp"}];
  [coderCopy encodeBool:-[UNNotificationContent shouldSuppressSyncDismissalWhenRemoved](self forKey:{"shouldSuppressSyncDismissalWhenRemoved"), @"shouldSuppressSyncDismissalWhenRemoved"}];
  [coderCopy encodeBool:-[UNNotificationContent shouldUseRequestIdentifierForDismissalSync](self forKey:{"shouldUseRequestIdentifierForDismissalSync"), @"shouldUseRequestIdentifierForDismissalSync"}];
  [coderCopy encodeBool:-[UNNotificationContent shouldPreemptPresentedNotification](self forKey:{"shouldPreemptPresentedNotification"), @"shouldPreemptPresentedNotification"}];
  [coderCopy encodeBool:-[UNNotificationContent shouldDisplayActionsInline](self forKey:{"shouldDisplayActionsInline"), @"shouldDisplayActionsInline"}];
  sound = [(UNNotificationContent *)self sound];
  [coderCopy encodeObject:sound forKey:@"sound"];

  subtitle = [(UNNotificationContent *)self subtitle];
  v33 = [subtitle un_stringWithMaxLength:1000];
  [coderCopy encodeObject:v33 forKey:@"subtitle"];

  threadIdentifier = [(UNNotificationContent *)self threadIdentifier];
  v35 = [threadIdentifier un_stringWithMaxLength:1000];
  [coderCopy encodeObject:v35 forKey:@"threadIdentifier"];

  title = [(UNNotificationContent *)self title];
  v37 = [title un_stringWithMaxLength:1000];
  [coderCopy encodeObject:v37 forKey:@"title"];

  topicIdentifiers = [(UNNotificationContent *)self topicIdentifiers];
  [coderCopy encodeObject:topicIdentifiers forKey:@"topicIdentifiers"];

  [coderCopy encodeInteger:-[UNNotificationContent realertCount](self forKey:{"realertCount"), @"realertCount"}];
  summaryArgument = [(UNNotificationContent *)self summaryArgument];
  [coderCopy encodeObject:summaryArgument forKey:@"summaryArgument"];

  [coderCopy encodeInteger:-[UNNotificationContent summaryArgumentCount](self forKey:{"summaryArgumentCount"), @"summaryArgumentCount"}];
  targetContentIdentifier = [(UNNotificationContent *)self targetContentIdentifier];
  [coderCopy encodeObject:targetContentIdentifier forKey:@"targetContentIdentifier"];

  [coderCopy encodeInteger:-[UNNotificationContent interruptionLevel](self forKey:{"interruptionLevel"), @"interruptionLevel"}];
  [(UNNotificationContent *)self relevanceScore];
  *&v41 = v41;
  [coderCopy encodeFloat:@"relevanceScore" forKey:v41];
  filterCriteria = [(UNNotificationContent *)self filterCriteria];
  [coderCopy encodeObject:filterCriteria forKey:@"filterCriteria"];

  [coderCopy encodeBool:-[UNNotificationContent screenCaptureProhibited](self forKey:{"screenCaptureProhibited"), @"screenCaptureProhibited"}];
  userInfo = [(UNNotificationContent *)self userInfo];
  [coderCopy encodeObject:userInfo forKey:@"userInfo"];

  speechLanguage = [(UNNotificationContent *)self speechLanguage];
  [coderCopy encodeObject:speechLanguage forKey:@"speechLanguage"];
}

- (UNNotificationContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v99 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentType"];
  v98 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"communicationContext"];
  v97 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryImageName"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v96 = [coderCopy decodeObjectOfClasses:v6 forKey:@"attachments"];

  v95 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"badge"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v94 = [coderCopy decodeObjectOfClasses:v9 forKey:@"body"];

  v10 = MEMORY[0x1E696AAB0];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attributedBody"];
  v93 = [v10 _un_attributedStringWithRTFDData:v11];

  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v92 = [coderCopy decodeObjectOfClasses:v14 forKey:@"peopleIdentifiers"];

  v91 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"categoryIdentifier"];
  v90 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v89 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  v88 = [coderCopy decodeObjectOfClasses:v17 forKey:@"defaultActionTitle"];

  v87 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultActionURL"];
  v18 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
  v86 = [coderCopy decodeObjectOfClasses:v20 forKey:@"defaultActionBundleIdentifier"];

  v82 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  v81 = [coderCopy decodeObjectOfClasses:v23 forKey:@"header"];

  v24 = MEMORY[0x1E695DFD8];
  v25 = objc_opt_class();
  v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
  v80 = [coderCopy decodeObjectOfClasses:v26 forKey:@"footer"];

  v79 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"launchImageName"];
  v78 = [coderCopy decodeBoolForKey:@"shouldHideDate"];
  v77 = [coderCopy decodeBoolForKey:@"shouldHideTime"];
  v76 = [coderCopy decodeBoolForKey:@"shouldIgnoreDoNotDisturb"];
  v75 = [coderCopy decodeBoolForKey:@"shouldIgnoreDowntime"];
  v74 = [coderCopy decodeBoolForKey:@"shouldAuthenticateDefaultAction"];
  v72 = [coderCopy decodeBoolForKey:@"shouldBackgroundDefaultAction"];
  v71 = [coderCopy decodeBoolForKey:@"shouldPreventNotificationDismissalAfterDefaultAction"];
  v70 = [coderCopy decodeBoolForKey:@"shouldShowSubordinateIcon"];
  v68 = [coderCopy decodeBoolForKey:@"shouldSuppressDefaultAction"];
  v69 = [coderCopy decodeBoolForKey:@"shouldSuppressScreenLightUp"];
  v66 = [coderCopy decodeBoolForKey:@"shouldSuppressSyncDismissalWhenRemoved"];
  v65 = [coderCopy decodeBoolForKey:@"shouldUseRequestIdentifierForDismissalSync"];
  v63 = [coderCopy decodeBoolForKey:@"shouldPreemptPresentedNotification"];
  v62 = [coderCopy decodeBoolForKey:@"shouldDisplayActionsInline"];
  v73 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sound"];
  v27 = MEMORY[0x1E695DFD8];
  v28 = objc_opt_class();
  v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
  v67 = [coderCopy decodeObjectOfClasses:v29 forKey:@"subtitle"];

  v64 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"threadIdentifier"];
  v30 = MEMORY[0x1E695DFD8];
  v31 = objc_opt_class();
  v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
  v85 = [coderCopy decodeObjectOfClasses:v32 forKey:@"title"];

  v33 = MEMORY[0x1E695DFD8];
  v34 = objc_opt_class();
  v35 = [v33 setWithObjects:{v34, objc_opt_class(), 0}];
  v61 = [coderCopy decodeObjectOfClasses:v35 forKey:@"topicIdentifiers"];

  v59 = [coderCopy decodeIntegerForKey:@"realertCount"];
  v60 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"summaryArgument"];
  v58 = [coderCopy decodeIntegerForKey:@"summaryArgumentCount"];
  v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetContentIdentifier"];
  v37 = MEMORY[0x1E695DFD8];
  v38 = objc_opt_class();
  v39 = objc_opt_class();
  v40 = objc_opt_class();
  v41 = objc_opt_class();
  v42 = objc_opt_class();
  v43 = objc_opt_class();
  v44 = [v37 setWithObjects:{v38, v39, v40, v41, v42, v43, objc_opt_class(), 0}];
  v45 = [coderCopy decodeObjectOfClasses:v44 forKey:@"userInfo"];

  if ([coderCopy containsValueForKey:@"interruptionLevel"])
  {
    v46 = [coderCopy decodeIntegerForKey:@"interruptionLevel"];
  }

  else
  {
    v46 = 1;
  }

  [coderCopy decodeFloatForKey:@"relevanceScore"];
  v48 = v47;
  v56 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"filterCriteria"];
  v49 = [coderCopy decodeBoolForKey:@"screenCaptureProhibited"];
  v55 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"speechLanguage"];
  v50 = objc_opt_class();
  v57 = UNSafeCast(v50, v45);

  LOBYTE(v54) = v49;
  BYTE5(v53) = v62;
  BYTE4(v53) = v63;
  BYTE3(v53) = v65;
  BYTE2(v53) = v66;
  BYTE1(v53) = v68;
  LOBYTE(v53) = v70;
  HIBYTE(v52) = v71;
  BYTE6(v52) = v72;
  BYTE5(v52) = v74;
  BYTE4(v52) = v69;
  BYTE3(v52) = v75;
  BYTE2(v52) = v76;
  BYTE1(v52) = v77;
  LOBYTE(v52) = v78;
  v84 = [UNNotificationContent _initWithContentType:"_initWithContentType:communicationContext:accessoryImageName:attachments:badge:body:attributedBody:categoryIdentifier:date:icon:defaultActionTitle:defaultActionURL:defaultActionBundleIdentifier:expirationDate:header:footer:launchImageName:peopleIdentifiers:shouldHideDate:shouldHideTime:shouldIgnoreDoNotDisturb:shouldIgnoreDowntime:shouldSuppressScreenLightUp:shouldAuthenticateDefaultAction:shouldBackgroundDefaultAction:shouldPreventNotificationDismissalAfterDefaultAction:shouldShowSubordinateIcon:shouldSuppressDefaultAction:shouldSuppressSyncDismissalWhenRemoved:shouldUseRequestIdentifierForDismissalSync:shouldPreemptPresentedNotification:shouldDisplayActionsInline:sound:subtitle:threadIdentifier:title:topicIdentifiers:realertCount:summaryArgument:summaryArgumentCount:targetContentIdentifier:interruptionLevel:relevanceScore:filterCriteria:screenCaptureProhibited:speechLanguage:userInfo:" communicationContext:v99 accessoryImageName:v98 attachments:v97 badge:v96 body:v95 attributedBody:v94 categoryIdentifier:v48 date:v93 icon:v91 defaultActionTitle:v90 defaultActionURL:v89 defaultActionBundleIdentifier:v88 expirationDate:v87 header:v86 footer:v82 launchImageName:v81 peopleIdentifiers:v80 shouldHideDate:v79 shouldHideTime:v92 shouldIgnoreDoNotDisturb:v52 shouldIgnoreDowntime:v53 shouldSuppressScreenLightUp:v73 shouldAuthenticateDefaultAction:v67 shouldBackgroundDefaultAction:v64 shouldPreventNotificationDismissalAfterDefaultAction:v85 shouldShowSubordinateIcon:v61 shouldSuppressDefaultAction:v59 shouldSuppressSyncDismissalWhenRemoved:v60 shouldUseRequestIdentifierForDismissalSync:v58 shouldPreemptPresentedNotification:v36 shouldDisplayActionsInline:v46 sound:v56 subtitle:v54 threadIdentifier:v55 title:v57 topicIdentifiers:? realertCount:? summaryArgument:? summaryArgumentCount:? targetContentIdentifier:? interruptionLevel:? relevanceScore:? filterCriteria:? screenCaptureProhibited:? speechLanguage:? userInfo:?];

  return v84;
}

- (void)addSecurityScope:(id)scope
{
  scopeCopy = scope;
  attachments = [(UNNotificationContent *)self attachments];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__UNNotificationContent_addSecurityScope___block_invoke;
  v7[3] = &unk_1E7CFFCA0;
  v8 = scopeCopy;
  v6 = scopeCopy;
  [attachments enumerateObjectsUsingBlock:v7];
}

- (void)removeSecurityScope
{
  attachments = [(UNNotificationContent *)self attachments];
  [attachments enumerateObjectsUsingBlock:&__block_literal_global_9];
}

- (void)enterSecurityScope
{
  attachments = [(UNNotificationContent *)self attachments];
  [attachments enumerateObjectsUsingBlock:&__block_literal_global_198];
}

- (void)leaveSecurityScope
{
  attachments = [(UNNotificationContent *)self attachments];
  [attachments enumerateObjectsUsingBlock:&__block_literal_global_200];
}

@end