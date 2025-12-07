@interface IMBalloonPluginDataSource
+ (BOOL)isPayloadServiceManatee:(id)manatee;
+ (id)URLForDugongShareURL:(id)l handle:(id)handle metadata:(id)metadata;
+ (id)URLForDugongShareURL:(id)l handle:(id)handle payload:(id)payload;
+ (id)previewSummaryForPluginBundle:(id)bundle;
+ (id)previewSummaryForPluginPayload:(id)payload withBundleID:(id)d previewAttachmentURL:(id *)l previewAttachmentUTI:(id *)i;
+ (id)replaceHandleWithContactNameInString:(id)string forAccount:(id)account additionalHandles:(id)handles;
+ (id)unlocalizedPreviewSummaryForPluginBundle:(id)bundle pluginDisplayName:(id)name;
- (BOOL)_associatedPayloads:(id)payloads shouldUpdateToPayloads:(id)toPayloads;
- (BOOL)_senderIsSameBetweenPayload:(id)payload andOtherPayload:(id)otherPayload;
- (BOOL)isDeferredSend;
- (BOOL)isFromMe;
- (BOOL)isPlayed;
- (CGSize)sizeThatFits:(CGSize)fits;
- (IMBalloonPluginDataSource)initWithPluginPayload:(id)payload;
- (IMBalloonPluginDataSourceDelegate)pluginDataSourceDelegate;
- (IMChat)chat;
- (IMMessage)imMessage;
- (NSArray)allPayloads;
- (NSData)messagePayloadDataForSending;
- (NSString)_imMessageGUID;
- (id)_findMatchForAssociatedPluginPayload:(id)payload inArray:(id)array;
- (id)_overrideURLForOpeningURL:(id)l;
- (id)_replaceHandleWithContactNameInString:(id)string;
- (id)_summaryText;
- (id)description;
- (id)individualPreviewSummary;
- (id)overrideURLForOpeningURL:(id)l;
- (unint64_t)_updateWithPluginPayload:(id)payload associatedPayloads:(id)payloads messageID:(int64_t)d messageGUID:(id)iD;
- (void)_dataSourceDidChange;
- (void)_reloadLatestUnconsumedBreadcrumb;
- (void)_removeTemporaryAttachmentURLs;
- (void)_updatePayload:(id)payload associatedPayloads:(id)payloads messageID:(int64_t)d messageGUID:(id)iD;
- (void)_updateTemporaryAttachmentURLsForPluginPayload;
- (void)beginShowingLastConsumedBreadcrumbForOutgoingPayload:(id)payload;
- (void)checkForAllowedByScreenTime;
- (void)chooseOptions;
- (void)datasourceWasMovedToNewGuid:(id)guid;
- (void)endShowingLastConsumedBreadcrumb;
- (void)invalidateMessageTintColor;
- (void)markAsPlayed;
- (void)needsResize;
- (void)payloadWillSendFromShelf;
- (void)playbackWithCompletionBlock:(id)block;
- (void)pluginPayloadDidChange:(unint64_t)change;
- (void)pluginPayloadShouldSendCollaboration;
- (void)pluginPayloadShouldSendCopy;
- (void)sendPayload:(id)payload attachments:(id)attachments;
- (void)setPayload:(id)payload;
- (void)setPayload:(id)payload attachments:(id)attachments;
- (void)setPluginPayload:(id)payload;
- (void)setSendEnabled:(BOOL)enabled;
- (void)statusStringNeedsUpdate;
- (void)thumbnailURLWithSize:(CGSize)size completion:(id)completion;
- (void)updatePayload:(id)payload attachments:(id)attachments;
- (void)updatePayloadForShelfAnimation:(id)animation;
@end

@implementation IMBalloonPluginDataSource

- (IMBalloonPluginDataSource)initWithPluginPayload:(id)payload
{
  v48 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  messageGUID = [payloadCopy messageGUID];
  data = [payloadCopy data];
  dataDetectedResult = [payloadCopy dataDetectedResult];
  v8 = [payloadCopy url];
  v9 = [(IMBalloonPluginDataSource *)self initWithMessageGUID:messageGUID payload:data dataDetectedResult:dataDetectedResult url:v8];

  if (v9 || (v35.receiver = 0, v35.super_class = IMBalloonPluginDataSource, (v9 = [(IMBalloonPluginDataSource *)&v35 init]) != 0))
  {
    [(IMBalloonPluginDataSource *)v9 setPluginPayload:payloadCopy];
    pluginBundleID = [payloadCopy pluginBundleID];
    bundleID = v9->_bundleID;
    v9->_bundleID = pluginBundleID;

    v12 = [payloadCopy url];
    url = v9->_url;
    v9->_url = v12;

    dataDetectedResult2 = [payloadCopy dataDetectedResult];
    dataDetectedResult = v9->_dataDetectedResult;
    v9->_dataDetectedResult = dataDetectedResult2;

    consumedSessionPayloads = [payloadCopy consumedSessionPayloads];
    consumedPayloads = v9->_consumedPayloads;
    v9->_consumedPayloads = consumedSessionPayloads;

    pluginBundleID2 = [payloadCopy pluginBundleID];
    v19 = [pluginBundleID2 isEqualToString:*MEMORY[0x1E69A69A8]];

    if (v19)
    {
      [(IMBalloonPluginDataSource *)v9 _updateTemporaryAttachmentURLsForPluginPayload];
    }

    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = objc_opt_class();
        messageGUID2 = [(IMBalloonPluginDataSource *)v9 messageGUID];
        bundleID = [(IMBalloonPluginDataSource *)v9 bundleID];
        payload = [(IMBalloonPluginDataSource *)v9 payload];
        v25 = [payload length];
        pluginPayload = [(IMBalloonPluginDataSource *)v9 pluginPayload];
        attachments = [pluginPayload attachments];
        v28 = [attachments count];
        *buf = 138413570;
        v37 = v21;
        v38 = 2112;
        v39 = messageGUID2;
        v40 = 2112;
        v41 = bundleID;
        v42 = 2048;
        v43 = v25;
        v44 = 2048;
        v45 = v28;
        v46 = 2048;
        v47 = v9;
        _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Initialized %@(message guid: %@, bundle id: %@) with %tu byte payload, %tu attachments self pointer: %p", buf, 0x3Eu);
      }
    }

    objc_initWeak(buf, v9);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = sub_1A8274504;
    v33[3] = &unk_1E7810118;
    objc_copyWeak(&v34, buf);
    v31 = [defaultCenter addObserverForName:@"com.apple.messages.IMDowntimeStateChangedForBundleID" object:0 queue:mainQueue usingBlock:v33];

    [(IMBalloonPluginDataSource *)v9 checkForAllowedByScreenTime];
    objc_destroyWeak(&v34);
    objc_destroyWeak(buf);
  }

  return v9;
}

- (void)checkForAllowedByScreenTime
{
  v3 = +[IMBalloonPluginManager sharedInstance];
  bundleID = [(IMBalloonPluginDataSource *)self bundleID];
  v7 = [v3 systemBundleIdentifierForPluginIdentifier:bundleID];

  if (v7)
  {
    v5 = IMSharedDowntimeController();
    -[IMBalloonPluginDataSource setAllowedByScreenTime:](self, "setAllowedByScreenTime:", [v5 allowedToShowAppExtensionWithBundleIdentifier:v7]);
  }

  else
  {
    [(IMBalloonPluginDataSource *)self setAllowedByScreenTime:1];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"com.apple.messages.IMBalloonPluginDataSourceScreenTimeAllowedStateChanged" object:self];
}

- (NSArray)allPayloads
{
  v10[1] = *MEMORY[0x1E69E9840];
  payload = [(IMBalloonPluginDataSource *)self payload];
  consumedPayloads = [(IMBalloonPluginDataSource *)self consumedPayloads];
  consumedPayloads2 = consumedPayloads;
  if (!payload)
  {
    v7 = MEMORY[0x1E695E0F0];
    if (consumedPayloads)
    {
      v7 = consumedPayloads;
    }

    v6 = v7;
    goto LABEL_7;
  }

  if (consumedPayloads2)
  {
    consumedPayloads2 = [(IMBalloonPluginDataSource *)self consumedPayloads];
    v6 = [consumedPayloads2 arrayByAddingObject:payload];
LABEL_7:
    v8 = v6;

    goto LABEL_9;
  }

  v10[0] = payload;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
LABEL_9:

  return v8;
}

- (NSString)_imMessageGUID
{
  imMessageGUID = self->__imMessageGUID;
  if (!imMessageGUID)
  {
    messageGUID = [(IMBalloonPluginDataSource *)self messageGUID];
    if ([messageGUID containsString:@":"])
    {
      v5 = [messageGUID componentsSeparatedByString:@":"];
      firstObject = [v5 firstObject];

      if (firstObject)
      {
        v7 = firstObject;

        messageGUID = v7;
      }
    }

    v8 = self->__imMessageGUID;
    self->__imMessageGUID = messageGUID;

    imMessageGUID = self->__imMessageGUID;
  }

  return imMessageGUID;
}

