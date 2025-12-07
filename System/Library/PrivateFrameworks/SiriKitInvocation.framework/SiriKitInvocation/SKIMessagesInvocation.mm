@interface SKIMessagesInvocation
+ (id)announceMessagesRequestFromAnnounceDirectInvocationPayload:(id)payload;
+ (id)announcePayloadFromUserData:(id)data;
+ (id)beginSiriRequestForApp:(id)app;
+ (id)composeNewMessageRequestInApp:(id)app;
+ (id)composeNewMessageRequestToContact:(id)contact phoneNumber:(id)number emailAddress:(id)address inApp:(id)app;
+ (id)composeNewMessageRequestToHandles:(id)handles inApp:(id)app;
+ (id)composeReplyRequestToConversationIdentifier:(id)identifier inApp:(id)app;
+ (id)makeParameterMetadataForIntent:(id)intent;
+ (id)makeParameterMetadataForParameterNamed:(id)named;
+ (id)readMessagesRequestFromConversationIdentifier:(id)identifier inApp:(id)app;
+ (id)readMessagesRequestFromNotificationIdentifier:(id)identifier fromApp:(id)app;
+ (id)sendMessageFromInteractiveSnippetWithUpdatedContent:(id)content withContext:(id)context;
+ (id)updateMessageContentFromInteractiveSnippet:(id)snippet withContext:(id)context;
@end

@implementation SKIMessagesInvocation

+ (id)announceMessagesRequestFromAnnounceDirectInvocationPayload:(id)payload
{
  payloadCopy = payload;
  v4 = +[SKIDirectInvocationContext contextForAnnounceNotifications];
  v5 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.DirectInvocation.Messages.AnnounceMessage"];
  v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
  notificationIdentifier = [payloadCopy notificationIdentifier];
  if ([notificationIdentifier length])
  {
    [v6 setValue:notificationIdentifier forKey:@"notificationIdentifier"];
  }

  appBundleId = [payloadCopy appBundleId];
  v9 = [appBundleId length];

  if (v9)
  {
    appBundleId2 = [payloadCopy appBundleId];
    [v6 setValue:appBundleId2 forKey:@"appBundleId"];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(payloadCopy, "synchronousBurstIndex")}];
  [v6 setValue:v11 forKey:@"synchronousBurstIndex"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(payloadCopy, "isMediaPlaying")}];
  [v6 setValue:v12 forKey:@"isMediaPlaying"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(payloadCopy, "announcementPlatform")}];
  [v6 setValue:v13 forKey:@"announcePlatform"];

  v21 = 0;
  v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:payloadCopy requiringSecureCoding:1 error:&v21];
  v15 = v21;
  v16 = v15;
  if (v14)
  {
    [v6 setValue:v14 forKey:@"announcePayload"];
  }

  else
  {
    v17 = SKIDefaultLog(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(SKIMessagesInvocation *)v16 announceMessagesRequestFromAnnounceDirectInvocationPayload:v17];
    }
  }

  [(SKIDirectInvocationPayload *)v5 setUserData:v6];
  v18 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v4 payload:v5];
  v19 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v18];

  return v19;
}

+ (id)announcePayloadFromUserData:(id)data
{
  v3 = [data objectForKeyedSubscript:@"announcePayload"];
  v9 = 0;
  v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v9];
  v5 = v9;
  v6 = v5;
  if (!v4)
  {
    v7 = SKIDefaultLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SKIMessagesInvocation *)v6 announcePayloadFromUserData:v7];
    }
  }

  return v4;
}

+ (id)readMessagesRequestFromNotificationIdentifier:(id)identifier fromApp:(id)app
{
  identifierCopy = identifier;
  appCopy = app;
  v7 = +[SKIDirectInvocationContext contextForCarPlayDirectAction];
  v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  if ([identifierCopy length])
  {
    [v8 setValue:identifierCopy forKey:@"notificationIdentifier"];
  }

  if ([appCopy length])
  {
    [v8 setValue:appCopy forKey:@"appBundleId"];
  }

  v9 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.DirectInvocation.Messages.ReadFromNotification"];
  [(SKIDirectInvocationPayload *)v9 setUserData:v8];
  v10 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v7 payload:v9];
  v11 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v10];

  return v11;
}

