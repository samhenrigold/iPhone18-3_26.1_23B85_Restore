@interface BMProactiveHarvestingMail
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMProactiveHarvestingMail)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMProactiveHarvestingMail)initWithUniqueID:(id)d domainID:(id)iD absoluteTimestamp:(id)timestamp accountIdentifier:(id)identifier messageIdentifier:(id)messageIdentifier fromField:(id)field toField:(id)toField ccField:(id)self0 bccField:(id)self1 headers:(id)self2 subject:(id)self3 htmlContentData:(id)self4 isFullyDownloaded:(id)self5 htmlContent:(id)self6 textContent:(id)self7 securityMethod:(id)self8 accountHandles:(id)self9 replyTo:(id)to mailboxIdentifiers:(id)identifiers listID:(id)listID accountType:(id)type attachments:(id)attachments fromHandle:(id)handle toHandles:(id)toHandles ccHandles:(id)ccHandles bccHandles:(id)bccHandles contentProtection:(id)protection personaId:(id)d0 conversationId:(id)d1 dateReceived:(id)d2 mailCategories:(id)d3 isNew:(id)d4 isTwoFactorCode:(id)d5 isFromMe:(id)d6 isJunk:(id)d7 isRead:(id)d8 isVIP:(id)d9 isFlagged:(id)iD0;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSDate)dateReceived;
- (NSString)description;
- (id)_accountHandlesJSONArray;
- (id)_attachmentsJSONArray;
- (id)_bccHandlesJSONArray;
- (id)_ccHandlesJSONArray;
- (id)_headersJSONArray;
- (id)_mailboxIdentifiersJSONArray;
- (id)_toHandlesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMProactiveHarvestingMail

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    uniqueID = [(BMProactiveHarvestingMail *)self uniqueID];
    uniqueID2 = [v5 uniqueID];
    v8 = uniqueID2;
    if (uniqueID == uniqueID2)
    {
    }

    else
    {
      uniqueID3 = [(BMProactiveHarvestingMail *)self uniqueID];
      uniqueID4 = [v5 uniqueID];
      v11 = [uniqueID3 isEqual:uniqueID4];

      if (!v11)
      {
        goto LABEL_164;
      }
    }

    domainID = [(BMProactiveHarvestingMail *)self domainID];
    domainID2 = [v5 domainID];
    v15 = domainID2;
    if (domainID == domainID2)
    {
    }

    else
    {
      domainID3 = [(BMProactiveHarvestingMail *)self domainID];
      domainID4 = [v5 domainID];
      v18 = [domainID3 isEqual:domainID4];

      if (!v18)
      {
        goto LABEL_164;
      }
    }

    absoluteTimestamp = [(BMProactiveHarvestingMail *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v21 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMProactiveHarvestingMail *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v24 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v24)
      {
        goto LABEL_164;
      }
    }

    accountIdentifier = [(BMProactiveHarvestingMail *)self accountIdentifier];
    accountIdentifier2 = [v5 accountIdentifier];
    v27 = accountIdentifier2;
    if (accountIdentifier == accountIdentifier2)
    {
    }

    else
    {
      accountIdentifier3 = [(BMProactiveHarvestingMail *)self accountIdentifier];
      accountIdentifier4 = [v5 accountIdentifier];
      v30 = [accountIdentifier3 isEqual:accountIdentifier4];

      if (!v30)
      {
        goto LABEL_164;
      }
    }

    messageIdentifier = [(BMProactiveHarvestingMail *)self messageIdentifier];
    messageIdentifier2 = [v5 messageIdentifier];
    v33 = messageIdentifier2;
    if (messageIdentifier == messageIdentifier2)
    {
    }

    else
    {
      messageIdentifier3 = [(BMProactiveHarvestingMail *)self messageIdentifier];
      messageIdentifier4 = [v5 messageIdentifier];
      v36 = [messageIdentifier3 isEqual:messageIdentifier4];

      if (!v36)
      {
        goto LABEL_164;
      }
    }

    fromField = [(BMProactiveHarvestingMail *)self fromField];
    fromField2 = [v5 fromField];
    v39 = fromField2;
    if (fromField == fromField2)
    {
    }

    else
    {
      fromField3 = [(BMProactiveHarvestingMail *)self fromField];
      fromField4 = [v5 fromField];
      v42 = [fromField3 isEqual:fromField4];

      if (!v42)
      {
        goto LABEL_164;
      }
    }

    toField = [(BMProactiveHarvestingMail *)self toField];
    toField2 = [v5 toField];
    v45 = toField2;
    if (toField == toField2)
    {
    }

    else
    {
      toField3 = [(BMProactiveHarvestingMail *)self toField];
      toField4 = [v5 toField];
      v48 = [toField3 isEqual:toField4];

      if (!v48)
      {
        goto LABEL_164;
      }
    }

    ccField = [(BMProactiveHarvestingMail *)self ccField];
    ccField2 = [v5 ccField];
    v51 = ccField2;
    if (ccField == ccField2)
    {
    }

    else
    {
      ccField3 = [(BMProactiveHarvestingMail *)self ccField];
      ccField4 = [v5 ccField];
      v54 = [ccField3 isEqual:ccField4];

      if (!v54)
      {
        goto LABEL_164;
      }
    }

    bccField = [(BMProactiveHarvestingMail *)self bccField];
    bccField2 = [v5 bccField];
    v57 = bccField2;
    if (bccField == bccField2)
    {
    }

    else
    {
      bccField3 = [(BMProactiveHarvestingMail *)self bccField];
      bccField4 = [v5 bccField];
      v60 = [bccField3 isEqual:bccField4];

      if (!v60)
      {
        goto LABEL_164;
      }
    }

    headers = [(BMProactiveHarvestingMail *)self headers];
    headers2 = [v5 headers];
    v63 = headers2;
    if (headers == headers2)
    {
    }

    else
    {
      headers3 = [(BMProactiveHarvestingMail *)self headers];
      headers4 = [v5 headers];
      v66 = [headers3 isEqual:headers4];

      if (!v66)
      {
        goto LABEL_164;
      }
    }

    subject = [(BMProactiveHarvestingMail *)self subject];
    subject2 = [v5 subject];
    v69 = subject2;
    if (subject == subject2)
    {
    }

    else
    {
      subject3 = [(BMProactiveHarvestingMail *)self subject];
      subject4 = [v5 subject];
      v72 = [subject3 isEqual:subject4];

      if (!v72)
      {
        goto LABEL_164;
      }
    }

    htmlContentData = [(BMProactiveHarvestingMail *)self htmlContentData];
    htmlContentData2 = [v5 htmlContentData];
    v75 = htmlContentData2;
    if (htmlContentData == htmlContentData2)
    {
    }

    else
    {
      htmlContentData3 = [(BMProactiveHarvestingMail *)self htmlContentData];
      htmlContentData4 = [v5 htmlContentData];
      v78 = [htmlContentData3 isEqual:htmlContentData4];

      if (!v78)
      {
        goto LABEL_164;
      }
    }

    if (-[BMProactiveHarvestingMail hasIsFullyDownloaded](self, "hasIsFullyDownloaded") || [v5 hasIsFullyDownloaded])
    {
      if (![(BMProactiveHarvestingMail *)self hasIsFullyDownloaded])
      {
        goto LABEL_164;
      }

      if (![v5 hasIsFullyDownloaded])
      {
        goto LABEL_164;
      }

      isFullyDownloaded = [(BMProactiveHarvestingMail *)self isFullyDownloaded];
      if (isFullyDownloaded != [v5 isFullyDownloaded])
      {
        goto LABEL_164;
      }
    }

    htmlContent = [(BMProactiveHarvestingMail *)self htmlContent];
    htmlContent2 = [v5 htmlContent];
    v82 = htmlContent2;
    if (htmlContent == htmlContent2)
    {
    }

    else
    {
      htmlContent3 = [(BMProactiveHarvestingMail *)self htmlContent];
      htmlContent4 = [v5 htmlContent];
      v85 = [htmlContent3 isEqual:htmlContent4];

      if (!v85)
      {
        goto LABEL_164;
      }
    }

    textContent = [(BMProactiveHarvestingMail *)self textContent];
    textContent2 = [v5 textContent];
    v88 = textContent2;
    if (textContent == textContent2)
    {
    }

    else
    {
      textContent3 = [(BMProactiveHarvestingMail *)self textContent];
      textContent4 = [v5 textContent];
      v91 = [textContent3 isEqual:textContent4];

      if (!v91)
      {
        goto LABEL_164;
      }
    }

    securityMethod = [(BMProactiveHarvestingMail *)self securityMethod];
    securityMethod2 = [v5 securityMethod];
    v94 = securityMethod2;
    if (securityMethod == securityMethod2)
    {
    }

    else
    {
      securityMethod3 = [(BMProactiveHarvestingMail *)self securityMethod];
      securityMethod4 = [v5 securityMethod];
      v97 = [securityMethod3 isEqual:securityMethod4];

      if (!v97)
      {
        goto LABEL_164;
      }
    }

    accountHandles = [(BMProactiveHarvestingMail *)self accountHandles];
    accountHandles2 = [v5 accountHandles];
    v100 = accountHandles2;
    if (accountHandles == accountHandles2)
    {
    }

    else
    {
      accountHandles3 = [(BMProactiveHarvestingMail *)self accountHandles];
      accountHandles4 = [v5 accountHandles];
      v103 = [accountHandles3 isEqual:accountHandles4];

      if (!v103)
      {
        goto LABEL_164;
      }
    }

    replyTo = [(BMProactiveHarvestingMail *)self replyTo];
    replyTo2 = [v5 replyTo];
    v106 = replyTo2;
    if (replyTo == replyTo2)
    {
    }

    else
    {
      replyTo3 = [(BMProactiveHarvestingMail *)self replyTo];
      replyTo4 = [v5 replyTo];
      v109 = [replyTo3 isEqual:replyTo4];

      if (!v109)
      {
        goto LABEL_164;
      }
    }

    mailboxIdentifiers = [(BMProactiveHarvestingMail *)self mailboxIdentifiers];
    mailboxIdentifiers2 = [v5 mailboxIdentifiers];
    v112 = mailboxIdentifiers2;
    if (mailboxIdentifiers == mailboxIdentifiers2)
    {
    }

    else
    {
      mailboxIdentifiers3 = [(BMProactiveHarvestingMail *)self mailboxIdentifiers];
      mailboxIdentifiers4 = [v5 mailboxIdentifiers];
      v115 = [mailboxIdentifiers3 isEqual:mailboxIdentifiers4];

      if (!v115)
      {
        goto LABEL_164;
      }
    }

    listID = [(BMProactiveHarvestingMail *)self listID];
    listID2 = [v5 listID];
    v118 = listID2;
    if (listID == listID2)
    {
    }

    else
    {
      listID3 = [(BMProactiveHarvestingMail *)self listID];
      listID4 = [v5 listID];
      v121 = [listID3 isEqual:listID4];

      if (!v121)
      {
        goto LABEL_164;
      }
    }

    accountType = [(BMProactiveHarvestingMail *)self accountType];
    accountType2 = [v5 accountType];
    v124 = accountType2;
    if (accountType == accountType2)
    {
    }

    else
    {
      accountType3 = [(BMProactiveHarvestingMail *)self accountType];
      accountType4 = [v5 accountType];
      v127 = [accountType3 isEqual:accountType4];

      if (!v127)
      {
        goto LABEL_164;
      }
    }

    attachments = [(BMProactiveHarvestingMail *)self attachments];
    attachments2 = [v5 attachments];
    v130 = attachments2;
    if (attachments == attachments2)
    {
    }

    else
    {
      attachments3 = [(BMProactiveHarvestingMail *)self attachments];
      attachments4 = [v5 attachments];
      v133 = [attachments3 isEqual:attachments4];

      if (!v133)
      {
        goto LABEL_164;
      }
    }

    fromHandle = [(BMProactiveHarvestingMail *)self fromHandle];
    fromHandle2 = [v5 fromHandle];
    v136 = fromHandle2;
    if (fromHandle == fromHandle2)
    {
    }

    else
    {
      fromHandle3 = [(BMProactiveHarvestingMail *)self fromHandle];
      fromHandle4 = [v5 fromHandle];
      v139 = [fromHandle3 isEqual:fromHandle4];

      if (!v139)
      {
        goto LABEL_164;
      }
    }

    toHandles = [(BMProactiveHarvestingMail *)self toHandles];
    toHandles2 = [v5 toHandles];
    v142 = toHandles2;
    if (toHandles == toHandles2)
    {
    }

    else
    {
      toHandles3 = [(BMProactiveHarvestingMail *)self toHandles];
      toHandles4 = [v5 toHandles];
      v145 = [toHandles3 isEqual:toHandles4];

      if (!v145)
      {
        goto LABEL_164;
      }
    }

    ccHandles = [(BMProactiveHarvestingMail *)self ccHandles];
    ccHandles2 = [v5 ccHandles];
    v148 = ccHandles2;
    if (ccHandles == ccHandles2)
    {
    }

    else
    {
      ccHandles3 = [(BMProactiveHarvestingMail *)self ccHandles];
      ccHandles4 = [v5 ccHandles];
      v151 = [ccHandles3 isEqual:ccHandles4];

      if (!v151)
      {
        goto LABEL_164;
      }
    }

    bccHandles = [(BMProactiveHarvestingMail *)self bccHandles];
    bccHandles2 = [v5 bccHandles];
    v154 = bccHandles2;
    if (bccHandles == bccHandles2)
    {
    }

    else
    {
      bccHandles3 = [(BMProactiveHarvestingMail *)self bccHandles];
      bccHandles4 = [v5 bccHandles];
      v157 = [bccHandles3 isEqual:bccHandles4];

      if (!v157)
      {
        goto LABEL_164;
      }
    }

    contentProtection = [(BMProactiveHarvestingMail *)self contentProtection];
    contentProtection2 = [v5 contentProtection];
    v160 = contentProtection2;
    if (contentProtection == contentProtection2)
    {
    }

    else
    {
      contentProtection3 = [(BMProactiveHarvestingMail *)self contentProtection];
      contentProtection4 = [v5 contentProtection];
      v163 = [contentProtection3 isEqual:contentProtection4];

      if (!v163)
      {
        goto LABEL_164;
      }
    }

    personaId = [(BMProactiveHarvestingMail *)self personaId];
    personaId2 = [v5 personaId];
    v166 = personaId2;
    if (personaId == personaId2)
    {
    }

    else
    {
      personaId3 = [(BMProactiveHarvestingMail *)self personaId];
      personaId4 = [v5 personaId];
      v169 = [personaId3 isEqual:personaId4];

      if (!v169)
      {
        goto LABEL_164;
      }
    }

    conversationId = [(BMProactiveHarvestingMail *)self conversationId];
    conversationId2 = [v5 conversationId];
    v172 = conversationId2;
    if (conversationId == conversationId2)
    {
    }

    else
    {
      conversationId3 = [(BMProactiveHarvestingMail *)self conversationId];
      conversationId4 = [v5 conversationId];
      v175 = [conversationId3 isEqual:conversationId4];

      if (!v175)
      {
        goto LABEL_164;
      }
    }

    dateReceived = [(BMProactiveHarvestingMail *)self dateReceived];
    dateReceived2 = [v5 dateReceived];
    v178 = dateReceived2;
    if (dateReceived == dateReceived2)
    {
    }

    else
    {
      dateReceived3 = [(BMProactiveHarvestingMail *)self dateReceived];
      dateReceived4 = [v5 dateReceived];
      v181 = [dateReceived3 isEqual:dateReceived4];

      if (!v181)
      {
        goto LABEL_164;
      }
    }

    if (!-[BMProactiveHarvestingMail hasMailCategories](self, "hasMailCategories") && ![v5 hasMailCategories] || -[BMProactiveHarvestingMail hasMailCategories](self, "hasMailCategories") && objc_msgSend(v5, "hasMailCategories") && (v182 = -[BMProactiveHarvestingMail mailCategories](self, "mailCategories"), v182 == objc_msgSend(v5, "mailCategories")))
    {
      if (!-[BMProactiveHarvestingMail hasIsNew](self, "hasIsNew") && ![v5 hasIsNew] || -[BMProactiveHarvestingMail hasIsNew](self, "hasIsNew") && objc_msgSend(v5, "hasIsNew") && (v183 = -[BMProactiveHarvestingMail isNew](self, "isNew"), v183 == objc_msgSend(v5, "isNew")))
      {
        if (!-[BMProactiveHarvestingMail hasIsTwoFactorCode](self, "hasIsTwoFactorCode") && ![v5 hasIsTwoFactorCode] || -[BMProactiveHarvestingMail hasIsTwoFactorCode](self, "hasIsTwoFactorCode") && objc_msgSend(v5, "hasIsTwoFactorCode") && (v184 = -[BMProactiveHarvestingMail isTwoFactorCode](self, "isTwoFactorCode"), v184 == objc_msgSend(v5, "isTwoFactorCode")))
        {
          if (!-[BMProactiveHarvestingMail hasIsFromMe](self, "hasIsFromMe") && ![v5 hasIsFromMe] || -[BMProactiveHarvestingMail hasIsFromMe](self, "hasIsFromMe") && objc_msgSend(v5, "hasIsFromMe") && (v185 = -[BMProactiveHarvestingMail isFromMe](self, "isFromMe"), v185 == objc_msgSend(v5, "isFromMe")))
          {
            if (!-[BMProactiveHarvestingMail hasIsJunk](self, "hasIsJunk") && ![v5 hasIsJunk] || -[BMProactiveHarvestingMail hasIsJunk](self, "hasIsJunk") && objc_msgSend(v5, "hasIsJunk") && (v186 = -[BMProactiveHarvestingMail isJunk](self, "isJunk"), v186 == objc_msgSend(v5, "isJunk")))
            {
              if (!-[BMProactiveHarvestingMail hasIsRead](self, "hasIsRead") && ![v5 hasIsRead] || -[BMProactiveHarvestingMail hasIsRead](self, "hasIsRead") && objc_msgSend(v5, "hasIsRead") && (v187 = -[BMProactiveHarvestingMail isRead](self, "isRead"), v187 == objc_msgSend(v5, "isRead")))
              {
                if (!-[BMProactiveHarvestingMail hasIsVIP](self, "hasIsVIP") && ![v5 hasIsVIP] || -[BMProactiveHarvestingMail hasIsVIP](self, "hasIsVIP") && objc_msgSend(v5, "hasIsVIP") && (v188 = -[BMProactiveHarvestingMail isVIP](self, "isVIP"), v188 == objc_msgSend(v5, "isVIP")))
                {
                  if (!-[BMProactiveHarvestingMail hasIsFlagged](self, "hasIsFlagged") && ![v5 hasIsFlagged])
                  {
                    LOBYTE(v12) = 1;
                    goto LABEL_165;
                  }

                  if (-[BMProactiveHarvestingMail hasIsFlagged](self, "hasIsFlagged") && [v5 hasIsFlagged])
                  {
                    isFlagged = [(BMProactiveHarvestingMail *)self isFlagged];
                    v12 = isFlagged ^ [v5 isFlagged] ^ 1;
LABEL_165:

                    goto LABEL_166;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_164:
    LOBYTE(v12) = 0;
    goto LABEL_165;
  }

  LOBYTE(v12) = 0;
LABEL_166:

  return v12;
}

- (NSDate)dateReceived
{
  if (self->_hasRaw_dateReceived)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_dateReceived];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
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
  v130[38] = *MEMORY[0x1E69E9840];
  uniqueID = [(BMProactiveHarvestingMail *)self uniqueID];
  domainID = [(BMProactiveHarvestingMail *)self domainID];
  absoluteTimestamp = [(BMProactiveHarvestingMail *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v6 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMProactiveHarvestingMail *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  accountIdentifier = [(BMProactiveHarvestingMail *)self accountIdentifier];
  messageIdentifier = [(BMProactiveHarvestingMail *)self messageIdentifier];
  fromField = [(BMProactiveHarvestingMail *)self fromField];
  toField = [(BMProactiveHarvestingMail *)self toField];
  ccField = [(BMProactiveHarvestingMail *)self ccField];
  bccField = [(BMProactiveHarvestingMail *)self bccField];
  _headersJSONArray = [(BMProactiveHarvestingMail *)self _headersJSONArray];
  subject = [(BMProactiveHarvestingMail *)self subject];
  htmlContentData = [(BMProactiveHarvestingMail *)self htmlContentData];
  if ([(BMProactiveHarvestingMail *)self hasIsFullyDownloaded])
  {
    v121 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMail isFullyDownloaded](self, "isFullyDownloaded")}];
  }

  else
  {
    v121 = 0;
  }

  htmlContent = [(BMProactiveHarvestingMail *)self htmlContent];
  v120 = [htmlContent base64EncodedStringWithOptions:0];

  textContent = [(BMProactiveHarvestingMail *)self textContent];
  securityMethod = [(BMProactiveHarvestingMail *)self securityMethod];
  _accountHandlesJSONArray = [(BMProactiveHarvestingMail *)self _accountHandlesJSONArray];
  replyTo = [(BMProactiveHarvestingMail *)self replyTo];
  jsonDictionary = [replyTo jsonDictionary];

  _mailboxIdentifiersJSONArray = [(BMProactiveHarvestingMail *)self _mailboxIdentifiersJSONArray];
  listID = [(BMProactiveHarvestingMail *)self listID];
  jsonDictionary2 = [listID jsonDictionary];

  accountType = [(BMProactiveHarvestingMail *)self accountType];
  _attachmentsJSONArray = [(BMProactiveHarvestingMail *)self _attachmentsJSONArray];
  fromHandle = [(BMProactiveHarvestingMail *)self fromHandle];
  jsonDictionary3 = [fromHandle jsonDictionary];

  _toHandlesJSONArray = [(BMProactiveHarvestingMail *)self _toHandlesJSONArray];
  _ccHandlesJSONArray = [(BMProactiveHarvestingMail *)self _ccHandlesJSONArray];
  _bccHandlesJSONArray = [(BMProactiveHarvestingMail *)self _bccHandlesJSONArray];
  contentProtection = [(BMProactiveHarvestingMail *)self contentProtection];
  personaId = [(BMProactiveHarvestingMail *)self personaId];
  conversationId = [(BMProactiveHarvestingMail *)self conversationId];
  dateReceived = [(BMProactiveHarvestingMail *)self dateReceived];
  if (dateReceived)
  {
    v16 = MEMORY[0x1E696AD98];
    dateReceived2 = [(BMProactiveHarvestingMail *)self dateReceived];
    [dateReceived2 timeIntervalSinceReferenceDate];
    v104 = [v16 numberWithDouble:?];
  }

  else
  {
    v104 = 0;
  }

  if ([(BMProactiveHarvestingMail *)self hasMailCategories])
  {
    v103 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMProactiveHarvestingMail mailCategories](self, "mailCategories")}];
  }

  else
  {
    v103 = 0;
  }

  if ([(BMProactiveHarvestingMail *)self hasIsNew])
  {
    v102 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMail isNew](self, "isNew")}];
  }

  else
  {
    v102 = 0;
  }

  if ([(BMProactiveHarvestingMail *)self hasIsTwoFactorCode])
  {
    v101 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMail isTwoFactorCode](self, "isTwoFactorCode")}];
  }

  else
  {
    v101 = 0;
  }

  if ([(BMProactiveHarvestingMail *)self hasIsFromMe])
  {
    v100 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMail isFromMe](self, "isFromMe")}];
  }

  else
  {
    v100 = 0;
  }

  if ([(BMProactiveHarvestingMail *)self hasIsJunk])
  {
    v99 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMail isJunk](self, "isJunk")}];
  }

  else
  {
    v99 = 0;
  }

  if ([(BMProactiveHarvestingMail *)self hasIsRead])
  {
    v98 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMail isRead](self, "isRead")}];
  }

  else
  {
    v98 = 0;
  }

  if ([(BMProactiveHarvestingMail *)self hasIsVIP])
  {
    v97 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMail isVIP](self, "isVIP")}];
  }

  else
  {
    v97 = 0;
  }

  if ([(BMProactiveHarvestingMail *)self hasIsFlagged])
  {
    v96 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMail isFlagged](self, "isFlagged")}];
  }

  else
  {
    v96 = 0;
  }

  v129[0] = @"uniqueID";
  null = uniqueID;
  if (!uniqueID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v87 = null;
  v130[0] = null;
  v129[1] = @"domainID";
  null2 = domainID;
  if (!domainID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v86 = null2;
  v130[1] = null2;
  v129[2] = @"absoluteTimestamp";
  null3 = v8;
  if (!v8)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v85 = null3;
  v130[2] = null3;
  v129[3] = @"accountIdentifier";
  null4 = accountIdentifier;
  if (!accountIdentifier)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v84 = null4;
  v130[3] = null4;
  v129[4] = @"messageIdentifier";
  null5 = messageIdentifier;
  if (!messageIdentifier)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v83 = null5;
  v130[4] = null5;
  v129[5] = @"fromField";
  null6 = fromField;
  if (!fromField)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v130[5] = null6;
  v129[6] = @"toField";
  null7 = toField;
  if (!toField)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v130[6] = null7;
  v129[7] = @"ccField";
  null8 = ccField;
  if (!ccField)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v130[7] = null8;
  v129[8] = @"bccField";
  null9 = bccField;
  if (!bccField)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v130[8] = null9;
  v129[9] = @"headers";
  null10 = _headersJSONArray;
  if (!_headersJSONArray)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v79 = null10;
  v130[9] = null10;
  v129[10] = @"subject";
  null11 = subject;
  if (!subject)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v93 = null11;
  v130[10] = null11;
  v129[11] = @"htmlContentData";
  null12 = htmlContentData;
  if (!htmlContentData)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v92 = null12;
  v130[11] = null12;
  v129[12] = @"isFullyDownloaded";
  null13 = v121;
  if (!v121)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = accountIdentifier;
  v91 = null13;
  v130[12] = null13;
  v129[13] = @"htmlContent";
  null14 = v120;
  if (!v120)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = uniqueID;
  v90 = null14;
  v130[13] = null14;
  v129[14] = @"textContent";
  null15 = textContent;
  if (!textContent)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = null15;
  v130[14] = null15;
  v129[15] = @"securityMethod";
  null16 = securityMethod;
  if (!securityMethod)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v78 = null16;
  v130[15] = null16;
  v129[16] = @"accountHandles";
  null17 = _accountHandlesJSONArray;
  if (!_accountHandlesJSONArray)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v77 = null17;
  v130[16] = null17;
  v129[17] = @"replyTo";
  null18 = jsonDictionary;
  if (!jsonDictionary)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v76 = null18;
  v130[17] = null18;
  v129[18] = @"mailboxIdentifiers";
  null19 = _mailboxIdentifiersJSONArray;
  if (!_mailboxIdentifiersJSONArray)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v75 = null19;
  v130[18] = null19;
  v129[19] = @"listID";
  null20 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v74 = null20;
  v130[19] = null20;
  v129[20] = @"accountType";
  null21 = accountType;
  if (!accountType)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v73 = null21;
  v130[20] = null21;
  v129[21] = @"attachments";
  null22 = _attachmentsJSONArray;
  if (!_attachmentsJSONArray)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v72 = null22;
  v130[21] = null22;
  v129[22] = @"fromHandle";
  null23 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v71 = null23;
  v130[22] = null23;
  v129[23] = @"toHandles";
  null24 = _toHandlesJSONArray;
  if (!_toHandlesJSONArray)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v70 = null24;
  v130[23] = null24;
  v129[24] = @"ccHandles";
  null25 = _ccHandlesJSONArray;
  if (!_ccHandlesJSONArray)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v69 = null25;
  v130[24] = null25;
  v129[25] = @"bccHandles";
  null26 = _bccHandlesJSONArray;
  if (!_bccHandlesJSONArray)
  {
    null26 = [MEMORY[0x1E695DFB0] null];
  }

  v68 = null26;
  v130[25] = null26;
  v129[26] = @"contentProtection";
  null27 = contentProtection;
  if (!contentProtection)
  {
    null27 = [MEMORY[0x1E695DFB0] null];
  }

  v67 = null27;
  v130[26] = null27;
  v129[27] = @"personaId";
  null28 = personaId;
  if (!personaId)
  {
    null28 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = null28;
  v130[27] = null28;
  v129[28] = @"conversationId";
  null29 = conversationId;
  if (!conversationId)
  {
    null29 = [MEMORY[0x1E695DFB0] null];
  }

  v95 = domainID;
  v65 = null29;
  v130[28] = null29;
  v129[29] = @"dateReceived";
  null30 = v104;
  if (!v104)
  {
    null30 = [MEMORY[0x1E695DFB0] null];
  }

  v64 = null30;
  v130[29] = null30;
  v129[30] = @"mailCategories";
  null31 = v103;
  if (!v103)
  {
    null31 = [MEMORY[0x1E695DFB0] null];
  }

  v94 = v8;
  v63 = null31;
  v130[30] = null31;
  v129[31] = @"isNew";
  null32 = v102;
  if (!v102)
  {
    null32 = [MEMORY[0x1E695DFB0] null];
  }

  v81 = null8;
  v61 = null32;
  v130[31] = null32;
  v129[32] = @"isTwoFactorCode";
  null33 = v101;
  if (!v101)
  {
    null33 = [MEMORY[0x1E695DFB0] null];
  }

  v80 = null9;
  v130[32] = null33;
  v129[33] = @"isFromMe";
  null34 = v100;
  if (!v100)
  {
    null34 = [MEMORY[0x1E695DFB0] null];
  }

  v89 = messageIdentifier;
  v130[33] = null34;
  v129[34] = @"isJunk";
  null35 = v99;
  if (!v99)
  {
    null35 = [MEMORY[0x1E695DFB0] null];
  }

  v130[34] = null35;
  v129[35] = @"isRead";
  null36 = v98;
  if (!v98)
  {
    null36 = [MEMORY[0x1E695DFB0] null];
  }

  v82 = null6;
  v130[35] = null36;
  v129[36] = @"isVIP";
  null37 = v97;
  if (!v97)
  {
    null37 = [MEMORY[0x1E695DFB0] null];
  }

  v130[36] = null37;
  v129[37] = @"isFlagged";
  null38 = v96;
  if (!v96)
  {
    null38 = [MEMORY[0x1E695DFB0] null];
  }

  v130[37] = null38;
  v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v130 forKeys:v129 count:{38, v61}];
  if (!v96)
  {
  }

  v59 = v35;
  if (!v97)
  {

    v59 = v35;
  }

  if (!v98)
  {

    v59 = v35;
  }

  if (!v99)
  {

    v59 = v35;
  }

  if (!v100)
  {

    v59 = v35;
  }

  if (!v101)
  {

    v59 = v35;
  }

  if (!v102)
  {

    v59 = v35;
  }

  if (!v103)
  {

    v59 = v35;
  }

  if (!v104)
  {

    v59 = v35;
  }

  if (!conversationId)
  {

    v59 = v35;
  }

  if (!personaId)
  {

    v59 = v35;
  }

  if (!contentProtection)
  {

    v59 = v35;
  }

  if (!_bccHandlesJSONArray)
  {

    v59 = v35;
  }

  if (!_ccHandlesJSONArray)
  {

    v59 = v35;
  }

  if (!_toHandlesJSONArray)
  {

    v59 = v35;
  }

  if (!jsonDictionary3)
  {

    v59 = v35;
  }

  if (!_attachmentsJSONArray)
  {

    v59 = v35;
  }

  if (!accountType)
  {

    v59 = v35;
  }

  if (!jsonDictionary2)
  {

    v59 = v35;
  }

  if (!_mailboxIdentifiersJSONArray)
  {

    v59 = v35;
  }

  if (!jsonDictionary)
  {

    v59 = v35;
  }

  if (!_accountHandlesJSONArray)
  {

    v59 = v35;
  }

  if (!securityMethod)
  {

    v59 = v35;
  }

  if (!textContent)
  {
  }

  if (!v120)
  {
  }

  if (!v121)
  {
  }

  if (!htmlContentData)
  {
  }

  if (!subject)
  {
  }

  if (!_headersJSONArray)
  {
  }

  if (!bccField)
  {
  }

  if (!ccField)
  {
  }

  if (!toField)
  {
  }

  if (fromField)
  {
    if (v89)
    {
      goto LABEL_176;
    }
  }

  else
  {

    if (v89)
    {
LABEL_176:
      if (v31)
      {
        goto LABEL_177;
      }

      goto LABEL_185;
    }
  }

  if (v31)
  {
LABEL_177:
    if (v94)
    {
      goto LABEL_178;
    }

    goto LABEL_186;
  }

LABEL_185:

  if (v94)
  {
LABEL_178:
    if (v95)
    {
      goto LABEL_179;
    }

LABEL_187:

    if (v33)
    {
      goto LABEL_180;
    }

    goto LABEL_188;
  }

LABEL_186:

  if (!v95)
  {
    goto LABEL_187;
  }

LABEL_179:
  if (v33)
  {
    goto LABEL_180;
  }

LABEL_188:

LABEL_180:

  return v88;
}

- (id)_bccHandlesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  bccHandles = [(BMProactiveHarvestingMail *)self bccHandles];
  v5 = [bccHandles countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(bccHandles);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [bccHandles countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_ccHandlesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  ccHandles = [(BMProactiveHarvestingMail *)self ccHandles];
  v5 = [ccHandles countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(ccHandles);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [ccHandles countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  toHandles = [(BMProactiveHarvestingMail *)self toHandles];
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

- (id)_attachmentsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  attachments = [(BMProactiveHarvestingMail *)self attachments];
  v5 = [attachments countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(attachments);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [attachments countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_mailboxIdentifiersJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  mailboxIdentifiers = [(BMProactiveHarvestingMail *)self mailboxIdentifiers];
  v5 = [mailboxIdentifiers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(mailboxIdentifiers);
        }

        [v3 addObject:*(*(&v10 + 1) + 8 * i)];
      }

      v6 = [mailboxIdentifiers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_accountHandlesJSONArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  accountHandles = [(BMProactiveHarvestingMail *)self accountHandles];
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

- (id)_headersJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  headers = [(BMProactiveHarvestingMail *)self headers];
  v5 = [headers countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(headers);
        }

        jsonDictionary = [*(*(&v11 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [headers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BMProactiveHarvestingMail)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v584[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"uniqueID"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v14 = v7;
        v15 = objc_alloc(MEMORY[0x1E696ABC0]);
        v16 = dictionaryCopy;
        v17 = *MEMORY[0x1E698F240];
        v583 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"uniqueID"];
        v584[0] = v18;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v584 forKeys:&v583 count:1];
        v20 = v15;
        v7 = v14;
        v21 = v17;
        dictionaryCopy = v16;
        v9 = v19;
        v8 = 0;
        v22 = 0;
        *error = [v20 initWithDomain:v21 code:2 userInfo:v19];
        goto LABEL_480;
      }

      v8 = 0;
      v22 = 0;
      goto LABEL_481;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"domainID"];
  v433 = v7;
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v24 = dictionaryCopy;
        v25 = *MEMORY[0x1E698F240];
        v581 = *MEMORY[0x1E696A578];
        errorCopy = error;
        error = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"domainID"];
        errorCopy2 = error;
        v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&errorCopy2 forKeys:&v581 count:1];
        v28 = v25;
        dictionaryCopy = v24;
        v432 = v27;
        v18 = 0;
        v22 = 0;
        *errorCopy = [v23 initWithDomain:v28 code:2 userInfo:?];
        goto LABEL_479;
      }

      v18 = 0;
      v22 = 0;
      goto LABEL_480;
    }

    v430 = v9;
  }

  else
  {
    v430 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
  v432 = v10;
  if (!v10 || (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v428 = 0;
    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
    v13 = objc_alloc(MEMORY[0x1E695DF00]);
    [v12 doubleValue];
    v428 = [v13 initWithTimeIntervalSinceReferenceDate:?];
LABEL_22:

    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v29 = v11;
    v428 = [v12 dateFromString:v29];

    goto LABEL_22;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      v435 = objc_alloc(MEMORY[0x1E696ABC0]);
      v114 = dictionaryCopy;
      v115 = *MEMORY[0x1E698F240];
      v579 = *MEMORY[0x1E696A578];
      selfCopy = self;
      v117 = objc_alloc(MEMORY[0x1E696AEC0]);
      v357 = objc_opt_class();
      v118 = v117;
      self = selfCopy;
      v119 = [v118 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", v357, @"absoluteTimestamp"];
      v580 = v119;
      v120 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v580 forKeys:&v579 count:1];
      v121 = v115;
      dictionaryCopy = v114;
      v56 = v119;
      v431 = v120;
      v122 = [v435 initWithDomain:v121 code:2 userInfo:?];
      errorCopy3 = error;
      error = 0;
      v22 = 0;
      *errorCopy3 = v122;
      v18 = v430;
      goto LABEL_478;
    }

    v22 = 0;
    v18 = v430;
    goto LABEL_479;
  }

  v428 = v11;
LABEL_23:
  v30 = [dictionaryCopy objectForKeyedSubscript:@"accountIdentifier"];
  v431 = v30;
  if (v30 && (v31 = v30, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v45 = objc_alloc(MEMORY[0x1E696ABC0]);
        v46 = dictionaryCopy;
        v47 = *MEMORY[0x1E698F240];
        v577 = *MEMORY[0x1E696A578];
        selfCopy2 = self;
        v49 = objc_alloc(MEMORY[0x1E696AEC0]);
        v352 = objc_opt_class();
        v50 = v49;
        self = selfCopy2;
        v51 = [v50 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v352, @"accountIdentifier"];
        v578 = v51;
        v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v578 forKeys:&v577 count:1];
        v53 = v47;
        dictionaryCopy = v46;
        v54 = v51;
        v427 = v52;
        v55 = [v45 initWithDomain:v53 code:2 userInfo:?];
        v56 = 0;
        v22 = 0;
        *error = v55;
        v18 = v430;
        error = v428;
        goto LABEL_477;
      }

      v56 = 0;
      v22 = 0;
      v18 = v430;
      error = v428;
      goto LABEL_478;
    }

    v423 = v31;
  }

  else
  {
    v423 = 0;
  }

  v32 = [dictionaryCopy objectForKeyedSubscript:@"messageIdentifier"];
  errorCopy4 = error;
  v427 = v32;
  if (v32 && (v33 = v32, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v57 = objc_alloc(MEMORY[0x1E696ABC0]);
        v58 = dictionaryCopy;
        v59 = *MEMORY[0x1E698F240];
        v575 = *MEMORY[0x1E696A578];
        selfCopy3 = self;
        v61 = objc_alloc(MEMORY[0x1E696AEC0]);
        v353 = objc_opt_class();
        v62 = v61;
        self = selfCopy3;
        v63 = [v62 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v353, @"messageIdentifier"];
        v576 = v63;
        v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v576 forKeys:&v575 count:1];
        v65 = v59;
        dictionaryCopy = v58;
        v422 = v64;
        v54 = 0;
        v22 = 0;
        *error = [v57 initWithDomain:v65 code:2 userInfo:?];
        v18 = v430;
        error = v428;
        v56 = v423;
        goto LABEL_476;
      }

      v54 = 0;
      v22 = 0;
      v18 = v430;
      error = v428;
      v56 = v423;
      goto LABEL_477;
    }

    v420 = v33;
  }

  else
  {
    v420 = 0;
  }

  v34 = [dictionaryCopy objectForKeyedSubscript:@"fromField"];
  v422 = v34;
  if (v34 && (v35 = v34, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (errorCopy4)
      {
        v66 = objc_alloc(MEMORY[0x1E696ABC0]);
        v67 = dictionaryCopy;
        v68 = *MEMORY[0x1E698F240];
        v573 = *MEMORY[0x1E696A578];
        selfCopy4 = self;
        v70 = objc_alloc(MEMORY[0x1E696AEC0]);
        v354 = objc_opt_class();
        v71 = v70;
        self = selfCopy4;
        v421 = [v71 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v354, @"fromField"];
        v574 = v421;
        v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v574 forKeys:&v573 count:1];
        v73 = v68;
        dictionaryCopy = v67;
        v419 = v72;
        v63 = 0;
        v22 = 0;
        *errorCopy4 = [v66 initWithDomain:v73 code:2 userInfo:?];
        v18 = v430;
        error = v428;
        v56 = v423;
        v54 = v420;
        goto LABEL_475;
      }

      v63 = 0;
      v22 = 0;
      v18 = v430;
      error = v428;
      v56 = v423;
      v54 = v420;
      goto LABEL_476;
    }

    v424 = v35;
  }

  else
  {
    v424 = 0;
  }

  v36 = [dictionaryCopy objectForKeyedSubscript:@"toField"];
  v419 = v36;
  if (v36 && (v37 = v36, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!errorCopy4)
      {
        v421 = 0;
        v22 = 0;
        v18 = v430;
        error = v428;
        v56 = v423;
        v54 = v420;
        v63 = v424;
        goto LABEL_475;
      }

      v74 = objc_alloc(MEMORY[0x1E696ABC0]);
      v75 = dictionaryCopy;
      v76 = *MEMORY[0x1E698F240];
      v571 = *MEMORY[0x1E696A578];
      selfCopy5 = self;
      v78 = objc_alloc(MEMORY[0x1E696AEC0]);
      v355 = objc_opt_class();
      v79 = v78;
      self = selfCopy5;
      v417 = [v79 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v355, @"toField"];
      v572 = v417;
      v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v572 forKeys:&v571 count:1];
      v81 = v76;
      dictionaryCopy = v75;
      v418 = v80;
      v82 = [v74 initWithDomain:v81 code:2 userInfo:?];
      v421 = 0;
      v22 = 0;
      *errorCopy4 = v82;
      goto LABEL_132;
    }

    v421 = v37;
  }

  else
  {
    v421 = 0;
  }

  v38 = [dictionaryCopy objectForKeyedSubscript:@"ccField"];
  v418 = v38;
  if (v38)
  {
    v39 = v38;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v417 = v39;
        goto LABEL_38;
      }

      if (errorCopy4)
      {
        v83 = objc_alloc(MEMORY[0x1E696ABC0]);
        v84 = dictionaryCopy;
        v85 = *MEMORY[0x1E698F240];
        v569 = *MEMORY[0x1E696A578];
        selfCopy6 = self;
        v87 = objc_alloc(MEMORY[0x1E696AEC0]);
        v356 = objc_opt_class();
        v88 = v87;
        self = selfCopy6;
        v415 = [v88 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v356, @"ccField"];
        v570 = v415;
        v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v570 forKeys:&v569 count:1];
        v90 = v85;
        dictionaryCopy = v84;
        v416 = v89;
        v417 = 0;
        v22 = 0;
        *errorCopy4 = [v83 initWithDomain:v90 code:2 userInfo:?];
        v18 = v430;
        error = v428;
        v56 = v423;
        v54 = v420;
        goto LABEL_473;
      }

      v417 = 0;
      v22 = 0;