- (void)setPayload:(id)payload
{
  [(IMPluginPayload *)self->_pluginPayload setData:payload];

  MEMORY[0x1EEE66B58](self, sel__dataSourceDidChange);
}

- (void)setPayload:(id)payload attachments:(id)attachments
{
  v17 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  attachmentsCopy = attachments;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(payloadCopy, "length")}];
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(attachmentsCopy, "count")}];
      v11 = 138412802;
      selfCopy = self;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "self:%@ set payload length %@ attachments count %@", &v11, 0x20u);
    }
  }

  [(IMBalloonPluginDataSource *)self setPendingAttachmentData:attachmentsCopy];
  [(IMBalloonPluginDataSource *)self setPayload:payloadCopy];
}

- (NSData)messagePayloadDataForSending
{
  v22 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = MEMORY[0x1E696AD98];
      payload = [(IMBalloonPluginDataSource *)self payload];
      v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(payload, "length")}];
      v7 = MEMORY[0x1E696AD98];
      pendingAttachmentData = [(IMBalloonPluginDataSource *)self pendingAttachmentData];
      v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(pendingAttachmentData, "count")}];
      v16 = 138412802;
      selfCopy = self;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "messagePayloadDataForSending self:%@ payload length %@ attachments count %@", &v16, 0x20u);
    }
  }

  pendingAttachmentData2 = [(IMBalloonPluginDataSource *)self pendingAttachmentData];
  v11 = [pendingAttachmentData2 count] == 0;

  payload2 = [(IMBalloonPluginDataSource *)self payload];
  if (!v11)
  {
    pendingAttachmentData3 = [(IMBalloonPluginDataSource *)self pendingAttachmentData];
    v14 = IMSharedHelperCombinedPluginPayloadDictionaryData();

    payload2 = v14;
  }

  return payload2;
}

- (IMMessage)imMessage
{
  chat = [(IMBalloonPluginDataSource *)self chat];
  _imMessageGUID = [(IMBalloonPluginDataSource *)self _imMessageGUID];
  v5 = [chat messageForGUID:_imMessageGUID];

  return v5;
}

- (IMChat)chat
{
  v20 = *MEMORY[0x1E69E9840];
  chat = self->_chat;
  if (!chat)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = +[IMChatRegistry sharedRegistryIfAvailable];
    _imMessageGUID = [(IMBalloonPluginDataSource *)self _imMessageGUID];
    v6 = [v4 _cachedChatsWithMessageGUID:_imMessageGUID];

    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; i = (i + 1))
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          _imMessageGUID2 = [(IMBalloonPluginDataSource *)self _imMessageGUID];
          v12 = [v10 messageForGUID:_imMessageGUID2];

          if (v12)
          {
            v7 = v10;
            goto LABEL_12;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    v13 = self->_chat;
    self->_chat = v7;

    chat = self->_chat;
  }

  return chat;
}

- (void)sendPayload:(id)payload attachments:(id)attachments
{
  v35 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  attachmentsCopy = attachments;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(payloadCopy, "length")}];
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(attachmentsCopy, "count")}];
      *buf = 138412802;
      selfCopy = self;
      v31 = 2112;
      v32 = v8;
      v33 = 2112;
      v34 = v9;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "self %@ sendPayload %@ attachments %@", buf, 0x20u);
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = +[IMChatRegistry sharedRegistryIfAvailable];
  _imMessageGUID = [(IMBalloonPluginDataSource *)self _imMessageGUID];
  v12 = [v10 _cachedChatsWithMessageGUID:_imMessageGUID];

  v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = *v25;
    v15 = MEMORY[0x1E69A79F0];
    while (2)
    {
      v16 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v12);
        }

        account = [*(*(&v24 + 1) + 8 * v16) account];
        service = [account service];
        v19 = [service supportsCapability:*v15];

        if ((v19 & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v22 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Bailing, chat wasn't iMessage", buf, 2u);
            }
          }

          [(IMBalloonPluginDataSource *)self updatePayload:payloadCopy attachments:attachmentsCopy];
          goto LABEL_21;
        }

        ++v16;
      }

      while (v13 != v16);
      v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  if (payloadCopy && [payloadCopy length])
  {
    v12 = +[IMDaemonController sharedController];
    remoteDaemon = [v12 remoteDaemon];
    messageGUID = [(IMBalloonPluginDataSource *)self messageGUID];
    [remoteDaemon sendBalloonPayload:payloadCopy attachments:attachmentsCopy withMessageGUID:messageGUID bundleID:self->_bundleID];

LABEL_21:
  }
}

- (void)updatePayloadForShelfAnimation:(id)animation
{
  v4 = [(IMBalloonPluginDataSource *)self _updateWithPluginPayload:animation associatedPayloads:0 messageID:0 messageGUID:0]| 0xB;

  [(IMBalloonPluginDataSource *)self pluginPayloadDidChange:v4];
}

- (void)updatePayload:(id)payload attachments:(id)attachments
{
  attachmentsCopy = attachments;
  payloadCopy = payload;
  v11 = +[IMDaemonController sharedController];
  remoteDaemon = [v11 remoteDaemon];
  bundleID = [(IMBalloonPluginDataSource *)self bundleID];
  messageGUID = [(IMBalloonPluginDataSource *)self messageGUID];
  [remoteDaemon updateBalloonPayload:payloadCopy attachments:attachmentsCopy bundleID:bundleID forMessageGUID:messageGUID];
}

- (void)_updatePayload:(id)payload associatedPayloads:(id)payloads messageID:(int64_t)d messageGUID:(id)iD
{
  v7 = [(IMBalloonPluginDataSource *)self _updateWithPluginPayload:payload associatedPayloads:payloads messageID:d messageGUID:iD];
  if (v7)
  {
    v8 = v7;
    [(IMBalloonPluginDataSource *)self pluginPayloadDidChange:v7];
    if (v8)
    {

      MEMORY[0x1EEE66B58](self, sel_payloadDidChange);
    }
  }
}

- (BOOL)_senderIsSameBetweenPayload:(id)payload andOtherPayload:(id)otherPayload
{
  payloadCopy = payload;
  otherPayloadCopy = otherPayload;
  sender = [payloadCopy sender];
  if (sender)
  {
  }

  else
  {
    sender2 = [otherPayloadCopy sender];

    if (!sender2)
    {
      LOBYTE(sender3) = 1;
      goto LABEL_9;
    }
  }

  sender3 = [payloadCopy sender];
  if (sender3)
  {
    sender4 = [otherPayloadCopy sender];

    if (sender4)
    {
      sender5 = [payloadCopy sender];
      sender6 = [otherPayloadCopy sender];
      LOBYTE(sender3) = [sender5 isEqualToString:sender6];
    }

    else
    {
      LOBYTE(sender3) = 0;
    }
  }

LABEL_9:

  return sender3;
}

- (void)_updateTemporaryAttachmentURLsForPluginPayload
{
  v49 = *MEMORY[0x1E69E9840];
  if (!self->_temporaryAttachmentURLs)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    temporaryAttachmentURLs = self->_temporaryAttachmentURLs;
    self->_temporaryAttachmentURLs = v2;
  }

  array = [MEMORY[0x1E695DF70] array];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  pluginPayload = [(IMBalloonPluginDataSource *)self pluginPayload];
  obj = [pluginPayload attachments];

  v5 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v5)
  {
    v7 = *v39;
    *&v6 = 138412802;
    v32 = v6;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v38 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          path = [v10 path];
          v12 = IMSafeTemporaryDirectory();
          path2 = [v12 path];
          v14 = [path hasPrefix:path2];

          if (v14)
          {
            v15 = IMSafeTemporaryDirectory();
            path3 = [v15 path];
            stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
            v18 = [path3 stringByAppendingPathComponent:stringGUID];

            defaultManager = [MEMORY[0x1E696AC08] defaultManager];
            v37 = 0;
            LODWORD(v15) = [defaultManager createDirectoryAtPath:v18 withIntermediateDirectories:1 attributes:0 error:&v37];
            v20 = v37;

            if (v15)
            {
              v21 = MEMORY[0x1E695DFF8];
              path4 = [v10 path];
              lastPathComponent = [path4 lastPathComponent];
              v24 = [v18 stringByAppendingPathComponent:lastPathComponent];
              v25 = [v21 fileURLWithPath:v24];

              defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
              v36 = 0;
              LODWORD(v24) = [defaultManager2 copyItemAtURL:v10 toURL:v25 error:&v36];
              v27 = v36;

              if (v24)
              {
                [array addObject:v25];
                temporaryAttachmentURLs = [(IMBalloonPluginDataSource *)self temporaryAttachmentURLs];
                [temporaryAttachmentURLs addObject:v25];
              }

              else
              {
                if (IMOSLoggingEnabled())
                {
                  v30 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                  {
                    *buf = v32;
                    v43 = v10;
                    v44 = 2112;
                    v45 = v25;
                    v46 = 2112;
                    v47 = v27;
                    _os_log_impl(&dword_1A823F000, v30, OS_LOG_TYPE_INFO, "IMBalloonPluginDataSource failed to link temporary file URL %@ to %@ (error: %@)", buf, 0x20u);
                  }
                }

                [array addObject:{v10, v32}];
              }
            }

            else
            {
              if (IMOSLoggingEnabled())
              {
                v29 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v43 = v18;
                  v44 = 2112;
                  v45 = v20;
                  _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "IMBalloonPluginDataSource failed to create temporary directory at %@ (error: %@)", buf, 0x16u);
                }
              }

              [array addObject:{v10, v32}];
            }
          }

          else
          {
            [array addObject:v10];
          }
        }

        else
        {
          [array addObject:v9];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v5);
  }

  pluginPayload2 = [(IMBalloonPluginDataSource *)self pluginPayload];
  [pluginPayload2 setAttachments:array];
}