+ (id)readMessagesRequestFromConversationIdentifier:(id)identifier inApp:(id)app
{
  identifierCopy = identifier;
  appCopy = app;
  v7 = +[SKIDirectInvocationContext contextForCarPlayDirectAction];
  v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  if ([identifierCopy length])
  {
    [v8 setValue:identifierCopy forKey:@"conversationIdentifier"];
  }

  if ([appCopy length])
  {
    [v8 setValue:appCopy forKey:@"appBundleId"];
  }

  v9 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.DirectInvocation.Messages.ReadFromConversation"];
  [(SKIDirectInvocationPayload *)v9 setUserData:v8];
  v10 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v7 payload:v9];
  v11 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v10];

  return v11;
}

+ (id)composeNewMessageRequestInApp:(id)app
{
  appCopy = app;
  v4 = +[SKIDirectInvocationContext contextForCarPlayDirectAction];
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
  if ([appCopy length])
  {
    [v5 setValue:appCopy forKey:@"appBundleId"];
  }

  v6 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.DirectInvocation.Messages.NewMessage"];
  [(SKIDirectInvocationPayload *)v6 setUserData:v5];
  v7 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v4 payload:v6];
  v8 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v7];

  return v8;
}

+ (id)composeNewMessageRequestToContact:(id)contact phoneNumber:(id)number emailAddress:(id)address inApp:(id)app
{
  contactCopy = contact;
  numberCopy = number;
  addressCopy = address;
  appCopy = app;
  v13 = +[SKIDirectInvocationContext contextForCarPlayDirectAction];
  v14 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
  if ([appCopy length])
  {
    [v14 setValue:appCopy forKey:@"appBundleId"];
  }

  if ([contactCopy length])
  {
    [v14 setValue:contactCopy forKey:@"contactName"];
  }

  if ([numberCopy length])
  {
    [v14 setValue:numberCopy forKey:@"contactPhoneNumber"];
  }

  if ([addressCopy length])
  {
    [v14 setValue:addressCopy forKey:@"contactEmailAddress"];
  }

  v15 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.DirectInvocation.Messages.NewMessageToContact"];
  [(SKIDirectInvocationPayload *)v15 setUserData:v14];
  v16 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v13 payload:v15];
  v17 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v16];

  return v17;
}

+ (id)composeNewMessageRequestToHandles:(id)handles inApp:(id)app
{
  v32 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  appCopy = app;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = handlesCopy;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        value = [v12 value];
        v29 = value;
        v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "type")}];
        v30 = v14;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        [v6 addObject:v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v9);
  }

  v27[0] = @"appBundleId";
  v27[1] = @"handles";
  v28[0] = appCopy;
  v28[1] = v6;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v17 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.DirectInvocation.Messages.NewMessageToHandles"];
  [(SKIDirectInvocationPayload *)v17 setUserData:v16];
  v18 = +[SKIDirectInvocationContext contextForCarPlayDirectAction];
  v19 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v18 payload:v17];
  v20 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v19];

  return v20;
}

+ (id)composeReplyRequestToConversationIdentifier:(id)identifier inApp:(id)app
{
  identifierCopy = identifier;
  appCopy = app;
  v7 = +[SKIDirectInvocationContext contextForCarPlayDirectAction];
  v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  if ([identifierCopy length])
  {
    [v8 setValue:identifierCopy forKey:@"conversationIdentifier"];
  }

  if ([appCopy length])
  {
    [v8 setValue:appCopy forKey:@"appBundleId"];
  }

  v9 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.DirectInvocation.Messages.NewMessageToConversation"];
  [(SKIDirectInvocationPayload *)v9 setUserData:v8];
  v10 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v7 payload:v9];
  v11 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v10];

  return v11;
}

