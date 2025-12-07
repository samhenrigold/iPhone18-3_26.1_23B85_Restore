@interface UNSNotificationCommunicationContextService
- (id)_updatedCommunicationContext:(id)context bundleIdentifier:(id)identifier;
- (id)resolveCommunicationContextForRequest:(id)request bundleIdentifier:(id)identifier;
@end

@implementation UNSNotificationCommunicationContextService

- (id)resolveCommunicationContextForRequest:(id)request bundleIdentifier:(id)identifier
{
  v28 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  identifierCopy = identifier;
  content = [requestCopy content];
  communicationContext = [content communicationContext];

  if (communicationContext)
  {
    v11 = UNSLogCommunicationNotifications(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138543618;
      v25 = identifierCopy;
      v26 = 2082;
      v27 = "[UNSNotificationCommunicationContextService resolveCommunicationContextForRequest:bundleIdentifier:]";
      _os_log_impl(&dword_270B08000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s: Service existing context context", &v24, 0x16u);
    }

    v12 = [(UNSNotificationCommunicationContextService *)self _updatedCommunicationContext:communicationContext bundleIdentifier:identifierCopy];
    v13 = v12;
    if (v12)
    {
      v14 = UNSLogCommunicationNotifications(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138543618;
        v25 = identifierCopy;
        v26 = 2082;
        v27 = "[UNSNotificationCommunicationContextService resolveCommunicationContextForRequest:bundleIdentifier:]";
        _os_log_impl(&dword_270B08000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s: New context created while servicing request", &v24, 0x16u);
      }

      content2 = [requestCopy content];
      v16 = [content2 mutableCopy];
      [v16 setCommunicationContext:v13];

      if (v16)
      {
        v17 = MEMORY[0x277CE1FC0];
        identifier = [requestCopy identifier];
        trigger = [requestCopy trigger];
        v20 = [v17 requestWithIdentifier:identifier content:v16 trigger:trigger destinations:{objc_msgSend(requestCopy, "destinations")}];

        goto LABEL_12;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
    v13 = 0;
  }

  v20 = 0;
LABEL_12:
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = requestCopy;
  }

  v22 = v21;

  return v21;
}

- (id)_updatedCommunicationContext:(id)context bundleIdentifier:(id)identifier
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  contextCopy = context;
  v7 = [contextCopy mutableCopy];
  [v7 setBundleIdentifier:identifierCopy];
  sender = [contextCopy sender];

  if (sender)
  {
    v9 = +[UNSNotificationContactService sharedInstance];
    v10 = [v9 updateServiceWithContact:sender bundleIdentifier:identifierCopy];

    if (v10)
    {
      v11 = [v10 isEqual:sender];
      if ((v11 & 1) == 0)
      {
        v12 = UNSLogCommunicationNotifications(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138544130;
          v15 = identifierCopy;
          v16 = 2082;
          v17 = "[UNSNotificationCommunicationContextService _updatedCommunicationContext:bundleIdentifier:]";
          v18 = 2114;
          v19 = sender;
          v20 = 2114;
          v21 = v10;
          _os_log_impl(&dword_270B08000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}s: Updated sender.\nExisting:%{public}@\nUpdated:%{public}@", &v14, 0x2Au);
        }

        [v7 setSender:v10];
      }
    }
  }

  return v7;
}

@end