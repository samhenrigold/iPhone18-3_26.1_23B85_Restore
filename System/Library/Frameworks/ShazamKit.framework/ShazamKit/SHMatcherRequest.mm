@interface SHMatcherRequest
+ (id)requestOnceWithAppIntentForRequestID:(id)d;
+ (id)requestOnceWithNotifications:(BOOL)notifications;
+ (id)requestOnceWithNotifications:(BOOL)notifications forRequestID:(id)d;
+ (id)requestSignatureGenerationOnce;
+ (id)requestSignatureGenerationOnceForRequestID:(id)d;
+ (id)requestSignatureGenerationUntilDeadline:(id)deadline;
+ (id)requestSignatureGenerationUntilDeadline:(id)deadline forRequestID:(id)d;
+ (id)requestToMatchSignature:(id)signature installationID:(id)d sendNotifications:(BOOL)notifications;
+ (id)requestToMatchSignature:(id)signature installationID:(id)d sendNotifications:(BOOL)notifications forRequestID:(id)iD;
+ (id)requestToMatchUntilDeadline:(id)deadline sendNotifications:(BOOL)notifications;
+ (id)requestToMatchUntilDeadline:(id)deadline sendNotifications:(BOOL)notifications forRequestID:(id)d;
+ (id)requestUntilMatchWithNotifications:(BOOL)notifications;
+ (id)requestUntilMatchWithNotifications:(BOOL)notifications forRequestID:(id)d;
- (BOOL)hasHitDeadline;
- (NSString)installationID;
- (SHMatcherRequest)initWithCoder:(id)coder;
- (SHMatcherRequest)initWithSignature:(id)signature deadline:(id)deadline installationID:(id)d sendNotifications:(BOOL)notifications stopCondition:(int64_t)condition requestType:(int64_t)type requestID:(id)iD;
- (SHMatcherRequest)initWithSignature:(id)signature deadline:(id)deadline sendNotifications:(BOOL)notifications stopCondition:(int64_t)condition requestType:(int64_t)type requestID:(id)d;
- (double)watchdogTimeout;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SHMatcherRequest

+ (id)requestSignatureGenerationOnce
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  v4 = [self requestSignatureGenerationOnceForRequestID:uUID];

  return v4;
}

+ (id)requestSignatureGenerationOnceForRequestID:(id)d
{
  dCopy = d;
  v4 = [[SHMatcherRequest alloc] initWithSignature:0 deadline:0 sendNotifications:0 stopCondition:0 requestType:1 requestID:dCopy];

  return v4;
}

+ (id)requestSignatureGenerationUntilDeadline:(id)deadline
{
  v4 = MEMORY[0x277CCAD78];
  deadlineCopy = deadline;
  uUID = [v4 UUID];
  v7 = [self requestSignatureGenerationUntilDeadline:deadlineCopy forRequestID:uUID];

  return v7;
}

+ (id)requestSignatureGenerationUntilDeadline:(id)deadline forRequestID:(id)d
{
  dCopy = d;
  deadlineCopy = deadline;
  v7 = [[SHMatcherRequest alloc] initWithSignature:0 deadline:deadlineCopy sendNotifications:0 stopCondition:3 requestType:1 requestID:dCopy];

  return v7;
}

+ (id)requestToMatchSignature:(id)signature installationID:(id)d sendNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  v8 = MEMORY[0x277CCAD78];
  dCopy = d;
  signatureCopy = signature;
  uUID = [v8 UUID];
  v12 = [self requestToMatchSignature:signatureCopy installationID:dCopy sendNotifications:notificationsCopy forRequestID:uUID];

  return v12;
}

+ (id)requestToMatchSignature:(id)signature installationID:(id)d sendNotifications:(BOOL)notifications forRequestID:(id)iD
{
  notificationsCopy = notifications;
  iDCopy = iD;
  dCopy = d;
  signatureCopy = signature;
  v12 = [[SHMatcherRequest alloc] initWithSignature:signatureCopy deadline:0 installationID:dCopy sendNotifications:notificationsCopy stopCondition:1 requestType:0 requestID:iDCopy];

  return v12;
}

+ (id)requestToMatchUntilDeadline:(id)deadline sendNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  v6 = MEMORY[0x277CCAD78];
  deadlineCopy = deadline;
  uUID = [v6 UUID];
  v9 = [self requestToMatchUntilDeadline:deadlineCopy sendNotifications:notificationsCopy forRequestID:uUID];

  return v9;
}

+ (id)requestToMatchUntilDeadline:(id)deadline sendNotifications:(BOOL)notifications forRequestID:(id)d
{
  notificationsCopy = notifications;
  dCopy = d;
  deadlineCopy = deadline;
  v9 = [[SHMatcherRequest alloc] initWithSignature:0 deadline:deadlineCopy sendNotifications:notificationsCopy stopCondition:3 requestType:2 requestID:dCopy];

  return v9;
}