- (void)_removeTemporaryAttachmentURLs
{
  v33 = *MEMORY[0x1E69E9840];
  temporaryAttachmentURLs = [(IMBalloonPluginDataSource *)self temporaryAttachmentURLs];
  v3 = [temporaryAttachmentURLs count];

  if (v3)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    pluginPayload = [(IMBalloonPluginDataSource *)self pluginPayload];
    attachments = [pluginPayload attachments];

    v6 = [attachments countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (!v6)
    {
      goto LABEL_23;
    }

    v7 = *v25;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(attachments);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          temporaryAttachmentURLs2 = [(IMBalloonPluginDataSource *)self temporaryAttachmentURLs];
          v12 = [temporaryAttachmentURLs2 containsObject:v10];

          if (v12)
          {
            path = [v10 path];
            v14 = IMSafeTemporaryDirectory();
            path2 = [v14 path];
            v16 = [path hasPrefix:path2];

            if (v16)
            {
              defaultManager = [MEMORY[0x1E696AC08] defaultManager];
              path3 = [v10 path];
              v23 = 0;
              v19 = [defaultManager removeItemAtPath:path3 error:&v23];
              v20 = v23;

              if ((v19 & 1) == 0 && IMOSLoggingEnabled())
              {
                v21 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v29 = v10;
                  v30 = 2112;
                  v31 = v20;
                  _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "IMBalloonPluginDataSource failed to remove temporary file URL %@ (error: %@)", buf, 0x16u);
                }
              }

              goto LABEL_19;
            }

            if (IMOSLoggingEnabled())
            {
              v20 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v29 = v10;
                _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "IMBalloonPluginDataSource NOT removing non-temporary file URL %@", buf, 0xCu);
              }

LABEL_19:
            }
          }

          continue;
        }
      }

      v6 = [attachments countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (!v6)
      {
LABEL_23:

        [(IMBalloonPluginDataSource *)self setTemporaryAttachmentURLs:0];
        return;
      }
    }
  }
}

- (unint64_t)_updateWithPluginPayload:(id)payload associatedPayloads:(id)payloads messageID:(int64_t)d messageGUID:(id)iD
{
  v88 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  obj = payloads;
  payloadsCopy = payloads;
  iDCopy = iD;
  bundleID = [(IMBalloonPluginDataSource *)self bundleID];
  v12 = *MEMORY[0x1E69A69A8];
  if ([bundleID isEqualToString:*MEMORY[0x1E69A69A8]])
  {
    if (!payloadCopy || !d)
    {

      goto LABEL_14;
    }

    messageIDOfLastMessageInSession = [(IMBalloonPluginDataSource *)self messageIDOfLastMessageInSession];

    if (messageIDOfLastMessageInSession > d)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (!payloadCopy)
    {
      goto LABEL_14;
    }
  }

  if (d < 1)
  {
LABEL_10:
    pluginPayload = [(IMBalloonPluginDataSource *)self pluginPayload];
    v14 = [pluginPayload copy];
    location = &self->_associatedPluginPayloads;
    v66 = self->_associatedPluginPayloads;
    messageGUID = [payloadCopy messageGUID];
    [v14 setMessageGUID:messageGUID];

    pluginSessionGUID = [payloadCopy pluginSessionGUID];
    [v14 setPluginSessionGUID:pluginSessionGUID];

    [v14 setLiveEditableInEntryView:{objc_msgSend(payloadCopy, "liveEditableInEntryView")}];
    [v14 setShouldExpire:{objc_msgSend(payloadCopy, "shouldExpire")}];
    if (-[IMBalloonPluginDataSource _senderIsSameBetweenPayload:andOtherPayload:](self, "_senderIsSameBetweenPayload:andOtherPayload:", payloadCopy, v14) && (v17 = [payloadCopy isFromMe], v17 == objc_msgSend(v14, "isFromMe")))
    {
      v19 = 0;
    }

    else
    {
      sender = [payloadCopy sender];
      [v14 setSender:sender];

      [v14 setIsFromMe:{objc_msgSend(payloadCopy, "isFromMe")}];
      v19 = 8;
    }

    attachments = [payloadCopy attachments];
    if ([attachments count])
    {
      v22 = 1;
    }

    else
    {
      attachments2 = [payloadCopy attachments];
      v24 = [attachments2 count];
      attachments3 = [pluginPayload attachments];
      v22 = v24 != [attachments3 count];
    }

    v26 = [pluginPayload isEqualAttachmentFileURLsToPluginPayload:payloadCopy];
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = @"NO";
        if (v22)
        {
          v29 = @"YES";
        }

        else
        {
          v29 = @"NO";
        }

        if (!v26)
        {
          v28 = @"YES";
        }

        *buf = 138412546;
        v73 = v29;
        v74 = 2112;
        v75 = v28;
        _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "payloadAttachmentCountChanged %@ needsPayloadAttachmentUpdate %@", buf, 0x16u);
      }
    }

    if (!(v26 & 1 | !v22))
    {
      bundleID2 = [(IMBalloonPluginDataSource *)self bundleID];
      v31 = [bundleID2 isEqualToString:v12];

      if (((d > 0) & v31) != 0)
      {
        [(IMBalloonPluginDataSource *)self _removeTemporaryAttachmentURLs];
      }

      attachments4 = [payloadCopy attachments];
      if ([attachments4 count])
      {
        attachments5 = [payloadCopy attachments];
      }

      else
      {
        attachments5 = 0;
      }

      fileTransferGUIDs = [payloadCopy fileTransferGUIDs];
      if ([fileTransferGUIDs count])
      {
        fileTransferGUIDs2 = [payloadCopy fileTransferGUIDs];
      }

      else
      {
        fileTransferGUIDs2 = 0;
      }

      [v14 setAttachments:attachments5];
      [v14 setFileTransferGUIDs:fileTransferGUIDs2];

      v19 |= 2uLL;
    }

    data = [pluginPayload data];
    data2 = [payloadCopy data];
    v38 = [data isEqualToData:data2];

    if ((v38 & 1) == 0)
    {
      consumedSessionPayloads = [payloadCopy consumedSessionPayloads];
      consumedPayloads = self->_consumedPayloads;
      self->_consumedPayloads = consumedSessionPayloads;

      data3 = [payloadCopy data];
      [v14 setData:data3];

      v19 |= 1uLL;
    }

    if ([(IMBalloonPluginDataSource *)self _associatedPayloads:v66 shouldUpdateToPayloads:payloadsCopy])
    {
      v20 = v19 | 0x10;
    }

    else
    {
      v20 = v19;
    }

    if (![pluginPayload supportsCollaboration] || !objc_msgSend(payloadCopy, "supportsCollaboration"))
    {
      goto LABEL_60;
    }

    collaborationMetadata = [pluginPayload collaborationMetadata];
    collaborationMetadata2 = [payloadCopy collaborationMetadata];
    if ([collaborationMetadata isEqual:collaborationMetadata2])
    {
    }

    else
    {
      collaborationMetadata3 = [payloadCopy collaborationMetadata];
      v45 = collaborationMetadata3 == 0;

      if (v45)
      {
        goto LABEL_50;
      }

      collaborationMetadata = [payloadCopy collaborationMetadata];
      [v14 setCollaborationMetadata:collaborationMetadata];
    }

