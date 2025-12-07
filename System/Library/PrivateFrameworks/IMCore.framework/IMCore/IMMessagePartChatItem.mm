@interface IMMessagePartChatItem
+ (BOOL)_isAllowlistedRichLinkSender:(id)sender isBusiness:(BOOL)business;
+ (BOOL)_isAllowlistedURL:(id)l;
+ (BOOL)_isPathExceptionToAllowlistedURL:(id)l;
+ (BOOL)_shouldAggregateForTransferType:(id)type;
+ (BOOL)_supportsRichLinkURL:(id)l forSender:(id)sender isAllowlistedRichLinkSender:(BOOL)linkSender;
+ (BOOL)isChatBotContentOnly:(id)only;
+ (BOOL)isSiriEnabled;
+ (id)_defaultRichLinkAllowListExceptions;
+ (id)_defaultRichLinkAllowlist;
+ (id)_guidForMessage:(id)message url:(id)url;
+ (id)_messageItemWithPartsDeleted:(id)deleted fromMessageItem:(id)item indexesOfItemsDeleted:(id *)itemsDeleted indexToRangeMapping:(id *)mapping;
+ (id)_newAudioMessagePartsForMessageItem:(id)item text:(id)text chatContext:(id)context retractedPartIndexes:(id)indexes singlePart:(id)part;
+ (id)_newDetonatedMessagePartsForMessageItem:(id)item chatContext:(id)context photosPluginPayload:(id)payload;
+ (id)_newMessagePartArrayForMessageItem:(id)item;
+ (id)_newMessagePartsForMessageItem:(id)item chatContext:(id)context photosPluginPayload:(id)payload;
+ (id)_processChatItemsForRichActions:(id)actions;
+ (id)_retractedMessagePartsForMessage:(id)message parts:(id)parts retractedPartIndexes:(id)indexes;
+ (id)_richLinkRangesForMessageText:(id)text sender:(id)sender isAllowlistedRichLinkSender:(BOOL)linkSender;
+ (id)_singleChatItemForDeviceActionMessage:(id)message context:(id)context pluginPayload:(id)payload;
+ (id)aggregatePartsForParts:(id)parts forMessage:(id)message context:(id)context text:(id)text;
+ (id)chatItemGUIDForMessageGUID:(id)d partIndex:(int64_t)index;
+ (id)expandRichCardsFor:(id)for richCards:(id)cards;
+ (id)messageBodyStringForAttachmentGUIDs:(id)ds;
+ (id)messageBodyStringForCMMMessage:(id)message;
+ (id)richCardsChatItemsForMessageItem:(id)item text:(id)text;
+ (id)standaloneChipListChatItemForMessageItem:(id)item text:(id)text;
+ (id)suggestedActionsMessagePartChatItemForMessageItem:(id)item attributes:(id)attributes;
+ (id)suggestedRepliesMessagePartChatItemForMessageItem:(id)item attributes:(id)attributes;
+ (int64_t)_attachmentStackAggregationThreshold;
- (BOOL)canDelete;
- (BOOL)canRetract;
- (BOOL)isBusiness;
- (BOOL)isCorrupt;
- (BOOL)isEditedMessagePart;
- (BOOL)isFailedEditMessagePart;
- (BOOL)isFailedRetractMessagePart;
- (BOOL)isRetractedMessagePart;
- (BOOL)isStewie;
- (BOOL)requiresCriticalMessagingAPIAttribution;
- (BOOL)requiresFaceTimeAttribution;
- (BOOL)requiresSiriAttribution;
- (IMMessageItem)threadOriginator;
- (NSString)description;
- (NSString)threadIdentifier;
- (NSString)threadIdentifierForTapback;
- (_NSRange)messagePartRange;
- (_NSRange)originalMessagePartRange;
- (id)_initWithItem:(id)item index:(int64_t)index messagePartRange:(_NSRange)range syndicationBehavior:(int64_t)behavior;
- (id)_initWithItem:(id)item text:(id)text translationSecondaryText:(id)secondaryText index:(int64_t)index messagePartRange:(_NSRange)range visibleAssociatedMessageChatItems:(id)items;
- (id)_visibleAssociatedChatItemsByFlatteningAggregateChatItems;
- (id)copyWithZone:(_NSZone *)zone;
- (id)extractAndSetChipListFrom:(id)from;
- (id)messageSummaryInfo;
- (int64_t)messagePartAttributeName;
- (int64_t)stewieConversationID;
- (unint64_t)scheduleState;
- (unint64_t)scheduleType;
- (unsigned)contentType;
- (void)_setVisibleAssociatedMessageChatItems:(id)items;
- (void)setIsStewie:(BOOL)stewie;
@end

@implementation IMMessagePartChatItem

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = IMMessagePartChatItem;
  v4 = [(IMTranscriptChatItem *)&v10 description];
  v5 = IMLoggingStringForMessageData();
  v6 = [(NSArray *)self->_visibleAssociatedMessageChatItems description];
  v12.location = [(IMMessagePartChatItem *)self messagePartRange];
  v7 = NSStringFromRange(v12);
  v8 = [v3 stringWithFormat:@"[%@ text:%@, visibleAssociatedMessageChatItems: %@, messagePartRange: %@]", v4, v5, v6, v7];

  return v8;
}

- (int64_t)messagePartAttributeName
{
  text = [(IMMessagePartChatItem *)self text];
  v3 = [text attribute:*MEMORY[0x1E69A5FD8] atIndex:0 effectiveRange:0];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  _item = [(IMChatItem *)self _item];
  text = self->_text;
  index = self->_index;
  p_messagePartRange = &self->_messagePartRange;
  visibleAssociatedMessageChatItems = [(IMMessagePartChatItem *)self visibleAssociatedMessageChatItems];
  v10 = [v4 _initWithItem:_item text:text index:index messagePartRange:p_messagePartRange->location visibleAssociatedMessageChatItems:{p_messagePartRange->length, visibleAssociatedMessageChatItems}];

  return v10;
}

- (BOOL)canDelete
{
  if ([(IMMessagePartChatItem *)self scheduleType]!= 2)
  {
    _item = [(IMChatItem *)self _item];
    service = [_item service];
    if ([service isEqualToString:*MEMORY[0x1E69A7AF8]])
    {
    }

    else
    {
      service2 = [_item service];
      v6 = [service2 isEqualToString:*MEMORY[0x1E69A7AE8]];

      if (!v6)
      {
        goto LABEL_10;
      }
    }

    if (-[IMMessageChatItem isFromMe](self, "isFromMe") && ([_item isSent] & 1) == 0)
    {
      v7 = [_item errorCode] != 0;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 1;
LABEL_11:

    return v7;
  }

  return MEMORY[0x1EEE66B58](self, sel__canDeleteForCurrentScheduleState);
}

- (BOOL)isBusiness
{
  if (self->_isBusiness)
  {
    return 1;
  }

  _item = [(IMChatItem *)self _item];
  message = [_item message];
  subject = [message subject];
  isMapKitBusiness = [subject isMapKitBusiness];

  return isMapKitBusiness;
}

- (void)setIsStewie:(BOOL)stewie
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  stewieEnabled = [mEMORY[0x1E69A8070] stewieEnabled];

  if (stewieEnabled)
  {
    _item = [(IMChatItem *)self _item];
    [_item setIsStewie:1];
  }
}

- (BOOL)isStewie
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  stewieEnabled = [mEMORY[0x1E69A8070] stewieEnabled];

  if (!stewieEnabled)
  {
    return 0;
  }

  _item = [(IMChatItem *)self _item];
  if ([_item isStewie])
  {
    isStewie = 1;
  }

  else
  {
    _item2 = [(IMChatItem *)self _item];
    message = [_item2 message];
    subject = [message subject];
    isStewie = [subject isStewie];
  }

  return isStewie;
}

- (int64_t)stewieConversationID
{
  _item = [(IMChatItem *)self _item];
  stewieConversationID = [_item stewieConversationID];

  return stewieConversationID;
}

