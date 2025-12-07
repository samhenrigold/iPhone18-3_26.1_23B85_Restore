@interface ATXNotificationDeliverySuggestion
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (ATXNotificationDeliverySuggestion)initWithCoder:(id)coder;
- (ATXNotificationDeliverySuggestion)initWithInterruptionManagerTuningSuggestion:(id)suggestion scope:(int64_t)scope entityIdentifier:(id)identifier uuid:(id)uuid timestamp:(id)timestamp triggerNotificationUUID:(id)d;
- (ATXNotificationDeliverySuggestion)initWithProto:(id)proto;
- (ATXNotificationDeliverySuggestion)initWithProtoData:(id)data;
- (ATXNotificationDeliverySuggestion)initWithSmartPauseSuggestion:(id)suggestion uuid:(id)uuid scope:(int64_t)scope entityIdentifier:(id)identifier timestamp:(id)timestamp triggerNotificationUUID:(id)d;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXNotificationDeliverySuggestion:(id)suggestion;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)encodeAsProto;
- (id)initPromotingSuggestionWithUUID:(id)d scope:(int64_t)scope entityIdentifier:(id)identifier timestamp:(id)timestamp triggerNotificationUUID:(id)iD;
- (id)initQuietingSuggestionWithUUID:(id)d scope:(int64_t)scope entityIdentifier:(id)identifier timestamp:(id)timestamp triggerNotificationUUID:(id)iD;
- (id)initSendToDigestSuggestionWithUUID:(id)d bundleID:(id)iD timestamp:(id)timestamp triggerNotificationUUID:(id)uID;
- (id)initSendToMessagesDigestSuggestionWithUUID:(id)d bundleID:(id)iD timestamp:(id)timestamp triggerNotificationUUID:(id)uID;
- (id)initTurnOffNotificationsForAppSuggestionWithUUID:(id)d bundleID:(id)iD timestamp:(id)timestamp triggerNotificationUUID:(id)uID;
- (id)initUrgencyTuningSuggestionWithUUID:(id)d bundleID:(id)iD timestamp:(id)timestamp triggerNotificationUUID:(id)uID;
- (id)json;
- (id)jsonRawData;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)proto;
@end

@implementation ATXNotificationDeliverySuggestion

- (ATXNotificationDeliverySuggestion)initWithSmartPauseSuggestion:(id)suggestion uuid:(id)uuid scope:(int64_t)scope entityIdentifier:(id)identifier timestamp:(id)timestamp triggerNotificationUUID:(id)d
{
  suggestionCopy = suggestion;
  uuidCopy = uuid;
  identifierCopy = identifier;
  timestampCopy = timestamp;
  dCopy = d;
  v28.receiver = self;
  v28.super_class = ATXNotificationDeliverySuggestion;
  v20 = [(ATXNotificationDeliverySuggestion *)&v28 init];
  if (v20)
  {
    v21 = [uuidCopy copy];
    uuid = v20->_uuid;
    v20->_uuid = v21;

    v20->_scope = scope;
    v23 = [identifierCopy copy];
    entityIdentifier = v20->_entityIdentifier;
    v20->_entityIdentifier = v23;

    objc_storeStrong(&v20->_timestamp, timestamp);
    v25 = [dCopy copy];
    triggerNotificationUUID = v20->_triggerNotificationUUID;
    v20->_triggerNotificationUUID = v25;

    v20->_subtype = 4;
    objc_storeStrong(&v20->_subObject, suggestion);
  }

  return v20;
}

- (id)initQuietingSuggestionWithUUID:(id)d scope:(int64_t)scope entityIdentifier:(id)identifier timestamp:(id)timestamp triggerNotificationUUID:(id)iD
{
  dCopy = d;
  identifierCopy = identifier;
  timestampCopy = timestamp;
  iDCopy = iD;
  v25.receiver = self;
  v25.super_class = ATXNotificationDeliverySuggestion;
  v16 = [(ATXNotificationDeliverySuggestion *)&v25 init];
  if (v16)
  {
    v17 = [dCopy copy];
    uuid = v16->_uuid;
    v16->_uuid = v17;

    v16->_scope = scope;
    v19 = [identifierCopy copy];
    entityIdentifier = v16->_entityIdentifier;
    v16->_entityIdentifier = v19;

    objc_storeStrong(&v16->_timestamp, timestamp);
    v21 = [iDCopy copy];
    triggerNotificationUUID = v16->_triggerNotificationUUID;
    v16->_triggerNotificationUUID = v21;

    subObject = v16->_subObject;
    v16->_subtype = 1;
    v16->_subObject = 0;
  }

  return v16;
}