LABEL_50:
    datasource = [pluginPayload datasource];
    datasource2 = [payloadCopy datasource];
    if ([datasource isEqual:datasource2])
    {
    }

    else
    {
      datasource3 = [payloadCopy datasource];
      v49 = datasource3 == 0;

      if (v49)
      {
LABEL_55:
        collaborationOptionsSummary = [pluginPayload collaborationOptionsSummary];
        collaborationOptionsSummary2 = [payloadCopy collaborationOptionsSummary];
        if ([collaborationOptionsSummary isEqual:collaborationOptionsSummary2])
        {
        }

        else
        {
          collaborationOptionsSummary3 = [payloadCopy collaborationOptionsSummary];
          v53 = collaborationOptionsSummary3 == 0;

          if (v53)
          {
            goto LABEL_60;
          }

          collaborationOptionsSummary = [payloadCopy collaborationOptionsSummary];
          [v14 setCollaborationOptionsSummary:collaborationOptionsSummary];
        }

LABEL_60:
        isPlayed = [pluginPayload isPlayed];
        if (isPlayed == [payloadCopy isPlayed])
        {
          if (!v20)
          {
LABEL_78:

            goto LABEL_79;
          }
        }

        else
        {
          [v14 setIsPlayed:{objc_msgSend(payloadCopy, "isPlayed")}];
          v20 |= 4uLL;
        }

        [(IMBalloonPluginDataSource *)self setPluginPayload:v14];
        if ((v20 & 0x10) != 0)
        {
          objc_storeStrong(location, obj);
        }

        if (IMOSLoggingEnabled())
        {
          v55 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            obja = [MEMORY[0x1E696AD98] numberWithLongLong:d];
            v64 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v20];
            sender2 = [pluginPayload sender];
            if ([pluginPayload isFromMe])
            {
              v57 = @"YES";
            }

            else
            {
              v57 = @"NO";
            }

            sender3 = [v14 sender];
            isFromMe = [v14 isFromMe];
            v60 = [*location count];
            if (isFromMe)
            {
              v61 = @"YES";
            }

            else
            {
              v61 = @"NO";
            }

            *buf = 138414082;
            if (v60)
            {
              v62 = @"YES";
            }

            else
            {
              v62 = @"NO";
            }

            v73 = iDCopy;
            v74 = 2112;
            v75 = obja;
            v76 = 2112;
            v77 = v64;
            v78 = 2112;
            v79 = sender2;
            v80 = 2112;
            v81 = v57;
            v82 = 2112;
            v83 = sender3;
            v84 = 2112;
            v85 = v61;
            v86 = 2112;
            v87 = v62;
            _os_log_impl(&dword_1A823F000, v55, OS_LOG_TYPE_INFO, "after update messageGUID %@ messageID %@ updateFlags %@ old payload sender %@ old payload isFromMe %@ new sender %@ new isFromMe %@ hasAssociatedPayloads: %@", buf, 0x52u);
          }
        }

        goto LABEL_78;
      }

      datasource = [payloadCopy datasource];
      [v14 setDatasource:datasource];
    }

    goto LABEL_55;
  }

  if ([(IMBalloonPluginDataSource *)self messageIDOfLastMessageInSession]<= d)
  {
    self->_messageIDOfLastMessageInSession = d;
    objc_storeStrong(&self->_guidOfLastMessageInSession, iD);
    goto LABEL_10;
  }

LABEL_14:
  v20 = 0;
LABEL_79:

  return v20;
}

- (BOOL)_associatedPayloads:(id)payloads shouldUpdateToPayloads:(id)toPayloads
{
  v30 = *MEMORY[0x1E69E9840];
  payloadsCopy = payloads;
  toPayloadsCopy = toPayloads;
  if ([payloadsCopy isEqualToArray:toPayloadsCopy])
  {
    v8 = 0;
    goto LABEL_23;
  }

  v9 = [payloadsCopy count];
  if (v9 < [toPayloadsCopy count])
  {
    v10 = IMLogHandleForCategory();
    v8 = 1;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Associated payloads count is larger. UPDATE", buf, 2u);
    }

    goto LABEL_22;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = toPayloadsCopy;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = v11;
  v13 = *v25;
  obj = v10;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v25 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v24 + 1) + 8 * i);
      v16 = [(IMBalloonPluginDataSource *)self _findMatchForAssociatedPluginPayload:v15 inArray:payloadsCopy];
      if (!v16)
      {
        v20 = IMLogHandleForCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v21 = "No match for a new item. UPDATE";
LABEL_20:
          _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, v21, buf, 2u);
        }

LABEL_21:
        v10 = obj;

        v8 = 1;
        goto LABEL_22;
      }

      time = [v15 time];
      time2 = [v16 time];
      v19 = [time compare:time2];

      if (v19 == 1)
      {
        v20 = IMLogHandleForCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v21 = "New payload has a newer time. UPDATE";
          goto LABEL_20;
        }

        goto LABEL_21;
      }
    }

    v10 = obj;
    v12 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_15:
  v8 = 0;
LABEL_22:

LABEL_23:
  return v8;
}

- (id)_findMatchForAssociatedPluginPayload:(id)payload inArray:(id)array
{
  v30 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  arrayCopy = array;
  v7 = [arrayCopy countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v7;
  v9 = *v26;
  v22 = arrayCopy;
  v23 = *v26;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v26 != v9)
      {
        objc_enumerationMutation(arrayCopy);
      }

      v11 = *(*(&v25 + 1) + 8 * i);
      sender = [v11 sender];
      sender2 = [payloadCopy sender];
      if (![sender isEqualToString:sender2])
      {
        goto LABEL_11;
      }

      associatedMessageGUID = [v11 associatedMessageGUID];
      associatedMessageGUID2 = [payloadCopy associatedMessageGUID];
      if (![associatedMessageGUID isEqualToString:associatedMessageGUID2])
      {

LABEL_11:
        continue;
      }

      pluginBundleID = [v11 pluginBundleID];
      [payloadCopy pluginBundleID];
      v17 = v8;
      v19 = v18 = payloadCopy;
      v24 = [pluginBundleID isEqualToString:v19];

      payloadCopy = v18;
      v8 = v17;

      arrayCopy = v22;
      v9 = v23;

      if (v24)
      {
        v20 = v11;
        goto LABEL_15;
      }
    }

    v8 = [arrayCopy countByEnumeratingWithState:&v25 objects:v29 count:16];
  }

  while (v8);
LABEL_14:
  v20 = 0;
LABEL_15:

  return v20;
}

- (void)setPluginPayload:(id)payload
{
  payloadCopy = payload;
  pluginPayload = self->_pluginPayload;
  if (pluginPayload != payloadCopy)
  {
    [(IMPluginPayload *)pluginPayload setDatasource:0];
    objc_storeStrong(&self->_pluginPayload, payload);
    [(IMPluginPayload *)self->_pluginPayload setDatasource:self];
    imMessageGUID = self->__imMessageGUID;
    self->__imMessageGUID = 0;
  }

  MEMORY[0x1EEE66BB8](pluginPayload);
}

- (BOOL)isFromMe
{
  pluginPayload = [(IMBalloonPluginDataSource *)self pluginPayload];
  isFromMe = [pluginPayload isFromMe];

  return isFromMe;
}

- (BOOL)isPlayed
{
  pluginPayload = [(IMBalloonPluginDataSource *)self pluginPayload];
  isPlayed = [pluginPayload isPlayed];

  return isPlayed;
}

- (void)pluginPayloadDidChange:(unint64_t)change
{
  v25 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      messageGUID = [(IMBalloonPluginDataSource *)self messageGUID];
      bundleID = [(IMBalloonPluginDataSource *)self bundleID];
      payload = [(IMBalloonPluginDataSource *)self payload];
      v10 = [payload length];
      pluginPayload = [(IMBalloonPluginDataSource *)self pluginPayload];
      attachments = [pluginPayload attachments];
      v13 = 138413570;
      v14 = v6;
      v15 = 2112;
      v16 = messageGUID;
      v17 = 2112;
      v18 = bundleID;
      v19 = 2048;
      v20 = v10;
      v21 = 2048;
      v22 = [attachments count];
      v23 = 2048;
      changeCopy = change;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "pluginPayloadDidChange %@(message guid: %@, bundle id: %@) updated: %tu byte payload, %tu attachments (change flags: %tu)", &v13, 0x3Eu);
    }
  }
}

- (void)thumbnailURLWithSize:(CGSize)size completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0, size, *&size.height);
  }
}

- (void)payloadWillSendFromShelf
{
  v6 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "payloadWillSendFromShelf: %@", &v4, 0xCu);
    }
  }
}