- (BOOL)canRetract
{
  v17 = *MEMORY[0x1E69E9840];
  _item = [(IMChatItem *)self _item];
  v4 = [_item eligibilityForEditType:2 messagePartIndex:{-[IMMessagePartChatItem index](self, "index")}];
  v5 = v4;
  if ((v4 - 1) >= 8)
  {
    if (!v4)
    {
      balloonBundleID = [(IMChatItem *)self balloonBundleID];
      v10 = IMBalloonExtensionIDWithSuffix();
      v11 = [balloonBundleID isEqualToString:v10];

      if (v11)
      {
        _item2 = [(IMChatItem *)self _item];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          if (!IMOSLoggingEnabled())
          {
            goto LABEL_6;
          }

          v6 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
          {
            LOWORD(v15) = 0;
            _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Message is a Poll, but cannot be retracted because additional choices have been added since original send.", &v15, 2u);
          }

          goto LABEL_5;
        }
      }

      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = 134217984;
          v16 = 0;
          _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Message can be retracted, message edit eligibility is %ld", &v15, 0xCu);
        }
      }
    }

    v7 = 1;
    goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v15 = 134217984;
      v16 = v5;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Message cannot be retracted, message is not eligible to be edited. Edit Eligibility: %ld", &v15, 0xCu);
    }

LABEL_5:
  }

LABEL_6:
  v7 = 0;
LABEL_7:

  return v7;
}

- (BOOL)isCorrupt
{
  _item = [(IMChatItem *)self _item];
  isCorrupt = [_item isCorrupt];

  return isCorrupt;
}

+ (id)_guidForMessage:(id)message url:(id)url
{
  v5 = MEMORY[0x1E696AEC0];
  urlCopy = url;
  guid = [message guid];
  absoluteString = [urlCopy absoluteString];

  v9 = [v5 stringWithFormat:@"%@:%@", guid, absoluteString];

  return v9;
}

+ (id)_newMessagePartArrayForMessageItem:(id)item
{
  v29 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v5 = objc_opt_new();
  v20 = itemCopy;
  v6 = [self _newMessagePartsForMessageItem:itemCopy];
  objc_opt_class();
  v21 = v6;
  if (objc_opt_isKindOfClass())
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v8)
    {
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v5 addObject:v11];
          }

          else if (IMOSLoggingEnabled())
          {
            v12 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              v13 = objc_opt_class();
              v14 = NSStringFromClass(v13);
              *buf = 138412290;
              v27 = v14;
              _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Part is not an IMMessagePartChatItem, but instead a %@, dropping.", buf, 0xCu);
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v8);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 addObject:v6];
    }

    else if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        *buf = 138412290;
        v27 = v17;
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Part is not an IMMessagePartChatItem, but instead a %@, dropping.", buf, 0xCu);
      }
    }
  }

  v18 = [v5 copy];

  return v18;
}

+ (id)_defaultRichLinkAllowlist
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69A6128] pairWithFirst:@"icloud" second:@"com"];
  v6[0] = v2;
  v3 = [MEMORY[0x1E69A6128] pairWithFirst:@"appsto" second:@"re"];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

+ (id)_defaultRichLinkAllowListExceptions
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69A6128];
  v3 = [MEMORY[0x1E69A6128] pairWithFirst:@"icloud" second:@"com"];
  v4 = [v2 pairWithFirst:v3 second:&unk_1F1BA16E0];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  return v5;
}

+ (BOOL)_isPathExceptionToAllowlistedURL:(id)l
{
  v48 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  v6 = [v5 objectForKey:@"richLink-whitelist-exceptions"];

  v35 = v6;
  if ([v6 count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v43;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v43 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v42 + 1) + 8 * i);
          if ([v13 count] == 3)
          {
            v14 = MEMORY[0x1E69A6128];
            v15 = [v13 objectAtIndexedSubscript:0];
            v16 = [v13 objectAtIndexedSubscript:1];
            v17 = [v14 pairWithFirst:v15 second:v16];

            v18 = [v13 objectAtIndexedSubscript:2];
            v19 = [MEMORY[0x1E69A6128] pairWithFirst:v17 second:v18];
            [array addObject:v19];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v10);
    }

    v6 = v35;
  }

  else
  {
    array = [self _defaultRichLinkAllowListExceptions];
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = array;
  v20 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v39;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v39 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v38 + 1) + 8 * j);
        first = [v24 first];
        v25First = [first first];
        first2 = [v24 first];
        second = [first2 second];
        if ([lCopy __im_conformsToDomain:v25First domainExtension:second])
        {
          [lCopy pathComponents];
          v29 = v22;
          v31 = v30 = lCopy;
          second2 = [v24 second];
          v37 = [v31 isEqualToArray:second2];

          lCopy = v30;
          v22 = v29;

          if (v37)
          {
            v33 = 1;
            goto LABEL_25;
          }
        }

        else
        {
        }
      }

      v21 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v21);
    v33 = 0;
LABEL_25:
    v6 = v35;
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

+ (BOOL)_isAllowlistedURL:(id)l
{
  v40 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v5 = [MEMORY[0x1E69A53F0] sharedInstanceForBagType:1];
  v6 = [v5 objectForKey:@"richLink-whitelist"];

  if ([v6 count])
  {
    selfCopy = self;
    _defaultRichLinkAllowlist = objc_alloc_init(MEMORY[0x1E695DF70]);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v29 = v6;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v35;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v34 + 1) + 8 * i);
          if ([v13 count] == 2)
          {
            firstObject = [v13 firstObject];
            lastObject = [v13 lastObject];
            v16 = [MEMORY[0x1E69A6128] pairWithFirst:firstObject second:lastObject];
            [_defaultRichLinkAllowlist addObject:v16];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v10);
    }

    self = selfCopy;
    v6 = v29;
  }

  else
  {
    _defaultRichLinkAllowlist = [self _defaultRichLinkAllowlist];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = _defaultRichLinkAllowlist;
  v18 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v31;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v30 + 1) + 8 * j);
        first = [v22 first];
        second = [v22 second];
        if ([lCopy __im_conformsToDomain:first domainExtension:second])
        {
          v25 = [self _isPathExceptionToAllowlistedURL:lCopy];

          if ((v25 & 1) == 0)
          {
            v26 = 1;
            goto LABEL_25;
          }
        }

        else
        {
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v19);
  }

  v26 = 0;
LABEL_25:

  return v26;
}

+ (BOOL)_isAllowlistedRichLinkSender:(id)sender isBusiness:(BOOL)business
{
  businessCopy = business;
  senderCopy = sender;
  if (([senderCopy hasPrefix:@"urn:biz:"] & 1) != 0 || businessCopy)
  {
    if ([senderCopy length])
    {
      v6 = IMSharedHelperBusinessAllowlist();
      LOBYTE(businessCopy) = [v6 containsObject:senderCopy];
    }

    else
    {
      LOBYTE(businessCopy) = 0;
    }
  }

  return businessCopy;
}

+ (id)_richLinkRangesForMessageText:(id)text sender:(id)sender isAllowlistedRichLinkSender:(BOOL)linkSender
{
  linkSenderCopy = linkSender;
  textCopy = text;
  if (linkSenderCopy)
  {
    v9 = [self _additionalSupportedRichLinkSchemesForAllowlistedSender:sender];
  }

  else
  {
    v9 = 0;
  }

  v10 = IMRichLinkUtilitiesDetermineRichLinksInMessage(textCopy, v9);

  return v10;
}

+ (BOOL)_supportsRichLinkURL:(id)l forSender:(id)sender isAllowlistedRichLinkSender:(BOOL)linkSender
{
  lCopy = l;
  senderCopy = sender;
  v9 = lCopy != 0;
  if (lCopy && !linkSender)
  {
    if (IMIsRunningInUnitTesting() && ([lCopy absoluteString], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "containsString:", @"split"), v10, (v11 & 1) != 0))
    {
      v9 = 1;
    }

    else
    {
      v12 = +[IMBalloonPluginManager sharedInstance];
      v13 = [v12 dataSourceClassForBundleID:*MEMORY[0x1E69A6A18]];

      v9 = [v13 supportsURL:lCopy];
    }
  }

  return v9;
}