- (id)initPromotingSuggestionWithUUID:(id)d scope:(int64_t)scope entityIdentifier:(id)identifier timestamp:(id)timestamp triggerNotificationUUID:(id)iD
{
  dCopy = d;
  identifierCopy = identifier;
  timestampCopy = timestamp;
  iDCopy = iD;
  v25.receiver = self;
  v25.super_class = ATXNotificationDeliverySuggestion;
  v16 = [(ATXNotificationDeliverySuggestion *)&v25 init];
  if (v16)
  {
    v17 = [dCopy copy];
    uuid = v16->_uuid;
    v16->_uuid = v17;

    v16->_scope = scope;
    v19 = [identifierCopy copy];
    entityIdentifier = v16->_entityIdentifier;
    v16->_entityIdentifier = v19;

    objc_storeStrong(&v16->_timestamp, timestamp);
    v21 = [iDCopy copy];
    triggerNotificationUUID = v16->_triggerNotificationUUID;
    v16->_triggerNotificationUUID = v21;

    subObject = v16->_subObject;
    v16->_subtype = 2;
    v16->_subObject = 0;
  }

  return v16;
}

- (ATXNotificationDeliverySuggestion)initWithInterruptionManagerTuningSuggestion:(id)suggestion scope:(int64_t)scope entityIdentifier:(id)identifier uuid:(id)uuid timestamp:(id)timestamp triggerNotificationUUID:(id)d
{
  suggestionCopy = suggestion;
  identifierCopy = identifier;
  uuidCopy = uuid;
  timestampCopy = timestamp;
  dCopy = d;
  v28.receiver = self;
  v28.super_class = ATXNotificationDeliverySuggestion;
  v20 = [(ATXNotificationDeliverySuggestion *)&v28 init];
  if (v20)
  {
    v21 = [uuidCopy copy];
    uuid = v20->_uuid;
    v20->_uuid = v21;

    v20->_scope = scope;
    v23 = [identifierCopy copy];
    entityIdentifier = v20->_entityIdentifier;
    v20->_entityIdentifier = v23;

    objc_storeStrong(&v20->_timestamp, timestamp);
    v25 = [dCopy copy];
    triggerNotificationUUID = v20->_triggerNotificationUUID;
    v20->_triggerNotificationUUID = v25;

    v20->_subtype = 5;
    objc_storeStrong(&v20->_subObject, suggestion);
  }

  return v20;
}

- (id)initSendToDigestSuggestionWithUUID:(id)d bundleID:(id)iD timestamp:(id)timestamp triggerNotificationUUID:(id)uID
{
  dCopy = d;
  iDCopy = iD;
  timestampCopy = timestamp;
  uIDCopy = uID;
  v24.receiver = self;
  v24.super_class = ATXNotificationDeliverySuggestion;
  v14 = [(ATXNotificationDeliverySuggestion *)&v24 init];
  if (v14)
  {
    v15 = [dCopy copy];
    uuid = v14->_uuid;
    v14->_uuid = v15;

    v14->_scope = 1;
    v17 = [iDCopy copy];
    entityIdentifier = v14->_entityIdentifier;
    v14->_entityIdentifier = v17;

    objc_storeStrong(&v14->_timestamp, timestamp);
    v19 = [uIDCopy copy];
    triggerNotificationUUID = v14->_triggerNotificationUUID;
    v14->_triggerNotificationUUID = v19;

    v14->_subtype = 6;
    v21 = objc_opt_new();
    subObject = v14->_subObject;
    v14->_subObject = v21;
  }

  return v14;
}

