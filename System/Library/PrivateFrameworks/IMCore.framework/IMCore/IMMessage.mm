@interface IMMessage
+ (IMMessage)messageWithLocation:(id)location flags:(unint64_t)flags error:(id)error guid:(id)guid;
+ (id)breadcrumbMessageWithText:(id)text associatedMessageGUID:(id)d balloonBundleID:(id)iD fileTransferGUIDs:(id)ds payloadData:(id)data threadIdentifier:(id)identifier;
+ (id)customAcknowledgementMessageWithPayloadData:(id)data associatedMessageGUID:(id)d balloonBundleID:(id)iD messageSummaryInfo:(id)info threadIdentifier:(id)identifier;
+ (id)defaultInvitationMessageFromSender:(id)sender flags:(unint64_t)flags;
+ (id)fromMeIMHandle:(id)handle withText:(id)text fileTransferGUIDs:(id)ds flags:(unint64_t)flags;
+ (id)instantMessageWithAssociatedMessageContent:(id)content associatedMessageGUID:(id)d associatedMessageType:(int64_t)type associatedMessageRange:(_NSRange)range associatedMessageEmoji:(id)emoji messageSummaryInfo:(id)info threadIdentifier:(id)identifier;
+ (id)instantMessageWithText:(id)text messageSubject:(id)subject fileTransferGUIDs:(id)ds flags:(unint64_t)flags balloonBundleID:(id)d payloadData:(id)data expressiveSendStyleID:(id)iD;
+ (id)instantMessageWithText:(id)text messageSubject:(id)subject fileTransferGUIDs:(id)ds flags:(unint64_t)flags threadIdentifier:(id)identifier;
+ (id)instantMessageWithText:(id)text messageSubject:(id)subject flags:(unint64_t)flags expressiveSendStyleID:(id)d threadIdentifier:(id)identifier;
+ (id)instantMessageWithText:(id)text messageSubject:(id)subject flags:(unint64_t)flags threadIdentifier:(id)identifier associatedMessageGUID:(id)d scheduledDate:(id)date;
+ (id)locatingMessageWithGuid:(id)guid error:(id)error;
+ (id)messageFromIMMessageItem:(id)item sender:(id)sender subject:(id)subject;
+ (id)messageFromIMMessageItemDictionary:(id)dictionary body:(id)body sender:(id)sender subject:(id)subject;
+ (id)textMessageWithLocation:(id)location flags:(unint64_t)flags error:(id)error guid:(id)guid;
- (BOOL)hasEditedParts;
- (BOOL)hasInlineAttachments;
- (BOOL)isAssociatedMessage;
- (BOOL)isCancelTypingMessage;
- (BOOL)isDeviceActionMessage;
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (BOOL)isIncomingTypingMessage;
- (BOOL)isIncomingTypingOrCancelTypingMessage;
- (BOOL)isRCSEncryptionTest;
- (BOOL)isReply;
- (BOOL)isRichLinkMessage;
- (BOOL)isSenderContactAndNotMe;
- (BOOL)isSenderUnknown;
- (BOOL)isSuggestedActionResponse;
- (BOOL)isSystemMessage;
- (BOOL)isTimeSensitive;
- (BOOL)isTypingMessage;
- (BOOL)isTypingOrCancelTypingMessage;
- (IMMessage)initWithSender:(id)sender fileTransfer:(id)transfer;
- (IMMessageItem)_imMessageItem;
- (IMTapback)tapback;
- (NSArray)inlineAttachmentAttributesArray;
- (NSArray)messageParts;
- (NSIndexSet)editedPartIndexes;
- (NSIndexSet)retractedPartIndexes;
- (NSString)plainBody;
- (NSString)summaryString;
- (_NSRange)associatedMessageRange;
- (id)_account;
- (id)_copyWithFlags:(unint64_t)flags;
- (id)_initWithSender:(id)sender time:(id)time timeRead:(id)read timeDelivered:(id)delivered timePlayed:(id)played plainText:(id)text text:(id)a9 messageSubject:(id)self0 fileTransferGUIDs:(id)self1 flags:(unint64_t)self2 error:(id)self3 guid:(id)self4 messageID:(int64_t)self5 subject:(id)self6 balloonBundleID:(id)self7 payloadData:(id)self8 expressiveSendStyleID:(id)self9 timeExpressiveSendPlayed:(id)sendPlayed associatedMessageGUID:(id)uID associatedMessageType:(int64_t)type associatedMessageRange:(_NSRange)range associatedMessageEmoji:(id)emoji messageSummaryInfo:(id)info threadIdentifier:(id)identifier dateEdited:(id)edited dateRecovered:(id)recovered scheduleType:(unint64_t)scheduleType scheduleState:(unint64_t)sender0;
- (id)_transcriptPluginChatItemFromTypeErasedPartChatItems:(id)items;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionForPurpose:(int64_t)purpose;
- (id)descriptionForPurpose:(int64_t)purpose inChat:(id)chat;
- (id)descriptionForPurpose:(int64_t)purpose inChat:(id)chat senderDisplayName:(id)name;
- (id)messagePartMatchingPartIndex:(int64_t)index;
- (id)messagesBySeparatingRichLinks;
- (id)messagesSeparatedByByteLength:(int64_t)length;
- (id)richLinkDataSourceWithChatContext:(id)context;
- (id)tapbackSummaryForConversationListUsingIsAdaptiveImageGlyphProvider:(id)provider isCommSafetySensitiveProvider:(id)sensitiveProvider adaptiveImageGlyphProvider:(id)glyphProvider effectString:(id)string;
- (void)addEditedPartIndex:(int64_t)index;
- (void)addRetractedPartIndex:(int64_t)index;
- (void)setAssociatedBalloonBundleID:(id)d;
- (void)setEditedPartIndexes:(id)indexes;
- (void)setIsKeyTransparencyVerifiedMessage:(BOOL)message;
- (void)setIsTapToRetry:(BOOL)retry;
- (void)setIsTimeSensitive:(BOOL)sensitive;
- (void)setNeedsRelay:(BOOL)relay;
- (void)setPendingSatelliteSend:(BOOL)send;
- (void)setRetractedPartIndexes:(id)indexes;
- (void)setSentOrReceivedOffGrid:(BOOL)grid;
- (void)setSourceApplicationID:(id)d;
@end

@implementation IMMessage

- (NSString)plainBody
{
  p_plainBody = &self->_plainBody;
  plainBody = self->_plainBody;
  if (!plainBody)
  {
    string = [(NSAttributedString *)self->_text string];
    v6 = [string stringByReplacingOccurrencesOfString:*MEMORY[0x1E69A5F00] withString:&stru_1F1B76F98];
    v7 = [v6 stringByReplacingOccurrencesOfString:*MEMORY[0x1E69A5F20] withString:&stru_1F1B76F98];
    v8 = [v7 stringByReplacingOccurrencesOfString:*MEMORY[0x1E69A6CF0] withString:&stru_1F1B76F98];

    if ([v8 length])
    {
      objc_storeStrong(p_plainBody, v8);
    }

    plainBody = *p_plainBody;
  }

  return plainBody;
}

- (BOOL)isEmpty
{
  if ((self->_flags & 8) == 0 || [(IMMessage *)self hasInlineAttachments])
  {
    return 0;
  }

  fileTransferGUIDs = [(IMMessage *)self fileTransferGUIDs];
  if ([fileTransferGUIDs count])
  {
    v3 = 0;
  }

  else
  {
    messageSubject = [(IMMessage *)self messageSubject];
    if ([messageSubject length])
    {
      v3 = 0;
    }

    else
    {
      payloadData = [(IMMessage *)self payloadData];
      v3 = [payloadData length] == 0;
    }
  }

  return v3;
}

- (NSIndexSet)retractedPartIndexes
{
  messageSummaryInfo = [(IMMessage *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKey:*MEMORY[0x1E69A7240]];

  if (v3)
  {
    [MEMORY[0x1E696AC90] __im_indexSetFromNumberArray:v3];
  }

  else
  {
    [MEMORY[0x1E696AC90] indexSet];
  }
  v4 = ;

  return v4;
}

- (BOOL)isTypingMessage
{
  if ([(IMMessage *)self wasDetonated])
  {
    LOBYTE(isFinished) = 0;
  }

  else if ([(IMMessage *)self isFinished])
  {
    isFinished = [(IMMessage *)self isFinished];
    if (isFinished)
    {
      isFinished = [(IMMessage *)self isEmpty];
      if (isFinished)
      {
        LOBYTE(isFinished) = ![(IMMessage *)self hasEditedParts];
      }
    }
  }

  else
  {
    LOBYTE(isFinished) = 1;
  }

  return isFinished;
}

- (IMTapback)tapback
{
  associatedMessageType = [(IMMessage *)self associatedMessageType];
  if ((associatedMessageType - 3000) >= 6 && (associatedMessageType - 2000) > 5)
  {
    associatedMessageType2 = [(IMMessage *)self associatedMessageType];
    if (associatedMessageType2 == 3006 || associatedMessageType2 == 2006)
    {
      v7 = objc_alloc(MEMORY[0x1E69A8060]);
      associatedMessageEmoji = [(IMMessage *)self associatedMessageEmoji];
      v4 = [v7 initWithEmoji:associatedMessageEmoji isRemoved:{(-[IMMessage associatedMessageType](self, "associatedMessageType") & 0xFFFFFFFFFFFFFFF8) == 3000}];
    }

    else
    {
      associatedMessageType3 = [(IMMessage *)self associatedMessageType];
      if (associatedMessageType3 == 3007 || associatedMessageType3 == 2007)
      {
        fileTransferGUIDs = [(IMMessage *)self fileTransferGUIDs];
        firstObject = [fileTransferGUIDs firstObject];

        if (firstObject)
        {
          v12 = ([(IMMessage *)self associatedMessageType]& 0xFFFFFFFFFFFFFFF8) == 3000;
          v4 = [objc_alloc(MEMORY[0x1E69A82C8]) initWithTransferGUID:firstObject isRemoved:v12];
        }

        else
        {
          v4 = 0;
        }
      }

      else
      {
        v4 = 0;
      }
    }
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E69A7FB0]) initWithAssociatedMessageType:{-[IMMessage associatedMessageType](self, "associatedMessageType")}];
  }

  return v4;
}

- (id)tapbackSummaryForConversationListUsingIsAdaptiveImageGlyphProvider:(id)provider isCommSafetySensitiveProvider:(id)sensitiveProvider adaptiveImageGlyphProvider:(id)glyphProvider effectString:(id)string
{
  providerCopy = provider;
  sensitiveProviderCopy = sensitiveProvider;
  glyphProviderCopy = glyphProvider;
  stringCopy = string;
  v14 = [(IMMessage *)self associatedMessageType]& 0xFFFFFFFFFFFFFFF8;
  if (v14 != 3000 && v14 != 2000)
  {
LABEL_15:
    v21 = 0;
    goto LABEL_16;
  }

  sender = [(IMMessage *)self sender];
  isFromMe = [(IMMessage *)self isFromMe];
  if (isFromMe)
  {
    _displayNameWithAbbreviation = 0;
  }

  else
  {
    _displayNameWithAbbreviation = [sender _displayNameWithAbbreviation];
  }

  tapback = [(IMMessage *)self tapback];
  if (!tapback)
  {
    v27 = IMLogHandleForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1A84DF054(v27);
    }

    goto LABEL_15;
  }

  v19 = tapback;
  messageSummaryInfo = [(IMMessage *)self messageSummaryInfo];
  v21 = [v19 previewAttributedStringWithMessageSummaryInfo:messageSummaryInfo isAdaptiveImageGlyphProvider:providerCopy isCommSafetySensitiveProvider:sensitiveProviderCopy adaptiveImageGlyphProvider:glyphProviderCopy senderDisplayName:_displayNameWithAbbreviation isFromMe:isFromMe effectString:stringCopy];
  if (!v21)
  {
    plainBody = [(IMMessage *)self plainBody];
    v23 = plainBody;
    v24 = &stru_1F1B76F98;
    if (plainBody)
    {
      v24 = plainBody;
    }

    v25 = v24;

    v26 = v25;
    v21 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v25];
  }