+ (id)messageBodyStringForCMMMessage:(id)message
{
  v22 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v4 = objc_alloc_init(MEMORY[0x1E696AD40]);
  fileTransferGUIDs = [messageCopy fileTransferGUIDs];
  v6 = [fileTransferGUIDs count];
  getCMMAssetOffset = [messageCopy getCMMAssetOffset];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v19 = v6;
      v20 = 2048;
      v21 = getCMMAssetOffset;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "CMM has %lu transfers, ignoring %lu", buf, 0x16u);
    }
  }

  if (getCMMAssetOffset < v6)
  {
    v9 = *MEMORY[0x1E69A5F68];
    v10 = *MEMORY[0x1E69A5F00];
    do
    {
      v11 = [fileTransferGUIDs objectAtIndex:getCMMAssetOffset];
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v13 = v12;
      if (v11)
      {
        CFDictionarySetValue(v12, v9, v11);
      }

      v14 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v10 attributes:v13];
      [v4 appendAttributedString:v14];

      ++getCMMAssetOffset;
    }

    while (v6 != getCMMAssetOffset);
  }

  __im_attributedStringByAssigningMessagePartNumbers = [v4 __im_attributedStringByAssigningMessagePartNumbers];
  v16 = [__im_attributedStringByAssigningMessagePartNumbers mutableCopy];

  return v16;
}

+ (id)_newDetonatedMessagePartsForMessageItem:(id)item chatContext:(id)context photosPluginPayload:(id)payload
{
  itemCopy = item;
  contextCopy = context;
  payloadCopy = payload;
  if ([itemCopy isCorrupt])
  {
    v10 = objc_alloc(MEMORY[0x1E696AD40]);
    v11 = IMCoreLocalizedString(@"CORRUPT_MESSAGE_FALLBACK_TEXT", @"Tap to show message");
    v12 = [v10 initWithString:v11 attributes:0];

    v13 = [IMTextMessagePartChatItem alloc];
    v14 = [v12 length];
    BYTE2(v29) = [contextCopy showTranslationAlternateText];
    LOWORD(v29) = 0;
    v15 = [(IMTextMessagePartChatItem *)v13 _initWithItem:itemCopy text:v12 translationSecondaryText:0 index:0 messagePartRange:0 subject:v14 shouldDisplayLink:0 isShowingEditHistory:v29 showTranslationAlternateText:?];
  }

  else
  {
    body = [itemCopy body];
    v12 = [body mutableCopy];

    mutableString = [v12 mutableString];
    [mutableString replaceOccurrencesOfString:*MEMORY[0x1E69A5F20] withString:&stru_1F1B76F98 options:0 range:{0, objc_msgSend(v12, "length")}];

    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = sub_1A8259B40;
    v49 = sub_1A825AECC;
    v50 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = sub_1A8259B40;
    v43 = sub_1A825AECC;
    v44 = 0;
    v18 = [v12 length];
    subject = [itemCopy subject];
    if (subject)
    {
      v20 = objc_alloc(MEMORY[0x1E696AAB0]);
      subject2 = [itemCopy subject];
      v22 = [v20 initWithString:subject2];
    }

    else
    {
      v22 = 0;
    }

    if ([v12 length])
    {
      v23 = *MEMORY[0x1E69A5FD8];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = sub_1A82D22FC;
      v30[3] = &unk_1E78117D8;
      v37 = 0;
      v38 = v18;
      v31 = v12;
      v32 = itemCopy;
      v33 = v22;
      v34 = contextCopy;
      v35 = &v45;
      v36 = &v39;
      [v31 enumerateAttribute:v23 inRange:0 options:v18 usingBlock:{0, v30}];

      v24 = v31;
    }

    else
    {
      v25 = [IMDetonatedMessagePartChatItem alloc];
      BYTE1(v29) = [contextCopy showTranslationAlternateText];
      LOBYTE(v29) = 0;
      v26 = [(IMTextMessagePartChatItem *)v25 _initWithItem:itemCopy text:0 translationSecondaryText:0 index:0 messagePartRange:0 subject:0 isShowingEditHistory:v22 showTranslationAlternateText:v29];
      v24 = v46[5];
      v46[5] = v26;
    }

    v27 = v46[5];
    if (!v27)
    {
      v27 = v40[5];
    }

    v15 = v27;

    _Block_object_dispose(&v39, 8);
    _Block_object_dispose(&v45, 8);
  }

  return v15;
}

+ (id)_singleChatItemForDeviceActionMessage:(id)message context:(id)context pluginPayload:(id)payload
{
  messageCopy = message;
  payloadCopy = payload;
  contextCopy = context;
  serviceVariant = [contextCopy serviceVariant];
  areSendersUnknown = [contextCopy areSendersUnknown];

  v12 = [IMTranscriptPluginChatItem alloc];
  isFromMe = 1;
  if (areSendersUnknown && serviceVariant != 1)
  {
    isFromMe = [messageCopy isFromMe];
  }

  v14 = [(IMTranscriptPluginChatItem *)v12 _initWithItem:messageCopy initialPayload:payloadCopy index:0 messagePartRange:0 parentChatHasKnownParticipants:0x7FFFFFFFFFFFFFFFLL, isFromMe];

  return v14;
}

+ (id)_newMessagePartsForMessageItem:(id)item chatContext:(id)context photosPluginPayload:(id)payload
{
  v213 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  contextCopy = context;
  payloadCopy = payload;
  if (![itemCopy wasDetonated])
  {
    v150 = payloadCopy;
    service = [itemCopy service];
    v151 = [IMService serviceWithName:service];

    serviceVariant = [contextCopy serviceVariant];
    areSendersUnknown = [contextCopy areSendersUnknown];
    if (!contextCopy)
    {
      goto LABEL_9;
    }

    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isIntroductionsEnabled = [mEMORY[0x1E69A8070] isIntroductionsEnabled];

    v15 = isIntroductionsEnabled && [contextCopy filterCategory] == 2;
    if ([v151 supportsCapability:*MEMORY[0x1E69A7948]] && !v15)
    {
      goto LABEL_9;
    }

    if ([contextCopy serviceVariant] == 3)
    {
      mEMORY[0x1E69A8070]2 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isTranscriptSharingEnabled = [mEMORY[0x1E69A8070]2 isTranscriptSharingEnabled];
    }

    else
    {
      if (([contextCopy hasResponded] & 1) != 0 || !objc_msgSend(contextCopy, "filterCategory") || !objc_msgSend(itemCopy, "_isSenderUnknown"))
      {
LABEL_9:
        isTranscriptSharingEnabled = 1;
        goto LABEL_10;
      }

      if (IMOSLoggingEnabled())
      {
        v40 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *v200 = 0;
          _os_log_impl(&dword_1A823F000, v40, OS_LOG_TYPE_INFO, "Not displaying link, sender is unknown and there's no reply in chat", v200, 2u);
        }
      }

      isTranscriptSharingEnabled = 0;
    }

LABEL_10:
    *v200 = 0;
    v201 = v200;
    v202 = 0x3032000000;
    v203 = sub_1A8259B40;
    v204 = sub_1A825AECC;
    v205 = 0;
    v194 = 0;
    v195 = &v194;
    v196 = 0x3032000000;
    v197 = sub_1A8259B40;
    v198 = sub_1A825AECC;
    v199 = 0;
    if ([itemCopy isCorrupt])
    {
      v17 = objc_alloc(MEMORY[0x1E696AD40]);
      v18 = IMCoreLocalizedString(@"CORRUPT_MESSAGE_FALLBACK_TEXT", @"Tap to show message");
      v19 = [v17 initWithString:v18 attributes:0];

      v20 = [IMTextMessagePartChatItem alloc];
      v21 = [v19 length];
      BYTE2(v125) = [contextCopy showTranslationAlternateText];
      LOWORD(v125) = 0;
      v22 = [(IMTextMessagePartChatItem *)v20 _initWithItem:itemCopy text:v19 translationSecondaryText:0 index:0 messagePartRange:0 subject:v21 shouldDisplayLink:0 isShowingEditHistory:v125 showTranslationAlternateText:?];
      v23 = *(v201 + 5);
      *(v201 + 5) = v22;

      v11 = *(v201 + 5);
LABEL_145:

      _Block_object_dispose(&v194, 8);
      _Block_object_dispose(v200, 8);

      payloadCopy = v150;
      goto LABEL_146;
    }

    service2 = [itemCopy service];
    v25 = +[IMServiceImpl iMessageService];
    internalName = [v25 internalName];
    v27 = [service2 isEqualToIgnoringCase:internalName];

    v28 = *MEMORY[0x1E69A6878];
    if (!v27)
    {
      v28 = 2000;
    }

    obj = v28;
    getCMMState = [itemCopy getCMMState];
    if (getCMMState || ([itemCopy balloonBundleID], v30 = objc_claimAutoreleasedReturnValue(), IMBalloonExtensionIDWithSuffix(), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v30, "isEqualToString:", v31), v31, v30, (v32 & 1) != 0))
    {
      _isSenderUnknown = [itemCopy _isSenderUnknown];
      v33 = +[IMCoreAccountsMonitor sharedInstance];
      isSignedIntoiCloud = [v33 isSignedIntoiCloud];

      v132 = isSignedIntoiCloud ^ 1;
      if (getCMMState < 4)
      {
        v35 = isSignedIntoiCloud;
      }

      else
      {
        v35 = 0;
      }

      v130 = v35;
      if (getCMMState)
      {
        v19 = [self messageBodyStringForCMMMessage:itemCopy];
        if (IMOSLoggingEnabled())
        {
          v36 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            guid = [itemCopy guid];
            *buf = 138412802;
            *&buf[4] = guid;
            *&buf[12] = 2048;
            *&buf[14] = getCMMState;
            *&buf[22] = 2112;
            v212 = v19;
            _os_log_impl(&dword_1A823F000, v36, OS_LOG_TYPE_INFO, "Using Dynamic body for CMM %@, state %lu: %@", buf, 0x20u);
          }
        }

        if (v19)
        {
          v38 = 1;
          v141 = 1;
          if ([v19 length])
          {
            goto LABEL_48;
          }

          goto LABEL_43;
        }

        v38 = 1;
      }

      else
      {
        v41 = IMLogHandleForCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          sub_1A84DFC14();
        }

        v19 = 0;
        v38 = 0;
      }

      v141 = 1;
    }

    else
    {
      v19 = 0;
      v38 = 0;
      v132 = 0;
      _isSenderUnknown = 0;
      v141 = 0;
      v130 = 0;
    }

