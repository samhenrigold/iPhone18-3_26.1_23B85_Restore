@interface _CDInteraction
+ (id)_internPool;
+ (id)conversationIdPercentEscapes;
+ (id)generateConversationIdFromHandle:(id)handle;
+ (id)generateConversationIdFromObjectsWithIdentifiers:(id)identifiers;
+ (id)inverseConversationIdPercentEscapes;
+ (id)recipientIdentifiersFromMobileMailConversationId:(id)id;
+ (id)shareSheetInteractionFromINInteraction:(id)interaction bundleID:(id)d nsUserName:(id)name knowledgeStore:(id)store;
- (BOOL)isEqual:(id)equal;
- (BOOL)isGroupChat;
- (BOOL)isValidInteraction;
- (NSArray)peopleIdentifiers;
- (NSArray)recipients;
- (NSString)title;
- (_CDInteraction)init;
- (_CDInteraction)initWithCoder:(id)coder;
- (_CDInteraction)initWithINInteraction:(id)interaction bundleID:(id)d nsUserName:(id)name;
- (id)dateInterval;
- (id)descriptionRedacted:(BOOL)redacted;
- (id)metadataFromFeedbackEvent:(id)event;
- (unint64_t)hash;
- (unint64_t)recipientsCount;
- (void)encodeWithCoder:(id)coder;
- (void)fetchAndAddShareSheetContentToInteractionWithKnowledgeStore:(id)store;
- (void)isValidInteraction;
- (void)setAccount:(id)account;
- (void)setBundleId:(id)id;
- (void)setContentURL:(id)l;
- (void)setDerivedIntentIdentifier:(id)identifier;
- (void)setDomainIdentifier:(id)identifier;
- (void)setGroupName:(id)name;
- (void)setNsUserName:(id)name;
- (void)setRecipients:(id)recipients;
- (void)setSender:(id)sender;
- (void)setTargetBundleId:(id)id;
@end

@implementation _CDInteraction

+ (id)conversationIdPercentEscapes
{
  if (initPercentEscapes_onceToken != -1)
  {
    +[_CDInteraction conversationIdPercentEscapes];
  }

  v3 = percentEscapes;

  return v3;
}

+ (id)_internPool
{
  if (_internPool__pasOnceToken20 != -1)
  {
    +[_CDInteraction _internPool];
  }

  v3 = _internPool__pasExprOnceResult;

  return v3;
}

- (_CDInteraction)init
{
  v9.receiver = self;
  v9.super_class = _CDInteraction;
  v2 = [(_CDInteraction *)&v9 init];
  if (v2)
  {
    date = [MEMORY[0x1E695DF00] date];
    v4 = *(v2 + 12);
    *(v2 + 12) = date;

    objc_storeStrong(v2 + 13, *(v2 + 12));
    objc_storeStrong(v2 + 14, *(v2 + 12));
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v7 = *(v2 + 15);
    *(v2 + 15) = uUIDString;

    *(v2 + 136) = xmmword_19190EBE0;
    v2[88] = 0;
    v2[90] = 0;
  }

  return v2;
}

- (NSArray)recipients
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (self->_recipients)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = self->_recipients;
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      v6[0] = self->_recipients;
      v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
      objc_autoreleasePoolPop(v4);
    }
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (_CDInteraction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = _CDInteraction;
  v5 = [(_CDInteraction *)&v32 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"updateDate"];
    updateDate = v5->_updateDate;
    v5->_updateDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationUUID"];
    locationUUID = v5->_locationUUID;
    v5->_locationUUID = v14;

    v5->_mechanism = [coderCopy decodeInt64ForKey:@"mechanism"];
    v5->_direction = [coderCopy decodeInt64ForKey:@"direction"];
    v5->_isResponse = [coderCopy decodeBoolForKey:@"isResponse"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];
    [(_CDInteraction *)v5 setBundleId:v16];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetBundleId"];
    [(_CDInteraction *)v5 setTargetBundleId:v17];

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupName"];
    [(_CDInteraction *)v5 setGroupName:v18];

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentURL"];
    [(_CDInteraction *)v5 setContentURL:v19];

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"derivedIntentIdentifier"];
    [(_CDInteraction *)v5 setDerivedIntentIdentifier:v20];

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domainIdentifier"];
    [(_CDInteraction *)v5 setDomainIdentifier:v21];

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"account"];
    [(_CDInteraction *)v5 setAccount:v22];

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sender"];
    [(_CDInteraction *)v5 setSender:v23];

    v24 = [coderCopy decodeObjectForKey:@"recipients"];
    [(_CDInteraction *)v5 setRecipients:v24];

    v25 = [coderCopy decodeObjectForKey:@"keywords"];
    keywords = v5->_keywords;
    v5->_keywords = v25;

    v27 = [coderCopy decodeObjectForKey:@"attachments"];
    attachments = v5->_attachments;
    v5->_attachments = v27;

    v5->_selfParticipantStatus = [coderCopy decodeInt64ForKey:@"selfParticipantStatus"];
    v5->_forcePersistInteraction = [coderCopy decodeBoolForKey:@"forcePersistInteraction"];
    v5->_mailShareSheetDeletionCandidate = [coderCopy decodeBoolForKey:@"mailShareSheetDeletionCandidate"];
    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nsUserName"];
    [(_CDInteraction *)v5 setNsUserName:v29];

    v30 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  startDate = self->_startDate;
  coderCopy = coder;
  [coderCopy encodeObject:startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_updateDate forKey:@"updateDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeObject:self->_uuid forKey:@"uuid"];
  [coderCopy encodeObject:self->_locationUUID forKey:@"locationUUID"];
  [coderCopy encodeInt64:self->_mechanism forKey:@"mechanism"];
  [coderCopy encodeInt64:self->_direction forKey:@"direction"];
  [coderCopy encodeBool:self->_isResponse forKey:@"isResponse"];
  [coderCopy encodeObject:self->_bundleId forKey:@"bundleId"];
  [coderCopy encodeObject:self->_targetBundleId forKey:@"targetBundleId"];
  [coderCopy encodeObject:self->_groupName forKey:@"groupName"];
  [coderCopy encodeObject:self->_contentURL forKey:@"contentURL"];
  [coderCopy encodeObject:self->_derivedIntentIdentifier forKey:@"derivedIntentIdentifier"];
  [coderCopy encodeObject:self->_domainIdentifier forKey:@"domainIdentifier"];
  [coderCopy encodeObject:self->_account forKey:@"account"];
  recipients = [(_CDInteraction *)self recipients];
  [coderCopy encodeObject:recipients forKey:@"recipients"];

  [coderCopy encodeObject:self->_sender forKey:@"sender"];
  [coderCopy encodeObject:self->_keywords forKey:@"keywords"];
  [coderCopy encodeObject:self->_attachments forKey:@"attachments"];
  [coderCopy encodeBool:self->_forcePersistInteraction forKey:@"forcePersistInteraction"];
  [coderCopy encodeBool:self->_mailShareSheetDeletionCandidate forKey:@"mailShareSheetDeletionCandidate"];
  [coderCopy encodeInt64:self->_selfParticipantStatus forKey:@"selfParticipantStatus"];
  [coderCopy encodeObject:self->_nsUserName forKey:@"nsUserName"];
}