- (void)invalidateMessageTintColor
{
  v9[1] = *MEMORY[0x1E69E9840];
  _imMessageGUID = [(IMBalloonPluginDataSource *)self _imMessageGUID];
  stagingContext = [(IMBalloonPluginDataSource *)self stagingContext];
  transientIdentifier = [stagingContext transientIdentifier];

  if (transientIdentifier)
  {
    v8 = @"__kIMPluginDataSourceTransientIdentifierKey";
    v9[0] = transientIdentifier;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__kIMPayloadDidInvalidateMessageTintColor" object:_imMessageGUID userInfo:v6];
}

- (void)statusStringNeedsUpdate
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = +[IMChatRegistry sharedRegistryIfAvailable];
  _imMessageGUID = [(IMBalloonPluginDataSource *)self _imMessageGUID];
  v18 = [v3 _cachedChatsWithMessageGUID:_imMessageGUID];

  v5 = v18;
  if ([v18 count])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = v18;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v7)
    {
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          if (IMOSLoggingEnabled())
          {
            v11 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              _imMessageGUID2 = [(IMBalloonPluginDataSource *)self _imMessageGUID];
              *buf = 138412290;
              v24 = _imMessageGUID2;
              _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Updating status message for guid: %@", buf, 0xCu);
            }
          }

          _imMessageGUID3 = [(IMBalloonPluginDataSource *)self _imMessageGUID];
          v14 = [v10 messageForGUID:_imMessageGUID3];

          _imMessageItem = [v14 _imMessageItem];
          [v10 _handleIncomingItem:_imMessageItem updateRecipient:0];
        }

        v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v7);
    }

LABEL_18:
    v5 = v18;
    goto LABEL_19;
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      _imMessageGUID4 = [(IMBalloonPluginDataSource *)self _imMessageGUID];
      *buf = 138412290;
      v24 = _imMessageGUID4;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "No chat found for message guid: %@", buf, 0xCu);
    }

    goto LABEL_18;
  }

LABEL_19:
}

- (void)needsResize
{
  v43 = *MEMORY[0x1E69E9840];
  [(IMBalloonPluginDataSource *)self setHasInvalidatedSize:1];
  v3 = +[IMChatRegistry sharedRegistryIfAvailable];
  _imMessageGUID = [(IMBalloonPluginDataSource *)self _imMessageGUID];
  v30 = [v3 _cachedChatsWithMessageGUID:_imMessageGUID];

  if ([(IMBalloonPluginDataSource *)self payloadInShelf])
  {
    pluginPayload = [(IMBalloonPluginDataSource *)self pluginPayload];
    liveEditableInEntryView = [pluginPayload liveEditableInEntryView];
  }

  else
  {
    liveEditableInEntryView = 0;
  }

  if (![v30 count] || (liveEditableInEntryView & 1) != 0)
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        _imMessageGUID2 = [(IMBalloonPluginDataSource *)self _imMessageGUID];
        *buf = 138412290;
        v41 = _imMessageGUID2;
        _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_INFO, "No chat found for message guid: %@", buf, 0xCu);
      }
    }

    stagingContext = [(IMBalloonPluginDataSource *)self stagingContext];
    transientIdentifier = [stagingContext transientIdentifier];

    if (transientIdentifier)
    {
      v38 = @"__kIMPluginDataSourceTransientIdentifierKey";
      v39 = transientIdentifier;
      obj = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    }

    else
    {
      obj = MEMORY[0x1E695E0F8];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    _imMessageGUID3 = [(IMBalloonPluginDataSource *)self _imMessageGUID];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMPayloadNeedsResizing" object:_imMessageGUID3 userInfo:obj];
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v30;
    v7 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v7)
    {
      v8 = *v35;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v34 + 1) + 8 * i);
          if (IMOSLoggingEnabled())
          {
            v11 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              _imMessageGUID4 = [(IMBalloonPluginDataSource *)self _imMessageGUID];
              *buf = 138412290;
              v41 = _imMessageGUID4;
              _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Updating balloon size for guid: %@", buf, 0xCu);
            }
          }

          inlineReplyController = [v10 inlineReplyController];
          v14 = inlineReplyController == 0;

          if (v14)
          {
            _imMessageGUID5 = [(IMBalloonPluginDataSource *)self _imMessageGUID];
            v23 = [v10 messageForGUID:_imMessageGUID5];
            _imMessageItem = [v23 _imMessageItem];

            [v10 _handleIncomingItem:_imMessageItem updateRecipient:0 suppressNotification:0 updateReplyCounts:0];
          }

          else
          {
            _imMessageItem = [v10 inlineReplyController];
            _imMessageGUID6 = [(IMBalloonPluginDataSource *)self _imMessageGUID];
            v17 = [_imMessageItem _itemForGUID:_imMessageGUID6];

            _imMessageGUID7 = [(IMBalloonPluginDataSource *)self _imMessageGUID];
            v19 = [v10 messageForGUID:_imMessageGUID7];
            _imMessageItem2 = [v19 _imMessageItem];

            v32[0] = MEMORY[0x1E69E9820];
            v32[1] = 3221225472;
            v32[2] = sub_1A82774D4;
            v32[3] = &unk_1E7810140;
            v32[4] = v10;
            v33 = _imMessageItem2;
            v21 = _imMessageItem2;
            [_imMessageItem performActionDisallowingItemInsert:v32];
            [_imMessageItem insertItem:v17];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v7);
    }
  }
}

- (void)setSendEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13[2] = *MEMORY[0x1E69E9840];
  stagingContext = [(IMBalloonPluginDataSource *)self stagingContext];

  if (stagingContext)
  {
    self->_sendEnabled = enabledCopy;
    stagingContext2 = [(IMBalloonPluginDataSource *)self stagingContext];
    transientIdentifier = [stagingContext2 transientIdentifier];

    if (transientIdentifier)
    {
      v12[0] = @"__kIMPluginDataSourceTransientIdentifierKey";
      v12[1] = @"Enabled";
      v13[0] = transientIdentifier;
      v8 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
      v13[1] = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
    }

    else
    {
      v9 = MEMORY[0x1E695E0F8];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    _imMessageGUID = [(IMBalloonPluginDataSource *)self _imMessageGUID];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMPayloadDidChangeSendEnabled" object:_imMessageGUID userInfo:v9];
  }
}

- (void)markAsPlayed
{
  v27 = *MEMORY[0x1E69E9840];
  if ([(IMBalloonPluginDataSource *)self allowedByScreenTime]&& ![(IMBalloonPluginDataSource *)self isPlayed])
  {
    bundleID = [(IMBalloonPluginDataSource *)self bundleID];
    v4 = [bundleID isEqualToString:*MEMORY[0x1E69A69A8]];

    if (v4)
    {
      _imMessageGUID = [(IMBalloonPluginDataSource *)self _imMessageGUID];
    }

    else
    {
      _imMessageGUID = [(IMBalloonPluginDataSource *)self guidOfLastMessageInSession];
      if (IMOSLoggingEnabled())
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v26 = _imMessageGUID;
          _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Marking message %@ as played for App Message", buf, 0xCu);
        }
      }
    }

    v7 = +[IMChatRegistry sharedRegistryIfAvailable];
    v19 = [v7 _cachedChatsWithMessageGUID:_imMessageGUID];

    if ([v19 count])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v8 = v19;
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        v10 = *v21;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v20 + 1) + 8 * i);
            if (IMOSLoggingEnabled())
            {
              v13 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v26 = _imMessageGUID;
                _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "marking message as played guid: %@", buf, 0xCu);
              }
            }

            v14 = [v12 messageForGUID:_imMessageGUID];
            v15 = v14;
            if (v14)
            {
              _imMessageItem = [v14 _imMessageItem];
              [v12 _markItemAsPlayed:_imMessageItem];

              if (IMOSLoggingEnabled())
              {
                v17 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v26 = _imMessageGUID;
                  _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Did mark message as played guid: %@", buf, 0xCu);
                }
              }
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v9);
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v26 = _imMessageGUID;
        _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "No chat found for message guid to mark as played: %@", buf, 0xCu);
      }
    }
  }
}

- (void)playbackWithCompletionBlock:(id)block
{
  blockCopy = block;
  playbackType = [(IMBalloonPluginDataSource *)self playbackType];
  if (blockCopy && !playbackType)
  {
    playbackType = blockCopy[2](blockCopy, 0);
  }

  MEMORY[0x1EEE66BB8](playbackType);
}