LABEL_132:
      v18 = v430;
      error = v428;
      v56 = v423;
      v54 = v420;
      goto LABEL_474;
    }
  }

  v417 = 0;
LABEL_38:
  v429 = dictionaryCopy;
  v40 = [dictionaryCopy objectForKeyedSubscript:@"bccField"];
  selfCopy7 = self;
  v414 = v9;
  v416 = v40;
  if (v40 && (v41 = v40, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (errorCopy4)
      {
        v102 = objc_alloc(MEMORY[0x1E696ABC0]);
        v103 = *MEMORY[0x1E698F240];
        v567 = *MEMORY[0x1E696A578];
        v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bccField"];
        v568 = v42;
        v434 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v568 forKeys:&v567 count:1];
        v415 = 0;
        v22 = 0;
        *errorCopy4 = [v102 initWithDomain:v103 code:2 userInfo:?];
        v18 = v430;
        error = v428;
        v56 = v423;
        v54 = v420;
        goto LABEL_471;
      }

      v415 = 0;
      v22 = 0;
      v18 = v430;
      error = v428;
      v56 = v423;
      v54 = v420;
      dictionaryCopy = v429;
      goto LABEL_473;
    }

    v415 = v41;
  }

  else
  {
    v415 = 0;
  }

  v42 = [v429 objectForKeyedSubscript:@"headers"];
  null = [MEMORY[0x1E695DFB0] null];
  v44 = [v42 isEqual:null];

  if (v44)
  {
    v412 = v8;

    v42 = 0;
  }

  else
  {
    if (v42)
    {
      objc_opt_class();
      dictionaryCopy = v429;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy4)
        {
          v22 = 0;
          v18 = v430;
          error = v428;
          v56 = v423;
          v54 = v420;
          goto LABEL_472;
        }

        v112 = objc_alloc(MEMORY[0x1E696ABC0]);
        v113 = *MEMORY[0x1E698F240];
        v565 = *MEMORY[0x1E696A578];
        v434 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"headers"];
        v566 = v434;
        v111 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v566 forKeys:&v565 count:1];
        v22 = 0;
        *errorCopy4 = [v112 initWithDomain:v113 code:2 userInfo:v111];
        goto LABEL_103;
      }

      v412 = v8;
      goto LABEL_74;
    }

    v412 = v8;
  }

  dictionaryCopy = v429;