LABEL_43:
    v42 = objc_alloc(MEMORY[0x1E696AD40]);
    v43 = itemCopy;
    if ([v43 hasDataDetectorResults] && (objc_msgSend(v43, "body"), v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v44, "length") < obj, v44, v45))
    {
      body = [v43 body];
      body2 = sub_1A8399EB0(body);
    }

    else
    {
      body2 = [v43 body];
    }

    v48 = [v42 initWithAttributedString:body2];
    v19 = v48;
LABEL_48:
    v210 = *MEMORY[0x1E69A5FB0];
    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v210 count:1];
    v50 = [v19 __im_containsAttributedValue:v49];

    if (v50)
    {
      IMRemoveTrackingInformationFromMutableAttributedString(v19);
    }

    sender = [itemCopy sender];
    v52 = [self _isAllowlistedRichLinkSender:sender isBusiness:serviceVariant == 1];

    if ((v38 & 1) != 0 || ![itemCopy hasDataDetectorResults])
    {
      v148 = 0;
    }

    else
    {
      sender2 = [itemCopy sender];
      v148 = [self _richLinkRangesForMessageText:v19 sender:sender2 isAllowlistedRichLinkSender:v52];
    }

    if (isTranscriptSharingEnabled)
    {
      v54 = 1;
    }

    else if ([v148 count])
    {
      string = [v19 string];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v212) = 0;
      v190[0] = MEMORY[0x1E69E9820];
      v190[1] = 3221225472;
      v190[2] = sub_1A82D3954;
      v190[3] = &unk_1E7811800;
      v56 = string;
      selfCopy = self;
      v191 = v56;
      v192 = buf;
      [v148 enumerateObjectsUsingBlock:v190];
      v54 = *(*&buf[8] + 24);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v54 = 0;
    }

    if ((v141 & 1) == 0)
    {
      mutableString = [v19 mutableString];
      v58 = [v19 length];
      [mutableString replaceOccurrencesOfString:*MEMORY[0x1E69A5F20] withString:&stru_1F1B76F98 options:0 range:{0, v58}];
    }

    v136 = [v19 length];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v212) = 0;
    retractedPartIndexes = [itemCopy retractedPartIndexes];
    v59 = [self richCardsChatItemsForMessageItem:itemCopy text:v19];
    v60 = v59;
    if (v59)
    {
      v11 = v59;
LABEL_144:

      _Block_object_dispose(buf, 8);
      goto LABEL_145;
    }

    v61 = [self standaloneChipListChatItemForMessageItem:itemCopy text:v19];
    v62 = v61;
    if (v61)
    {
      v11 = v61;
LABEL_143:

      v60 = 0;
      goto LABEL_144;
    }

    v129 = areSendersUnknown ^ 1;
    v144 = *MEMORY[0x1E69A5FD8];
    v168[0] = MEMORY[0x1E69E9820];
    v168[1] = 3221225472;
    v168[2] = sub_1A82D3A24;
    v168[3] = &unk_1E7811850;
    v177 = 0;
    v178 = v136;
    v169 = v19;
    v63 = itemCopy;
    v170 = v63;
    selfCopy2 = self;
    v182 = v130;
    v183 = v132;
    v184 = _isSenderUnknown;
    v131 = retractedPartIndexes;
    v171 = v131;
    v174 = buf;
    v185 = v141;
    v142 = contextCopy;
    v172 = v142;
    v175 = v200;
    v176 = &v194;
    v180 = v136;
    v181 = obj;
    v186 = v54 & 1;
    v187 = v52;
    v173 = v148;
    v188 = serviceVariant == 1;
    v189 = v129;
    v133 = v169;
    [v169 enumerateAttribute:v144 inRange:0 options:v136 usingBlock:{0, v168}];
    v147 = v63;
    subject = [v63 subject];
    if (!subject)
    {
LABEL_82:
      if (v136 > obj)
      {
        if (*(v201 + 5))
        {
          v78 = objc_alloc(MEMORY[0x1E695DEC8]);
          obja = [v78 initWithObjects:{*(v201 + 5), 0}];
          obja = [[IMAggregateMessagePartChatItem alloc] _initWithItem:v147 messagePartRange:0 subparts:v136, obja];
          v80 = *(v201 + 5);
          *(v201 + 5) = obja;

          [*(v201 + 5) setChipListFromText:v133];
        }

        else
        {
          if (!v195[5])
          {
            goto LABEL_86;
          }

          v166 = 0u;
          v167 = 0u;
          v164 = 0u;
          v165 = 0u;
          obja = v195[5];
          v82 = [obja countByEnumeratingWithState:&v164 objects:v209 count:16];
          if (!v82)
          {
LABEL_99:

            v89 = [IMAggregateMessagePartChatItem alloc];
            v90 = [(IMAggregateMessagePartChatItem *)v89 _initWithItem:v147 messagePartRange:0 subparts:v136, v195[5]];
            v91 = *(v201 + 5);
            *(v201 + 5) = v90;

            [*(v201 + 5) setChipListFromText:v133];
            objb = v195[5];
            v195[5] = 0;

            goto LABEL_86;
          }

          v146 = *v165;
LABEL_92:
          v83 = 0;
          while (1)
          {
            if (*v165 != v146)
            {
              objc_enumerationMutation(obja);
            }

            v84 = *(*(&v164 + 1) + 8 * v83);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              transferGUID = [v84 transferGUID];
              v86 = +[IMFileTransferCenter sharedInstance];
              v87 = [v86 transferForGUID:transferGUID];

              type = [v87 type];
              LODWORD(v86) = [self _shouldAggregateForTransferType:type];

              if (!v86)
              {
                break;
              }
            }

            if (v82 == ++v83)
            {
              v82 = [obja countByEnumeratingWithState:&v164 objects:v209 count:16];
              if (v82)
              {
                goto LABEL_92;
              }

              goto LABEL_99;
            }
          }
        }
      }