+ (id)unlocalizedPreviewSummaryForPluginBundle:(id)bundle pluginDisplayName:(id)name
{
  bundleCopy = bundle;
  nameCopy = name;
  if ([bundleCopy isEqualToString:*MEMORY[0x1E69A69E0]])
  {
    v7 = @"a Handwritten Message";
  }

  else if ([bundleCopy isEqualToString:*MEMORY[0x1E69A6A00]] & 1) != 0 || (IMBalloonExtensionIDWithSuffix(), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(bundleCopy, "isEqualToString:", v8), v8, (v9))
  {
    v7 = @"a Photo Message";
  }

  else if ([bundleCopy isEqualToString:*MEMORY[0x1E69A69A8]])
  {
    v7 = @"a Digital Touch Message";
  }

  else
  {
    v11 = +[IMBalloonPluginManager sharedInstance];
    v12 = [v11 balloonPluginForBundleID:bundleCopy];

    identifier = [v12 identifier];
    if ([identifier isEqualToString:bundleCopy])
    {
      browserDisplayName = [v12 browserDisplayName];
    }

    else
    {
      browserDisplayName = nameCopy;
    }

    v15 = browserDisplayName;

    if ([v15 length])
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"1 %@ Message", v15];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

+ (id)previewSummaryForPluginBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = +[IMBalloonPluginManager sharedInstance];
  v5 = [v4 dataSourceClassForBundleID:bundleCopy];

  previewSummary = [v5 previewSummary];
  if (previewSummary)
  {
    v7 = previewSummary;
    goto LABEL_13;
  }

  if ([bundleCopy isEqualToString:*MEMORY[0x1E69A69E0]])
  {
    v8 = @"Handwritten Message";
  }

  else if ([bundleCopy isEqualToString:*MEMORY[0x1E69A6A00]] & 1) != 0 || (IMBalloonExtensionIDWithSuffix(), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(bundleCopy, "isEqualToString:", v9), v9, (v10))
  {
    v8 = @"Photo Message";
  }

  else if ([bundleCopy isEqualToString:*MEMORY[0x1E69A69A8]])
  {
    v8 = @"Digital Touch Message";
  }

  else if ([bundleCopy isEqualToString:*MEMORY[0x1E69A6930]] & 1) != 0 || (IMBalloonExtensionIDWithSuffix(), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(bundleCopy, "isEqualToString:", v19), v19, (v20))
  {
    v8 = @"CHECK_IN_MESSAGE";
  }

  else
  {
    v21 = IMBalloonExtensionIDWithSuffix();
    v22 = [bundleCopy isEqualToString:v21];

    if (!v22)
    {
      goto LABEL_9;
    }

    v8 = @"POLL_VOTE_MESSAGE";
  }

  v11 = sub_1A8361964();
  v7 = [v11 localizedStringForKey:v8 value:&stru_1F1B76F98 table:@"IMCoreLocalizable"];

  if (!v7)
  {
LABEL_9:
    v12 = +[IMBalloonPluginManager sharedInstance];
    v13 = [v12 balloonPluginForBundleID:bundleCopy];

    browserDisplayName = [v13 browserDisplayName];
    if ([browserDisplayName length])
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = sub_1A8361964();
      v17 = [v16 localizedStringForKey:@"1 %@ Message" value:&stru_1F1B76F98 table:@"IMCoreLocalizable"];
      v7 = [v15 localizedStringWithFormat:v17, browserDisplayName];
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_13:

  return v7;
}

+ (id)previewSummaryForPluginPayload:(id)payload withBundleID:(id)d previewAttachmentURL:(id *)l previewAttachmentUTI:(id *)i
{
  v43 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  dCopy = d;
  v11 = +[IMBalloonPluginManager sharedInstance];
  v12 = [v11 dataSourceClassForBundleID:dCopy];

  if (v12)
  {
    if ([(objc_class *)v12 supportsIndividualPreviewSummaries])
    {
      v13 = [[v12 alloc] initWithPluginPayload:payloadCopy];
      v14 = v13;
      if (v13)
      {
        if (l)
        {
          *l = [v13 individualPreviewAttachmentFileAndUTI:i];
        }

        individualPreviewSummary = [v14 individualPreviewSummary];
        v16 = individualPreviewSummary;
        if (individualPreviewSummary)
        {
          v12 = individualPreviewSummary;
LABEL_35:

          goto LABEL_43;
        }

        v17 = IMBalloonExtensionIDWithSuffix();
        v18 = [dCopy isEqualToString:v17];

        if (v18)
        {
          if ([payloadCopy isFromMe])
          {
            v19 = sub_1A8361964();
            v20 = [v19 localizedStringForKey:@"POLL_VOTE_SELF_MESSAGE" value:&stru_1F1B76F98 table:@"IMCoreLocalizable"];
          }

          else
          {
            sender = [payloadCopy sender];
            v33 = [sender length];

            if (v33)
            {
              v34 = MEMORY[0x1E696AEC0];
              v35 = sub_1A8361964();
              v36 = [v35 localizedStringForKey:@"POLL_VOTE_OTHER_MESSAGE" value:&stru_1F1B76F98 table:@"IMCoreLocalizable"];
              sender2 = [payloadCopy sender];
              v19 = [v34 localizedStringWithFormat:v36, sender2];

              [v14 _replaceHandleWithContactNameInString:v19];
            }

            else
            {
              v19 = sub_1A8361964();
              [v19 localizedStringForKey:@"POLL_VOTE_MESSAGE" value:&stru_1F1B76F98 table:@"IMCoreLocalizable"];
            }
            v20 = ;
          }

          v12 = v20;

          goto LABEL_35;
        }
      }
    }

    if ([dCopy rangeOfString:*MEMORY[0x1E69A69F0]])
    {
      goto LABEL_42;
    }

    data = [payloadCopy data];
    if (!data)
    {
LABEL_41:

LABEL_42:
      v12 = [(objc_class *)v12 previewSummaryForPluginBundle:dCopy];
      goto LABEL_43;
    }

    v22 = objc_opt_respondsToSelector();
    v23 = MEMORY[0x1E696ACD0];
    if (v22)
    {
      v24 = IMExtensionPayloadUnarchivingClasses();
      v40 = 0;
      v25 = [v23 _strictlyUnarchivedObjectOfClasses:v24 fromData:data error:&v40];
      v26 = v40;

      if (IMOSLoggingEnabled())
      {
        v27 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v42 = v26;
          _os_log_impl(&dword_1A823F000, v27, OS_LOG_TYPE_INFO, "strict-decoding 006 exception/error after _strictlyUnarchivedObjectOfClasses: [%@]", buf, 0xCu);
        }
      }
    }

    else
    {
      v28 = IMExtensionPayloadUnarchivingClasses();
      v39 = 0;
      v25 = [v23 unarchivedObjectOfClasses:v28 fromData:data error:&v39];
      v26 = v39;

      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v42 = v26;
          _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "strict-decoding 006 exception/error after unarchivedObjectOfClasses: [%@]", buf, 0xCu);
        }
      }
    }

    if (v25)
    {
      v30 = [v25 objectForKeyedSubscript:*MEMORY[0x1E69A6EC0]];
      if (v30)
      {
        v12 = localizedTextForAppName();

        goto LABEL_43;
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_40;
      }

      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "IMBalloonPluginDataSource: Could not obtain value for key IMExtensionPayloadAppNameKey", buf, 2u);
      }
    }

    else
    {
      if (!IMOSLoggingEnabled())
      {
LABEL_40:

        goto LABEL_41;
      }

      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v42 = v26;
        _os_log_impl(&dword_1A823F000, v31, OS_LOG_TYPE_INFO, "IMBalloonPluginDataSource: Could not unarchive plugin payload data due to the following error:%@", buf, 0xCu);
      }
    }

    goto LABEL_40;
  }

LABEL_43:

  return v12;
}

- (id)individualPreviewSummary
{
  _summaryText = [(IMBalloonPluginDataSource *)self _summaryText];
  v4 = [(IMBalloonPluginDataSource *)self _replaceHandleWithContactNameInString:_summaryText];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  v7 = [v6 length];

  v8 = 0;
  if ([v4 length] && v7)
  {
    v8 = v4;
  }

  return v8;
}

- (id)_summaryText
{
  v19 = *MEMORY[0x1E69E9840];
  pluginPayload = [(IMBalloonPluginDataSource *)self pluginPayload];
  data = [pluginPayload data];

  if (!data)
  {
    v9 = 0;
    goto LABEL_23;
  }

  v4 = objc_opt_respondsToSelector();
  v5 = MEMORY[0x1E696ACD0];
  if (v4)
  {
    v6 = IMExtensionPayloadUnarchivingClasses();
    v16 = 0;
    v7 = &v16;
    v8 = [v5 _strictlyUnarchivedObjectOfClasses:v6 fromData:data error:&v16];
  }

  else
  {
    v6 = IMExtensionPayloadUnarchivingClasses();
    v15 = 0;
    v7 = &v15;
    v8 = [v5 unarchivedObjectOfClasses:v6 fromData:data error:&v15];
  }

  v10 = v8;
  v11 = *v7;

  if (v11 && IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v18 = v11;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "strict-decoding 020 exception/error after unarchivedObjectOfClasses: [%@]", buf, 0xCu);
    }
  }

  if (!v10)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v18 = v11;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "IMBalloonPluginDataSource: Could not unarchive plugin payload data due to the following error:%@", buf, 0xCu);
      }

      goto LABEL_20;
    }

LABEL_21:
    v9 = 0;
    goto LABEL_22;
  }

  v9 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69A6EF0]];
  if (!v9)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "IMBalloonPluginDataSource: Could not obtain value for key IMExtensionPayloadLocalizedDescriptionTextKey", buf, 2u);
      }