- (void)setRecipients:(id)recipients
{
  recipientsCopy = recipients;
  if ([recipientsCopy count] == 1)
  {
    v5 = [recipientsCopy objectAtIndexedSubscript:0];
    recipients = self->_recipients;
    self->_recipients = v5;
    obj = recipientsCopy;
    goto LABEL_19;
  }

  obj = [recipientsCopy copy];

  v7 = +[_CDInteraction _internPool];
  recipients = [v7 intern:obj];

  if (recipients == obj)
  {
    v21 = obj;
    v14 = self->_recipients;
    self->_recipients = v21;
  }

  else
  {
    objc_storeStrong(&self->_recipients, recipients);
    if (![obj count])
    {
      goto LABEL_19;
    }

    v8 = 0;
    v9 = obj;
    while (1)
    {
      v10 = [v9 objectAtIndexedSubscript:v8];
      displayName = [v10 displayName];
      v12 = displayName;
      if (displayName)
      {
        null = displayName;
      }

      else
      {
        null = [MEMORY[0x1E695DFB0] null];
      }

      v14 = null;

      v15 = [recipients objectAtIndexedSubscript:v8];
      displayName2 = [v15 displayName];
      v17 = displayName2;
      if (displayName2)
      {
        null2 = displayName2;
      }

      else
      {
        null2 = [MEMORY[0x1E695DFB0] null];
      }

      v19 = null2;

      if (([v14 isEqual:v19] & 1) == 0)
      {
        break;
      }

      v20 = ++v8 >= [obj count];
      v9 = obj;
      if (v20)
      {
        goto LABEL_19;
      }
    }

    objc_storeStrong(&self->_recipients, obj);
  }

LABEL_19:
}

- (unint64_t)recipientsCount
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 1;
  }

  recipients = self->_recipients;

  return [recipients count];
}

- (void)setBundleId:(id)id
{
  idCopy = id;
  if (idCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_CDInteraction setBundleId:];
    }
  }

  else
  {
    v5 = +[_CDInteraction _internPool];
    v6 = [idCopy copy];
    v7 = [v5 intern:v6];
    bundleId = self->_bundleId;
    self->_bundleId = v7;
  }
}

- (void)setTargetBundleId:(id)id
{
  idCopy = id;
  if (idCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_CDInteraction setTargetBundleId:];
    }
  }

  else
  {
    v5 = +[_CDInteraction _internPool];
    v6 = [idCopy copy];
    v7 = [v5 intern:v6];
    targetBundleId = self->_targetBundleId;
    self->_targetBundleId = v7;
  }
}

- (void)setAccount:(id)account
{
  accountCopy = account;
  if (accountCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_CDInteraction setAccount:];
    }
  }

  else
  {
    v5 = +[_CDInteraction _internPool];
    v6 = [accountCopy copy];
    v7 = [v5 intern:v6];
    account = self->_account;
    self->_account = v7;
  }
}

- (void)setDerivedIntentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_CDInteraction setDerivedIntentIdentifier:];
    }
  }

  else
  {
    v5 = +[_CDInteraction _internPool];
    v6 = [identifierCopy copy];
    v7 = [v5 intern:v6];
    derivedIntentIdentifier = self->_derivedIntentIdentifier;
    self->_derivedIntentIdentifier = v7;
  }
}

- (void)setDomainIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_CDInteraction setDomainIdentifier:];
    }
  }

  else
  {
    v5 = +[_CDInteraction _internPool];
    v6 = [identifierCopy copy];
    v7 = [v5 intern:v6];
    domainIdentifier = self->_domainIdentifier;
    self->_domainIdentifier = v7;
  }
}

- (void)setGroupName:(id)name
{
  nameCopy = name;
  if (nameCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_CDInteraction setGroupName:];
    }
  }

  else
  {
    v5 = +[_CDInteraction _internPool];
    v6 = [nameCopy copy];
    v7 = [v5 intern:v6];
    groupName = self->_groupName;
    self->_groupName = v7;
  }
}

- (void)setSender:(id)sender
{
  senderCopy = sender;
  if (senderCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_CDInteraction setSender:];
    }
  }

  else
  {
    v5 = +[_CDInteraction _internPool];
    v6 = [senderCopy copy];
    v7 = [v5 intern:v6];
    sender = self->_sender;
    self->_sender = v7;
  }
}

- (void)setContentURL:(id)l
{
  lCopy = l;
  if (lCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_CDInteraction setContentURL:];
    }
  }

  else
  {
    v5 = +[_CDInteraction _internPool];
    v6 = [lCopy copy];
    v7 = [v5 intern:v6];
    contentURL = self->_contentURL;
    self->_contentURL = v7;
  }
}

- (void)setNsUserName:(id)name
{
  nameCopy = name;
  if (nameCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_CDInteraction setNsUserName:];
    }
  }

  else
  {
    v5 = +[_CDInteraction _internPool];
    v6 = [nameCopy copy];
    v7 = [v5 intern:v6];
    nsUserName = self->_nsUserName;
    self->_nsUserName = v7;
  }
}