- (id)initSendToMessagesDigestSuggestionWithUUID:(id)d bundleID:(id)iD timestamp:(id)timestamp triggerNotificationUUID:(id)uID
{
  dCopy = d;
  iDCopy = iD;
  timestampCopy = timestamp;
  uIDCopy = uID;
  v24.receiver = self;
  v24.super_class = ATXNotificationDeliverySuggestion;
  v14 = [(ATXNotificationDeliverySuggestion *)&v24 init];
  if (v14)
  {
    v15 = [dCopy copy];
    uuid = v14->_uuid;
    v14->_uuid = v15;

    v14->_scope = 1;
    v17 = [iDCopy copy];
    entityIdentifier = v14->_entityIdentifier;
    v14->_entityIdentifier = v17;

    objc_storeStrong(&v14->_timestamp, timestamp);
    v19 = [uIDCopy copy];
    triggerNotificationUUID = v14->_triggerNotificationUUID;
    v14->_triggerNotificationUUID = v19;

    v14->_subtype = 8;
    v21 = objc_opt_new();
    subObject = v14->_subObject;
    v14->_subObject = v21;
  }

  return v14;
}

- (id)initUrgencyTuningSuggestionWithUUID:(id)d bundleID:(id)iD timestamp:(id)timestamp triggerNotificationUUID:(id)uID
{
  dCopy = d;
  iDCopy = iD;
  timestampCopy = timestamp;
  uIDCopy = uID;
  v24.receiver = self;
  v24.super_class = ATXNotificationDeliverySuggestion;
  v14 = [(ATXNotificationDeliverySuggestion *)&v24 init];
  if (v14)
  {
    v15 = [dCopy copy];
    uuid = v14->_uuid;
    v14->_uuid = v15;

    v14->_scope = 1;
    v17 = [iDCopy copy];
    entityIdentifier = v14->_entityIdentifier;
    v14->_entityIdentifier = v17;

    objc_storeStrong(&v14->_timestamp, timestamp);
    v19 = [uIDCopy copy];
    triggerNotificationUUID = v14->_triggerNotificationUUID;
    v14->_triggerNotificationUUID = v19;

    v14->_subtype = 7;
    v21 = objc_opt_new();
    subObject = v14->_subObject;
    v14->_subObject = v21;
  }

  return v14;
}