LABEL_16:

  return v21;
}

- (id)descriptionForPurpose:(int64_t)purpose
{
  v21 = *MEMORY[0x1E69E9840];
  guid = [(IMMessage *)self guid];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = +[IMChatRegistry sharedRegistry];
  cachedChats = [v6 cachedChats];

  v8 = [cachedChats countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(cachedChats);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 messageForGUID:guid];

        if (v13)
        {
          v14 = [(IMMessage *)self descriptionForPurpose:purpose inChat:v12];

          goto LABEL_11;
        }
      }

      v9 = [cachedChats countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = [(IMMessage *)self descriptionForPurpose:purpose inChat:0];
LABEL_11:

  return v14;
}

- (id)descriptionForPurpose:(int64_t)purpose inChat:(id)chat
{
  if (chat)
  {
    v6 = [chat chatStyle] != 45;
  }

  else
  {
    v6 = 0;
  }

  _imMessageItem = [(IMMessage *)self _imMessageItem];
  v8 = [_imMessageItem descriptionForPurpose:purpose isGroupMessage:v6 messageDataSource:0 attachmentDataSource:&unk_1F1B6E240];

  return v8;
}

- (id)descriptionForPurpose:(int64_t)purpose inChat:(id)chat senderDisplayName:(id)name
{
  nameCopy = name;
  if (chat)
  {
    chat = ([chat chatStyle] != 45);
  }

  _imMessageItem = [(IMMessage *)self _imMessageItem];
  v10 = [_imMessageItem descriptionForPurpose:purpose isGroupMessage:chat senderDisplayName:nameCopy messageDataSource:0 attachmentDataSource:&unk_1F1B6E260];

  return v10;
}

+ (id)defaultInvitationMessageFromSender:(id)sender flags:(unint64_t)flags
{
  senderCopy = sender;
  v6 = +[IMChatRegistry messageClass];
  v7 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F1B76F98];
  v8 = [v6 alloc];
  date = [MEMORY[0x1E695DF00] date];
  v10 = [v8 initWithSender:senderCopy time:date text:v7 fileTransferGUIDs:0 flags:flags | 1 error:0 guid:0 subject:0 threadIdentifier:0];

  return v10;
}

+ (id)instantMessageWithText:(id)text messageSubject:(id)subject flags:(unint64_t)flags expressiveSendStyleID:(id)d threadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dCopy = d;
  subjectCopy = subject;
  textCopy = text;
  v16 = [self alloc];
  date = [MEMORY[0x1E695DF00] date];
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  v19 = [v16 _initWithSender:0 time:date timeRead:0 timeDelivered:0 timePlayed:0 plainText:0 text:textCopy messageSubject:subjectCopy fileTransferGUIDs:0 flags:flags error:0 guid:stringGUID messageID:0 subject:0 balloonBundleID:0 payloadData:0 expressiveSendStyleID:dCopy timeExpressiveSendPlayed:0 associatedMessageGUID:0 associatedMessageType:0 associatedMessageRange:0 associatedMessageEmoji:0 messageSummaryInfo:0 threadIdentifier:0 dateEdited:identifierCopy dateRecovered:0 scheduleType:0 scheduleState:{0, 0}];

  return v19;
}

+ (id)instantMessageWithText:(id)text messageSubject:(id)subject flags:(unint64_t)flags threadIdentifier:(id)identifier associatedMessageGUID:(id)d scheduledDate:(id)date
{
  dateCopy = date;
  dCopy = d;
  identifierCopy = identifier;
  subjectCopy = subject;
  textCopy = text;
  v18 = [self alloc];
  if (dateCopy)
  {
    v19 = 2;
    date = dateCopy;
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
    v19 = 0;
  }

  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  v22 = [v18 _initWithSender:0 time:date timeRead:0 timeDelivered:0 timePlayed:0 plainText:0 text:textCopy messageSubject:subjectCopy fileTransferGUIDs:0 flags:flags error:0 guid:stringGUID messageID:0 subject:0 balloonBundleID:0 payloadData:0 expressiveSendStyleID:0 timeExpressiveSendPlayed:0 associatedMessageGUID:dCopy associatedMessageType:0 associatedMessageRange:0 associatedMessageEmoji:0 messageSummaryInfo:0 threadIdentifier:0 dateEdited:identifierCopy dateRecovered:0 scheduleType:0 scheduleState:{v19, dateCopy != 0}];

  if (!dateCopy)
  {
  }

  return v22;
}

+ (id)instantMessageWithText:(id)text messageSubject:(id)subject fileTransferGUIDs:(id)ds flags:(unint64_t)flags threadIdentifier:(id)identifier
{
  textCopy = text;
  subjectCopy = subject;
  dsCopy = ds;
  identifierCopy = identifier;
  if (!textCopy)
  {
    textCopy = objc_alloc_init(MEMORY[0x1E696AAB0]);
  }

  v16 = [self alloc];
  date = [MEMORY[0x1E695DF00] date];
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  v19 = [v16 _initWithSender:0 time:date timeRead:0 timeDelivered:0 timePlayed:0 plainText:0 text:textCopy messageSubject:subjectCopy fileTransferGUIDs:dsCopy flags:flags error:0 guid:stringGUID messageID:0 subject:0 balloonBundleID:0 payloadData:0 expressiveSendStyleID:0 timeExpressiveSendPlayed:0 associatedMessageGUID:0 associatedMessageType:0 associatedMessageRange:0 associatedMessageEmoji:0 messageSummaryInfo:0 threadIdentifier:0 dateEdited:identifierCopy dateRecovered:0 scheduleType:0 scheduleState:{0, 0}];

  return v19;
}

+ (id)instantMessageWithText:(id)text messageSubject:(id)subject fileTransferGUIDs:(id)ds flags:(unint64_t)flags balloonBundleID:(id)d payloadData:(id)data expressiveSendStyleID:(id)iD
{
  textCopy = text;
  subjectCopy = subject;
  dsCopy = ds;
  dCopy = d;
  dataCopy = data;
  iDCopy = iD;
  if (!textCopy)
  {
    textCopy = objc_alloc_init(MEMORY[0x1E696AAB0]);
  }

  v21 = [self alloc];
  date = [MEMORY[0x1E695DF00] date];
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  v24 = [v21 _initWithSender:0 time:date timeRead:0 timeDelivered:0 timePlayed:0 plainText:0 text:textCopy messageSubject:subjectCopy fileTransferGUIDs:dsCopy flags:flags error:0 guid:stringGUID messageID:0 subject:0 balloonBundleID:dCopy payloadData:dataCopy expressiveSendStyleID:iDCopy timeExpressiveSendPlayed:0 associatedMessageGUID:0 associatedMessageType:0 associatedMessageRange:0 associatedMessageEmoji:0 messageSummaryInfo:0 threadIdentifier:0 dateEdited:0 dateRecovered:0 scheduleType:0 scheduleState:{0, 0}];

  return v24;
}