LABEL_74:
  v434 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v42, "count")}];
  v468 = 0u;
  v469 = 0u;
  v470 = 0u;
  v471 = 0u;
  v91 = v42;
  v92 = [v91 countByEnumeratingWithState:&v468 objects:v564 count:16];
  if (!v92)
  {
    goto LABEL_84;
  }

  v93 = v92;
  v94 = *v469;
  do
  {
    for (i = 0; i != v93; ++i)
    {
      if (*v469 != v94)
      {
        objc_enumerationMutation(v91);
      }

      v96 = *(*(&v468 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v104 = errorCopy4;
        if (errorCopy4)
        {
          v105 = objc_alloc(MEMORY[0x1E696ABC0]);
          v106 = *MEMORY[0x1E698F240];
          v562 = *MEMORY[0x1E696A578];
          v97 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"headers"];
          v563 = v97;
          v107 = MEMORY[0x1E695DF20];
          v108 = &v563;
          v109 = &v562;
          goto LABEL_93;
        }

LABEL_102:
        v22 = 0;
        v42 = v91;
        v111 = v91;
        v8 = v412;
LABEL_103:
        v18 = v430;
        error = v428;
        v56 = v423;
        v54 = v420;
        goto LABEL_470;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v104 = errorCopy4;
        if (!errorCopy4)
        {
          goto LABEL_102;
        }

        v105 = objc_alloc(MEMORY[0x1E696ABC0]);
        v106 = *MEMORY[0x1E698F240];
        v560 = *MEMORY[0x1E696A578];
        v97 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"headers"];
        v561 = v97;
        v107 = MEMORY[0x1E695DF20];
        v108 = &v561;
        v109 = &v560;
LABEL_93:
        v411 = [v107 dictionaryWithObjects:v108 forKeys:v109 count:1];
        v22 = 0;
        *v104 = [v105 initWithDomain:v106 code:2 userInfo:?];
LABEL_97:
        v111 = v91;
        v8 = v412;
        v18 = v430;
        error = v428;
        v56 = v423;
        v54 = v420;
        goto LABEL_468;
      }

      v97 = v96;
      v98 = [BMProactiveHarvestingMailHeaderEntry alloc];
      v467 = 0;
      v99 = [(BMProactiveHarvestingMailHeaderEntry *)v98 initWithJSONDictionary:v97 error:&v467];
      v100 = v467;
      if (v100)
      {
        v411 = v100;
        if (errorCopy4)
        {
          v110 = v100;
          *errorCopy4 = v411;
        }

        v22 = 0;
        goto LABEL_97;
      }

      [v434 addObject:v99];
    }

    v93 = [v91 countByEnumeratingWithState:&v468 objects:v564 count:16];
    dictionaryCopy = v429;
  }

  while (v93);
