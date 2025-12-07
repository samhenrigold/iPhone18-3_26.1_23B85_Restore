@interface BBCommunicationContext(protobuf)
+ (id)communicationContextFromProtobuf:()protobuf;
+ (id)writeContentURLIfPossibleFromProtobuf:()protobuf;
- (id)blt_protobuf;
@end

@implementation BBCommunicationContext(protobuf)

+ (id)communicationContextFromProtobuf:()protobuf
{
  v4 = a3;
  v5 = objc_opt_new();
  identifier = [v4 identifier];
  [v5 setIdentifier:identifier];

  displayName = [v4 displayName];
  [v5 setDisplayName:displayName];

  v8 = [self writeContentURLIfPossibleFromProtobuf:v4];
  [v5 setContentURL:v8];

  recipients = [v4 recipients];
  v10 = [recipients bs_compactMap:&__block_literal_global_11];
  [v5 setRecipients:v10];

  sender = [v4 sender];

  if (sender)
  {
    v12 = MEMORY[0x277CF3528];
    sender2 = [v4 sender];
    v14 = [v12 contactFromProtobuf:sender2];
    [v5 setSender:v14];
  }

  if ([v4 hasMentionsCurrentUser])
  {
    [v5 setMentionsCurrentUser:{objc_msgSend(v4, "mentionsCurrentUser")}];
  }

  if ([v4 hasNotifyRecipientAnyway])
  {
    [v5 setNotifyRecipientAnyway:{objc_msgSend(v4, "notifyRecipientAnyway")}];
  }

  if ([v4 hasReplyToCurrentUser])
  {
    [v5 setReplyToCurrentUser:{objc_msgSend(v4, "replyToCurrentUser")}];
  }

  if ([v4 hasRecipientCount])
  {
    [v5 setRecipientCount:{objc_msgSend(v4, "recipientCount")}];
  }

  if ([v4 hasImageName])
  {
    imageName = [v4 imageName];
    [v5 setImageName:imageName];
  }

  if ([v4 hasSystemImage])
  {
    [v5 setSystemImage:{objc_msgSend(v4, "systemImage")}];
  }

  if ([v4 hasCapabilities])
  {
    [v5 setCapabilities:{objc_msgSend(v4, "capabilities")}];
  }

  return v5;
}

+ (id)writeContentURLIfPossibleFromProtobuf:()protobuf
{
  v3 = a3;
  if (![v3 hasContentURLData])
  {
    v8 = 0;
    goto LABEL_12;
  }

  contentURLLocalFileLocation = [v3 contentURLLocalFileLocation];
  if (!contentURLLocalFileLocation)
  {
    v9 = blt_general_log(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(BBCommunicationContext(protobuf) *)v3 writeContentURLIfPossibleFromProtobuf:v9];
    }

    goto LABEL_10;
  }

  contentURLData = [v3 contentURLData];
  v6 = [BLTReferenceCountedFile retain:contentURLLocalFileLocation fileData:contentURLData];

  if (!v6)
  {
    v9 = blt_general_log(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[BBCommunicationContext(protobuf) writeContentURLIfPossibleFromProtobuf:];
    }

LABEL_10:

    v8 = 0;
    goto LABEL_11;
  }

  v8 = contentURLLocalFileLocation;
LABEL_11:

LABEL_12:

  return v8;
}

- (id)blt_protobuf
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  identifier = [self identifier];
  [v3 setIdentifier:identifier];

  [v3 setBundleIdentifier:&stru_285432190];
  displayName = [self displayName];
  [v3 setDisplayName:displayName];

  [v3 setMentionsCurrentUser:{objc_msgSend(self, "mentionsCurrentUser")}];
  [v3 setNotifyRecipientAnyway:{objc_msgSend(self, "notifyRecipientAnyway")}];
  [v3 setReplyToCurrentUser:{objc_msgSend(self, "isReplyToCurrentUser")}];
  [v3 setRecipientCount:{objc_msgSend(self, "recipientCount")}];
  [v3 setSystemImage:{objc_msgSend(self, "systemImage")}];
  imageName = [self imageName];
  [v3 setImageName:imageName];

  [v3 setCapabilities:{objc_msgSend(self, "capabilities")}];
  sender = [self sender];

  if (sender)
  {
    sender2 = [self sender];
    blt_protobuf = [sender2 blt_protobuf];
    [v3 setSender:blt_protobuf];
  }

  contentURL = [self contentURL];

  if (contentURL)
  {
    imageDataForContentURL = [self imageDataForContentURL];
    [v3 setContentURLData:imageDataForContentURL];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  recipients = [self recipients];
  v13 = [recipients countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(recipients);
        }

        blt_protobuf2 = [*(*(&v19 + 1) + 8 * i) blt_protobuf];
        if (blt_protobuf2)
        {
          [v3 addRecipients:blt_protobuf2];
        }
      }

      v14 = [recipients countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  return v3;
}

+ (void)writeContentURLIfPossibleFromProtobuf:()protobuf .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "Error generating contentURL fileName for protobuf %@", &v2, 0xCu);
}

@end