+ (id)fromMeIMHandle:(id)handle withText:(id)text fileTransferGUIDs:(id)ds flags:(unint64_t)flags
{
  handleCopy = handle;
  textCopy = text;
  dsCopy = ds;
  if (handleCopy)
  {
    if (textCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_1A84E1A0C(a2, self);
  if (!textCopy)
  {
LABEL_3:
    textCopy = objc_alloc_init(MEMORY[0x1E696AAB0]);
  }

LABEL_4:
  v14 = [self alloc];
  date = [MEMORY[0x1E695DF00] date];
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  v17 = [v14 initWithSender:handleCopy time:date text:textCopy fileTransferGUIDs:dsCopy flags:flags error:0 guid:stringGUID subject:0 threadIdentifier:0];

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v44 = objc_alloc(objc_opt_class());
  sender = [(IMMessage *)self sender];
  time = [(IMMessage *)self time];
  text = [(IMMessage *)self text];
  messageSubject = [(IMMessage *)self messageSubject];
  fileTransferGUIDs = [(IMMessage *)self fileTransferGUIDs];
  flags = [(IMMessage *)self flags];
  error = [(IMMessage *)self error];
  guid = [(IMMessage *)self guid];
  subject = [(IMMessage *)self subject];
  threadIdentifier = [(IMMessage *)self threadIdentifier];
  v12 = [v44 initWithSender:sender time:time text:text messageSubject:messageSubject fileTransferGUIDs:fileTransferGUIDs flags:flags error:error guid:guid subject:subject threadIdentifier:threadIdentifier];

  time2 = [(IMMessage *)self time];
  [v12 _updateTime:time2];

  timeRead = [(IMMessage *)self timeRead];
  [v12 _updateTimeRead:timeRead];

  timeDelivered = [(IMMessage *)self timeDelivered];
  [v12 _updateTimeDelivered:timeDelivered];

  timePlayed = [(IMMessage *)self timePlayed];
  [v12 _updateTimePlayed:timePlayed];

  [v12 _updateMessageID:{-[IMMessage messageID](self, "messageID")}];
  associatedMessageGUID = [(IMMessage *)self associatedMessageGUID];
  [v12 _associatedMessageGUID:associatedMessageGUID];

  [v12 _associatedMessageType:{-[IMMessage associatedMessageType](self, "associatedMessageType")}];
  associatedMessageRange = [(IMMessage *)self associatedMessageRange];
  [v12 _associatedMessageRange:{associatedMessageRange, v19}];
  associatedMessageEmoji = [(IMMessage *)self associatedMessageEmoji];
  [v12 _associatedMessageEmoji:associatedMessageEmoji];

  messageSummaryInfo = [(IMMessage *)self messageSummaryInfo];
  [v12 _messageSummaryInfo:messageSummaryInfo];

  balloonBundleID = [(IMMessage *)self balloonBundleID];
  [v12 setBalloonBundleID:balloonBundleID];

  payloadData = [(IMMessage *)self payloadData];
  [v12 setPayloadData:payloadData];

  expressiveSendStyleID = [(IMMessage *)self expressiveSendStyleID];
  [v12 setExpressiveSendStyleID:expressiveSendStyleID];

  timeExpressiveSendPlayed = [(IMMessage *)self timeExpressiveSendPlayed];
  [v12 setTimeExpressiveSendPlayed:timeExpressiveSendPlayed];

  bizIntent = [(IMMessage *)self bizIntent];
  [v12 _updateBizIntent:bizIntent];

  locale = [(IMMessage *)self locale];
  [v12 _updateLocale:locale];

  [v12 setUseStandalone:{-[IMMessage useStandalone](self, "useStandalone")}];
  [v12 setShouldNotifyOnSend:{-[IMMessage shouldNotifyOnSend](self, "shouldNotifyOnSend")}];
  [v12 setSentViaRemoteIntent:{-[IMMessage sentViaRemoteIntent](self, "sentViaRemoteIntent")}];
  messageSummaryInfo2 = [(IMMessage *)self messageSummaryInfo];
  v29 = [messageSummaryInfo2 objectForKey:*MEMORY[0x1E69A7208]];
  [v12 setAssociatedBalloonBundleID:v29];

  messageSummaryInfo3 = [(IMMessage *)self messageSummaryInfo];
  v31 = [messageSummaryInfo3 objectForKey:*MEMORY[0x1E69A7250]];
  [v12 setSourceApplicationID:v31];

  syndicationRanges = [(IMMessage *)self syndicationRanges];
  [v12 _syndicationRanges:syndicationRanges];

  syncedSyndicationRanges = [(IMMessage *)self syncedSyndicationRanges];
  [v12 _syncedSyndicationRanges:syncedSyndicationRanges];

  dateEdited = [(IMMessage *)self dateEdited];
  [v12 _updatedDateEdited:dateEdited];

  dateRecovered = [(IMMessage *)self dateRecovered];
  [v12 _updatedDateRecovered:dateRecovered];

  groupActivity = [(IMMessage *)self groupActivity];
  [v12 setGroupActivity:groupActivity];

  collaborationInitiationRequestInfo = [(IMMessage *)self collaborationInitiationRequestInfo];
  [v12 setCollaborationInitiationRequestInfo:collaborationInitiationRequestInfo];

  [v12 setScheduleType:{-[IMMessage scheduleType](self, "scheduleType")}];
  [v12 setScheduleState:{-[IMMessage scheduleState](self, "scheduleState")}];
  telemetryMetrics = [(IMMessage *)self telemetryMetrics];
  v39 = [telemetryMetrics copy];
  [v12 setTelemetryMetrics:v39];

  telemetryMetricsReasonCode = [(IMMessage *)self telemetryMetricsReasonCode];
  [v12 setTelemetryMetricsReasonCode:telemetryMetricsReasonCode];

  return v12;
}

- (id)_copyWithFlags:(unint64_t)flags
{
  v4 = [(IMMessage *)self copy];
  [v4 _updateFlags:flags];
  return v4;
}

- (id)_initWithSender:(id)sender time:(id)time timeRead:(id)read timeDelivered:(id)delivered timePlayed:(id)played plainText:(id)text text:(id)a9 messageSubject:(id)self0 fileTransferGUIDs:(id)self1 flags:(unint64_t)self2 error:(id)self3 guid:(id)self4 messageID:(int64_t)self5 subject:(id)self6 balloonBundleID:(id)self7 payloadData:(id)self8 expressiveSendStyleID:(id)self9 timeExpressiveSendPlayed:(id)sendPlayed associatedMessageGUID:(id)uID associatedMessageType:(int64_t)type associatedMessageRange:(_NSRange)range associatedMessageEmoji:(id)emoji messageSummaryInfo:(id)info threadIdentifier:(id)identifier dateEdited:(id)edited dateRecovered:(id)recovered scheduleType:(unint64_t)scheduleType scheduleState:(unint64_t)sender0
{
  v117 = *MEMORY[0x1E69E9840];
  senderCopy = sender;
  timeCopy = time;
  timeCopy2 = time;
  readCopy = read;
  readCopy2 = read;
  deliveredCopy = delivered;
  deliveredCopy2 = delivered;
  playedCopy = played;
  textCopy = text;
  v108 = a9;
  subjectCopy = subject;
  dsCopy = ds;
  errorCopy = error;
  guidCopy = guid;
  v99 = a16;
  iDCopy = iD;
  v38 = readCopy2;
  dataCopy = data;
  styleIDCopy = styleID;
  sendPlayedCopy = sendPlayed;
  uIDCopy = uID;
  emojiCopy = emoji;
  infoCopy = info;
  identifierCopy = identifier;
  v41 = timeCopy2;
  editedCopy = edited;
  v115.receiver = self;
  v115.super_class = IMMessage;
  v42 = [(IMMessage *)&v115 init];
  v43 = v42;
  if (v42)
  {
    v83 = identifierCopy;
    v84 = errorCopy;
    v85 = v38;
    v91 = guidCopy;
    objc_storeStrong(&v42->_sender, sender);
    objc_storeStrong(&v43->_time, timeCopy);
    objc_storeStrong(&v43->_messageSubject, subject);
    v43->_messageID = d;
    v43->_flags = flags;
    objc_storeStrong(&v43->_timeRead, readCopy);
    objc_storeStrong(&v43->_timeDelivered, deliveredCopy);
    objc_storeStrong(&v43->_timePlayed, played);
    objc_storeStrong(&v43->_subject, a16);
    objc_storeStrong(&v43->_balloonBundleID, iD);
    objc_storeStrong(&v43->_payloadData, data);
    objc_storeStrong(&v43->_expressiveSendStyleID, styleID);
    objc_storeStrong(&v43->_timeExpressiveSendPlayed, sendPlayed);
    objc_storeStrong(&v43->_associatedMessageGUID, uID);
    v43->_associatedMessageType = type;
    v43->_associatedMessageRange = range;
    objc_storeStrong(&v43->_associatedMessageEmoji, emoji);
    objc_storeStrong(&v43->_messageSummaryInfo, info);
    v44 = [infoCopy objectForKey:*MEMORY[0x1E69A7208]];
    associatedBalloonBundleID = v43->_associatedBalloonBundleID;
    v43->_associatedBalloonBundleID = v44;

    v46 = [infoCopy objectForKey:*MEMORY[0x1E69A7250]];
    sourceApplicationID = v43->_sourceApplicationID;
    v43->_sourceApplicationID = v46;

    objc_storeStrong(&v43->_dateEdited, edited);
    v43->_scheduleType = scheduleType;
    v43->_scheduleState = state;
    if (guidCopy)
    {
      stringGUID = guidCopy;
    }

    else
    {
      stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    }

    guid = v43->_guid;
    v43->_guid = stringGUID;

    v50 = v38;
    if ([senderCopy isLoginIMHandle])
    {
      v43->_flags |= 4uLL;
    }

    if (v108)
    {
      objc_storeStrong(&v43->_text, a9);
    }

    v51 = infoCopy;
    objc_storeStrong(&v43->_fileTransferGUIDs, ds);
    if ([textCopy length])
    {
      v52 = textCopy;
      plainBody = v43->_plainBody;
      v43->_plainBody = v52;
    }

    else
    {
      v54 = [dsCopy count];
      string = [(NSAttributedString *)v43->_text string];
      plainBody = string;
      if (v54)
      {
        __stringByStrippingAttachmentAndControlCharacters = [(NSString *)string __stringByStrippingAttachmentAndControlCharacters];
        v57 = v43->_plainBody;
        v43->_plainBody = __stringByStrippingAttachmentAndControlCharacters;
      }

      else
      {
        v58 = v43->_plainBody;
        v43->_plainBody = string;
        plainBody = v58;
      }
    }

    if ([(NSString *)v43->_plainBody length]&& [(NSString *)v43->_plainBody characterAtIndex:0]== 47 && ![(NSArray *)v43->_fileTransferGUIDs count]&& ![(NSAttributedString *)v43->_messageSubject length])
    {
      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v59 = IMEmotePrefixes();
      v60 = [v59 countByEnumeratingWithState:&v111 objects:v116 count:16];
      if (v60)
      {
        v61 = v60;
        v62 = *v112;
        while (2)
        {
          for (i = 0; i != v61; ++i)
          {
            if (*v112 != v62)
            {
              objc_enumerationMutation(v59);
            }

            v64 = *(*(&v111 + 1) + 8 * i);
            v65 = [v64 commonPrefixWithString:v43->_plainBody options:1];
            v66 = [v65 isEqualToString:v64];

            if (v66)
            {
              v67 = [(NSString *)v43->_plainBody length];
              if (v67 > [v64 length])
              {
                v68 = -[NSString characterAtIndex:](v43->_plainBody, "characterAtIndex:", [v64 length]);
                alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
                LOBYTE(v68) = [alphanumericCharacterSet characterIsMember:v68];

                if ((v68 & 1) == 0)
                {
                  v43->_flags |= 2uLL;
                  goto LABEL_30;
                }
              }
            }
          }

          v61 = [v59 countByEnumeratingWithState:&v111 objects:v116 count:16];
          if (v61)
          {
            continue;
          }

          break;
        }
      }

LABEL_30:

      v50 = v85;
      errorCopy = v84;
      guidCopy = v91;
    }

    if ((v43->_flags & 0x20000000) == 0)
    {
      subject = [(IMMessage *)v43 subject];
      if ([subject isBusiness])
      {
LABEL_35:

        goto LABEL_36;
      }

      sender = [(IMMessage *)v43 sender];
      isBusiness = [sender isBusiness];

      if ((isBusiness & 1) == 0)
      {
        v73 = *MEMORY[0x1E69A70F8];
        v74 = [v108 length];
        v109[0] = MEMORY[0x1E69E9820];
        v109[1] = 3221225472;
        v109[2] = sub_1A8345540;
        v109[3] = &unk_1E7812DF8;
        v110 = v43;
        [v108 enumerateAttribute:v73 inRange:0 options:v74 usingBlock:{0, v109}];
        subject = v110;
        goto LABEL_35;
      }
    }

LABEL_36:
    plainBody = [(IMMessage *)v43 plainBody];
    if (![plainBody length] && !-[NSArray count](v43->_fileTransferGUIDs, "count"))
    {
      messageSubject = [(IMMessage *)v43 messageSubject];
      if (![messageSubject length])
      {
        payloadData = [(IMMessage *)v43 payloadData];
        if (![payloadData length] && !-[IMMessage wasDetonated](v43, "wasDetonated"))
        {
          associatedMessageGUID = [(IMMessage *)v43 associatedMessageGUID];
          if (![associatedMessageGUID length])
          {
            messageSummaryInfo = [(IMMessage *)v43 messageSummaryInfo];
            v82 = [messageSummaryInfo objectForKeyedSubscript:*MEMORY[0x1E69A7220]];

            guidCopy = v91;
            if (!v82)
            {
              v79 = v43->_flags | 8;
              goto LABEL_47;
            }

LABEL_46:
            v79 = v43->_flags & 0xFFFFFFFFFFFFFFF7;
LABEL_47:
            v41 = timeCopy2;
            v43->_flags = v79;
            objc_storeStrong(&v43->_error, error);
            objc_storeStrong(&v43->_threadIdentifier, identifier);
            replyCountsByPart = v43->_replyCountsByPart;
            v43->_replyCountsByPart = 0;

            infoCopy = v51;
            identifierCopy = v83;
            v38 = v50;
            goto LABEL_48;
          }

          guidCopy = v91;
        }
      }
    }

    goto LABEL_46;
  }

LABEL_48:

  return v43;
}

- (IMMessage)initWithSender:(id)sender fileTransfer:(id)transfer
{
  senderCopy = sender;
  guid = [transfer guid];
  v8 = objc_alloc(MEMORY[0x1E695DF20]);
  v9 = [v8 initWithObjectsAndKeys:{guid, *MEMORY[0x1E69A5F68], 0}];
  v10 = objc_alloc(MEMORY[0x1E696AAB0]);
  v11 = [v10 initWithString:*MEMORY[0x1E69A5F00] attributes:v9];
  v12 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{guid, 0}];
  date = [MEMORY[0x1E695DF00] date];
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  v15 = [(IMMessage *)self initWithSender:senderCopy time:date text:v11 fileTransferGUIDs:v12 flags:1 error:0 guid:stringGUID subject:0 threadIdentifier:0];

  v16 = v15;
  return v16;
}

- (NSString)summaryString
{
  v21 = *MEMORY[0x1E69E9840];
  plainBody = [(IMMessage *)self plainBody];
  v4 = [plainBody mutableCopy];
  if ([(IMMessage *)self isEmote])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = IMEmotePrefixes();
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [v10 commonPrefixWithString:v4 options:{1, v16}];
          v12 = [v11 isEqualToString:v10];

          if (v12)
          {
            v13 = [v10 length];
            senderName = [(IMMessage *)self senderName];
            [v4 replaceCharactersInRange:0 withString:{v13, senderName}];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }
  }

  [v4 replaceNewlinesWithSpaces];

  return v4;
}

- (BOOL)hasInlineAttachments
{
  if (![(NSAttributedString *)self->_text length])
  {
    return 0;
  }

  string = [(NSAttributedString *)self->_text string];
  v4 = [string rangeOfString:*MEMORY[0x1E69A5F00]] != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

- (NSArray)inlineAttachmentAttributesArray
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = [(NSAttributedString *)self->_text length];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *MEMORY[0x1E69A5F68];
    do
    {
      v11 = 0;
      v12 = 0;
      v8 = [(NSAttributedString *)self->_text attributesAtIndex:v6 longestEffectiveRange:&v11 inRange:v6, v5 - v6];
      v9 = [v8 objectForKey:v7];

      if (v9)
      {
        [array addObject:v8];
      }

      v6 = v12 + v11;
    }

    while (v6 < v5);
  }

  return array;
}

- (BOOL)isSenderContactAndNotMe
{
  if ([(IMMessage *)self isFromMe])
  {
    return 0;
  }

  sender = [(IMMessage *)self sender];
  v5 = sender;
  if (sender)
  {
    isContact = [sender isContact];
  }

  else
  {
    isContact = 0;
  }

  return isContact;
}