LABEL_84:

  v97 = [dictionaryCopy objectForKeyedSubscript:@"subject"];
  if (v97)
  {
    objc_opt_class();
    v101 = errorCopy4;
    if (objc_opt_isKindOfClass())
    {
      v407 = 0;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy4)
        {
          v139 = objc_alloc(MEMORY[0x1E696ABC0]);
          v140 = *MEMORY[0x1E698F240];
          v558 = *MEMORY[0x1E696A578];
          v411 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"subject"];
          v559 = v411;
          v124 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v559 forKeys:&v558 count:1];
          v111 = 0;
          v22 = 0;
          *errorCopy4 = [v139 initWithDomain:v140 code:2 userInfo:v124];
          v18 = v430;
          error = v428;
          v56 = v423;
          v54 = v420;
          goto LABEL_467;
        }

        v111 = 0;
        v22 = 0;
        v8 = v412;
        v18 = v430;
        error = v428;
        v56 = v423;
        v54 = v420;
        goto LABEL_469;
      }

      v407 = v97;
    }
  }

  else
  {
    v407 = 0;
    v101 = errorCopy4;
  }

  v124 = [v429 objectForKeyedSubscript:@"htmlContentData"];
  if (v124)
  {
    objc_opt_class();
    v125 = v421;
    if (objc_opt_isKindOfClass())
    {
      v411 = 0;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v101)
        {
          v141 = objc_alloc(MEMORY[0x1E696ABC0]);
          v142 = *MEMORY[0x1E698F240];
          v556 = *MEMORY[0x1E696A578];
          v406 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"htmlContentData"];
          v557 = v406;
          v405 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v557 forKeys:&v556 count:1];
          v411 = 0;
          v22 = 0;
          *v101 = [v141 initWithDomain:v142 code:2 userInfo:?];
          v18 = v430;
          error = v428;
          v56 = v423;
          v54 = v420;
          v111 = v407;
          goto LABEL_466;
        }

        v411 = 0;
        v22 = 0;
        v18 = v430;
        error = v428;
        v56 = v423;
        v54 = v420;
        v111 = v407;
        goto LABEL_467;
      }

      v411 = v124;
    }
  }

  else
  {
    v411 = 0;
    v125 = v421;
  }

  v126 = [v429 objectForKeyedSubscript:@"isFullyDownloaded"];
  v111 = v407;
  v421 = v125;
  v405 = v126;
  if (v126)
  {
    v127 = v126;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v406 = v127;
        goto LABEL_120;
      }

      if (!v101)
      {
        v406 = 0;
        v22 = 0;
        v18 = v430;
        error = v428;
        v56 = v423;
        v54 = v420;
        goto LABEL_466;
      }

      v143 = objc_alloc(MEMORY[0x1E696ABC0]);
      v144 = *MEMORY[0x1E698F240];
      v554 = *MEMORY[0x1E696A578];
      v403 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isFullyDownloaded"];
      v555 = v403;
      v404 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v555 forKeys:&v554 count:1];
      v145 = [v143 initWithDomain:v144 code:2 userInfo:?];
      v406 = 0;
      v22 = 0;
      *v101 = v145;
      goto LABEL_223;
    }
  }

  v406 = 0;
LABEL_120:
  v128 = [v429 objectForKeyedSubscript:@"htmlContent"];
  v404 = v128;
  if (v128)
  {
    v129 = v128;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v130 = v129;
        goto LABEL_123;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v130 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v129 options:0];
        if (v130)
        {
          goto LABEL_123;
        }

        if (v101)
        {
          v146 = objc_alloc(MEMORY[0x1E696ABC0]);
          v147 = *MEMORY[0x1E698F240];
          v552 = *MEMORY[0x1E696A578];
          v401 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"htmlContent"];
          v553 = v401;
          v148 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v553 forKeys:&v552 count:1];
          v149 = v146;
LABEL_190:
          v402 = v148;
          v403 = 0;
          v22 = 0;
          *v101 = [v149 initWithDomain:v147 code:2 userInfo:?];
          goto LABEL_217;
        }
      }

      else if (v101)
      {
        v174 = objc_alloc(MEMORY[0x1E696ABC0]);
        v147 = *MEMORY[0x1E698F240];
        v550 = *MEMORY[0x1E696A578];
        v401 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"htmlContent"];
        v551 = v401;
        v148 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v551 forKeys:&v550 count:1];
        v149 = v174;
        goto LABEL_190;
      }

      v403 = 0;
      v22 = 0;
LABEL_223:
      v18 = v430;
      error = v428;
      v56 = v423;
      v54 = v420;
      goto LABEL_465;
    }
  }

  v130 = 0;
LABEL_123:
  v131 = [v429 objectForKeyedSubscript:@"textContent"];
  v402 = v131;
  v403 = v130;
  if (v131)
  {
    v132 = v131;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v401 = v132;
        goto LABEL_126;
      }

      if (v101)
      {
        v150 = objc_alloc(MEMORY[0x1E696ABC0]);
        v151 = *MEMORY[0x1E698F240];
        v548 = *MEMORY[0x1E696A578];
        v399 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"textContent"];
        v549 = v399;
        v400 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v549 forKeys:&v548 count:1];
        v152 = [v150 initWithDomain:v151 code:2 userInfo:?];
        v401 = 0;
        v22 = 0;
        *v101 = v152;
LABEL_219:
        v18 = v430;
        error = v428;
        v56 = v423;
        v54 = v420;
        goto LABEL_463;
      }

      v401 = 0;
      v22 = 0;
LABEL_217:
      v18 = v430;
      error = v428;
      v56 = v423;
      v54 = v420;
      goto LABEL_464;
    }
  }

  v401 = 0;
LABEL_126:
  v133 = [v429 objectForKeyedSubscript:@"securityMethod"];
  v400 = v133;
  if (!v133 || (v134 = v133, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v399 = 0;
    goto LABEL_129;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v101)
    {
      v169 = objc_alloc(MEMORY[0x1E696ABC0]);
      v170 = *MEMORY[0x1E698F240];
      v546 = *MEMORY[0x1E696A578];
      obj = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"securityMethod"];
      v547 = obj;
      v410 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v547 forKeys:&v546 count:1];
      v171 = [v169 initWithDomain:v170 code:2 userInfo:?];
      v399 = 0;
      v22 = 0;
      *v101 = v171;
      v18 = v430;
      error = v428;
      v56 = v423;
      v54 = v420;

      goto LABEL_462;
    }

    v399 = 0;
    v22 = 0;
    goto LABEL_219;
  }

  v399 = v134;
LABEL_129:
  v135 = [v429 objectForKeyedSubscript:@"accountHandles"];
  null2 = [MEMORY[0x1E695DFB0] null];
  v137 = [v135 isEqual:null2];

  if (v137)
  {
    v394 = v124;

    goto LABEL_160;
  }

  if (v135)
  {
    objc_opt_class();
    obj = v135;
    if (objc_opt_isKindOfClass())
    {
      v394 = v124;
      v138 = v135;
      goto LABEL_161;
    }

    if (!v101)
    {
      v22 = 0;
      v18 = v430;
      error = v428;
      v56 = v423;
      v54 = v420;
      goto LABEL_462;
    }

    v172 = objc_alloc(MEMORY[0x1E696ABC0]);
    v173 = *MEMORY[0x1E698F240];
    v544 = *MEMORY[0x1E696A578];
    v409 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"accountHandles"];
    v545 = v409;
    v396 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v545 forKeys:&v544 count:1];
    v22 = 0;
    *v101 = [v172 initWithDomain:v173 code:2 userInfo:?];
LABEL_185:
    v18 = v430;
    error = v428;
    v56 = v423;
    v54 = v420;
    goto LABEL_460;
  }

  v394 = v124;
LABEL_160:
  v138 = 0;
LABEL_161:
  v409 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v138, "count")}];
  v463 = 0u;
  v464 = 0u;
  v465 = 0u;
  v466 = 0u;
  obj = v138;
  v153 = [obj countByEnumeratingWithState:&v463 objects:v543 count:16];
  if (v153)
  {
    v154 = v153;
    v155 = *v464;
    v111 = v407;
    do
    {
      for (j = 0; j != v154; ++j)
      {
        if (*v464 != v155)
        {
          objc_enumerationMutation(obj);
        }

        v157 = *(*(&v463 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (errorCopy4)
          {
            v164 = objc_alloc(MEMORY[0x1E696ABC0]);
            v165 = *MEMORY[0x1E698F240];
            v541 = *MEMORY[0x1E696A578];
            v393 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"accountHandles"];
            v542 = v393;
            v166 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v542 forKeys:&v541 count:1];
            v167 = v164;
LABEL_179:
            v398 = v166;
            v18 = v430;
            error = v428;
            v56 = v423;
            v54 = v420;
            v124 = v394;
            v22 = 0;
            *errorCopy4 = [v167 initWithDomain:v165 code:2 userInfo:?];
            v396 = obj;
            v111 = v407;
            goto LABEL_459;
          }

LABEL_180:
          v22 = 0;
          v18 = v430;
          error = v428;
          v56 = v423;
          v54 = v420;
          v111 = v407;
          v124 = v394;

          goto LABEL_461;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (errorCopy4)
          {
            v168 = objc_alloc(MEMORY[0x1E696ABC0]);
            v165 = *MEMORY[0x1E698F240];
            v539 = *MEMORY[0x1E696A578];
            v393 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"accountHandles"];
            v540 = v393;
            v166 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v540 forKeys:&v539 count:1];
            v167 = v168;
            goto LABEL_179;
          }

          goto LABEL_180;
        }

        v158 = v157;
        [v409 addObject:v158];
      }

      v154 = [obj countByEnumeratingWithState:&v463 objects:v543 count:16];
      v101 = errorCopy4;
    }

    while (v154);
  }

  v159 = [v429 objectForKeyedSubscript:@"replyTo"];
  v396 = v159;
  if (!v159 || (v160 = v159, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v393 = 0;
    goto LABEL_173;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v124 = v394;
    if (!v101)
    {
      v22 = 0;
      goto LABEL_185;
    }

    v197 = objc_alloc(MEMORY[0x1E696ABC0]);
    v198 = *MEMORY[0x1E698F240];
    v537 = *MEMORY[0x1E696A578];
    v393 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"replyTo"];
    v538 = v393;
    v398 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v538 forKeys:&v537 count:1];
    v199 = [v197 initWithDomain:v198 code:2 userInfo:?];
    v22 = 0;
    *v101 = v199;
    goto LABEL_260;
  }

  v188 = v160;
  v189 = [BMProactiveHarvestingNamedHandle alloc];
  v462 = 0;
  v393 = [(BMProactiveHarvestingNamedHandle *)v189 initWithJSONDictionary:v188 error:&v462];
  v190 = v462;
  if (v190)
  {
    v398 = v188;
    v18 = v430;
    v191 = v101;
    error = v428;
    v56 = v423;
    v54 = v420;
    if (v191)
    {
      v190 = v190;
      *v191 = v190;
    }

    v22 = 0;
    v396 = v398;
    v124 = v394;
    goto LABEL_459;
  }

LABEL_173:
  v161 = [v429 objectForKeyedSubscript:@"mailboxIdentifiers"];
  null3 = [MEMORY[0x1E695DFB0] null];
  v163 = [v161 isEqual:null3];

  if (v163)
  {

    v161 = 0;
    goto LABEL_193;
  }

  v124 = v394;
  if (v161)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v398 = v161;
      if (v101)
      {
        v200 = objc_alloc(MEMORY[0x1E696ABC0]);
        v201 = *MEMORY[0x1E698F240];
        v535 = *MEMORY[0x1E696A578];
        v397 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"mailboxIdentifiers"];
        v536 = v397;
        v392 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v536 forKeys:&v535 count:1];
        v22 = 0;
        *v101 = [v200 initWithDomain:v201 code:2 userInfo:?];
LABEL_233:
        v18 = v430;
        error = v428;
        v56 = v423;
        v54 = v420;
        goto LABEL_457;
      }

      v22 = 0;
LABEL_260:
      v18 = v430;
      error = v428;
      v56 = v423;
      v54 = v420;
      goto LABEL_459;
    }
  }

LABEL_193:
  v397 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v161, "count")}];
  v458 = 0u;
  v459 = 0u;
  v460 = 0u;
  v461 = 0u;
  v398 = v161;
  v175 = [v398 countByEnumeratingWithState:&v458 objects:v534 count:16];
  if (v175)
  {
    v176 = v175;
    v177 = *v459;
    v111 = v407;
    do
    {
      for (k = 0; k != v176; ++k)
      {
        if (*v459 != v177)
        {
          objc_enumerationMutation(v398);
        }

        v179 = *(*(&v458 + 1) + 8 * k);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (errorCopy4)
          {
            v192 = objc_alloc(MEMORY[0x1E696ABC0]);
            v193 = *MEMORY[0x1E698F240];
            v532 = *MEMORY[0x1E696A578];
            v389 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"mailboxIdentifiers"];
            v533 = v389;
            v194 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v533 forKeys:&v532 count:1];
            v195 = v192;
LABEL_226:
            v386 = v194;
            v18 = v430;
            error = v428;
            v56 = v423;
            v54 = v420;
            v124 = v394;
            v22 = 0;
            *errorCopy4 = [v195 initWithDomain:v193 code:2 userInfo:?];
            v392 = v398;
            v111 = v407;
            goto LABEL_455;
          }

LABEL_230:
          v22 = 0;
          v18 = v430;
          error = v428;
          v56 = v423;
          v54 = v420;
          v111 = v407;
          v124 = v394;

          goto LABEL_458;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (errorCopy4)
          {
            v196 = objc_alloc(MEMORY[0x1E696ABC0]);
            v193 = *MEMORY[0x1E698F240];
            v530 = *MEMORY[0x1E696A578];
            v389 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"mailboxIdentifiers"];
            v531 = v389;
            v194 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v531 forKeys:&v530 count:1];
            v195 = v196;
            goto LABEL_226;
          }

          goto LABEL_230;
        }

        v180 = v179;
        [v397 addObject:v180];
      }

      v176 = [v398 countByEnumeratingWithState:&v458 objects:v534 count:16];
      v101 = errorCopy4;
    }

    while (v176);
  }

  v181 = [v429 objectForKeyedSubscript:@"listID"];
  v392 = v181;
  if (!v181 || (v182 = v181, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v389 = 0;
    v124 = v394;
    goto LABEL_205;
  }

  objc_opt_class();
  v124 = v394;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v101)
    {
      v426 = objc_alloc(MEMORY[0x1E696ABC0]);
      v218 = *MEMORY[0x1E698F240];
      v528 = *MEMORY[0x1E696A578];
      v389 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"listID"];
      v529 = v389;
      v219 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v529 forKeys:&v528 count:1];
      v220 = [v426 initWithDomain:v218 code:2 userInfo:v219];
      v22 = 0;
      *v101 = v220;
      v217 = v219;
      v18 = v430;
      error = v428;
      v56 = v423;
      v54 = v420;
      goto LABEL_456;
    }

    v22 = 0;
    goto LABEL_233;
  }

  v213 = v182;
  v214 = [BMProactiveHarvestingNamedHandle alloc];
  v457 = 0;
  v387 = v213;
  v389 = [(BMProactiveHarvestingNamedHandle *)v214 initWithJSONDictionary:v213 error:&v457];
  v215 = v457;
  if (v215)
  {
    v18 = v430;
    v216 = v101;
    error = v428;
    v56 = v423;
    v54 = v420;
    if (v216)
    {
      v215 = v215;
      *v216 = v215;
    }

    v22 = 0;
    v217 = v387;
    v392 = v387;
    v124 = v394;
    goto LABEL_456;
  }

