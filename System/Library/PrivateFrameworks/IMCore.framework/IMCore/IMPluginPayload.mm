@interface IMPluginPayload
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualAttachmentFileURLsToPluginPayload:(id)payload;
- (BOOL)isEqualToPluginPayload:(id)payload;
- (BOOL)shouldHideAttachments;
- (CKContainerSetupInfo)containerSetupInfo;
- (IMBalloonPluginDataSource)datasource;
- (IMPluginPayload)initWithCoder:(id)coder additionalAllowedClasses:(id)classes;
- (IMPluginPayload)initWithMessage:(id)message;
- (IMPluginPayload)initWithMessageItem:(id)item chatContext:(id)context;
- (NSString)pluginSessionGUID;
- (id)_transformPluginBundleIDIfNeeded:(id)needed;
- (id)copyWithZone:(_NSZone *)zone;
- (id)payloadDictionary;
- (unint64_t)hash;
- (void)acceptPurgedTransfers;
- (void)addAttachmentsFromFilePaths:(id)paths;
- (void)addAttachmentsFromFileTransferGUIDs:(id)ds;
- (void)encodeWithCoder:(id)coder;
- (void)setData:(id)data;
- (void)setPluginBundleID:(id)d;
@end

@implementation IMPluginPayload

- (IMPluginPayload)initWithMessage:(id)message
{
  _imMessageItem = [message _imMessageItem];
  v5 = [(IMPluginPayload *)self initWithMessageItem:_imMessageItem];

  return v5;
}

- (IMPluginPayload)initWithMessageItem:(id)item chatContext:(id)context
{
  v94[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  contextCopy = context;
  v91.receiver = self;
  v91.super_class = IMPluginPayload;
  v8 = [(IMPluginPayload *)&v91 init];
  if (!v8)
  {
    goto LABEL_40;
  }

  guid = [itemCopy guid];
  messageGUID = v8->_messageGUID;
  v8->_messageGUID = guid;

  time = [itemCopy time];
  time = v8->_time;
  v8->_time = time;

  pluginSessionGUID = [itemCopy pluginSessionGUID];
  pluginSessionGUID = v8->_pluginSessionGUID;
  v8->_pluginSessionGUID = pluginSessionGUID;

  balloonBundleID = [itemCopy balloonBundleID];
  v16 = [(IMPluginPayload *)v8 _transformPluginBundleIDIfNeeded:balloonBundleID];
  pluginBundleID = v8->_pluginBundleID;
  v8->_pluginBundleID = v16;

  body = [itemCopy body];
  _pluginPayloadURLFromIMMessageItemBody = [body _pluginPayloadURLFromIMMessageItemBody];
  url = v8->_url;
  v76 = v8;
  v8->_url = _pluginPayloadURLFromIMMessageItemBody;

  v81 = objc_alloc_init(MEMORY[0x1E696AD40]);
  array = [MEMORY[0x1E695DF70] array];
  v22 = [MEMORY[0x1E695DFA8] set];
  v78 = contextCopy;
  v23 = [IMMessagePartChatItem _newMessagePartsForMessageItem:itemCopy chatContext:contextCopy];
  v24 = 0x1E780D000uLL;
  v79 = itemCopy;
  if (v23)
  {
    v25 = v23;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v94[0] = v25;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:1];

      v25 = v26;
    }

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    obj = v25;
    v27 = [obj countByEnumeratingWithState:&v87 objects:v93 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v88;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v88 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v87 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            transferGUID = v31;
            subject = [transferGUID subject];
            if (!subject)
            {
              subject = [transferGUID text];
              if (!subject)
              {
                goto LABEL_18;
              }
            }

            v34 = subject;
            [v81 appendAttributedString:{subject, v76}];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }

            transferGUID = [v31 transferGUID];
            v35 = +[IMFileTransferCenter sharedInstance];
            v34 = [v35 transferForGUID:transferGUID];

            localURL = [v34 localURL];

            if (localURL)
            {
              [v22 addObject:transferGUID];
              localURL2 = [v34 localURL];
              [array addObject:localURL2];
            }
          }

