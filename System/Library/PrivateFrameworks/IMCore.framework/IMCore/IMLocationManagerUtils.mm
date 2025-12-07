@interface IMLocationManagerUtils
+ (id)sharedInstance;
- (void)sendCurrentLocationMessageWithChat:(id)chat withLocationManager:(id)manager withSourceApplicationIdentifier:(id)identifier foregroundAssertionForBundleIdentifier:(id)bundleIdentifier completion:(id)completion;
@end

@implementation IMLocationManagerUtils

+ (id)sharedInstance
{
  if (qword_1ED767930 != -1)
  {
    sub_1A84E0648();
  }

  v3 = qword_1ED7678D0;

  return v3;
}

- (void)sendCurrentLocationMessageWithChat:(id)chat withLocationManager:(id)manager withSourceApplicationIdentifier:(id)identifier foregroundAssertionForBundleIdentifier:(id)bundleIdentifier completion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  chatCopy = chat;
  managerCopy = manager;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v33 = chatCopy;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Client request to send current location for chat %@", buf, 0xCu);
    }
  }

  currentLocationGUID = [chatCopy currentLocationGUID];
  v18 = currentLocationGUID == 0;

  if (v18)
  {
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1A8303554;
    v27[3] = &unk_1E78120D0;
    v28 = chatCopy;
    v29 = stringGUID;
    v30 = identifierCopy;
    v31 = completionCopy;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_1A83037E8;
    v23[3] = &unk_1E78120F8;
    v24 = v28;
    v25 = v29;
    v26 = v30;
    v22 = v29;
    [managerCopy startUpdatingCurrentLocationWithForegroundAssertionForBundleIdentifier:bundleIdentifierCopy withAuthorizedHandler:v27 updateHandler:v23];
  }

  else if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      currentLocationGUID2 = [chatCopy currentLocationGUID];
      *buf = 138412290;
      v33 = currentLocationGUID2;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, " => we are already sending a current location for this chat, ignoring (%@)", buf, 0xCu);
    }
  }
}

@end