LABEL_205:
  v183 = [v429 objectForKeyedSubscript:@"accountType"];
  v385 = v183;
  if (v183 && (v184 = v183, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (v101)
      {
        v221 = objc_alloc(MEMORY[0x1E696ABC0]);
        v222 = *MEMORY[0x1E698F240];
        v526 = *MEMORY[0x1E696A578];
        v388 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"accountType"];
        v527 = v388;
        v391 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v527 forKeys:&v526 count:1];
        v223 = [v221 initWithDomain:v222 code:2 userInfo:?];
        v386 = 0;
        v22 = 0;
        *v101 = v223;
        v18 = v430;
        error = v428;
        v56 = v423;
        v54 = v420;

        goto LABEL_453;
      }

      v386 = 0;
      v22 = 0;
      v18 = v430;
      error = v428;
      v56 = v423;
      v54 = v420;
      goto LABEL_454;
    }

    v386 = v184;
  }

  else
  {
    v386 = 0;
  }

  v185 = [v429 objectForKeyedSubscript:@"attachments"];
  null4 = [MEMORY[0x1E695DFB0] null];
  v187 = [v185 isEqual:null4];

  if (v187)
  {
    v395 = v124;

    v185 = 0;
  }

  else
  {
    if (v185)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v388 = v185;
        if (v101)
        {
          v230 = objc_alloc(MEMORY[0x1E696ABC0]);
          v231 = *MEMORY[0x1E698F240];
          v524 = *MEMORY[0x1E696A578];
          v390 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"attachments"];
          v525 = v390;
          v232 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v525 forKeys:&v524 count:1];
          v233 = v231;
          v234 = v232;
          v22 = 0;
          *v101 = [v230 initWithDomain:v233 code:2 userInfo:v232];
          v18 = v430;
          error = v428;
          v56 = v423;
          v54 = v420;
          goto LABEL_452;
        }

        v22 = 0;
        v18 = v430;
        error = v428;
        v56 = v423;
        v54 = v420;
        goto LABEL_453;
      }
    }

    v395 = v124;
  }

  v390 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v185, "count")}];
  v453 = 0u;
  v454 = 0u;
  v455 = 0u;
  v456 = 0u;
  v388 = v185;
  v202 = [v388 countByEnumeratingWithState:&v453 objects:v523 count:16];
  if (v202)
  {
    v203 = v202;
    v204 = *v454;
    do
    {
      for (m = 0; m != v203; ++m)
      {
        if (*v454 != v204)
        {
          objc_enumerationMutation(v388);
        }

        v206 = *(*(&v453 + 1) + 8 * m);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v224 = errorCopy4;
          if (errorCopy4)
          {
            v225 = objc_alloc(MEMORY[0x1E696ABC0]);
            v226 = *MEMORY[0x1E698F240];
            v521 = *MEMORY[0x1E696A578];
            v381 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"attachments"];
            v522 = v381;
            v227 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v522 forKeys:&v521 count:1];
            v228 = v225;
            goto LABEL_269;
          }

LABEL_278:
          v22 = 0;
          v234 = v388;
          v18 = v430;
          error = v428;
          v56 = v423;
          v54 = v420;
          v111 = v407;
          v124 = v395;
          goto LABEL_452;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v224 = errorCopy4;
          if (!errorCopy4)
          {
            goto LABEL_278;
          }

          v229 = objc_alloc(MEMORY[0x1E696ABC0]);
          v226 = *MEMORY[0x1E698F240];
          v519 = *MEMORY[0x1E696A578];
          v381 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"attachments"];
          v520 = v381;
          v227 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v520 forKeys:&v519 count:1];
          v228 = v229;
LABEL_269:
          v22 = 0;
          *v224 = [v228 initWithDomain:v226 code:2 userInfo:v227];
LABEL_273:
          v383 = v388;
LABEL_274:
          v18 = v430;
          error = v428;
          v56 = v423;
          v54 = v420;
          v111 = v407;
LABEL_275:
          v124 = v395;
          goto LABEL_450;
        }

        v207 = v206;
        v208 = [BMProactiveHarvestingContentAttachment alloc];
        v452 = 0;
        v209 = [(BMProactiveHarvestingContentAttachment *)v208 initWithJSONDictionary:v207 error:&v452];
        v210 = v452;
        if (v210)
        {
          v381 = v207;
          if (errorCopy4)
          {
            v210 = v210;
            *errorCopy4 = v210;
          }

          v227 = v210;

          v22 = 0;
          goto LABEL_273;
        }

        [v390 addObject:v209];
      }

      v203 = [v388 countByEnumeratingWithState:&v453 objects:v523 count:16];
      v111 = v407;
    }

    while (v203);
  }

  v383 = [v429 objectForKeyedSubscript:@"fromHandle"];
  if (v383)
  {
    objc_opt_class();
    v211 = v412;
    if (objc_opt_isKindOfClass())
    {
      v212 = 0;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy4)
        {
          v22 = 0;
          v18 = v430;
          error = v428;
          v56 = v423;
          v54 = v420;
          v124 = v395;
          goto LABEL_451;
        }

        v254 = objc_alloc(MEMORY[0x1E696ABC0]);
        v255 = *MEMORY[0x1E698F240];
        v517 = *MEMORY[0x1E696A578];
        v381 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"fromHandle"];
        v518 = v381;
        v227 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v518 forKeys:&v517 count:1];
        v256 = [v254 initWithDomain:v255 code:2 userInfo:v227];
        v22 = 0;
        *errorCopy4 = v256;
        v18 = v430;
        error = v428;
        v56 = v423;
        v54 = v420;
        goto LABEL_275;
      }

      v251 = v383;
      v252 = [BMProactiveHarvestingNamedHandle alloc];
      v451 = 0;
      v227 = v251;
      v381 = [(BMProactiveHarvestingNamedHandle *)v252 initWithJSONDictionary:v251 error:&v451];
      v253 = v451;
      if (v253)
      {
        if (errorCopy4)
        {
          v253 = v253;
          *errorCopy4 = v253;
        }

        v22 = 0;
        v383 = v251;
        goto LABEL_274;
      }

      v212 = v381;
    }
  }

  else
  {
    v212 = 0;
    v211 = v412;
  }

  v381 = v212;
  v235 = [v429 objectForKeyedSubscript:@"toHandles"];
  null5 = [MEMORY[0x1E695DFB0] null];
  v237 = [v235 isEqual:null5];

  v412 = v211;
  if (v237)
  {

    v235 = 0;
  }

  else if (v235)
  {
    objc_opt_class();
    v382 = v235;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!errorCopy4)
      {
        v22 = 0;
        v18 = v430;
        error = v428;
        v56 = v423;
        v54 = v420;
        v111 = v407;
        v124 = v395;
        goto LABEL_449;
      }

      v275 = objc_alloc(MEMORY[0x1E696ABC0]);
      v276 = *MEMORY[0x1E698F240];
      v515 = *MEMORY[0x1E696A578];
      v384 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"toHandles"];
      v516 = v384;
      v277 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v516 forKeys:&v515 count:1];
      v278 = v276;
      v250 = v277;
      v22 = 0;
      *errorCopy4 = [v275 initWithDomain:v278 code:2 userInfo:v277];
      goto LABEL_333;
    }
  }

  v384 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v235, "count")}];
  v447 = 0u;
  v448 = 0u;
  v449 = 0u;
  v450 = 0u;
  v382 = v235;
  v238 = [v382 countByEnumeratingWithState:&v447 objects:v514 count:16];
  if (!v238)
  {
    goto LABEL_294;
  }

  v239 = v238;
  v240 = *v448;
  do
  {
    for (n = 0; n != v239; ++n)
    {
      if (*v448 != v240)
      {
        objc_enumerationMutation(v382);
      }

      v242 = *(*(&v447 + 1) + 8 * n);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (errorCopy4)
        {
          v257 = objc_alloc(MEMORY[0x1E696ABC0]);
          v258 = *MEMORY[0x1E698F240];
          v512 = *MEMORY[0x1E696A578];
          v380 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"toHandles"];
          v513 = v380;
          v259 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v513 forKeys:&v512 count:1];
          v260 = v257;
          goto LABEL_311;
        }

LABEL_332:
        v22 = 0;
        v250 = v382;
LABEL_333:
        v18 = v430;
        error = v428;
        v56 = v423;
        v54 = v420;
LABEL_334:
        v111 = v407;
        v124 = v395;
        goto LABEL_448;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy4)
        {
          goto LABEL_332;
        }

        v261 = objc_alloc(MEMORY[0x1E696ABC0]);
        v258 = *MEMORY[0x1E698F240];
        v510 = *MEMORY[0x1E696A578];
        v380 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"toHandles"];
        v511 = v380;
        v259 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v511 forKeys:&v510 count:1];
        v260 = v261;
LABEL_311:
        v379 = v259;
        v22 = 0;
        *errorCopy4 = [v260 initWithDomain:v258 code:2 userInfo:?];
LABEL_315:
        v250 = v382;
        v18 = v430;
        error = v428;
        v56 = v423;
        v54 = v420;
        goto LABEL_447;
      }

      v243 = v242;
      v244 = [BMProactiveHarvestingNamedHandle alloc];
      v446 = 0;
      v245 = [(BMProactiveHarvestingNamedHandle *)v244 initWithJSONDictionary:v243 error:&v446];
      v246 = v446;
      if (v246)
      {
        v379 = v246;
        v380 = v243;
        if (errorCopy4)
        {
          *errorCopy4 = v246;
        }

        v22 = 0;
        goto LABEL_315;
      }

      [v384 addObject:v245];
    }

    v239 = [v382 countByEnumeratingWithState:&v447 objects:v514 count:16];
  }

  while (v239);
LABEL_294:
  v377 = v91;

  v247 = [v429 objectForKeyedSubscript:@"ccHandles"];
  null6 = [MEMORY[0x1E695DFB0] null];
  v249 = [v247 isEqual:null6];

  if (!v249)
  {
    v250 = v247;
    if (!v247)
    {
      goto LABEL_318;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_318;
    }

    if (errorCopy4)
    {
      v300 = objc_alloc(MEMORY[0x1E696ABC0]);
      v301 = *MEMORY[0x1E698F240];
      v508 = *MEMORY[0x1E696A578];
      v380 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"ccHandles"];
      v509 = v380;
      v379 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v509 forKeys:&v508 count:1];
      v22 = 0;
      *errorCopy4 = [v300 initWithDomain:v301 code:2 userInfo:?];
      goto LABEL_377;
    }

    v22 = 0;
    v18 = v430;
    error = v428;
    v56 = v423;
    v54 = v420;
    goto LABEL_334;
  }

  v250 = 0;
LABEL_318:
  v262 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v250, "count")}];
  v442 = 0u;
  v443 = 0u;
  v444 = 0u;
  v445 = 0u;
  v378 = v250;
  v263 = [v378 countByEnumeratingWithState:&v442 objects:v507 count:16];
  v380 = v262;
  if (!v263)
  {
    goto LABEL_328;
  }

  v264 = v263;
  v265 = *v443;
  do
  {
    for (ii = 0; ii != v264; ++ii)
    {
      if (*v443 != v265)
      {
        objc_enumerationMutation(v378);
      }

      v267 = *(*(&v442 + 1) + 8 * ii);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (errorCopy4)
        {
          v279 = objc_alloc(MEMORY[0x1E696ABC0]);
          v280 = *MEMORY[0x1E698F240];
          v505 = *MEMORY[0x1E696A578];
          v268 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"ccHandles"];
          v506 = v268;
          v281 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v506 forKeys:&v505 count:1];
          v282 = v279;
          goto LABEL_342;
        }

LABEL_376:
        v22 = 0;
        v250 = v378;
        v379 = v378;
LABEL_377:
        v18 = v430;
        error = v428;
        v56 = v423;
        v54 = v420;
        v91 = v377;
        goto LABEL_447;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!errorCopy4)
        {
          goto LABEL_376;
        }

        v283 = objc_alloc(MEMORY[0x1E696ABC0]);
        v280 = *MEMORY[0x1E698F240];
        v503 = *MEMORY[0x1E696A578];
        v268 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"ccHandles"];
        v504 = v268;
        v281 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v504 forKeys:&v503 count:1];
        v282 = v283;
LABEL_342:
        v284 = v281;
        v22 = 0;
        *errorCopy4 = [v282 initWithDomain:v280 code:2 userInfo:?];
LABEL_346:
        v379 = v378;
        goto LABEL_445;
      }

      v268 = v267;
      v269 = [BMProactiveHarvestingNamedHandle alloc];
      v441 = 0;
      v270 = [(BMProactiveHarvestingNamedHandle *)v269 initWithJSONDictionary:v268 error:&v441];
      v271 = v441;
      if (v271)
      {
        v284 = v271;
        if (errorCopy4)
        {
          v285 = v271;
          *errorCopy4 = v284;
        }

        v22 = 0;
        goto LABEL_346;
      }

      [v380 addObject:v270];
    }

    v264 = [v378 countByEnumeratingWithState:&v442 objects:v507 count:16];
  }

  while (v264);
LABEL_328:

  v272 = [v429 objectForKeyedSubscript:@"bccHandles"];
  null7 = [MEMORY[0x1E695DFB0] null];
  v379 = v272;
  v274 = [v272 isEqual:null7];

  if (v274)
  {

    goto LABEL_351;
  }

  if (v272)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (errorCopy4)
      {
        v286 = objc_alloc(MEMORY[0x1E696ABC0]);
        v287 = *MEMORY[0x1E698F240];
        v501 = *MEMORY[0x1E696A578];
        v268 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"bccHandles"];
        v502 = v268;
        v284 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v502 forKeys:&v501 count:1];
        v22 = 0;
        *errorCopy4 = [v286 initWithDomain:v287 code:2 userInfo:?];
        goto LABEL_445;
      }

      v22 = 0;
      goto LABEL_446;
    }
  }

  else
  {
LABEL_351:
    v379 = 0;
  }

  v268 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v379, "count")}];
  v437 = 0u;
  v438 = 0u;
  v439 = 0u;
  v440 = 0u;
  v379 = v379;
  v288 = [v379 countByEnumeratingWithState:&v437 objects:v500 count:16];
  if (!v288)
  {
    goto LABEL_362;
  }

  v289 = v288;
  v290 = *v438;
  while (2)
  {
    v291 = 0;
    while (2)
    {
      if (*v438 != v290)
      {
        objc_enumerationMutation(v379);
      }

      v292 = *(*(&v437 + 1) + 8 * v291);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (errorCopy4)
        {
          v302 = objc_alloc(MEMORY[0x1E696ABC0]);
          v303 = *MEMORY[0x1E698F240];
          v498 = *MEMORY[0x1E696A578];
          v297 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"bccHandles"];
          v499 = v297;
          v304 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v499 forKeys:&v498 count:1];
          v305 = v302;
LABEL_383:
          v299 = v304;
          v22 = 0;
          *errorCopy4 = [v305 initWithDomain:v303 code:2 userInfo:?];
LABEL_387:
          v284 = v379;
          goto LABEL_443;
        }

LABEL_388:
        v22 = 0;
        v284 = v379;
        goto LABEL_445;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy4)
        {
          v306 = objc_alloc(MEMORY[0x1E696ABC0]);
          v303 = *MEMORY[0x1E698F240];
          v496 = *MEMORY[0x1E696A578];
          v297 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"bccHandles"];
          v497 = v297;
          v304 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v497 forKeys:&v496 count:1];
          v305 = v306;
          goto LABEL_383;
        }

        goto LABEL_388;
      }

      v293 = v292;
      v294 = [BMProactiveHarvestingNamedHandle alloc];
      v436 = 0;
      v295 = [(BMProactiveHarvestingNamedHandle *)v294 initWithJSONDictionary:v293 error:&v436];
      v296 = v436;
      if (v296)
      {
        v299 = v296;
        v297 = v293;
        if (errorCopy4)
        {
          v307 = v296;
          *errorCopy4 = v299;
        }

        v22 = 0;
        goto LABEL_387;
      }

      [v268 addObject:v295];

      if (v289 != ++v291)
      {
        continue;
      }

      break;
    }

    v289 = [v379 countByEnumeratingWithState:&v437 objects:v500 count:16];
    if (v289)
    {
      continue;
    }

    break;
  }