- (id)initTurnOffNotificationsForAppSuggestionWithUUID:(id)d bundleID:(id)iD timestamp:(id)timestamp triggerNotificationUUID:(id)uID
{
  dCopy = d;
  iDCopy = iD;
  timestampCopy = timestamp;
  uIDCopy = uID;
  v26.receiver = self;
  v26.super_class = ATXNotificationDeliverySuggestion;
  v14 = [(ATXNotificationDeliverySuggestion *)&v26 init];
  if (v14)
  {
    v15 = [dCopy copy];
    uuid = v14->_uuid;
    v14->_uuid = v15;

    v14->_scope = 1;
    v17 = [iDCopy copy];
    entityIdentifier = v14->_entityIdentifier;
    v14->_entityIdentifier = v17;

    v19 = [timestampCopy copy];
    timestamp = v14->_timestamp;
    v14->_timestamp = v19;

    v21 = [uIDCopy copy];
    triggerNotificationUUID = v14->_triggerNotificationUUID;
    v14->_triggerNotificationUUID = v21;

    v14->_subtype = 9;
    v23 = objc_opt_new();
    subObject = v14->_subObject;
    v14->_subObject = v23;
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXNotificationDeliverySuggestion *)self isEqualToATXNotificationDeliverySuggestion:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXNotificationDeliverySuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  v5 = self->_uuid;
  v6 = v5;
  if (v5 == suggestionCopy[1])
  {
  }

  else
  {
    v7 = [(NSUUID *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (self->_scope != suggestionCopy[4])
  {
    goto LABEL_21;
  }

  v8 = self->_entityIdentifier;
  v9 = v8;
  if (v8 == suggestionCopy[5])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v11 = self->_timestamp;
  v12 = v11;
  if (v11 == suggestionCopy[2])
  {
  }

  else
  {
    v13 = [(NSDate *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v14 = self->_triggerNotificationUUID;
  v15 = v14;
  if (v14 == suggestionCopy[3])
  {
  }

  else
  {
    v16 = [(NSUUID *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (self->_subtype != suggestionCopy[6])
  {
LABEL_21:
    v19 = 0;
    goto LABEL_22;
  }

  v17 = self->_subObject;
  v18 = v17;
  if (v17 == suggestionCopy[7])
  {
    v19 = 1;
  }

  else
  {
    v19 = [v17 isEqual:?];
  }

LABEL_22:
  return v19;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_uuid hash];
  v4 = self->_scope - v3 + 32 * v3;
  v5 = [(NSString *)self->_entityIdentifier hash]- v4 + 32 * v4;
  v6 = [(NSDate *)self->_timestamp hash]- v5 + 32 * v5;
  v7 = [(NSUUID *)self->_triggerNotificationUUID hash];
  subtype = self->_subtype;
  v9 = subtype - (v7 - v6 + 32 * v6) + 32 * (v7 - v6 + 32 * v6);
  if (subtype == 4)
  {
    v9 = [self->_subObject hash] - v9 + 32 * v9;
    subtype = self->_subtype;
  }

  if (subtype == 5)
  {
    return [self->_subObject hash] - v9 + 32 * v9;
  }

  return v9;
}

- (NSString)description
{
  if ((self->_subtype & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v3 = self->_subObject;
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  uuid = self->_uuid;
  v6 = ATXNotificationSuggestionScopeToString(self->_scope);
  timestamp = self->_timestamp;
  triggerNotificationUUID = self->_triggerNotificationUUID;
  entityIdentifier = self->_entityIdentifier;
  v10 = ATXSuggestionTypeToString(self->_subtype);
  v11 = [v4 initWithFormat:@"UUID: %@ Scope: %@, Entity ID: %@, Timestamp: %@, Trigger UUID: %@, Sub type: %@, Sub object: %@", uuid, v6, entityIdentifier, timestamp, triggerNotificationUUID, v10, v3];

  return v11;
}

- (id)encodeAsProto
{
  proto = [(ATXNotificationDeliverySuggestion *)self proto];
  data = [proto data];

  return data;
}

- (ATXNotificationDeliverySuggestion)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBNotificationDeliverySuggestion alloc] initWithData:dataCopy];

    self = [(ATXNotificationDeliverySuggestion *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXNotificationDeliverySuggestion)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v6 = __atxlog_handle_notification_management(isKindOfClass);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [ATXNotificationDeliverySuggestion initWithProto:?];
      }

      selfCopy = 0;
      goto LABEL_27;
    }

    v6 = protoCopy;
    hasUuid = [v6 hasUuid];
    if (hasUuid)
    {
      hasScope = [v6 hasScope];
      if (hasScope)
      {
        hasEntityIdentifier = [v6 hasEntityIdentifier];
        if (hasEntityIdentifier)
        {
          hasTimestamp = [v6 hasTimestamp];
          if (hasTimestamp)
          {
            hasOneofNotificationDeliverySuggestion = [v6 hasOneofNotificationDeliverySuggestion];
            if (hasOneofNotificationDeliverySuggestion)
            {
              v12 = objc_alloc(MEMORY[0x1E696AFB0]);
              uuid = [v6 uuid];
              v14 = [v12 initWithUUIDString:uuid];

              if (!v14)
              {
                v17 = __atxlog_handle_notification_management(v15);
                if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
                {
                  [ATXNotificationDeliverySuggestion initWithProto:?];
                }

                selfCopy = 0;
                goto LABEL_44;
              }

              v16 = MEMORY[0x1E695DF00];
              [v6 timestamp];
              v17 = [v16 dateWithTimeIntervalSinceReferenceDate:?];
              if ([v6 hasTriggerNotificationUUID])
              {
                v18 = objc_alloc(MEMORY[0x1E696AFB0]);
                triggerNotificationUUID = [v6 triggerNotificationUUID];
                v20 = [v18 initWithUUIDString:triggerNotificationUUID];
              }

              else
              {
                v20 = 0;
              }

              if ([v6 hasSmartPause])
              {
                v23 = [ATXNotificationSmartPauseSuggestion alloc];
                smartPause = [v6 smartPause];
                entityIdentifier3 = [(ATXNotificationSmartPauseSuggestion *)v23 initWithProto:smartPause];

                scope = [v6 scope];
                entityIdentifier = [v6 entityIdentifier];
                v28 = [(ATXNotificationDeliverySuggestion *)self initWithSmartPauseSuggestion:entityIdentifier3 uuid:v14 scope:scope entityIdentifier:entityIdentifier timestamp:v17 triggerNotificationUUID:v20];
                goto LABEL_35;
              }

              if ([v6 hasQuieting])
              {
                scope2 = [v6 scope];
                entityIdentifier2 = [v6 entityIdentifier];
                v31 = [(ATXNotificationDeliverySuggestion *)self initQuietingSuggestionWithUUID:v14 scope:scope2 entityIdentifier:entityIdentifier2 timestamp:v17 triggerNotificationUUID:v20];
              }

              else
              {
                if (![v6 hasPromoting])
                {
                  if (![v6 hasInterruptionManagerTuning])
                  {
                    if ([v6 hasSendToDigest])
                    {
                      entityIdentifier3 = [v6 entityIdentifier];
                      v36 = [(ATXNotificationDeliverySuggestion *)self initSendToDigestSuggestionWithUUID:v14 bundleID:entityIdentifier3 timestamp:v17 triggerNotificationUUID:v20];
                    }

                    else if ([v6 hasUrgencyTuning])
                    {
                      entityIdentifier3 = [v6 entityIdentifier];
                      v36 = [(ATXNotificationDeliverySuggestion *)self initUrgencyTuningSuggestionWithUUID:v14 bundleID:entityIdentifier3 timestamp:v17 triggerNotificationUUID:v20];
                    }

                    else if ([v6 hasSendMessagesToDigest])
                    {
                      entityIdentifier3 = [v6 entityIdentifier];
                      v36 = [(ATXNotificationDeliverySuggestion *)self initSendToMessagesDigestSuggestionWithUUID:v14 bundleID:entityIdentifier3 timestamp:v17 triggerNotificationUUID:v20];
                    }

                    else
                    {
                      hasTurnOffNotificationsForApp = [v6 hasTurnOffNotificationsForApp];
                      if (!hasTurnOffNotificationsForApp)
                      {
                        v38 = __atxlog_handle_notifications(hasTurnOffNotificationsForApp);
                        if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
                        {
                          [ATXNotificationDeliverySuggestion initWithProto:?];
                        }

                        selfCopy = 0;
                        goto LABEL_43;
                      }

                      entityIdentifier3 = [v6 entityIdentifier];
                      v36 = [(ATXNotificationDeliverySuggestion *)self initTurnOffNotificationsForAppSuggestionWithUUID:v14 bundleID:entityIdentifier3 timestamp:v17 triggerNotificationUUID:v20];
                    }

                    self = v36;
                    goto LABEL_36;
                  }

                  v33 = [ATXInterruptionManagerTuningSuggestion alloc];
                  interruptionManagerTuning = [v6 interruptionManagerTuning];
                  entityIdentifier3 = [(ATXInterruptionManagerTuningSuggestion *)v33 initWithProto:interruptionManagerTuning];

                  scope3 = [v6 scope];
                  entityIdentifier = [v6 entityIdentifier];
                  v28 = [(ATXNotificationDeliverySuggestion *)self initWithInterruptionManagerTuningSuggestion:entityIdentifier3 scope:scope3 entityIdentifier:entityIdentifier uuid:v14 timestamp:v17 triggerNotificationUUID:v20];
LABEL_35:
                  self = v28;

LABEL_36:
LABEL_42:
                  selfCopy = self;
LABEL_43:

LABEL_44:
                  goto LABEL_26;
                }

                scope4 = [v6 scope];
                entityIdentifier2 = [v6 entityIdentifier];
                v31 = [(ATXNotificationDeliverySuggestion *)self initPromotingSuggestionWithUUID:v14 scope:scope4 entityIdentifier:entityIdentifier2 timestamp:v17 triggerNotificationUUID:v20];
              }

              self = v31;

              goto LABEL_42;
            }

            v14 = __atxlog_handle_notification_management(hasOneofNotificationDeliverySuggestion);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
            {
              [ATXNotificationDeliverySuggestion initWithProto:?];
            }
          }

          else
          {
            v14 = __atxlog_handle_notification_management(hasTimestamp);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
            {
              [ATXNotificationDeliverySuggestion initWithProto:?];
            }
          }
        }

        else
        {
          v14 = __atxlog_handle_notification_management(hasEntityIdentifier);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
          {
            [ATXNotificationDeliverySuggestion initWithProto:?];
          }
        }
      }

      else
      {
        v14 = __atxlog_handle_notification_management(hasScope);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          [ATXNotificationDeliverySuggestion initWithProto:?];
        }
      }
    }

    else
    {
      v14 = __atxlog_handle_notification_management(hasUuid);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [ATXNotificationDeliverySuggestion initWithProto:?];
      }
    }

    selfCopy = 0;
LABEL_26:

LABEL_27:
    goto LABEL_28;
  }

  selfCopy = 0;
LABEL_28:

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  [v3 setUuid:uUIDString];

  [v3 setScope:LODWORD(self->_scope)];
  [v3 setEntityIdentifier:self->_entityIdentifier];
  [(NSDate *)self->_timestamp timeIntervalSinceReferenceDate];
  [v3 setTimestamp:?];
  triggerNotificationUUID = self->_triggerNotificationUUID;
  if (triggerNotificationUUID)
  {
    uUIDString2 = [(NSUUID *)triggerNotificationUUID UUIDString];
    [v3 setTriggerNotificationUUID:uUIDString2];
  }

  p_subtype = &self->_subtype;
  subtype = self->_subtype;
  if (subtype <= 4)
  {
    if (subtype <= 1)
    {
      if (subtype)
      {
        if (subtype != 1)
        {
LABEL_47:
          v3 = v3;
          v15 = v3;
          goto LABEL_48;
        }

        proto = objc_opt_new();
        [v3 setQuieting:proto];
LABEL_33:

        goto LABEL_47;
      }
    }

    else
    {
      if (subtype == 2)
      {
        proto = objc_opt_new();
        [v3 setPromoting:proto];
        goto LABEL_33;
      }

      if (subtype != 3)
      {
        p_subObject = &self->_subObject;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          proto = [*p_subObject proto];
          [v3 setSmartPause:proto];
          goto LABEL_33;
        }

        v24 = __atxlog_handle_notifications(isKindOfClass);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          [ATXNotificationDeliverySuggestion proto];
        }

        goto LABEL_46;
      }
    }
  }

  else
  {
    if (subtype <= 7)
    {
      if (subtype == 5)
      {
        v20 = &self->_subObject;
        objc_opt_class();
        v21 = objc_opt_isKindOfClass();
        if (v21)
        {
          proto = [*v20 proto];
          [v3 setInterruptionManagerTuning:proto];
          goto LABEL_33;
        }

        v24 = __atxlog_handle_notifications(v21);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          [ATXNotificationDeliverySuggestion proto];
        }

        goto LABEL_46;
      }

      if (subtype != 6)
      {
        v9 = &self->_subObject;
        objc_opt_class();
        v10 = objc_opt_isKindOfClass();
        if (v10)
        {
          proto = [*v9 proto];
          [v3 setUrgencyTuning:proto];
          goto LABEL_33;
        }

        v24 = __atxlog_handle_notifications(v10);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          [ATXNotificationDeliverySuggestion proto];
        }

LABEL_46:

        v3 = 0;
        goto LABEL_47;
      }

      v16 = &self->_subObject;
      objc_opt_class();
      v17 = objc_opt_isKindOfClass();
      if (v17)
      {
        proto = [*v16 proto];
        [v3 setSendToDigest:proto];
        goto LABEL_33;
      }

      v24 = __atxlog_handle_notifications(v17);
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_46;
      }

LABEL_45:
      [ATXNotificationDeliverySuggestion proto];
      goto LABEL_46;
    }

    if (subtype == 8)
    {
      v22 = &self->_subObject;
      objc_opt_class();
      v23 = objc_opt_isKindOfClass();
      if (v23)
      {
        proto = [*v22 proto];
        [v3 setSendMessagesToDigest:proto];
        goto LABEL_33;
      }

      v24 = __atxlog_handle_notifications(v23);
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

    if (subtype == 9)
    {
      v18 = &self->_subObject;
      objc_opt_class();
      v19 = objc_opt_isKindOfClass();
      if (v19)
      {
        proto = [*v18 proto];
        [v3 setTurnOffNotificationsForApp:proto];
        goto LABEL_33;
      }

      v24 = __atxlog_handle_notifications(v19);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        [ATXNotificationDeliverySuggestion proto];
      }

      goto LABEL_46;
    }

    if (subtype != 10)
    {
      goto LABEL_47;
    }
  }

  v14 = __atxlog_handle_notifications(triggerNotificationUUID);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [(ATXNotificationDeliverySuggestion *)p_subtype proto];
  }

  v15 = 0;