- (id)descriptionRedacted:(BOOL)redacted
{
  redactedCopy = redacted;
  v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v5 appendString:@"Interaction { \n"];
  startDate = [(_CDInteraction *)self startDate];
  [v5 appendFormat:@"                startDate: %@\n", startDate];

  updateDate = [(_CDInteraction *)self updateDate];
  [v5 appendFormat:@"               updateDate: %@\n", updateDate];

  endDate = [(_CDInteraction *)self endDate];
  [v5 appendFormat:@"                  endDate: %@\n", endDate];

  uuid = [(_CDInteraction *)self uuid];
  [v5 appendFormat:@"                     uuid: %@\n", uuid];

  if (redactedCopy)
  {
    [v5 appendFormat:@"             locationUUID: %@\n", @"redacted"];
  }

  else
  {
    locationUUID = [(_CDInteraction *)self locationUUID];
    [v5 appendFormat:@"             locationUUID: %@\n", locationUUID];
  }

  v11 = mechanismToString([(_CDInteraction *)self mechanism]);
  [v5 appendFormat:@"                mechanism: %@ (%ld)\n", v11, -[_CDInteraction mechanism](self, "mechanism")];

  v12 = [(_CDInteraction *)self direction]- 1;
  if (v12 > 3)
  {
    v13 = @"Incoming";
  }

  else
  {
    v13 = off_1E7368258[v12];
  }

  [v5 appendFormat:@"                direction: %@ (%ld)\n", v13, -[_CDInteraction direction](self, "direction")];
  [v5 appendFormat:@"               isResponse: %d\n", -[_CDInteraction isResponse](self, "isResponse")];
  bundleId = [(_CDInteraction *)self bundleId];
  [v5 appendFormat:@"                 bundleId: %@\n", bundleId];

  targetBundleId = [(_CDInteraction *)self targetBundleId];
  [v5 appendFormat:@"           targetBundleId: %@\n", targetBundleId];

  groupName = [(_CDInteraction *)self groupName];
  v17 = [_CDLogging descriptionOfObject:groupName redacted:redactedCopy];
  [v5 appendFormat:@"                groupName: %@\n", v17];

  contentURL = [(_CDInteraction *)self contentURL];
  v19 = [_CDLogging descriptionOfObject:contentURL redacted:redactedCopy];
  [v5 appendFormat:@"               contentURL: %@\n", v19];

  derivedIntentIdentifier = [(_CDInteraction *)self derivedIntentIdentifier];
  v21 = [_CDLogging descriptionOfObject:derivedIntentIdentifier redacted:redactedCopy];
  [v5 appendFormat:@"  derivedIntentIdentifier: %@\n", v21];

  domainIdentifier = [(_CDInteraction *)self domainIdentifier];
  v23 = [_CDLogging descriptionOfObject:domainIdentifier redacted:redactedCopy];
  [v5 appendFormat:@"         domainIdentifier: %@\n", v23];

  account = [(_CDInteraction *)self account];
  v25 = [_CDLogging descriptionOfObject:account redacted:redactedCopy];
  [v5 appendFormat:@"                  account: %@\n", v25];

  sender = [(_CDInteraction *)self sender];
  v27 = [_CDLogging descriptionOfObject:sender redacted:redactedCopy];
  [v5 appendFormat:@"                   sender: %@\n", v27];

  recipients = [(_CDInteraction *)self recipients];
  v29 = [_CDLogging descriptionOfArray:recipients redacted:redactedCopy];
  [v5 appendFormat:@"               recipients: %@\n", v29];

  keywords = [(_CDInteraction *)self keywords];
  v31 = [_CDLogging descriptionOfArray:keywords redacted:redactedCopy];
  [v5 appendFormat:@"                 keywords: %@\n", v31];

  attachments = [(_CDInteraction *)self attachments];
  v33 = [_CDLogging descriptionOfArray:attachments redacted:redactedCopy];
  [v5 appendFormat:@"              attachments: %@\n", v33];

  if ([(_CDInteraction *)self mechanism]== 5)
  {
    v34 = meetingStatusToString([(_CDInteraction *)self selfParticipantStatus]);
    [v5 appendFormat:@"    selfParticipantStatus: %@\n", v34];
  }

  nsUserName = [(_CDInteraction *)self nsUserName];
  [v5 appendFormat:@"               nsUserName: %@\n", nsUserName];

  [v5 appendString:@"}\n"];

  return v5;
}

- (unint64_t)hash
{
  uuid = [(_CDInteraction *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    uuid = [(_CDInteraction *)v5 uuid];
    uuid2 = [(_CDInteraction *)self uuid];
    v8 = [uuid isEqualToString:uuid2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isValidInteraction
{
  v3 = objc_autoreleasePoolPush();
  v13 = 0;
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:+[_CDInteraction supportsSecureCoding](_CDInteraction error:{"supportsSecureCoding"), &v13}];
  v5 = v13;
  if (v5)
  {
    v6 = v5;

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v7 = MEMORY[0x1E696ACD0];
    v8 = +[_CDXPCCodecs supportedClassesToUnarchive];
    v12 = 0;
    v9 = [v7 unarchivedObjectOfClasses:v8 fromData:v4 error:&v12];
    v6 = v12;

    objc_autoreleasePoolPop(v3);
    if (!v6)
    {
      return 1;
    }
  }

  v10 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    [_CDInteraction isValidInteraction];
  }

  return 0;
}

- (BOOL)isGroupChat
{
  if ([(_CDInteraction *)self direction]== 1 && [(_CDInteraction *)self recipientsCount]> 1)
  {
    return 1;
  }

  if ([(_CDInteraction *)self direction])
  {
    return 0;
  }

  return [(_CDInteraction *)self recipientsCount]!= 0;
}

- (id)dateInterval
{
  v3 = [(NSDate *)self->_startDate earlierDate:self->_endDate];
  v4 = [(NSDate *)self->_startDate laterDate:self->_endDate];
  v5 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v3 endDate:v4];

  return v5;
}

+ (id)inverseConversationIdPercentEscapes
{
  if (initPercentEscapes_onceToken != -1)
  {
    +[_CDInteraction conversationIdPercentEscapes];
  }

  v3 = inversePercentEscapes;

  return v3;
}

+ (id)generateConversationIdFromObjectsWithIdentifiers:(id)identifiers
{
  v39[1] = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v4 = [identifiersCopy count];
  v5 = v4 - 1;
  if (v4 == 1)
  {
    v28 = [identifiersCopy objectAtIndexedSubscript:0];
    identifier = [v28 identifier];
    v27 = [_CDInteraction generateConversationIdFromHandle:identifier];

    goto LABEL_29;
  }

  v6 = v4;
  if (!v4)
  {
    v27 = &stru_1F05B9908;
    goto LABEL_29;
  }

  v7 = objc_autoreleasePoolPush();
  v37 = 0;
  v38 = 0;
  v33 = (8 * v6) | 7;
  v34 = v7;
  if (v33 > 0x400)
  {
    [(_CDInteraction *)&v37 generateConversationIdFromObjectsWithIdentifiers:v39];
    v9 = v39[0];
  }

  else
  {
    MEMORY[0x1EEE9AC00](v7);
    v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v9, v8);
  }

  v35 = identifiersCopy;
  [identifiersCopy getObjects:v9 range:{0, v6}];
  qsort_b(v9, v6, 8uLL, &__block_literal_global_757);
  v10 = 0;
  v11 = 0;
  do
  {
    v12 = v5;
    identifier2 = [*&v9[8 * v11] identifier];
    v14 = [_CDInteraction generateConversationIdFromHandle:identifier2];
    v15 = v14;
    if (identifier2 != v14)
    {
      v10 = 1;
    }

    v16 = [v14 length];
    v5 += v16;

    ++v11;
  }

  while (v6 != v11);
  v36 = v6;
  v37 = 0;
  v38 = 0;
  v31 = 2 * v5;
  if (((2 * v5) | 1uLL) >= 0x401)
  {
    [(_CDInteraction *)&v37 generateConversationIdFromObjectsWithIdentifiers:v39];
    v19 = v39[0];
  }

  else
  {
    MEMORY[0x1EEE9AC00](v17);
    v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v19, v18);
    v37 = v19;
    LOBYTE(v38) = 1;
  }

  v20 = 0;
  v21 = 0;
  v32 = v38;
  do
  {
    if (v20)
    {
      *&v19[2 * v21++] = 10;
    }

    if (v10)
    {
      [(_CDInteraction *)v9 generateConversationIdFromObjectsWithIdentifiers:v20, &v37];
      identifier3 = v37;
    }

    else
    {
      identifier3 = [*&v9[8 * v20] identifier];
    }

    v23 = [identifier3 length];
    [identifier3 getCharacters:&v19[2 * v21] range:{0, v23}];
    v21 += v23;

    ++v20;
  }

  while (v36 != v20);
  if (v33 >= 0x401)
  {
    free(v9);
    if (v5)
    {
LABEL_21:
      v24 = v16 + v12;
      v25 = v19;
      do
      {
        v26 = *v25;
        v25 += 2;
        if (v26 >= 0x80)
        {
          v27 = [MEMORY[0x1E696AEC0] _pas_stringWithConsumedAllocaDescrNoCopy:v19 bufferSize:v32 encoding:v31 nullTerminated:2483028224 isExternalRepresentation:{0, 0}];
          goto LABEL_27;
        }

        --v24;
      }

      while (v24);
      do
      {
        v19[v24] = *&v19[2 * v24];
        ++v24;
      }

      while (v16 + v12 != v24);
    }
  }

  else if (v5)
  {
    goto LABEL_21;
  }

  v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v19 length:v5 encoding:1];
  if ((v32 & 1) == 0)
  {
    free(v19);
  }