LABEL_86:
      if (serviceVariant == 1)
      {
        v81 = *(v201 + 5);
        if (v81)
        {
          [v81 setIsBusiness:1];
        }

        else if (v195[5])
        {
          v162 = 0u;
          v163 = 0u;
          v160 = 0u;
          v161 = 0u;
          v92 = v195[5];
          v93 = [v92 countByEnumeratingWithState:&v160 objects:v208 count:16];
          if (v93)
          {
            v94 = *v161;
            do
            {
              for (i = 0; i != v93; ++i)
              {
                if (*v161 != v94)
                {
                  objc_enumerationMutation(v92);
                }

                [*(*(&v160 + 1) + 8 * i) setIsBusiness:1];
              }

              v93 = [v92 countByEnumeratingWithState:&v160 objects:v208 count:16];
            }

            while (v93);
          }
        }
      }

      if ([v142 serviceVariant] == 2)
      {
        v96 = *(v201 + 5);
        if (v96)
        {
          [v96 setIsStewie:1];
        }

        else if (v195[5])
        {
          v158 = 0u;
          v159 = 0u;
          v156 = 0u;
          v157 = 0u;
          v97 = v195[5];
          v98 = [v97 countByEnumeratingWithState:&v156 objects:v207 count:16];
          if (v98)
          {
            v99 = *v157;
            do
            {
              for (j = 0; j != v98; ++j)
              {
                if (*v157 != v99)
                {
                  objc_enumerationMutation(v97);
                }

                [*(*(&v156 + 1) + 8 * j) setIsStewie:1];
              }

              v98 = [v97 countByEnumeratingWithState:&v156 objects:v207 count:16];
            }

            while (v98);
          }
        }
      }

      if ([v147 isPendingSatelliteSend])
      {
        v101 = *(v201 + 5);
        if (v101)
        {
          [v101 setPendingSatelliteSend:1];
        }

        else if (v195[5])
        {
          v154 = 0u;
          v155 = 0u;
          v152 = 0u;
          v153 = 0u;
          v102 = v195[5];
          v103 = [v102 countByEnumeratingWithState:&v152 objects:v206 count:16];
          if (v103)
          {
            v104 = *v153;
            do
            {
              for (k = 0; k != v103; ++k)
              {
                if (*v153 != v104)
                {
                  objc_enumerationMutation(v102);
                }

                [*(*(&v152 + 1) + 8 * k) setPendingSatelliteSend:1];
              }

              v103 = [v102 countByEnumeratingWithState:&v152 objects:v206 count:16];
            }

            while (v103);
          }
        }
      }

      v106 = [self aggregatePartsForParts:v195[5] forMessage:v147 context:v142 text:v133];
      v107 = v195[5];
      v195[5] = v106;

      if ([v131 count] && objc_msgSend(v147, "scheduleType") != 2)
      {
        v108 = v195;
        if (!v195[5])
        {
          v109 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v110 = v195[5];
          v195[5] = v109;

          v108 = v195;
        }

        if (*(v201 + 5))
        {
          [v108[5] addObject:?];
          v111 = *(v201 + 5);
          *(v201 + 5) = 0;

          v108 = v195;
        }

        v112 = [self _retractedMessagePartsForMessage:v147 parts:v108[5] retractedPartIndexes:v131];
        v113 = v195[5];
        v195[5] = v112;
      }

      v114 = *(v201 + 5);
      if (!v114)
      {
        v114 = v195[5];
      }

      v115 = v114;
      v116 = [self _processChatItemsForRichActions:v115];

      v11 = v116;
      v62 = 0;
      goto LABEL_143;
    }

    v145 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:subject];
    v64 = *(v201 + 5);
    if (v64)
    {
      v65 = v64;
    }

    else
    {
      if (![v195[5] count])
      {
        v66 = 0;
        goto LABEL_71;
      }

      v65 = [v195[5] objectAtIndex:0];
    }

    v66 = v65;
LABEL_71:
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ![v66 index])
    {
      index = [v66 index];
      translationSourceLanguage = [v66 translationSourceLanguage];
      guid2 = [v63 guid];
      v71 = [IMMessagePartChatItem chatItemGUIDForMessageGUID:guid2 partIndex:index];

      showingEditHistoryForChatItemGUIDs = [v142 showingEditHistoryForChatItemGUIDs];
      v120 = [showingEditHistoryForChatItemGUIDs containsObject:v71];

      v126 = [IMTextMessagePartChatItem alloc];
      _item = [v66 _item];
      text = [v66 text];
      translationSecondaryText = [v66 translationSecondaryText];
      BYTE1(v125) = [v142 showTranslationAlternateText];
      LOBYTE(v125) = v120;
      v123 = [(IMTextMessagePartChatItem *)v126 _initWithItem:_item text:text translationSecondaryText:translationSecondaryText index:index messagePartRange:0 subject:v136 isShowingEditHistory:v145 showTranslationAlternateText:v125];

      [v123 setChipListFromText:v133];
      [v123 setTranslationSourceLanguage:translationSourceLanguage];
      v124 = v201;
      if (!*(v201 + 5))
      {
        [v195[5] replaceObjectAtIndex:0 withObject:v123];
        v66 = v123;
        goto LABEL_81;
      }

      v66 = v123;
      v75 = *(v124 + 5);
      *(v124 + 5) = v66;
    }

    else
    {
      guid3 = [v63 guid];
      translationSourceLanguage = [IMMessagePartChatItem chatItemGUIDForMessageGUID:guid3 partIndex:-1];

      showingEditHistoryForChatItemGUIDs2 = [v142 showingEditHistoryForChatItemGUIDs];
      LOBYTE(guid3) = [showingEditHistoryForChatItemGUIDs2 containsObject:translationSourceLanguage];

      v70 = [IMTextMessagePartChatItem alloc];
      BYTE1(v125) = [v142 showTranslationAlternateText];
      LOBYTE(v125) = guid3;
      v71 = [(IMTextMessagePartChatItem *)v70 _initWithItem:v63 text:0 translationSecondaryText:0 index:-1 messagePartRange:0 subject:v136 isShowingEditHistory:v145 showTranslationAlternateText:v125];
      v72 = v195[5];
      if (!*(v201 + 5))
      {
        if (!v72)
        {
          v76 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v77 = v195[5];
          v195[5] = v76;

          v72 = v195[5];
        }

        [v72 insertObject:v71 atIndex:0];
        goto LABEL_81;
      }

      if (!v72)
      {
        v73 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v74 = v195[5];
        v195[5] = v73;

        v72 = v195[5];
      }

      [v72 addObject:v71];
      [v195[5] addObject:*(v201 + 5)];
      v75 = *(v201 + 5);
      *(v201 + 5) = 0;
    }

LABEL_81:
    goto LABEL_82;
  }

  v11 = [self _newDetonatedMessagePartsForMessageItem:itemCopy chatContext:contextCopy photosPluginPayload:payloadCopy];
LABEL_146:

  return v11;
}