- (BOOL)isSenderUnknown
{
  if (![(IMMessage *)self isFromMe])
  {
    sender = [(IMMessage *)self sender];
    v5 = sender;
    if (sender)
    {
      if ([sender isContact] & 1) != 0 || (objc_msgSend(v5, "isBusiness"))
      {
        goto LABEL_6;
      }

      service = [v5 service];
      v8 = +[IMServiceImpl iMessageService];

      if (service == v8)
      {
        normalizedID = [v5 normalizedID];
        if (IMStringIsEmail() && (([normalizedID hasSuffix:@"@apple.com"]& 1) != 0 || ([normalizedID hasSuffix:@".apple.com"]& 1) != 0))
        {

LABEL_6:
          v3 = 0;
LABEL_17:

          return v3;
        }

        goto LABEL_15;
      }
    }

    else if (IMOSLoggingEnabled())
    {
      normalizedID = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(normalizedID, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_1A823F000, normalizedID, OS_LOG_TYPE_INFO, "Could not determine sender, returning unknown sender", v10, 2u);
      }

LABEL_15:
    }

    v3 = 1;
    goto LABEL_17;
  }

  return 0;
}

- (BOOL)isSystemMessage
{
  if ((self->_flags & 4) != 0)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    sender = [(IMMessage *)self sender];
    if (sender)
    {
      v4 = (BYTE1(self->_flags) >> 6) & 1;
    }

    else
    {
      LOBYTE(v4) = 1;
    }
  }

  return v4;
}

- (BOOL)isSuggestedActionResponse
{
  v6[1] = *MEMORY[0x1E69E9840];
  text = [(IMMessage *)self text];
  v6[0] = *MEMORY[0x1E69A7CD8];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v4 = [text __im_containsAttributedValue:v3];

  return v4;
}

- (BOOL)isRCSEncryptionTest
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isRCSEncryptionOptInTestEnabled = [mEMORY[0x1E69A8070] isRCSEncryptionOptInTestEnabled];

  if (isRCSEncryptionOptInTestEnabled)
  {
    return (BYTE5(self->_flags) >> 5) & 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)setIsKeyTransparencyVerifiedMessage:(BOOL)message
{
  v3 = 0x2000000000;
  if (!message)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFFDFFFFFFFFFLL | v3;
}

- (void)setIsTapToRetry:(BOOL)retry
{
  v3 = 0x10000000000;
  if (!retry)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFEFFFFFFFFFFLL | v3;
}

- (void)setPendingSatelliteSend:(BOOL)send
{
  v3 = 0x20000000000;
  if (!send)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFDFFFFFFFFFFLL | v3;
}

- (void)setNeedsRelay:(BOOL)relay
{
  v3 = 0x40000000000;
  if (!relay)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFBFFFFFFFFFFLL | v3;
}

- (void)setSentOrReceivedOffGrid:(BOOL)grid
{
  v3 = 0x80000000000;
  if (!grid)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFF7FFFFFFFFFFLL | v3;
}