LABEL_27:
  identifiersCopy = v35;
  objc_autoreleasePoolPop(v34);
LABEL_29:

  return v27;
}

+ (id)generateConversationIdFromHandle:(id)handle
{
  handleCopy = handle;
  v4 = +[_CDInteraction conversationIdPercentEscapes];
  v5 = [handleCopy rangeOfCharacterFromSet:v4 options:2];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = handleCopy;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = +[_CDInteraction inverseConversationIdPercentEscapes];
    v9 = [handleCopy stringByAddingPercentEncodingWithAllowedCharacters:v8];
    v10 = v9;
    v11 = &stru_1F05B9908;
    if (v9)
    {
      v11 = v9;
    }

    v6 = v11;

    objc_autoreleasePoolPop(v7);
  }

  return v6;
}

+ (id)recipientIdentifiersFromMobileMailConversationId:(id)id
{
  idCopy = id;
  v4 = objc_opt_new();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67___CDInteraction_recipientIdentifiersFromMobileMailConversationId___block_invoke;
  v7[3] = &unk_1E7368148;
  v5 = v4;
  v8 = v5;
  [idCopy enumerateLinesUsingBlock:v7];

  return v5;
}

- (id)metadataFromFeedbackEvent:(id)event
{
  eventCopy = event;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  derivedIntentIdentifier = [eventCopy derivedIntentIdentifier];

  if (derivedIntentIdentifier)
  {
    derivedIntentIdentifier2 = [eventCopy derivedIntentIdentifier];
    v7 = +[_DKShareSheetFeedbackMetadataKey derivedIntentIdentifier];
    [v4 setObject:derivedIntentIdentifier2 forKeyedSubscript:v7];
  }

  targetBundleID = [eventCopy targetBundleID];

  if (targetBundleID)
  {
    targetBundleID2 = [eventCopy targetBundleID];
    v10 = +[_DKShareSheetFeedbackMetadataKey targetBundleID];
    [v4 setObject:targetBundleID2 forKeyedSubscript:v10];
  }

  extensionContextUUID = [eventCopy extensionContextUUID];

  if (extensionContextUUID)
  {
    extensionContextUUID2 = [eventCopy extensionContextUUID];
    v13 = +[_DKShareSheetFeedbackMetadataKey extensionContextUUID];
    [v4 setObject:extensionContextUUID2 forKeyedSubscript:v13];
  }

  attachments = [eventCopy attachments];

  if (attachments)
  {
    attachments2 = [eventCopy attachments];
    v16 = +[_DKShareSheetFeedbackMetadataKey attachments];
    [v4 setObject:attachments2 forKeyedSubscript:v16];
  }

  locationUUIDs = [eventCopy locationUUIDs];

  if (locationUUIDs)
  {
    locationUUIDs2 = [eventCopy locationUUIDs];
    v19 = +[_DKShareSheetFeedbackMetadataKey locationUUIDs];
    [v4 setObject:locationUUIDs2 forKeyedSubscript:v19];
  }

  photoSuggestedContacts = [eventCopy photoSuggestedContacts];

  if (photoSuggestedContacts)
  {
    photoSuggestedContacts2 = [eventCopy photoSuggestedContacts];
    v22 = +[_DKShareSheetFeedbackMetadataKey photoSuggestedContacts];
    [v4 setObject:photoSuggestedContacts2 forKeyedSubscript:v22];
  }

  sourceBundleID = [eventCopy sourceBundleID];

  if (sourceBundleID)
  {
    sourceBundleID2 = [eventCopy sourceBundleID];
    v25 = +[_DKShareSheetFeedbackMetadataKey sourceBundleID];
    [v4 setObject:sourceBundleID2 forKeyedSubscript:v25];
  }

  modelSuggestionProxies = [eventCopy modelSuggestionProxies];

  if (modelSuggestionProxies)
  {
    modelSuggestionProxies2 = [eventCopy modelSuggestionProxies];
    v28 = +[_DKShareSheetFeedbackMetadataKey modelSuggestionProxies];
    [v4 setObject:modelSuggestionProxies2 forKeyedSubscript:v28];
  }

  adaptedModelRecipeID = [eventCopy adaptedModelRecipeID];

  if (adaptedModelRecipeID)
  {
    adaptedModelRecipeID2 = [eventCopy adaptedModelRecipeID];
    v31 = +[_DKShareSheetFeedbackMetadataKey adaptedModelRecipeID];
    [v4 setObject:adaptedModelRecipeID2 forKeyedSubscript:v31];
  }

  supportedBundleIDs = [eventCopy supportedBundleIDs];

  if (supportedBundleIDs)
  {
    supportedBundleIDs2 = [eventCopy supportedBundleIDs];
    v34 = +[_DKShareSheetFeedbackMetadataKey supportedBundleIDs];
    [v4 setObject:supportedBundleIDs2 forKeyedSubscript:v34];
  }

  reasonType = [eventCopy reasonType];

  if (reasonType)
  {
    reasonType2 = [eventCopy reasonType];
    v37 = +[_DKShareSheetFeedbackMetadataKey reasonType];
    [v4 setObject:reasonType2 forKeyedSubscript:v37];
  }

  reason = [eventCopy reason];

  if (reason)
  {
    reason2 = [eventCopy reason];
    v40 = +[_DKShareSheetFeedbackMetadataKey reason];
    [v4 setObject:reason2 forKeyedSubscript:v40];
  }

  transportBundleID = [eventCopy transportBundleID];

  if (transportBundleID)
  {
    transportBundleID2 = [eventCopy transportBundleID];
    v43 = +[_DKShareSheetFeedbackMetadataKey transportBundleID];
    [v4 setObject:transportBundleID2 forKeyedSubscript:v43];
  }

  trackingID = [eventCopy trackingID];

  if (trackingID)
  {
    trackingID2 = [eventCopy trackingID];
    v46 = +[_DKShareSheetFeedbackMetadataKey trackingID];
    [v4 setObject:trackingID2 forKeyedSubscript:v46];
  }

  v47 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(eventCopy, "isAdaptedModelUsed")}];
  v48 = +[_DKShareSheetFeedbackMetadataKey isAdaptedModelUsed];
  [v4 setObject:v47 forKeyedSubscript:v48];

  v49 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(eventCopy, "isAdaptedModelCreated")}];
  v50 = +[_DKShareSheetFeedbackMetadataKey isAdaptedModelCreated];
  [v4 setObject:v49 forKeyedSubscript:v50];

  v51 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(eventCopy, "indexSelected")}];
  v52 = +[_DKShareSheetFeedbackMetadataKey indexSelected];
  [v4 setObject:v51 forKeyedSubscript:v52];

  v53 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(eventCopy, "engagementType")}];
  v54 = +[_DKShareSheetFeedbackMetadataKey engagementType];
  [v4 setObject:v53 forKeyedSubscript:v54];

  v55 = MEMORY[0x1E696AD98];
  [eventCopy numberOfVisibleSuggestions];
  v56 = [v55 numberWithDouble:?];
  v57 = +[_DKShareSheetFeedbackMetadataKey numberOfVisibleSuggestions];
  [v4 setObject:v56 forKeyedSubscript:v57];

  v58 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(eventCopy, "iCloudFamilyInvocation")}];
  v59 = +[_DKShareSheetFeedbackMetadataKey iCloudFamilyInvocation];
  [v4 setObject:v58 forKeyedSubscript:v59];

  v60 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(eventCopy, "peopleSuggestionsDisabled")}];
  v61 = +[_DKShareSheetFeedbackMetadataKey peopleSuggestionsDisabled];
  [v4 setObject:v60 forKeyedSubscript:v61];

  return v4;
}

