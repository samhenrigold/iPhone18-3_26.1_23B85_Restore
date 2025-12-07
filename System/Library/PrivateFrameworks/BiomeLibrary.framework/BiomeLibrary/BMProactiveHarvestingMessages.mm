@interface BMProactiveHarvestingMessages
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMProactiveHarvestingMessages)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMProactiveHarvestingMessages)initWithUniqueID:(id)d domainID:(id)iD absoluteTimestamp:(id)timestamp conversationId:(id)id author:(id)author suggestedNickname:(id)nickname suggestedPhotoPath:(id)path recipients:(id)self0 attachmentURL:(id)self1 content:(id)self2 fromHandle:(id)self3 toHandles:(id)self4 accountIdentifier:(id)self5 accountType:(id)self6 accountHandles:(id)self7 attachment:(id)self8 url:(id)self9 contentProtection:(id)protection personaId:(id)personaId isNew:(id)new isTwoFactorCode:(id)code isFromMe:(id)me isGroupThread:(id)thread isJunk:(id)junk isRead:(id)read isPinned:(id)pinned isBusinessChat:(id)chat tapbackAssociatedMessageID:(id)d0 tapbackType:(id)d1 messageType:(id)d2 messagesService:(id)d3 messageEffect:(id)d4 isKnownSender:(id)d5 conversationUUID:(id)d6;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)_accountHandlesJSONArray;
- (id)_toHandlesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMProactiveHarvestingMessages

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    uniqueID = [(BMProactiveHarvestingMessages *)self uniqueID];
    uniqueID2 = [v5 uniqueID];
    v8 = uniqueID2;
    if (uniqueID == uniqueID2)
    {
    }

    else
    {
      uniqueID3 = [(BMProactiveHarvestingMessages *)self uniqueID];
      uniqueID4 = [v5 uniqueID];
      v11 = [uniqueID3 isEqual:uniqueID4];

      if (!v11)
      {
        goto LABEL_146;
      }
    }

    domainID = [(BMProactiveHarvestingMessages *)self domainID];
    domainID2 = [v5 domainID];
    v15 = domainID2;
    if (domainID == domainID2)
    {
    }

    else
    {
      domainID3 = [(BMProactiveHarvestingMessages *)self domainID];
      domainID4 = [v5 domainID];
      v18 = [domainID3 isEqual:domainID4];

      if (!v18)
      {
        goto LABEL_146;
      }
    }

    absoluteTimestamp = [(BMProactiveHarvestingMessages *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v21 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMProactiveHarvestingMessages *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v24 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v24)
      {
        goto LABEL_146;
      }
    }

    conversationId = [(BMProactiveHarvestingMessages *)self conversationId];
    conversationId2 = [v5 conversationId];
    v27 = conversationId2;
    if (conversationId == conversationId2)
    {
    }

    else
    {
      conversationId3 = [(BMProactiveHarvestingMessages *)self conversationId];
      conversationId4 = [v5 conversationId];
      v30 = [conversationId3 isEqual:conversationId4];

      if (!v30)
      {
        goto LABEL_146;
      }
    }

    author = [(BMProactiveHarvestingMessages *)self author];
    author2 = [v5 author];
    v33 = author2;
    if (author == author2)
    {
    }

    else
    {
      author3 = [(BMProactiveHarvestingMessages *)self author];
      author4 = [v5 author];
      v36 = [author3 isEqual:author4];

      if (!v36)
      {
        goto LABEL_146;
      }
    }

    suggestedNickname = [(BMProactiveHarvestingMessages *)self suggestedNickname];
    suggestedNickname2 = [v5 suggestedNickname];
    v39 = suggestedNickname2;
    if (suggestedNickname == suggestedNickname2)
    {
    }

    else
    {
      suggestedNickname3 = [(BMProactiveHarvestingMessages *)self suggestedNickname];
      suggestedNickname4 = [v5 suggestedNickname];
      v42 = [suggestedNickname3 isEqual:suggestedNickname4];

      if (!v42)
      {
        goto LABEL_146;
      }
    }

    suggestedPhotoPath = [(BMProactiveHarvestingMessages *)self suggestedPhotoPath];
    suggestedPhotoPath2 = [v5 suggestedPhotoPath];
    v45 = suggestedPhotoPath2;
    if (suggestedPhotoPath == suggestedPhotoPath2)
    {
    }

    else
    {
      suggestedPhotoPath3 = [(BMProactiveHarvestingMessages *)self suggestedPhotoPath];
      suggestedPhotoPath4 = [v5 suggestedPhotoPath];
      v48 = [suggestedPhotoPath3 isEqual:suggestedPhotoPath4];

      if (!v48)
      {
        goto LABEL_146;
      }
    }

    recipients = [(BMProactiveHarvestingMessages *)self recipients];
    recipients2 = [v5 recipients];
    v51 = recipients2;
    if (recipients == recipients2)
    {
    }

    else
    {
      recipients3 = [(BMProactiveHarvestingMessages *)self recipients];
      recipients4 = [v5 recipients];
      v54 = [recipients3 isEqual:recipients4];

      if (!v54)
      {
        goto LABEL_146;
      }
    }

    attachmentURL = [(BMProactiveHarvestingMessages *)self attachmentURL];
    attachmentURL2 = [v5 attachmentURL];
    v57 = attachmentURL2;
    if (attachmentURL == attachmentURL2)
    {
    }

    else
    {
      attachmentURL3 = [(BMProactiveHarvestingMessages *)self attachmentURL];
      attachmentURL4 = [v5 attachmentURL];
      v60 = [attachmentURL3 isEqual:attachmentURL4];

      if (!v60)
      {
        goto LABEL_146;
      }
    }

    content = [(BMProactiveHarvestingMessages *)self content];
    content2 = [v5 content];
    v63 = content2;
    if (content == content2)
    {
    }

    else
    {
      content3 = [(BMProactiveHarvestingMessages *)self content];
      content4 = [v5 content];
      v66 = [content3 isEqual:content4];

      if (!v66)
      {
        goto LABEL_146;
      }
    }

    fromHandle = [(BMProactiveHarvestingMessages *)self fromHandle];
    fromHandle2 = [v5 fromHandle];
    v69 = fromHandle2;
    if (fromHandle == fromHandle2)
    {
    }

    else
    {
      fromHandle3 = [(BMProactiveHarvestingMessages *)self fromHandle];
      fromHandle4 = [v5 fromHandle];
      v72 = [fromHandle3 isEqual:fromHandle4];

      if (!v72)
      {
        goto LABEL_146;
      }
    }

    toHandles = [(BMProactiveHarvestingMessages *)self toHandles];
    toHandles2 = [v5 toHandles];
    v75 = toHandles2;
    if (toHandles == toHandles2)
    {
    }

    else
    {
      toHandles3 = [(BMProactiveHarvestingMessages *)self toHandles];
      toHandles4 = [v5 toHandles];
      v78 = [toHandles3 isEqual:toHandles4];

      if (!v78)
      {
        goto LABEL_146;
      }
    }

    accountIdentifier = [(BMProactiveHarvestingMessages *)self accountIdentifier];
    accountIdentifier2 = [v5 accountIdentifier];
    v81 = accountIdentifier2;
    if (accountIdentifier == accountIdentifier2)
    {
    }

    else
    {
      accountIdentifier3 = [(BMProactiveHarvestingMessages *)self accountIdentifier];
      accountIdentifier4 = [v5 accountIdentifier];
      v84 = [accountIdentifier3 isEqual:accountIdentifier4];

      if (!v84)
      {
        goto LABEL_146;
      }
    }

    accountType = [(BMProactiveHarvestingMessages *)self accountType];
    accountType2 = [v5 accountType];
    v87 = accountType2;
    if (accountType == accountType2)
    {
    }

    else
    {
      accountType3 = [(BMProactiveHarvestingMessages *)self accountType];
      accountType4 = [v5 accountType];
      v90 = [accountType3 isEqual:accountType4];

      if (!v90)
      {
        goto LABEL_146;
      }
    }

    accountHandles = [(BMProactiveHarvestingMessages *)self accountHandles];
    accountHandles2 = [v5 accountHandles];
    v93 = accountHandles2;
    if (accountHandles == accountHandles2)
    {
    }

    else
    {
      accountHandles3 = [(BMProactiveHarvestingMessages *)self accountHandles];
      accountHandles4 = [v5 accountHandles];
      v96 = [accountHandles3 isEqual:accountHandles4];

      if (!v96)
      {
        goto LABEL_146;
      }
    }

    attachment = [(BMProactiveHarvestingMessages *)self attachment];
    attachment2 = [v5 attachment];
    v99 = attachment2;
    if (attachment == attachment2)
    {
    }

    else
    {
      attachment3 = [(BMProactiveHarvestingMessages *)self attachment];
      attachment4 = [v5 attachment];
      v102 = [attachment3 isEqual:attachment4];

      if (!v102)
      {
        goto LABEL_146;
      }
    }

    v103 = [(BMProactiveHarvestingMessages *)self url];
    v104 = [v5 url];
    v105 = v104;
    if (v103 == v104)
    {
    }

    else
    {
      v106 = [(BMProactiveHarvestingMessages *)self url];
      v107 = [v5 url];
      v108 = [v106 isEqual:v107];

      if (!v108)
      {
        goto LABEL_146;
      }
    }

    contentProtection = [(BMProactiveHarvestingMessages *)self contentProtection];
    contentProtection2 = [v5 contentProtection];
    v111 = contentProtection2;
    if (contentProtection == contentProtection2)
    {
    }

    else
    {
      contentProtection3 = [(BMProactiveHarvestingMessages *)self contentProtection];
      contentProtection4 = [v5 contentProtection];
      v114 = [contentProtection3 isEqual:contentProtection4];

      if (!v114)
      {
        goto LABEL_146;
      }
    }

    personaId = [(BMProactiveHarvestingMessages *)self personaId];
    personaId2 = [v5 personaId];
    v117 = personaId2;
    if (personaId == personaId2)
    {
    }

    else
    {
      personaId3 = [(BMProactiveHarvestingMessages *)self personaId];
      personaId4 = [v5 personaId];
      v120 = [personaId3 isEqual:personaId4];

      if (!v120)
      {
        goto LABEL_146;
      }
    }

    if (-[BMProactiveHarvestingMessages hasIsNew](self, "hasIsNew") || [v5 hasIsNew])
    {
      if (![(BMProactiveHarvestingMessages *)self hasIsNew])
      {
        goto LABEL_146;
      }

      if (![v5 hasIsNew])
      {
        goto LABEL_146;
      }

      isNew = [(BMProactiveHarvestingMessages *)self isNew];
      if (isNew != [v5 isNew])
      {
        goto LABEL_146;
      }
    }

    if (-[BMProactiveHarvestingMessages hasIsTwoFactorCode](self, "hasIsTwoFactorCode") || [v5 hasIsTwoFactorCode])
    {
      if (![(BMProactiveHarvestingMessages *)self hasIsTwoFactorCode])
      {
        goto LABEL_146;
      }

      if (![v5 hasIsTwoFactorCode])
      {
        goto LABEL_146;
      }

      isTwoFactorCode = [(BMProactiveHarvestingMessages *)self isTwoFactorCode];
      if (isTwoFactorCode != [v5 isTwoFactorCode])
      {
        goto LABEL_146;
      }
    }

    if (-[BMProactiveHarvestingMessages hasIsFromMe](self, "hasIsFromMe") || [v5 hasIsFromMe])
    {
      if (![(BMProactiveHarvestingMessages *)self hasIsFromMe])
      {
        goto LABEL_146;
      }

      if (![v5 hasIsFromMe])
      {
        goto LABEL_146;
      }

      isFromMe = [(BMProactiveHarvestingMessages *)self isFromMe];
      if (isFromMe != [v5 isFromMe])
      {
        goto LABEL_146;
      }
    }

    if (-[BMProactiveHarvestingMessages hasIsGroupThread](self, "hasIsGroupThread") || [v5 hasIsGroupThread])
    {
      if (![(BMProactiveHarvestingMessages *)self hasIsGroupThread])
      {
        goto LABEL_146;
      }

      if (![v5 hasIsGroupThread])
      {
        goto LABEL_146;
      }

      isGroupThread = [(BMProactiveHarvestingMessages *)self isGroupThread];
      if (isGroupThread != [v5 isGroupThread])
      {
        goto LABEL_146;
      }
    }

    if (-[BMProactiveHarvestingMessages hasIsJunk](self, "hasIsJunk") || [v5 hasIsJunk])
    {
      if (![(BMProactiveHarvestingMessages *)self hasIsJunk])
      {
        goto LABEL_146;
      }

      if (![v5 hasIsJunk])
      {
        goto LABEL_146;
      }

      isJunk = [(BMProactiveHarvestingMessages *)self isJunk];
      if (isJunk != [v5 isJunk])
      {
        goto LABEL_146;
      }
    }

    if (-[BMProactiveHarvestingMessages hasIsRead](self, "hasIsRead") || [v5 hasIsRead])
    {
      if (![(BMProactiveHarvestingMessages *)self hasIsRead])
      {
        goto LABEL_146;
      }

      if (![v5 hasIsRead])
      {
        goto LABEL_146;
      }

      isRead = [(BMProactiveHarvestingMessages *)self isRead];
      if (isRead != [v5 isRead])
      {
        goto LABEL_146;
      }
    }

    if (-[BMProactiveHarvestingMessages hasIsPinned](self, "hasIsPinned") || [v5 hasIsPinned])
    {
      if (![(BMProactiveHarvestingMessages *)self hasIsPinned])
      {
        goto LABEL_146;
      }

      if (![v5 hasIsPinned])
      {
        goto LABEL_146;
      }

      isPinned = [(BMProactiveHarvestingMessages *)self isPinned];
      if (isPinned != [v5 isPinned])
      {
        goto LABEL_146;
      }
    }

    if (-[BMProactiveHarvestingMessages hasIsBusinessChat](self, "hasIsBusinessChat") || [v5 hasIsBusinessChat])
    {
      if (![(BMProactiveHarvestingMessages *)self hasIsBusinessChat])
      {
        goto LABEL_146;
      }

      if (![v5 hasIsBusinessChat])
      {
        goto LABEL_146;
      }

      isBusinessChat = [(BMProactiveHarvestingMessages *)self isBusinessChat];
      if (isBusinessChat != [v5 isBusinessChat])
      {
        goto LABEL_146;
      }
    }

    tapbackAssociatedMessageID = [(BMProactiveHarvestingMessages *)self tapbackAssociatedMessageID];
    tapbackAssociatedMessageID2 = [v5 tapbackAssociatedMessageID];
    v131 = tapbackAssociatedMessageID2;
    if (tapbackAssociatedMessageID == tapbackAssociatedMessageID2)
    {
    }

    else
    {
      tapbackAssociatedMessageID3 = [(BMProactiveHarvestingMessages *)self tapbackAssociatedMessageID];
      tapbackAssociatedMessageID4 = [v5 tapbackAssociatedMessageID];
      v134 = [tapbackAssociatedMessageID3 isEqual:tapbackAssociatedMessageID4];

      if (!v134)
      {
        goto LABEL_146;
      }
    }

    if (-[BMProactiveHarvestingMessages hasTapbackType](self, "hasTapbackType") || [v5 hasTapbackType])
    {
      if (![(BMProactiveHarvestingMessages *)self hasTapbackType])
      {
        goto LABEL_146;
      }

      if (![v5 hasTapbackType])
      {
        goto LABEL_146;
      }

      tapbackType = [(BMProactiveHarvestingMessages *)self tapbackType];
      if (tapbackType != [v5 tapbackType])
      {
        goto LABEL_146;
      }
    }

    messageType = [(BMProactiveHarvestingMessages *)self messageType];
    messageType2 = [v5 messageType];
    v138 = messageType2;
    if (messageType == messageType2)
    {
    }

    else
    {
      messageType3 = [(BMProactiveHarvestingMessages *)self messageType];
      messageType4 = [v5 messageType];
      v141 = [messageType3 isEqual:messageType4];

      if (!v141)
      {
        goto LABEL_146;
      }
    }

    messagesService = [(BMProactiveHarvestingMessages *)self messagesService];
    messagesService2 = [v5 messagesService];
    v144 = messagesService2;
    if (messagesService == messagesService2)
    {
    }

    else
    {
      messagesService3 = [(BMProactiveHarvestingMessages *)self messagesService];
      messagesService4 = [v5 messagesService];
      v147 = [messagesService3 isEqual:messagesService4];

      if (!v147)
      {
        goto LABEL_146;
      }
    }

    if (!-[BMProactiveHarvestingMessages hasMessageEffect](self, "hasMessageEffect") && ![v5 hasMessageEffect] || -[BMProactiveHarvestingMessages hasMessageEffect](self, "hasMessageEffect") && objc_msgSend(v5, "hasMessageEffect") && (v148 = -[BMProactiveHarvestingMessages messageEffect](self, "messageEffect"), v148 == objc_msgSend(v5, "messageEffect")))
    {
      if (!-[BMProactiveHarvestingMessages hasIsKnownSender](self, "hasIsKnownSender") && ![v5 hasIsKnownSender] || -[BMProactiveHarvestingMessages hasIsKnownSender](self, "hasIsKnownSender") && objc_msgSend(v5, "hasIsKnownSender") && (v149 = -[BMProactiveHarvestingMessages isKnownSender](self, "isKnownSender"), v149 == objc_msgSend(v5, "isKnownSender")))
      {
        conversationUUID = [(BMProactiveHarvestingMessages *)self conversationUUID];
        conversationUUID2 = [v5 conversationUUID];
        if (conversationUUID == conversationUUID2)
        {
          v12 = 1;
        }

        else
        {
          conversationUUID3 = [(BMProactiveHarvestingMessages *)self conversationUUID];
          conversationUUID4 = [v5 conversationUUID];
          v12 = [conversationUUID3 isEqual:conversationUUID4];
        }

        goto LABEL_147;
      }
    }