LABEL_48:

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXNotificationDeliverySuggestion *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXNotificationDeliverySuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXNotificationDeliverySuggestion *)self initWithProtoData:v5];
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXNotificationDeliverySuggestion allocWithZone:zone];
  v5 = v4;
  p_subtype = &self->_subtype;
  subtype = self->_subtype;
  if (subtype <= 4)
  {
    if (subtype <= 1)
    {
      if (subtype)
      {
        if (subtype != 1)
        {
LABEL_45:
          v5 = v5;
          v12 = v5;
          goto LABEL_46;
        }

        v9 = [(ATXNotificationDeliverySuggestion *)v4 initQuietingSuggestionWithUUID:self->_uuid scope:self->_scope entityIdentifier:self->_entityIdentifier timestamp:self->_timestamp triggerNotificationUUID:self->_triggerNotificationUUID];
LABEL_31:
        v5 = v9;
        goto LABEL_45;
      }
    }

    else
    {
      if (subtype == 2)
      {
        v9 = [(ATXNotificationDeliverySuggestion *)v4 initPromotingSuggestionWithUUID:self->_uuid scope:self->_scope entityIdentifier:self->_entityIdentifier timestamp:self->_timestamp triggerNotificationUUID:self->_triggerNotificationUUID];
        goto LABEL_31;
      }

      if (subtype != 3)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v9 = [v5 initWithSmartPauseSuggestion:self->_subObject uuid:self->_uuid scope:self->_scope entityIdentifier:self->_entityIdentifier timestamp:self->_timestamp triggerNotificationUUID:self->_triggerNotificationUUID];
          goto LABEL_31;
        }

        v17 = __atxlog_handle_notifications(isKindOfClass);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          [ATXNotificationDeliverySuggestion proto];
        }

        goto LABEL_44;
      }
    }
  }

  else
  {
    if (subtype <= 7)
    {
      if (subtype == 5)
      {
        objc_opt_class();
        v15 = objc_opt_isKindOfClass();
        if (v15)
        {
          v9 = [v5 initWithInterruptionManagerTuningSuggestion:self->_subObject scope:self->_scope entityIdentifier:self->_entityIdentifier uuid:self->_uuid timestamp:self->_timestamp triggerNotificationUUID:self->_triggerNotificationUUID];
          goto LABEL_31;
        }

        v17 = __atxlog_handle_notifications(v15);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          [ATXNotificationDeliverySuggestion proto];
        }
      }

      else if (subtype == 6)
      {
        objc_opt_class();
        v13 = objc_opt_isKindOfClass();
        if (v13)
        {
          v9 = [v5 initSendToDigestSuggestionWithUUID:self->_uuid bundleID:self->_entityIdentifier timestamp:self->_timestamp triggerNotificationUUID:self->_triggerNotificationUUID];
          goto LABEL_31;
        }

        v17 = __atxlog_handle_notifications(v13);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          [ATXNotificationDeliverySuggestion proto];
        }
      }

      else
      {
        objc_opt_class();
        v8 = objc_opt_isKindOfClass();
        if (v8)
        {
          v9 = [v5 initUrgencyTuningSuggestionWithUUID:self->_uuid bundleID:self->_entityIdentifier timestamp:self->_timestamp triggerNotificationUUID:self->_triggerNotificationUUID];
          goto LABEL_31;
        }

        v17 = __atxlog_handle_notifications(v8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          [ATXNotificationDeliverySuggestion proto];
        }
      }