+ (id)requestOnceWithNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  uUID = [MEMORY[0x277CCAD78] UUID];
  v6 = [self requestOnceWithNotifications:notificationsCopy forRequestID:uUID];

  return v6;
}

+ (id)requestOnceWithNotifications:(BOOL)notifications forRequestID:(id)d
{
  notificationsCopy = notifications;
  dCopy = d;
  v6 = [[SHMatcherRequest alloc] initWithSignature:0 deadline:0 sendNotifications:notificationsCopy stopCondition:0 requestType:2 requestID:dCopy];

  return v6;
}

+ (id)requestUntilMatchWithNotifications:(BOOL)notifications forRequestID:(id)d
{
  notificationsCopy = notifications;
  dCopy = d;
  v6 = [[SHMatcherRequest alloc] initWithSignature:0 deadline:0 sendNotifications:notificationsCopy stopCondition:2 requestType:2 requestID:dCopy];

  return v6;
}

+ (id)requestUntilMatchWithNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  uUID = [MEMORY[0x277CCAD78] UUID];
  v6 = [self requestUntilMatchWithNotifications:notificationsCopy forRequestID:uUID];

  return v6;
}

+ (id)requestOnceWithAppIntentForRequestID:(id)d
{
  dCopy = d;
  v4 = [[SHMatcherRequest alloc] initWithSignature:0 deadline:0 sendNotifications:0 stopCondition:2 requestType:3 requestID:dCopy];

  return v4;
}

- (SHMatcherRequest)initWithSignature:(id)signature deadline:(id)deadline sendNotifications:(BOOL)notifications stopCondition:(int64_t)condition requestType:(int64_t)type requestID:(id)d
{
  signatureCopy = signature;
  deadlineCopy = deadline;
  dCopy = d;
  v21.receiver = self;
  v21.super_class = SHMatcherRequest;
  v18 = [(SHMatcherRequest *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_signature, signature);
    objc_storeStrong(&v19->_deadline, deadline);
    v19->_sendNotifications = notifications;
    v19->_stopCondition = condition;
    v19->_type = type;
    objc_storeStrong(&v19->_requestID, d);
  }

  return v19;
}

- (SHMatcherRequest)initWithSignature:(id)signature deadline:(id)deadline installationID:(id)d sendNotifications:(BOOL)notifications stopCondition:(int64_t)condition requestType:(int64_t)type requestID:(id)iD
{
  notificationsCopy = notifications;
  dCopy = d;
  v17 = [(SHMatcherRequest *)self initWithSignature:signature deadline:deadline sendNotifications:notificationsCopy stopCondition:condition requestType:type requestID:iD];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_installationID, d);
  }

  return v18;
}

- (SHMatcherRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = SHMatcherRequest;
  v5 = [(SHMatcherRequest *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    signature = v5->_signature;
    v5->_signature = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deadline"];
    deadline = v5->_deadline;
    v5->_deadline = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installationID"];
    installationID = v5->_installationID;
    v5->_installationID = v10;

    v5->_sendNotifications = [coderCopy decodeBoolForKey:@"sendNotifications"];
    v5->_stopCondition = [coderCopy decodeIntegerForKey:@"stopCondition"];
    v5->_type = [coderCopy decodeIntegerForKey:@"requestType"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestID"];
    requestID = v5->_requestID;
    v5->_requestID = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  requestID = self->_requestID;
  coderCopy = coder;
  [coderCopy encodeObject:requestID forKey:@"requestID"];
  [coderCopy encodeObject:self->_signature forKey:@"signature"];
  [coderCopy encodeObject:self->_deadline forKey:@"deadline"];
  [coderCopy encodeObject:self->_installationID forKey:@"installationID"];
  [coderCopy encodeBool:self->_sendNotifications forKey:@"sendNotifications"];
  [coderCopy encodeInteger:self->_stopCondition forKey:@"stopCondition"];
  [coderCopy encodeInteger:self->_type forKey:@"requestType"];
}

- (NSString)installationID
{
  installationID = self->_installationID;
  if (installationID)
  {
    v3 = installationID;
  }

  else
  {
    v3 = [SHRotatingInstallationID cachedInstallationForDays:31];
  }

  return v3;
}

- (BOOL)hasHitDeadline
{
  deadline = [(SHMatcherRequest *)self deadline];

  if (!deadline)
  {
    return 0;
  }

  date = [MEMORY[0x277CBEAA8] date];
  deadline2 = [(SHMatcherRequest *)self deadline];
  v6 = [date laterDate:deadline2];
  v7 = v6 == date;

  return v7;
}

- (double)watchdogTimeout
{
  deadline = [(SHMatcherRequest *)self deadline];
  if (deadline)
  {
    deadline2 = [(SHMatcherRequest *)self deadline];
    [deadline2 timeIntervalSinceNow];
    v6 = v5;
  }

  else
  {
    v6 = 45.0;
  }

  return v6;
}

@end