LABEL_146:
    v12 = 0;
LABEL_147:

    goto LABEL_148;
  }

  v12 = 0;
LABEL_148:

  return v12;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v114[34] = *MEMORY[0x1E69E9840];
  uniqueID = [(BMProactiveHarvestingMessages *)self uniqueID];
  domainID = [(BMProactiveHarvestingMessages *)self domainID];
  absoluteTimestamp = [(BMProactiveHarvestingMessages *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v6 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMProactiveHarvestingMessages *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  conversationId = [(BMProactiveHarvestingMessages *)self conversationId];
  author = [(BMProactiveHarvestingMessages *)self author];
  suggestedNickname = [(BMProactiveHarvestingMessages *)self suggestedNickname];
  suggestedPhotoPath = [(BMProactiveHarvestingMessages *)self suggestedPhotoPath];
  recipients = [(BMProactiveHarvestingMessages *)self recipients];
  attachmentURL = [(BMProactiveHarvestingMessages *)self attachmentURL];
  content = [(BMProactiveHarvestingMessages *)self content];
  fromHandle = [(BMProactiveHarvestingMessages *)self fromHandle];
  jsonDictionary = [fromHandle jsonDictionary];

  _toHandlesJSONArray = [(BMProactiveHarvestingMessages *)self _toHandlesJSONArray];
  accountIdentifier = [(BMProactiveHarvestingMessages *)self accountIdentifier];
  accountType = [(BMProactiveHarvestingMessages *)self accountType];
  _accountHandlesJSONArray = [(BMProactiveHarvestingMessages *)self _accountHandlesJSONArray];
  attachment = [(BMProactiveHarvestingMessages *)self attachment];
  jsonDictionary2 = [attachment jsonDictionary];

  v103 = [(BMProactiveHarvestingMessages *)self url];
  contentProtection = [(BMProactiveHarvestingMessages *)self contentProtection];
  personaId = [(BMProactiveHarvestingMessages *)self personaId];
  if ([(BMProactiveHarvestingMessages *)self hasIsNew])
  {
    v100 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isNew](self, "isNew")}];
  }

  else
  {
    v100 = 0;
  }

  if ([(BMProactiveHarvestingMessages *)self hasIsTwoFactorCode])
  {
    v99 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isTwoFactorCode](self, "isTwoFactorCode")}];
  }

  else
  {
    v99 = 0;
  }

  if ([(BMProactiveHarvestingMessages *)self hasIsFromMe])
  {
    v98 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isFromMe](self, "isFromMe")}];
  }

  else
  {
    v98 = 0;
  }

  if ([(BMProactiveHarvestingMessages *)self hasIsGroupThread])
  {
    v97 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isGroupThread](self, "isGroupThread")}];
  }

  else
  {
    v97 = 0;
  }

  if ([(BMProactiveHarvestingMessages *)self hasIsJunk])
  {
    v96 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isJunk](self, "isJunk")}];
  }

  else
  {
    v96 = 0;
  }

  if ([(BMProactiveHarvestingMessages *)self hasIsRead])
  {
    v95 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isRead](self, "isRead")}];
  }

  else
  {
    v95 = 0;
  }

  if ([(BMProactiveHarvestingMessages *)self hasIsPinned])
  {
    v94 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isPinned](self, "isPinned")}];
  }

  else
  {
    v94 = 0;
  }

  if ([(BMProactiveHarvestingMessages *)self hasIsBusinessChat])
  {
    v93 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isBusinessChat](self, "isBusinessChat")}];
  }

  else
  {
    v93 = 0;
  }

  tapbackAssociatedMessageID = [(BMProactiveHarvestingMessages *)self tapbackAssociatedMessageID];
  if ([(BMProactiveHarvestingMessages *)self hasTapbackType])
  {
    v91 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMProactiveHarvestingMessages tapbackType](self, "tapbackType")}];
  }

  else
  {
    v91 = 0;
  }

  messageType = [(BMProactiveHarvestingMessages *)self messageType];
  messagesService = [(BMProactiveHarvestingMessages *)self messagesService];
  if ([(BMProactiveHarvestingMessages *)self hasMessageEffect])
  {
    v88 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMProactiveHarvestingMessages messageEffect](self, "messageEffect")}];
  }

  else
  {
    v88 = 0;
  }

  if ([(BMProactiveHarvestingMessages *)self hasIsKnownSender])
  {
    v87 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isKnownSender](self, "isKnownSender")}];
  }

  else
  {
    v87 = 0;
  }

  conversationUUID = [(BMProactiveHarvestingMessages *)self conversationUUID];
  v113[0] = @"uniqueID";
  null = uniqueID;
  if (!uniqueID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v76 = null;
  v114[0] = null;
  v113[1] = @"domainID";
  null2 = domainID;
  if (!domainID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v75 = null2;
  v114[1] = null2;
  v113[2] = @"absoluteTimestamp";
  null3 = v8;
  if (!v8)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v74 = null3;
  v114[2] = null3;
  v113[3] = @"conversationId";
  null4 = conversationId;
  if (!conversationId)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v73 = null4;
  v114[3] = null4;
  v113[4] = @"author";
  null5 = author;
  if (!author)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v72 = null5;
  v114[4] = null5;
  v113[5] = @"suggestedNickname";
  null6 = suggestedNickname;
  if (!suggestedNickname)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v71 = null6;
  v114[5] = null6;
  v113[6] = @"suggestedPhotoPath";
  null7 = suggestedPhotoPath;
  if (!suggestedPhotoPath)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v70 = null7;
  v114[6] = null7;
  v113[7] = @"recipients";
  null8 = recipients;
  if (!recipients)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v114[7] = null8;
  v113[8] = @"attachmentURL";
  null9 = attachmentURL;
  if (!attachmentURL)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v114[8] = null9;
  v113[9] = @"content";
  null10 = content;
  if (!content)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v68 = null10;
  v114[9] = null10;
  v113[10] = @"fromHandle";
  null11 = jsonDictionary;
  if (!jsonDictionary)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v80 = null11;
  v114[10] = null11;
  v113[11] = @"toHandles";
  null12 = _toHandlesJSONArray;
  if (!_toHandlesJSONArray)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v79 = null12;
  v114[11] = null12;
  v113[12] = @"accountIdentifier";
  null13 = accountIdentifier;
  if (!accountIdentifier)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null13;
  v114[12] = null13;
  v113[13] = @"accountType";
  null14 = accountType;
  if (!accountType)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v67 = null14;
  v114[13] = null14;
  v113[14] = @"accountHandles";
  null15 = _accountHandlesJSONArray;
  if (!_accountHandlesJSONArray)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = null15;
  v114[14] = null15;
  v113[15] = @"attachment";
  null16 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v65 = null16;
  v114[15] = null16;
  v113[16] = @"url";
  null17 = v103;
  if (!v103)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v64 = null17;
  v114[16] = null17;
  v113[17] = @"contentProtection";
  null18 = contentProtection;
  if (!contentProtection)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v63 = null18;
  v114[17] = null18;
  v113[18] = @"personaId";
  null19 = personaId;
  if (!personaId)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v62 = null19;
  v114[18] = null19;
  v113[19] = @"isNew";
  null20 = v100;
  if (!v100)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v61 = null20;
  v114[19] = null20;
  v113[20] = @"isTwoFactorCode";
  null21 = v99;
  if (!v99)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = null21;
  v114[20] = null21;
  v113[21] = @"isFromMe";
  null22 = v98;
  if (!v98)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v59 = null22;
  v114[21] = null22;
  v113[22] = @"isGroupThread";
  null23 = v97;
  if (!v97)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = null23;
  v114[22] = null23;
  v113[23] = @"isJunk";
  null24 = v96;
  if (!v96)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v57 = null24;
  v114[23] = null24;
  v113[24] = @"isRead";
  null25 = v95;
  if (!v95)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v85 = uniqueID;
  v56 = null25;
  v114[24] = null25;
  v113[25] = @"isPinned";
  null26 = v94;
  if (!v94)
  {
    null26 = [MEMORY[0x1E695DFB0] null];
  }

  v82 = author;
  v83 = conversationId;
  v84 = v8;
  v55 = null26;
  v114[25] = null26;
  v113[26] = @"isBusinessChat";
  null27 = v93;
  if (!v93)
  {
    null27 = [MEMORY[0x1E695DFB0] null];
  }

  v53 = null27;
  v114[26] = null27;
  v113[27] = @"tapbackAssociatedMessageID";
  null28 = tapbackAssociatedMessageID;
  if (!tapbackAssociatedMessageID)
  {
    null28 = [MEMORY[0x1E695DFB0] null];
  }

  v81 = domainID;
  v114[27] = null28;
  v113[28] = @"tapbackType";
  null29 = v91;
  if (!v91)
  {
    null29 = [MEMORY[0x1E695DFB0] null];
  }

  v78 = suggestedNickname;
  v114[28] = null29;
  v113[29] = @"messageType";
  null30 = messageType;
  if (!messageType)
  {
    null30 = [MEMORY[0x1E695DFB0] null];
  }

  v69 = null8;
  v114[29] = null30;
  v113[30] = @"messagesService";
  null31 = messagesService;
  if (!messagesService)
  {
    null31 = [MEMORY[0x1E695DFB0] null];
  }

  v47 = suggestedPhotoPath;
  v114[30] = null31;
  v113[31] = @"messageEffect";
  null32 = v88;
  if (!v88)
  {
    null32 = [MEMORY[0x1E695DFB0] null];
  }

  v114[31] = null32;
  v113[32] = @"isKnownSender";
  null33 = v87;
  if (!v87)
  {
    null33 = [MEMORY[0x1E695DFB0] null];
  }

  v114[32] = null33;
  v113[33] = @"conversationUUID";
  null34 = conversationUUID;
  if (!conversationUUID)
  {
    null34 = [MEMORY[0x1E695DFB0] null];
  }

  v114[33] = null34;
  v77 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v114 forKeys:v113 count:{34, v53}];
  if (!conversationUUID)
  {
  }

  v51 = v28;
  if (!v87)
  {

    v51 = v28;
  }

  if (!v88)
  {

    v51 = v28;
  }

  if (!messagesService)
  {

    v51 = v28;
  }

  if (!messageType)
  {

    v51 = v28;
  }

  if (!v91)
  {

    v51 = v28;
  }

  if (!tapbackAssociatedMessageID)
  {

    v51 = v28;
  }

  if (!v93)
  {

    v51 = v28;
  }

  if (!v94)
  {

    v51 = v28;
  }

  if (!v95)
  {

    v51 = v28;
  }

  if (!v96)
  {

    v51 = v28;
  }

  if (!v97)
  {

    v51 = v28;
  }

  if (!v98)
  {

    v51 = v28;
  }

  if (!v99)
  {

    v51 = v28;
  }

  if (!v100)
  {

    v51 = v28;
  }

  if (!personaId)
  {

    v51 = v28;
  }

  if (!contentProtection)
  {

    v51 = v28;
  }

  if (!v103)
  {

    v51 = v28;
  }

  if (!jsonDictionary2)
  {

    v51 = v28;
  }

  if (!_accountHandlesJSONArray)
  {

    v51 = v28;
  }

  if (!accountType)
  {

    v51 = v28;
  }

  if (!accountIdentifier)
  {
  }

  if (!_toHandlesJSONArray)
  {
  }

  if (!jsonDictionary)
  {
  }

  if (!content)
  {
  }

  if (!attachmentURL)
  {
  }

  if (recipients)
  {
    if (v47)
    {
      goto LABEL_159;
    }
  }

  else
  {

    if (v47)
    {
LABEL_159:
      if (v78)
      {
        goto LABEL_160;
      }

      goto LABEL_170;
    }
  }

  if (v78)
  {
LABEL_160:
    if (v82)
    {
      goto LABEL_161;
    }

    goto LABEL_171;
  }

LABEL_170:

  if (v82)
  {
LABEL_161:
    if (v83)
    {
      goto LABEL_162;
    }

    goto LABEL_172;
  }

LABEL_171:

  if (v83)
  {
LABEL_162:
    if (v84)
    {
      goto LABEL_163;
    }

    goto LABEL_173;
  }

LABEL_172:

  if (v84)
  {
LABEL_163:
    if (v81)
    {
      goto LABEL_164;
    }

LABEL_174:

    if (v85)
    {
      goto LABEL_165;
    }

    goto LABEL_175;
  }

LABEL_173:

  if (!v81)
  {
    goto LABEL_174;
  }

LABEL_164:
  if (v85)
  {
    goto LABEL_165;
  }

LABEL_175:

LABEL_165:

  return v77;
}