- (BOOL)isTimeSensitive
{
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isIntroductionsEnabled = [mEMORY[0x1E69A8070] isIntroductionsEnabled];

  if (isIntroductionsEnabled)
  {
    return (BYTE5(self->_flags) >> 4) & 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)setIsTimeSensitive:(BOOL)sensitive
{
  sensitiveCopy = sensitive;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isIntroductionsEnabled = [mEMORY[0x1E69A8070] isIntroductionsEnabled];

  if (isIntroductionsEnabled)
  {
    v7 = 0x100000000000;
    if (!sensitiveCopy)
    {
      v7 = 0;
    }

    self->_flags = self->_flags & 0xFFFFEFFFFFFFFFFFLL | v7;
  }
}

- (NSIndexSet)editedPartIndexes
{
  messageSummaryInfo = [(IMMessage *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKey:*MEMORY[0x1E69A7238]];
  v4 = v3;
  v5 = MEMORY[0x1E695E0F0];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [MEMORY[0x1E696AC90] __im_indexSetFromNumberArray:v6];

  return v7;
}

- (void)setEditedPartIndexes:(id)indexes
{
  __im_numberArray = [indexes __im_numberArray];
  messageSummaryInfo = [(IMMessage *)self messageSummaryInfo];
  if ([messageSummaryInfo count])
  {
    messageSummaryInfo2 = [(IMMessage *)self messageSummaryInfo];
    v6 = [messageSummaryInfo2 mutableCopy];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [(NSDictionary *)v6 setObject:__im_numberArray forKey:*MEMORY[0x1E69A7238]];
  messageSummaryInfo = self->_messageSummaryInfo;
  self->_messageSummaryInfo = v6;
}

- (void)addEditedPartIndex:(int64_t)index
{
  editedPartIndexes = [(IMMessage *)self editedPartIndexes];
  v5 = [editedPartIndexes mutableCopy];
  [v5 addIndex:index];
  v6 = [v5 copy];
  [(IMMessage *)self setEditedPartIndexes:v6];
}

- (void)setRetractedPartIndexes:(id)indexes
{
  __im_numberArray = [indexes __im_numberArray];
  messageSummaryInfo = [(IMMessage *)self messageSummaryInfo];
  if ([messageSummaryInfo count])
  {
    messageSummaryInfo2 = [(IMMessage *)self messageSummaryInfo];
    v6 = [messageSummaryInfo2 mutableCopy];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [(NSDictionary *)v6 setObject:__im_numberArray forKey:*MEMORY[0x1E69A7240]];
  messageSummaryInfo = self->_messageSummaryInfo;
  self->_messageSummaryInfo = v6;
}

- (void)addRetractedPartIndex:(int64_t)index
{
  retractedPartIndexes = [(IMMessage *)self retractedPartIndexes];
  v5 = [retractedPartIndexes mutableCopy];
  [v5 addIndex:index];
  v6 = [v5 copy];
  [(IMMessage *)self setRetractedPartIndexes:v6];
}

- (BOOL)hasEditedParts
{
  dateEdited = [(IMMessage *)self dateEdited];
  v3 = dateEdited != 0;

  return v3;
}

- (BOOL)isDeviceActionMessage
{
  messageSummaryInfo = [(IMMessage *)self messageSummaryInfo];
  v3 = [messageSummaryInfo objectForKey:*MEMORY[0x1E69A7230]];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setAssociatedBalloonBundleID:(id)d
{
  p_associatedBalloonBundleID = &self->_associatedBalloonBundleID;
  dCopy = d;
  if (![(NSString *)*p_associatedBalloonBundleID isEqualToString:?])
  {
    objc_storeStrong(&self->_associatedBalloonBundleID, d);
    Mutable = [(NSDictionary *)self->_messageSummaryInfo mutableCopy];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    if (*p_associatedBalloonBundleID)
    {
      [(NSDictionary *)Mutable setObject:*p_associatedBalloonBundleID forKey:*MEMORY[0x1E69A7208]];
    }

    messageSummaryInfo = self->_messageSummaryInfo;
    self->_messageSummaryInfo = Mutable;
  }
}

- (void)setSourceApplicationID:(id)d
{
  dCopy = d;
  if (![(NSString *)self->_sourceApplicationID isEqualToString:?])
  {
    objc_storeStrong(&self->_sourceApplicationID, d);
    Mutable = [(NSDictionary *)self->_messageSummaryInfo mutableCopy];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    sourceApplicationID = self->_sourceApplicationID;
    if (sourceApplicationID)
    {
      [(NSDictionary *)Mutable setObject:sourceApplicationID forKey:*MEMORY[0x1E69A7250]];
    }

    messageSummaryInfo = self->_messageSummaryInfo;
    self->_messageSummaryInfo = Mutable;
  }
}

- (BOOL)isReply
{
  threadIdentifier = [(IMMessage *)self threadIdentifier];
  v3 = [threadIdentifier length] != 0;

  return v3;
}

- (id)_account
{
  subject = [(IMMessage *)self subject];
  account = [subject account];

  if (!account)
  {
    sender = [(IMMessage *)self sender];
    account = [sender account];
  }

  return account;
}

- (IMMessageItem)_imMessageItem
{
  _account = [(IMMessage *)self _account];
  text = [(IMMessage *)self text];
  __im_attributedStringByAssigningMessagePartNumbers = [text __im_attributedStringByAssigningMessagePartNumbers];

  v117 = __im_attributedStringByAssigningMessagePartNumbers;
  __im_countMessageParts = [__im_attributedStringByAssigningMessagePartNumbers __im_countMessageParts];
  sender = [(IMMessage *)self sender];
  v7 = [sender ID];
  v8 = [v7 length];

  if (v8)
  {
    v9 = MEMORY[0x1E695DF20];
    sender2 = [(IMMessage *)self sender];
    v11 = [sender2 ID];
    v116 = [v9 dictionaryWithObject:v11 forKey:*MEMORY[0x1E69A6310]];
  }

  else
  {
    v116 = MEMORY[0x1E695E0F8];
  }

  associatedMessageGUID = [(IMMessage *)self associatedMessageGUID];
  v102 = _account;
  if (associatedMessageGUID && (v13 = associatedMessageGUID, -[IMMessage associatedMessageGUID](self, "associatedMessageGUID"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 length], v14, v13, v15))
  {
    balloonBundleID = [(IMMessage *)self balloonBundleID];
    v17 = [balloonBundleID isEqualToString:*MEMORY[0x1E69A68E8]];

    if (v17)
    {
      locale = [(IMMessage *)self locale];
    }

    else
    {
      locale = 0;
    }

    v83 = objc_alloc(MEMORY[0x1E69A7EF0]);
    time = [(IMMessage *)self time];
    messageSubject = [(IMMessage *)self messageSubject];
    string = [messageSubject string];
    fileTransferGUIDs = [(IMMessage *)self fileTransferGUIDs];
    flags = [(IMMessage *)self flags];
    guid = [(IMMessage *)self guid];
    messageID = [(IMMessage *)self messageID];
    loginIMHandle = [_account loginIMHandle];
    uniqueID2 = [loginIMHandle ID];
    uniqueID = [_account uniqueID];
    internalName = [_account internalName];
    subject = [(IMMessage *)self subject];
    subject4 = [subject ID];
    subject2 = [(IMMessage *)self subject];
    originalID = [subject2 originalID];
    subject3 = [(IMMessage *)self subject];
    countryCode = [subject3 countryCode];
    balloonBundleID2 = [(IMMessage *)self balloonBundleID];
    payloadData = [(IMMessage *)self payloadData];
    expressiveSendStyleID = [(IMMessage *)self expressiveSendStyleID];
    timeExpressiveSendPlayed = [(IMMessage *)self timeExpressiveSendPlayed];
    error = [(IMMessage *)self error];
    code = [error code];
    associatedMessageGUID2 = [(IMMessage *)self associatedMessageGUID];
    associatedMessageType = [(IMMessage *)self associatedMessageType];
    associatedMessageRange = [(IMMessage *)self associatedMessageRange];
    v73 = v39;
    v74 = associatedMessageRange;
    associatedMessageEmoji = [(IMMessage *)self associatedMessageEmoji];
    biaReferenceID = [(IMMessage *)self biaReferenceID];
    messageSummaryInfo = [(IMMessage *)self messageSummaryInfo];
    threadIdentifier = [(IMMessage *)self threadIdentifier];
    [(IMMessage *)self dateRecovered];
    v92 = v71 = __im_countMessageParts;
    v95 = threadIdentifier;
    v72 = threadIdentifier;
    v96 = messageSummaryInfo;
    v70 = messageSummaryInfo;
    v101 = biaReferenceID;
    v69 = biaReferenceID;
    error2 = associatedMessageEmoji;
    v65 = associatedMessageEmoji;
    v34 = time;
    v26 = associatedMessageGUID2;
    v60 = associatedMessageGUID2;
    LODWORD(v57) = code;
    v27 = timeExpressiveSendPlayed;
    v55 = expressiveSendStyleID;
    v56 = timeExpressiveSendPlayed;
    v28 = expressiveSendStyleID;
    v29 = payloadData;
    v31 = balloonBundleID2;
    v30 = countryCode;
    v32 = originalID;
    v33 = [v83 initWithSenderInfo:v116 time:time timeRead:0 timeDelivered:0 timePlayed:0 subject:string body:v117 bodyData:0 attributes:0 fileTransferGUIDs:fileTransferGUIDs flags:flags guid:guid messageID:messageID account:uniqueID2 accountID:uniqueID service:internalName handle:subject4 roomName:0 unformattedID:originalID countryCode:countryCode expireState:0 balloonBundleID:balloonBundleID2 payloadData:payloadData expressiveSendStyleID:v55 timeExpressiveSendPlayed:v56 errorType:v57 associatedMessageGUID:v60 associatedMessageType:associatedMessageType associatedMessageRange:v74 associatedMessageEmoji:v73 bizIntent:v65 locale:0 biaReferenceID:locale messageSummaryInfo:v69 partCount:v70 threadIdentifier:v71 dateRecovered:v72 scheduleType:v92 scheduleState:-[IMMessage scheduleType](self cloudKitChatID:{"scheduleType"), -[IMMessage scheduleState](self, "scheduleState"), 0}];
  }

  else
  {
    v82 = objc_alloc(MEMORY[0x1E69A8138]);
    locale = [(IMMessage *)self time];
    messageSubject2 = [(IMMessage *)self messageSubject];
    messageSubject = [messageSubject2 string];
    string = [(IMMessage *)self fileTransferGUIDs];
    flags2 = [(IMMessage *)self flags];
    fileTransferGUIDs = [(IMMessage *)self guid];
    messageID2 = [(IMMessage *)self messageID];
    guid = [_account loginIMHandle];
    loginIMHandle = [guid ID];
    uniqueID2 = [_account uniqueID];
    uniqueID = [_account internalName];
    internalName = [(IMMessage *)self subject];
    subject = [internalName ID];
    subject4 = [(IMMessage *)self subject];
    subject2 = [subject4 originalID];
    subject5 = [(IMMessage *)self subject];
    subject3 = [subject5 countryCode];
    balloonBundleID3 = [(IMMessage *)self balloonBundleID];
    payloadData2 = [(IMMessage *)self payloadData];
    expressiveSendStyleID2 = [(IMMessage *)self expressiveSendStyleID];
    timeExpressiveSendPlayed2 = [(IMMessage *)self timeExpressiveSendPlayed];
    bizIntent = [(IMMessage *)self bizIntent];
    locale2 = [(IMMessage *)self locale];
    biaReferenceID2 = [(IMMessage *)self biaReferenceID];
    error2 = [(IMMessage *)self error];
    code2 = [error2 code];
    threadIdentifier2 = [(IMMessage *)self threadIdentifier];
    syndicationRanges = [(IMMessage *)self syndicationRanges];
    syncedSyndicationRanges = [(IMMessage *)self syncedSyndicationRanges];
    dateEdited = [(IMMessage *)self dateEdited];
    dateRecovered = [(IMMessage *)self dateRecovered];
    v92 = dateEdited;
    v68 = dateEdited;
    v67 = __im_countMessageParts;
    v95 = syncedSyndicationRanges;
    v66 = syncedSyndicationRanges;
    v96 = syndicationRanges;
    v64 = syndicationRanges;
    v101 = threadIdentifier2;
    v63 = threadIdentifier2;
    LODWORD(v62) = code2;
    v26 = biaReferenceID2;
    v61 = biaReferenceID2;
    error = locale2;
    v58 = bizIntent;
    v59 = locale2;
    v27 = bizIntent;
    v28 = timeExpressiveSendPlayed2;
    v29 = expressiveSendStyleID2;
    v30 = balloonBundleID3;
    v31 = payloadData2;
    v32 = subject5;
    v33 = [v82 initWithSenderInfo:v116 time:locale timeRead:0 timeDelivered:0 timePlayed:0 subject:messageSubject body:v117 bodyData:0 attributes:0 fileTransferGUIDs:string flags:flags2 guid:fileTransferGUIDs messageID:messageID2 account:loginIMHandle accountID:uniqueID2 service:uniqueID handle:subject roomName:0 unformattedID:subject2 countryCode:subject3 expireState:0 balloonBundleID:balloonBundleID3 payloadData:payloadData2 expressiveSendStyleID:expressiveSendStyleID2 timeExpressiveSendPlayed:timeExpressiveSendPlayed2 bizIntent:v58 locale:v59 biaReferenceID:v61 errorType:v62 threadIdentifier:v63 syndicationRanges:v64 syncedSyndicationRanges:v66 partCount:v67 dateEdited:v68 dateRecovered:dateRecovered scheduleType:-[IMMessage scheduleType](self scheduleState:"scheduleType") cloudKitChatID:{-[IMMessage scheduleState](self, "scheduleState"), 0}];

    v34 = messageSubject2;
  }

  if ([(IMMessage *)self isReply])
  {
    threadOriginator = [(IMMessage *)self threadOriginator];
    _imMessageItem = [threadOriginator _imMessageItem];
    [v33 setThreadOriginator:_imMessageItem];
  }

  replyCountsByPart = [(IMMessage *)self replyCountsByPart];
  [v33 setReplyCountsByPart:replyCountsByPart];

  sender3 = [(IMMessage *)self sender];
  subject6 = [(IMMessage *)self subject];
  [v33 _updateContextWithSenderHandle:sender3 otherHandle:subject6];

  [v33 _setInvitation:{-[IMMessage isInvitationMessage](self, "isInvitationMessage")}];
  [v33 setUseStandalone:{-[IMMessage useStandalone](self, "useStandalone")}];
  [v33 setShouldNotifyOnSend:{-[IMMessage shouldNotifyOnSend](self, "shouldNotifyOnSend")}];
  [v33 setSentViaRemoteIntent:{-[IMMessage sentViaRemoteIntent](self, "sentViaRemoteIntent")}];
  messageSummaryInfo2 = [(IMMessage *)self messageSummaryInfo];
  [v33 setMessageSummaryInfo:messageSummaryInfo2];

  [v33 setSortID:{-[IMMessage sortID](self, "sortID")}];
  groupActivity = [(IMMessage *)self groupActivity];
  [v33 setGroupActivity:groupActivity];

  collaborationInitiationRequestInfo = [(IMMessage *)self collaborationInitiationRequestInfo];
  [v33 setCollaborationInitiationRequestInfo:collaborationInitiationRequestInfo];

  telemetryMetrics = [(IMMessage *)self telemetryMetrics];
  [v33 setTelemetryMetrics:telemetryMetrics];

  telemetryMetricsReasonCode = [(IMMessage *)self telemetryMetricsReasonCode];
  [v33 setTelemetryMetricsReasonCode:telemetryMetricsReasonCode];

  return v33;
}

+ (id)messageFromIMMessageItem:(id)item sender:(id)sender subject:(id)subject
{
  itemCopy = item;
  subjectCopy = subject;
  senderCopy = sender;
  v8 = +[IMChatRegistry messageClass];
  errorCode = [itemCopy errorCode];
  if (errorCode)
  {
    v55 = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMMessageErrorDomain" code:errorCode userInfo:0];
  }

  else
  {
    v55 = 0;
  }

  subject = [itemCopy subject];
  if (subject)
  {
    v11 = objc_alloc(MEMORY[0x1E696AAB0]);
    subject2 = [itemCopy subject];
    v54 = [v11 initWithString:subject2];
  }

  else
  {
    v54 = 0;
  }

  v44 = [v8 alloc];
  time = [itemCopy time];
  timeRead = [itemCopy timeRead];
  timeDelivered = [itemCopy timeDelivered];
  timePlayed = [itemCopy timePlayed];
  plainBody = [itemCopy plainBody];
  body = [itemCopy body];
  fileTransferGUIDs = [itemCopy fileTransferGUIDs];
  flags = [itemCopy flags];
  guid = [itemCopy guid];
  messageID = [itemCopy messageID];
  balloonBundleID = [itemCopy balloonBundleID];
  payloadData = [itemCopy payloadData];
  expressiveSendStyleID = [itemCopy expressiveSendStyleID];
  timeExpressiveSendPlayed = [itemCopy timeExpressiveSendPlayed];
  associatedMessageGUID = [itemCopy associatedMessageGUID];
  associatedMessageType = [itemCopy associatedMessageType];
  associatedMessageRange = [itemCopy associatedMessageRange];
  v31 = v14;
  v32 = associatedMessageRange;
  associatedMessageEmoji = [itemCopy associatedMessageEmoji];
  messageSummaryInfo = [itemCopy messageSummaryInfo];
  threadIdentifier = [itemCopy threadIdentifier];
  dateEdited = [itemCopy dateEdited];
  dateRecovered = [itemCopy dateRecovered];
  v18 = [v44 _initWithSender:senderCopy time:time timeRead:timeRead timeDelivered:timeDelivered timePlayed:timePlayed plainText:plainBody text:body messageSubject:v54 fileTransferGUIDs:fileTransferGUIDs flags:flags error:v55 guid:guid messageID:messageID subject:subjectCopy balloonBundleID:balloonBundleID payloadData:payloadData expressiveSendStyleID:expressiveSendStyleID timeExpressiveSendPlayed:timeExpressiveSendPlayed associatedMessageGUID:associatedMessageGUID associatedMessageType:associatedMessageType associatedMessageRange:v32 associatedMessageEmoji:v31 messageSummaryInfo:associatedMessageEmoji threadIdentifier:messageSummaryInfo dateEdited:threadIdentifier dateRecovered:dateEdited scheduleType:dateRecovered scheduleState:{objc_msgSend(itemCopy, "scheduleType"), objc_msgSend(itemCopy, "scheduleState")}];

  [v18 setSortID:{objc_msgSend(itemCopy, "sortID")}];
  account = [itemCopy account];
  v20 = _IMBestAccountForIMItem(itemCopy, 0, account, 0, 0);

  threadOriginator = [itemCopy threadOriginator];
  IMMessageFromIMItem = _CreateIMMessageFromIMItem(threadOriginator, v20, 1);

  [v18 setThreadOriginator:IMMessageFromIMItem];
  replyCountsByPart = [itemCopy replyCountsByPart];
  [v18 setReplyCountsByPart:replyCountsByPart];

  flags2 = [itemCopy flags];
  if ([v18 isEmote])
  {
    flags2 |= 2uLL;
  }

  if ([v18 isEmpty])
  {
    flags2 |= 8uLL;
  }

  if ([v18 hasMention])
  {
    flags2 |= 0x20000000uLL;
  }

  if ([v18 isAddressedToMe])
  {
    v25 = flags2 | 0x800;
  }

  else
  {
    v25 = flags2;
  }

  [v18 _updateFlags:v25];
  syndicationRanges = [itemCopy syndicationRanges];
  [v18 _syndicationRanges:syndicationRanges];

  syncedSyndicationRanges = [itemCopy syncedSyndicationRanges];
  [v18 _syncedSyndicationRanges:syncedSyndicationRanges];

  telemetryMetrics = [itemCopy telemetryMetrics];
  [v18 setTelemetryMetrics:telemetryMetrics];

  telemetryMetricsReasonCode = [itemCopy telemetryMetricsReasonCode];
  [v18 setTelemetryMetricsReasonCode:telemetryMetricsReasonCode];

  return v18;
}

+ (id)messageFromIMMessageItemDictionary:(id)dictionary body:(id)body sender:(id)sender subject:(id)subject
{
  dictionaryCopy = dictionary;
  bodyCopy = body;
  senderCopy = sender;
  subjectCopy = subject;
  v66 = +[IMChatRegistry messageClass];
  v12 = [dictionaryCopy objectForKey:@"flags"];
  unsignedLongLongValue = [v12 unsignedLongLongValue];

  v13 = [dictionaryCopy objectForKey:@"error"];
  unsignedIntValue = [v13 unsignedIntValue];

  if (unsignedIntValue)
  {
    v81 = [MEMORY[0x1E696ABC0] errorWithDomain:@"__kIMMessageErrorDomain" code:unsignedIntValue userInfo:0];
  }

  else
  {
    v81 = 0;
  }

  v15 = [dictionaryCopy objectForKey:@"subject"];
  v84 = [dictionaryCopy objectForKey:@"plainBody"];
  v16 = [dictionaryCopy objectForKey:@"bodyData"];
  v80 = [dictionaryCopy objectForKey:@"balloonBundleID"];
  v79 = [dictionaryCopy objectForKey:@"payloadData"];
  v78 = [dictionaryCopy objectForKey:@"expressiveSendStyleID"];
  v77 = [dictionaryCopy objectForKey:@"associatedMessageGUID"];
  if (v15)
  {
    v76 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v15];
  }

  else
  {
    v76 = 0;
  }

  v61 = v15;
  if (!bodyCopy)
  {
    if ([v84 length])
    {
      v17 = objc_alloc(MEMORY[0x1E696AAB0]);
      if (qword_1EB2EA390 != -1)
      {
        sub_1A84E1A88();
      }

      bodyCopy = [v17 initWithString:v84 attributes:qword_1EB2EA388];
    }

    else if ([v16 length])
    {
      v18 = objc_autoreleasePoolPush();
      bodyCopy = JWDecodeCodableObjectWithStandardAllowlist();
      objc_autoreleasePoolPop(v18);
    }

    else
    {
      bodyCopy = 0;
    }
  }

  v60 = v16;
  v19 = [dictionaryCopy objectForKey:@"time"];
  v20 = [dictionaryCopy objectForKey:@"timeDelivered"];
  v21 = [dictionaryCopy objectForKey:@"timeRead"];
  v22 = [dictionaryCopy objectForKey:@"timePlayed"];
  v23 = [dictionaryCopy objectForKey:@"timeExpressiveSendPlayed"];
  v24 = [dictionaryCopy objectForKeyedSubscript:@"associatedMessageRangeLocation"];
  integerValue = [v24 integerValue];

  v25 = [dictionaryCopy objectForKeyedSubscript:@"associatedMessageRangeLength"];
  integerValue2 = [v25 integerValue];

  v75 = [dictionaryCopy objectForKey:@"associatedMessageEmoji"];
  v74 = [dictionaryCopy objectForKey:@"threadIdentifier"];
  v73 = [dictionaryCopy objectForKey:@"dateEdited"];
  v72 = [dictionaryCopy objectForKey:@"scheduleType"];
  v71 = [dictionaryCopy objectForKey:@"scheduleState"];
  if (v23)
  {
    v26 = MEMORY[0x1E695DF00];
    [v23 doubleValue];
    v70 = [v26 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v70 = 0;
  }

  if (v73)
  {
    v27 = MEMORY[0x1E695DF00];
    [v73 doubleValue];
    v69 = [v27 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v69 = 0;
  }

  v28 = [dictionaryCopy objectForKey:@"dateRecovered"];
  v54 = v28;
  if (v28)
  {
    v29 = MEMORY[0x1E695DF00];
    [v28 doubleValue];
    v68 = [v29 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v68 = 0;
  }

  v51 = [v66 alloc];
  if (v19)
  {
    v30 = MEMORY[0x1E695DF00];
    [v19 doubleValue];
    v67 = [v30 dateWithTimeIntervalSinceReferenceDate:?];
    if (v21)
    {
      goto LABEL_26;
    }

LABEL_29:
    v65 = 0;
    if (v20)
    {
      goto LABEL_27;
    }

    goto LABEL_30;
  }

  v67 = 0;
  if (!v21)
  {
    goto LABEL_29;
  }

LABEL_26:
  v31 = MEMORY[0x1E695DF00];
  [v21 doubleValue];
  v65 = [v31 dateWithTimeIntervalSinceReferenceDate:?];
  if (v20)
  {
LABEL_27:
    v32 = MEMORY[0x1E695DF00];
    [v20 doubleValue];
    v64 = [v32 dateWithTimeIntervalSinceReferenceDate:?];
    goto LABEL_31;
  }

LABEL_30:
  v64 = 0;
LABEL_31:
  v57 = v20;
  v62 = senderCopy;
  v82 = bodyCopy;
  v58 = v19;
  v55 = v23;
  v56 = v21;
  if (v22)
  {
    v33 = MEMORY[0x1E695DF00];
    [v22 doubleValue];
    v63 = [v33 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v63 = 0;
  }

  v34 = [dictionaryCopy objectForKey:@"fileTransferGUIDs"];
  v35 = [dictionaryCopy objectForKey:@"guid"];
  v36 = [dictionaryCopy objectForKey:@"messageID"];
  longLongValue = [v36 longLongValue];
  v38 = [dictionaryCopy objectForKey:@"associatedMessageType"];
  longLongValue2 = [v38 longLongValue];
  v40 = [dictionaryCopy objectForKey:@"messageSummaryInfo"];
  v41 = [v51 _initWithSender:v62 time:v67 timeRead:v65 timeDelivered:v64 timePlayed:v63 plainText:v84 text:v82 messageSubject:v76 fileTransferGUIDs:v34 flags:unsignedLongLongValue error:v81 guid:v35 messageID:longLongValue subject:subjectCopy balloonBundleID:v80 payloadData:v79 expressiveSendStyleID:v78 timeExpressiveSendPlayed:v70 associatedMessageGUID:v77 associatedMessageType:longLongValue2 associatedMessageRange:integerValue associatedMessageEmoji:integerValue2 messageSummaryInfo:v75 threadIdentifier:v40 dateEdited:v74 dateRecovered:v69 scheduleType:v68 scheduleState:{objc_msgSend(v72, "unsignedIntegerValue"), objc_msgSend(v71, "unsignedIntegerValue")}];

  if (v22)
  {
  }

  if (v57)
  {
  }

  if (v56)
  {
  }

  if (v58)
  {
  }

  if ([v41 isEmote])
  {
    v42 = unsignedLongLongValue | 2;
  }

  else
  {
    v42 = unsignedLongLongValue;
  }

  if ([v41 isEmpty])
  {
    v42 |= 8uLL;
  }

  if ([v41 hasMention])
  {
    v42 |= 0x20000000uLL;
  }

  if ([v41 isAddressedToMe])
  {
    v43 = v42 | 0x800;
  }

  else
  {
    v43 = v42;
  }

  [v41 _updateFlags:v43];
  v44 = [dictionaryCopy objectForKey:@"threadOriginator"];
  v45 = [IMMessage messageFromIMMessageItemDictionary:v44 body:0 sender:0 subject:0];
  [v41 setThreadOriginator:v45];
  v46 = [dictionaryCopy objectForKey:@"syndicationRanges"];
  [v41 _syndicationRanges:v46];

  v47 = [dictionaryCopy objectForKey:@"syncedSyndicationRanges"];
  [v41 _syncedSyndicationRanges:v47];

  v48 = [dictionaryCopy objectForKey:@"telemetryMetrics"];
  [v41 setTelemetryMetrics:v48];

  v49 = [dictionaryCopy objectForKey:@"telemetryMetricsReasonCode"];
  [v41 setTelemetryMetricsReasonCode:v49];

  return v41;
}

- (id)messagesBySeparatingRichLinks
{
  v63[1] = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Separate rich links", buf, 2u);
    }
  }

  selfCopy = self;
  payloadData = [(IMMessage *)selfCopy payloadData];
  v6 = [payloadData length] != 0;

  fileTransferGUIDs = [(IMMessage *)selfCopy fileTransferGUIDs];
  v8 = [fileTransferGUIDs count] != 0;

  if (v6 && v8)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        payloadData2 = [(IMMessage *)selfCopy payloadData];
        v11 = [payloadData2 length];
        fileTransferGUIDs2 = [(IMMessage *)selfCopy fileTransferGUIDs];
        v13 = [fileTransferGUIDs2 count];
        *buf = 134218240;
        *&buf[4] = v11;
        *&buf[12] = 2048;
        *&buf[14] = v13;
        _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Not splitting message, payloadData.length: %lu, transfers.count: %lu", buf, 0x16u);
      }
    }

    v63[0] = selfCopy;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:1];
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v60 = sub_1A8259BE0;
    v61 = sub_1A825AF1C;
    v62 = 0;
    v57[0] = 0;
    v57[1] = v57;
    v57[2] = 0x3032000000;
    v57[3] = sub_1A8259BE0;
    v57[4] = sub_1A825AF1C;
    guid = [(IMMessage *)selfCopy guid];
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 0;
    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x2020000000;
    v52 = 1;
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = sub_1A8259BE0;
    v49 = sub_1A825AF1C;
    text = [(IMMessage *)selfCopy text];
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x3032000000;
    v43[3] = sub_1A8259BE0;
    v43[4] = sub_1A825AF1C;
    text2 = [(IMMessage *)selfCopy text];
    v15 = sub_1A8399EB0(v46[5]);
    v16 = v46[5];
    v46[5] = v15;

    v17 = v46[5];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = sub_1A8348904;
    v35[3] = &unk_1E7812E70;
    v37 = &v45;
    v38 = v43;
    v39 = v57;
    v18 = selfCopy;
    v36 = v18;
    v40 = v51;
    v41 = &v53;
    v42 = buf;
    IMRichLinkUtilitiesEnumerateRichLinksInAttributedString(v17, 1, v35);
    if (*(v54 + 24) == 1)
    {
      v33 = [IMMessage alloc];
      sender = [(IMMessage *)v18 sender];
      time = [(IMMessage *)v18 time];
      messageSubject = [(IMMessage *)v18 messageSubject];
      flags = [(IMMessage *)v18 flags];
      guid2 = [(IMMessage *)v18 guid];
      subject = [(IMMessage *)v18 subject];
      expressiveSendStyleID = [(IMMessage *)v18 expressiveSendStyleID];
      threadIdentifier = [(IMMessage *)v18 threadIdentifier];
      v26 = [(IMMessage *)v33 initWithSender:sender time:time text:messageSubject messageSubject:0 fileTransferGUIDs:0 flags:flags error:0 guid:guid2 subject:subject balloonBundleID:0 payloadData:0 expressiveSendStyleID:expressiveSendStyleID threadIdentifier:threadIdentifier scheduleType:[(IMMessage *)v18 scheduleType] scheduleState:[(IMMessage *)v18 scheduleState]];

      associatedBalloonBundleID = [(IMMessage *)v18 associatedBalloonBundleID];
      [(IMMessage *)v26 setAssociatedBalloonBundleID:associatedBalloonBundleID];

      sourceApplicationID = [(IMMessage *)v18 sourceApplicationID];
      [(IMMessage *)v26 setSourceApplicationID:sourceApplicationID];

      collaborationInitiationRequestInfo = [(IMMessage *)v18 collaborationInitiationRequestInfo];
      [(IMMessage *)v26 setCollaborationInitiationRequestInfo:collaborationInitiationRequestInfo];

      messageSummaryInfo = [(IMMessage *)v18 messageSummaryInfo];
      [(IMMessage *)v26 _messageSummaryInfo:messageSummaryInfo];

      if ([(IMMessage *)v26 isReply])
      {
        threadOriginator = [(IMMessage *)v18 threadOriginator];
        [(IMMessage *)v26 setThreadOriginator:threadOriginator];
      }

      [*(*&buf[8] + 40) insertObject:v26 atIndex:0];
    }

    v14 = *(*&buf[8] + 40);

    _Block_object_dispose(v43, 8);
    _Block_object_dispose(&v45, 8);

    _Block_object_dispose(v51, 8);
    _Block_object_dispose(&v53, 8);
    _Block_object_dispose(v57, 8);

    _Block_object_dispose(buf, 8);
  }

  return v14;
}

- (id)messagesSeparatedByByteLength:(int64_t)length
{
  v35 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      lengthCopy = length;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Separating message by byte length: %ld", buf, 0xCu);
    }
  }

  text = [(IMMessage *)self text];
  string = [text string];

  v6 = [string __im_separateStringByByteLength:length];
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v6;
  v26 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v26)
  {
    v25 = *v29;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
        v10 = [v8 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

        if ([v10 length])
        {
          v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v8];
          __im_attributedStringByAssigningMessagePartNumbers = [v11 __im_attributedStringByAssigningMessagePartNumbers];
          v13 = [IMMessage alloc];
          sender = [(IMMessage *)self sender];
          time = [(IMMessage *)self time];
          flags = [(IMMessage *)self flags];
          v17 = StringGUID();
          subject = [(IMMessage *)self subject];
          v19 = [(IMMessage *)v13 initWithSender:sender time:time text:__im_attributedStringByAssigningMessagePartNumbers messageSubject:0 fileTransferGUIDs:0 flags:flags error:0 guid:v17 subject:subject balloonBundleID:0 payloadData:0 expressiveSendStyleID:0 threadIdentifier:0];

          [v24 addObject:v19];
        }

        else if (IMOSLoggingEnabled())
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Dropping empty message", buf, 2u);
          }
        }
      }

      v26 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v26);
  }

  return v24;
}