- (void)fetchAndAddShareSheetContentToInteractionWithKnowledgeStore:(id)store
{
  v146 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  selfCopy = self;
  if (self->_mechanism == 13)
  {
    targetBundleId = self->_targetBundleId;
    v5 = +[_CDConstants shareSheetTargetBundleIdMessages];
    LODWORD(targetBundleId) = [(NSString *)targetBundleId isEqualToString:v5];

    v6 = selfCopy->_bundleId;
    if (targetBundleId)
    {
      v7 = +[_CDConstants mobileMessagesBundleId];

      v97 = 1;
      v6 = v7;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = self->_bundleId;
  }

  v97 = 0;
LABEL_6:
  v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v6, 0}];
  v107 = v6;
  v108 = [MEMORY[0x1E6963618] bundleProxyForIdentifier:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    plugInKitPlugins = [v108 plugInKitPlugins];
    v10 = [plugInKitPlugins countByEnumeratingWithState:&v138 objects:v145 count:16];
    if (v10)
    {
      v11 = *v139;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v139 != v11)
          {
            objc_enumerationMutation(plugInKitPlugins);
          }

          v13 = *(*(&v138 + 1) + 8 * i);
          bundleIdentifier = [v13 bundleIdentifier];
          if (bundleIdentifier)
          {
            protocol = [v13 protocol];
            v16 = [protocol isEqualToString:@"com.apple.share-services"];

            if (v16)
            {
              [v8 addObject:bundleIdentifier];
            }
          }
        }

        v10 = [plugInKitPlugins countByEnumeratingWithState:&v138 objects:v145 count:16];
      }

      while (v10);
    }
  }

  v17 = +[_CDConstants mobileMessagesBundleId];
  v18 = [(NSString *)v107 isEqualToString:v17];

  if (v18)
  {
    v19 = +[_CDConstants shareSheetTargetBundleIdMessages];
    [v8 addObject:v19];
  }

  v20 = BiomeLibrary();
  shareSheet = [v20 ShareSheet];
  feedback = [shareSheet Feedback];

  v22 = objc_alloc(MEMORY[0x1E698F2D0]);
  startDate = [(_CDInteraction *)selfCopy startDate];
  startDate2 = [(_CDInteraction *)selfCopy startDate];
  v25 = [startDate2 dateByAddingTimeInterval:-60.0];
  v26 = [v22 initWithStartDate:startDate endDate:v25 maxEvents:0 lastN:0 reversed:1];

  v105 = [feedback publisherWithUseCase:@"ShareSheetFeedback" options:v26];

  v132 = 0;
  v133 = &v132;
  v134 = 0x3032000000;
  v135 = __Block_byref_object_copy__6;
  v136 = __Block_byref_object_dispose__6;
  v137 = 0;
  v128[0] = MEMORY[0x1E69E9820];
  v128[1] = 3221225472;
  v128[2] = __78___CDInteraction_fetchAndAddShareSheetContentToInteractionWithKnowledgeStore___block_invoke_780;
  v128[3] = &unk_1E7368190;
  v99 = v8;
  v129 = v99;
  v130 = selfCopy;
  v131 = &v132;
  v27 = [v105 sinkWithCompletion:&__block_literal_global_779 shouldContinue:v128];
  v28 = v133[5];
  if (v28)
  {
    source = [v28 source];
    bundleID = [source bundleID];

    metadata = [v133[5] metadata];
    v31 = +[_DKShareSheetFeedbackMetadataKey targetBundleID];
    v101 = [metadata objectForKeyedSubscript:v31];

    if (!v101 || ![v101 length] || !bundleID || !-[NSObject length](bundleID, "length"))
    {
      v98 = +[_CDLogging interactionChannel];
      if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
      {
        [_CDInteraction fetchAndAddShareSheetContentToInteractionWithKnowledgeStore:];
      }

      goto LABEL_44;
    }

    metadata2 = [v133[5] metadata];
    v33 = +[_DKShareSheetFeedbackMetadataKey attachments];
    v98 = [metadata2 objectForKeyedSubscript:v33];

    if (v98)
    {
      get_PSAttachmentClass();
      v34 = objc_opt_class();
      if (!v34)
      {
        v37 = +[_CDLogging interactionChannel];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          [_CDInteraction fetchAndAddShareSheetContentToInteractionWithKnowledgeStore:v37];
        }

        goto LABEL_42;
      }

      [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), v34, 0}];
      v93 = v127 = 0;
      v35 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v93 fromData:v98 error:&v127];
      v36 = v127;
      if (v36)
      {
        v37 = v36;
        v38 = +[_CDLogging interactionChannel];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          [_CDInteraction fetchAndAddShareSheetContentToInteractionWithKnowledgeStore:];
        }