- (id)_accountHandlesJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  accountHandles = [(BMProactiveHarvestingMessages *)self accountHandles];
  v5 = [accountHandles countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(accountHandles);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [accountHandles countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_toHandlesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  toHandles = [(BMProactiveHarvestingMessages *)self toHandles];
  v5 = [toHandles countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(toHandles);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [toHandles countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMProactiveHarvestingMessages)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v421[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"uniqueID"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v13 = objc_alloc(MEMORY[0x1E696ABC0]);
        v14 = *MEMORY[0x1E698F240];
        v420 = *MEMORY[0x1E696A578];
        v15 = v6;
        v16 = objc_alloc(MEMORY[0x1E696AEC0]);
        v245 = objc_opt_class();
        v17 = v16;
        v6 = v15;
        v18 = [v17 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v245, @"uniqueID"];
        v421[0] = v18;
        v330 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v421 forKeys:&v420 count:1];
        v19 = [v13 initWithDomain:v14 code:2 userInfo:?];
        v331 = 0;
        v20 = 0;
        *error = v19;
        goto LABEL_375;
      }

      v331 = 0;
      v20 = 0;
      goto LABEL_376;
    }

    v331 = v6;
  }

  else
  {
    v331 = 0;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"domainID"];
  v330 = v7;
  if (v7 && (v8 = v7, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v418 = *MEMORY[0x1E696A578];
        errorCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"domainID"];
        v419 = errorCopy;
        v329 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v419 forKeys:&v418 count:1];
        v24 = [v21 initWithDomain:v22 code:2 userInfo:?];
        v18 = 0;
        v20 = 0;
        *error = v24;
        goto LABEL_374;
      }

      v18 = 0;
      v20 = 0;
      goto LABEL_375;
    }

    v327 = v8;
  }

  else
  {
    v327 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
  v329 = v9;
  if (!v9 || (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v326 = 0;
    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
    v12 = objc_alloc(MEMORY[0x1E695DF00]);
    [v11 doubleValue];
    v326 = [v12 initWithTimeIntervalSinceReferenceDate:?];
LABEL_22:

    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v25 = v10;
    v326 = [v11 dateFromString:v25];

    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    errorCopy = error;
    if (error)
    {
      v95 = objc_alloc(MEMORY[0x1E696ABC0]);
      v96 = *MEMORY[0x1E698F240];
      v416 = *MEMORY[0x1E696A578];
      v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
      v417 = v48;
      v328 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v417 forKeys:&v416 count:1];
      v97 = [v95 initWithDomain:v96 code:2 userInfo:?];
      errorCopy = 0;
      v20 = 0;
      *error = v97;
      v18 = v327;
      goto LABEL_373;
    }

    v20 = 0;
    v18 = v327;
    goto LABEL_374;
  }

  v326 = v10;
LABEL_23:
  v26 = [dictionaryCopy objectForKeyedSubscript:@"conversationId"];
  v328 = v26;
  if (v26 && (v27 = v26, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v45 = objc_alloc(MEMORY[0x1E696ABC0]);
        v46 = *MEMORY[0x1E698F240];
        v414 = *MEMORY[0x1E696A578];
        v324 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"conversationId"];
        v415 = v324;
        v325 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v415 forKeys:&v414 count:1];
        v47 = [v45 initWithDomain:v46 code:2 userInfo:?];
        v48 = 0;
        v20 = 0;
        *error = v47;
        v18 = v327;
        errorCopy = v326;
        goto LABEL_372;
      }

      v48 = 0;
      v20 = 0;
      v18 = v327;
      errorCopy = v326;
      goto LABEL_373;
    }

    v323 = v27;
  }

  else
  {
    v323 = 0;
  }

  v28 = [dictionaryCopy objectForKeyedSubscript:@"author"];
  v325 = v28;
  if (v28 && (v29 = v28, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v324 = 0;
        v20 = 0;
        v18 = v327;
        errorCopy = v326;
        v48 = v323;
        goto LABEL_372;
      }

      v49 = objc_alloc(MEMORY[0x1E696ABC0]);
      v50 = *MEMORY[0x1E698F240];
      v412 = *MEMORY[0x1E696A578];
      v320 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"author"];
      v413 = v320;
      v322 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v413 forKeys:&v412 count:1];
      v51 = [v49 initWithDomain:v50 code:2 userInfo:?];
      v324 = 0;
      v20 = 0;
      *error = v51;
      goto LABEL_114;
    }

    v324 = v29;
  }

  else
  {
    v324 = 0;
  }

  v30 = [dictionaryCopy objectForKeyedSubscript:@"suggestedNickname"];
  v322 = v30;
  if (v30)
  {
    v31 = v30;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v320 = v31;
        goto LABEL_32;
      }

      if (error)
      {
        v69 = objc_alloc(MEMORY[0x1E696ABC0]);
        v70 = *MEMORY[0x1E698F240];
        v410 = *MEMORY[0x1E696A578];
        v317 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"suggestedNickname"];
        v411 = v317;
        v318 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v411 forKeys:&v410 count:1];
        v71 = [v69 initWithDomain:v70 code:2 userInfo:?];
        v320 = 0;
        v20 = 0;
        *error = v71;
        goto LABEL_129;
      }

      v320 = 0;
      v20 = 0;
LABEL_114:
      v18 = v327;
      errorCopy = v326;
      v48 = v323;
      goto LABEL_371;
    }
  }

  v320 = 0;
LABEL_32:
  v32 = [dictionaryCopy objectForKeyedSubscript:@"suggestedPhotoPath"];
  v318 = v32;
  if (v32)
  {
    v33 = v32;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v317 = v33;
        goto LABEL_35;
      }

      if (error)
      {
        v74 = objc_alloc(MEMORY[0x1E696ABC0]);
        v75 = *MEMORY[0x1E698F240];
        v408 = *MEMORY[0x1E696A578];
        v315 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"suggestedPhotoPath"];
        v409 = v315;
        v316 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v409 forKeys:&v408 count:1];
        v76 = [v74 initWithDomain:v75 code:2 userInfo:?];
        v317 = 0;
        v20 = 0;
        *error = v76;
        goto LABEL_132;
      }

      v317 = 0;
      v20 = 0;
LABEL_129:
      v18 = v327;
      errorCopy = v326;
      v48 = v323;
      goto LABEL_370;
    }
  }

  v317 = 0;
LABEL_35:
  v34 = [dictionaryCopy objectForKeyedSubscript:@"recipients"];
  v316 = v34;
  if (v34)
  {
    v35 = v34;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v315 = v35;
        goto LABEL_38;
      }

      if (error)
      {
        v77 = objc_alloc(MEMORY[0x1E696ABC0]);
        v78 = *MEMORY[0x1E698F240];
        v406 = *MEMORY[0x1E696A578];
        v313 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"recipients"];
        v407 = v313;
        v314 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v407 forKeys:&v406 count:1];
        v79 = [v77 initWithDomain:v78 code:2 userInfo:?];
        v315 = 0;
        v20 = 0;
        *error = v79;
        goto LABEL_153;
      }

      v315 = 0;
      v20 = 0;
LABEL_132:
      v18 = v327;
      errorCopy = v326;
      v48 = v323;
      goto LABEL_369;
    }
  }

  v315 = 0;
LABEL_38:
  v36 = [dictionaryCopy objectForKeyedSubscript:@"attachmentURL"];
  v314 = v36;
  if (v36)
  {
    v37 = v36;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v313 = v37;
        goto LABEL_41;
      }

      if (error)
      {
        v80 = objc_alloc(MEMORY[0x1E696ABC0]);
        v81 = *MEMORY[0x1E698F240];
        v404 = *MEMORY[0x1E696A578];
        v311 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"attachmentURL"];
        v405 = v311;
        v312 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v405 forKeys:&v404 count:1];
        v82 = [v80 initWithDomain:v81 code:2 userInfo:?];
        v313 = 0;
        v20 = 0;
        *error = v82;
        goto LABEL_157;
      }

      v313 = 0;
      v20 = 0;
LABEL_153:
      v18 = v327;
      errorCopy = v326;
      v48 = v323;
      goto LABEL_368;
    }
  }

  v313 = 0;