- (NSArray)messageParts
{
  text = [(IMMessage *)self text];
  if (!text)
  {
    if ([(NSString *)self->_plainBody length])
    {
      text = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:self->_plainBody];
    }

    else
    {
      text = 0;
    }
  }

  array = [MEMORY[0x1E695DF70] array];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A8349848;
  v8[3] = &unk_1E7812E98;
  v9 = array;
  v5 = array;
  [text __im_visitMessageParts:v8];
  v6 = [v5 copy];

  return v6;
}

- (id)messagePartMatchingPartIndex:(int64_t)index
{
  text = [(IMMessage *)self text];
  if (!text)
  {
    if ([(NSString *)self->_plainBody length])
    {
      text = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:self->_plainBody];
    }

    else
    {
      text = 0;
    }
  }

  v6 = [text __im_messagePartMatchingPartIndex:index];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      flags = self->_flags;
      if (flags != [(IMMessage *)v6 flags]|| (messageID = self->_messageID, messageID != [(IMMessage *)v6 messageID]))
      {
        v12 = 0;
LABEL_92:

        goto LABEL_93;
      }

      guid = self->_guid;
      guid = [(IMMessage *)v6 guid];
      if (guid != guid)
      {
        v11 = self->_guid;
        guid2 = [(IMMessage *)v6 guid];
        if (![(NSString *)v11 isEqualToString:guid2])
        {
          v12 = 0;
          goto LABEL_90;
        }
      }

      sender = self->_sender;
      sender = [(IMMessage *)v6 sender];
      if (sender != sender)
      {
        v12 = 0;
LABEL_13:

        goto LABEL_89;
      }

      subject = self->_subject;
      subject = [(IMMessage *)v6 subject];
      if (subject != subject)
      {

LABEL_88:
        v12 = 0;
LABEL_89:
        if (guid == guid)
        {
LABEL_91:

          goto LABEL_92;
        }

LABEL_90:

        goto LABEL_91;
      }

      v76 = subject;
      time = self->_time;
      time = [(IMMessage *)v6 time];
      v19 = time;
      v75 = time;
      if (time == time)
      {
        v74 = time;
      }

      else
      {
        v20 = self->_time;
        time2 = [(IMMessage *)v6 time];
        if (![(NSDate *)v20 isEqualToDate:time2])
        {

          goto LABEL_87;
        }

        v70 = time2;
        v74 = v19;
      }

      timeRead = self->_timeRead;
      [(IMMessage *)v6 timeRead];
      v73 = v72 = timeRead;
      if (timeRead != v73)
      {
        v23 = self->_timeRead;
        timeRead = [(IMMessage *)v6 timeRead];
        v25 = v23;
        timeRead = timeRead;
        if (![(NSDate *)v25 isEqualToDate:timeRead])
        {

          v26 = v74;
          v27 = v70;
          if (v75 == v74)
          {
LABEL_24:

LABEL_87:
            goto LABEL_88;
          }

LABEL_23:

          goto LABEL_24;
        }
      }

      v69 = timeRead;
      timeDelivered = self->_timeDelivered;
      timeDelivered = [(IMMessage *)v6 timeDelivered];
      if (timeDelivered != timeDelivered)
      {
        v29 = self->_timeDelivered;
        timeDelivered2 = [(IMMessage *)v6 timeDelivered];
        v31 = v29;
        timeRead = timeDelivered2;
        if (![(NSDate *)v31 isEqualToDate:timeDelivered2])
        {

          v26 = v74;
          v27 = v70;
          if (v72 != v73)
          {
          }

          if (v75 == v74)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }
      }

      timePlayed = self->_timePlayed;
      [(IMMessage *)v6 timePlayed];
      v68 = v67 = timePlayed;
      if (timePlayed != v68)
      {
        v33 = timeRead;
        v34 = self->_timePlayed;
        timePlayed = [(IMMessage *)v6 timePlayed];
        v36 = v34;
        v37 = timePlayed;
        if (![(NSDate *)v36 isEqualToDate:timePlayed])
        {

          v41 = v70;
          v40 = v74;
          if (timeDelivered == timeDelivered)
          {
          }

          else
          {

            v41 = v70;
          }

          if (v72 != v73)
          {
          }

          if (v75 != v74)
          {
          }

          goto LABEL_86;
        }

        v59 = v37;
        timeRead = v33;
      }

      v65 = timeDelivered;
      text = self->_text;
      text = [(IMMessage *)v6 text];
      v62 = timeRead;
      v63 = text;
      if (text != text)
      {
        v39 = self->_text;
        timeDelivered = [(IMMessage *)v6 text];
        if (![(NSAttributedString *)v39 isEqualToAttributedString:timeDelivered])
        {

          v40 = v74;
          if (v67 != v68)
          {
          }

          if (v65 != timeDelivered)
          {
          }

          if (v72 != v73)
          {
          }

          if (v75 != v74)
          {
          }

LABEL_86:

          goto LABEL_87;
        }
      }

      messageSubject = self->_messageSubject;
      messageSubject = [(IMMessage *)v6 messageSubject];
      v60 = timeDelivered;
      v61 = messageSubject;
      if (messageSubject == messageSubject || (v43 = self->_messageSubject, [(IMMessage *)v6 messageSubject], v58 = objc_claimAutoreleasedReturnValue(), [(NSAttributedString *)v43 isEqualToAttributedString:?]))
      {
        fileTransferGUIDs = self->_fileTransferGUIDs;
        fileTransferGUIDs = [(IMMessage *)v6 fileTransferGUIDs];
        v57 = fileTransferGUIDs;
        if (fileTransferGUIDs == fileTransferGUIDs || (v49 = self->_fileTransferGUIDs, [(IMMessage *)v6 fileTransferGUIDs], v56 = objc_claimAutoreleasedReturnValue(), [(NSArray *)v49 isEqualToArray:?]))
        {
          code = [(NSError *)self->_error code];
          error = [(IMMessage *)v6 error];
          v12 = code == [error code];

          if (v57 == fileTransferGUIDs)
          {

            if (v61 != messageSubject)
            {
            }

            if (v63 != text)
            {
            }

            v53 = v68;
            if (v67 != v68)
            {

              v53 = v68;
            }

            v54 = timeDelivered;
            if (v65 != timeDelivered)
            {

              v54 = timeDelivered;
            }

            if (v72 != v73)
            {
            }

            if (v75 != v74)
            {
            }

            goto LABEL_63;
          }

          v50 = fileTransferGUIDs;
        }

        else
        {
          v50 = fileTransferGUIDs;
          v12 = 0;
        }

        v44 = v73;
        v45 = v65;

        v46 = text;
        if (v61 == messageSubject)
        {
LABEL_53:

          if (v63 != v46)
          {
          }

          if (v67 != v68)
          {
          }

          if (v45 != timeDelivered)
          {
          }

          if (v72 != v44)
          {
          }

          if (v75 != v74)
          {
          }

LABEL_63:

          goto LABEL_13;
        }
      }

      else
      {
        v12 = 0;
        v44 = v73;
        v45 = v65;
        v46 = text;
      }

      goto LABEL_53;
    }

    v77.receiver = self;
    v77.super_class = IMMessage;
    v12 = [(IMMessage *)&v77 isEqual:equalCopy];
  }