LABEL_18:
        }

        v28 = [obj countByEnumeratingWithState:&v87 objects:v93 count:16];
      }

      while (v28);
    }

    itemCopy = v79;
    v24 = 0x1E780D000;
  }

  else
  {
    obj = 0;
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  fileTransferGUIDs = [itemCopy fileTransferGUIDs];
  v39 = [fileTransferGUIDs countByEnumeratingWithState:&v83 objects:v92 count:16];
  if (!v39)
  {
    goto LABEL_37;
  }

  v40 = v39;
  v41 = *v84;
  do
  {
    v42 = 0;
    v80 = v40;
    do
    {
      if (*v84 != v41)
      {
        objc_enumerationMutation(fileTransferGUIDs);
      }

      v43 = *(*(&v83 + 1) + 8 * v42);
      if (([v22 containsObject:v43] & 1) == 0)
      {
        [v22 addObject:v43];
        sharedInstance = [*(v24 + 2496) sharedInstance];
        v45 = [sharedInstance transferForGUID:v43];

        localURL3 = [v45 localURL];
        if (localURL3)
        {
          goto LABEL_33;
        }

        localPath = [v45 localPath];

        if (!localPath || (v48 = MEMORY[0x1E695DFF8], [v45 localPath], v49 = v41, v50 = fileTransferGUIDs, v51 = v22, v52 = array, v53 = v24, v54 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v48, "fileURLWithPath:", v54), v55 = objc_claimAutoreleasedReturnValue(), v54, v24 = v53, array = v52, v22 = v51, fileTransferGUIDs = v50, v41 = v49, v40 = v80, !v55))
        {
          localURL3 = [MEMORY[0x1E695DFB0] null];
LABEL_33:
          v55 = localURL3;
        }

        [array addObject:v55];
      }

      ++v42;
    }

    while (v40 != v42);
    v40 = [fileTransferGUIDs countByEnumeratingWithState:&v83 objects:v92 count:16];
  }

  while (v40);
LABEL_37:

  v8 = v77;
  objc_storeStrong(&v77->_text, v81);
  itemCopy = v79;
  breadcrumbText = [v79 breadcrumbText];
  string = [breadcrumbText string];
  breadcrumbText = v77->_breadcrumbText;
  v77->_breadcrumbText = string;

  v59 = [array copy];
  attachments = v77->_attachments;
  v77->_attachments = v59;

  payloadData = [v79 payloadData];
  _FTOptionallyDecompressData = [payloadData _FTOptionallyDecompressData];
  data = v77->_data;
  v77->_data = _FTOptionallyDecompressData;

  v77->_sticker = [v79 isSticker];
  associatedMessageType = [v79 associatedMessageType];
  v77->_customAcknowledgement = associatedMessageType == 4000;
  if (associatedMessageType == 4000)
  {
    associatedMessageGUID = [v79 associatedMessageGUID];
    associatedMessageGUID = v77->_associatedMessageGUID;
    v77->_associatedMessageGUID = associatedMessageGUID;

    pluginSessionGUID2 = [v79 pluginSessionGUID];
    v68 = v77->_pluginSessionGUID;
    v77->_pluginSessionGUID = pluginSessionGUID2;
  }

  v77->_shouldExpire = [v79 isExpirable];
  consumedSessionPayloads = [v79 consumedSessionPayloads];
  consumedSessionPayloads = v77->_consumedSessionPayloads;
  v77->_consumedSessionPayloads = consumedSessionPayloads;

  v77->_isFromMe = [v79 isFromMe];
  sender = [v79 sender];
  sender = v77->_sender;
  v77->_sender = sender;

  v77->_isPlayed = [v79 isPlayed];
  allObjects = [v22 allObjects];
  fileTransferGUIDs = v77->_fileTransferGUIDs;
  v77->_fileTransferGUIDs = allObjects;

  contextCopy = v78;
LABEL_40:

  return v8;
}