+ (id)updateMessageContentFromInteractiveSnippet:(id)snippet withContext:(id)context
{
  v13[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  snippetCopy = snippet;
  v7 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.messages.MessageContentChangedViaSnippet"];
  v12 = @"content";
  v13[0] = snippetCopy;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [(SKIDirectInvocationPayload *)v7 setUserData:v8];

  v9 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:contextCopy payload:v7];

  v10 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v9];

  return v10;
}

+ (id)sendMessageFromInteractiveSnippetWithUpdatedContent:(id)content withContext:(id)context
{
  v13[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  contentCopy = content;
  v7 = [[SKIDirectInvocationPayload alloc] initWithIdentifier:@"com.apple.siri.directInvocation.messages.MessageSendViaSnippet"];
  v12 = @"content";
  v13[0] = contentCopy;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [(SKIDirectInvocationPayload *)v7 setUserData:v8];

  v9 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:contextCopy payload:v7];

  v10 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v9];

  return v10;
}

+ (id)beginSiriRequestForApp:(id)app
{
  appCopy = app;
  v4 = [[SKIMessagesGatekeeperPayload alloc] initWithAppBundleId:appCopy];

  invocationPayload = [(SKIMessagesGatekeeperPayload *)v4 invocationPayload];

  v6 = +[SKIDirectInvocationContext contextForCarPlayDirectAction];
  v7 = [SKIDirectInvocation runSiriKitExecutorCommandWithContext:v6 payload:invocationPayload];
  v8 = [SKIDirectInvocation wrapCommandInStartLocalRequest:v7];

  return v8;
}

+ (id)makeParameterMetadataForIntent:(id)intent
{
  v12[4] = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [SKIMessagesInvocation makeParameterMetadataForParameterNamed:@"recipient"];
    v12[0] = v4;
    v5 = [SKIMessagesInvocation makeParameterMetadataForParameterNamed:@"speakableGroupName"];
    v12[1] = v5;
    v6 = [SKIMessagesInvocation makeParameterMetadataForParameterNamed:@"outgoingMessageType"];
    v12[2] = v6;
    v7 = [SKIMessagesInvocation makeParameterMetadataForParameterNamed:@"content"];
    v12[3] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
LABEL_5:

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [SKIMessagesInvocation makeParameterMetadataForParameterNamed:@"recipient"];
    v5 = [SKIMessagesInvocation makeParameterMetadataForParameterNamed:@"speakableGroupName", v4];
    v11[1] = v5;
    v6 = [SKIMessagesInvocation makeParameterMetadataForParameterNamed:@"sender"];
    v11[2] = v6;
    v7 = [SKIMessagesInvocation makeParameterMetadataForParameterNamed:@"attribute"];
    v11[3] = v7;
    v9 = [SKIMessagesInvocation makeParameterMetadataForParameterNamed:@"dateTimeRange"];
    v11[4] = v9;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:5];

    goto LABEL_5;
  }

  v8 = MEMORY[0x277CBEBF8];
LABEL_7:

  return v8;
}

+ (id)makeParameterMetadataForParameterNamed:(id)named
{
  v3 = MEMORY[0x277D47450];
  namedCopy = named;
  v5 = objc_alloc_init(v3);
  [v5 setParameterName:namedCopy];

  [v5 setShouldResolve:1];

  return v5;
}

+ (void)announceMessagesRequestFromAnnounceDirectInvocationPayload:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_267542000, a2, OS_LOG_TYPE_ERROR, "error archiving SKIAnnounceNotificationDirectInvocationPayload for SKIMessagesInvocation: %@", &v2, 0xCu);
}

+ (void)announcePayloadFromUserData:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_267542000, a2, OS_LOG_TYPE_ERROR, "error unarchiving SKIAnnounceNotificationDirectInvocationPayload from userData for SKIMessagesInvocation: %@", &v2, 0xCu);
}

@end