LABEL_362:

  v297 = [v429 objectForKeyedSubscript:@"contentProtection"];
  if (v297 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v284 = v297;
      goto LABEL_365;
    }

    if (errorCopy4)
    {
      v310 = objc_alloc(MEMORY[0x1E696ABC0]);
      v311 = *MEMORY[0x1E698F240];
      v494 = *MEMORY[0x1E696A578];
      v299 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentProtection"];
      v495 = v299;
      v298 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v495 forKeys:&v494 count:1];
      v312 = [v310 initWithDomain:v311 code:2 userInfo:v298];
      v284 = 0;
      v22 = 0;
      *errorCopy4 = v312;
      goto LABEL_442;
    }

    v284 = 0;
    v22 = 0;
  }

  else
  {
    v284 = 0;
LABEL_365:
    v298 = [v429 objectForKeyedSubscript:@"personaId"];
    if (v298 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v299 = v298;
        goto LABEL_368;
      }

      if (errorCopy4)
      {
        v313 = objc_alloc(MEMORY[0x1E696ABC0]);
        v314 = *MEMORY[0x1E698F240];
        v492 = *MEMORY[0x1E696A578];
        v373 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"personaId"];
        v493 = v373;
        v376 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v493 forKeys:&v492 count:1];
        v315 = [v313 initWithDomain:v314 code:2 userInfo:?];
        v299 = 0;
        v22 = 0;
        *errorCopy4 = v315;
        goto LABEL_441;
      }

      v299 = 0;
      v22 = 0;
    }

    else
    {
      v299 = 0;
LABEL_368:
      v376 = [v429 objectForKeyedSubscript:@"conversationId"];
      if (v376 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v373 = v376;
          goto LABEL_371;
        }

        if (errorCopy4)
        {
          v316 = objc_alloc(MEMORY[0x1E696ABC0]);
          v317 = *MEMORY[0x1E698F240];
          v490 = *MEMORY[0x1E696A578];
          v371 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"conversationId"];
          v491 = v371;
          v375 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v491 forKeys:&v490 count:1];
          v318 = [v316 initWithDomain:v317 code:2 userInfo:?];
          v373 = 0;
          v22 = 0;
          *errorCopy4 = v318;
          goto LABEL_440;
        }

        v373 = 0;
        v22 = 0;
      }

      else
      {
        v373 = 0;
LABEL_371:
        v375 = [v429 objectForKeyedSubscript:@"dateReceived"];
        if (!v375 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v371 = 0;
LABEL_407:
          v374 = [v429 objectForKeyedSubscript:@"mailCategories"];
          if (v374 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v369 = v374;
              goto LABEL_410;
            }

            if (errorCopy4)
            {
              v323 = objc_alloc(MEMORY[0x1E696ABC0]);
              v324 = *MEMORY[0x1E698F240];
              v486 = *MEMORY[0x1E696A578];
              v368 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"mailCategories"];
              v487 = v368;
              v372 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v487 forKeys:&v486 count:1];
              v325 = [v323 initWithDomain:v324 code:2 userInfo:?];
              v369 = 0;
              v22 = 0;
              *errorCopy4 = v325;
              goto LABEL_438;
            }

            v369 = 0;
            v22 = 0;
          }

          else
          {
            v369 = 0;
LABEL_410:
            v372 = [v429 objectForKeyedSubscript:@"isNew"];
            if (v372 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v368 = v372;
                goto LABEL_413;
              }

              if (errorCopy4)
              {
                v326 = objc_alloc(MEMORY[0x1E696ABC0]);
                v327 = *MEMORY[0x1E698F240];
                v484 = *MEMORY[0x1E696A578];
                v366 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isNew"];
                v485 = v366;
                v370 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v485 forKeys:&v484 count:1];
                v328 = [v326 initWithDomain:v327 code:2 userInfo:?];
                v368 = 0;
                v22 = 0;
                *errorCopy4 = v328;
                goto LABEL_437;
              }

              v368 = 0;
              v22 = 0;
            }

            else
            {
              v368 = 0;
LABEL_413:
              v370 = [v429 objectForKeyedSubscript:@"isTwoFactorCode"];
              if (v370 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v366 = v370;
                  goto LABEL_416;
                }

                if (errorCopy4)
                {
                  v329 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v330 = *MEMORY[0x1E698F240];
                  v482 = *MEMORY[0x1E696A578];
                  v364 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isTwoFactorCode"];
                  v483 = v364;
                  v367 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v483 forKeys:&v482 count:1];
                  v331 = [v329 initWithDomain:v330 code:2 userInfo:?];
                  v366 = 0;
                  v22 = 0;
                  *errorCopy4 = v331;
                  goto LABEL_436;
                }

                v366 = 0;
                v22 = 0;
              }

              else
              {
                v366 = 0;
LABEL_416:
                v367 = [v429 objectForKeyedSubscript:@"isFromMe"];
                if (v367 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v364 = v367;
                    goto LABEL_419;
                  }

                  if (errorCopy4)
                  {
                    v332 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v333 = *MEMORY[0x1E698F240];
                    v480 = *MEMORY[0x1E696A578];
                    v362 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isFromMe"];
                    v481 = v362;
                    v365 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v481 forKeys:&v480 count:1];
                    v334 = [v332 initWithDomain:v333 code:2 userInfo:?];
                    v364 = 0;
                    v22 = 0;
                    *errorCopy4 = v334;
                    goto LABEL_435;
                  }

                  v364 = 0;
                  v22 = 0;
                }

                else
                {
                  v364 = 0;
LABEL_419:
                  v365 = [v429 objectForKeyedSubscript:@"isJunk"];
                  if (v365 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v362 = v365;
                      goto LABEL_422;
                    }

                    if (errorCopy4)
                    {
                      v335 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v336 = *MEMORY[0x1E698F240];
                      v478 = *MEMORY[0x1E696A578];
                      v360 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isJunk"];
                      v479 = v360;
                      v363 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v479 forKeys:&v478 count:1];
                      v337 = [v335 initWithDomain:v336 code:2 userInfo:?];
                      v362 = 0;
                      v22 = 0;
                      *errorCopy4 = v337;
                      goto LABEL_434;
                    }

                    v362 = 0;
                    v22 = 0;
                  }

                  else
                  {
                    v362 = 0;
LABEL_422:
                    v363 = [v429 objectForKeyedSubscript:@"isRead"];
                    if (v363 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v360 = v363;
                        goto LABEL_425;
                      }

                      if (errorCopy4)
                      {
                        v338 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v339 = *MEMORY[0x1E698F240];
                        v476 = *MEMORY[0x1E696A578];
                        v359 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isRead"];
                        v477 = v359;
                        v361 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v477 forKeys:&v476 count:1];
                        v340 = [v338 initWithDomain:v339 code:2 userInfo:?];
                        v360 = 0;
                        v22 = 0;
                        *errorCopy4 = v340;
                        goto LABEL_433;
                      }

                      v360 = 0;
                      v22 = 0;
                    }

                    else
                    {
                      v360 = 0;
LABEL_425:
                      v361 = [v429 objectForKeyedSubscript:@"isVIP"];
                      if (v361 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v359 = v361;
                          goto LABEL_428;
                        }

                        if (errorCopy4)
                        {
                          v341 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v342 = *MEMORY[0x1E698F240];
                          v474 = *MEMORY[0x1E696A578];
                          v321 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isVIP"];
                          v475 = v321;
                          v343 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v475 forKeys:&v474 count:1];
                          v344 = v341;
                          v320 = v343;
                          v345 = [v344 initWithDomain:v342 code:2 userInfo:?];
                          v359 = 0;
                          v22 = 0;
                          *errorCopy4 = v345;
                          goto LABEL_432;
                        }

                        v359 = 0;
                        v22 = 0;
                      }

                      else
                      {
                        v359 = 0;
LABEL_428:
                        v320 = [v429 objectForKeyedSubscript:@"isFlagged"];
                        if (!v320 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v321 = 0;
                          goto LABEL_431;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v321 = v320;
LABEL_431:
                          v22 = [(BMProactiveHarvestingMail *)selfCopy7 initWithUniqueID:v412 domainID:v430 absoluteTimestamp:v428 accountIdentifier:v423 messageIdentifier:v420 fromField:v424 toField:v421 ccField:v417 bccField:v415 headers:v434 subject:v407 htmlContentData:v411 isFullyDownloaded:v406 htmlContent:v403 textContent:v401 securityMethod:v399 accountHandles:v409 replyTo:v393 mailboxIdentifiers:v397 listID:v389 accountType:v386 attachments:v390 fromHandle:v381 toHandles:v384 ccHandles:v380 bccHandles:v268 contentProtection:v284 personaId:v299 conversationId:v373 dateReceived:v371 mailCategories:v369 isNew:v368 isTwoFactorCode:v366 isFromMe:v364 isJunk:v362 isRead:v360 isVIP:v359 isFlagged:v321];
                          selfCopy7 = v22;
                        }

                        else
                        {
                          if (errorCopy4)
                          {
                            v358 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v346 = *MEMORY[0x1E698F240];
                            v472 = *MEMORY[0x1E696A578];
                            v347 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isFlagged"];
                            v473 = v347;
                            v348 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v473 forKeys:&v472 count:1];
                            *errorCopy4 = [v358 initWithDomain:v346 code:2 userInfo:v348];
                          }

                          v321 = 0;
                          v22 = 0;
                        }

LABEL_432:
                      }

LABEL_433:
                    }

LABEL_434:
                  }

LABEL_435:
                }

LABEL_436:
              }

LABEL_437:
            }

LABEL_438:
          }

LABEL_439:

          goto LABEL_440;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v308 = v375;
          v309 = objc_alloc(MEMORY[0x1E695DF00]);
          [v308 doubleValue];
          v371 = [v309 initWithTimeIntervalSinceReferenceDate:?];
LABEL_406:

          goto LABEL_407;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v308 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v319 = v375;
          v371 = [v308 dateFromString:v319];

          goto LABEL_406;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v371 = v375;
          goto LABEL_407;
        }

        if (errorCopy4)
        {
          v349 = objc_alloc(MEMORY[0x1E696ABC0]);
          v350 = *MEMORY[0x1E698F240];
          v488 = *MEMORY[0x1E696A578];
          v369 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"dateReceived"];
          v489 = v369;
          v374 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v489 forKeys:&v488 count:1];
          v351 = [v349 initWithDomain:v350 code:2 userInfo:?];
          v371 = 0;
          v22 = 0;
          *errorCopy4 = v351;
          goto LABEL_439;
        }

        v371 = 0;
        v22 = 0;
LABEL_440:
      }

LABEL_441:
    }

LABEL_442:

LABEL_443:
  }

LABEL_445:
LABEL_446:
  v18 = v430;
  error = v428;
  v56 = v423;
  v54 = v420;
  v91 = v377;
  v250 = v378;
LABEL_447:
  v111 = v407;
  v124 = v395;

LABEL_448:
LABEL_449:
  v227 = v382;
LABEL_450:

LABEL_451:
  v234 = v383;
LABEL_452:

LABEL_453:
LABEL_454:

LABEL_455:
  v217 = v386;
LABEL_456:

LABEL_457:
LABEL_458:

LABEL_459:
LABEL_460:

LABEL_461:
LABEL_462:

LABEL_463:
LABEL_464:

LABEL_465:
LABEL_466:

LABEL_467:
  v8 = v412;
LABEL_468:

LABEL_469:
  v42 = v91;

LABEL_470:
  v9 = v414;
LABEL_471:
  dictionaryCopy = v429;

  self = selfCopy7;
LABEL_472:

LABEL_473:
LABEL_474:
  v63 = v424;

LABEL_475:
LABEL_476:

LABEL_477:
LABEL_478:

LABEL_479:
  v7 = v433;
LABEL_480:

LABEL_481:
  return v22;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMProactiveHarvestingMail *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v81 = *MEMORY[0x1E69E9840];
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

  if (self->_accountIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_messageIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fromField)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_toField)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_ccField)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bccField)
  {
    PBDataWriterWriteStringField();
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v5 = self->_headers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v70 objects:v80 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v71;
    do
    {
      v9 = 0;
      do
      {
        if (*v71 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v70 + 1) + 8 * v9);
        v69 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v70 objects:v80 count:16];
    }

    while (v7);
  }

  if (self->_subject)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_htmlContentData)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIsFullyDownloaded)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_htmlContent)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_textContent)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_securityMethod)
  {
    PBDataWriterWriteStringField();
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v11 = self->_accountHandles;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v65 objects:v79 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v66;
    do
    {
      v15 = 0;
      do
      {
        if (*v66 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteStringField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v65 objects:v79 count:16];
    }

    while (v13);
  }

  if (self->_replyTo)
  {
    v69 = 0;
    PBDataWriterPlaceMark();
    [(BMProactiveHarvestingNamedHandle *)self->_replyTo writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v16 = self->_mailboxIdentifiers;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v61 objects:v78 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v62;
    do
    {
      v20 = 0;
      do
      {
        if (*v62 != v19)
        {
          objc_enumerationMutation(v16);
        }

        PBDataWriterWriteStringField();
        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v61 objects:v78 count:16];
    }

    while (v18);
  }

  if (self->_listID)
  {
    v69 = 0;
    PBDataWriterPlaceMark();
    [(BMProactiveHarvestingNamedHandle *)self->_listID writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_accountType)
  {
    PBDataWriterWriteStringField();
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v21 = self->_attachments;
  v22 = [(NSArray *)v21 countByEnumeratingWithState:&v57 objects:v77 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v58;
    do
    {
      v25 = 0;
      do
      {
        if (*v58 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v57 + 1) + 8 * v25);
        v69 = 0;
        PBDataWriterPlaceMark();
        [v26 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v25;
      }

      while (v23 != v25);
      v23 = [(NSArray *)v21 countByEnumeratingWithState:&v57 objects:v77 count:16];
    }

    while (v23);
  }

  if (self->_fromHandle)
  {
    v69 = 0;
    PBDataWriterPlaceMark();
    [(BMProactiveHarvestingNamedHandle *)self->_fromHandle writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v27 = self->_toHandles;
  v28 = [(NSArray *)v27 countByEnumeratingWithState:&v53 objects:v76 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v54;
    do
    {
      v31 = 0;
      do
      {
        if (*v54 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v53 + 1) + 8 * v31);
        v69 = 0;
        PBDataWriterPlaceMark();
        [v32 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v31;
      }

      while (v29 != v31);
      v29 = [(NSArray *)v27 countByEnumeratingWithState:&v53 objects:v76 count:16];
    }

    while (v29);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v33 = self->_ccHandles;
  v34 = [(NSArray *)v33 countByEnumeratingWithState:&v49 objects:v75 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v50;
    do
    {
      v37 = 0;
      do
      {
        if (*v50 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v49 + 1) + 8 * v37);
        v69 = 0;
        PBDataWriterPlaceMark();
        [v38 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v37;
      }

      while (v35 != v37);
      v35 = [(NSArray *)v33 countByEnumeratingWithState:&v49 objects:v75 count:16];
    }

    while (v35);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v39 = self->_bccHandles;
  v40 = [(NSArray *)v39 countByEnumeratingWithState:&v45 objects:v74 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v46;
    do
    {
      v43 = 0;
      do
      {
        if (*v46 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v45 + 1) + 8 * v43);
        v69 = 0;
        PBDataWriterPlaceMark();
        [v44 writeTo:{toCopy, v45}];
        PBDataWriterRecallMark();
        ++v43;
      }

      while (v41 != v43);
      v41 = [(NSArray *)v39 countByEnumeratingWithState:&v45 objects:v74 count:16];
    }

    while (v41);
  }

  if (self->_contentProtection)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_personaId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_conversationId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_dateReceived)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasMailCategories)
  {
    PBDataWriterWriteInt32Field();
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

  if (self->_hasIsJunk)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsRead)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsVIP)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsFlagged)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v118.receiver = self;
  v118.super_class = BMProactiveHarvestingMail;
  v5 = [(BMEventBase *)&v118 init];
  if (!v5)
  {
    goto LABEL_184;
  }

  v115 = objc_opt_new();
  v117 = objc_opt_new();
  v116 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  while (1)
  {
    position = [fromCopy position];
    if (position >= [fromCopy length] || (objc_msgSend(fromCopy, "hasError") & 1) != 0)
    {
      break;
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      LOBYTE(v119) = 0;
      v14 = [fromCopy position] + 1;
      if (v14 >= [fromCopy position] && (v15 = objc_msgSend(fromCopy, "position") + 1, v15 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:&v119 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v13 |= (LOBYTE(v119) & 0x7F) << v11;
      if ((LOBYTE(v119) & 0x80) == 0)
      {
        break;
      }

      v11 += 7;
      v17 = v12++ >= 9;
      if (v17)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    if ([fromCopy hasError])
    {
      v13 = 0;
    }

LABEL_16:
    if (([fromCopy hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v18 = PBReaderReadString();
        v19 = 80;
        goto LABEL_156;
      case 2u:
        v18 = PBReaderReadString();
        v19 = 88;
        goto LABEL_156;
      case 3u:
        v5->_hasRaw_absoluteTimestamp = 1;
        v119 = 0.0;
        v65 = [fromCopy position] + 8;
        if (v65 >= [fromCopy position] && (v66 = objc_msgSend(fromCopy, "position") + 8, v66 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v119 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_raw_absoluteTimestamp = v119;
        continue;
      case 4u:
        v18 = PBReaderReadString();
        v19 = 96;
        goto LABEL_156;
      case 5u:
        v18 = PBReaderReadString();
        v19 = 104;
        goto LABEL_156;
      case 6u:
        v18 = PBReaderReadString();
        v19 = 112;
        goto LABEL_156;
      case 7u:
        v18 = PBReaderReadString();
        v19 = 120;
        goto LABEL_156;
      case 8u:
        v18 = PBReaderReadString();
        v19 = 128;
        goto LABEL_156;
      case 9u:
        v18 = PBReaderReadString();
        v19 = 136;
        goto LABEL_156;
      case 0xAu:
        v119 = 0.0;
        v120 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_186;
        }

        v60 = [[BMProactiveHarvestingMailHeaderEntry alloc] initByReadFrom:fromCopy];
        if (!v60)
        {
          goto LABEL_186;
        }

        v61 = v60;
        v62 = v115;
        goto LABEL_148;
      case 0xBu:
        v18 = PBReaderReadString();
        v19 = 152;
        goto LABEL_156;
      case 0xCu:
        v18 = PBReaderReadString();
        v19 = 160;
        goto LABEL_156;
      case 0xDu:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v5->_hasIsFullyDownloaded = 1;
        while (1)
        {
          LOBYTE(v119) = 0;
          v57 = [fromCopy position] + 1;
          if (v57 >= [fromCopy position] && (v58 = objc_msgSend(fromCopy, "position") + 1, v58 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v119 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v56 |= (LOBYTE(v119) & 0x7F) << v54;
          if ((LOBYTE(v119) & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v17 = v55++ >= 9;
          if (v17)
          {
            LOBYTE(v26) = 0;
            goto LABEL_168;
          }
        }

        v26 = (v56 != 0) & ~[fromCopy hasError];
LABEL_168:
        v95 = 48;
        goto LABEL_177;
      case 0xEu:
        v18 = PBReaderReadData();
        v19 = 168;
        goto LABEL_156;
      case 0xFu:
        v18 = PBReaderReadString();
        v19 = 176;
        goto LABEL_156;
      case 0x10u:
        v18 = PBReaderReadString();
        v19 = 184;
        goto LABEL_156;
      case 0x11u:
        v45 = PBReaderReadString();
        if (!v45)
        {
          goto LABEL_186;
        }

        v46 = v45;
        v47 = v117;
        goto LABEL_117;
      case 0x12u:
        v119 = 0.0;
        v120 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_186;
        }

        v73 = [[BMProactiveHarvestingNamedHandle alloc] initByReadFrom:fromCopy];
        if (!v73)
        {
          goto LABEL_186;
        }

        v74 = 200;
        goto LABEL_144;
      case 0x13u:
        v76 = PBReaderReadString();
        if (!v76)
        {
          goto LABEL_186;
        }

        v46 = v76;
        v47 = v116;
LABEL_117:
        [v47 addObject:v46];

        continue;
      case 0x14u:
        v119 = 0.0;
        v120 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_186;
        }

        v73 = [[BMProactiveHarvestingNamedHandle alloc] initByReadFrom:fromCopy];
        if (!v73)
        {
          goto LABEL_186;
        }

        v74 = 216;
        goto LABEL_144;
      case 0x15u:
        v18 = PBReaderReadString();
        v19 = 224;
        goto LABEL_156;
      case 0x16u:
        v119 = 0.0;
        v120 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_186;
        }

        v75 = [[BMProactiveHarvestingContentAttachment alloc] initByReadFrom:fromCopy];
        if (!v75)
        {
          goto LABEL_186;
        }

        v61 = v75;
        v62 = v6;
        goto LABEL_148;
      case 0x17u:
        v119 = 0.0;
        v120 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_186;
        }

        v73 = [[BMProactiveHarvestingNamedHandle alloc] initByReadFrom:fromCopy];
        if (!v73)
        {
          goto LABEL_186;
        }

        v74 = 240;
LABEL_144:
        v90 = *(&v5->super.super.isa + v74);
        *(&v5->super.super.isa + v74) = v73;

        PBReaderRecallMark();
        continue;
      case 0x18u:
        v119 = 0.0;
        v120 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_186;
        }

        v91 = [[BMProactiveHarvestingNamedHandle alloc] initByReadFrom:fromCopy];
        if (!v91)
        {
          goto LABEL_186;
        }

        v61 = v91;
        v62 = v7;
        goto LABEL_148;
      case 0x19u:
        v119 = 0.0;
        v120 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_186;
        }

        v64 = [[BMProactiveHarvestingNamedHandle alloc] initByReadFrom:fromCopy];
        if (!v64)
        {
          goto LABEL_186;
        }

        v61 = v64;
        v62 = v8;
        goto LABEL_148;
      case 0x1Au:
        v119 = 0.0;
        v120 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_186;
        }

        v63 = [[BMProactiveHarvestingNamedHandle alloc] initByReadFrom:fromCopy];
        if (!v63)
        {
          goto LABEL_186;
        }

        v61 = v63;
        v62 = v9;
LABEL_148:
        [v62 addObject:v61];
        PBReaderRecallMark();

        continue;
      case 0x1Bu:
        v18 = PBReaderReadString();
        v19 = 272;
        goto LABEL_156;
      case 0x1Cu:
        v18 = PBReaderReadString();
        v19 = 280;
        goto LABEL_156;
      case 0x1Du:
        v18 = PBReaderReadString();
        v19 = 288;
LABEL_156:
        v94 = *(&v5->super.super.isa + v19);
        *(&v5->super.super.isa + v19) = v18;

        continue;
      case 0x1Eu:
        v5->_hasRaw_dateReceived = 1;
        v119 = 0.0;
        v92 = [fromCopy position] + 8;
        if (v92 >= [fromCopy position] && (v93 = objc_msgSend(fromCopy, "position") + 8, v93 <= objc_msgSend(fromCopy, "length")))
        {
          data4 = [fromCopy data];
          [data4 getBytes:&v119 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_raw_dateReceived = v119;
        continue;
      case 0x1Fu:
        v77 = 0;
        v78 = 0;
        v79 = 0;
        v5->_hasMailCategories = 1;
        while (1)
        {
          LOBYTE(v119) = 0;
          v80 = [fromCopy position] + 1;
          if (v80 >= [fromCopy position] && (v81 = objc_msgSend(fromCopy, "position") + 1, v81 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v119 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v79 |= (LOBYTE(v119) & 0x7F) << v77;
          if ((LOBYTE(v119) & 0x80) == 0)
          {
            break;
          }

          v77 += 7;
          v17 = v78++ >= 9;
          if (v17)
          {
            v83 = 0;
            goto LABEL_174;
          }
        }

        if ([fromCopy hasError])
        {
          v83 = 0;
        }

        else
        {
          v83 = v79;
        }

LABEL_174:
        v5->_mailCategories = v83;
        continue;
      case 0x20u:
        v67 = 0;
        v68 = 0;
        v69 = 0;
        v5->_hasIsNew = 1;
        while (1)
        {
          LOBYTE(v119) = 0;
          v70 = [fromCopy position] + 1;
          if (v70 >= [fromCopy position] && (v71 = objc_msgSend(fromCopy, "position") + 1, v71 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v119 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v69 |= (LOBYTE(v119) & 0x7F) << v67;
          if ((LOBYTE(v119) & 0x80) == 0)
          {
            break;
          }

          v67 += 7;
          v17 = v68++ >= 9;
          if (v17)
          {
            LOBYTE(v26) = 0;
            goto LABEL_170;
          }
        }

        v26 = (v69 != 0) & ~[fromCopy hasError];
LABEL_170:
        v95 = 51;
        goto LABEL_177;
      case 0x21u:
        v84 = 0;
        v85 = 0;
        v86 = 0;
        v5->_hasIsTwoFactorCode = 1;
        while (1)
        {
          LOBYTE(v119) = 0;
          v87 = [fromCopy position] + 1;
          if (v87 >= [fromCopy position] && (v88 = objc_msgSend(fromCopy, "position") + 1, v88 <= objc_msgSend(fromCopy, "length")))
          {
            data7 = [fromCopy data];
            [data7 getBytes:&v119 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v86 |= (LOBYTE(v119) & 0x7F) << v84;
          if ((LOBYTE(v119) & 0x80) == 0)
          {
            break;
          }

          v84 += 7;
          v17 = v85++ >= 9;
          if (v17)
          {
            LOBYTE(v26) = 0;
            goto LABEL_176;
          }
        }

        v26 = (v86 != 0) & ~[fromCopy hasError];
LABEL_176:
        v95 = 53;
        goto LABEL_177;
      case 0x22u:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v5->_hasIsFromMe = 1;
        while (1)
        {
          LOBYTE(v119) = 0;
          v51 = [fromCopy position] + 1;
          if (v51 >= [fromCopy position] && (v52 = objc_msgSend(fromCopy, "position") + 1, v52 <= objc_msgSend(fromCopy, "length")))
          {
            data8 = [fromCopy data];
            [data8 getBytes:&v119 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v50 |= (LOBYTE(v119) & 0x7F) << v48;
          if ((LOBYTE(v119) & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v17 = v49++ >= 9;
          if (v17)
          {
            LOBYTE(v26) = 0;
            goto LABEL_166;
          }
        }

        v26 = (v50 != 0) & ~[fromCopy hasError];
LABEL_166:
        v95 = 55;
        goto LABEL_177;
      case 0x23u:
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v5->_hasIsJunk = 1;
        while (1)
        {
          LOBYTE(v119) = 0;
          v42 = [fromCopy position] + 1;
          if (v42 >= [fromCopy position] && (v43 = objc_msgSend(fromCopy, "position") + 1, v43 <= objc_msgSend(fromCopy, "length")))
          {
            data9 = [fromCopy data];
            [data9 getBytes:&v119 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v41 |= (LOBYTE(v119) & 0x7F) << v39;
          if ((LOBYTE(v119) & 0x80) == 0)
          {
            break;
          }

          v39 += 7;
          v17 = v40++ >= 9;
          if (v17)
          {
            LOBYTE(v26) = 0;
            goto LABEL_164;
          }
        }

        v26 = (v41 != 0) & ~[fromCopy hasError];
LABEL_164:
        v95 = 57;
        goto LABEL_177;
      case 0x24u:
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v5->_hasIsRead = 1;
        while (1)
        {
          LOBYTE(v119) = 0;
          v30 = [fromCopy position] + 1;
          if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 1, v31 <= objc_msgSend(fromCopy, "length")))
          {
            data10 = [fromCopy data];
            [data10 getBytes:&v119 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v29 |= (LOBYTE(v119) & 0x7F) << v27;
          if ((LOBYTE(v119) & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v17 = v28++ >= 9;
          if (v17)
          {
            LOBYTE(v26) = 0;
            goto LABEL_160;
          }
        }

        v26 = (v29 != 0) & ~[fromCopy hasError];
LABEL_160:
        v95 = 59;
        goto LABEL_177;
      case 0x25u:
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v5->_hasIsVIP = 1;
        while (1)
        {
          LOBYTE(v119) = 0;
          v36 = [fromCopy position] + 1;
          if (v36 >= [fromCopy position] && (v37 = objc_msgSend(fromCopy, "position") + 1, v37 <= objc_msgSend(fromCopy, "length")))
          {
            data11 = [fromCopy data];
            [data11 getBytes:&v119 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v35 |= (LOBYTE(v119) & 0x7F) << v33;
          if ((LOBYTE(v119) & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v17 = v34++ >= 9;
          if (v17)
          {
            LOBYTE(v26) = 0;
            goto LABEL_162;
          }
        }

        v26 = (v35 != 0) & ~[fromCopy hasError];
LABEL_162:
        v95 = 61;
        goto LABEL_177;
      case 0x26u:
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v5->_hasIsFlagged = 1;
        break;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

LABEL_186:

        goto LABEL_183;
    }

    while (1)
    {
      LOBYTE(v119) = 0;
      v23 = [fromCopy position] + 1;
      if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 1, v24 <= objc_msgSend(fromCopy, "length")))
      {
        data12 = [fromCopy data];
        [data12 getBytes:&v119 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v22 |= (LOBYTE(v119) & 0x7F) << v20;
      if ((LOBYTE(v119) & 0x80) == 0)
      {
        break;
      }

      v20 += 7;
      v17 = v21++ >= 9;
      if (v17)
      {
        LOBYTE(v26) = 0;
        goto LABEL_158;
      }
    }

    v26 = (v22 != 0) & ~[fromCopy hasError];
LABEL_158:
    v95 = 63;
LABEL_177:
    *(&v5->super.super.isa + v95) = v26;
  }

  v98 = [v115 copy];
  headers = v5->_headers;
  v5->_headers = v98;

  v100 = [v117 copy];
  accountHandles = v5->_accountHandles;
  v5->_accountHandles = v100;

  v102 = [v116 copy];
  mailboxIdentifiers = v5->_mailboxIdentifiers;
  v5->_mailboxIdentifiers = v102;

  v104 = [v6 copy];
  attachments = v5->_attachments;
  v5->_attachments = v104;

  v106 = [v7 copy];
  toHandles = v5->_toHandles;
  v5->_toHandles = v106;

  v108 = [v8 copy];
  ccHandles = v5->_ccHandles;
  v5->_ccHandles = v108;

  v110 = [v9 copy];
  bccHandles = v5->_bccHandles;
  v5->_bccHandles = v110;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_183:
    v113 = 0;
  }

  else
  {
LABEL_184:
    v113 = v5;
  }

  return v113;
}

- (NSString)description
{
  v20 = objc_alloc(MEMORY[0x1E696AEC0]);
  uniqueID = [(BMProactiveHarvestingMail *)self uniqueID];
  domainID = [(BMProactiveHarvestingMail *)self domainID];
  absoluteTimestamp = [(BMProactiveHarvestingMail *)self absoluteTimestamp];
  accountIdentifier = [(BMProactiveHarvestingMail *)self accountIdentifier];
  messageIdentifier = [(BMProactiveHarvestingMail *)self messageIdentifier];
  fromField = [(BMProactiveHarvestingMail *)self fromField];
  toField = [(BMProactiveHarvestingMail *)self toField];
  ccField = [(BMProactiveHarvestingMail *)self ccField];
  bccField = [(BMProactiveHarvestingMail *)self bccField];
  headers = [(BMProactiveHarvestingMail *)self headers];
  subject = [(BMProactiveHarvestingMail *)self subject];
  htmlContentData = [(BMProactiveHarvestingMail *)self htmlContentData];
  v32 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMail isFullyDownloaded](self, "isFullyDownloaded")}];
  htmlContent = [(BMProactiveHarvestingMail *)self htmlContent];
  textContent = [(BMProactiveHarvestingMail *)self textContent];
  securityMethod = [(BMProactiveHarvestingMail *)self securityMethod];
  accountHandles = [(BMProactiveHarvestingMail *)self accountHandles];
  replyTo = [(BMProactiveHarvestingMail *)self replyTo];
  mailboxIdentifiers = [(BMProactiveHarvestingMail *)self mailboxIdentifiers];
  listID = [(BMProactiveHarvestingMail *)self listID];
  accountType = [(BMProactiveHarvestingMail *)self accountType];
  attachments = [(BMProactiveHarvestingMail *)self attachments];
  fromHandle = [(BMProactiveHarvestingMail *)self fromHandle];
  toHandles = [(BMProactiveHarvestingMail *)self toHandles];
  ccHandles = [(BMProactiveHarvestingMail *)self ccHandles];
  bccHandles = [(BMProactiveHarvestingMail *)self bccHandles];
  contentProtection = [(BMProactiveHarvestingMail *)self contentProtection];
  personaId = [(BMProactiveHarvestingMail *)self personaId];
  conversationId = [(BMProactiveHarvestingMail *)self conversationId];
  dateReceived = [(BMProactiveHarvestingMail *)self dateReceived];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMProactiveHarvestingMail mailCategories](self, "mailCategories")}];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMail isNew](self, "isNew")}];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMail isTwoFactorCode](self, "isTwoFactorCode")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMail isFromMe](self, "isFromMe")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMail isJunk](self, "isJunk")}];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMail isRead](self, "isRead")}];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMail isVIP](self, "isVIP")}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMProactiveHarvestingMail isFlagged](self, "isFlagged")}];
  v21 = [v20 initWithFormat:@"BMProactiveHarvestingMail with uniqueID: %@, domainID: %@, absoluteTimestamp: %@, accountIdentifier: %@, messageIdentifier: %@, fromField: %@, toField: %@, ccField: %@, bccField: %@, headers: %@, subject: %@, htmlContentData: %@, isFullyDownloaded: %@, htmlContent: %@, textContent: %@, securityMethod: %@, accountHandles: %@, replyTo: %@, mailboxIdentifiers: %@, listID: %@, accountType: %@, attachments: %@, fromHandle: %@, toHandles: %@, ccHandles: %@, bccHandles: %@, contentProtection: %@, personaId: %@, conversationId: %@, dateReceived: %@, mailCategories: %@, isNew: %@, isTwoFactorCode: %@, isFromMe: %@, isJunk: %@, isRead: %@, isVIP: %@, isFlagged: %@", uniqueID, domainID, absoluteTimestamp, accountIdentifier, messageIdentifier, fromField, toField, ccField, bccField, headers, subject, htmlContentData, v32, htmlContent, textContent, securityMethod, accountHandles, replyTo, mailboxIdentifiers, listID, accountType, attachments, fromHandle, toHandles, ccHandles, bccHandles, contentProtection, personaId, conversationId, dateReceived, v11, v10, v9, v8, v7, v3, v4, v5];

  return v21;
}

- (BMProactiveHarvestingMail)initWithUniqueID:(id)d domainID:(id)iD absoluteTimestamp:(id)timestamp accountIdentifier:(id)identifier messageIdentifier:(id)messageIdentifier fromField:(id)field toField:(id)toField ccField:(id)self0 bccField:(id)self1 headers:(id)self2 subject:(id)self3 htmlContentData:(id)self4 isFullyDownloaded:(id)self5 htmlContent:(id)self6 textContent:(id)self7 securityMethod:(id)self8 accountHandles:(id)self9 replyTo:(id)to mailboxIdentifiers:(id)identifiers listID:(id)listID accountType:(id)type attachments:(id)attachments fromHandle:(id)handle toHandles:(id)toHandles ccHandles:(id)ccHandles bccHandles:(id)bccHandles contentProtection:(id)protection personaId:(id)d0 conversationId:(id)d1 dateReceived:(id)d2 mailCategories:(id)d3 isNew:(id)d4 isTwoFactorCode:(id)d5 isFromMe:(id)d6 isJunk:(id)d7 isRead:(id)d8 isVIP:(id)d9 isFlagged:(id)iD0
{
  dCopy = d;
  iDCopy = iD;
  iDCopy2 = iD;
  timestampCopy = timestamp;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  messageIdentifierCopy = messageIdentifier;
  messageIdentifierCopy2 = messageIdentifier;
  fieldCopy = field;
  fieldCopy2 = field;
  toFieldCopy = toField;
  ccFieldCopy = ccField;
  bccFieldCopy = bccField;
  headersCopy = headers;
  subjectCopy = subject;
  dataCopy = data;
  downloadedCopy = downloaded;
  contentCopy = content;
  textContentCopy = textContent;
  methodCopy = method;
  handlesCopy = handles;
  toCopy = to;
  identifiersCopy = identifiers;
  listIDCopy = listID;
  typeCopy = type;
  attachmentsCopy = attachments;
  handleCopy = handle;
  toHandlesCopy = toHandles;
  ccHandlesCopy = ccHandles;
  bccHandlesCopy = bccHandles;
  protectionCopy = protection;
  idCopy = id;
  conversationIdCopy = conversationId;
  receivedCopy = received;
  categoriesCopy = categories;
  newCopy = new;
  codeCopy = code;
  meCopy = me;
  junkCopy = junk;
  readCopy = read;
  pCopy = p;
  flaggedCopy = flagged;
  v94.receiver = self;
  v94.super_class = BMProactiveHarvestingMail;
  v52 = [(BMEventBase *)&v94 init];
  if (v52)
  {
    v52->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v52->_uniqueID, d);
    objc_storeStrong(&v52->_domainID, iDCopy);
    if (timestampCopy)
    {
      v52->_hasRaw_absoluteTimestamp = 1;
      [timestampCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v52->_hasRaw_absoluteTimestamp = 0;
      v53 = -1.0;
    }

    v52->_raw_absoluteTimestamp = v53;
    objc_storeStrong(&v52->_accountIdentifier, identifierCopy);
    objc_storeStrong(&v52->_messageIdentifier, messageIdentifierCopy);
    objc_storeStrong(&v52->_fromField, fieldCopy);
    objc_storeStrong(&v52->_toField, toField);
    objc_storeStrong(&v52->_ccField, ccField);
    objc_storeStrong(&v52->_bccField, bccField);
    objc_storeStrong(&v52->_headers, headers);
    objc_storeStrong(&v52->_subject, subject);
    objc_storeStrong(&v52->_htmlContentData, data);
    if (downloadedCopy)
    {
      v52->_hasIsFullyDownloaded = 1;
      v52->_isFullyDownloaded = [downloadedCopy BOOLValue];
    }

    else
    {
      v52->_hasIsFullyDownloaded = 0;
      v52->_isFullyDownloaded = 0;
    }

    objc_storeStrong(&v52->_htmlContent, content);
    objc_storeStrong(&v52->_textContent, textContent);
    objc_storeStrong(&v52->_securityMethod, method);
    objc_storeStrong(&v52->_accountHandles, handles);
    objc_storeStrong(&v52->_replyTo, to);
    objc_storeStrong(&v52->_mailboxIdentifiers, identifiers);
    objc_storeStrong(&v52->_listID, listID);
    objc_storeStrong(&v52->_accountType, type);
    objc_storeStrong(&v52->_attachments, attachments);
    objc_storeStrong(&v52->_fromHandle, handle);
    objc_storeStrong(&v52->_toHandles, toHandles);
    objc_storeStrong(&v52->_ccHandles, ccHandles);
    objc_storeStrong(&v52->_bccHandles, bccHandles);
    objc_storeStrong(&v52->_contentProtection, protection);
    objc_storeStrong(&v52->_personaId, id);
    objc_storeStrong(&v52->_conversationId, conversationId);
    if (receivedCopy)
    {
      v52->_hasRaw_dateReceived = 1;
      [receivedCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v52->_hasRaw_dateReceived = 0;
      v54 = -1.0;
    }

    v52->_raw_dateReceived = v54;
    if (categoriesCopy)
    {
      v52->_hasMailCategories = 1;
      intValue = [categoriesCopy intValue];
    }

    else
    {
      v52->_hasMailCategories = 0;
      intValue = -1;
    }

    v52->_mailCategories = intValue;
    if (newCopy)
    {
      v52->_hasIsNew = 1;
      v52->_isNew = [newCopy BOOLValue];
    }

    else
    {
      v52->_hasIsNew = 0;
      v52->_isNew = 0;
    }

    if (codeCopy)
    {
      v52->_hasIsTwoFactorCode = 1;
      v52->_isTwoFactorCode = [codeCopy BOOLValue];
    }

    else
    {
      v52->_hasIsTwoFactorCode = 0;
      v52->_isTwoFactorCode = 0;
    }

    if (meCopy)
    {
      v52->_hasIsFromMe = 1;
      v52->_isFromMe = [meCopy BOOLValue];
    }

    else
    {
      v52->_hasIsFromMe = 0;
      v52->_isFromMe = 0;
    }

    if (junkCopy)
    {
      v52->_hasIsJunk = 1;
      v52->_isJunk = [junkCopy BOOLValue];
    }

    else
    {
      v52->_hasIsJunk = 0;
      v52->_isJunk = 0;
    }

    if (readCopy)
    {
      v52->_hasIsRead = 1;
      v52->_isRead = [readCopy BOOLValue];
    }

    else
    {
      v52->_hasIsRead = 0;
      v52->_isRead = 0;
    }

    if (pCopy)
    {
      v52->_hasIsVIP = 1;
      v52->_isVIP = [pCopy BOOLValue];
    }

    else
    {
      v52->_hasIsVIP = 0;
      v52->_isVIP = 0;
    }

    if (flaggedCopy)
    {
      v52->_hasIsFlagged = 1;
      v52->_isFlagged = [flaggedCopy BOOLValue];
    }

    else
    {
      v52->_hasIsFlagged = 0;
      v52->_isFlagged = 0;
    }
  }

  return v52;
}

+ (id)protoFields
{
  v42[38] = *MEMORY[0x1E69E9840];
  v41 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"uniqueID" number:1 type:13 subMessageClass:0];
  v42[0] = v41;
  v40 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"domainID" number:2 type:13 subMessageClass:0];
  v42[1] = v40;
  v39 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:3 type:0 subMessageClass:0];
  v42[2] = v39;
  v38 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"accountIdentifier" number:4 type:13 subMessageClass:0];
  v42[3] = v38;
  v37 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"messageIdentifier" number:5 type:13 subMessageClass:0];
  v42[4] = v37;
  v36 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fromField" number:6 type:13 subMessageClass:0];
  v42[5] = v36;
  v35 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"toField" number:7 type:13 subMessageClass:0];
  v42[6] = v35;
  v34 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ccField" number:8 type:13 subMessageClass:0];
  v42[7] = v34;
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bccField" number:9 type:13 subMessageClass:0];
  v42[8] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"headers" number:10 type:14 subMessageClass:objc_opt_class()];
  v42[9] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"subject" number:11 type:13 subMessageClass:0];
  v42[10] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"htmlContentData" number:12 type:13 subMessageClass:0];
  v42[11] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isFullyDownloaded" number:13 type:12 subMessageClass:0];
  v42[12] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"htmlContent" number:14 type:14 subMessageClass:0];
  v42[13] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"textContent" number:15 type:13 subMessageClass:0];
  v42[14] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"securityMethod" number:16 type:13 subMessageClass:0];
  v42[15] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"accountHandles" number:17 type:13 subMessageClass:0];
  v42[16] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"replyTo" number:18 type:14 subMessageClass:objc_opt_class()];
  v42[17] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mailboxIdentifiers" number:19 type:13 subMessageClass:0];
  v42[18] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"listID" number:20 type:14 subMessageClass:objc_opt_class()];
  v42[19] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"accountType" number:21 type:13 subMessageClass:0];
  v42[20] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"attachments" number:22 type:14 subMessageClass:objc_opt_class()];
  v42[21] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fromHandle" number:23 type:14 subMessageClass:objc_opt_class()];
  v42[22] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"toHandles" number:24 type:14 subMessageClass:objc_opt_class()];
  v42[23] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ccHandles" number:25 type:14 subMessageClass:objc_opt_class()];
  v42[24] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bccHandles" number:26 type:14 subMessageClass:objc_opt_class()];
  v42[25] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentProtection" number:27 type:13 subMessageClass:0];
  v42[26] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personaId" number:28 type:13 subMessageClass:0];
  v42[27] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"conversationId" number:29 type:13 subMessageClass:0];
  v42[28] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dateReceived" number:30 type:0 subMessageClass:0];
  v42[29] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"mailCategories" number:31 type:2 subMessageClass:0];
  v42[30] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isNew" number:32 type:12 subMessageClass:0];
  v42[31] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isTwoFactorCode" number:33 type:12 subMessageClass:0];
  v42[32] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isFromMe" number:34 type:12 subMessageClass:0];
  v42[33] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isJunk" number:35 type:12 subMessageClass:0];
  v42[34] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isRead" number:36 type:12 subMessageClass:0];
  v42[35] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isVIP" number:37 type:12 subMessageClass:0];
  v42[36] = v10;
  v11 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isFlagged" number:38 type:12 subMessageClass:0];
  v42[37] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:38];

  return v13;
}