LABEL_44:

      v5 = 0;
      goto LABEL_45;
    }

    if (subtype == 8)
    {
      objc_opt_class();
      v16 = objc_opt_isKindOfClass();
      if (v16)
      {
        v9 = [v5 initSendToMessagesDigestSuggestionWithUUID:self->_uuid bundleID:self->_entityIdentifier timestamp:self->_timestamp triggerNotificationUUID:self->_triggerNotificationUUID];
        goto LABEL_31;
      }

      v17 = __atxlog_handle_notifications(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [ATXNotificationDeliverySuggestion copyWithZone:];
      }

      goto LABEL_44;
    }

    if (subtype == 9)
    {
      objc_opt_class();
      v14 = objc_opt_isKindOfClass();
      if (v14)
      {
        v9 = [v5 initTurnOffNotificationsForAppSuggestionWithUUID:self->_uuid bundleID:self->_entityIdentifier timestamp:self->_timestamp triggerNotificationUUID:self->_triggerNotificationUUID];
        goto LABEL_31;
      }

      v17 = __atxlog_handle_notifications(v14);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [ATXNotificationDeliverySuggestion copyWithZone:];
      }

      goto LABEL_44;
    }

    if (subtype != 10)
    {
      goto LABEL_45;
    }
  }

  v11 = __atxlog_handle_notifications(v4);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [(ATXNotificationDeliverySuggestion *)p_subtype proto];
  }

  v12 = 0;