LABEL_42:
        v113 = 0;
LABEL_43:

LABEL_44:
        goto LABEL_45;
      }

      v113 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v35, "count")}];
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      obj = v35;
      v96 = [obj countByEnumeratingWithState:&v123 objects:v144 count:16];
      if (v96)
      {
        v95 = *v124;
        do
        {
          for (j = 0; j != v96; ++j)
          {
            if (*v124 != v95)
            {
              objc_enumerationMutation(obj);
            }

            v44 = *(*(&v123 + 1) + 8 * j);
            v45 = [_CDAttachment alloc];
            identifier = [v44 identifier];
            cloudIdentifier = [v44 cloudIdentifier];
            photoLocalIdentifier = [v44 photoLocalIdentifier];
            v49 = [v44 UTI];
            creationDate = [v44 creationDate];
            contentURL = [v44 contentURL];
            contentText = [v44 contentText];
            v103 = [(_CDAttachment *)v45 initWithIdentifier:identifier cloudIdentifier:cloudIdentifier photoLocalIdentifier:photoLocalIdentifier type:v49 sizeInBytes:0 creationDate:creationDate contentURL:contentURL contentText:contentText photoSceneDescriptor:0 personInPhoto:0];
            v114 = v44;

            [v113 addObject:v103];
            peopleInPhoto = [v44 peopleInPhoto];

            if (peopleInPhoto)
            {
              v121 = 0u;
              v122 = 0u;
              v119 = 0u;
              v120 = 0u;
              peopleInPhoto2 = [v44 peopleInPhoto];
              v55 = [peopleInPhoto2 countByEnumeratingWithState:&v119 objects:v143 count:16];
              if (v55)
              {
                v56 = *v120;
                do
                {
                  for (k = 0; k != v55; ++k)
                  {
                    if (*v120 != v56)
                    {
                      objc_enumerationMutation(peopleInPhoto2);
                    }

                    v58 = *(*(&v119 + 1) + 8 * k);
                    v59 = [_CDAttachment alloc];
                    identifier2 = [v114 identifier];
                    cloudIdentifier2 = [v114 cloudIdentifier];
                    photoLocalIdentifier2 = [v114 photoLocalIdentifier];
                    v63 = [v114 UTI];
                    v64 = [(_CDAttachment *)v59 initWithIdentifier:identifier2 cloudIdentifier:cloudIdentifier2 photoLocalIdentifier:photoLocalIdentifier2 type:v63 sizeInBytes:0 creationDate:0 contentURL:0 contentText:0 photoSceneDescriptor:0 personInPhoto:v58];

                    [v113 addObject:v64];
                  }

                  v55 = [peopleInPhoto2 countByEnumeratingWithState:&v119 objects:v143 count:16];
                }

                while (v55);
              }
            }

            photoSceneDescriptors = [v114 photoSceneDescriptors];

            if (photoSceneDescriptors)
            {
              v117 = 0u;
              v118 = 0u;
              v115 = 0u;
              v116 = 0u;
              photoSceneDescriptors2 = [v114 photoSceneDescriptors];
              v67 = [photoSceneDescriptors2 countByEnumeratingWithState:&v115 objects:v142 count:16];
              if (v67)
              {
                v110 = photoSceneDescriptors2;
                v111 = *v116;
                do
                {
                  v112 = v67;
                  for (m = 0; m != v112; ++m)
                  {
                    if (*v116 != v111)
                    {
                      objc_enumerationMutation(v110);
                    }

                    v69 = *(*(&v115 + 1) + 8 * m);
                    v70 = [_CDAttachment alloc];
                    identifier3 = [v114 identifier];
                    cloudIdentifier3 = [v114 cloudIdentifier];
                    photoLocalIdentifier3 = [v114 photoLocalIdentifier];
                    v74 = [v114 UTI];
                    creationDate2 = [v114 creationDate];
                    contentURL2 = [v114 contentURL];
                    contentText2 = [v114 contentText];
                    v78 = [(_CDAttachment *)v70 initWithIdentifier:identifier3 cloudIdentifier:cloudIdentifier3 photoLocalIdentifier:photoLocalIdentifier3 type:v74 sizeInBytes:0 creationDate:creationDate2 contentURL:contentURL2 contentText:contentText2 photoSceneDescriptor:v69 personInPhoto:0];

                    [v113 addObject:v78];
                  }

                  photoSceneDescriptors2 = v110;
                  v67 = [v110 countByEnumeratingWithState:&v115 objects:v142 count:16];
                }

                while (v67);
              }
            }

            contentURL3 = [v114 contentURL];
            host = [contentURL3 host];

            contentURL4 = [v114 contentURL];
            if (contentURL4)
            {
              v82 = host == 0;
            }

            else
            {
              v82 = 1;
            }

            v83 = !v82;

            if (v83)
            {
              v84 = [_CDAttachment alloc];
              identifier4 = [v114 identifier];
              cloudIdentifier4 = [v114 cloudIdentifier];
              photoLocalIdentifier4 = [v114 photoLocalIdentifier];
              v88 = [v114 UTI];
              creationDate3 = [v114 creationDate];
              v90 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:host];
              contentText3 = [v114 contentText];
              v92 = [(_CDAttachment *)v84 initWithIdentifier:identifier4 cloudIdentifier:cloudIdentifier4 photoLocalIdentifier:photoLocalIdentifier4 type:v88 sizeInBytes:0 creationDate:creationDate3 contentURL:v90 contentText:contentText3];

              [v113 addObject:v92];
            }
          }

          v96 = [obj countByEnumeratingWithState:&v123 objects:v144 count:16];
        }

        while (v96);
      }
    }

    else
    {
      v113 = 0;
    }

    v39 = +[_CDConstants shareSheetTargetBundleIdMessages];
    v40 = [v39 isEqualToString:v101];

    if (v40)
    {
      [(_CDInteraction *)selfCopy setDerivedIntentIdentifier:0];
    }

    v41 = [v113 copy];
    [(_CDInteraction *)selfCopy setAttachments:v41];

    source2 = [v133[5] source];
    bundleID2 = [source2 bundleID];
    [(_CDInteraction *)selfCopy setBundleId:bundleID2];

    if ((v97 & 1) == 0)
    {
      [(_CDInteraction *)selfCopy setTargetBundleId:v101];
    }

    goto LABEL_43;
  }

  bundleID = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(bundleID, OS_LOG_TYPE_ERROR))
  {
    [_CDInteraction fetchAndAddShareSheetContentToInteractionWithKnowledgeStore:];
  }

LABEL_45:

  _Block_object_dispose(&v132, 8);
}