LABEL_20:

      goto LABEL_21;
    }

    goto LABEL_21;
  }

LABEL_22:

LABEL_23:

  return v9;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 0.0;
  v4 = 0.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)datasourceWasMovedToNewGuid:(id)guid
{
  guidCopy = guid;
  [(IMBalloonPluginDataSource *)self setMessageGUID:guidCopy];
  imMessageGUID = self->__imMessageGUID;
  self->__imMessageGUID = 0;

  [(IMPluginPayload *)self->_pluginPayload setMessageGUID:guidCopy];
}

- (void)chooseOptions
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"com.apple.messages.IMBalloonPluginDataSourceCollaborationLPTapped" object:0];
}

- (void)pluginPayloadShouldSendCopy
{
  pluginDataSourceDelegate = [(IMBalloonPluginDataSource *)self pluginDataSourceDelegate];

  if (pluginDataSourceDelegate)
  {
    pluginDataSourceDelegate2 = [(IMBalloonPluginDataSource *)self pluginDataSourceDelegate];
    [pluginDataSourceDelegate2 balloonPluginDataSource:self shouldSendAsCopy:1];
  }
}

- (void)pluginPayloadShouldSendCollaboration
{
  pluginDataSourceDelegate = [(IMBalloonPluginDataSource *)self pluginDataSourceDelegate];

  if (pluginDataSourceDelegate)
  {
    pluginDataSourceDelegate2 = [(IMBalloonPluginDataSource *)self pluginDataSourceDelegate];
    [pluginDataSourceDelegate2 balloonPluginDataSource:self shouldSendAsCopy:0];
  }
}

- (void)_dataSourceDidChange
{
  pluginDataSourceDelegate = [(IMBalloonPluginDataSource *)self pluginDataSourceDelegate];
  if (pluginDataSourceDelegate)
  {
    v4 = pluginDataSourceDelegate;
    pluginDataSourceDelegate2 = [(IMBalloonPluginDataSource *)self pluginDataSourceDelegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      pluginDataSourceDelegate3 = [(IMBalloonPluginDataSource *)self pluginDataSourceDelegate];
      [pluginDataSourceDelegate3 balloonPluginDataSourceDidChange:self];
    }
  }
}

- (BOOL)isDeferredSend
{
  imMessage = [(IMBalloonPluginDataSource *)self imMessage];
  scheduleType = [imMessage scheduleType];

  if (scheduleType == 2)
  {
    imMessage2 = [(IMBalloonPluginDataSource *)self imMessage];
    scheduleState = [imMessage2 scheduleState];

    v7 = 0x36u >> scheduleState;
    if (scheduleState > 5)
    {
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

- (id)_overrideURLForOpeningURL:(id)l
{
  lCopy = l;
  pluginPayload = [(IMBalloonPluginDataSource *)self pluginPayload];
  v6 = [IMBalloonPluginDataSource isPayloadServiceManatee:pluginPayload];

  if (v6)
  {
    pluginPayload2 = [(IMBalloonPluginDataSource *)self pluginPayload];
    v8 = [pluginPayload2 url];
    chat = [(IMBalloonPluginDataSource *)self chat];
    lastAddressedHandleID = [chat lastAddressedHandleID];
    pluginPayload3 = [(IMBalloonPluginDataSource *)self pluginPayload];
    v12 = [IMBalloonPluginDataSource URLForDugongShareURL:v8 handle:lastAddressedHandleID payload:pluginPayload3];
  }

  else
  {
    v12 = lCopy;
  }

  return v12;
}

- (id)overrideURLForOpeningURL:(id)l
{
  lCopy = l;
  v5 = [(IMBalloonPluginDataSource *)self _overrideURLForOpeningURL:lCopy];
  willOpenHandler = self->_willOpenHandler;
  if (willOpenHandler)
  {
    willOpenHandler[2]();
  }

  imMessage = [(IMBalloonPluginDataSource *)self imMessage];
  v8 = _IMShouldProcessURLForPhotosExtension();

  if (v8)
  {
    balloonBundleID = [imMessage balloonBundleID];

    if (balloonBundleID)
    {

      chat = [(IMBalloonPluginDataSource *)self chat];
      v11 = +[IMDaemonController sharedController];
      remoteDaemon = [v11 remoteDaemon];
      guid = [imMessage guid];
      guid2 = [chat guid];
      [remoteDaemon upgradeCompleteMyMomentLinkToStackWithMessageGUID:guid chatGUID:guid2];

      v5 = 0;
    }
  }

  return v5;
}

+ (BOOL)isPayloadServiceManatee:(id)manatee
{
  manateeCopy = manatee;
  containerSetupInfo = [manateeCopy containerSetupInfo];

  if (containerSetupInfo)
  {
    containerSetupInfo2 = [manateeCopy containerSetupInfo];

    containerOptions = [containerSetupInfo2 containerOptions];
    isServiceManatee = [containerOptions isServiceManatee];
  }

  else
  {
    containerSetupInfo2 = [manateeCopy url];

    containerOptions = [containerSetupInfo2 host];
    if (qword_1EB2EA170 != -1)
    {
      sub_1A84DF040();
    }

    isServiceManatee = [qword_1EB2EA168 containsObject:containerOptions];
  }

  v8 = isServiceManatee;

  return v8;
}

+ (id)URLForDugongShareURL:(id)l handle:(id)handle payload:(id)payload
{
  handleCopy = handle;
  lCopy = l;
  datasource = [payload datasource];
  richLinkMetadata = [datasource richLinkMetadata];
  v12 = [self URLForDugongShareURL:lCopy handle:handleCopy metadata:richLinkMetadata];

  return v12;
}

+ (id)URLForDugongShareURL:(id)l handle:(id)handle metadata:(id)metadata
{
  v40 = *MEMORY[0x1E69E9840];
  lCopy = l;
  handleCopy = handle;
  metadataCopy = metadata;
  specialization = [metadataCopy specialization];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    specialization2 = [metadataCopy specialization];
    v11Specialization = [specialization2 specialization];

    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v11Specialization encodedTokens], (v32 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v39 = handleCopy;
          _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Getting token for current handle:%@", buf, 0xCu);
        }
      }

      v30 = [v32 objectForKey:handleCopy];
      if (v30 || (v36[0] = MEMORY[0x1E69E9820], v36[1] = 3221225472, v36[2] = sub_1A82794D8, v36[3] = &unk_1E7810168, v37 = v32, sub_1A82794D8(v36), v30 = objc_claimAutoreleasedReturnValue(), v37, v30))
      {
        v31 = [MEMORY[0x1E696AF20] componentsWithURL:lCopy resolvingAgainstBaseURL:0];
        v13 = objc_alloc_init(MEMORY[0x1E696AF20]);
        scheme = [v31 scheme];
        [v13 setScheme:scheme];

        host = [v31 host];
        [v13 setHost:host];

        path = [v31 path];
        [v13 setPath:path];

        fragment = [v31 fragment];
        [v13 setFragment:fragment];

        uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
        v19 = [uRLQueryAllowedCharacterSet mutableCopy];

        [v19 removeCharactersInString:@"+=/"];
        v20 = [@"token" stringByAddingPercentEncodingWithAllowedCharacters:v19];
        v35 = 0;
        v21 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v30 requiringSecureCoding:1 error:&v35];
        v29 = v35;
        v22 = [v21 base64EncodedStringWithOptions:0];
        v23 = [v22 stringByAddingPercentEncodingWithAllowedCharacters:v19];
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@=%@", v20, v23];
        [v13 setQuery:v24];
        v25 = [v13 URL];
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v28 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v39 = 0;
            _os_log_impl(&dword_1A823F000, v28, OS_LOG_TYPE_INFO, "Error while decoding the handle-to-token mapping to NSDictionary: %@", buf, 0xCu);
          }
        }

        v25 = lCopy;
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v39 = lCopy;
          _os_log_impl(&dword_1A823F000, v26, OS_LOG_TYPE_INFO, "No tokenMapping data found in URL query. Returning URL: %@", buf, 0xCu);
        }
      }

      v25 = lCopy;
    }
  }

  else
  {
    v25 = lCopy;
  }

  return v25;
}