LABEL_46:

  return v12;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (id)jsonRawData
{
  v12[6] = *MEMORY[0x1E69E9840];
  v11[0] = @"uuid";
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  v12[0] = uUIDString;
  v11[1] = @"scope";
  v4 = ATXNotificationSuggestionScopeToString(self->_scope);
  timestamp = self->_timestamp;
  triggerNotificationUUID = self->_triggerNotificationUUID;
  v12[1] = v4;
  v12[2] = timestamp;
  v11[2] = @"timestamp";
  v11[3] = @"triggerNotificationUUID";
  v12[3] = triggerNotificationUUID;
  v11[4] = @"subType";
  v7 = ATXSuggestionTypeToString(self->_subtype);
  v11[5] = @"subObject";
  subObject = self->_subObject;
  v12[4] = v7;
  v12[5] = subObject;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:6];

  return v9;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonRawData = [(ATXNotificationDeliverySuggestion *)self jsonRawData];
  v4 = [v2 dataWithJSONObject:jsonRawData options:1 error:0];

  return v4;
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)initWithProto:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)initWithProto:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)initWithProto:(uint64_t)a1 .cold.4(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)initWithProto:(uint64_t)a1 .cold.5(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)initWithProto:(uint64_t)a1 .cold.6(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)initWithProto:(uint64_t)a1 .cold.7(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)initWithProto:(uint64_t)a1 .cold.8(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)proto
{
  OUTLINED_FUNCTION_4_0();
  v2 = OUTLINED_FUNCTION_2_12(v1);
  ATXSuggestionTypeToString(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_5_10();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)copyWithZone:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  v2 = OUTLINED_FUNCTION_2_12(v1);
  ATXSuggestionTypeToString(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_5_10();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)copyWithZone:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  v2 = OUTLINED_FUNCTION_2_12(v1);
  ATXSuggestionTypeToString(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = OUTLINED_FUNCTION_5_10();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(v5, v6, v7, v8, v9, 0x16u);
}

@end