+ (id)_processChatItemsForRichActions:(id)actions
{
  v24[1] = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = actionsCopy;
LABEL_5:
    v5 = v4;
LABEL_6:
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    v23[3] = 0;
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = sub_1A82D5554;
    v18 = &unk_1E7811878;
    v8 = v5;
    v19 = v8;
    v9 = v7;
    v20 = v9;
    v10 = indexSet;
    v21 = v10;
    v22 = v23;
    [v8 enumerateObjectsUsingBlock:&v15];
    [v8 insertObjects:v9 atIndexes:{v10, v15, v16, v17, v18}];
    v11 = v21;
    v12 = v8;

    _Block_object_dispose(v23, 8);
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [actionsCopy mutableCopy];
    goto LABEL_5;
  }

  if (actionsCopy)
  {
    v24[0] = actionsCopy;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v5 = [v14 mutableCopy];

    goto LABEL_6;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

+ (id)richCardsChatItemsForMessageItem:(id)item text:(id)text
{
  itemCopy = item;
  textCopy = text;
  if ([textCopy length] == 1 && (objc_msgSend(textCopy, "string"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "substringToIndex:", 1), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", *MEMORY[0x1E69A78B0]), v8, v7, v9))
  {
    v10 = [textCopy attributesAtIndex:0 effectiveRange:0];
    v11 = [v10 _arrayForKey:*MEMORY[0x1E69A78A8]];
    v12 = objc_alloc(MEMORY[0x1E69A8200]);
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = MEMORY[0x1E695E0F0];
    }

    v14 = [v12 initWithCardArray:v13];
    if (v14)
    {
      v15 = v14;
      v16 = [v10 _dictionaryForKey:*MEMORY[0x1E69A7DE0]];
      if (v16)
      {
        v17 = [objc_alloc(MEMORY[0x1E69A8350]) initWithUrlToTransferGuids:v16];
        if (v17)
        {
          v18 = v17;
          [v15 updateUrlToTransferMap:v17];
        }
      }

      v37 = v16;
      v38 = v10;
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v20 = -[IMRichLinkCardMessagePartChatItem initWithItem:richCards:selectedIndex:]([IMRichLinkCardMessagePartChatItem alloc], "initWithItem:richCards:selectedIndex:", itemCopy, v15, [itemCopy selectedRichCardIndex]);
      suggestedRepliesList = [v15 suggestedRepliesList];
      v39 = [[IMRichActionFooterChatItem alloc] _initWithItem:itemCopy];
      richCards = [(IMRichLinkCardMessagePartChatItem *)v20 richCards];
      cards = [richCards cards];
      v23 = [cards count];

      if (v23 >= 2)
      {
        v24 = [IMRichActionCarouselCountChatItem alloc];
        selectedRichCardIndex = [itemCopy selectedRichCardIndex];
        richCards2 = [(IMRichLinkCardMessagePartChatItem *)v20 richCards];
        cards2 = [richCards2 cards];
        v28 = -[IMRichActionCarouselCountChatItem _initWithItem:selectedIndex:totalCount:](v24, "_initWithItem:selectedIndex:totalCount:", itemCopy, selectedRichCardIndex, [cards2 count]);

        [v19 addObject:v28];
      }

      v29 = suggestedRepliesList;
      if ([suggestedRepliesList count])
      {
        v30 = -[IMSuggestedRepliesMessagePartChatItem initWithItem:suggestedRepliesList:selectedIndex:]([IMSuggestedRepliesMessagePartChatItem alloc], "initWithItem:suggestedRepliesList:selectedIndex:", itemCopy, v29, [itemCopy selectedRichCardIndex]);
        suggestedActionsList = [v15 suggestedActionsList];
        v32 = [suggestedActionsList count];

        [v19 addObject:v20];
        [v19 addObject:v30];
        if (v32)
        {
          [v19 addObject:v39];
        }

        v10 = v38;
      }

      else
      {
        suggestedActionsList2 = [v15 suggestedActionsList];
        v34 = [suggestedActionsList2 count];

        [v19 addObject:v20];
        v10 = v38;
        if (v34)
        {
          [v19 addObject:v39];
        }
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)expandRichCardsFor:(id)for richCards:(id)cards
{
  forCopy = for;
  cardsCopy = cards;
  v7 = objc_opt_new();
  expandToIndividualCard = [cardsCopy expandToIndividualCard];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1A82D5BA0;
  v14[3] = &unk_1E78118A0;
  v15 = forCopy;
  v9 = v7;
  v16 = v9;
  v10 = forCopy;
  [expandToIndividualCard enumerateObjectsUsingBlock:v14];
  v11 = v16;
  v12 = v9;

  return v9;
}

+ (id)standaloneChipListChatItemForMessageItem:(id)item text:(id)text
{
  itemCopy = item;
  textCopy = text;
  if ([textCopy length] == 1 && (objc_msgSend(textCopy, "string"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "substringToIndex:", 1), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69A6CF0]), v9, v8, v10))
  {
    v11 = [textCopy attributesAtIndex:0 effectiveRange:0];
    if ([itemCopy isFromMe])
    {
      v12 = [v11 _dictionaryForKey:*MEMORY[0x1E69A7CE0]];
      v13 = [objc_alloc(MEMORY[0x1E69A7FA8]) initWithDictionary:v12];
      if (v13)
      {
        v14 = v13;
        v15 = [[IMSuggestedReplyMessagePartChatItem alloc] initWithItem:itemCopy suggestedReply:v13];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v16 = [self suggestedRepliesMessagePartChatItemForMessageItem:itemCopy attributes:v11];
      v12 = v16;
      if (v16)
      {
        v17 = v16;
        v12 = v17;
      }

      else
      {
        v17 = [self suggestedActionsMessagePartChatItemForMessageItem:itemCopy attributes:v11];
      }

      v15 = v17;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (BOOL)isChatBotContentOnly:(id)only
{
  onlyCopy = only;
  if ([onlyCopy length] == 1)
  {
    string = [onlyCopy string];
    v5 = [string substringToIndex:1];
    v6 = [v5 isEqualToString:*MEMORY[0x1E69A6CF0]];

    string2 = [onlyCopy string];
    v8 = [string2 substringToIndex:1];
    v9 = [v8 isEqualToString:*MEMORY[0x1E69A78B0]];

    v10 = v9 | v6;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

+ (id)suggestedRepliesMessagePartChatItemForMessageItem:(id)item attributes:(id)attributes
{
  v15[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  attributesCopy = attributes;
  v7 = [attributesCopy _numberForKey:*MEMORY[0x1E69A6CF8]];
  if ([v7 BOOLValue])
  {
    v8 = 0;
  }

  else
  {
    v9 = [attributesCopy _arrayForKey:*MEMORY[0x1E69A6CE8]];
    v10 = [objc_alloc(MEMORY[0x1E69A7FA0]) initWithChipArray:v9];
    suggestedReplies = [v10 suggestedReplies];
    if ([suggestedReplies count])
    {
      suggestedReplies2 = [v10 suggestedReplies];
      v15[0] = suggestedReplies2;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

      v8 = -[IMSuggestedRepliesMessagePartChatItem initWithItem:suggestedRepliesList:selectedIndex:]([IMSuggestedRepliesMessagePartChatItem alloc], "initWithItem:suggestedRepliesList:selectedIndex:", itemCopy, v13, [itemCopy selectedRichCardIndex]);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

+ (id)suggestedActionsMessagePartChatItemForMessageItem:(id)item attributes:(id)attributes
{
  itemCopy = item;
  v6 = [attributes _arrayForKey:*MEMORY[0x1E69A6CE8]];
  v7 = [objc_alloc(MEMORY[0x1E69A7FA0]) initWithChipArray:v6];
  suggestedActions = [v7 suggestedActions];
  if ([suggestedActions count])
  {
    v9 = [[IMSuggestedActionsMessagePartChatItem alloc] initWithItem:itemCopy suggestedActionsList:suggestedActions];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_newAudioMessagePartsForMessageItem:(id)item text:(id)text chatContext:(id)context retractedPartIndexes:(id)indexes singlePart:(id)part
{
  itemCopy = item;
  textCopy = text;
  contextCopy = context;
  indexesCopy = indexes;
  partCopy = part;
  v17 = [textCopy length];
  fileTransferGUIDs = [itemCopy fileTransferGUIDs];
  firstObject = [fileTransferGUIDs firstObject];

  if (firstObject && ![indexesCopy count])
  {
    contextCopy = [(IMAttachmentMessagePartChatItem *)[IMAudioMessageChatItem alloc] _initWithItem:itemCopy text:textCopy index:0 messagePartRange:0 transferGUID:v17 chatContext:firstObject, contextCopy];
    [contextCopy setIsBusiness:{objc_msgSend(contextCopy, "serviceVariant") == 1}];
    v22 = [MEMORY[0x1E695DEC8] arrayWithObject:contextCopy];
LABEL_9:
    v23 = v22;

    goto LABEL_10;
  }

  if ([indexesCopy count])
  {
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    contextCopy = v20;
    if (partCopy)
    {
      [v20 addObject:partCopy];
    }

    v22 = [self _retractedMessagePartsForMessage:itemCopy parts:contextCopy retractedPartIndexes:indexesCopy];
    goto LABEL_9;
  }

  v23 = 0;
LABEL_10:

  return v23;
}

+ (id)_retractedMessagePartsForMessage:(id)message parts:(id)parts retractedPartIndexes:(id)indexes
{
  v35 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  partsCopy = parts;
  indexesCopy = indexes;
  v10 = [partsCopy mutableCopy];
  if ([indexesCopy count])
  {
    v23 = v10;
    failedRetractPartIndexes = [messageCopy failedRetractPartIndexes];
    editUnsupportedByHandleIDs = [messageCopy editUnsupportedByHandleIDs];
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = editUnsupportedByHandleIDs;
    v15 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v31;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v31 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [messageCopy _imHandleWithID:*(*(&v30 + 1) + 8 * i)];
          if (v19)
          {
            [v13 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v16);
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1A82D64B8;
    v24[3] = &unk_1E78118F0;
    v25 = messageCopy;
    v26 = failedRetractPartIndexes;
    v27 = v13;
    v28 = partsCopy;
    v10 = v23;
    v29 = v23;
    v20 = v13;
    v21 = failedRetractPartIndexes;
    [indexesCopy enumerateIndexesUsingBlock:v24];
  }

  return v10;
}

+ (int64_t)_attachmentStackAggregationThreshold
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  threeAttachmentStackEnabled = [mEMORY[0x1E69A8070] threeAttachmentStackEnabled];

  if (threeAttachmentStackEnabled)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

+ (id)aggregatePartsForParts:(id)parts forMessage:(id)message context:(id)context text:(id)text
{
  partsCopy = parts;
  messageCopy = message;
  contextCopy = context;
  textCopy = text;
  v13 = [partsCopy mutableCopy];
  if ([v13 count])
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v13, "count")}];
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x3032000000;
    v40[3] = sub_1A8259B40;
    v40[4] = sub_1A825AECC;
    v41 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A82D69E4;
    aBlock[3] = &unk_1E7811918;
    v37 = messageCopy;
    v38 = contextCopy;
    v15 = textCopy;
    v39 = v15;
    v16 = _Block_copy(aBlock);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = sub_1A82D6BF8;
    v31[3] = &unk_1E7811940;
    v35 = v40;
    v17 = v16;
    v34 = v17;
    v18 = v14;
    v32 = v18;
    v33 = v15;
    v19 = _Block_copy(v31);
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = sub_1A82D6DD4;
    v27 = &unk_1E7811968;
    v30 = v40;
    v20 = v18;
    v28 = v20;
    v21 = v19;
    v29 = v21;
    [v13 enumerateObjectsUsingBlock:&v24];
    v21[2](v21);
    v22 = [v20 copy];

    _Block_object_dispose(v40, 8);
    v13 = v22;
  }

  return v13;
}

+ (id)messageBodyStringForAttachmentGUIDs:(id)ds
{
  v25 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v4 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = dsCopy;
  v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v21;
    key = *MEMORY[0x1E69A5F68];
    v10 = *MEMORY[0x1E69A5F10];
    v11 = *MEMORY[0x1E69A5FD8];
    v12 = *MEMORY[0x1E69A5F00];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if (v14)
        {
          CFDictionarySetValue(v5, key, v14);
        }

        CFDictionarySetValue(v5, v10, &unk_1F1BA1788);
        v15 = [MEMORY[0x1E696AD98] numberWithInt:v8];
        if (v15)
        {
          CFDictionarySetValue(v5, v11, v15);
        }

        v16 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v12 attributes:v5];
        [v4 appendAttributedString:v16];
        v8 = (v8 + 1);
      }

      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (BOOL)_shouldAggregateForTransferType:(id)type
{
  typeCopy = type;
  if (qword_1EB2EA208 != -1)
  {
    sub_1A84DFD40();
  }

  if (qword_1EB2EA210 != -1)
  {
    sub_1A84DFD54();
  }

  v4 = off_1EB2EA200(typeCopy, qword_1EB2EA218) != 0;

  return v4;
}

+ (id)_messageItemWithPartsDeleted:(id)deleted fromMessageItem:(id)item indexesOfItemsDeleted:(id *)itemsDeleted indexToRangeMapping:(id *)mapping
{
  v43 = *MEMORY[0x1E69E9840];
  deletedCopy = deleted;
  itemCopy = item;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v40 = deletedCopy;
      v41 = 2112;
      v42 = itemCopy;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Message with parts deleted: %@ from message: %@", buf, 0x16u);
    }
  }

  v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = deletedCopy;
  v10 = 0;
  v11 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v11)
  {
    v12 = *v35;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        messagePartAttributeName = [v14 messagePartAttributeName];
        if (messagePartAttributeName == -1)
        {
          v10 = 1;
        }

        else
        {
          [v9 addIndex:messagePartAttributeName];
          messagePartRange = [v14 messagePartRange];
          v18 = v17;
          if (!messagePartAttributeName)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              subject = [v14 subject];
              v10 = [subject length] != 0;
            }
          }

          if (messagePartRange | v18)
          {
            v20 = [MEMORY[0x1E696AD98] numberWithInteger:messagePartAttributeName];
            v21 = [v32 objectForKey:v20];

            if (!v21)
            {
              v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v22 = [MEMORY[0x1E696AD98] numberWithInteger:messagePartAttributeName];
              [v32 setObject:v21 forKey:v22];
            }

            v23 = [MEMORY[0x1E696B098] valueWithRange:{messagePartRange, v18}];
            [v21 addObject:v23];
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v11);
  }

  if (itemsDeleted)
  {
    v24 = v9;
    *itemsDeleted = v9;
  }

  v25 = v32;
  if (mapping)
  {
    v26 = v32;
    v25 = v32;
    *mapping = v32;
  }

  v27 = [MEMORY[0x1E69A8138] _messageItemWithIndexesDeleted:v9 subRangesToDeleteMapping:v25 deleteSubject:v10 deleteTransferCallback:&unk_1F1B6E400 createItemCallback:&unk_1F1B6E420 fromMessageItem:itemCopy];

  return v27;
}

+ (id)chatItemGUIDForMessageGUID:(id)d partIndex:(int64_t)index
{
  v5 = MEMORY[0x1E696AEC0];
  dCopy = d;
  dCopy = [[v5 alloc] initWithFormat:@"p:%ld/%@", index, dCopy];

  return dCopy;
}

- (id)_initWithItem:(id)item index:(int64_t)index messagePartRange:(_NSRange)range syndicationBehavior:(int64_t)behavior
{
  length = range.length;
  location = range.location;
  itemCopy = item;
  v12 = [(IMChatItem *)self _initWithItem:itemCopy];
  v13 = v12;
  if (v12)
  {
    v12[10] = index;
    v14 = v12 + 21;
    v12[21] = location;
    v12[22] = length;
    v12[20] = [itemCopy replyCountForPartIndex:index];
    v13[16] = behavior;
    syndicationRanges = [itemCopy syndicationRanges];
    if (syndicationRanges)
    {
      v16 = [MEMORY[0x1E69A8158] messagePartSyndicationRangeForRange:*v14 inRangesArray:{v13[22], syndicationRanges}];
      v17 = v16;
      if (v16)
      {
        v13[13] = [v16 syndicationType];
        v13[14] = [v17 syndicationStatus];
        if ([v13 isHighlighted])
        {
          if (v13[16] == 1)
          {
            v18 = [IMMessagePartHighlightChatItem alloc];
            guid = [itemCopy guid];
            v20 = [(IMMessagePartHighlightChatItem *)v18 _initWithItem:itemCopy highlightedMessagePartGUID:guid highlightedMessagePartIndex:index highlightedMessagePartRange:location, length];
            v21 = v13[15];
            v13[15] = v20;
          }
        }
      }
    }
  }

  return v13;
}

- (id)_initWithItem:(id)item text:(id)text translationSecondaryText:(id)secondaryText index:(int64_t)index messagePartRange:(_NSRange)range visibleAssociatedMessageChatItems:(id)items
{
  length = range.length;
  location = range.location;
  itemCopy = item;
  textCopy = text;
  secondaryTextCopy = secondaryText;
  itemsCopy = items;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isSWYAttachmentsEnabled = [mEMORY[0x1E69A8070] isSWYAttachmentsEnabled];

  if (isSWYAttachmentsEnabled)
  {
    v20 = -[IMMessagePartChatItem _initWithItem:index:messagePartRange:syndicationBehavior:](self, "_initWithItem:index:messagePartRange:syndicationBehavior:", itemCopy, index, location, length, [itemCopy isFileAttachment]);
  }

  else
  {
    v20 = [(IMMessagePartChatItem *)self _initWithItem:itemCopy index:index messagePartRange:location, length];
  }

  v21 = v20;
  if (v20)
  {
    guid = [itemCopy guid];
    v23 = [IMMessagePartChatItem chatItemGUIDForMessageGUID:guid partIndex:index];
    [v21 _setGUID:v23];
    v24 = [v21 extractAndSetChipListFrom:textCopy];
    v25 = *(v21 + 8);
    *(v21 + 8) = v24;

    v26 = [secondaryTextCopy copy];
    v27 = *(v21 + 9);
    *(v21 + 9) = v26;

    if ([itemCopy isCorrupt])
    {
      body = [itemCopy body];
      v29 = [body copy];
      v30 = *(v21 + 11);
      *(v21 + 11) = v29;
    }

    v31 = [itemsCopy copy];
    [v21 _setVisibleAssociatedMessageChatItems:v31];

    *(v21 + 59) = [itemCopy isPendingSatelliteSend];
  }

  return v21;
}

- (id)extractAndSetChipListFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy)
  {
    string = [fromCopy string];
    v7 = [string rangeOfString:*MEMORY[0x1E69A6CF0]];
    v9 = v8;

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1A82D7DF8;
    v12[3] = &unk_1E78119D0;
    v12[4] = self;
    [v5 enumerateAttributesInRange:v7 options:v9 usingBlock:{0, v12}];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = [v5 copy];
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v5];
      [v10 replaceCharactersInRange:v7 withString:{v9, &stru_1F1B76F98}];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_setVisibleAssociatedMessageChatItems:(id)items
{
  v17 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  visibleAssociatedMessageChatItems = self->_visibleAssociatedMessageChatItems;
  if (visibleAssociatedMessageChatItems != itemsCopy && ![(NSArray *)visibleAssociatedMessageChatItems isEqualToArray:itemsCopy])
  {
    objc_storeStrong(&self->_visibleAssociatedMessageChatItems, items);
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = self->_visibleAssociatedMessageChatItems;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11++) _setParentMessageIsFromMe:{-[IMMessageChatItem isFromMe](self, "isFromMe", v12)}];
        }

        while (v9 != v11);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (id)_visibleAssociatedChatItemsByFlatteningAggregateChatItems
{
  v28 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [(IMMessagePartChatItem *)self visibleAssociatedMessageChatItems];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          acknowledgments = [v9 acknowledgments];
          v11 = [acknowledgments countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v19;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v19 != v13)
                {
                  objc_enumerationMutation(acknowledgments);
                }

                [array addObject:*(*(&v18 + 1) + 8 * j)];
              }

              v12 = [acknowledgments countByEnumeratingWithState:&v18 objects:v26 count:16];
            }

            while (v12);
          }
        }

        else
        {
          [array addObject:v8];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  v15 = [array copy];

  return v15;
}

- (NSString)threadIdentifier
{
  _item = [(IMChatItem *)self _item];
  threadIdentifier = [_item threadIdentifier];

  return threadIdentifier;
}

- (IMMessageItem)threadOriginator
{
  _item = [(IMChatItem *)self _item];
  threadOriginator = [_item threadOriginator];

  return threadOriginator;
}

- (unint64_t)scheduleType
{
  _item = [(IMChatItem *)self _item];
  scheduleType = [_item scheduleType];

  return scheduleType;
}

- (unint64_t)scheduleState
{
  _item = [(IMChatItem *)self _item];
  scheduleState = [_item scheduleState];

  return scheduleState;
}

- (_NSRange)originalMessagePartRange
{
  _item = [(IMChatItem *)self _item];
  messagePartAttributeName = [(IMMessagePartChatItem *)self messagePartAttributeName];
  originalTextRangesByPartIndex = [_item originalTextRangesByPartIndex];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:messagePartAttributeName];
  v7 = [originalTextRangesByPartIndex objectForKeyedSubscript:v6];

  if (v7)
  {
    rangeValue = [v7 rangeValue];
  }

  else
  {
    rangeValue = [(IMMessagePartChatItem *)self messagePartRange];
  }

  v10 = rangeValue;
  v11 = v9;

  v12 = v10;
  v13 = v11;
  result.length = v13;
  result.location = v12;
  return result;
}

- (BOOL)isEditedMessagePart
{
  _item = [(IMChatItem *)self _item];
  messagePartAttributeName = [(IMMessagePartChatItem *)self messagePartAttributeName];
  editedPartIndexes = [_item editedPartIndexes];
  LOBYTE(messagePartAttributeName) = [editedPartIndexes containsIndex:messagePartAttributeName];

  return messagePartAttributeName;
}

- (BOOL)isFailedEditMessagePart
{
  _item = [(IMChatItem *)self _item];
  messagePartAttributeName = [(IMMessagePartChatItem *)self messagePartAttributeName];
  failedEditPartIndexes = [_item failedEditPartIndexes];
  LOBYTE(messagePartAttributeName) = [failedEditPartIndexes containsIndex:messagePartAttributeName];

  return messagePartAttributeName;
}

- (BOOL)isRetractedMessagePart
{
  _item = [(IMChatItem *)self _item];
  messagePartAttributeName = [(IMMessagePartChatItem *)self messagePartAttributeName];
  retractedPartIndexes = [_item retractedPartIndexes];
  LOBYTE(messagePartAttributeName) = [retractedPartIndexes containsIndex:messagePartAttributeName];

  return messagePartAttributeName;
}

- (BOOL)isFailedRetractMessagePart
{
  _item = [(IMChatItem *)self _item];
  messagePartAttributeName = [(IMMessagePartChatItem *)self messagePartAttributeName];
  failedRetractPartIndexes = [_item failedRetractPartIndexes];
  LOBYTE(messagePartAttributeName) = [failedRetractPartIndexes containsIndex:messagePartAttributeName];

  return messagePartAttributeName;
}

- (BOOL)requiresSiriAttribution
{
  if ([(IMMessageChatItem *)self isFromMe])
  {
    return 0;
  }

  message = [(IMMessageChatItem *)self message];
  sourceApplicationID = [message sourceApplicationID];
  v5 = [sourceApplicationID isEqualToString:*MEMORY[0x1E69A83E0]];

  if (!v5)
  {
    return 0;
  }

  v6 = objc_opt_class();

  return MEMORY[0x1EEE66B58](v6, sel_isSiriEnabled);
}

- (BOOL)requiresFaceTimeAttribution
{
  message = [(IMMessageChatItem *)self message];
  sourceApplicationID = [message sourceApplicationID];
  v4 = [sourceApplicationID isEqualToString:@"com.apple.FaceTime"];

  return v4;
}

- (BOOL)requiresCriticalMessagingAPIAttribution
{
  message = [(IMMessageChatItem *)self message];
  messageSummaryInfo = [message messageSummaryInfo];
  v4 = [messageSummaryInfo objectForKey:@"critical-messaging-app-name"];

  return v4 != 0;
}

+ (BOOL)isSiriEnabled
{
  if (qword_1EB2EA228 != -1)
  {
    sub_1A84DFD68();
  }

  return byte_1EB2EA220;
}

- (_NSRange)messagePartRange
{
  p_messagePartRange = &self->_messagePartRange;
  location = self->_messagePartRange.location;
  length = p_messagePartRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (NSString)threadIdentifierForTapback
{
  threadIdentifier = [(IMMessagePartChatItem *)self threadIdentifier];
  if (!threadIdentifier)
  {
    v8 = 0;
    v4 = [(IMChatItem *)self itemIsThreadOriginatorWithThreadIdentifier:&v8];
    v5 = v8;
    v6 = v5;
    if (v4)
    {
      threadIdentifier = v5;
    }
  }

  return threadIdentifier;
}

- (id)messageSummaryInfo
{
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1A84E2868();
  }

  return MEMORY[0x1E695E0F8];
}

- (unsigned)contentType
{
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1A84E28A4();
  }

  return 0;
}

@end