- (void)addAttachmentsFromFileTransferGUIDs:(id)ds
{
  v21 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if ([dsCopy count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = dsCopy;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * v10);
          v12 = +[IMFileTransferCenter sharedInstance];
          v13 = [v12 transferForGUID:v11];

          if (array)
          {
            localURL = [v13 localURL];

            if (localURL)
            {
              localURL2 = [v13 localURL];
              CFArrayAppendValue(array, localURL2);
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    [(IMPluginPayload *)self setAttachments:array];
    [(IMPluginPayload *)self setFileTransferGUIDs:v6];
  }
}

- (BOOL)isEqualAttachmentFileURLsToPluginPayload:(id)payload
{
  v4 = MEMORY[0x1E695DFD8];
  payloadCopy = payload;
  attachments = [(IMPluginPayload *)self attachments];
  v7 = [v4 setWithArray:attachments];

  v8 = MEMORY[0x1E695DFD8];
  attachments2 = [payloadCopy attachments];

  v10 = [v8 setWithArray:attachments2];

  LOBYTE(payloadCopy) = [v7 isEqualToSet:v10];
  return payloadCopy;
}

- (void)acceptPurgedTransfers
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_fileTransferGUIDs;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = +[IMFileTransferCenter sharedInstance];
        [v8 acceptTransfer:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)addAttachmentsFromFilePaths:(id)paths
{
  v18 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  if ([pathsCopy count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = pathsCopy;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [MEMORY[0x1E695DFF8] fileURLWithPath:{*(*(&v13 + 1) + 8 * i), v13}];
          v12 = v11;
          if (array && v11)
          {
            CFArrayAppendValue(array, v11);
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [(IMPluginPayload *)self setAttachments:array];
  }
}

- (id)_transformPluginBundleIDIfNeeded:(id)needed
{
  neededCopy = needed;
  v4 = IMBalloonExtensionIDWithSuffix();
  v5 = [neededCopy isEqualToString:v4];

  v6 = neededCopy;
  if (v5)
  {
    v6 = IMBalloonExtensionIDWithSuffix();
  }

  return v6;
}

- (void)setPluginBundleID:(id)d
{
  if (self->_pluginBundleID != d)
  {
    v5 = [(IMPluginPayload *)self _transformPluginBundleIDIfNeeded:?];
    self->_pluginBundleID = v5;

    MEMORY[0x1EEE66BB8](v5);
  }
}

- (void)setData:(id)data
{
  _FTOptionallyDecompressData = [data _FTOptionallyDecompressData];
  self->_data = _FTOptionallyDecompressData;

  MEMORY[0x1EEE66BB8](_FTOptionallyDecompressData);
}

- (NSString)pluginSessionGUID
{
  pluginSessionGUID = self->_pluginSessionGUID;
  if (!pluginSessionGUID)
  {
    pluginSessionGUID = self->_messageGUID;
  }

  v3 = pluginSessionGUID;

  return v3;
}

- (BOOL)shouldHideAttachments
{
  data = [(IMPluginPayload *)self data];
  v3 = [data length] != 0;

  return v3;
}

- (CKContainerSetupInfo)containerSetupInfo
{
  if (objc_opt_respondsToSelector())
  {
    containerSetupInfo = [(_SWCollaborationMetadata *)self->_collaborationMetadata containerSetupInfo];
  }

  else
  {
    containerSetupInfo = 0;
  }

  return containerSetupInfo;
}

- (BOOL)isEqualToPluginPayload:(id)payload
{
  payloadCopy = payload;
  text = [(IMPluginPayload *)self text];
  text2 = [payloadCopy text];
  v7 = sub_1A8280928(text, text2);

  if (!v7)
  {
    goto LABEL_44;
  }

  data = [(IMPluginPayload *)self data];
  data2 = [payloadCopy data];
  v10 = sub_1A8280998(data, data2);

  if (!v10)
  {
    goto LABEL_44;
  }

  generativePlaygroundRecipeData = [(IMPluginPayload *)self generativePlaygroundRecipeData];
  generativePlaygroundRecipeData2 = [payloadCopy generativePlaygroundRecipeData];
  v13 = sub_1A8280998(generativePlaygroundRecipeData, generativePlaygroundRecipeData2);

  if (!v13)
  {
    goto LABEL_44;
  }

  breadcrumbText = [(IMPluginPayload *)self breadcrumbText];
  breadcrumbText2 = [payloadCopy breadcrumbText];
  v16 = sub_1A8280A08(breadcrumbText, breadcrumbText2);

  if (!v16)
  {
    goto LABEL_44;
  }

  statusText = [(IMPluginPayload *)self statusText];
  statusText2 = [payloadCopy statusText];
  v19 = sub_1A8280A08(statusText, statusText2);

  if (!v19)
  {
    goto LABEL_44;
  }

  isUpdate = [(IMPluginPayload *)self isUpdate];
  if (isUpdate != [payloadCopy isUpdate])
  {
    goto LABEL_44;
  }

  v21 = [(IMPluginPayload *)self url];
  v22 = [payloadCopy url];
  v23 = sub_1A8280998(v21, v22);

  if (!v23)
  {
    goto LABEL_44;
  }

  userInfo = [(IMPluginPayload *)self userInfo];
  userInfo2 = [payloadCopy userInfo];
  v26 = sub_1A8280A78(userInfo, userInfo2);

  if (!v26)
  {
    goto LABEL_44;
  }

  messageGUID = [(IMPluginPayload *)self messageGUID];
  messageGUID2 = [payloadCopy messageGUID];
  v29 = sub_1A8280A08(messageGUID, messageGUID2);

  if (!v29)
  {
    goto LABEL_44;
  }

  associatedMessageGUID = [(IMPluginPayload *)self associatedMessageGUID];
  associatedMessageGUID2 = [payloadCopy associatedMessageGUID];
  v32 = sub_1A8280A08(associatedMessageGUID, associatedMessageGUID2);

  if (!v32)
  {
    goto LABEL_44;
  }

  pluginSessionGUID = [(IMPluginPayload *)self pluginSessionGUID];
  pluginSessionGUID2 = [payloadCopy pluginSessionGUID];
  v35 = sub_1A8280A08(pluginSessionGUID, pluginSessionGUID2);

  if (!v35)
  {
    goto LABEL_44;
  }

  pluginBundleID = [(IMPluginPayload *)self pluginBundleID];
  pluginBundleID2 = [payloadCopy pluginBundleID];
  v38 = sub_1A8280A08(pluginBundleID, pluginBundleID2);

  if (!v38)
  {
    goto LABEL_44;
  }

  attachments = [(IMPluginPayload *)self attachments];
  attachments2 = [payloadCopy attachments];
  v41 = sub_1A8280AE8(attachments, attachments2);

  if (!v41)
  {
    goto LABEL_44;
  }

  fileTransferGUIDs = [(IMPluginPayload *)self fileTransferGUIDs];
  fileTransferGUIDs2 = [payloadCopy fileTransferGUIDs];
  v44 = sub_1A8280AE8(fileTransferGUIDs, fileTransferGUIDs2);

  if (!v44)
  {
    goto LABEL_44;
  }

  isSticker = [(IMPluginPayload *)self isSticker];
  if (isSticker != [payloadCopy isSticker])
  {
    goto LABEL_44;
  }

  isCustomAcknowledgement = [(IMPluginPayload *)self isCustomAcknowledgement];
  if (isCustomAcknowledgement != [payloadCopy isCustomAcknowledgement])
  {
    goto LABEL_44;
  }

  shouldExpire = [(IMPluginPayload *)self shouldExpire];
  if (shouldExpire != [payloadCopy shouldExpire])
  {
    goto LABEL_44;
  }

  sender = [(IMPluginPayload *)self sender];
  sender2 = [payloadCopy sender];
  v50 = sub_1A8280A08(sender, sender2);

  if (!v50)
  {
    goto LABEL_44;
  }

  isFromMe = [(IMPluginPayload *)self isFromMe];
  if (isFromMe != [payloadCopy isFromMe])
  {
    goto LABEL_44;
  }

  isPlayed = [(IMPluginPayload *)self isPlayed];
  if (isPlayed != [payloadCopy isPlayed])
  {
    goto LABEL_44;
  }

  payloadCollaborationType = [(IMPluginPayload *)self payloadCollaborationType];
  if (payloadCollaborationType != [payloadCopy payloadCollaborationType])
  {
    goto LABEL_44;
  }

  sendAsCopy = [(IMPluginPayload *)self sendAsCopy];
  if (sendAsCopy != [payloadCopy sendAsCopy])
  {
    goto LABEL_44;
  }

  sendAsCopyURL = [(IMPluginPayload *)self sendAsCopyURL];
  sendAsCopyURL2 = [payloadCopy sendAsCopyURL];

  if (sendAsCopyURL != sendAsCopyURL2)
  {
    goto LABEL_44;
  }

  skipConfigurePlugin = [(IMPluginPayload *)self skipConfigurePlugin];
  if (skipConfigurePlugin != [payloadCopy skipConfigurePlugin])
  {
    goto LABEL_44;
  }

  cloudKitShare = [(IMPluginPayload *)self cloudKitShare];
  cloudKitShare2 = [payloadCopy cloudKitShare];
  v60 = sub_1A8280998(cloudKitShare, cloudKitShare2);

  if (!v60)
  {
    goto LABEL_44;
  }

  containerSetupInfo = [(IMPluginPayload *)self containerSetupInfo];
  containerSetupInfo2 = [payloadCopy containerSetupInfo];
  v63 = sub_1A8280998(containerSetupInfo, containerSetupInfo2);

  if (!v63)
  {
    goto LABEL_44;
  }

  collaborationMetadata = [(IMPluginPayload *)self collaborationMetadata];
  collaborationMetadata2 = [payloadCopy collaborationMetadata];
  v66 = sub_1A8280998(collaborationMetadata, collaborationMetadata2);

  if (!v66)
  {
    goto LABEL_44;
  }

  collaborationMetadata3 = [(IMPluginPayload *)self collaborationMetadata];
  userSelectedShareOptions = [collaborationMetadata3 userSelectedShareOptions];
  collaborationMetadata4 = [payloadCopy collaborationMetadata];
  userSelectedShareOptions2 = [collaborationMetadata4 userSelectedShareOptions];
  v71 = sub_1A8280998(userSelectedShareOptions, userSelectedShareOptions2);

  if (!v71)
  {
    goto LABEL_44;
  }

  collaborationOptionsSummary = [(IMPluginPayload *)self collaborationOptionsSummary];
  collaborationOptionsSummary2 = [payloadCopy collaborationOptionsSummary];
  v74 = sub_1A8280A08(collaborationOptionsSummary, collaborationOptionsSummary2);

  if (!v74)
  {
    goto LABEL_44;
  }

  groupActivity = [(IMPluginPayload *)self groupActivity];
  groupActivity2 = [payloadCopy groupActivity];
  v77 = sub_1A8280998(groupActivity, groupActivity2);

  if (!v77)
  {
    goto LABEL_44;
  }

  time = [(IMPluginPayload *)self time];
  time2 = [payloadCopy time];
  v80 = sub_1A8280998(time, time2);

  if (!v80)
  {
    goto LABEL_44;
  }

  consumedSessionPayloads = [(IMPluginPayload *)self consumedSessionPayloads];
  consumedSessionPayloads2 = [payloadCopy consumedSessionPayloads];
  v83 = consumedSessionPayloads;
  v84 = consumedSessionPayloads2;
  v85 = v84;
  if (v83 == v84)
  {
  }

  else
  {
    if (!v83 || !v84)
    {

LABEL_44:
      LOBYTE(v96) = 0;
      goto LABEL_45;
    }

    v86 = [v83 isEqualToArray:v84];

    if ((v86 & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  threadIdentifier = [(IMPluginPayload *)self threadIdentifier];
  threadIdentifier2 = [payloadCopy threadIdentifier];
  v89 = sub_1A8280998(threadIdentifier, threadIdentifier2);

  if (!v89)
  {
    goto LABEL_44;
  }

  dataDetectedResult = [(IMPluginPayload *)self dataDetectedResult];
  dataDetectedResult2 = [payloadCopy dataDetectedResult];
  v92 = sub_1A8280998(dataDetectedResult, dataDetectedResult2);

  if (!v92)
  {
    goto LABEL_44;
  }

  shouldHideAttachments = [(IMPluginPayload *)self shouldHideAttachments];
  if (shouldHideAttachments != [payloadCopy shouldHideAttachments])
  {
    goto LABEL_44;
  }

  supportsCollaboration = [(IMPluginPayload *)self supportsCollaboration];
  if (supportsCollaboration != [payloadCopy supportsCollaboration])
  {
    goto LABEL_44;
  }

  liveEditableInEntryView = [(IMPluginPayload *)self liveEditableInEntryView];
  v96 = liveEditableInEntryView ^ [payloadCopy liveEditableInEntryView] ^ 1;
LABEL_45:

  return v96;
}

- (unint64_t)hash
{
  pluginBundleID = [(IMPluginPayload *)self pluginBundleID];
  v4 = [pluginBundleID hash];
  data = [(IMPluginPayload *)self data];
  v6 = [data hash] + v4;
  generativePlaygroundRecipeData = [(IMPluginPayload *)self generativePlaygroundRecipeData];
  v8 = [generativePlaygroundRecipeData hash];
  v9 = [(IMPluginPayload *)self url];
  v10 = v6 + v8 + [v9 hash];
  messageGUID = [(IMPluginPayload *)self messageGUID];
  v12 = [messageGUID hash];

  return v10 + v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IMPluginPayload *)self isEqualToPluginPayload:equalCopy];
  }

  return v5;
}

- (id)payloadDictionary
{
  v17[9] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v17[0] = objc_opt_class();
  v17[1] = objc_opt_class();
  v17[2] = objc_opt_class();
  v17[3] = objc_opt_class();
  v17[4] = objc_opt_class();
  v17[5] = objc_opt_class();
  v17[6] = objc_opt_class();
  v17[7] = objc_opt_class();
  v17[8] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:9];
  v5 = [v3 setWithArray:v4];

  v6 = objc_opt_respondsToSelector();
  v7 = MEMORY[0x1E696ACD0];
  data = [(IMPluginPayload *)self data];
  if (v6)
  {
    v16 = 0;
    v9 = &v16;
    v10 = [v7 _strictlyUnarchivedObjectOfClasses:v5 fromData:data error:&v16];
  }

  else
  {
    v15 = 0;
    v9 = &v15;
    v10 = [v7 unarchivedObjectOfClasses:v5 fromData:data error:&v15];
  }

  v11 = v10;
  v12 = *v9;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  text = [(IMPluginPayload *)self text];
  [coderCopy encodeObject:text forKey:@"IMPLUGIN_TEXT_KEY"];

  data = [(IMPluginPayload *)self data];
  [coderCopy encodeObject:data forKey:@"IMPLUGIN_DATA_KEY"];

  v6 = [(IMPluginPayload *)self url];
  [coderCopy encodeObject:v6 forKey:@"IMPLUGIN_URL_KEY"];

  breadcrumbText = [(IMPluginPayload *)self breadcrumbText];
  [coderCopy encodeObject:breadcrumbText forKey:@"IMPLUGIN_BREADCRUMBTEXT_KEY"];

  statusText = [(IMPluginPayload *)self statusText];
  [coderCopy encodeObject:statusText forKey:@"IMPLUGIN_STATUSTEXT_KEY"];

  [coderCopy encodeBool:-[IMPluginPayload isUpdate](self forKey:{"isUpdate"), @"IMPLUGIN_UPDATE_KEY"}];
  userInfo = [(IMPluginPayload *)self userInfo];
  [coderCopy encodeObject:userInfo forKey:@"IMPLUGIN_USERINFO_KEY"];

  messageGUID = [(IMPluginPayload *)self messageGUID];
  [coderCopy encodeObject:messageGUID forKey:@"IMPLUGIN_MESSAGEGUID_KEY"];

  associatedMessageGUID = [(IMPluginPayload *)self associatedMessageGUID];
  [coderCopy encodeObject:associatedMessageGUID forKey:@"IMPLUGIN_ASSOCIATEDMESSAGEGUID_KEY"];

  pluginSessionGUID = [(IMPluginPayload *)self pluginSessionGUID];
  [coderCopy encodeObject:pluginSessionGUID forKey:@"IMPLUGIN_PLUGINSESSIONGUID_KEY"];

  pluginBundleID = [(IMPluginPayload *)self pluginBundleID];
  [coderCopy encodeObject:pluginBundleID forKey:@"IMPLUGIN_PLUGINBUNDLEID_KEY"];

  attachments = [(IMPluginPayload *)self attachments];
  [coderCopy encodeObject:attachments forKey:@"IMPLUGIN_ATTACHMENTS_KEY"];

  fileTransferGUIDs = [(IMPluginPayload *)self fileTransferGUIDs];
  [coderCopy encodeObject:fileTransferGUIDs forKey:@"IMPLUGIN_TRANSFERGUIDS_KEY"];

  [coderCopy encodeBool:-[IMPluginPayload shouldExpire](self forKey:{"shouldExpire"), @"IMPLUGIN_SHOULD_EXPIRE_KEY"}];
  [coderCopy encodeBool:-[IMPluginPayload isSticker](self forKey:{"isSticker"), @"IMPLUGIN_IS_STICKER_KEY"}];
  [coderCopy encodeBool:-[IMPluginPayload isCustomAcknowledgement](self forKey:{"isCustomAcknowledgement"), @"IMPLUGIN_IS_CUSTOM_ACKNOWLEDGEMENT_KEY"}];
  [coderCopy encodeBool:-[IMPluginPayload isFromMe](self forKey:{"isFromMe"), @"IMPLUGIN_IS_FROM_ME"}];
  sender = [(IMPluginPayload *)self sender];
  [coderCopy encodeObject:sender forKey:@"IMPLUGIN_SENDER"];

  cloudKitShare = [(IMPluginPayload *)self cloudKitShare];
  [coderCopy encodeObject:cloudKitShare forKey:@"IMPLUGIN_CKSHARE"];

  [coderCopy encodeBool:-[IMPluginPayload isPlayed](self forKey:{"isPlayed"), @"IMPLUGIN_IS_PLAYED"}];
  [coderCopy encodeInteger:-[IMPluginPayload payloadCollaborationType](self forKey:{"payloadCollaborationType"), @"IMPLUGIN_COLLABORATION_TYPE"}];
  collaborationMetadata = [(IMPluginPayload *)self collaborationMetadata];
  [coderCopy encodeObject:collaborationMetadata forKey:@"IMPLUGIN_PLUGIN_COLLABORATIONMETADATA_KEY"];

  collaborationOptionsSummary = [(IMPluginPayload *)self collaborationOptionsSummary];
  [coderCopy encodeObject:collaborationOptionsSummary forKey:@"IMPLUGIN_PLUGIN_COLLABORATIONOPTIONSSUMMARY_KEY"];

  [coderCopy encodeBool:-[IMPluginPayload skipConfigurePlugin](self forKey:{"skipConfigurePlugin"), @"IMPLUGIN_SKIPCONFIGURATION_KEY"}];
  sendAsCopyURL = [(IMPluginPayload *)self sendAsCopyURL];
  [coderCopy encodeObject:sendAsCopyURL forKey:@"IMPLUGIN_SENDASCOPYURL_KEY"];

  [coderCopy encodeBool:-[IMPluginPayload sendAsCopy](self forKey:{"sendAsCopy"), @"IMPLUGIN_SENDASCOPY_KEY"}];
}

- (IMPluginPayload)initWithCoder:(id)coder additionalAllowedClasses:(id)classes
{
  coderCopy = coder;
  classesCopy = classes;
  v38.receiver = self;
  v38.super_class = IMPluginPayload;
  v8 = [(IMPluginPayload *)&v38 init];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E695DFA8]);
    v10 = objc_opt_class();
    v11 = classesCopy;
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v37 = v12;
    classesCopy = v11;
    v17 = [v9 initWithObjects:{v10, v37, v13, v14, v15, v16, objc_opt_class(), 0}];
    v18 = v17;
    if (v11)
    {
      [v17 unionSet:v11];
    }

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IMPLUGIN_TEXT_KEY"];
    [(IMPluginPayload *)v8 setText:v19];

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IMPLUGIN_DATA_KEY"];
    [(IMPluginPayload *)v8 setData:v20];

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IMPLUGIN_GENERATIVE_PLAYGROUND_RECIPE_DATA_KEY"];
    [(IMPluginPayload *)v8 setGenerativePlaygroundRecipeData:v21];

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IMPLUGIN_URL_KEY"];
    [(IMPluginPayload *)v8 setUrl:v22];

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IMPLUGIN_BREADCRUMBTEXT_KEY"];
    [(IMPluginPayload *)v8 setBreadcrumbText:v23];

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IMPLUGIN_STATUSTEXT_KEY"];
    [(IMPluginPayload *)v8 setStatusText:v24];

    -[IMPluginPayload setUpdate:](v8, "setUpdate:", [coderCopy decodeBoolForKey:@"IMPLUGIN_UPDATE_KEY"]);
    v25 = [coderCopy decodeObjectOfClasses:v18 forKey:@"IMPLUGIN_USERINFO_KEY"];
    [(IMPluginPayload *)v8 setUserInfo:v25];

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IMPLUGIN_MESSAGEGUID_KEY"];
    [(IMPluginPayload *)v8 setMessageGUID:v26];

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IMPLUGIN_ASSOCIATEDMESSAGEGUID_KEY"];
    [(IMPluginPayload *)v8 setAssociatedMessageGUID:v27];

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IMPLUGIN_PLUGINSESSIONGUID_KEY"];
    [(IMPluginPayload *)v8 setPluginSessionGUID:v28];

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IMPLUGIN_PLUGINBUNDLEID_KEY"];
    [(IMPluginPayload *)v8 setPluginBundleID:v29];

    v30 = [coderCopy decodeObjectOfClasses:v18 forKey:@"IMPLUGIN_ATTACHMENTS_KEY"];
    [(IMPluginPayload *)v8 setAttachments:v30];

    v31 = [coderCopy decodeObjectOfClasses:v18 forKey:@"IMPLUGIN_TRANSFERGUIDS_KEY"];
    [(IMPluginPayload *)v8 setFileTransferGUIDs:v31];

    -[IMPluginPayload setSticker:](v8, "setSticker:", [coderCopy decodeBoolForKey:@"IMPLUGIN_IS_STICKER_KEY"]);
    -[IMPluginPayload setShouldExpire:](v8, "setShouldExpire:", [coderCopy decodeBoolForKey:@"IMPLUGIN_SHOULD_EXPIRE_KEY"]);
    -[IMPluginPayload setIsFromMe:](v8, "setIsFromMe:", [coderCopy decodeBoolForKey:@"IMPLUGIN_IS_FROM_ME"]);
    -[IMPluginPayload setCustomAcknowledgement:](v8, "setCustomAcknowledgement:", [coderCopy decodeBoolForKey:@"IMPLUGIN_IS_CUSTOM_ACKNOWLEDGEMENT_KEY"]);
    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IMPLUGIN_SENDER"];
    [(IMPluginPayload *)v8 setSender:v32];

    -[IMPluginPayload setIsPlayed:](v8, "setIsPlayed:", [coderCopy decodeBoolForKey:@"IMPLUGIN_IS_PLAYED"]);
    -[IMPluginPayload setPayloadCollaborationType:](v8, "setPayloadCollaborationType:", [coderCopy decodeIntegerForKey:@"IMPLUGIN_COLLABORATION_TYPE"]);
    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IMPLUGIN_PLUGIN_COLLABORATIONMETADATA_KEY"];
    [(IMPluginPayload *)v8 setCollaborationMetadata:v33];

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IMPLUGIN_PLUGIN_COLLABORATIONOPTIONSSUMMARY_KEY"];
    [(IMPluginPayload *)v8 setCollaborationOptionsSummary:v34];

    -[IMPluginPayload setSkipConfigurePlugin:](v8, "setSkipConfigurePlugin:", [coderCopy decodeBoolForKey:@"IMPLUGIN_SKIPCONFIGURATION_KEY"]);
    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IMPLUGIN_SENDASCOPYURL_KEY"];
    [(IMPluginPayload *)v8 setSendAsCopyURL:v35];

    -[IMPluginPayload setSendAsCopy:](v8, "setSendAsCopy:", [coderCopy decodeBoolForKey:@"IMPLUGIN_SENDASCOPY_KEY"]);
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  text = [(IMPluginPayload *)self text];
  [v4 setText:text];

  data = [(IMPluginPayload *)self data];
  [v4 setData:data];

  generativePlaygroundRecipeData = [(IMPluginPayload *)self generativePlaygroundRecipeData];
  [v4 setGenerativePlaygroundRecipeData:generativePlaygroundRecipeData];

  v8 = [(IMPluginPayload *)self url];
  [v4 setUrl:v8];

  breadcrumbText = [(IMPluginPayload *)self breadcrumbText];
  [v4 setBreadcrumbText:breadcrumbText];

  statusText = [(IMPluginPayload *)self statusText];
  [v4 setStatusText:statusText];

  [v4 setUpdate:{-[IMPluginPayload isUpdate](self, "isUpdate")}];
  userInfo = [(IMPluginPayload *)self userInfo];
  [v4 setUserInfo:userInfo];

  messageGUID = [(IMPluginPayload *)self messageGUID];
  [v4 setMessageGUID:messageGUID];

  associatedMessageGUID = [(IMPluginPayload *)self associatedMessageGUID];
  [v4 setAssociatedMessageGUID:associatedMessageGUID];

  pluginSessionGUID = [(IMPluginPayload *)self pluginSessionGUID];
  [v4 setPluginSessionGUID:pluginSessionGUID];

  pluginBundleID = [(IMPluginPayload *)self pluginBundleID];
  [v4 setPluginBundleID:pluginBundleID];

  attachments = [(IMPluginPayload *)self attachments];
  [v4 setAttachments:attachments];

  fileTransferGUIDs = [(IMPluginPayload *)self fileTransferGUIDs];
  [v4 setFileTransferGUIDs:fileTransferGUIDs];

  [v4 setShouldExpire:{-[IMPluginPayload shouldExpire](self, "shouldExpire")}];
  [v4 setSticker:{-[IMPluginPayload isSticker](self, "isSticker")}];
  [v4 setCustomAcknowledgement:{-[IMPluginPayload isCustomAcknowledgement](self, "isCustomAcknowledgement")}];
  [v4 setIsFromMe:{-[IMPluginPayload isFromMe](self, "isFromMe")}];
  sender = [(IMPluginPayload *)self sender];
  [v4 setSender:sender];

  [v4 setIsPlayed:{-[IMPluginPayload isPlayed](self, "isPlayed")}];
  datasource = [(IMPluginPayload *)self datasource];
  [v4 setDatasource:datasource];

  [v4 setPayloadCollaborationType:{-[IMPluginPayload payloadCollaborationType](self, "payloadCollaborationType")}];
  [v4 setSendAsCopy:{-[IMPluginPayload sendAsCopy](self, "sendAsCopy")}];
  [v4 setSkipConfigurePlugin:{-[IMPluginPayload skipConfigurePlugin](self, "skipConfigurePlugin")}];
  cloudKitShare = [(IMPluginPayload *)self cloudKitShare];
  [v4 setCloudKitShare:cloudKitShare];

  groupActivity = [(IMPluginPayload *)self groupActivity];
  [v4 setGroupActivity:groupActivity];

  collaborationMetadata = [(IMPluginPayload *)self collaborationMetadata];
  [v4 setCollaborationMetadata:collaborationMetadata];

  collaborationOptionsSummary = [(IMPluginPayload *)self collaborationOptionsSummary];
  [v4 setCollaborationOptionsSummary:collaborationOptionsSummary];

  sendAsCopyURL = [(IMPluginPayload *)self sendAsCopyURL];
  [v4 setSendAsCopyURL:sendAsCopyURL];

  [v4 setLiveEditableInEntryView:{-[IMPluginPayload liveEditableInEntryView](self, "liveEditableInEntryView")}];
  return v4;
}

- (IMBalloonPluginDataSource)datasource
{
  WeakRetained = objc_loadWeakRetained(&self->_datasource);

  return WeakRetained;
}

@end