LABEL_93:

  return v12;
}

- (id)description
{
  if (qword_1EB2E9FD8 != -1)
  {
    sub_1A84E1A9C();
  }

  v71 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v82 = NSStringFromClass(v3);
  v81 = [(IMHandle *)self->_sender ID];
  v80 = [(IMHandle *)self->_subject ID];
  account = [(IMHandle *)self->_sender account];
  uniqueID = [account uniqueID];
  account2 = [(IMHandle *)self->_sender account];
  service = [account2 service];
  internalName = [service internalName];
  _imMessageItem = [(IMMessage *)self _imMessageItem];
  if ([_imMessageItem encrypted])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v67 = v4;
  flags = self->_flags;
  v5 = off_1EB2E9FE0;
  string = [(NSAttributedString *)self->_messageSubject string];
  v77 = v5();
  v6 = off_1EB2E9FE0;
  string2 = [(NSAttributedString *)self->_text string];
  v65 = v6();
  messageID = self->_messageID;
  guid = self->_guid;
  v7 = MEMORY[0x1E696AD98];
  _imMessageItem2 = [(IMMessage *)self _imMessageItem];
  v62 = [v7 numberWithUnsignedInteger:{objc_msgSend(_imMessageItem2, "sortID")}];
  [(NSDate *)self->_time timeIntervalSinceReferenceDate];
  v9 = v8;
  [(NSDate *)self->_timeDelivered timeIntervalSinceReferenceDate];
  v11 = v10;
  [(NSDate *)self->_timeRead timeIntervalSinceReferenceDate];
  v13 = v12;
  [(NSDate *)self->_timePlayed timeIntervalSinceReferenceDate];
  v15 = v14;
  if ([(IMMessage *)self isEmpty])
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  v60 = v16;
  if ([(IMMessage *)self isFinished])
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  v61 = v17;
  if ([(IMMessage *)self isSent])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  v59 = v18;
  if ([(IMMessage *)self isRead])
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  v58 = v19;
  if ([(IMMessage *)self isDelivered])
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  v57 = v20;
  if ([(IMMessage *)self isAudioMessage])
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  v56 = v21;
  if ([(IMMessage *)self isPlayed])
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  v54 = v22;
  if ([(IMMessage *)self isFromMe])
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  v52 = v23;
  if ([(IMMessage *)self isEmote])
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  v51 = v24;
  if ([(IMMessage *)self hasDataDetectorResults])
  {
    v25 = @"YES";
  }

  else
  {
    v25 = @"NO";
  }

  v48 = v25;
  if ([(IMMessage *)self wasDataDetected])
  {
    v26 = @"YES";
  }

  else
  {
    v26 = @"NO";
  }

  v46 = v26;
  error = [(IMMessage *)self error];
  associatedMessageGUID = [(IMMessage *)self associatedMessageGUID];
  associatedMessageType = [(IMMessage *)self associatedMessageType];
  associatedMessageEmoji = [(IMMessage *)self associatedMessageEmoji];
  balloonBundleID = [(IMMessage *)self balloonBundleID];
  expressiveSendStyleID = [(IMMessage *)self expressiveSendStyleID];
  timeExpressiveSendPlayed = [(IMMessage *)self timeExpressiveSendPlayed];
  [timeExpressiveSendPlayed timeIntervalSinceReferenceDate];
  v29 = v28;
  v44 = *&self->_threadIdentifier;
  v45 = *&self->_bizIntent;
  replyCountsByPart = self->_replyCountsByPart;
  v31 = [(NSArray *)self->_syndicationRanges componentsJoinedByString:@", "];
  v42 = [(NSArray *)self->_syncedSyndicationRanges componentsJoinedByString:@", "];
  [(NSDate *)self->_dateEdited timeIntervalSinceReferenceDate];
  v33 = v32;
  [(NSDate *)self->_dateRecovered timeIntervalSinceReferenceDate];
  v35 = v34;
  if ([(IMMessage *)self wasDetonated])
  {
    v36 = @"YES";
  }

  else
  {
    v36 = @"NO";
  }

  v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_scheduleType];
  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_scheduleState];
  if ([(IMMessage *)self isPendingSatelliteSend])
  {
    v39 = @"YES";
  }

  else
  {
    v39 = @"NO";
  }

  if ([(IMMessage *)self isTimeSensitive])
  {
    v40 = @"YES";
  }

  else
  {
    v40 = @"NO";
  }

  v72 = [v71 stringWithFormat:@"%@[from=%@ msg-subject=%@; account:%@; service=%@; encrypted=%@; flags=%x; subject='%@' text='%@' messageID: %lld GUID:'%@' sortID: %@ date:'%f' date-delivered:'%f' date-read:'%f' date-played:'%f' empty: %@ finished: %@ sent: %@ read: %@ delivered: %@ audio: %@ played: %@ from-me: %@ emote: %@ dd-results: %@ dd-scanned: %@ error: %@ associatedMessageGUID: %@ associatedMessageType: %lld associatedMessageEmoji: %@ balloonBundleID: %@ expressiveSendStyleID: %@ timeExpressiveSendStylePlayed: %f bizIntent:%@ locale:%@ threadIdentifier: %@, threadOriginator: %@, replyCountsByPart: %@, syndicationRanges: %@, syncedSyndicationRanges: %@, dateEdited:'%f', dateRecovered: '%f', wasDetonated: %@, scheduleType: %@, scheduleState: %@, pendingSatelliteSend: %@, isTimeSensitive: %@]", v82, v81, v80, uniqueID, internalName, v67, flags, v77, v65, messageID, guid, v62, v9, v11, v13, v15, v60, v61, v59, v58, v57, v56, v54, v52, v51, v48, v46, error, associatedMessageGUID, associatedMessageType, associatedMessageEmoji, balloonBundleID, expressiveSendStyleID, v29, v45, v44, replyCountsByPart, v31, v42, v33, v35, v36, v37, v38, v39, v40];;

  return v72;
}