- (NSArray)peopleIdentifiers
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  recipients = [(_CDInteraction *)self recipients];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(recipients, "count") + 1}];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  recipients2 = [(_CDInteraction *)self recipients];
  v7 = [recipients2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(recipients2);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        identifier = [v11 identifier];
        v13 = [identifier length];

        if (v13)
        {
          identifier2 = [v11 identifier];
          [v5 addObject:identifier2];
        }
      }

      v8 = [recipients2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  sender = [(_CDInteraction *)self sender];
  identifier3 = [sender identifier];
  if ([identifier3 length])
  {
    direction = [(_CDInteraction *)self direction];

    if (direction)
    {
      goto LABEL_14;
    }

    sender = [(_CDInteraction *)self sender];
    identifier3 = [sender identifier];
    [v5 addObject:identifier3];
  }

LABEL_14:

  return v5;
}

- (NSString)title
{
  keywords = [(_CDInteraction *)self keywords];
  v3 = [keywords componentsJoinedByString:{@", "}];

  return v3;
}

- (_CDInteraction)initWithINInteraction:(id)interaction bundleID:(id)d nsUserName:(id)name
{
  v79 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  dCopy = d;
  nameCopy = name;
  v11 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [_CDInteraction(INInteraction) initWithINInteraction:interactionCopy bundleID:dCopy nsUserName:v11];
  }

  if (interactionCopy)
  {
    self = [(_CDInteraction *)self init];
    intent = [interactionCopy intent];
    donationMetadata = +[_CDConstants mobileMessagesBundleId];
    if ([dCopy isEqualToString:donationMetadata])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_10;
      }

      donationMetadata = [intent donationMetadata];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([donationMetadata isBusinessChat])
      {
        selfCopy = 0;

LABEL_50:
        goto LABEL_51;
      }
    }

LABEL_10:
    -[_CDInteraction setMechanism:](self, "setMechanism:", [intent cd_interactionMechanism]);
    identifier = [interactionCopy identifier];
    if (!identifier)
    {
      v17 = dCopy;
      v18 = +[_CDLogging interactionChannel];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [_CDInteraction(INInteraction) initWithINInteraction:v18 bundleID:? nsUserName:?];
      }

      uUID = [MEMORY[0x1E696AFB0] UUID];
      identifier = [uUID UUIDString];

      dCopy = v17;
    }

    if ([(_CDInteraction *)self mechanism]== 11 || [(_CDInteraction *)self mechanism]== 17)
    {
      v20 = +[_CDConstants facetimeBundleId];
      [(_CDInteraction *)self setBundleId:v20];
    }

    else
    {
      [(_CDInteraction *)self setBundleId:dCopy];
    }

    bundleId = [(_CDInteraction *)self bundleId];
    v22 = [_CDSpotlightItemUtils interactionUUIDForSearchableItemWithUID:identifier bundleID:bundleId];
    [(_CDInteraction *)self setUuid:v22];

    dateInterval = [interactionCopy dateInterval];
    startDate = [dateInterval startDate];
    [(_CDInteraction *)self setStartDate:startDate];

    dateInterval2 = [interactionCopy dateInterval];
    endDate = [dateInterval2 endDate];
    [(_CDInteraction *)self setEndDate:endDate];

    v27 = [intent imageForParameterNamed:@"speakableGroupName"];
    _uri = [v27 _uri];

    v73 = identifier;
    v71 = v27;
    if (_uri)
    {
      _uri2 = [v27 _uri];
      [(_CDInteraction *)self setContentURL:_uri2];
      goto LABEL_26;
    }

    _identifier = [v27 _identifier];

    if (_identifier)
    {
      v31 = MEMORY[0x1E695DFF8];
      _uri2 = [v27 _identifier];
      _uri4 = [v31 URLWithString:_uri2];
    }

    else
    {
      _keyImage = [intent _keyImage];
      _uri3 = [_keyImage _uri];

      _keyImage2 = [intent _keyImage];
      _uri2 = _keyImage2;
      if (!_uri3)
      {
        _identifier2 = [_keyImage2 _identifier];

        if (!_identifier2)
        {
          goto LABEL_27;
        }

        v66 = MEMORY[0x1E695DFF8];
        _uri2 = [intent _keyImage];
        _identifier3 = [_uri2 _identifier];
        v68 = [v66 URLWithString:_identifier3];
        [(_CDInteraction *)self setContentURL:v68];

LABEL_26:
LABEL_27:
        v72 = nameCopy;
        groupIdentifier = [interactionCopy groupIdentifier];
        [(_CDInteraction *)self setDomainIdentifier:groupIdentifier];

        cd_groupName = [intent cd_groupName];
        [(_CDInteraction *)self setGroupName:cd_groupName];

        cd_derivedIntentIdentifier = [intent cd_derivedIntentIdentifier];
        [(_CDInteraction *)self setDerivedIntentIdentifier:cd_derivedIntentIdentifier];

        v40 = [MEMORY[0x1E695E0F0] mutableCopy];
        _className = [intent _className];
        v42 = objc_opt_class();
        v43 = NSStringFromClass(v42);
        if ([_className isEqualToString:v43] && objc_msgSend(interactionCopy, "direction") == 2)
        {
          cd_recipients = [intent cd_recipients];
          v45 = [cd_recipients count];

          if (v45 == 1)
          {
            v46 = [_CDContact alloc];
            cd_sender = [intent cd_sender];
            v48 = [(_CDContact *)v46 initWithINPerson:cd_sender];
            [(_CDInteraction *)self setSender:v48];

LABEL_42:
            _className2 = [intent _className];
            v55 = objc_opt_class();
            v56 = NSStringFromClass(v55);
            v57 = [_className2 isEqualToString:v56];

            nameCopy = v72;
            if ((v57 & 1) == 0)
            {
              v58 = [_CDContact alloc];
              cd_sender2 = [intent cd_sender];
              v60 = [(_CDContact *)v58 initWithINPerson:cd_sender2];
              [(_CDInteraction *)self setSender:v60];
            }

            [(_CDInteraction *)self setRecipients:v40];
            direction = [interactionCopy direction];
            v62 = 3;
            if (direction == 1)
            {
              v62 = 1;
            }

            if (direction == 2)
            {
              v63 = 0;
            }

            else
            {
              v63 = v62;
            }

            [(_CDInteraction *)self setDirection:v63];
            [(_CDInteraction *)self setNsUserName:v72];
            selfCopy = self;

            goto LABEL_50;
          }
        }

        else
        {
        }

        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        cd_sender = [intent cd_recipients];
        v49 = [cd_sender countByEnumeratingWithState:&v74 objects:v78 count:16];
        if (v49)
        {
          v50 = v49;
          v69 = dCopy;
          v70 = interactionCopy;
          v51 = *v75;
          do
          {
            for (i = 0; i != v50; ++i)
            {
              if (*v75 != v51)
              {
                objc_enumerationMutation(cd_sender);
              }

              v53 = [[_CDContact alloc] initWithINPerson:*(*(&v74 + 1) + 8 * i)];
              if (v53)
              {
                [v40 addObject:v53];
              }
            }

            v50 = [cd_sender countByEnumeratingWithState:&v74 objects:v78 count:16];
          }

          while (v50);
          dCopy = v69;
          interactionCopy = v70;
        }

        goto LABEL_42;
      }

      _uri4 = [_keyImage2 _uri];
    }

    v36 = _uri4;
    [(_CDInteraction *)self setContentURL:_uri4];

    goto LABEL_26;
  }

  selfCopy = 0;