+ (id)replaceHandleWithContactNameInString:(id)string forAccount:(id)account additionalHandles:(id)handles
{
  v66 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  accountCopy = account;
  handlesCopy = handles;
  v39 = stringCopy;
  if (stringCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315906;
        v59 = "+[IMBalloonPluginDataSource replaceHandleWithContactNameInString:forAccount:additionalHandles:]";
        v60 = 2112;
        v61 = stringCopy;
        v62 = 2112;
        v63 = accountCopy;
        v64 = 2112;
        v65 = handlesCopy;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "%s string: %@, account: %@, additionalHandles: %@", buf, 0x2Au);
      }
    }

    __im_handleIdentifiers = [stringCopy __im_handleIdentifiers];
    v46 = [MEMORY[0x1E696AD60] stringWithString:stringCopy];
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v59 = __im_handleIdentifiers;
        _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Identifiers to replace: %@", buf, 0xCu);
      }
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = __im_handleIdentifiers;
    v43 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v43)
    {
      v42 = *v53;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v53 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v45 = *(*(&v52 + 1) + 8 * i);
          __im_IDForHandleIdentifierString = [v45 __im_IDForHandleIdentifierString];
          if (accountCopy)
          {
            v12 = [accountCopy existingIMHandleWithID:__im_IDForHandleIdentifierString];
            if (!v12)
            {
              if (![__im_IDForHandleIdentifierString _appearsToBeEmail] || (objc_msgSend(@"e:", "stringByAppendingString:", __im_IDForHandleIdentifierString), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(accountCopy, "existingIMHandleWithID:alreadyCanonical:", v26, 1), v12 = objc_claimAutoreleasedReturnValue(), v26, !v12))
              {
                if ([__im_IDForHandleIdentifierString _appearsToBePhoneNumber])
                {
                  v27 = [@"p:" stringByAppendingString:__im_IDForHandleIdentifierString];
                  v12 = [accountCopy existingIMHandleWithID:v27 alreadyCanonical:1];
                }

                else
                {
                  v12 = 0;
                }
              }
            }

            if (IMOSLoggingEnabled())
            {
              v13 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v59 = __im_IDForHandleIdentifierString;
                v60 = 2112;
                v61 = v12;
                _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Identifier was a uuid, identifierString %@, handle %@", buf, 0x16u);
              }
            }

            if (v12)
            {
              if ([v12 hasName])
              {
                name = [v12 name];
              }

              else
              {
                v28 = [v12 ID];
                name = [v28 _stripFZIDPrefix];
              }
            }

            else
            {
              if (IMOSLoggingEnabled())
              {
                v29 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                {
                  callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
                  *buf = 136315394;
                  v59 = "+[IMBalloonPluginDataSource replaceHandleWithContactNameInString:forAccount:additionalHandles:]";
                  v60 = 2112;
                  v61 = callStackSymbols;
                  _os_log_impl(&dword_1A823F000, v29, OS_LOG_TYPE_INFO, "%s Invalid handle, callstack: %@", buf, 0x16u);
                }
              }

              name = 0;
            }
          }

          else
          {
            v15 = +[IMHandleRegistrar sharedInstance];
            allIMHandles = [v15 allIMHandles];

            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v12 = allIMHandles;
            name = 0;
            v17 = [v12 countByEnumeratingWithState:&v48 objects:v56 count:16];
            if (v17)
            {
              v18 = *v49;
              do
              {
                for (j = 0; j != v17; ++j)
                {
                  if (*v49 != v18)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v20 = *(*(&v48 + 1) + 8 * j);
                  v21 = [v20 ID];
                  v22 = MEMORY[0x1AC56C3F0]();
                  v23 = [v22 isEqualToString:__im_IDForHandleIdentifierString];

                  if (v23)
                  {
                    if ([v20 hasName])
                    {
                      name2 = [v20 name];
                    }

                    else
                    {
                      v25 = [v20 ID];
                      name2 = [v25 _stripFZIDPrefix];

                      name = v25;
                    }

                    name = name2;
                  }
                }

                v17 = [v12 countByEnumeratingWithState:&v48 objects:v56 count:16];
              }

              while (v17);
            }
          }

          v31 = [__im_IDForHandleIdentifierString isEqualToString:kIMTranscriptPluginBreadcrumbTextSenderIdentifier];
          v32 = [__im_IDForHandleIdentifierString isEqualToString:kIMTranscriptPluginBreadcrumbTextReceiverIdentifier];
          if (![name length] && ((v31 | v32) & 1) != 0)
          {
            v33 = [handlesCopy objectForKey:__im_IDForHandleIdentifierString];

            name = v33;
          }

          if (!(([name length] != 0) | v31 & 1 | v32 & 1))
          {
            _stripFZIDPrefix = [__im_IDForHandleIdentifierString _stripFZIDPrefix];

            name = _stripFZIDPrefix;
          }

          if ([name length])
          {
            v35 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%@", name];
          }

          else
          {
            v35 = &stru_1F1B76F98;
          }

          [v46 replaceOccurrencesOfString:v45 withString:v35 options:0 range:{0, objc_msgSend(v46, "length")}];
        }

        v43 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v43);
    }

    if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v59 = "+[IMBalloonPluginDataSource replaceHandleWithContactNameInString:forAccount:additionalHandles:]";
        v60 = 2112;
        v61 = v46;
        _os_log_impl(&dword_1A823F000, v36, OS_LOG_TYPE_INFO, "%s updatedString: %@", buf, 0x16u);
      }
    }

    v37 = [v46 copy];
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

- (id)_replaceHandleWithContactNameInString:(id)string
{
  stringCopy = string;
  chat = [(IMBalloonPluginDataSource *)self chat];
  account = [chat account];
  v7 = [IMBalloonPluginDataSource replaceHandleWithContactNameInString:stringCopy forAccount:account additionalHandles:0];

  return v7;
}

- (void)beginShowingLastConsumedBreadcrumbForOutgoingPayload:(id)payload
{
  v10 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  if (!-[IMBalloonPluginDataSource isShowingLatestMessageAsBreadcrumb](self, "isShowingLatestMessageAsBreadcrumb") && [payloadCopy isUpdate])
  {
    guidOfLastMessageInSession = [(IMBalloonPluginDataSource *)self guidOfLastMessageInSession];
    v6 = [guidOfLastMessageInSession length];

    if (v6)
    {
      [(IMBalloonPluginDataSource *)self setShowingLatestMessageAsBreadcrumb:1];
      [(IMBalloonPluginDataSource *)self _reloadLatestUnconsumedBreadcrumb];
    }

    else if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "IMBalloonPluginDataSource: %@ attempted to show consumed breadcrumb before the last unconsumed breadcrumb was known.", &v8, 0xCu);
      }
    }
  }
}

- (void)endShowingLastConsumedBreadcrumb
{
  if ([(IMBalloonPluginDataSource *)self isShowingLatestMessageAsBreadcrumb])
  {
    [(IMBalloonPluginDataSource *)self setShowingLatestMessageAsBreadcrumb:0];

    [(IMBalloonPluginDataSource *)self _reloadLatestUnconsumedBreadcrumb];
  }
}

- (void)_reloadLatestUnconsumedBreadcrumb
{
  v29 = *MEMORY[0x1E69E9840];
  guidOfLastMessageInSession = [(IMBalloonPluginDataSource *)self guidOfLastMessageInSession];
  v4 = +[IMChatRegistry sharedRegistryIfAvailable];
  v5 = [v4 _cachedChatsWithMessageGUID:guidOfLastMessageInSession];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v7)
  {
    v9 = *v19;
    *&v8 = 138412802;
    v17 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 messageForGUID:{guidOfLastMessageInSession, v17, v18}];
        _imMessageItem = [v12 _imMessageItem];

        if (_imMessageItem)
        {
          [v11 _handleIncomingItem:_imMessageItem updateRecipient:0];
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_15;
          }

          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            chatIdentifier = [v11 chatIdentifier];
            *buf = v17;
            selfCopy2 = self;
            v24 = 2112;
            v25 = guidOfLastMessageInSession;
            v26 = 2112;
            v27 = chatIdentifier;
            _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "%@ refreshing most recent message guid: %@ for chat: %@ ", buf, 0x20u);
          }
        }

        else
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_15;
          }

          v14 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            chatIdentifier2 = [v11 chatIdentifier];
            *buf = v17;
            selfCopy2 = self;
            v24 = 2112;
            v25 = guidOfLastMessageInSession;
            v26 = 2112;
            v27 = chatIdentifier2;
            _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "IMBalloonPluginDataSource: %@ no message item with GUID %@ found in chat: %@", buf, 0x20u);
          }
        }

LABEL_15:
      }

      v7 = [v6 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v7);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  messageGUID = [(IMBalloonPluginDataSource *)self messageGUID];
  bundleID = [(IMBalloonPluginDataSource *)self bundleID];
  payload = [(IMBalloonPluginDataSource *)self payload];
  v8 = [payload length];
  pluginPayload = [(IMBalloonPluginDataSource *)self pluginPayload];
  attachments = [pluginPayload attachments];
  v11 = [v3 stringWithFormat:@"<%@ %p> [GUID: %@ bundleID: %@; Payload length: %lu; Num. attachments: %tu]", v4, self, messageGUID, bundleID, v8, objc_msgSend(attachments, "count")];;

  return v11;
}

- (IMBalloonPluginDataSourceDelegate)pluginDataSourceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pluginDataSourceDelegate);

  return WeakRetained;
}

@end