- (_NSRange)associatedMessageRange
{
  length = self->_associatedMessageRange.length;
  location = self->_associatedMessageRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (BOOL)isRichLinkMessage
{
  _imMessageItem = [(IMMessage *)self _imMessageItem];
  balloonBundleID = [_imMessageItem balloonBundleID];
  v4 = [balloonBundleID hasPrefix:*MEMORY[0x1E69A6A18]];

  return v4;
}

- (id)richLinkDataSourceWithChatContext:(id)context
{
  contextCopy = context;
  _imMessageItem = [(IMMessage *)self _imMessageItem];
  v6 = [IMMessagePartChatItem _newMessagePartsForMessageItem:_imMessageItem chatContext:contextCopy];
  v7 = [(IMMessage *)self _transcriptPluginChatItemFromTypeErasedPartChatItems:v6];
  dataSource = [v7 dataSource];
  bundleID = [dataSource bundleID];

  if ([bundleID containsString:*MEMORY[0x1E69A6A18]])
  {
    dataSource2 = [v7 dataSource];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Attempting to access rich link metadata from non-rich link plugin payload. Returning nil.", v13, 2u);
      }
    }

    dataSource2 = 0;
  }

  return dataSource2;
}

- (id)_transcriptPluginChatItemFromTypeErasedPartChatItems:(id)items
{
  itemsCopy = items;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    firstObject = itemsCopy;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = itemsCopy;
      if ([v5 count] == 1 && (objc_msgSend(v5, "firstObject"), v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass & 1) != 0))
      {
        firstObject = [v5 firstObject];
      }

      else
      {
        firstObject = 0;
      }
    }

    else
    {
      firstObject = 0;
    }
  }

  return firstObject;
}

+ (IMMessage)messageWithLocation:(id)location flags:(unint64_t)flags error:(id)error guid:(id)guid
{
  errorCopy = error;
  guidCopy = guid;
  v12 = [self _vCardDataWithCLLocation:location];
  if (v12)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v14 = [defaultManager im_randomTemporaryFileURLWithFileName:@"CL.loc.vcf"];

    v29 = v14;
    [v12 writeToURL:v14 atomically:1];
    v15 = +[IMFileTransferCenter sharedInstance];
    v16 = [v15 createNewOutgoingTransferWithLocalFileURL:v14];

    v17 = objc_alloc(MEMORY[0x1E695DF20]);
    v28 = [v17 initWithObjectsAndKeys:{v16, *MEMORY[0x1E69A5F68], 0}];
    v18 = objc_alloc(MEMORY[0x1E696AAB0]);
    v19 = [v18 initWithString:*MEMORY[0x1E69A5F00] attributes:v28];
    v20 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v16, 0}];
    [v19 __im_attributedStringByAssigningMessagePartNumbers];
    v22 = v21 = errorCopy;
    v23 = [self alloc];
    [MEMORY[0x1E695DF00] date];
    v25 = v24 = guidCopy;
    v26 = [v23 _initWithSender:0 time:v25 timeRead:0 timeDelivered:0 timePlayed:0 plainText:0 text:v22 messageSubject:0 fileTransferGUIDs:v20 flags:flags error:v21 guid:v24 messageID:0 subject:0 balloonBundleID:0 payloadData:0 expressiveSendStyleID:0 timeExpressiveSendPlayed:0 associatedMessageGUID:0 associatedMessageType:0 associatedMessageRange:0 associatedMessageEmoji:0 messageSummaryInfo:0 threadIdentifier:0 dateEdited:0 dateRecovered:0 scheduleType:0 scheduleState:{0, 0}];

    guidCopy = v24;
    errorCopy = v21;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

+ (id)textMessageWithLocation:(id)location flags:(unint64_t)flags error:(id)error guid:(id)guid
{
  errorCopy = error;
  guidCopy = guid;
  v11 = IMCurrentLocationURLFromLocation();
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v11];
    __im_attributedStringByAssigningMessagePartNumbers = [v12 __im_attributedStringByAssigningMessagePartNumbers];
    v14 = [self alloc];
    date = [MEMORY[0x1E695DF00] date];
    v16 = [v14 _initWithSender:0 time:date timeRead:0 timeDelivered:0 timePlayed:0 plainText:0 text:__im_attributedStringByAssigningMessagePartNumbers messageSubject:0 fileTransferGUIDs:0 flags:flags error:errorCopy guid:guidCopy messageID:0 subject:0 balloonBundleID:0 payloadData:0 expressiveSendStyleID:0 timeExpressiveSendPlayed:0 associatedMessageGUID:0 associatedMessageType:0 associatedMessageRange:0 associatedMessageEmoji:0 messageSummaryInfo:0 threadIdentifier:0 dateEdited:0 dateRecovered:0 scheduleType:0 scheduleState:{0, 0}];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)locatingMessageWithGuid:(id)guid error:(id)error
{
  errorCopy = error;
  guidCopy = guid;
  v8 = [self alloc];
  date = [MEMORY[0x1E695DF00] date];
  v10 = [v8 _initWithSender:0 time:date timeRead:0 timeDelivered:0 timePlayed:0 plainText:0 text:0 messageSubject:0 fileTransferGUIDs:0 flags:8388620 error:errorCopy guid:guidCopy messageID:0 subject:0 balloonBundleID:0 payloadData:0 expressiveSendStyleID:0 timeExpressiveSendPlayed:0 associatedMessageGUID:0 associatedMessageType:0 associatedMessageRange:0 associatedMessageEmoji:0 messageSummaryInfo:0 threadIdentifier:0 dateEdited:0 dateRecovered:0 scheduleType:0 scheduleState:{0, 0}];

  return v10;
}

+ (id)instantMessageWithAssociatedMessageContent:(id)content associatedMessageGUID:(id)d associatedMessageType:(int64_t)type associatedMessageRange:(_NSRange)range associatedMessageEmoji:(id)emoji messageSummaryInfo:(id)info threadIdentifier:(id)identifier
{
  length = range.length;
  location = range.location;
  identifierCopy = identifier;
  infoCopy = info;
  emojiCopy = emoji;
  dCopy = d;
  contentCopy = content;
  v20 = [self alloc];
  date = [MEMORY[0x1E695DF00] date];
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  v23 = [v20 _initWithSender:0 time:date timeRead:0 timeDelivered:0 timePlayed:0 plainText:0 text:contentCopy messageSubject:0 fileTransferGUIDs:0 flags:5 error:0 guid:stringGUID messageID:0 subject:0 balloonBundleID:0 payloadData:0 expressiveSendStyleID:0 timeExpressiveSendPlayed:0 associatedMessageGUID:dCopy associatedMessageType:type associatedMessageRange:location associatedMessageEmoji:length messageSummaryInfo:emojiCopy threadIdentifier:infoCopy dateEdited:identifierCopy dateRecovered:0 scheduleType:0 scheduleState:{0, 0}];

  return v23;
}

+ (id)breadcrumbMessageWithText:(id)text associatedMessageGUID:(id)d balloonBundleID:(id)iD fileTransferGUIDs:(id)ds payloadData:(id)data threadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataCopy = data;
  dsCopy = ds;
  iDCopy = iD;
  dCopy = d;
  textCopy = text;
  v20 = [self alloc];
  date = [MEMORY[0x1E695DF00] date];
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  v23 = [v20 _initWithSender:0 time:date timeRead:0 timeDelivered:0 timePlayed:0 plainText:0 text:textCopy messageSubject:0 fileTransferGUIDs:dsCopy flags:5 error:0 guid:stringGUID messageID:0 subject:0 balloonBundleID:iDCopy payloadData:dataCopy expressiveSendStyleID:0 timeExpressiveSendPlayed:0 associatedMessageGUID:dCopy associatedMessageType:2 associatedMessageRange:0 associatedMessageEmoji:0x7FFFFFFFFFFFFFFFLL messageSummaryInfo:0 threadIdentifier:0 dateEdited:identifierCopy dateRecovered:0 scheduleType:0 scheduleState:{0, 0}];

  return v23;
}

+ (id)customAcknowledgementMessageWithPayloadData:(id)data associatedMessageGUID:(id)d balloonBundleID:(id)iD messageSummaryInfo:(id)info threadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  infoCopy = info;
  iDCopy = iD;
  dCopy = d;
  dataCopy = data;
  v17 = [self alloc];
  date = [MEMORY[0x1E695DF00] date];
  v19 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  v21 = [v17 _initWithSender:0 time:date timeRead:0 timeDelivered:0 timePlayed:0 plainText:0 text:v19 messageSubject:0 fileTransferGUIDs:0 flags:5 error:0 guid:stringGUID messageID:0 subject:0 balloonBundleID:iDCopy payloadData:dataCopy expressiveSendStyleID:0 timeExpressiveSendPlayed:0 associatedMessageGUID:dCopy associatedMessageType:4000 associatedMessageRange:0 associatedMessageEmoji:0x7FFFFFFFFFFFFFFFLL messageSummaryInfo:0 threadIdentifier:infoCopy dateEdited:identifierCopy dateRecovered:0 scheduleType:0 scheduleState:{0, 0}];

  return v21;
}

- (BOOL)isAssociatedMessage
{
  associatedMessageGUID = [(IMMessage *)self associatedMessageGUID];
  v3 = associatedMessageGUID != 0;

  return v3;
}

- (BOOL)isIncomingTypingMessage
{
  v2 = MEMORY[0x1E69A8138];
  [(IMMessage *)self flags];

  return MEMORY[0x1EEE66B58](v2, sel_isIncomingTypingMessage_);
}

- (BOOL)isCancelTypingMessage
{
  v3 = MEMORY[0x1E69A8138];
  [(IMMessage *)self flags];
  [(IMMessage *)self hasEditedParts];

  return MEMORY[0x1EEE66B58](v3, sel_isCancelTypingMessage_isEditedMessage_);
}

- (BOOL)isTypingOrCancelTypingMessage
{
  v3 = MEMORY[0x1E69A8138];
  [(IMMessage *)self flags];
  [(IMMessage *)self hasEditedParts];

  return MEMORY[0x1EEE66B58](v3, sel_isTypingOrCancelTypingMessage_isEditedMessage_);
}

- (BOOL)isIncomingTypingOrCancelTypingMessage
{
  v3 = MEMORY[0x1E69A8138];
  [(IMMessage *)self flags];
  [(IMMessage *)self hasEditedParts];

  return MEMORY[0x1EEE66B58](v3, sel_isIncomingTypingOrCancelTypingMessage_isEditedMessage_);
}

@end