LABEL_41:
  v38 = [dictionaryCopy objectForKeyedSubscript:@"content"];
  selfCopy = self;
  v312 = v38;
  if (v38)
  {
    v39 = v38;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v311 = v39;
        goto LABEL_44;
      }

      if (error)
      {
        v83 = objc_alloc(MEMORY[0x1E696ABC0]);
        v84 = *MEMORY[0x1E698F240];
        v402 = *MEMORY[0x1E696A578];
        v72 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"content"];
        v403 = v72;
        v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v403 forKeys:&v402 count:1];
        v85 = [v83 initWithDomain:v84 code:2 userInfo:v41];
        v311 = 0;
        v20 = 0;
        *error = v85;
        goto LABEL_112;
      }

      v311 = 0;
      v20 = 0;
LABEL_157:
      v18 = v327;
      errorCopy = v326;
      v48 = v323;
      goto LABEL_367;
    }
  }

  v311 = 0;
LABEL_44:
  v40 = [dictionaryCopy objectForKeyedSubscript:@"fromHandle"];
  if (!v40 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v305 = v40;
    v41 = 0;
    goto LABEL_47;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!error)
    {
      v20 = 0;
      v18 = v327;
      errorCopy = v326;
      v72 = v40;
      goto LABEL_366;
    }

    v86 = objc_alloc(MEMORY[0x1E696ABC0]);
    v87 = *MEMORY[0x1E698F240];
    v400 = *MEMORY[0x1E696A578];
    v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"fromHandle"];
    v401 = v41;
    v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v401 forKeys:&v400 count:1];
    *error = [v86 initWithDomain:v87 code:2 userInfo:v88];

    v20 = 0;
    v72 = v40;
LABEL_112:
    v18 = v327;
    errorCopy = v326;
    goto LABEL_365;
  }

  v72 = v40;
  v343 = 0;
  v41 = [[BMProactiveHarvestingNamedHandle alloc] initWithJSONDictionary:v72 error:&v343];
  v73 = v343;
  if (v73)
  {
    v18 = v327;
    errorCopy = v326;
    if (error)
    {
      v73 = v73;
      *error = v73;
    }

    v20 = 0;
    goto LABEL_365;
  }

  v305 = v40;

LABEL_47:
  v42 = [dictionaryCopy objectForKeyedSubscript:@"toHandles"];
  null = [MEMORY[0x1E695DFB0] null];
  v44 = [v42 isEqual:null];

  v306 = v6;
  v304 = v41;
  if (v44)
  {

LABEL_68:
    v52 = 0;
    goto LABEL_69;
  }

  if (!v42)
  {
    goto LABEL_68;
  }

  objc_opt_class();
  obj = v42;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v99 = objc_alloc(MEMORY[0x1E696ABC0]);
      v100 = *MEMORY[0x1E698F240];
      v398 = *MEMORY[0x1E696A578];
      v321 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"toHandles"];
      v399 = v321;
      v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v399 forKeys:&v398 count:1];
      v102 = v100;
      v103 = v101;
      v20 = 0;
      *error = [v99 initWithDomain:v102 code:2 userInfo:v101];
      v18 = v327;
      errorCopy = v326;
      goto LABEL_363;
    }

    v20 = 0;
    v18 = v327;
    errorCopy = v326;
    goto LABEL_364;
  }

  v52 = v42;
LABEL_69:
  v321 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v52, "count")}];
  v339 = 0u;
  v340 = 0u;
  v341 = 0u;
  v342 = 0u;
  obj = v52;
  v53 = [obj countByEnumeratingWithState:&v339 objects:v397 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v340;
    do
    {
      for (i = 0; i != v54; ++i)
      {
        if (*v340 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v57 = *(*(&v339 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          errorCopy3 = error;
          if (error)
          {
            v90 = objc_alloc(MEMORY[0x1E696ABC0]);
            v91 = *MEMORY[0x1E698F240];
            v395 = *MEMORY[0x1E696A578];
            v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"toHandles"];
            v396 = v58;
            v92 = MEMORY[0x1E695DF20];
            v93 = &v396;
            v94 = &v395;
            goto LABEL_121;
          }

LABEL_130:
          v20 = 0;
          v103 = obj;
          v6 = v306;
          v18 = v327;
          errorCopy = v326;
          v41 = v304;
          goto LABEL_363;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          errorCopy3 = error;
          if (!error)
          {
            goto LABEL_130;
          }

          v90 = objc_alloc(MEMORY[0x1E696ABC0]);
          v91 = *MEMORY[0x1E698F240];
          v393 = *MEMORY[0x1E696A578];
          v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"toHandles"];
          v394 = v58;
          v92 = MEMORY[0x1E695DF20];
          v93 = &v394;
          v94 = &v393;
LABEL_121:
          v65 = [v92 dictionaryWithObjects:v93 forKeys:v94 count:1];
          v20 = 0;
          *errorCopy3 = [v90 initWithDomain:v91 code:2 userInfo:v65];
LABEL_125:
          v302 = obj;
          v6 = v306;
          v18 = v327;
          errorCopy = v326;
          v41 = v304;
          goto LABEL_361;
        }

        v58 = v57;
        v59 = [BMProactiveHarvestingNamedHandle alloc];
        v338 = 0;
        v60 = [(BMProactiveHarvestingNamedHandle *)v59 initWithJSONDictionary:v58 error:&v338];
        v61 = v338;
        if (v61)
        {
          v65 = v61;
          if (error)
          {
            v98 = v61;
            *error = v65;
          }

          v20 = 0;
          goto LABEL_125;
        }

        [v321 addObject:v60];
      }

      v54 = [obj countByEnumeratingWithState:&v339 objects:v397 count:16];
    }

    while (v54);
  }

  v58 = [dictionaryCopy objectForKeyedSubscript:@"accountIdentifier"];
  if (v58 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    v6 = v306;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v103 = 0;
        v20 = 0;
        v18 = v327;
        errorCopy = v326;
        v41 = v304;
        goto LABEL_362;
      }

      v124 = objc_alloc(MEMORY[0x1E696ABC0]);
      v125 = *MEMORY[0x1E698F240];
      v391 = *MEMORY[0x1E696A578];
      v65 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"accountIdentifier"];
      v392 = v65;
      v126 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v392 forKeys:&v391 count:1];
      v127 = v124;
      v64 = v126;
      v302 = 0;
      v20 = 0;
      *error = [v127 initWithDomain:v125 code:2 userInfo:v126];
LABEL_229:
      v18 = v327;
      errorCopy = v326;
      v41 = v304;
      goto LABEL_360;
    }

    v62 = v58;
  }

  else
  {
    v62 = 0;
    v6 = v306;
  }

  v63 = [dictionaryCopy objectForKeyedSubscript:@"accountType"];
  v309 = v63;
  v302 = v62;
  if (!v63 || (v64 = v63, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v65 = 0;
    goto LABEL_85;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v128 = objc_alloc(MEMORY[0x1E696ABC0]);
      v129 = *MEMORY[0x1E698F240];
      v389 = *MEMORY[0x1E696A578];
      v303 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"accountType"];
      v390 = v303;
      v130 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v390 forKeys:&v389 count:1];
      v131 = v129;
      v64 = v309;
      v308 = v130;
      v132 = [v128 initWithDomain:v131 code:2 userInfo:?];
      v65 = 0;
      v20 = 0;
      *error = v132;
      v18 = v327;
      errorCopy = v326;
      v41 = v304;

      goto LABEL_359;
    }

    v65 = 0;
    v20 = 0;
    goto LABEL_229;
  }

  v65 = v64;
LABEL_85:
  v66 = [dictionaryCopy objectForKeyedSubscript:@"accountHandles"];
  null2 = [MEMORY[0x1E695DFB0] null];
  v68 = [v66 isEqual:null2];

  if (v68)
  {
  }

  else
  {
    v41 = v304;
    if (v66)
    {
      objc_opt_class();
      v303 = v66;
      v64 = v309;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v20 = 0;
          v18 = v327;
          errorCopy = v326;
          goto LABEL_359;
        }

        v133 = objc_alloc(MEMORY[0x1E696ABC0]);
        v134 = *MEMORY[0x1E698F240];
        v387 = *MEMORY[0x1E696A578];
        v307 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"accountHandles"];
        v388 = v307;
        v112 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v388 forKeys:&v387 count:1];
        v135 = v134;
        v64 = v309;
        v136 = [v133 initWithDomain:v135 code:2 userInfo:v112];
        v20 = 0;
        *error = v136;
LABEL_176:
        v18 = v327;
        errorCopy = v326;
        goto LABEL_357;
      }

      v104 = v66;
      goto LABEL_137;
    }
  }

  v104 = 0;
  v64 = v309;
LABEL_137:
  v307 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v104, "count")}];
  v334 = 0u;
  v335 = 0u;
  v336 = 0u;
  v337 = 0u;
  v303 = v104;
  v105 = [v303 countByEnumeratingWithState:&v334 objects:v386 count:16];
  if (!v105)
  {
    goto LABEL_146;
  }

  v106 = v105;
  v107 = *v335;
  v64 = v309;
  while (2)
  {
    for (j = 0; j != v106; ++j)
    {
      if (*v335 != v107)
      {
        objc_enumerationMutation(v303);
      }

      v109 = *(*(&v334 + 1) + 8 * j);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (error)
        {
          v115 = objc_alloc(MEMORY[0x1E696ABC0]);
          v116 = *MEMORY[0x1E698F240];
          v384 = *MEMORY[0x1E696A578];
          v301 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"accountHandles"];
          v385 = v301;
          v117 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v385 forKeys:&v384 count:1];
          v118 = v115;
          v119 = v116;
LABEL_168:
          v122 = v117;
          v18 = v327;
          errorCopy = v326;
          v20 = 0;
          *error = [v118 initWithDomain:v119 code:2 userInfo:?];
          v123 = v303;
          v6 = v306;
          v64 = v309;
          goto LABEL_356;
        }

LABEL_171:
        v20 = 0;
        v112 = v303;
        v6 = v306;
        v18 = v327;
        errorCopy = v326;
        v41 = v304;
        v64 = v309;
        goto LABEL_357;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v120 = objc_alloc(MEMORY[0x1E696ABC0]);
          v121 = *MEMORY[0x1E698F240];
          v382 = *MEMORY[0x1E696A578];
          v301 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"accountHandles"];
          v383 = v301;
          v117 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v383 forKeys:&v382 count:1];
          v118 = v120;
          v119 = v121;
          goto LABEL_168;
        }

        goto LABEL_171;
      }

      v110 = v109;
      [v307 addObject:v110];
    }

    v106 = [v303 countByEnumeratingWithState:&v334 objects:v386 count:16];
    if (v106)
    {
      continue;
    }

    break;
  }

