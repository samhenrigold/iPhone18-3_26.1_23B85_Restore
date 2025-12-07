@interface IMSimulatedDaemonController
+ (id)dictionaryForChat:(id)chat;
+ (id)sharedInstance;
+ (void)beginSimulatingDaemon;
- (unsigned)capabilitiesForListenerID:(id)d;
- (void)forwardInvocation:(id)invocation;
- (void)sendBalloonPayload:(id)payload attachments:(id)attachments withMessageGUID:(id)d bundleID:(id)iD;
@end

@implementation IMSimulatedDaemonController

+ (id)sharedInstance
{
  if (qword_1ED7678A0 != -1)
  {
    sub_1A84E0CC8();
  }

  v3 = qword_1ED767850;

  return v3;
}

+ (void)beginSimulatingDaemon
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A830C150;
  block[3] = &unk_1E78102B8;
  block[4] = self;
  if (qword_1EB2EA2E0 != -1)
  {
    dispatch_once(&qword_1EB2EA2E0, block);
  }
}

- (void)forwardInvocation:(id)invocation
{
  selector = [invocation selector];
  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1A84E0CDC(selector, v4);
  }
}

+ (id)dictionaryForChat:(id)chat
{
  v3 = MEMORY[0x1E695DF90];
  chatCopy = chat;
  v5 = objc_alloc_init(v3);
  account = [chatCopy account];
  uniqueID = [account uniqueID];
  [v5 setObject:uniqueID forKey:@"accountdID"];

  chatIdentifier = [chatCopy chatIdentifier];
  [v5 setObject:chatIdentifier forKey:@"chatIdentifier"];

  guid = [chatCopy guid];
  [v5 setObject:guid forKey:@"guid"];

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(chatCopy, "chatStyle")}];
  [v5 setObject:v10 forKey:@"style"];

  v11 = MEMORY[0x1E696AD98];
  joinState = [chatCopy joinState];

  v13 = [v11 numberWithInteger:joinState];
  [v5 setObject:v13 forKey:@"chatIdentifier"];

  return v5;
}

- (void)sendBalloonPayload:(id)payload attachments:(id)attachments withMessageGUID:(id)d bundleID:(id)iD
{
  v24 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  attachmentsCopy = attachments;
  dCopy = d;
  iDCopy = iD;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  listeners = [(IMSimulatedDaemonController *)self listeners];
  v15 = [listeners countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(listeners);
        }

        [*(*(&v19 + 1) + 8 * v18++) simulatedDaemon:self willSendBalloonPayload:payloadCopy attachments:attachmentsCopy messageGUID:dCopy bundleID:iDCopy];
      }

      while (v16 != v18);
      v16 = [listeners countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v16);
  }
}

- (unsigned)capabilitiesForListenerID:(id)d
{
  v4.receiver = self;
  v4.super_class = IMSimulatedDaemonController;
  return *MEMORY[0x1E69A62B0] | [(IMDaemonController *)&v4 capabilitiesForListenerID:d]| *MEMORY[0x1E69A6260];
}

@end