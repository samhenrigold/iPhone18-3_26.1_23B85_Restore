@interface ATXDigestOnboardingAppSelectionLoggingEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (ATXDigestOnboardingAppSelectionLoggingEvent)initWithProto:(id)proto;
- (ATXDigestOnboardingAppSelectionLoggingEvent)initWithProtoData:(id)data;
- (ATXDigestOnboardingAppSelectionLoggingEvent)initWithSessionUUID:(id)d bundleId:(id)id avgNumBasicNotifications:(unint64_t)notifications avgNumMessageNotifications:(unint64_t)messageNotifications avgNumTimeSensitiveNonMessageNotifications:(unint64_t)nonMessageNotifications rank:(unint64_t)rank addedToDigest:(BOOL)digest wasShownInDigestOnboarding:(BOOL)self0;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation ATXDigestOnboardingAppSelectionLoggingEvent

- (ATXDigestOnboardingAppSelectionLoggingEvent)initWithSessionUUID:(id)d bundleId:(id)id avgNumBasicNotifications:(unint64_t)notifications avgNumMessageNotifications:(unint64_t)messageNotifications avgNumTimeSensitiveNonMessageNotifications:(unint64_t)nonMessageNotifications rank:(unint64_t)rank addedToDigest:(BOOL)digest wasShownInDigestOnboarding:(BOOL)self0
{
  dCopy = d;
  idCopy = id;
  v22.receiver = self;
  v22.super_class = ATXDigestOnboardingAppSelectionLoggingEvent;
  v19 = [(ATXDigestOnboardingAppSelectionLoggingEvent *)&v22 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_sessionUUID, d);
    objc_storeStrong(&v20->_bundleId, id);
    v20->_avgNumBasicNotifications = notifications;
    v20->_avgNumMessageNotfications = messageNotifications;
    v20->_avgNumTimeSensitiveNonMessageNotifications = nonMessageNotifications;
    v20->_rank = rank;
    v20->_addedToDigest = digest;
    v20->_wasShownInDigestOnboarding = onboarding;
  }

  return v20;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (ATXDigestOnboardingAppSelectionLoggingEvent)initWithProtoData:(id)data
{
  dataCopy = data;
  v5 = [[ATXPBDigestOnboardingAppSelectionLoggingEvent alloc] initWithData:dataCopy];

  v6 = [(ATXDigestOnboardingAppSelectionLoggingEvent *)self initWithProto:v5];
  return v6;
}

- (id)encodeAsProto
{
  proto = [(ATXDigestOnboardingAppSelectionLoggingEvent *)self proto];
  data = [proto data];

  return data;
}

- (ATXDigestOnboardingAppSelectionLoggingEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_7:
    selfCopy = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v17 = __atxlog_handle_notification_management(isKindOfClass);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [(ATXDigestTimeline *)self initWithProto:v17];
    }

    goto LABEL_7;
  }

  v6 = MEMORY[0x1E696AFB0];
  v7 = protoCopy;
  v8 = [v6 alloc];
  sessionUUID = [v7 sessionUUID];
  v20 = [v8 initWithUUIDString:sessionUUID];

  bundleId = [v7 bundleId];
  avgNumBasicNotifications = [v7 avgNumBasicNotifications];
  avgNumMessageNotifications = [v7 avgNumMessageNotifications];
  avgNumTimeSensitiveNonMessageNotifications = [v7 avgNumTimeSensitiveNonMessageNotifications];
  rank = [v7 rank];
  addedToDigest = [v7 addedToDigest];
  LOBYTE(v8) = [v7 wasShownInDigestOnboarding];

  BYTE1(v19) = v8;
  LOBYTE(v19) = addedToDigest;
  self = [(ATXDigestOnboardingAppSelectionLoggingEvent *)self initWithSessionUUID:v20 bundleId:bundleId avgNumBasicNotifications:avgNumBasicNotifications avgNumMessageNotifications:avgNumMessageNotifications avgNumTimeSensitiveNonMessageNotifications:avgNumTimeSensitiveNonMessageNotifications rank:rank addedToDigest:v19 wasShownInDigestOnboarding:?];

  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  uUIDString = [(NSUUID *)self->_sessionUUID UUIDString];
  [v3 setSessionUUID:uUIDString];

  [v3 setBundleId:self->_bundleId];
  [v3 setAvgNumBasicNotifications:LODWORD(self->_avgNumBasicNotifications)];
  [v3 setAvgNumMessageNotifications:LODWORD(self->_avgNumMessageNotfications)];
  [v3 setAvgNumTimeSensitiveNonMessageNotifications:LODWORD(self->_avgNumTimeSensitiveNonMessageNotifications)];
  [v3 setRank:LODWORD(self->_rank)];
  [v3 setAddedToDigest:self->_addedToDigest];
  [v3 setWasShownInDigestOnboarding:self->_wasShownInDigestOnboarding];

  return v3;
}

@end