LABEL_146:

  v111 = [dictionaryCopy objectForKeyedSubscript:@"attachment"];
  v300 = v111;
  if (!v111 || (v112 = v111, objc_opt_class(), v41 = v304, (objc_opt_isKindOfClass() & 1) != 0))
  {
    v301 = 0;
    goto LABEL_149;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = v306;
    if (error)
    {
      v299 = objc_alloc(MEMORY[0x1E696ABC0]);
      v297 = *MEMORY[0x1E698F240];
      v380 = *MEMORY[0x1E696A578];
      v168 = objc_alloc(MEMORY[0x1E696AEC0]);
      v123 = v112;
      v246 = objc_opt_class();
      v169 = v168;
      v64 = v309;
      v301 = [v169 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v246, @"attachment"];
      v381 = v301;
      v122 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v381 forKeys:&v380 count:1];
      v20 = 0;
      *error = [v299 initWithDomain:v297 code:2 userInfo:v122];
      v18 = v327;
      errorCopy = v326;
      goto LABEL_356;
    }

    v20 = 0;
    goto LABEL_176;
  }

  v137 = v112;
  v138 = [BMProactiveHarvestingContentAttachment alloc];
  v333 = 0;
  v301 = [(BMProactiveHarvestingContentAttachment *)v138 initWithJSONDictionary:v137 error:&v333];
  v139 = v333;
  v6 = v306;
  if (!v139)
  {

LABEL_149:
    v113 = [dictionaryCopy objectForKeyedSubscript:@"url"];
    v298 = v113;
    if (v113)
    {
      v114 = v113;
      objc_opt_class();
      v6 = v306;
      if (objc_opt_isKindOfClass())
      {
        v296 = 0;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v123 = v300;
            v296 = 0;
            v20 = 0;
            v18 = v327;
            errorCopy = v326;
LABEL_355:

            v122 = v296;
            goto LABEL_356;
          }

          v170 = objc_alloc(MEMORY[0x1E696ABC0]);
          v171 = *MEMORY[0x1E698F240];
          v378 = *MEMORY[0x1E696A578];
          v172 = objc_alloc(MEMORY[0x1E696AEC0]);
          v247 = objc_opt_class();
          v173 = v172;
          v64 = v309;
          v293 = [v173 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v247, @"url"];
          v379 = v293;
          v295 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v379 forKeys:&v378 count:1];
          v296 = 0;
          v20 = 0;
          *error = [v170 initWithDomain:v171 code:2 userInfo:?];
          v18 = v327;
          errorCopy = v326;
          v141 = v300;
          goto LABEL_354;
        }

        v296 = v114;
      }
    }

    else
    {
      v296 = 0;
      v6 = v306;
    }

    v140 = [dictionaryCopy objectForKeyedSubscript:@"contentProtection"];
    v141 = v300;
    v295 = v140;
    if (!v140 || (v142 = v140, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v143 = 0;
      goto LABEL_189;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v143 = v142;
LABEL_189:
      v144 = [dictionaryCopy objectForKeyedSubscript:@"personaId"];
      v293 = v143;
      if (!v144 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v288 = v144;
        v291 = 0;
        goto LABEL_192;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v288 = v144;
        v291 = v144;
LABEL_192:
        v145 = [dictionaryCopy objectForKeyedSubscript:@"isNew"];
        v290 = v145;
        if (!v145 || (v146 = v145, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v289 = 0;
          goto LABEL_195;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v289 = v146;
LABEL_195:
          v147 = [dictionaryCopy objectForKeyedSubscript:@"isTwoFactorCode"];
          v287 = v147;
          if (!v147 || (v148 = v147, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v286 = 0;
            goto LABEL_198;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v286 = v148;
LABEL_198:
            v149 = [dictionaryCopy objectForKeyedSubscript:@"isFromMe"];
            v284 = v149;
            if (!v149 || (v150 = v149, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v285 = 0;
              goto LABEL_201;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v285 = v150;
LABEL_201:
              v151 = [dictionaryCopy objectForKeyedSubscript:@"isGroupThread"];
              v282 = v151;
              if (!v151 || (v152 = v151, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v283 = 0;
                goto LABEL_204;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v283 = v152;
LABEL_204:
                v153 = [dictionaryCopy objectForKeyedSubscript:@"isJunk"];
                v280 = v153;
                if (!v153 || (v154 = v153, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v281 = 0;
                  goto LABEL_207;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v281 = v154;
LABEL_207:
                  v155 = [dictionaryCopy objectForKeyedSubscript:@"isRead"];
                  v278 = v155;
                  if (!v155 || (v156 = v155, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v279 = 0;
                    goto LABEL_210;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v279 = v156;
LABEL_210:
                    v157 = [dictionaryCopy objectForKeyedSubscript:@"isPinned"];
                    v276 = v157;
                    if (!v157 || (v158 = v157, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v277 = 0;
                      goto LABEL_213;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v277 = v158;
LABEL_213:
                      v159 = [dictionaryCopy objectForKeyedSubscript:@"isBusinessChat"];
                      v274 = v159;
                      if (!v159 || (v160 = v159, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v275 = 0;
                        goto LABEL_216;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v275 = v160;
LABEL_216:
                        v161 = [dictionaryCopy objectForKeyedSubscript:@"tapbackAssociatedMessageID"];
                        v272 = v161;
                        if (!v161 || (v162 = v161, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v273 = 0;
                          goto LABEL_219;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v273 = v162;
LABEL_219:
                          v163 = [dictionaryCopy objectForKeyedSubscript:@"tapbackType"];
                          v270 = v163;
                          if (!v163 || (v164 = v163, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v271 = 0;
                            goto LABEL_222;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v271 = v164;
LABEL_222:
                            v165 = [dictionaryCopy objectForKeyedSubscript:@"messageType"];
                            v268 = v165;
                            if (!v165 || (v166 = v165, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v269 = 0;
LABEL_225:
                              v167 = [dictionaryCopy objectForKeyedSubscript:@"messagesService"];
                              v266 = v167;
                              if (!v167)
                              {
                                goto LABEL_290;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v167 = 0;
                                goto LABEL_290;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v167 = v167;
LABEL_290:
                                v264 = [dictionaryCopy objectForKeyedSubscript:@"messageEffect"];
                                v265 = v167;
                                if (!v264 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v267 = 0;
                                  goto LABEL_293;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v267 = v264;
LABEL_293:
                                  v262 = [dictionaryCopy objectForKeyedSubscript:@"isKnownSender"];
                                  if (!v262 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v263 = 0;
LABEL_296:
                                    v216 = [dictionaryCopy objectForKeyedSubscript:@"conversationUUID"];
                                    v261 = v216;
                                    if (!v216)
                                    {
LABEL_317:
                                      v18 = v327;
                                      errorCopy = v326;
                                      v260 = v216;
                                      v20 = [(BMProactiveHarvestingMessages *)selfCopy initWithUniqueID:v331 domainID:v327 absoluteTimestamp:v326 conversationId:v323 author:v324 suggestedNickname:v320 suggestedPhotoPath:v317 recipients:v315 attachmentURL:v313 content:v311 fromHandle:v304 toHandles:v321 accountIdentifier:v302 accountType:v65 accountHandles:v307 attachment:v301 url:v296 contentProtection:v143 personaId:v291 isNew:v289 isTwoFactorCode:v286 isFromMe:v285 isGroupThread:v283 isJunk:v281 isRead:v279 isPinned:v277 isBusinessChat:v275 tapbackAssociatedMessageID:v273 tapbackType:v271 messageType:v269 messagesService:v167 messageEffect:v267 isKnownSender:v263 conversationUUID:v216];
                                      selfCopy = v20;
LABEL_338:
                                      v141 = v300;

                                      v144 = v288;
LABEL_339:

LABEL_340:
LABEL_341:

LABEL_342:
LABEL_343:

                                      goto LABEL_344;
                                    }

                                    v217 = v216;
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v216 = 0;
                                      goto LABEL_317;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v216 = v217;
                                      goto LABEL_317;
                                    }

                                    if (error)
                                    {
                                      v240 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v241 = *MEMORY[0x1E698F240];
                                      v344 = *MEMORY[0x1E696A578];
                                      v242 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"conversationUUID"];
                                      v345 = v242;
                                      v243 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v345 forKeys:&v344 count:1];
                                      *error = [v240 initWithDomain:v241 code:2 userInfo:v243];
                                    }

                                    v260 = 0;
                                    v20 = 0;
LABEL_337:
                                    v18 = v327;
                                    errorCopy = v326;
                                    v64 = v309;
                                    goto LABEL_338;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v263 = v262;
                                    goto LABEL_296;
                                  }

                                  if (error)
                                  {
                                    v237 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v238 = *MEMORY[0x1E698F240];
                                    v346 = *MEMORY[0x1E696A578];
                                    v260 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isKnownSender"];
                                    v347 = v260;
                                    v261 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v347 forKeys:&v346 count:1];
                                    v239 = [v237 initWithDomain:v238 code:2 userInfo:?];
                                    v263 = 0;
                                    v20 = 0;
                                    *error = v239;
                                    goto LABEL_337;
                                  }

                                  v263 = 0;
                                  v20 = 0;
LABEL_386:
                                  v18 = v327;
                                  errorCopy = v326;
                                  v64 = v309;
                                  v144 = v288;
                                  v141 = v300;
                                  goto LABEL_339;
                                }

                                if (error)
                                {
                                  v234 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v235 = *MEMORY[0x1E698F240];
                                  v348 = *MEMORY[0x1E696A578];
                                  v263 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"messageEffect"];
                                  v349 = v263;
                                  v262 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v349 forKeys:&v348 count:1];
                                  v236 = [v234 initWithDomain:v235 code:2 userInfo:?];
                                  v267 = 0;
                                  v20 = 0;
                                  *error = v236;
                                  goto LABEL_386;
                                }

                                v267 = 0;
                                v20 = 0;
LABEL_384:
                                v18 = v327;
                                errorCopy = v326;
                                v64 = v309;
                                v144 = v288;
                                v141 = v300;
                                goto LABEL_340;
                              }

                              if (error)
                              {
                                v232 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v233 = *MEMORY[0x1E698F240];
                                v350 = *MEMORY[0x1E696A578];
                                v267 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"messagesService"];
                                v351 = v267;
                                v264 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v351 forKeys:&v350 count:1];
                                v265 = 0;
                                v20 = 0;
                                *error = [v232 initWithDomain:v233 code:2 userInfo:?];
                                goto LABEL_384;
                              }

                              v265 = 0;
                              v20 = 0;
LABEL_382:
                              v18 = v327;
                              errorCopy = v326;
                              v64 = v309;
                              v144 = v288;
                              v141 = v300;
                              goto LABEL_341;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v269 = v166;
                              goto LABEL_225;
                            }

                            if (error)
                            {
                              v230 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v231 = *MEMORY[0x1E698F240];
                              v352 = *MEMORY[0x1E696A578];
                              v265 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"messageType"];
                              v353 = v265;
                              v266 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v353 forKeys:&v352 count:1];
                              v269 = 0;
                              v20 = 0;
                              *error = [v230 initWithDomain:v231 code:2 userInfo:?];
                              goto LABEL_382;
                            }

                            v269 = 0;
                            v20 = 0;
                            v18 = v327;
                            errorCopy = v326;
                            v64 = v309;
LABEL_380:
                            v144 = v288;
                            v141 = v300;
                            goto LABEL_342;
                          }

                          if (error)
                          {
                            v226 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v227 = *MEMORY[0x1E698F240];
                            v354 = *MEMORY[0x1E696A578];
                            v228 = objc_alloc(MEMORY[0x1E696AEC0]);
                            v259 = objc_opt_class();
                            v229 = v228;
                            v64 = v309;
                            v269 = [v229 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v259, @"tapbackType"];
                            v355 = v269;
                            v268 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v355 forKeys:&v354 count:1];
                            v271 = 0;
                            v20 = 0;
                            *error = [v226 initWithDomain:v227 code:2 userInfo:?];
                            v18 = v327;
                            errorCopy = v326;
                            goto LABEL_380;
                          }

                          v271 = 0;
                          v20 = 0;
LABEL_378:
                          v18 = v327;
                          errorCopy = v326;
                          v144 = v288;
                          v141 = v300;
                          goto LABEL_343;
                        }

                        if (error)
                        {
                          v222 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v223 = *MEMORY[0x1E698F240];
                          v356 = *MEMORY[0x1E696A578];
                          v224 = objc_alloc(MEMORY[0x1E696AEC0]);
                          v258 = objc_opt_class();
                          v225 = v224;
                          v64 = v309;
                          v271 = [v225 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v258, @"tapbackAssociatedMessageID"];
                          v357 = v271;
                          v270 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v357 forKeys:&v356 count:1];
                          v273 = 0;
                          v20 = 0;
                          *error = [v222 initWithDomain:v223 code:2 userInfo:?];
                          goto LABEL_378;
                        }

                        v273 = 0;
                        v20 = 0;
LABEL_333:
                        v18 = v327;
                        errorCopy = v326;
                        v144 = v288;
                        v141 = v300;
LABEL_344:

                        goto LABEL_345;
                      }

                      if (error)
                      {
                        v218 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v219 = *MEMORY[0x1E698F240];
                        v358 = *MEMORY[0x1E696A578];
                        v220 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v257 = objc_opt_class();
                        v221 = v220;
                        v64 = v309;
                        v273 = [v221 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v257, @"isBusinessChat"];
                        v359 = v273;
                        v272 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v359 forKeys:&v358 count:1];
                        v275 = 0;
                        v20 = 0;
                        *error = [v218 initWithDomain:v219 code:2 userInfo:?];
                        goto LABEL_333;
                      }

                      v275 = 0;
                      v20 = 0;
LABEL_329:
                      v18 = v327;
                      errorCopy = v326;
                      v144 = v288;
                      v141 = v300;
LABEL_345:

                      goto LABEL_346;
                    }

                    if (error)
                    {
                      v212 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v213 = *MEMORY[0x1E698F240];
                      v360 = *MEMORY[0x1E696A578];
                      v214 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v256 = objc_opt_class();
                      v215 = v214;
                      v64 = v309;
                      v275 = [v215 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v256, @"isPinned"];
                      v361 = v275;
                      v274 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v361 forKeys:&v360 count:1];
                      v277 = 0;
                      v20 = 0;
                      *error = [v212 initWithDomain:v213 code:2 userInfo:?];
                      goto LABEL_329;
                    }

                    v277 = 0;
                    v20 = 0;
LABEL_325:
                    v18 = v327;
                    errorCopy = v326;
                    v144 = v288;
                    v141 = v300;
LABEL_346:

                    v207 = v278;
                    goto LABEL_347;
                  }

                  if (error)
                  {
                    v208 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v209 = *MEMORY[0x1E698F240];
                    v362 = *MEMORY[0x1E696A578];
                    v210 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v255 = objc_opt_class();
                    v211 = v210;
                    v64 = v309;
                    v277 = [v211 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v255, @"isRead"];
                    v363 = v277;
                    v276 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v363 forKeys:&v362 count:1];
                    v279 = 0;
                    v20 = 0;
                    *error = [v208 initWithDomain:v209 code:2 userInfo:?];
                    goto LABEL_325;
                  }

                  v279 = 0;
                  v20 = 0;
                  v18 = v327;
                  errorCopy = v326;
                  v144 = v288;
                  v207 = v278;
LABEL_321:
                  v141 = v300;
LABEL_347:

                  v201 = v280;
                  goto LABEL_348;
                }

                if (error)
                {
                  v202 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v203 = *MEMORY[0x1E698F240];
                  v364 = *MEMORY[0x1E696A578];
                  v204 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v254 = objc_opt_class();
                  v205 = v204;
                  v64 = v309;
                  v279 = [v205 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v254, @"isJunk"];
                  v365 = v279;
                  v206 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v365 forKeys:&v364 count:1];
                  v281 = 0;
                  v20 = 0;
                  *error = [v202 initWithDomain:v203 code:2 userInfo:v206];
                  v207 = v206;
                  v18 = v327;
                  errorCopy = v326;
                  v144 = v288;
                  goto LABEL_321;
                }

                v281 = 0;
                v20 = 0;
                v18 = v327;
                errorCopy = v326;
                v144 = v288;
                v201 = v280;
LABEL_314:
                v141 = v300;
LABEL_348:

                v195 = v282;
                goto LABEL_349;
              }

              if (error)
              {
                v196 = objc_alloc(MEMORY[0x1E696ABC0]);
                v197 = *MEMORY[0x1E698F240];
                v366 = *MEMORY[0x1E696A578];
                v198 = objc_alloc(MEMORY[0x1E696AEC0]);
                v253 = objc_opt_class();
                v199 = v198;
                v64 = v309;
                v281 = [v199 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v253, @"isGroupThread"];
                v367 = v281;
                v200 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v367 forKeys:&v366 count:1];
                v283 = 0;
                v20 = 0;
                *error = [v196 initWithDomain:v197 code:2 userInfo:v200];
                v201 = v200;
                v18 = v327;
                errorCopy = v326;
                v144 = v288;
                goto LABEL_314;
              }

              v283 = 0;
              v20 = 0;
              v18 = v327;
              errorCopy = v326;
              v144 = v288;
              v195 = v282;