+ (id)columns
{
  v42[38] = *MEMORY[0x1E69E9840];
  v41 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"uniqueID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v40 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"domainID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v39 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:1];
  v38 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"accountIdentifier" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v37 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"messageIdentifier" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v36 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fromField" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v35 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"toField" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v34 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"ccField" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v33 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bccField" dataType:2 requestOnly:0 fieldNumber:9 protoDataType:13 convertedType:0];
  v32 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"headers_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_53333];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"subject" dataType:2 requestOnly:0 fieldNumber:11 protoDataType:13 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"htmlContentData" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isFullyDownloaded" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:12 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"htmlContent" dataType:4 requestOnly:0 fieldNumber:14 protoDataType:14 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"textContent" dataType:2 requestOnly:0 fieldNumber:15 protoDataType:13 convertedType:0];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"securityMethod" dataType:2 requestOnly:0 fieldNumber:16 protoDataType:13 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"accountHandles_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_284];
  v24 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"replyTo_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_286_53334];
  v23 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"mailboxIdentifiers_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_288_53335];
  v22 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"listID_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_290_53336];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"accountType" dataType:2 requestOnly:0 fieldNumber:21 protoDataType:13 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"attachments_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_292];
  v17 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"fromHandle_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_294_53337];
  v21 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"toHandles_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_296];
  v16 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"ccHandles_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_298];
  v15 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"bccHandles_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_300];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentProtection" dataType:2 requestOnly:0 fieldNumber:27 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personaId" dataType:2 requestOnly:0 fieldNumber:28 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"conversationId" dataType:2 requestOnly:0 fieldNumber:29 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dateReceived" dataType:3 requestOnly:0 fieldNumber:30 protoDataType:0 convertedType:1];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"mailCategories" dataType:0 requestOnly:0 fieldNumber:31 protoDataType:2 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isNew" dataType:0 requestOnly:0 fieldNumber:32 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isTwoFactorCode" dataType:0 requestOnly:0 fieldNumber:33 protoDataType:12 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isFromMe" dataType:0 requestOnly:0 fieldNumber:34 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isJunk" dataType:0 requestOnly:0 fieldNumber:35 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isRead" dataType:0 requestOnly:0 fieldNumber:36 protoDataType:12 convertedType:0];
  v11 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isVIP" dataType:0 requestOnly:0 fieldNumber:37 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isFlagged" dataType:0 requestOnly:0 fieldNumber:38 protoDataType:12 convertedType:0];
  v42[0] = v41;
  v42[1] = v40;
  v42[2] = v39;
  v42[3] = v38;
  v42[4] = v37;
  v42[5] = v36;
  v42[6] = v35;
  v42[7] = v34;
  v42[8] = v33;
  v42[9] = v32;
  v42[10] = v31;
  v42[11] = v30;
  v42[12] = v29;
  v42[13] = v28;
  v42[14] = v27;
  v42[15] = v26;
  v42[16] = v25;
  v42[17] = v24;
  v42[18] = v23;
  v42[19] = v22;
  v42[20] = v20;
  v42[21] = v18;
  v42[22] = v17;
  v42[23] = v21;
  v42[24] = v16;
  v42[25] = v15;
  v42[26] = v19;
  v42[27] = v14;
  v42[28] = v2;
  v42[29] = v3;
  v42[30] = v4;
  v42[31] = v13;
  v42[32] = v5;
  v42[33] = v12;
  v42[34] = v6;
  v42[35] = v7;
  v42[36] = v11;
  v42[37] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:38];

  return v10;
}

id __36__BMProactiveHarvestingMail_columns__block_invoke_10(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _bccHandlesJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __36__BMProactiveHarvestingMail_columns__block_invoke_9(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _ccHandlesJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __36__BMProactiveHarvestingMail_columns__block_invoke_8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _toHandlesJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __36__BMProactiveHarvestingMail_columns__block_invoke_7(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 fromHandle];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __36__BMProactiveHarvestingMail_columns__block_invoke_6(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _attachmentsJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __36__BMProactiveHarvestingMail_columns__block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 listID];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __36__BMProactiveHarvestingMail_columns__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _mailboxIdentifiersJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __36__BMProactiveHarvestingMail_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 replyTo];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __36__BMProactiveHarvestingMail_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _accountHandlesJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __36__BMProactiveHarvestingMail_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 _headersJSONArray];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 3)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMProactiveHarvestingMail alloc] initByReadFrom:v6];
    v8 = v7;
    if (v7)
    {
      v7[17] = 3;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end