LABEL_51:

  return selfCopy;
}

+ (id)shareSheetInteractionFromINInteraction:(id)interaction bundleID:(id)d nsUserName:(id)name knowledgeStore:(id)store
{
  interactionCopy = interaction;
  dCopy = d;
  nameCopy = name;
  storeCopy = store;
  v13 = storeCopy;
  v14 = 0;
  if (interactionCopy && dCopy && storeCopy)
  {
    _contextExtensionUUID = [interactionCopy _contextExtensionUUID];
    uUIDString = [_contextExtensionUUID UUIDString];

    if (uUIDString)
    {
      v14 = [[_CDInteraction alloc] initWithINInteraction:interactionCopy bundleID:dCopy nsUserName:nameCopy];
      [(_CDInteraction *)v14 setMechanism:13];
      [(_CDInteraction *)v14 fetchAndAddShareSheetContentToInteractionWithKnowledgeStore:v13];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (void)setBundleId:.cold.1()
{
  OUTLINED_FUNCTION_6();
  objc_opt_class();
  v8 = 136446979;
  OUTLINED_FUNCTION_1_7();
  v1 = OUTLINED_FUNCTION_0_7(v0);
  OUTLINED_FUNCTION_2_1(&dword_191750000, v2, v3, "%{public}s expected %{public}s, got %{public}@, ignoring assignment: %{sensitive}@", v4, v5, v6, v7, v8);
}

- (void)setTargetBundleId:.cold.1()
{
  OUTLINED_FUNCTION_6();
  objc_opt_class();
  v8 = 136446979;
  OUTLINED_FUNCTION_1_7();
  v1 = OUTLINED_FUNCTION_0_7(v0);
  OUTLINED_FUNCTION_2_1(&dword_191750000, v2, v3, "%{public}s expected %{public}s, got %{public}@, ignoring assignment: %{sensitive}@", v4, v5, v6, v7, v8);
}

- (void)setAccount:.cold.1()
{
  OUTLINED_FUNCTION_6();
  objc_opt_class();
  v8 = 136446979;
  OUTLINED_FUNCTION_1_7();
  v1 = OUTLINED_FUNCTION_0_7(v0);
  OUTLINED_FUNCTION_2_1(&dword_191750000, v2, v3, "%{public}s expected %{public}s, got %{public}@, ignoring assignment: %{sensitive}@", v4, v5, v6, v7, v8);
}

- (void)setDerivedIntentIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_6();
  objc_opt_class();
  v8 = 136446979;
  OUTLINED_FUNCTION_1_7();
  v1 = OUTLINED_FUNCTION_0_7(v0);
  OUTLINED_FUNCTION_2_1(&dword_191750000, v2, v3, "%{public}s expected %{public}s, got %{public}@, ignoring assignment: %{sensitive}@", v4, v5, v6, v7, v8);
}

- (void)setDomainIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_6();
  objc_opt_class();
  v8 = 136446979;
  OUTLINED_FUNCTION_1_7();
  v1 = OUTLINED_FUNCTION_0_7(v0);
  OUTLINED_FUNCTION_2_1(&dword_191750000, v2, v3, "%{public}s expected %{public}s, got %{public}@, ignoring assignment: %{sensitive}@", v4, v5, v6, v7, v8);
}

- (void)setGroupName:.cold.1()
{
  OUTLINED_FUNCTION_6();
  objc_opt_class();
  v8 = 136446979;
  OUTLINED_FUNCTION_1_7();
  v1 = OUTLINED_FUNCTION_0_7(v0);
  OUTLINED_FUNCTION_2_1(&dword_191750000, v2, v3, "%{public}s expected %{public}s, got %{public}@, ignoring assignment: %{sensitive}@", v4, v5, v6, v7, v8);
}

- (void)setSender:.cold.1()
{
  OUTLINED_FUNCTION_6();
  objc_opt_class();
  v8 = 136446979;
  OUTLINED_FUNCTION_1_7();
  v1 = OUTLINED_FUNCTION_0_7(v0);
  OUTLINED_FUNCTION_2_1(&dword_191750000, v2, v3, "%{public}s expected %{public}s, got %{public}@, ignoring assignment: %{sensitive}@", v4, v5, v6, v7, v8);
}

- (void)setContentURL:.cold.1()
{
  OUTLINED_FUNCTION_6();
  objc_opt_class();
  v8 = 136446979;
  OUTLINED_FUNCTION_1_7();
  v1 = OUTLINED_FUNCTION_0_7(v0);
  OUTLINED_FUNCTION_2_1(&dword_191750000, v2, v3, "%{public}s expected %{public}s, got %{public}@, ignoring assignment: %{sensitive}@", v4, v5, v6, v7, v8);
}

- (void)setNsUserName:.cold.1()
{
  OUTLINED_FUNCTION_6();
  objc_opt_class();
  v8 = 136446979;
  OUTLINED_FUNCTION_1_7();
  v1 = OUTLINED_FUNCTION_0_7(v0);
  OUTLINED_FUNCTION_2_1(&dword_191750000, v2, v3, "%{public}s expected %{public}s, got %{public}@, ignoring assignment: %{sensitive}@", v4, v5, v6, v7, v8);
}

- (void)isValidInteraction
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_fault_impl(&dword_191750000, v1, OS_LOG_TYPE_FAULT, "Not recording %{sensitive}@ as it is not a valid interaction, error: %@", v2, 0x16u);
}

+ (uint64_t)generateConversationIdFromObjectsWithIdentifiers:(void *)a3 .cold.1(uint64_t a1, size_t size, void *a3)
{
  result = malloc_type_posix_memalign(a1, 8uLL, size, 0x80040B8603338uLL);
  *(a1 + 8) = 0;
  if (result)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v6);
  }

  *a3 = *a1;
  return result;
}

+ (uint64_t)generateConversationIdFromObjectsWithIdentifiers:(void *)a3 .cold.2(uint64_t a1, size_t size, void *a3)
{
  result = malloc_type_posix_memalign(a1, 8uLL, size, 0x318E99F0uLL);
  *(a1 + 8) = 0;
  if (result)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v6);
  }

  *a3 = *a1;
  return result;
}

+ (void)generateConversationIdFromObjectsWithIdentifiers:(uint64_t *)a3 .cold.3(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = [*(a1 + 8 * a2) identifier];
  *a3 = [_CDInteraction generateConversationIdFromHandle:v4];
}

@end