LABEL_308:
              v141 = v300;
LABEL_349:

              goto LABEL_350;
            }

            if (error)
            {
              v190 = objc_alloc(MEMORY[0x1E696ABC0]);
              v191 = *MEMORY[0x1E698F240];
              v368 = *MEMORY[0x1E696A578];
              v192 = objc_alloc(MEMORY[0x1E696AEC0]);
              v252 = objc_opt_class();
              v193 = v192;
              v64 = v309;
              v283 = [v193 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v252, @"isFromMe"];
              v369 = v283;
              v194 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v369 forKeys:&v368 count:1];
              v285 = 0;
              v20 = 0;
              *error = [v190 initWithDomain:v191 code:2 userInfo:v194];
              v195 = v194;
              v18 = v327;
              errorCopy = v326;
              v144 = v288;
              goto LABEL_308;
            }

            v285 = 0;
            v20 = 0;
LABEL_302:
            v18 = v327;
            errorCopy = v326;
            v144 = v288;
            v141 = v300;
LABEL_350:

            goto LABEL_351;
          }

          if (error)
          {
            v186 = objc_alloc(MEMORY[0x1E696ABC0]);
            v187 = *MEMORY[0x1E698F240];
            v370 = *MEMORY[0x1E696A578];
            v188 = objc_alloc(MEMORY[0x1E696AEC0]);
            v251 = objc_opt_class();
            v189 = v188;
            v64 = v309;
            v285 = [v189 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v251, @"isTwoFactorCode"];
            v371 = v285;
            v284 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v371 forKeys:&v370 count:1];
            v286 = 0;
            v20 = 0;
            *error = [v186 initWithDomain:v187 code:2 userInfo:?];
            goto LABEL_302;
          }

          v286 = 0;
          v20 = 0;
LABEL_287:
          v18 = v327;
          errorCopy = v326;
          v144 = v288;
          v141 = v300;
LABEL_351:

          goto LABEL_352;
        }

        if (error)
        {
          v182 = objc_alloc(MEMORY[0x1E696ABC0]);
          v183 = *MEMORY[0x1E698F240];
          v372 = *MEMORY[0x1E696A578];
          v184 = objc_alloc(MEMORY[0x1E696AEC0]);
          v250 = objc_opt_class();
          v185 = v184;
          v64 = v309;
          v286 = [v185 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v250, @"isNew"];
          v373 = v286;
          v287 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v373 forKeys:&v372 count:1];
          v289 = 0;
          v20 = 0;
          *error = [v182 initWithDomain:v183 code:2 userInfo:?];
          goto LABEL_287;
        }

        v289 = 0;
        v20 = 0;
        v18 = v327;
        errorCopy = v326;
        v144 = v288;
LABEL_281:
        v141 = v300;
LABEL_352:

        goto LABEL_353;
      }

      if (error)
      {
        v178 = objc_alloc(MEMORY[0x1E696ABC0]);
        v292 = *MEMORY[0x1E698F240];
        v374 = *MEMORY[0x1E696A578];
        v179 = objc_alloc(MEMORY[0x1E696AEC0]);
        v249 = objc_opt_class();
        v180 = v179;
        v64 = v309;
        v289 = [v180 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v249, @"personaId"];
        v375 = v289;
        v290 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v375 forKeys:&v374 count:1];
        v181 = [v178 initWithDomain:v292 code:2 userInfo:?];
        v291 = 0;
        v20 = 0;
        *error = v181;
        v18 = v327;
        errorCopy = v326;
        goto LABEL_281;
      }

      v291 = 0;
      v20 = 0;
      v18 = v327;
      errorCopy = v326;
      v141 = v300;
LABEL_353:

      goto LABEL_354;
    }

    if (error)
    {
      v294 = objc_alloc(MEMORY[0x1E696ABC0]);
      v174 = *MEMORY[0x1E698F240];
      v376 = *MEMORY[0x1E696A578];
      v175 = objc_alloc(MEMORY[0x1E696AEC0]);
      v248 = objc_opt_class();
      v176 = v175;
      v64 = v309;
      v291 = [v176 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v248, @"contentProtection"];
      v377 = v291;
      v144 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v377 forKeys:&v376 count:1];
      v177 = [v294 initWithDomain:v174 code:2 userInfo:v144];
      v293 = 0;
      v20 = 0;
      *error = v177;
      v18 = v327;
      errorCopy = v326;
      goto LABEL_353;
    }

    v293 = 0;
    v20 = 0;
    v18 = v327;
    errorCopy = v326;
LABEL_354:
    v123 = v141;

    goto LABEL_355;
  }

  v122 = v137;
  v18 = v327;
  errorCopy = v326;
  if (error)
  {
    v139 = v139;
    *error = v139;
  }

  v20 = 0;
  v123 = v122;
LABEL_356:

  v112 = v123;
  v41 = v304;
LABEL_357:

LABEL_359:
LABEL_360:

LABEL_361:
  v103 = v302;
LABEL_362:

LABEL_363:
LABEL_364:
  v72 = v305;

LABEL_365:
LABEL_366:

  v48 = v323;
  self = selfCopy;
LABEL_367:

LABEL_368:
LABEL_369:

LABEL_370:
LABEL_371:

LABEL_372:
LABEL_373:

LABEL_374:
LABEL_375:

LABEL_376:
  return v20;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMProactiveHarvestingMessages *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v27 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_uniqueID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_domainID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_absoluteTimestamp)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_conversationId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_author)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_suggestedNickname)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_suggestedPhotoPath)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_recipients)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_attachmentURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_content)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fromHandle)
  {
    v24 = 0;
    PBDataWriterPlaceMark();
    [(BMProactiveHarvestingNamedHandle *)self->_fromHandle writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_toHandles;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        v24 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v7);
  }

  if (self->_accountIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_accountType)
  {
    PBDataWriterWriteStringField();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = self->_accountHandles;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteStringField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v25 count:16];
    }

    while (v13);
  }

  if (self->_attachment)
  {
    v24 = 0;
    PBDataWriterPlaceMark();
    [(BMProactiveHarvestingContentAttachment *)self->_attachment writeTo:toCopy, v16];
    PBDataWriterRecallMark();
  }

  if (self->_url)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contentProtection)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_personaId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIsNew)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsTwoFactorCode)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsFromMe)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsGroupThread)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsJunk)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsRead)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsPinned)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsBusinessChat)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_tapbackAssociatedMessageID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasTapbackType)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_messageType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_messagesService)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasMessageEffect)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasIsKnownSender)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_conversationUUID)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v107.receiver = self;
  v107.super_class = BMProactiveHarvestingMessages;
  v5 = [(BMEventBase *)&v107 init];
  if (!v5)
  {
    goto LABEL_186;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  while (1)
  {
    position = [fromCopy position];
    if (position >= [fromCopy length] || (objc_msgSend(fromCopy, "hasError") & 1) != 0)
    {
      break;
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      LOBYTE(v108) = 0;
      v12 = [fromCopy position] + 1;
      if (v12 >= [fromCopy position] && (v13 = objc_msgSend(fromCopy, "position") + 1, v13 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v11 |= (LOBYTE(v108) & 0x7F) << v9;
      if ((LOBYTE(v108) & 0x80) == 0)
      {
        break;
      }

      v9 += 7;
      v15 = v10++ >= 9;
      if (v15)
      {
        v16 = 0;
        goto LABEL_17;
      }
    }

    v16 = [fromCopy hasError] ? 0 : v11;
LABEL_17:
    if (([fromCopy hasError] & 1) != 0 || (v16 & 7) == 4)
    {
      break;
    }

    switch((v16 >> 3))
    {
      case 1u:
        v17 = PBReaderReadString();
        v18 = 64;
        goto LABEL_143;
      case 2u:
        v17 = PBReaderReadString();
        v18 = 72;
        goto LABEL_143;
      case 3u:
        v5->_hasRaw_absoluteTimestamp = 1;
        v108 = 0.0;
        v36 = [fromCopy position] + 8;
        if (v36 >= [fromCopy position] && (v37 = objc_msgSend(fromCopy, "position") + 8, v37 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_raw_absoluteTimestamp = v108;
        continue;
      case 4u:
        v17 = PBReaderReadString();
        v18 = 80;
        goto LABEL_143;
      case 5u:
        v17 = PBReaderReadString();
        v18 = 88;
        goto LABEL_143;
      case 6u:
        v17 = PBReaderReadString();
        v18 = 96;
        goto LABEL_143;
      case 7u:
        v17 = PBReaderReadString();
        v18 = 104;
        goto LABEL_143;
      case 8u:
        v17 = PBReaderReadString();
        v18 = 112;
        goto LABEL_143;
      case 9u:
        v17 = PBReaderReadString();
        v18 = 120;
        goto LABEL_143;
      case 0xAu:
        v17 = PBReaderReadString();
        v18 = 128;
        goto LABEL_143;
      case 0xBu:
        v108 = 0.0;
        v109 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_188;
        }

        v38 = [[BMProactiveHarvestingNamedHandle alloc] initByReadFrom:fromCopy];
        if (!v38)
        {
          goto LABEL_188;
        }

        v39 = 136;
        goto LABEL_94;
      case 0xCu:
        v108 = 0.0;
        v109 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_188;
        }

        v21 = [[BMProactiveHarvestingNamedHandle alloc] initByReadFrom:fromCopy];
        if (!v21)
        {
          goto LABEL_188;
        }

        v22 = v21;
        [v6 addObject:v21];
        PBReaderRecallMark();

        continue;
      case 0xDu:
        v17 = PBReaderReadString();
        v18 = 152;
        goto LABEL_143;
      case 0xEu:
        v17 = PBReaderReadString();
        v18 = 160;
        goto LABEL_143;
      case 0xFu:
        v19 = PBReaderReadString();
        if (!v19)
        {
          goto LABEL_188;
        }

        v20 = v19;
        [v7 addObject:v19];

        continue;
      case 0x10u:
        v108 = 0.0;
        v109 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_188;
        }

        v38 = [[BMProactiveHarvestingContentAttachment alloc] initByReadFrom:fromCopy];
        if (!v38)
        {
          goto LABEL_188;
        }

        v39 = 176;
LABEL_94:
        v59 = *(&v5->super.super.isa + v39);
        *(&v5->super.super.isa + v39) = v38;

        PBReaderRecallMark();
        continue;
      case 0x11u:
        v17 = PBReaderReadString();
        v18 = 184;
        goto LABEL_143;
      case 0x12u:
        v17 = PBReaderReadString();
        v18 = 192;
        goto LABEL_143;
      case 0x13u:
        v17 = PBReaderReadString();
        v18 = 200;
        goto LABEL_143;
      case 0x14u:
        v72 = 0;
        v73 = 0;
        v74 = 0;
        v5->_hasIsNew = 1;
        while (1)
        {
          LOBYTE(v108) = 0;
          v75 = [fromCopy position] + 1;
          if (v75 >= [fromCopy position] && (v76 = objc_msgSend(fromCopy, "position") + 1, v76 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v74 |= (LOBYTE(v108) & 0x7F) << v72;
          if ((LOBYTE(v108) & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v15 = v73++ >= 9;
          if (v15)
          {
            LOBYTE(v29) = 0;
            goto LABEL_172;
          }
        }

        v29 = (v74 != 0) & ~[fromCopy hasError];
LABEL_172:
        v98 = 32;
        goto LABEL_181;
      case 0x15u:
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v5->_hasIsTwoFactorCode = 1;
        while (1)
        {
          LOBYTE(v108) = 0;
          v50 = [fromCopy position] + 1;
          if (v50 >= [fromCopy position] && (v51 = objc_msgSend(fromCopy, "position") + 1, v51 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v49 |= (LOBYTE(v108) & 0x7F) << v47;
          if ((LOBYTE(v108) & 0x80) == 0)
          {
            break;
          }

          v47 += 7;
          v15 = v48++ >= 9;
          if (v15)
          {
            LOBYTE(v29) = 0;
            goto LABEL_164;
          }
        }

        v29 = (v49 != 0) & ~[fromCopy hasError];
LABEL_164:
        v98 = 34;
        goto LABEL_181;
      case 0x16u:
        v53 = 0;
        v54 = 0;
        v55 = 0;
        v5->_hasIsFromMe = 1;
        while (1)
        {
          LOBYTE(v108) = 0;
          v56 = [fromCopy position] + 1;
          if (v56 >= [fromCopy position] && (v57 = objc_msgSend(fromCopy, "position") + 1, v57 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v55 |= (LOBYTE(v108) & 0x7F) << v53;
          if ((LOBYTE(v108) & 0x80) == 0)
          {
            break;
          }

          v53 += 7;
          v15 = v54++ >= 9;
          if (v15)
          {
            LOBYTE(v29) = 0;
            goto LABEL_166;
          }
        }

        v29 = (v55 != 0) & ~[fromCopy hasError];
LABEL_166:
        v98 = 36;
        goto LABEL_181;
      case 0x17u:
        v66 = 0;
        v67 = 0;
        v68 = 0;
        v5->_hasIsGroupThread = 1;
        while (1)
        {
          LOBYTE(v108) = 0;
          v69 = [fromCopy position] + 1;
          if (v69 >= [fromCopy position] && (v70 = objc_msgSend(fromCopy, "position") + 1, v70 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v68 |= (LOBYTE(v108) & 0x7F) << v66;
          if ((LOBYTE(v108) & 0x80) == 0)
          {
            break;
          }

          v66 += 7;
          v15 = v67++ >= 9;
          if (v15)
          {
            LOBYTE(v29) = 0;
            goto LABEL_170;
          }
        }

        v29 = (v68 != 0) & ~[fromCopy hasError];
LABEL_170:
        v98 = 38;
        goto LABEL_181;
      case 0x18u:
        v78 = 0;
        v79 = 0;
        v80 = 0;
        v5->_hasIsJunk = 1;
        while (1)
        {
          LOBYTE(v108) = 0;
          v81 = [fromCopy position] + 1;
          if (v81 >= [fromCopy position] && (v82 = objc_msgSend(fromCopy, "position") + 1, v82 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v80 |= (LOBYTE(v108) & 0x7F) << v78;
          if ((LOBYTE(v108) & 0x80) == 0)
          {
            break;
          }

          v78 += 7;
          v15 = v79++ >= 9;
          if (v15)
          {
            LOBYTE(v29) = 0;
            goto LABEL_174;
          }
        }

        v29 = (v80 != 0) & ~[fromCopy hasError];
LABEL_174:
        v98 = 40;
        goto LABEL_181;
      case 0x19u:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v5->_hasIsRead = 1;
        while (1)
        {
          LOBYTE(v108) = 0;
          v33 = [fromCopy position] + 1;
          if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 1, v34 <= objc_msgSend(fromCopy, "length")))
          {
            data8 = [fromCopy data];
            [data8 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v32 |= (LOBYTE(v108) & 0x7F) << v30;
          if ((LOBYTE(v108) & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v15 = v31++ >= 9;
          if (v15)
          {
            LOBYTE(v29) = 0;
            goto LABEL_158;
          }
        }

        v29 = (v32 != 0) & ~[fromCopy hasError];
LABEL_158:
        v98 = 42;
        goto LABEL_181;
      case 0x1Au:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v5->_hasIsPinned = 1;
        while (1)
        {
          LOBYTE(v108) = 0;
          v26 = [fromCopy position] + 1;
          if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 1, v27 <= objc_msgSend(fromCopy, "length")))
          {
            data9 = [fromCopy data];
            [data9 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v25 |= (LOBYTE(v108) & 0x7F) << v23;
          if ((LOBYTE(v108) & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v15 = v24++ >= 9;
          if (v15)
          {
            LOBYTE(v29) = 0;
            goto LABEL_156;
          }
        }

        v29 = (v25 != 0) & ~[fromCopy hasError];
LABEL_156:
        v98 = 44;
        goto LABEL_181;
      case 0x1Bu:
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v5->_hasIsBusinessChat = 1;
        while (1)
        {
          LOBYTE(v108) = 0;
          v95 = [fromCopy position] + 1;
          if (v95 >= [fromCopy position] && (v96 = objc_msgSend(fromCopy, "position") + 1, v96 <= objc_msgSend(fromCopy, "length")))
          {
            data10 = [fromCopy data];
            [data10 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v94 |= (LOBYTE(v108) & 0x7F) << v92;
          if ((LOBYTE(v108) & 0x80) == 0)
          {
            break;
          }

          v92 += 7;
          v15 = v93++ >= 9;
          if (v15)
          {
            LOBYTE(v29) = 0;
            goto LABEL_180;
          }
        }

        v29 = (v94 != 0) & ~[fromCopy hasError];
LABEL_180:
        v98 = 46;
        goto LABEL_181;
      case 0x1Cu:
        v17 = PBReaderReadString();
        v18 = 208;
        goto LABEL_143;
      case 0x1Du:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        v5->_hasTapbackType = 1;
        while (1)
        {
          LOBYTE(v108) = 0;
          v87 = [fromCopy position] + 1;
          if (v87 >= [fromCopy position] && (v88 = objc_msgSend(fromCopy, "position") + 1, v88 <= objc_msgSend(fromCopy, "length")))
          {
            data11 = [fromCopy data];
            [data11 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v86 |= (LOBYTE(v108) & 0x7F) << v84;
          if ((LOBYTE(v108) & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v15 = v85++ >= 9;
          if (v15)
          {
            v90 = 0;
            goto LABEL_178;
          }
        }

        if ([fromCopy hasError])
        {
          v90 = 0;
        }

        else
        {
          v90 = v86;
        }

LABEL_178:
        v5->_tapbackType = v90;
        continue;
      case 0x1Eu:
        v17 = PBReaderReadString();
        v18 = 216;
        goto LABEL_143;
      case 0x1Fu:
        v17 = PBReaderReadString();
        v18 = 224;
        goto LABEL_143;
      case 0x20u:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v5->_hasMessageEffect = 1;
        while (1)
        {
          LOBYTE(v108) = 0;
          v43 = [fromCopy position] + 1;
          if (v43 >= [fromCopy position] && (v44 = objc_msgSend(fromCopy, "position") + 1, v44 <= objc_msgSend(fromCopy, "length")))
          {
            data12 = [fromCopy data];
            [data12 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v42 |= (LOBYTE(v108) & 0x7F) << v40;
          if ((LOBYTE(v108) & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v15 = v41++ >= 9;
          if (v15)
          {
            v46 = 0;
            goto LABEL_162;
          }
        }

        if ([fromCopy hasError])
        {
          v46 = 0;
        }

        else
        {
          v46 = v42;
        }

LABEL_162:
        v5->_messageEffect = v46;
        continue;
      case 0x21u:
        v60 = 0;
        v61 = 0;
        v62 = 0;
        v5->_hasIsKnownSender = 1;
        break;
      case 0x22u:
        v17 = PBReaderReadString();
        v18 = 232;
LABEL_143:
        v91 = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;

        continue;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

LABEL_188:

        goto LABEL_185;
    }

    while (1)
    {
      LOBYTE(v108) = 0;
      v63 = [fromCopy position] + 1;
      if (v63 >= [fromCopy position] && (v64 = objc_msgSend(fromCopy, "position") + 1, v64 <= objc_msgSend(fromCopy, "length")))
      {
        data13 = [fromCopy data];
        [data13 getBytes:&v108 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v62 |= (LOBYTE(v108) & 0x7F) << v60;
      if ((LOBYTE(v108) & 0x80) == 0)
      {
        break;
      }

      v60 += 7;
      v15 = v61++ >= 9;
      if (v15)
      {
        LOBYTE(v29) = 0;
        goto LABEL_168;
      }
    }

    v29 = (v62 != 0) & ~[fromCopy hasError];
LABEL_168:
    v98 = 50;
LABEL_181:
    *(&v5->super.super.isa + v98) = v29;
  }

  v100 = [v6 copy];
  toHandles = v5->_toHandles;
  v5->_toHandles = v100;

  v102 = [v7 copy];
  accountHandles = v5->_accountHandles;
  v5->_accountHandles = v102;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_185:
    v105 = 0;
  }

  else
  {
LABEL_186:
    v105 = v5;
  }

  return v105;
}

- (NSString)description
{
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  uniqueID = [(BMProactiveHarvestingMessages *)self uniqueID];
  domainID = [(BMProactiveHarvestingMessages *)self domainID];
  absoluteTimestamp = [(BMProactiveHarvestingMessages *)self absoluteTimestamp];
  conversationId = [(BMProactiveHarvestingMessages *)self conversationId];
  author = [(BMProactiveHarvestingMessages *)self author];
  suggestedNickname = [(BMProactiveHarvestingMessages *)self suggestedNickname];
  suggestedPhotoPath = [(BMProactiveHarvestingMessages *)self suggestedPhotoPath];
  recipients = [(BMProactiveHarvestingMessages *)self recipients];
  attachmentURL = [(BMProactiveHarvestingMessages *)self attachmentURL];
  content = [(BMProactiveHarvestingMessages *)self content];
  fromHandle = [(BMProactiveHarvestingMessages *)self fromHandle];
  toHandles = [(BMProactiveHarvestingMessages *)self toHandles];
  accountIdentifier = [(BMProactiveHarvestingMessages *)self accountIdentifier];
  accountType = [(BMProactiveHarvestingMessages *)self accountType];
  accountHandles = [(BMProactiveHarvestingMessages *)self accountHandles];
  attachment = [(BMProactiveHarvestingMessages *)self attachment];
  v25 = [(BMProactiveHarvestingMessages *)self url];
  contentProtection = [(BMProactiveHarvestingMessages *)self contentProtection];
  personaId = [(BMProactiveHarvestingMessages *)self personaId];
  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isNew](self, "isNew")}];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isTwoFactorCode](self, "isTwoFactorCode")}];
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isFromMe](self, "isFromMe")}];
  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isGroupThread](self, "isGroupThread")}];
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isJunk](self, "isJunk")}];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isRead](self, "isRead")}];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isPinned](self, "isPinned")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isBusinessChat](self, "isBusinessChat")}];
  tapbackAssociatedMessageID = [(BMProactiveHarvestingMessages *)self tapbackAssociatedMessageID];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMProactiveHarvestingMessages tapbackType](self, "tapbackType")}];
  messageType = [(BMProactiveHarvestingMessages *)self messageType];
  messagesService = [(BMProactiveHarvestingMessages *)self messagesService];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMProactiveHarvestingMessages messageEffect](self, "messageEffect")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMessages isKnownSender](self, "isKnownSender")}];
  conversationUUID = [(BMProactiveHarvestingMessages *)self conversationUUID];
  v19 = [v18 initWithFormat:@"BMProactiveHarvestingMessages with uniqueID: %@, domainID: %@, absoluteTimestamp: %@, conversationId: %@, author: %@, suggestedNickname: %@, suggestedPhotoPath: %@, recipients: %@, attachmentURL: %@, content: %@, fromHandle: %@, toHandles: %@, accountIdentifier: %@, accountType: %@, accountHandles: %@, attachment: %@, url: %@, contentProtection: %@, personaId: %@, isNew: %@, isTwoFactorCode: %@, isFromMe: %@, isGroupThread: %@, isJunk: %@, isRead: %@, isPinned: %@, isBusinessChat: %@, tapbackAssociatedMessageID: %@, tapbackType: %@, messageType: %@, messagesService: %@, messageEffect: %@, isKnownSender: %@, conversationUUID: %@", uniqueID, domainID, absoluteTimestamp, conversationId, author, suggestedNickname, suggestedPhotoPath, recipients, attachmentURL, content, fromHandle, toHandles, accountIdentifier, accountType, accountHandles, attachment, v25, contentProtection, personaId, v23, v14, v22, v21, v20, v13, v12, v11, tapbackAssociatedMessageID, v3, messageType, messagesService, v6, v7, conversationUUID];

  return v19;
}

- (BMProactiveHarvestingMessages)initWithUniqueID:(id)d domainID:(id)iD absoluteTimestamp:(id)timestamp conversationId:(id)id author:(id)author suggestedNickname:(id)nickname suggestedPhotoPath:(id)path recipients:(id)self0 attachmentURL:(id)self1 content:(id)self2 fromHandle:(id)self3 toHandles:(id)self4 accountIdentifier:(id)self5 accountType:(id)self6 accountHandles:(id)self7 attachment:(id)self8 url:(id)self9 contentProtection:(id)protection personaId:(id)personaId isNew:(id)new isTwoFactorCode:(id)code isFromMe:(id)me isGroupThread:(id)thread isJunk:(id)junk isRead:(id)read isPinned:(id)pinned isBusinessChat:(id)chat tapbackAssociatedMessageID:(id)d0 tapbackType:(id)d1 messageType:(id)d2 messagesService:(id)d3 messageEffect:(id)d4 isKnownSender:(id)d5 conversationUUID:(id)d6
{
  dCopy = d;
  iDCopy = iD;
  iDCopy2 = iD;
  timestampCopy = timestamp;
  idCopy = id;
  authorCopy = author;
  nicknameCopy = nickname;
  nicknameCopy2 = nickname;
  pathCopy = path;
  recipientsCopy = recipients;
  lCopy = l;
  contentCopy = content;
  handleCopy = handle;
  handlesCopy = handles;
  identifierCopy = identifier;
  typeCopy = type;
  accountHandlesCopy = accountHandles;
  attachmentCopy = attachment;
  urlCopy = url;
  protectionCopy = protection;
  personaIdCopy = personaId;
  newCopy = new;
  codeCopy = code;
  meCopy = me;
  threadCopy = thread;
  junkCopy = junk;
  readCopy = read;
  pinnedCopy = pinned;
  chatCopy = chat;
  messageIDCopy = messageID;
  tapbackTypeCopy = tapbackType;
  messageTypeCopy = messageType;
  serviceCopy = service;
  effectCopy = effect;
  senderCopy = sender;
  uIDCopy = uID;
  v87.receiver = self;
  v87.super_class = BMProactiveHarvestingMessages;
  v47 = [(BMEventBase *)&v87 init];
  if (v47)
  {
    v47->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v47->_uniqueID, d);
    objc_storeStrong(&v47->_domainID, iDCopy);
    v54 = timestampCopy;
    if (timestampCopy)
    {
      v48 = timestampCopy;
      v49 = messageIDCopy;
      v47->_hasRaw_absoluteTimestamp = 1;
      [v48 timeIntervalSinceReferenceDate];
    }

    else
    {
      v49 = messageIDCopy;
      v47->_hasRaw_absoluteTimestamp = 0;
      v50 = -1.0;
    }

    v47->_raw_absoluteTimestamp = v50;
    objc_storeStrong(&v47->_conversationId, id);
    objc_storeStrong(&v47->_author, author);
    objc_storeStrong(&v47->_suggestedNickname, nicknameCopy);
    objc_storeStrong(&v47->_suggestedPhotoPath, path);
    objc_storeStrong(&v47->_recipients, recipients);
    objc_storeStrong(&v47->_attachmentURL, l);
    objc_storeStrong(&v47->_content, content);
    objc_storeStrong(&v47->_fromHandle, handle);
    objc_storeStrong(&v47->_toHandles, handles);
    objc_storeStrong(&v47->_accountIdentifier, identifier);
    objc_storeStrong(&v47->_accountType, type);
    objc_storeStrong(&v47->_accountHandles, accountHandles);
    objc_storeStrong(&v47->_attachment, attachment);
    objc_storeStrong(&v47->_url, url);
    objc_storeStrong(&v47->_contentProtection, protection);
    objc_storeStrong(&v47->_personaId, personaId);
    if (newCopy)
    {
      v47->_hasIsNew = 1;
      v47->_isNew = [newCopy BOOLValue];
    }

    else
    {
      v47->_hasIsNew = 0;
      v47->_isNew = 0;
    }

    messageIDCopy = v49;
    if (codeCopy)
    {
      v47->_hasIsTwoFactorCode = 1;
      v47->_isTwoFactorCode = [codeCopy BOOLValue];
    }

    else
    {
      v47->_hasIsTwoFactorCode = 0;
      v47->_isTwoFactorCode = 0;
    }

    if (meCopy)
    {
      v47->_hasIsFromMe = 1;
      v47->_isFromMe = [meCopy BOOLValue];
    }

    else
    {
      v47->_hasIsFromMe = 0;
      v47->_isFromMe = 0;
    }

    if (threadCopy)
    {
      v47->_hasIsGroupThread = 1;
      v47->_isGroupThread = [threadCopy BOOLValue];
    }

    else
    {
      v47->_hasIsGroupThread = 0;
      v47->_isGroupThread = 0;
    }

    if (junkCopy)
    {
      v47->_hasIsJunk = 1;
      v47->_isJunk = [junkCopy BOOLValue];
    }

    else
    {
      v47->_hasIsJunk = 0;
      v47->_isJunk = 0;
    }

    if (readCopy)
    {
      v47->_hasIsRead = 1;
      v47->_isRead = [readCopy BOOLValue];
    }

    else
    {
      v47->_hasIsRead = 0;
      v47->_isRead = 0;
    }

    if (pinnedCopy)
    {
      v47->_hasIsPinned = 1;
      v47->_isPinned = [pinnedCopy BOOLValue];
    }

    else
    {
      v47->_hasIsPinned = 0;
      v47->_isPinned = 0;
    }

    if (chatCopy)
    {
      v47->_hasIsBusinessChat = 1;
      v47->_isBusinessChat = [chatCopy BOOLValue];
    }

    else
    {
      v47->_hasIsBusinessChat = 0;
      v47->_isBusinessChat = 0;
    }

    objc_storeStrong(&v47->_tapbackAssociatedMessageID, messageID);
    if (tapbackTypeCopy)
    {
      v47->_hasTapbackType = 1;
      intValue = [tapbackTypeCopy intValue];
    }

    else
    {
      v47->_hasTapbackType = 0;
      intValue = -1;
    }

    v47->_tapbackType = intValue;
    objc_storeStrong(&v47->_messageType, messageType);
    objc_storeStrong(&v47->_messagesService, service);
    if (effectCopy)
    {
      v47->_hasMessageEffect = 1;
      intValue2 = [effectCopy intValue];
    }

    else
    {
      v47->_hasMessageEffect = 0;
      intValue2 = -1;
    }

    v47->_messageEffect = intValue2;
    if (senderCopy)
    {
      v47->_hasIsKnownSender = 1;
      v47->_isKnownSender = [senderCopy BOOLValue];
    }

    else
    {
      v47->_hasIsKnownSender = 0;
      v47->_isKnownSender = 0;
    }

    objc_storeStrong(&v47->_conversationUUID, uID);
    timestampCopy = v54;
  }

  return v47;
}

+ (id)protoFields
{
  v38[34] = *MEMORY[0x1E69E9840];
  v37 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uniqueID" number:1 type:13 subMessageClass:0];
  v38[0] = v37;
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"domainID" number:2 type:13 subMessageClass:0];
  v38[1] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:3 type:0 subMessageClass:0];
  v38[2] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"conversationId" number:4 type:13 subMessageClass:0];
  v38[3] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"author" number:5 type:13 subMessageClass:0];
  v38[4] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestedNickname" number:6 type:13 subMessageClass:0];
  v38[5] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestedPhotoPath" number:7 type:13 subMessageClass:0];
  v38[6] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"recipients" number:8 type:13 subMessageClass:0];
  v38[7] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"attachmentURL" number:9 type:13 subMessageClass:0];
  v38[8] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"content" number:10 type:13 subMessageClass:0];
  v38[9] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fromHandle" number:11 type:14 subMessageClass:objc_opt_class()];
  v38[10] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"toHandles" number:12 type:14 subMessageClass:objc_opt_class()];
  v38[11] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"accountIdentifier" number:13 type:13 subMessageClass:0];
  v38[12] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"accountType" number:14 type:13 subMessageClass:0];
  v38[13] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"accountHandles" number:15 type:13 subMessageClass:0];
  v38[14] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"attachment" number:16 type:14 subMessageClass:objc_opt_class()];
  v38[15] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"url" number:17 type:13 subMessageClass:0];
  v38[16] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentProtection" number:18 type:13 subMessageClass:0];
  v38[17] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personaId" number:19 type:13 subMessageClass:0];
  v38[18] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isNew" number:20 type:12 subMessageClass:0];
  v38[19] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isTwoFactorCode" number:21 type:12 subMessageClass:0];
  v38[20] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isFromMe" number:22 type:12 subMessageClass:0];
  v38[21] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isGroupThread" number:23 type:12 subMessageClass:0];
  v38[22] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isJunk" number:24 type:12 subMessageClass:0];
  v38[23] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRead" number:25 type:12 subMessageClass:0];
  v38[24] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isPinned" number:26 type:12 subMessageClass:0];
  v38[25] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isBusinessChat" number:27 type:12 subMessageClass:0];
  v38[26] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tapbackAssociatedMessageID" number:28 type:13 subMessageClass:0];
  v38[27] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tapbackType" number:29 type:2 subMessageClass:0];
  v38[28] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"messageType" number:30 type:13 subMessageClass:0];
  v38[29] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"messagesService" number:31 type:13 subMessageClass:0];
  v38[30] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"messageEffect" number:32 type:2 subMessageClass:0];
  v38[31] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isKnownSender" number:33 type:12 subMessageClass:0];
  v38[32] = v10;
  v11 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"conversationUUID" number:34 type:13 subMessageClass:0];
  v38[33] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:34];

  return v13;
}

+ (id)columns
{
  v38[34] = *MEMORY[0x1E69E9840];
  v37 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uniqueID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v36 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"domainID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v35 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:1];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"conversationId" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"author" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestedNickname" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"suggestedPhotoPath" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"recipients" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"attachmentURL" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"content" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"fromHandle_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_19570];
  v26 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"toHandles_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_151];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"accountIdentifier" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"accountType" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"accountHandles_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_153];
  v22 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"attachment_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_155];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"url" dataType:2 requestOnly:0 fieldNumber:17 protoDataType:13 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentProtection" dataType:2 requestOnly:0 fieldNumber:18 protoDataType:13 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personaId" dataType:2 requestOnly:0 fieldNumber:19 protoDataType:13 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isNew" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:12 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isTwoFactorCode" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:12 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isFromMe" dataType:0 requestOnly:0 fieldNumber:22 protoDataType:12 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isGroupThread" dataType:0 requestOnly:0 fieldNumber:23 protoDataType:12 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isJunk" dataType:0 requestOnly:0 fieldNumber:24 protoDataType:12 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRead" dataType:0 requestOnly:0 fieldNumber:25 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isPinned" dataType:0 requestOnly:0 fieldNumber:26 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isBusinessChat" dataType:0 requestOnly:0 fieldNumber:27 protoDataType:12 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tapbackAssociatedMessageID" dataType:2 requestOnly:0 fieldNumber:28 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tapbackType" dataType:0 requestOnly:0 fieldNumber:29 protoDataType:2 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"messageType" dataType:2 requestOnly:0 fieldNumber:30 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"messagesService" dataType:2 requestOnly:0 fieldNumber:31 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"messageEffect" dataType:0 requestOnly:0 fieldNumber:32 protoDataType:2 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isKnownSender" dataType:0 requestOnly:0 fieldNumber:33 protoDataType:12 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"conversationUUID" dataType:2 requestOnly:0 fieldNumber:34 protoDataType:13 convertedType:0];
  v38[0] = v37;
  v38[1] = v36;
  v38[2] = v35;
  v38[3] = v34;
  v38[4] = v33;
  v38[5] = v32;
  v38[6] = v31;
  v38[7] = v30;
  v38[8] = v29;
  v38[9] = v28;
  v38[10] = v27;
  v38[11] = v26;
  v38[12] = v25;
  v38[13] = v24;
  v38[14] = v23;
  v38[15] = v22;
  v38[16] = v21;
  v38[17] = v20;
  v38[18] = v19;
  v38[19] = v18;
  v38[20] = v17;
  v38[21] = v16;
  v38[22] = v15;
  v38[23] = v14;
  v38[24] = v2;
  v38[25] = v3;
  v38[26] = v4;
  v38[27] = v13;
  v38[28] = v5;
  v38[29] = v6;
  v38[30] = v7;
  v38[31] = v8;
  v38[32] = v12;
  v38[33] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:34];

  return v11;
}

id __40__BMProactiveHarvestingMessages_columns__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 attachment];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __40__BMProactiveHarvestingMessages_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _accountHandlesJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __40__BMProactiveHarvestingMessages_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _toHandlesJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __40__BMProactiveHarvestingMessages_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 fromHandle];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 2)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMProactiveHarvestingMessages alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[13] = 2;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end