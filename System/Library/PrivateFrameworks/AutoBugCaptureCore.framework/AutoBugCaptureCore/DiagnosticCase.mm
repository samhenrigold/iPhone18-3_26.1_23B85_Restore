@interface DiagnosticCase
+ (id)_arrayObjectRepresentationOfJSONString:(id)string;
+ (id)_caseDampeningTypeString:(signed __int16)string;
+ (id)_closureTypeString:(signed __int16)string;
+ (id)_stringRepresentationOfJSONObject:(id)object prettyPrint:(BOOL)print;
+ (id)attachmentsFromStringRepresentation:(id)representation;
+ (id)descriptionForClosureType:(signed __int16)type;
+ (id)descriptionForDampeningType:(signed __int16)type;
+ (id)generateCaseSummaryDictionaryFromCaseStorage:(id)storage;
+ (id)generateCaseSummaryFromCaseStorageDictionary:(id)dictionary;
+ (id)signatureForCaseStorage:(id)storage;
+ (id)signatureForCaseStorageDictionary:(id)dictionary;
+ (id)stringRepresentationOfAttachments:(id)attachments;
- (BOOL)_parseCaseStorageIntoSignature:(id)signature;
- (BOOL)_parseSignatureIntoCaseStorage:(id)storage;
- (BOOL)isRemoteTrigger;
- (BOOL)sendReports;
- (DiagnosticCase)initWithCaseId:(id)id manager:(id)manager;
- (DiagnosticCase)initWithCaseStorage:(id)storage manager:(id)manager;
- (DiagnosticCase)initWithCoder:(id)coder;
- (DiagnosticCase)initWithSignature:(id)signature flags:(unint64_t)flags events:(id)events payload:(id)payload actions:(id)actions manager:(id)manager;
- (NSString)basebandChipset;
- (NSString)basebandFirmwareVersion;
- (NSString)buildVariant;
- (NSString)buildVersion;
- (NSString)homeCarrier;
- (NSString)regulatoryDomainCountry;
- (double)caseClosedTime;
- (double)caseOpenedTime;
- (id)_caseSummaryFileName;
- (id)_generateCaseSummaryDictionary;
- (id)_updatedPayloadPathForOriginalPath:(id)path sandboxExtensionToken:(id)token;
- (id)addSizeInfoForAttachment:(id)attachment;
- (id)caseClosureTypeString;
- (id)caseDampeningTypeString;
- (id)caseStateString:(signed __int16)string;
- (id)deParametersFromPayloads;
- (id)description;
- (id)dictionaryRepresentation;
- (id)eventsFromStringRepresentation;
- (id)payloadsFromStringRepresentation;
- (id)stringRepresentationOfAttachmentsWithSize;
- (id)stringRepresentationOfEvents;
- (id)stringRepresentationOfPayloads;
- (signed)caseState;
- (signed)caseStateFromString:(id)string;
- (signed)closureType;
- (signed)dampeningType;
- (signed)dpSubmissionState;
- (void)_addToAttachments:(id)attachments;
- (void)_updatePayloadDictionaryArray:(BOOL)array;
- (void)addEvent:(id)event forced:(BOOL)forced;
- (void)addEvents:(id)events forced:(BOOL)forced;
- (void)addGroupIdentifierToSignature;
- (void)addPayload:(id)payload;
- (void)addRequiredAction:(id)action option:(id)option attachmentType:(id)type pattern:(id)pattern;
- (void)addRequiredAttachmentType:(id)type pattern:(id)pattern;
- (void)collectLogs;
- (void)dealloc;
- (void)deserializeDiagnosticCaseStorageAttachments;
- (void)deserializeDiagnosticCaseStorageEvents;
- (void)deserializeDiagnosticCaseStoragePayloads;
- (void)finishCase;
- (void)finishedCollectingLogs;
- (void)fixupCaseSummaryFile:(id)file;
- (void)markAttachmentsAsPurgeable:(BOOL)purgeable urgency:(unint64_t)urgency;
- (void)noteCaseClosedTime;
- (void)noteCaseClosedTime:(double)time;
- (void)noteCaseOpenedTime:(double)time;
- (void)prepareAttachmentsForReporting;
- (void)prepareForSaving;
- (void)recordDiagnosticCaseSummary;
- (void)removeRequiredAttachmentType:(id)type pattern:(id)pattern;
- (void)reportGeneratorEnded:(id)ended reportInfo:(id)info error:(id)error isFinalReportGenerator:(BOOL)generator;
- (void)serializeAttachmentsToDiagnosticCaseStorage;
- (void)serializeEventsToDiagnosticCaseStorage;
- (void)serializePayloadsToDiagnosticCaseStorage;
- (void)setCaseState:(signed __int16)state;
- (void)setClosureType:(signed __int16)type;
- (void)setDPSubmissionState:(signed __int16)state;
- (void)setDampeningType:(signed __int16)type;
- (void)startCollectingAllReports;
- (void)startCollectingDiagnosticExtensions:(id)extensions;
- (void)summarizeCaseReport;
- (void)validateAttachments;
@end

@implementation DiagnosticCase

- (void)prepareForSaving
{
  manager = [(DiagnosticCase *)self manager];
  configManager = [manager configManager];
  autoBugCaptureRegularPayloads = [configManager autoBugCaptureRegularPayloads];

  if (autoBugCaptureRegularPayloads)
  {
    [(DiagnosticCase *)self serializePayloadsToDiagnosticCaseStorage];
  }

  [(DiagnosticCase *)self serializeAttachmentsToDiagnosticCaseStorage];

  [(DiagnosticCase *)self serializeEventsToDiagnosticCaseStorage];
}

- (void)serializePayloadsToDiagnosticCaseStorage
{
  if (self->payloadsDirty)
  {
    stringRepresentationOfPayloads = [(DiagnosticCase *)self stringRepresentationOfPayloads];
    caseStorage = [(DiagnosticCase *)self caseStorage];
    [caseStorage setCasePayloads:stringRepresentationOfPayloads];

    self->payloadsDirty = 0;
  }
}

- (void)serializeAttachmentsToDiagnosticCaseStorage
{
  if (self->attachmentsDirty)
  {
    attachments = [(DiagnosticCase *)self attachments];
    v4 = [DiagnosticCase stringRepresentationOfAttachments:attachments];
    caseStorage = [(DiagnosticCase *)self caseStorage];
    [caseStorage setCaseAttachments:v4];

    [(DiagnosticCase *)self markAttachmentsAsPurgeable:1 urgency:1024];
    self->attachmentsDirty = 0;
  }
}

- (void)serializeEventsToDiagnosticCaseStorage
{
  if (self->eventsDirty)
  {
    stringRepresentationOfEvents = [(DiagnosticCase *)self stringRepresentationOfEvents];
    caseStorage = [(DiagnosticCase *)self caseStorage];
    [caseStorage setCaseEvents:stringRepresentationOfEvents];

    self->eventsDirty = 0;
  }
}

- (signed)caseState
{
  caseStorage = [(DiagnosticCase *)self caseStorage];
  caseState = [caseStorage caseState];

  if ((caseState - 1) >= 6)
  {
    return 0;
  }

  else
  {
    return caseState;
  }
}

- (DiagnosticCase)initWithSignature:(id)signature flags:(unint64_t)flags events:(id)events payload:(id)payload actions:(id)actions manager:(id)manager
{
  v62 = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  eventsCopy = events;
  payloadCopy = payload;
  actionsCopy = actions;
  managerCopy = manager;
  v57.receiver = self;
  v57.super_class = DiagnosticCase;
  v20 = [(DiagnosticCase *)&v57 init];
  if (v20)
  {
    if (signatureCopy)
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      caseId = v20->_caseId;
      v20->_caseId = uUID;

      v23 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:signatureCopy];
      signature = v20->_signature;
      v20->_signature = v23;

      v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
      caseReports = v20->_caseReports;
      v20->_caseReports = v25;

      v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
      caseOutlets = v20->_caseOutlets;
      v20->_caseOutlets = v27;

      v20->_caseFlags = flags;
      v20->_allowIPSFileOutput = 1;
      [(DiagnosticCase *)v20 setManager:managerCopy];
      v29 = [managerCopy caseStorageForCaseID:v20->_caseId];
      caseStorage = v20->_caseStorage;
      v20->_caseStorage = v29;

      v31 = v20->_caseStorage;
      if (v31)
      {
        [(DiagnosticCaseStorage *)v31 setCaseObjectVersion:@"1"];
        [(DiagnosticCase *)v20 _parseSignatureIntoCaseStorage:signatureCopy];
        date = [MEMORY[0x277CBEAA8] date];
        [(DiagnosticCaseStorage *)v20->_caseStorage setTimeStamp:date];

        [(DiagnosticCaseStorage *)v20->_caseStorage setCaseClosedTime:0];
        [(DiagnosticCaseStorage *)v20->_caseStorage setCaseState:0];
        v33 = +[SystemProperties sharedInstance];
        buildVariant = [v33 buildVariant];
        [(DiagnosticCaseStorage *)v20->_caseStorage setBuildVariant:buildVariant];

        buildVersion = [v33 buildVersion];
        [(DiagnosticCaseStorage *)v20->_caseStorage setBuildVersion:buildVersion];

        basebandChipset = [v33 basebandChipset];
        [(DiagnosticCaseStorage *)v20->_caseStorage setBasebandChipset:basebandChipset];

        basebandFirmwareVersion = [v33 basebandFirmwareVersion];
        [(DiagnosticCaseStorage *)v20->_caseStorage setBasebandFirmwareVersion:basebandFirmwareVersion];

        currentHandler = +[WirelessTechnologyProfile sharedInstance];
        regulatoryDomainCountry = [currentHandler regulatoryDomainCountry];
        [(DiagnosticCaseStorage *)v20->_caseStorage setRegulatoryDomainCountry:regulatoryDomainCountry];

        homeCarrier = [currentHandler homeCarrier];
        [(DiagnosticCaseStorage *)v20->_caseStorage setHomeCarrier:homeCarrier];

        if ((flags & 4) != 0)
        {
          [(DiagnosticCase *)v20 addGroupIdentifierToSignature];
        }

        [(DiagnosticCaseStorage *)v20->_caseStorage setRemoteTrigger:(flags >> 1) & 1];
        *&v20->eventsDirty = 0;
        v20->attachmentsDirty = 0;
        v41 = [eventsCopy count];
        if (v41)
        {
          v42 = diagcaseLogHandle(v41);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            uUIDString = [(NSUUID *)v20->_caseId UUIDString];
            *buf = 138543618;
            v59 = uUIDString;
            v60 = 2112;
            v61 = eventsCopy;
            _os_log_impl(&dword_241804000, v42, OS_LOG_TYPE_DEBUG, "Initializing session: %{public}@ with events:%@", buf, 0x16u);
          }

          v44 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:eventsCopy];
          events = v20->_events;
          v20->_events = v44;

          v20->eventsDirty = 1;
        }

        v46 = [payloadCopy count];
        if (v46)
        {
          v47 = diagcaseLogHandle(v46);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            uUIDString2 = [(NSUUID *)v20->_caseId UUIDString];
            *buf = 138543618;
            v59 = uUIDString2;
            v60 = 2112;
            v61 = payloadCopy;
            _os_log_impl(&dword_241804000, v47, OS_LOG_TYPE_DEBUG, "Initializing session: %{public}@ with payload:%@", buf, 0x16u);
          }

          v49 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{payloadCopy, 0}];
          payloads = v20->_payloads;
          v20->_payloads = v49;

          v20->payloadsDirty = 1;
        }

        v51 = [actionsCopy count];
        if (v51)
        {
          v52 = diagcaseLogHandle(v51);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            uUIDString3 = [(NSUUID *)v20->_caseId UUIDString];
            *buf = 138543618;
            v59 = uUIDString3;
            v60 = 2112;
            v61 = payloadCopy;
            _os_log_impl(&dword_241804000, v52, OS_LOG_TYPE_DEBUG, "Initializing session: %{public}@ with actions:%@", buf, 0x16u);
          }

          v54 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:actionsCopy];
          actions = v20->_actions;
          v20->_actions = v54;
        }

        goto LABEL_22;
      }

      currentHandler = diagcaseLogHandle(0);
      if (os_log_type_enabled(currentHandler, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, currentHandler, OS_LOG_TYPE_ERROR, "failed to retrieve caseStorage", buf, 2u);
      }
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v20 file:@"DiagnosticCase.m" lineNumber:167 description:@"DiagnosticCase must be initialized with a signature."];
    }

    v33 = v20;
    v20 = 0;
LABEL_22:
  }

  return v20;
}

- (DiagnosticCase)initWithCaseStorage:(id)storage manager:(id)manager
{
  storageCopy = storage;
  managerCopy = manager;
  v10 = managerCopy;
  if (!storageCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v30 = currentHandler;
    v31 = @"initWithCaseStorage requires a caseStorage.";
    v32 = a2;
    selfCopy2 = self;
    v34 = 178;
LABEL_12:
    [currentHandler handleFailureInMethod:v32 object:selfCopy2 file:@"DiagnosticCase.m" lineNumber:v34 description:v31];

    v12 = 0;
    goto LABEL_13;
  }

  if (!managerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v30 = currentHandler;
    v31 = @"initWithCaseStorage requires a manager.";
    v32 = a2;
    selfCopy2 = self;
    v34 = 181;
    goto LABEL_12;
  }

  v36.receiver = self;
  v36.super_class = DiagnosticCase;
  v11 = [(DiagnosticCase *)&v36 init];
  v12 = v11;
  if (v11)
  {
    [(DiagnosticCase *)v11 setManager:v10];
    objc_storeStrong(&v12->_caseStorage, storage);
    v13 = objc_alloc(MEMORY[0x277CCAD78]);
    caseID = [storageCopy caseID];
    v15 = [v13 initWithUUIDString:caseID];
    caseId = v12->_caseId;
    v12->_caseId = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    signature = v12->_signature;
    v12->_signature = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    caseReports = v12->_caseReports;
    v12->_caseReports = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    caseOutlets = v12->_caseOutlets;
    v12->_caseOutlets = v21;

    [(DiagnosticCase *)v12 _parseCaseStorageIntoSignature:v12->_signature];
    *&v12->eventsDirty = 0;
    v12->attachmentsDirty = 0;
    caseStorage = [(DiagnosticCase *)v12 caseStorage];
    caseEvents = [caseStorage caseEvents];

    if (caseEvents)
    {
      [(DiagnosticCase *)v12 deserializeDiagnosticCaseStorageEvents];
    }

    caseStorage2 = [(DiagnosticCase *)v12 caseStorage];
    casePayloads = [caseStorage2 casePayloads];

    if (casePayloads)
    {
      [(DiagnosticCase *)v12 deserializeDiagnosticCaseStoragePayloads];
    }

    caseStorage3 = [(DiagnosticCase *)v12 caseStorage];
    caseAttachments = [caseStorage3 caseAttachments];

    if (caseAttachments)
    {
      [(DiagnosticCase *)v12 deserializeDiagnosticCaseStorageAttachments];
    }
  }

LABEL_13:

  return v12;
}

- (DiagnosticCase)initWithCaseId:(id)id manager:(id)manager
{
  v40 = *MEMORY[0x277D85DE8];
  idCopy = id;
  managerCopy = manager;
  v10 = managerCopy;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v29 = currentHandler;
    v30 = @"initWithCaseId requires a case identifier.";
    v31 = a2;
    selfCopy2 = self;
    v33 = 219;
LABEL_13:
    [currentHandler handleFailureInMethod:v31 object:selfCopy2 file:@"DiagnosticCase.m" lineNumber:v33 description:v30];

LABEL_14:
    self = 0;
    goto LABEL_15;
  }

  if (!managerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v29 = currentHandler;
    v30 = @"initWithCaseId requires a manager.";
    v31 = a2;
    selfCopy2 = self;
    v33 = 222;
    goto LABEL_13;
  }

  v37.receiver = self;
  v37.super_class = DiagnosticCase;
  v11 = [(DiagnosticCase *)&v37 init];
  self = v11;
  if (!v11)
  {
    goto LABEL_15;
  }

  [(DiagnosticCase *)v11 setManager:v10];
  objc_storeStrong(&self->_caseId, id);
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  signature = self->_signature;
  self->_signature = v12;

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  caseReports = self->_caseReports;
  self->_caseReports = v14;

  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  caseOutlets = self->_caseOutlets;
  self->_caseOutlets = v16;

  manager = [(DiagnosticCase *)self manager];
  v19 = [manager lookUpDiagnosticCaseStorageForUUID:self->_caseId];
  caseStorage = self->_caseStorage;
  self->_caseStorage = v19;

  if (!self->_caseStorage)
  {
    v35 = diagcaseLogHandle(v21);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      uUIDString = [(NSUUID *)self->_caseId UUIDString];
      *buf = 138543362;
      v39 = uUIDString;
      _os_log_impl(&dword_241804000, v35, OS_LOG_TYPE_ERROR, "Failed to retrieve caseStorage for case %{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  [(DiagnosticCase *)self _parseCaseStorageIntoSignature:self->_signature];
  *&self->eventsDirty = 0;
  self->attachmentsDirty = 0;
  caseStorage = [(DiagnosticCase *)self caseStorage];
  caseEvents = [caseStorage caseEvents];

  if (caseEvents)
  {
    [(DiagnosticCase *)self deserializeDiagnosticCaseStorageEvents];
  }

  caseStorage2 = [(DiagnosticCase *)self caseStorage];
  casePayloads = [caseStorage2 casePayloads];

  if (casePayloads)
  {
    [(DiagnosticCase *)self deserializeDiagnosticCaseStoragePayloads];
  }

  caseStorage3 = [(DiagnosticCase *)self caseStorage];
  caseAttachments = [caseStorage3 caseAttachments];

  if (caseAttachments)
  {
    [(DiagnosticCase *)self deserializeDiagnosticCaseStorageAttachments];
  }

LABEL_15:

  return self;
}

- (DiagnosticCase)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = DiagnosticCase;
  return [(DiagnosticCase *)&v4 init];
}

- (void)dealloc
{
  [(DiagnosticCase *)self setManager:0];
  caseStorage = self->_caseStorage;
  self->_caseStorage = 0;

  v4.receiver = self;
  v4.super_class = DiagnosticCase;
  [(DiagnosticCase *)&v4 dealloc];
}

- (id)description
{
  v14 = objc_alloc(MEMORY[0x277CCACA8]);
  caseId = [(DiagnosticCase *)self caseId];
  uUIDString = [caseId UUIDString];
  v3 = [(NSMutableDictionary *)self->_signature objectForKeyedSubscript:@"domain"];
  v4 = [(NSMutableDictionary *)self->_signature objectForKeyedSubscript:@"type"];
  v5 = [(NSMutableDictionary *)self->_signature objectForKeyedSubscript:@"subtype"];
  v6 = [(NSMutableDictionary *)self->_signature objectForKeyedSubscript:@"additional"];
  caseStorage = [(DiagnosticCase *)self caseStorage];
  v8 = -[DiagnosticCase caseStateString:](self, "caseStateString:", [caseStorage caseState]);
  caseStorage2 = [(DiagnosticCase *)self caseStorage];
  timeStamp = [caseStorage2 timeStamp];
  caseStorage3 = [(DiagnosticCase *)self caseStorage];
  v12 = +[DiagnosticCase _closureTypeString:](DiagnosticCase, "_closureTypeString:", [caseStorage3 caseClosureType]);
  v15 = [v14 initWithFormat:@"Diagnostic case - ID:%@ Domain:%@ Type:%@, SubType:%@, STContext:%@, state:%@ opened time:%@ (closure:%@)", uUIDString, v3, v4, v5, v6, v8, timeStamp, v12];

  return v15;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  _generateCaseSummaryDictionary = [(DiagnosticCase *)self _generateCaseSummaryDictionary];
  v5 = [v3 initWithDictionary:_generateCaseSummaryDictionary copyItems:1];

  return v5;
}

- (void)setCaseState:(signed __int16)state
{
  stateCopy = state;
  v22 = *MEMORY[0x277D85DE8];
  caseStorage = [(DiagnosticCase *)self caseStorage];
  caseState = [caseStorage caseState];

  if (caseState != stateCopy)
  {
    caseStorage2 = [(DiagnosticCase *)self caseStorage];
    caseState2 = [caseStorage2 caseState];

    if (caseState2 <= stateCopy)
    {
      caseStorage3 = [(DiagnosticCase *)self caseStorage];
      [caseStorage3 setCaseState:stateCopy];

      caseStorage4 = [(DiagnosticCase *)self caseStorage];
      caseState3 = [caseStorage4 caseState];

      if (caseState3 <= 3u)
      {
        if (caseState3 == 1)
        {

          [(DiagnosticCase *)self prepareCase];
        }

        else if (caseState3 == 3)
        {

          [(DiagnosticCase *)self finishCase];
        }
      }

      else
      {
        switch(caseState3)
        {
          case 4u:

            [(DiagnosticCase *)self collectLogs];
            break;
          case 5u:
            [(DiagnosticCase *)self noteCaseClosedTime];
            [(DiagnosticCase *)self prepareAttachmentsForReporting];
            [(DiagnosticCase *)self validateAttachments];
            [(DiagnosticCase *)self summarizeCaseReport];
            [(DiagnosticCase *)self recordDiagnosticCaseSummary];

            [(DiagnosticCase *)self sendReports];
            break;
          case 6u:
            [(DiagnosticCase *)self noteCaseClosedTime];
            manager = [(DiagnosticCase *)self manager];
            [manager closeCase:self];

            break;
        }
      }
    }

    else
    {
      v10 = diagcaseLogHandle(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        caseStorage5 = [(DiagnosticCase *)self caseStorage];
        v12 = -[DiagnosticCase caseStateString:](self, "caseStateString:", [caseStorage5 caseState]);
        v13 = [(DiagnosticCase *)self caseStateString:stateCopy];
        *buf = 138412546;
        v19 = v12;
        v20 = 2112;
        v21 = v13;
        _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "Diagnostic case state should not return to a previous state! (current: %@ new: %@)", buf, 0x16u);
      }
    }
  }
}

- (void)noteCaseClosedTime
{
  v11 = *MEMORY[0x277D85DE8];
  caseStorage = [(DiagnosticCase *)self caseStorage];
  caseClosedTime = [caseStorage caseClosedTime];

  if (caseClosedTime)
  {
    v6 = diagcaseLogHandle(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      caseStorage2 = [(DiagnosticCase *)self caseStorage];
      caseClosedTime2 = [caseStorage2 caseClosedTime];
      v9 = 138412290;
      v10 = caseClosedTime2;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_INFO, "Already noted caseClosedTime at: %@", &v9, 0xCu);
    }
  }

  else
  {

    [(DiagnosticCase *)self noteCaseClosedTime:0.0];
  }
}

- (void)noteCaseClosedTime:(double)time
{
  if (time <= 0.0)
  {
    [MEMORY[0x277CBEAA8] date];
  }

  else
  {
    [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:?];
  }
  v5 = ;
  caseStorage = [(DiagnosticCase *)self caseStorage];
  [caseStorage setCaseClosedTime:v5];
}

- (void)noteCaseOpenedTime:(double)time
{
  if (time <= 0.0)
  {
    [MEMORY[0x277CBEAA8] date];
  }

  else
  {
    [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:?];
  }
  v5 = ;
  caseStorage = [(DiagnosticCase *)self caseStorage];
  [caseStorage setTimeStamp:v5];
}

- (double)caseOpenedTime
{
  caseStorage = [(DiagnosticCase *)self caseStorage];
  timeStamp = [caseStorage timeStamp];
  [timeStamp timeIntervalSince1970];
  v5 = v4;

  return v5;
}

- (double)caseClosedTime
{
  caseStorage = [(DiagnosticCase *)self caseStorage];
  caseClosedTime = [caseStorage caseClosedTime];
  [caseClosedTime timeIntervalSince1970];
  v5 = v4;

  return v5;
}

- (signed)closureType
{
  v8 = *MEMORY[0x277D85DE8];
  caseStorage = [(DiagnosticCase *)self caseStorage];
  caseClosureType = [caseStorage caseClosureType];

  if (caseClosureType >= 6)
  {
    v5 = diagcaseLogHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7[0] = 67109120;
      v7[1] = caseClosureType;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "Unknown closure type %d", v7, 8u);
    }

    LOWORD(caseClosureType) = 0;
  }

  return caseClosureType;
}

- (void)setClosureType:(signed __int16)type
{
  typeCopy = type;
  caseStorage = [(DiagnosticCase *)self caseStorage];
  [caseStorage setCaseClosureType:typeCopy];
}

- (signed)dampeningType
{
  caseStorage = [(DiagnosticCase *)self caseStorage];
  caseDampeningType = [caseStorage caseDampeningType];

  if ((caseDampeningType + 2) < 0xB)
  {
    return caseDampeningType;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"DiagnosticCase.m" lineNumber:511 description:@"Unhandled DiagnosticCaseDampeningType!"];

  caseStorage2 = [(DiagnosticCase *)self caseStorage];
  caseDampeningType2 = [caseStorage2 caseDampeningType];

  return caseDampeningType2;
}

- (void)setDampeningType:(signed __int16)type
{
  typeCopy = type;
  caseStorage = [(DiagnosticCase *)self caseStorage];
  [caseStorage setCaseDampeningType:typeCopy];
}

- (id)caseDampeningTypeString
{
  caseStorage = [(DiagnosticCase *)self caseStorage];
  v3 = +[DiagnosticCase _caseDampeningTypeString:](DiagnosticCase, "_caseDampeningTypeString:", [caseStorage caseDampeningType]);

  return v3;
}

+ (id)_caseDampeningTypeString:(signed __int16)string
{
  if ((string + 2) > 0xA)
  {
    return @"Unknown Case Dampening Type";
  }

  else
  {
    return off_278CF2080[(string + 2)];
  }
}

- (signed)dpSubmissionState
{
  caseStorage = [(DiagnosticCase *)self caseStorage];
  dpSubmissionState = [caseStorage dpSubmissionState];

  if (dpSubmissionState < 5)
  {
    return dpSubmissionState;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"DiagnosticCase.m" lineNumber:586 description:@"Unhandled DiagnosticCaseDPSubmissionState!"];

  caseStorage2 = [(DiagnosticCase *)self caseStorage];
  dpSubmissionState2 = [caseStorage2 dpSubmissionState];

  return dpSubmissionState2;
}

- (void)setDPSubmissionState:(signed __int16)state
{
  stateCopy = state;
  caseStorage = [(DiagnosticCase *)self caseStorage];
  [caseStorage setDpSubmissionState:stateCopy];
}

- (BOOL)isRemoteTrigger
{
  if ((self->_caseFlags & 2) != 0)
  {
    return 1;
  }

  caseStorage = [(DiagnosticCase *)self caseStorage];
  remoteTrigger = [caseStorage remoteTrigger];

  return remoteTrigger;
}

- (NSString)buildVariant
{
  caseStorage = [(DiagnosticCase *)self caseStorage];
  buildVariant = [caseStorage buildVariant];

  return buildVariant;
}

- (NSString)buildVersion
{
  caseStorage = [(DiagnosticCase *)self caseStorage];
  buildVersion = [caseStorage buildVersion];

  return buildVersion;
}

- (NSString)basebandChipset
{
  caseStorage = [(DiagnosticCase *)self caseStorage];
  basebandChipset = [caseStorage basebandChipset];

  return basebandChipset;
}

- (NSString)basebandFirmwareVersion
{
  caseStorage = [(DiagnosticCase *)self caseStorage];
  basebandFirmwareVersion = [caseStorage basebandFirmwareVersion];

  return basebandFirmwareVersion;
}

- (NSString)regulatoryDomainCountry
{
  caseStorage = [(DiagnosticCase *)self caseStorage];
  regulatoryDomainCountry = [caseStorage regulatoryDomainCountry];

  return regulatoryDomainCountry;
}

- (NSString)homeCarrier
{
  caseStorage = [(DiagnosticCase *)self caseStorage];
  homeCarrier = [caseStorage homeCarrier];

  return homeCarrier;
}

- (id)caseStateString:(signed __int16)string
{
  if (string > 6)
  {
    return @"UnsupportedState";
  }

  else
  {
    return off_278CF20D8[string];
  }
}

- (signed)caseStateFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"Uninitialized"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"Preparing"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"Logging"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"Finalizing"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"Collecting"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"Reporting"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"Closed"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)caseClosureTypeString
{
  caseStorage = [(DiagnosticCase *)self caseStorage];
  v3 = +[DiagnosticCase _closureTypeString:](DiagnosticCase, "_closureTypeString:", [caseStorage caseClosureType]);

  return v3;
}

+ (id)_closureTypeString:(signed __int16)string
{
  if (string >= 6)
  {
    string = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown Closure State: %d", string];
  }

  else
  {
    string = off_278CF2110[string];
  }

  return string;
}

+ (id)_stringRepresentationOfJSONObject:(id)object prettyPrint:(BOOL)print
{
  printCopy = print;
  v21 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v6 = objc_autoreleasePoolPush();
  v7 = sanitizedJSONCollectionObject(objectCopy, 1);
  v8 = [MEMORY[0x277CCAAA0] isValidJSONObject:v7];
  if (v8)
  {
    v16 = 0;
    v9 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v7 options:printCopy error:&v16];
    v10 = v16;
    v11 = v10;
    if (v9)
    {
      v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
      goto LABEL_8;
    }

    if (v10)
    {
      v15 = diagcaseLogHandle(v10);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v18 = v11;
        v19 = 2112;
        v20 = v7;
        _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_ERROR, "JSON serialization failed with error: %@ (object = %@)", buf, 0x16u);
      }
    }
  }

  else
  {
    v9 = diagcaseLogHandle(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v7;
      _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEFAULT, "Not a valid JSON object: %@", buf, 0xCu);
    }

    v11 = 0;
  }

  v12 = 0;
LABEL_8:

  v13 = v12;
  objc_autoreleasePoolPop(v6);

  return v13;
}

+ (id)_arrayObjectRepresentationOfJSONString:(id)string
{
  v17 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if ([stringCopy length])
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = objc_autoreleasePoolPush();
    v6 = [stringCopy dataUsingEncoding:4];
    if (v6)
    {
      v12 = 0;
      v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v12];
      v8 = v12;
      v9 = v8;
      if (v7)
      {
        [v4 addObjectsFromArray:v7];
      }

      else if (v8)
      {
        v10 = diagcaseLogHandle(v8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v14 = stringCopy;
          v15 = 2112;
          v16 = v9;
          _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEBUG, "JSON deserialization for string:%@ failed with error: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v9 = diagcaseLogHandle(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v14 = stringCopy;
        _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEBUG, "Encoding jsonString (%@) into NSData failed", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addRequiredAction:(id)action option:(id)option attachmentType:(id)type pattern:(id)pattern
{
  v29 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  optionCopy = option;
  typeCopy = type;
  patternCopy = pattern;
  if (!self->_requiredActions)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    requiredActions = self->_requiredActions;
    self->_requiredActions = dictionary;
  }

  v16 = [actionCopy length];
  if (!v16 || (v16 = [typeCopy length]) == 0)
  {
    v18 = diagcaseLogHandle(v16);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
LABEL_12:

      goto LABEL_17;
    }

    v23 = 138543874;
    v24 = actionCopy;
    v25 = 2114;
    v26 = typeCopy;
    v27 = 2112;
    v28 = patternCopy;
    v19 = "Invalid parameters adding required action %{public}@ with attachment type %{public}@ and pattern %@";
    v20 = v18;
    v21 = 32;
LABEL_11:
    _os_log_impl(&dword_241804000, v20, OS_LOG_TYPE_ERROR, v19, &v23, v21);
    goto LABEL_12;
  }

  v17 = diagcaseLogHandle(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v23 = 138543618;
    v24 = actionCopy;
    v25 = 2114;
    v26 = typeCopy;
    _os_log_impl(&dword_241804000, v17, OS_LOG_TYPE_INFO, "This case is requesting action '%{public}@' of type '%{public}@'", &v23, 0x16u);
  }

  if (optionCopy)
  {
    [(NSMutableDictionary *)self->_requiredActions setObject:optionCopy forKeyedSubscript:actionCopy];
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
    [(NSMutableDictionary *)self->_requiredActions setObject:null forKeyedSubscript:actionCopy];
  }

  if (([typeCopy isEqualToString:@"diagext"] & 1) == 0)
  {
    if ([patternCopy length])
    {
      [(DiagnosticCase *)self addRequiredAttachmentType:typeCopy pattern:patternCopy];
      goto LABEL_17;
    }

    v18 = diagcaseLogHandle(0);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    LOWORD(v23) = 0;
    v19 = "Any required action that's not DiagnoticExtensions should provide a valid filename pattern to match against";
    v20 = v18;
    v21 = 2;
    goto LABEL_11;
  }

LABEL_17:
}

- (void)addRequiredAttachmentType:(id)type pattern:(id)pattern
{
  v24 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  patternCopy = pattern;
  if (!self->_requiredAttachments)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    requiredAttachments = self->_requiredAttachments;
    self->_requiredAttachments = dictionary;
  }

  v10 = [typeCopy length];
  if (v10 && (v10 = [patternCopy length]) != 0)
  {
    v11 = diagcaseLogHandle(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v19 = typeCopy;
      v20 = 2112;
      v21 = patternCopy;
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_INFO, "This case requires attachment type '%{public}@' - matching with filename pattern '%@'", buf, 0x16u);
    }

    v12 = [(NSMutableDictionary *)self->_requiredAttachments objectForKeyedSubscript:typeCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [MEMORY[0x277CBEB18] arrayWithObjects:{v12, patternCopy, 0}];
      [(NSMutableDictionary *)self->_requiredAttachments setObject:v13 forKeyedSubscript:typeCopy];
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass & 1) != 0 && (isKindOfClass = objc_opt_respondsToSelector(), (isKindOfClass))
      {
        [v12 addObject:patternCopy];
      }

      else if (v12)
      {
        v15 = diagcaseLogHandle(isKindOfClass);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          *buf = 138412802;
          v19 = v12;
          v20 = 2112;
          v21 = v17;
          v22 = 2114;
          v23 = typeCopy;
          _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_ERROR, "Found unexpected object %@ (class %@) when adding required attachments for type '%{public}@'", buf, 0x20u);
        }
      }

      else
      {
        [(NSMutableDictionary *)self->_requiredAttachments setObject:patternCopy forKeyedSubscript:typeCopy];
      }
    }
  }

  else
  {
    v12 = diagcaseLogHandle(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v19 = typeCopy;
      v20 = 2112;
      v21 = patternCopy;
      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_ERROR, "Invalid parameters for adding required attachment type %{public}@ and pattern %@.", buf, 0x16u);
    }
  }
}

- (void)removeRequiredAttachmentType:(id)type pattern:(id)pattern
{
  v25 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  patternCopy = pattern;
  if ([(NSMutableDictionary *)self->_requiredAttachments count])
  {
    if ([typeCopy length])
    {
      v8 = [patternCopy length];
      if (v8)
      {
        v9 = diagcaseLogHandle(v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v19 = 138543618;
          v20 = typeCopy;
          v21 = 2112;
          v22 = patternCopy;
          _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_INFO, "Removing case requirement for attachment type '%{public}@' - matching with filename pattern '%@'", &v19, 0x16u);
        }

        v10 = [(NSMutableDictionary *)self->_requiredAttachments objectForKeyedSubscript:typeCopy];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = [v11 isEqualToString:patternCopy];
          if (v12)
          {
            [(NSMutableDictionary *)self->_requiredAttachments setObject:0 forKeyedSubscript:typeCopy];
            goto LABEL_19;
          }

          v15 = diagcaseLogHandle(v12);
          if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
LABEL_18:

            goto LABEL_19;
          }

          v19 = 138412802;
          v20 = v11;
          v21 = 2114;
          v22 = typeCopy;
          v23 = 2112;
          v24 = patternCopy;
          v16 = "Did not remove existing pattern %@ for type %{public}@ because the requested removal pattern did not match: %@";
          v17 = v15;
          v18 = OS_LOG_TYPE_INFO;
        }

        else
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            isKindOfClass = objc_opt_respondsToSelector();
            if (isKindOfClass)
            {
              v11 = v10;
              [v11 count];
              [v11 removeObject:patternCopy];
              goto LABEL_19;
            }
          }

          if (!v10)
          {
LABEL_20:

            goto LABEL_21;
          }

          v11 = diagcaseLogHandle(isKindOfClass);
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
LABEL_19:

            goto LABEL_20;
          }

          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          v19 = 138412802;
          v20 = v10;
          v21 = 2112;
          v22 = v15;
          v23 = 2114;
          v24 = typeCopy;
          v16 = "Found unexpected object %@ (class %@) when adding required attachments for type '%{public}@'";
          v17 = v11;
          v18 = OS_LOG_TYPE_ERROR;
        }

        _os_log_impl(&dword_241804000, v17, v18, v16, &v19, 0x20u);
        goto LABEL_18;
      }
    }
  }

LABEL_21:
}

- (void)addEvent:(id)event forced:(BOOL)forced
{
  forcedCopy = forced;
  v19 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (!self->_events)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    events = self->_events;
    self->_events = v7;
  }

  caseStorage = [(DiagnosticCase *)self caseStorage];
  if ([caseStorage caseState] != 2)
  {

    if (!forcedCopy)
    {
      goto LABEL_10;
    }

LABEL_7:
    if ([eventCopy count])
    {
      [(NSMutableArray *)self->_events addObject:eventCopy];
      self->eventsDirty = 1;
    }

    goto LABEL_16;
  }

  caseId = [(DiagnosticCase *)self caseId];
  if (caseId)
  {

    goto LABEL_7;
  }

  if (forcedCopy)
  {
    goto LABEL_7;
  }

LABEL_10:
  caseId2 = [(DiagnosticCase *)self caseId];

  v13 = diagcaseLogHandle(v12);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
  if (caseId2)
  {
    if (v14)
    {
      caseStorage2 = [(DiagnosticCase *)self caseStorage];
      v16 = -[DiagnosticCase caseStateString:](self, "caseStateString:", [caseStorage2 caseState]);
      v17 = 138412290;
      v18 = v16;
      _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEBUG, "caseState is %@, expecting DiagnosticCaseStateLogging", &v17, 0xCu);
    }
  }

  else if (v14)
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEBUG, "No case ID", &v17, 2u);
  }

LABEL_16:
}

- (void)addEvents:(id)events forced:(BOOL)forced
{
  forcedCopy = forced;
  v19 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  if (!self->_events)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    events = self->_events;
    self->_events = v7;
  }

  caseStorage = [(DiagnosticCase *)self caseStorage];
  if ([caseStorage caseState] != 2)
  {

    if (!forcedCopy)
    {
      goto LABEL_10;
    }

LABEL_7:
    if ([eventsCopy count])
    {
      [(NSMutableArray *)self->_events addObjectsFromArray:eventsCopy];
      self->eventsDirty = 1;
    }

    goto LABEL_16;
  }

  caseId = [(DiagnosticCase *)self caseId];
  if (caseId)
  {

    goto LABEL_7;
  }

  if (forcedCopy)
  {
    goto LABEL_7;
  }

LABEL_10:
  caseId2 = [(DiagnosticCase *)self caseId];

  v13 = diagcaseLogHandle(v12);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
  if (caseId2)
  {
    if (v14)
    {
      caseStorage2 = [(DiagnosticCase *)self caseStorage];
      v16 = -[DiagnosticCase caseStateString:](self, "caseStateString:", [caseStorage2 caseState]);
      v17 = 138412290;
      v18 = v16;
      _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEBUG, "caseState is %@, expecting DiagnosticCaseStateLogging", &v17, 0xCu);
    }
  }

  else if (v14)
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEBUG, "No case ID", &v17, 2u);
  }

LABEL_16:
}

- (id)stringRepresentationOfEvents
{
  if ([(NSMutableArray *)self->_events count])
  {
    v3 = [DiagnosticCase _stringRepresentationOfJSONObject:self->_events prettyPrint:0];
  }

  else
  {
    v4 = diagcaseLogHandle(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEBUG, "No events to represent", v6, 2u);
    }

    v3 = 0;
  }

  return v3;
}

- (id)eventsFromStringRepresentation
{
  caseStorage = [(DiagnosticCase *)self caseStorage];
  caseEvents = [caseStorage caseEvents];

  if ([caseEvents length])
  {
    v4 = [DiagnosticCase _arrayObjectRepresentationOfJSONString:caseEvents];
  }

  else
  {
    v5 = diagcaseLogHandle(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "No events (empty events string)", v7, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (void)deserializeDiagnosticCaseStorageEvents
{
  eventsFromStringRepresentation = [(DiagnosticCase *)self eventsFromStringRepresentation];
  events = self->_events;
  self->_events = eventsFromStringRepresentation;

  self->eventsDirty = 0;
}

- (void)addPayload:(id)payload
{
  v18 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  if (!self->_payloads)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    payloads = self->_payloads;
    self->_payloads = v5;
  }

  caseStorage = [(DiagnosticCase *)self caseStorage];
  if ([caseStorage caseState] == 2)
  {
    caseId = [(DiagnosticCase *)self caseId];

    if (caseId)
    {
      if ([payloadCopy count])
      {
        [(NSMutableArray *)self->_payloads addObject:payloadCopy];
        self->payloadsDirty = 1;
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  v10 = diagcaseLogHandle(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    caseStorage2 = [(DiagnosticCase *)self caseStorage];
    v12 = -[DiagnosticCase caseStateString:](self, "caseStateString:", [caseStorage2 caseState]);
    caseId2 = [(DiagnosticCase *)self caseId];
    v14 = 138412546;
    v15 = v12;
    v16 = 2114;
    v17 = caseId2;
    _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_INFO, "Not in logging state (%@) or no caseId (%{public}@)", &v14, 0x16u);
  }

LABEL_11:
}

- (id)stringRepresentationOfPayloads
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_payloads count];
  v4 = diagcaseLogHandle(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      payloads = self->_payloads;
      v9 = 138412290;
      v10 = payloads;
      _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEBUG, "_payloads is %@", &v9, 0xCu);
    }

    v7 = [DiagnosticCase _stringRepresentationOfJSONObject:self->_payloads prettyPrint:0];
  }

  else
  {
    if (v5)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEBUG, "No payloads to represent", &v9, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)payloadsFromStringRepresentation
{
  caseStorage = [(DiagnosticCase *)self caseStorage];
  casePayloads = [caseStorage casePayloads];

  if ([casePayloads length])
  {
    v4 = [DiagnosticCase _arrayObjectRepresentationOfJSONString:casePayloads];
  }

  else
  {
    v5 = diagcaseLogHandle(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "No events (empty payloads string)", v7, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (void)deserializeDiagnosticCaseStoragePayloads
{
  payloadsFromStringRepresentation = [(DiagnosticCase *)self payloadsFromStringRepresentation];
  payloads = self->_payloads;
  self->_payloads = payloadsFromStringRepresentation;

  self->payloadsDirty = 0;
}

+ (id)stringRepresentationOfAttachments:(id)attachments
{
  v11 = *MEMORY[0x277D85DE8];
  attachmentsCopy = attachments;
  v4 = [attachmentsCopy count];
  v5 = diagcaseLogHandle(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v6)
    {
      v9 = 138412290;
      v10 = attachmentsCopy;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "attachments is %@", &v9, 0xCu);
    }

    v7 = [DiagnosticCase _stringRepresentationOfJSONObject:attachmentsCopy prettyPrint:0];
  }

  else
  {
    if (v6)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEBUG, "No attachment to represent", &v9, 2u);
    }

    v7 = 0;
  }

  return v7;
}

+ (id)attachmentsFromStringRepresentation:(id)representation
{
  v19 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([representationCopy length])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [representationCopy dataUsingEncoding:4];
    if (v7)
    {
      v14 = 0;
      v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v14];
      v9 = v14;
      v10 = v9;
      if (v8)
      {
        [v5 addObjectsFromArray:v8];
      }

      else if (v9)
      {
        v12 = diagcaseLogHandle(v9);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          selfCopy = self;
          v17 = 2112;
          v18 = v10;
          _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEBUG, "attachment deserialization for case:%@ failed with error: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v10 = diagcaseLogHandle(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEBUG, "attachmentsString encoding failed", buf, 2u);
      }
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v11 = diagcaseLogHandle(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEBUG, "No attachments to represent", buf, 2u);
    }
  }

  return v5;
}

- (void)_addToAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  v12 = attachmentsCopy;
  if (!self->_attachments)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    attachments = self->_attachments;
    self->_attachments = v5;

    attachmentsCopy = v12;
  }

  v7 = [attachmentsCopy length];
  v8 = v12;
  if (v7)
  {
    if ([v12 hasPrefix:@"file://"])
    {
      absoluteString = v12;
    }

    else
    {
      v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12];
      absoluteString = [v10 absoluteString];
    }

    [(NSMutableArray *)self->_attachments addObject:absoluteString];
    v11 = [(DiagnosticCase *)self addSizeInfoForAttachment:absoluteString];

    v8 = v12;
  }

  self->attachmentsDirty = 1;

  MEMORY[0x2821F96F8](v7, v8);
}

- (void)deserializeDiagnosticCaseStorageAttachments
{
  caseStorage = [(DiagnosticCase *)self caseStorage];
  caseAttachments = [caseStorage caseAttachments];
  v5 = [DiagnosticCase attachmentsFromStringRepresentation:caseAttachments];

  attachments = self->_attachments;
  self->_attachments = v5;

  self->attachmentsDirty = 0;
}

- (void)addGroupIdentifierToSignature
{
  v12 = *MEMORY[0x277D85DE8];
  uUIDString = [(NSUUID *)self->_caseId UUIDString];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString2 = [uUID UUIDString];
  v6 = [uUIDString stringByAppendingFormat:@"_%@", uUIDString2];

  v8 = diagcaseLogHandle(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "Adding group identifier to case: %{public}@", buf, 0xCu);
  }

  if ([v6 length])
  {
    [(NSMutableDictionary *)self->_signature setObject:v6 forKeyedSubscript:@"groupID"];
    caseStorage = [(DiagnosticCase *)self caseStorage];
    [caseStorage setCaseGroupID:v6];
  }
}

- (void)finishCase
{
  if ([(DiagnosticCase *)self closureType]!= 4)
  {

    [(DiagnosticCase *)self setCaseState:4];
  }
}

- (void)collectLogs
{
  v38 = *MEMORY[0x277D85DE8];
  caseStorage = [(DiagnosticCase *)self caseStorage];
  caseState = [caseStorage caseState];

  caseStorage2 = [(DiagnosticCase *)self caseStorage];
  caseDampeningType = [caseStorage2 caseDampeningType];

  if (*&self->completedDiagnosticActions != 0)
  {
    v8 = diagcaseLogHandle(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      completedDiagnosticActions = self->completedDiagnosticActions;
      expectedDiagnosticActions = self->expectedDiagnosticActions;
      v30 = 134218240;
      v31 = expectedDiagnosticActions;
      v32 = 2048;
      v33 = completedDiagnosticActions;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_ERROR, "Did collectLogs get called more than once? Observing non-zero values for expected actions (%lu) and completed actions (%lu).", &v30, 0x16u);
    }
  }

  self->completedDiagnosticActions = 0;
  self->expectedDiagnosticActions = 0;
  manager = [(DiagnosticCase *)self manager];
  configManager = [manager configManager];
  autoBugCaptureRegularPayloads = [configManager autoBugCaptureRegularPayloads];

  if (autoBugCaptureRegularPayloads && caseState == 4 && caseDampeningType <= 0)
  {
    v15 = diagcaseLogHandle(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      caseId = [(DiagnosticCase *)self caseId];
      v30 = 138543362;
      v31 = caseId;
      _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_DEFAULT, "Starting collectLogs for case ID: %{public}@", &v30, 0xCu);
    }

    [(DiagnosticCase *)self _updatePayloadDictionaryArray:1];
    v17 = [(NSMutableDictionary *)self->_requiredActions objectForKeyedSubscript:@"diagext"];

    if (v17)
    {
      v19 = [(NSMutableDictionary *)self->_requiredActions objectForKeyedSubscript:@"diagext"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v21 = [(NSMutableDictionary *)self->_requiredActions objectForKeyedSubscript:@"diagext"];
        v22 = diagcaseLogHandle(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v30 = 138412290;
          v31 = v21;
          _os_log_impl(&dword_241804000, v22, OS_LOG_TYPE_DEBUG, "Found diagnostic extension options: %@", &v30, 0xCu);
        }
      }

      else
      {
        v21 = 0;
      }

      [(DiagnosticCase *)self startCollectingDiagnosticExtensions:v21];
    }

    else
    {
      v29 = diagcaseLogHandle(v18);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v30) = 0;
        _os_log_impl(&dword_241804000, v29, OS_LOG_TYPE_DEFAULT, "DiagnosticExtensions action was requested to be disabled", &v30, 2u);
      }

      [(DiagnosticCase *)self startCollectingAllReports];
    }
  }

  else
  {
    [(DiagnosticCase *)self _updatePayloadDictionaryArray:0];
    v23 = +[SystemProperties sharedInstance];
    v24 = diagcaseLogHandle(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      if ([v23 internalBuild])
      {
        v25 = @"YES";
      }

      else
      {
        v25 = @"NO";
      }

      if ([v23 carrierSeedBuild])
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      v30 = 138413058;
      v31 = v25;
      if (caseState == 4)
      {
        v27 = @"YES";
      }

      else
      {
        v27 = @"NO";
      }

      v32 = 2112;
      if (caseDampeningType >= 1)
      {
        v28 = @"NO";
      }

      else
      {
        v28 = @"YES";
      }

      v33 = v26;
      v34 = 2112;
      v35 = v27;
      v36 = 2112;
      v37 = v28;
      _os_log_impl(&dword_241804000, v24, OS_LOG_TYPE_INFO, "Not collecting logs : internalBuild %@, carrierSeedBuild %@, State collecting %@, accepted case %@", &v30, 0x2Au);
    }

    [(DiagnosticCase *)self setCaseState:5];
  }
}

- (void)startCollectingDiagnosticExtensions:(id)extensions
{
  v18 = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  date = [MEMORY[0x277CBEAA8] date];
  deParametersFromPayloads = [(DiagnosticCase *)self deParametersFromPayloads];
  objc_initWeak(&location, self);
  manager = [(DiagnosticCase *)self manager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__DiagnosticCase_startCollectingDiagnosticExtensions___block_invoke;
  v12[3] = &unk_278CF1FE8;
  v12[4] = self;
  objc_copyWeak(&v14, &location);
  v8 = date;
  v13 = v8;
  v9 = [manager collectDiagnosticExtensionLogsWithParameters:deParametersFromPayloads options:extensionsCopy diagCase:self reply:v12];

  ++self->expectedDiagnosticActions;
  v11 = diagcaseLogHandle(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v17 = v9;
    _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEFAULT, "Started collection from %ld diagnostic extensions", buf, 0xCu);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __54__DiagnosticCase_startCollectingDiagnosticExtensions___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = diagcaseLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = [v3 count];
    _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEFAULT, "Ready to attach %ld results from DiagnosticExtensions", buf, 0xCu);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__DiagnosticCase_startCollectingDiagnosticExtensions___block_invoke_157;
  v11[3] = &unk_278CF1FC0;
  v11[4] = *(a1 + 32);
  objc_copyWeak(&v13, (a1 + 48));
  v12 = *(a1 + 40);
  v5 = [v3 enumerateKeysAndObjectsUsingBlock:v11];
  ++*(*(a1 + 32) + 16);
  v6 = diagcaseLogHandle(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = *(v7 + 16);
    v8 = *(v7 + 24);
    *buf = 134218240;
    v15 = v9;
    v16 = 2048;
    v17 = v8;
    _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "Finished running diagnostic extensions. (%lu of %lu completed)", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained startCollectingAllReports];

  objc_destroyWeak(&v13);
}

void __54__DiagnosticCase_startCollectingDiagnosticExtensions___block_invoke_157(uint64_t a1, void *a2, void *a3)
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = v5;
    objc_opt_class();
    v47 = v6;
    v48 = v5;
    if (objc_opt_isKindOfClass())
    {
      v9 = v6;
      v10 = v9;
    }

    else
    {
      objc_opt_class();
      v14 = objc_opt_isKindOfClass();
      if (v14)
      {
        v9 = [*(a1 + 32) removeRequiredAttachmentType:@"diagext" pattern:v8];
      }

      else
      {
        v15 = diagcaseLogHandle(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          *buf = 138412546;
          v56 = v6;
          v57 = 2112;
          v58 = v17;
          _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_ERROR, "Found unexpected object %@ of class %@ as diag extension attachments", buf, 0x16u);
        }
      }

      v10 = 0;
    }

    v18 = diagcaseLogHandle(v9);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = [v10 count];
      *buf = 134218242;
      v56 = v19;
      v57 = 2112;
      v58 = v8;
      _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_INFO, "Processing %ld attachments from %@", buf, 0x16u);
    }

    v46 = v8;

    v45 = a1;
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v21 = v10;
    v22 = [v21 countByEnumeratingWithState:&v49 objects:v63 count:16];
    if (!v22)
    {
      v24 = 0;
      goto LABEL_31;
    }

    v23 = v22;
    v24 = 0;
    v25 = *v50;
    while (1)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v50 != v25)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v49 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = [v27 absoluteString];
          [WeakRetained _addToAttachments:v28];

LABEL_23:
          ++v24;
          continue;
        }

        objc_opt_class();
        v29 = objc_opt_isKindOfClass();
        if (v29)
        {
          [WeakRetained _addToAttachments:v27];
          goto LABEL_23;
        }

        v30 = diagcaseLogHandle(v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          *buf = 138412546;
          v56 = v32;
          v57 = 2112;
          v58 = v27;
          _os_log_impl(&dword_241804000, v30, OS_LOG_TYPE_ERROR, "Found attachment of unexpected class (%@) {%@}", buf, 0x16u);
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v49 objects:v63 count:16];
      if (!v23)
      {
LABEL_31:

        v34 = diagcaseLogHandle(v33);
        v35 = v45;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          if (v21)
          {
            v36 = "success";
          }

          else
          {
            v36 = "failed";
          }

          v37 = [v21 count];
          v38 = *(v35 + 40);
          *buf = 136315906;
          v56 = v36;
          v57 = 2048;
          v58 = v37;
          v59 = 2048;
          v60 = v24;
          v61 = 2112;
          v62 = v38;
          _os_log_impl(&dword_241804000, v34, OS_LOG_TYPE_INFO, "Processing diagnostic extension result into events (result:%s, total count:%ld, attached count:%ld, timestamp:%@)", buf, 0x2Au);
        }

        v53[0] = @"type";
        v53[1] = @"name";
        v11 = v46;
        v54[0] = @"DiagnosticExtension";
        v54[1] = v46;
        v39 = MEMORY[0x277CBEC38];
        if (!v21)
        {
          v39 = MEMORY[0x277CBEC28];
        }

        v54[2] = v39;
        v53[2] = @"result";
        v53[3] = @"value";
        v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v24, v45}];
        v54[3] = v40;
        v53[4] = @"count";
        v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v21, "count")}];
        v54[4] = v41;
        v53[5] = @"timestamp";
        v42 = MEMORY[0x277CCABB0];
        [*(v35 + 40) timeIntervalSince1970];
        v43 = [v42 numberWithDouble:?];
        v54[5] = v43;
        v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:6];

        [WeakRetained addEvent:v44 forced:1];
        v6 = v47;
        v5 = v48;
        goto LABEL_39;
      }
    }
  }

  v11 = diagcaseLogHandle(isKindOfClass);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    *buf = 138412546;
    v56 = v5;
    v57 = 2112;
    v58 = v13;
    _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_ERROR, "Found unexpected object %@ of class %@ as diag extension identifier. (Expecting NSString)", buf, 0x16u);
  }

LABEL_39:
}

- (id)deParametersFromPayloads
{
  v34 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  payloads = [(DiagnosticCase *)self payloads];
  v3 = [payloads countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (!v3)
  {
    v24 = 0;
    goto LABEL_27;
  }

  v4 = v3;
  v24 = 0;
  v5 = *v26;
  do
  {
    v6 = 0;
    do
    {
      if (*v26 != v5)
      {
        objc_enumerationMutation(payloads);
      }

      v7 = *(*(&v25 + 1) + 8 * v6);
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v9 = v7;
        v10 = [v9 objectForKeyedSubscript:@"deparams"];
        v11 = diagcaseLogHandle(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v30 = v10;
          _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEBUG, "Potential DE parameter dictionary: %@", buf, 0xCu);
        }

        if (v10)
        {
          objc_opt_class();
          v13 = objc_opt_isKindOfClass();
          if (v13)
          {
            if (v24)
            {
              [v24 addEntriesFromDictionary:v10];
            }

            else
            {
              v24 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v10];
            }

            goto LABEL_20;
          }

          v16 = diagcaseLogHandle(v13);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = objc_opt_class();
            v18 = NSStringFromClass(v17);
            *buf = 138412546;
            v30 = v10;
            v31 = 2112;
            v32 = v18;
            _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_ERROR, "Found object %@ of class %@ as diag extension parameters. (Expecting NSDictionary)", buf, 0x16u);
          }
        }

        else
        {
          v16 = diagcaseLogHandle(v12);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_DEBUG, "No diag extension parameters in this payload dictionary.", buf, 2u);
          }
        }

LABEL_20:
        goto LABEL_21;
      }

      v9 = diagcaseLogHandle(isKindOfClass);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138412546;
        v30 = v7;
        v31 = 2112;
        v32 = v15;
        _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_ERROR, "Found object %@ of class %@ in payloads array. (Expecting NSDictionary)", buf, 0x16u);
      }

LABEL_21:

      ++v6;
    }

    while (v4 != v6);
    v19 = [payloads countByEnumeratingWithState:&v25 objects:v33 count:16];
    v4 = v19;
  }

  while (v19);
LABEL_27:

  v20 = [v24 count];
  if (v20)
  {
    v21 = diagcaseLogHandle(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = [v24 count];
      *buf = 134218242;
      v30 = v22;
      v31 = 2112;
      v32 = v24;
      _os_log_impl(&dword_241804000, v21, OS_LOG_TYPE_INFO, "Found %lu DE parameters: %@", buf, 0x16u);
    }
  }

  return v24;
}

- (void)startCollectingAllReports
{
  v22 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  requiredActions = self->_requiredActions;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__DiagnosticCase_startCollectingAllReports__block_invoke;
  v11[3] = &unk_278CF2010;
  v11[4] = self;
  v11[5] = &v12;
  v4 = [(NSMutableDictionary *)requiredActions enumerateKeysAndObjectsUsingBlock:v11];
  v5 = v13;
  self->expectedDiagnosticActions += v13[3];
  if (v5[3])
  {
    v6 = diagcaseLogHandle(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v13[3];
      v8 = "s";
      if (!v7)
      {
        v8 = "";
      }

      *buf = 134218498;
      selfCopy2 = v7;
      v18 = 2080;
      v19 = v8;
      v20 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, "Collecting %lu report%s for case: %@", buf, 0x20u);
    }

    manager = [(DiagnosticCase *)self manager];
    [manager startCollectingNextReportForDiagnosticCase:self];
  }

  else
  {
    v10 = diagcaseLogHandle(v4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_DEFAULT, "There are no reports to collect for %@", buf, 0xCu);
    }

    [(DiagnosticCase *)self finishedCollectingLogs];
  }

  _Block_object_dispose(&v12, 8);
}

void __43__DiagnosticCase_startCollectingAllReports__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = casemanagementLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v17 = 138412290;
    v18 = v5;
    _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEBUG, "Ready to collect report name: %@", &v17, 0xCu);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [*(a1 + 32) manager];
    v9 = v8;
    v10 = v5;
    v11 = v6;
    goto LABEL_7;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = [*(a1 + 32) manager];
    v9 = v8;
    v10 = v5;
    v11 = 0;
LABEL_7:
    v13 = [v8 requestReportGenerator:v10 options:v11];

    if (v13)
    {
      ++*(*(*(a1 + 40) + 8) + 24);
    }

    goto LABEL_12;
  }

  v14 = casemanagementLogHandle(isKindOfClass);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = 138412546;
    v18 = v6;
    v19 = 2112;
    v20 = v16;
    _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_ERROR, "Found unexpected object %@ of class %@ in report dictionary", &v17, 0x16u);
  }

LABEL_12:
}

- (void)reportGeneratorEnded:(id)ended reportInfo:(id)info error:(id)error isFinalReportGenerator:(BOOL)generator
{
  generatorCopy = generator;
  v24 = *MEMORY[0x277D85DE8];
  endedCopy = ended;
  infoCopy = info;
  errorCopy = error;
  ++self->completedDiagnosticActions;
  v13 = diagcaseLogHandle(errorCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    completedDiagnosticActions = self->completedDiagnosticActions;
    expectedDiagnosticActions = self->expectedDiagnosticActions;
    v20 = 134218240;
    v21 = completedDiagnosticActions;
    v22 = 2048;
    v23 = expectedDiagnosticActions;
    _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEFAULT, "Finished collecting a diagnostic report. (%lu of %lu completed)", &v20, 0x16u);
  }

  if (infoCopy)
  {
    v17 = diagcaseLogHandle(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = infoCopy;
      _os_log_impl(&dword_241804000, v17, OS_LOG_TYPE_INFO, "Adding case report:%@", &v20, 0xCu);
    }

    caseReports = [(DiagnosticCase *)self caseReports];
    [caseReports addObject:infoCopy];
  }

  if (errorCopy)
  {
    v19 = diagcaseLogHandle(v16);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = 138412546;
      v21 = errorCopy;
      v22 = 2112;
      v23 = endedCopy;
      _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_ERROR, "Error %@ from %@", &v20, 0x16u);
    }
  }

  if (generatorCopy)
  {
    [(DiagnosticCase *)self finishedCollectingLogs];
  }
}

- (id)_updatedPayloadPathForOriginalPath:(id)path sandboxExtensionToken:(id)token
{
  v54 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  tokenCopy = token;
  v8 = tokenCopy;
  if (tokenCopy)
  {
    [tokenCopy UTF8String];
    if (sandbox_extension_consume() == -1)
    {
      v26 = diagcaseLogHandle(-1);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        caseId = [(DiagnosticCase *)self caseId];
        v28 = __error();
        v29 = strerror(*v28);
        v30 = "Unknown";
        *buf = 138543874;
        v47 = caseId;
        if (v29)
        {
          v30 = v29;
        }

        v48 = 2112;
        v49 = pathCopy;
        v50 = 2080;
        v51 = v30;
        _os_log_impl(&dword_241804000, v26, OS_LOG_TYPE_ERROR, "Case: %{public}@: Failed to consume extension token for '%@' due to error: %s", buf, 0x20u);
      }

      v25 = 0;
    }

    else
    {
      v9 = pathCopy;
      lastPathComponent = [v9 lastPathComponent];
      v11 = MEMORY[0x277CCACA8];
      caseId2 = [(DiagnosticCase *)self caseId];
      v44 = lastPathComponent;
      v13 = [v11 stringWithFormat:@"Case%@_%@", caseId2, lastPathComponent];

      v14 = +[ABCAdministrator sharedInstance];
      configurationManager = [v14 configurationManager];
      logArchivePath = [configurationManager logArchivePath];
      v17 = [logArchivePath stringByAppendingPathComponent:v13];

      v19 = diagcaseLogHandle(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        caseId3 = [(DiagnosticCase *)self caseId];
        *buf = 138543874;
        v47 = caseId3;
        v48 = 2112;
        v49 = v9;
        v50 = 2112;
        v51 = v17;
        _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_INFO, "Case: %{public}@: Attempting to copy %@ to %@", buf, 0x20u);
      }

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v45 = 0;
      v22 = [defaultManager copyItemAtPath:v9 toPath:v17 error:&v45];
      v23 = v45;

      if (v22)
      {
        v25 = v17;
      }

      else
      {
        v31 = diagcaseLogHandle(v24);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [(DiagnosticCase *)self caseId];
          v32 = v43 = v13;
          localizedDescription = [v23 localizedDescription];
          v34 = localizedDescription;
          *buf = 138544130;
          v35 = @"Unknown";
          v47 = v32;
          if (localizedDescription)
          {
            v35 = localizedDescription;
          }

          v48 = 2112;
          v49 = v9;
          v50 = 2112;
          v51 = v17;
          v52 = 2112;
          v53 = v35;
          _os_log_impl(&dword_241804000, v31, OS_LOG_TYPE_ERROR, "Case: %{public}@: Failed to copy %@ to %@ due to error: %@", buf, 0x2Au);

          v13 = v43;
        }

        v25 = 0;
      }

      v36 = sandbox_extension_release();
      if (v36 == -1)
      {
        v37 = diagcaseLogHandle(v36);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          caseId4 = [(DiagnosticCase *)self caseId];
          v39 = __error();
          v40 = strerror(*v39);
          v41 = "Unknown";
          *buf = 138543874;
          v47 = caseId4;
          if (v40)
          {
            v41 = v40;
          }

          v48 = 2112;
          v49 = v9;
          v50 = 2080;
          v51 = v41;
          _os_log_impl(&dword_241804000, v37, OS_LOG_TYPE_ERROR, "Case: %{public}@: Failed to release sandbox extension handle for %@ due to error: %s", buf, 0x20u);
        }
      }
    }
  }

  else
  {
    v25 = pathCopy;
  }

  return v25;
}

- (void)_updatePayloadDictionaryArray:(BOOL)array
{
  arrayCopy = array;
  v63 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  payloads = [(DiagnosticCase *)self payloads];
  v6 = [payloads countByEnumeratingWithState:&v53 objects:v62 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v54;
    v9 = @"path";
    v41 = arrayCopy;
    v43 = payloads;
    v40 = *v54;
    v39 = @"path";
    do
    {
      v10 = 0;
      v42 = v7;
      do
      {
        if (*v54 != v8)
        {
          objc_enumerationMutation(payloads);
        }

        v11 = *(*(&v53 + 1) + 8 * v10);
        if (arrayCopy)
        {
          v12 = [*(*(&v53 + 1) + 8 * v10) objectForKeyedSubscript:v9];
          v46 = v12;
          if (v12)
          {
            v45 = v10;
            v13 = diagcaseLogHandle(v12);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              [(DiagnosticCase *)self caseId];
              v15 = v14 = payloads;
              *buf = 138543618;
              v59 = v15;
              v60 = 2112;
              v61 = v46;
              _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_INFO, "Case: %{public}@: Moving files from payload path array into working dir: %@", buf, 0x16u);

              payloads = v14;
            }

            v16 = [v11 objectForKeyedSubscript:@"sandbox_ext_token_dict"];
            if (v16)
            {
              v17 = [v11 mutableCopy];
              [v17 removeObjectForKey:@"sandbox_ext_token_dict"];
              v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v49 = 0u;
              v50 = 0u;
              v51 = 0u;
              v52 = 0u;
              v19 = v46;
              v48 = [v19 countByEnumeratingWithState:&v49 objects:v57 count:16];
              if (v48)
              {
                v20 = *v50;
                v47 = *v50;
                do
                {
                  for (i = 0; i != v48; ++i)
                  {
                    if (*v50 != v20)
                    {
                      objc_enumerationMutation(v19);
                    }

                    v22 = *(*(&v49 + 1) + 8 * i);
                    v23 = [v16 objectForKeyedSubscript:{v22, v39}];
                    v24 = [(DiagnosticCase *)self _updatedPayloadPathForOriginalPath:v22 sandboxExtensionToken:v23];

                    if ([v24 length])
                    {
                      [v18 addObject:v24];
                    }

                    else
                    {
                      v25 = diagcaseLogHandle(0);
                      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                      {
                        [(DiagnosticCase *)self caseId];
                        v26 = v19;
                        v27 = v16;
                        v28 = v18;
                        v29 = v17;
                        v31 = v30 = self;
                        *buf = 138543618;
                        v59 = v31;
                        v60 = 2112;
                        v61 = v22;
                        _os_log_impl(&dword_241804000, v25, OS_LOG_TYPE_DEFAULT, "Case: %{public}@: Failed to copy %@ due to sandbox or file error. Dropping payload.", buf, 0x16u);

                        self = v30;
                        v17 = v29;
                        v18 = v28;
                        v16 = v27;
                        v19 = v26;
                        v20 = v47;
                      }
                    }
                  }

                  v48 = [v19 countByEnumeratingWithState:&v49 objects:v57 count:16];
                }

                while (v48);
              }

              v9 = v39;
              [v17 setObject:v18 forKeyedSubscript:v39];
              [(NSMutableArray *)array addObject:v17];

              arrayCopy = v41;
              v7 = v42;
              payloads = v43;
              v8 = v40;
            }

            else
            {
              v17 = diagcaseLogHandle(0);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                caseId = [(DiagnosticCase *)self caseId];
                *buf = 138543618;
                v59 = caseId;
                v60 = 2112;
                v61 = v11;
                _os_log_impl(&dword_241804000, v17, OS_LOG_TYPE_ERROR, "Case: %{public}@: No sandbox extension token dictionary found. Dropping payload %@", buf, 0x16u);

                payloads = v43;
              }
            }

            v32 = v46;

            v10 = v45;
          }

          else
          {
            [(NSMutableArray *)array addObject:v11];
            v32 = 0;
          }
        }

        else
        {
          v32 = [*(*(&v53 + 1) + 8 * v10) mutableCopy];
          [v32 removeObjectForKey:@"sandbox_ext_token_dict"];
          [v32 removeObjectForKey:v9];
        }

        ++v10;
      }

      while (v10 != v7);
      v7 = [payloads countByEnumeratingWithState:&v53 objects:v62 count:16];
    }

    while (v7);
  }

  payloads = self->_payloads;
  self->_payloads = array;

  v36 = diagcaseLogHandle(v35);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    caseId2 = [(DiagnosticCase *)self caseId];
    payloads2 = [(DiagnosticCase *)self payloads];
    *buf = 138543618;
    v59 = caseId2;
    v60 = 2112;
    v61 = payloads2;
    _os_log_impl(&dword_241804000, v36, OS_LOG_TYPE_DEBUG, "Case: %{public}@: Updated payloads array: %@", buf, 0x16u);
  }
}

- (void)finishedCollectingLogs
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = diagcaseLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    caseId = [(DiagnosticCase *)self caseId];
    v12 = 138412290;
    v13 = caseId;
    _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_DEBUG, "Finished collecting all diagnostic reports for case %@.", &v12, 0xCu);
  }

  completedDiagnosticActions = self->completedDiagnosticActions;
  expectedDiagnosticActions = self->expectedDiagnosticActions;
  v8 = diagcaseLogHandle(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (completedDiagnosticActions >= expectedDiagnosticActions)
  {
    if (v9)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "Finished collecting all diagnostic reports.", &v12, 2u);
    }

    [(DiagnosticCase *)self setCaseState:5];
  }

  else
  {
    if (v9)
    {
      v10 = self->completedDiagnosticActions;
      v11 = self->expectedDiagnosticActions;
      v12 = 134218240;
      v13 = v10;
      v14 = 2048;
      v15 = v11;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "Waiting for collection of diagnostic reports (finished %lu of %lu)", &v12, 0x16u);
    }
  }
}

- (void)prepareAttachmentsForReporting
{
  v98 = *MEMORY[0x277D85DE8];
  caseStorage = [(DiagnosticCase *)self caseStorage];
  caseState = [caseStorage caseState];

  if (caseState == 5)
  {
    payloads = [(DiagnosticCase *)self payloads];
    v6 = [payloads count];

    if (v6)
    {
      v8 = diagcaseLogHandle(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        payloads2 = [(DiagnosticCase *)self payloads];
        *buf = 138412290;
        v85 = payloads2;
        _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEBUG, "Extracting payloads %@ to attachments.", buf, 0xCu);
      }

      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      obj = [(DiagnosticCase *)self payloads];
      v10 = [obj countByEnumeratingWithState:&v78 objects:v97 count:16];
      if (v10)
      {
        v11 = v10;
        v64 = *v79;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v79 != v64)
            {
              objc_enumerationMutation(obj);
            }

            v13 = [*(*(&v78 + 1) + 8 * i) objectForKeyedSubscript:@"path"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = v13;
              v74 = 0u;
              v75 = 0u;
              v76 = 0u;
              v77 = 0u;
              v15 = [v14 countByEnumeratingWithState:&v74 objects:v96 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v75;
                do
                {
                  for (j = 0; j != v16; ++j)
                  {
                    if (*v75 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v19 = *(*(&v74 + 1) + 8 * j);
                    if ([v19 length])
                    {
                      [(DiagnosticCase *)self _addToAttachments:v19];
                    }
                  }

                  v16 = [v14 countByEnumeratingWithState:&v74 objects:v96 count:16];
                }

                while (v16);
              }
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_25;
              }

              v20 = v13;
              if ([v20 length])
              {
                [(DiagnosticCase *)self _addToAttachments:v20];
              }
            }

LABEL_25:
          }

          v11 = [obj countByEnumeratingWithState:&v78 objects:v97 count:16];
        }

        while (v11);
      }
    }

    caseReports = [(DiagnosticCase *)self caseReports];
    v22 = [caseReports count];

    if (v22)
    {
      array = [MEMORY[0x277CBEB18] array];
      v23 = diagcaseLogHandle(array);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        caseReports2 = [(DiagnosticCase *)self caseReports];
        v25 = [caseReports2 count];
        *buf = 134217984;
        v85 = v25;
        _os_log_impl(&dword_241804000, v23, OS_LOG_TYPE_DEBUG, "Extracting %ld reports to attachments.", buf, 0xCu);
      }

      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      caseReports3 = [(DiagnosticCase *)self caseReports];
      v26 = [caseReports3 countByEnumeratingWithState:&v70 objects:v95 count:16];
      v61 = v26;
      if (v26)
      {
        v60 = *v71;
        do
        {
          v27 = 0;
          do
          {
            if (*v71 != v60)
            {
              objc_enumerationMutation(caseReports3);
            }

            v28 = *(*(&v70 + 1) + 8 * v27);
            v29 = diagcaseLogHandle(v26);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v85 = v28;
              _os_log_impl(&dword_241804000, v29, OS_LOG_TYPE_INFO, "Report: %@", buf, 0xCu);
            }

            v30 = [v28 objectForKeyedSubscript:@"attachments"];
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            v31 = [v30 countByEnumeratingWithState:&v66 objects:v94 count:16];
            if (v31)
            {
              v32 = v31;
              v33 = *v67;
              do
              {
                for (k = 0; k != v32; ++k)
                {
                  if (*v67 != v33)
                  {
                    objc_enumerationMutation(v30);
                  }

                  v35 = *(*(&v66 + 1) + 8 * k);
                  if ([v35 length])
                  {
                    [(DiagnosticCase *)self _addToAttachments:v35];
                  }
                }

                v32 = [v30 countByEnumeratingWithState:&v66 objects:v94 count:16];
              }

              while (v32);
            }

            v36 = [v28 objectForKeyedSubscript:@"reportCreator"];
            v37 = [v28 objectForKeyedSubscript:@"reportStart"];
            v38 = [v28 objectForKeyedSubscript:@"reportEnd"];
            v65 = [v28 objectForKeyedSubscript:@"reportEndStatus"];
            v39 = [v65 isEqualToString:@"Error"];
            if (v39)
            {
              v40 = [v28 objectForKeyedSubscript:@"Error"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v41 = v40;
                goto LABEL_53;
              }

              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              if (isKindOfClass)
              {
                v41 = [v40 description];
LABEL_53:
                obja = v41;
              }

              else
              {
                v44 = diagcaseLogHandle(isKindOfClass);
                if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                {
                  v45 = objc_opt_class();
                  v46 = NSStringFromClass(v45);
                  *buf = 138412546;
                  v85 = v46;
                  v86 = 2112;
                  v87 = v40;
                  _os_log_impl(&dword_241804000, v44, OS_LOG_TYPE_INFO, "Found unexpected class %@ as error payload: %@", buf, 0x16u);
                }

                obja = 0;
              }

              v42 = v65;

              goto LABEL_58;
            }

            obja = 0;
            v42 = v65;
LABEL_58:
            v47 = diagcaseLogHandle(v39);
            v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG);
            if (v36 && v37 && v38 && v42)
            {
              if (v48)
              {
                v49 = [v30 count];
                *buf = 138413314;
                v85 = v36;
                v86 = 2112;
                v87 = v37;
                v88 = 2112;
                v89 = v38;
                v90 = 2112;
                v91 = v42;
                v92 = 2048;
                v93 = v49;
                _os_log_impl(&dword_241804000, v47, OS_LOG_TYPE_DEBUG, "Processing report result from %@ into events (start:%@, end:%@, result:%@, %ld attachments)", buf, 0x34u);
              }

              v82[0] = @"type";
              v82[1] = @"name";
              v83[0] = @"report";
              v83[1] = v36;
              v83[2] = @"Start";
              v82[2] = @"status";
              v82[3] = @"timestamp";
              v50 = MEMORY[0x277CCABB0];
              [v37 timeIntervalSince1970];
              v51 = [v50 numberWithDouble:?];
              v83[3] = v51;
              v59 = v37;
              v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:4];

              [array addObject:v47];
              v52 = MEMORY[0x277CBEAC0];
              v53 = MEMORY[0x277CCABB0];
              [v38 timeIntervalSince1970];
              v54 = [v53 numberWithDouble:?];
              v55 = obja;
              v56 = [v52 dictionaryWithObjectsAndKeys:{@"report", @"type", v36, @"name", @"End", @"status", v65, @"result", v54, @"timestamp", obja, @"context", 0}];

              v37 = v59;
              v42 = v65;
              [array addObject:v56];
            }

            else
            {
              if (v48)
              {
                *buf = 138413058;
                v85 = v36;
                v86 = 2112;
                v87 = v37;
                v88 = 2112;
                v89 = v38;
                v90 = 2112;
                v91 = v42;
                _os_log_impl(&dword_241804000, v47, OS_LOG_TYPE_DEBUG, "Report result contains missing values - creator:%@ startDate:%@ endDate:%@ result:%@", buf, 0x2Au);
              }

              v55 = obja;
            }

            ++v27;
          }

          while (v27 != v61);
          v26 = [caseReports3 countByEnumeratingWithState:&v70 objects:v95 count:16];
          v61 = v26;
        }

        while (v26);
      }

      if ([array count])
      {
        [(DiagnosticCase *)self addEvents:array forced:1];
      }
    }
  }
}

- (void)validateAttachments
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v3 = diagcaseLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    requiredAttachments = self->_requiredAttachments;
    *buf = 138412290;
    selfCopy = requiredAttachments;
    _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_DEBUG, "Ready to validate attachments with requirements: %@", buf, 0xCu);
  }

  v5 = self->_requiredAttachments;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __37__DiagnosticCase_validateAttachments__block_invoke;
  v13[3] = &unk_278CF2010;
  v13[4] = self;
  v13[5] = &v14;
  v6 = [(NSMutableDictionary *)v5 enumerateKeysAndObjectsUsingBlock:v13];
  if (v15[3])
  {
    v7 = [(NSMutableDictionary *)self->_requiredAttachments count];
    if (v7)
    {
      v8 = diagcaseLogHandle(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v9 = "All attachments validated successfully.";
        v10 = v8;
        v11 = OS_LOG_TYPE_DEFAULT;
LABEL_12:
        _os_log_impl(&dword_241804000, v10, v11, v9, buf, 2u);
      }
    }

    else
    {
      v8 = diagcaseLogHandle(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v9 = "No attachments to validate.";
        v10 = v8;
        v11 = OS_LOG_TYPE_INFO;
        goto LABEL_12;
      }
    }

    goto LABEL_14;
  }

  v12 = diagcaseLogHandle(v6);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_ERROR, "This case has one or more missing required attachments. Marking as ineligible. (%@)", buf, 0xCu);
  }

  [(DiagnosticCase *)self setDampeningType:4294967294];
LABEL_14:
  _Block_object_dispose(&v14, 8);
}

void __37__DiagnosticCase_validateAttachments__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__5;
  v35 = __Block_byref_object_dispose__5;
  v36 = 0;
  v7 = diagcaseLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v42 = v5;
    v43 = 2112;
    v44 = v6;
    _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEBUG, "Validating we have attachment type '%@' with pattern '%@'", buf, 0x16u);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__DiagnosticCase_validateAttachments__block_invoke_185;
  aBlock[3] = &unk_278CF2038;
  v29 = &v31;
  v8 = v5;
  v28 = v8;
  v30 = &v37;
  v9 = _Block_copy(aBlock);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(v32 + 5, a3);
    v10 = [*(*(a1 + 32) + 112) enumerateObjectsUsingBlock:v9];
    if ((v38[3] & 1) == 0)
    {
      v11 = diagcaseLogHandle(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v32[5];
        *buf = 138543618;
        v42 = v8;
        v43 = 2112;
        v44 = v12;
        _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_DEFAULT, "Missing attachment for type '%{public}@' (matching pattern '%@')", buf, 0x16u);
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v14 = v6;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __37__DiagnosticCase_validateAttachments__block_invoke_187;
      v21[3] = &unk_278CF2060;
      v15 = *(a1 + 32);
      v24 = &v31;
      v21[4] = v15;
      v23 = v9;
      v25 = &v37;
      v16 = v8;
      v17 = *(a1 + 40);
      v22 = v16;
      v26 = v17;
      [v14 enumerateObjectsUsingBlock:v21];
    }

    else
    {
      v18 = diagcaseLogHandle(isKindOfClass);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        *buf = 138412802;
        v42 = v6;
        v43 = 2112;
        v44 = v20;
        v45 = 2114;
        v46 = v8;
        _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_ERROR, "Found unexpected pattern object %@ (class %@) when validating required attachments for type '%{public}@'", buf, 0x20u);
      }
    }
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);
}

void __37__DiagnosticCase_validateAttachments__block_invoke_185(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 containsString:*(*(a1[5] + 8) + 40)];
  if (v7)
  {
    v8 = diagcaseLogHandle(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = a1[4];
      v10 = 138412546;
      v11 = v9;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_INFO, "Validated attachment for type '%@': %@", &v10, 0x16u);
    }

    *(*(a1[6] + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __37__DiagnosticCase_validateAttachments__block_invoke_187(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    objc_storeStrong((*(a1[7] + 8) + 40), a2);
    v6 = [*(a1[4] + 112) enumerateObjectsUsingBlock:a1[6]];
    if ((*(*(a1[8] + 8) + 24) & 1) == 0)
    {
      v7 = diagcaseLogHandle(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = a1[5];
        v9 = *(*(a1[7] + 8) + 40);
        v14 = 138543618;
        v15 = v8;
        v16 = 2112;
        v17 = v9;
        _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEFAULT, "Missing attachment for type '%{public}@' (matching pattern '%@')", &v14, 0x16u);
      }

      *(*(a1[9] + 8) + 24) = 0;
    }
  }

  else
  {
    v10 = diagcaseLogHandle(isKindOfClass);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = a1[5];
      v14 = 138412802;
      v15 = v4;
      v16 = 2112;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "Found unexpected pattern object %@ (class %@) when validating required attachments for type '%{public}@'", &v14, 0x20u);
    }
  }
}

- (id)addSizeInfoForAttachment:(id)attachment
{
  v26 = *MEMORY[0x277D85DE8];
  attachmentCopy = attachment;
  v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:attachmentCopy];
  path = [v5 path];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v21 = 0;
  v8 = [defaultManager attributesOfItemAtPath:path error:&v21];
  v9 = v21;

  if (v9)
  {
    lastPathComponent = diagcaseLogHandle(v10);
    if (os_log_type_enabled(lastPathComponent, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v9 localizedDescription];
      *buf = 138412546;
      v23 = attachmentCopy;
      v24 = 2112;
      v25 = localizedDescription;
      _os_log_impl(&dword_241804000, lastPathComponent, OS_LOG_TYPE_ERROR, "DiagnosticCaseSummaryLog: Error getting fileSize for '%@': %@", buf, 0x16u);
    }

    v13 = &stru_285368168;
  }

  else
  {
    fileSize = [v8 fileSize];
    lastPathComponent = [attachmentCopy lastPathComponent];
    attachmentsWithSize = [(DiagnosticCase *)self attachmentsWithSize];

    if (!attachmentsWithSize)
    {
      v16 = objc_opt_new();
      [(DiagnosticCase *)self setAttachmentsWithSize:v16];
    }

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:fileSize];
    attachmentsWithSize2 = [(DiagnosticCase *)self attachmentsWithSize];
    [attachmentsWithSize2 setObject:v17 forKeyedSubscript:lastPathComponent];

    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%llu", fileSize];
    v19 = summaryLogHandle(v13);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v23 = attachmentCopy;
      v24 = 2048;
      v25 = fileSize;
      _os_log_impl(&dword_241804000, v19, OS_LOG_TYPE_INFO, "DiagnosticCaseSummaryLog: Adding attachment %@, size: %llu bytes", buf, 0x16u);
    }

    self->_attachmentsFileSize += fileSize;
  }

  return v13;
}

- (id)stringRepresentationOfAttachmentsWithSize
{
  attachmentsWithSize = [(DiagnosticCase *)self attachmentsWithSize];
  v3 = [DiagnosticCaseSummaryAnalytics stringRepresentationOfAttachmentsWithSize:attachmentsWithSize];

  return v3;
}

+ (id)generateCaseSummaryDictionaryFromCaseStorage:(id)storage
{
  v38[7] = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  context = objc_autoreleasePoolPush();
  timeStamp = [storageCopy timeStamp];
  v6 = [timeStamp copy];

  caseClosedTime = [storageCopy caseClosedTime];
  v8 = [caseClosedTime copy];

  v33 = v6;
  v32 = iso8601date_string_from_NSDate(v6);
  v31 = iso8601date_string_from_NSDate(v8);
  caseID = [storageCopy caseID];
  v10 = [caseID copy];
  [v4 setObject:v10 forKeyedSubscript:@"case_identifier"];

  v11 = [DiagnosticCase signatureForCaseStorage:storageCopy];
  [v4 setObject:v11 forKeyedSubscript:@"signature"];

  caseEvents = [storageCopy caseEvents];
  v13 = [DiagnosticCase _arrayObjectRepresentationOfJSONString:caseEvents];
  [v4 setObject:v13 forKeyedSubscript:@"events"];

  v37[0] = @"case_opened_timestamp";
  v14 = MEMORY[0x277CCABB0];
  [v6 timeIntervalSince1970];
  v15 = [v14 numberWithDouble:?];
  v38[0] = v15;
  v38[1] = v32;
  v37[1] = @"case_opened_time";
  v37[2] = @"case_closed_timestamp";
  v16 = MEMORY[0x277CCABB0];
  [v8 timeIntervalSince1970];
  v17 = [v16 numberWithDouble:?];
  v38[2] = v17;
  v38[3] = v31;
  v37[3] = @"case_closed_time";
  v37[4] = @"dampening_type";
  v18 = +[DiagnosticCase _caseDampeningTypeString:](DiagnosticCase, "_caseDampeningTypeString:", [storageCopy caseDampeningType]);
  v38[4] = v18;
  v37[5] = @"closure_type";
  v19 = +[DiagnosticCase _closureTypeString:](DiagnosticCase, "_closureTypeString:", [storageCopy caseClosureType]);
  v38[5] = v19;
  v37[6] = @"remote_trigger";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(storageCopy, "remoteTrigger")}];
  v38[6] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:7];
  [v4 setObject:v21 forKeyedSubscript:@"case_status"];

  caseAttachments = [storageCopy caseAttachments];
  v23 = [DiagnosticCase _arrayObjectRepresentationOfJSONString:caseAttachments];
  [v4 setObject:v23 forKeyedSubscript:@"attachments"];

  v24 = +[SystemProperties sharedInstance];
  v35[0] = @"product_type";
  productType = [v24 productType];
  v36[0] = productType;
  v35[1] = @"product_name";
  productName = [v24 productName];
  v36[1] = productName;
  v35[2] = @"product_version";
  productVersion = [v24 productVersion];
  v36[2] = productVersion;
  v35[3] = @"build_version";
  buildVersion = [v24 buildVersion];
  v36[3] = buildVersion;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:4];
  [v4 setObject:v29 forKeyedSubscript:@"system_properties"];

  objc_autoreleasePoolPop(context);

  return v4;
}

+ (id)generateCaseSummaryFromCaseStorageDictionary:(id)dictionary
{
  v59 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = objc_autoreleasePoolPush();
  v6 = [dictionaryCopy objectForKeyedSubscript:@"timeStamp"];
  v7 = [v6 copy];

  v8 = [dictionaryCopy objectForKeyedSubscript:@"caseClosedTime"];
  v9 = [v8 copy];

  if (v7)
  {
    if (!v9)
    {
      v11 = diagcaseLogHandle(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v58 = dictionaryCopy;
        _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_ERROR, "Fixing up case dictionary with missing key caseClosedTime: %@", buf, 0xCu);
      }

      v9 = v7;
    }

    context = v5;
    v12 = iso8601date_string_from_NSDate(v7);
    v13 = iso8601date_string_from_NSDate(v9);
    v14 = [dictionaryCopy objectForKeyedSubscript:@"caseID"];
    v15 = [v14 copy];
    [v4 setObject:v15 forKeyedSubscript:@"case_identifier"];

    v16 = [DiagnosticCase signatureForCaseStorageDictionary:dictionaryCopy];
    [v4 setObject:v16 forKeyedSubscript:@"signature"];

    v17 = [dictionaryCopy objectForKeyedSubscript:@"caseEvents"];
    v18 = [DiagnosticCase _arrayObjectRepresentationOfJSONString:v17];
    [v4 setObject:v18 forKeyedSubscript:@"events"];

    v55[0] = @"case_opened_timestamp";
    v19 = MEMORY[0x277CCABB0];
    v51 = v7;
    [v7 timeIntervalSince1970];
    v20 = [v19 numberWithDouble:?];
    v56[0] = v20;
    v56[1] = v12;
    v49 = v12;
    v55[1] = @"case_opened_time";
    v55[2] = @"case_closed_timestamp";
    v21 = MEMORY[0x277CCABB0];
    v50 = v9;
    [v9 timeIntervalSince1970];
    v22 = [v21 numberWithDouble:?];
    v56[2] = v22;
    v56[3] = v13;
    v48 = v13;
    v55[3] = @"case_closed_time";
    v55[4] = @"dampening_type";
    v23 = [dictionaryCopy objectForKeyedSubscript:@"caseDampeningType"];
    v24 = +[DiagnosticCase _caseDampeningTypeString:](DiagnosticCase, "_caseDampeningTypeString:", [v23 intValue]);
    v56[4] = v24;
    v55[5] = @"closure_type";
    v25 = [dictionaryCopy objectForKeyedSubscript:@"caseClosureType"];
    v26 = +[DiagnosticCase _closureTypeString:](DiagnosticCase, "_closureTypeString:", [v25 intValue]);
    v56[5] = v26;
    v55[6] = @"remote_trigger";
    v27 = [dictionaryCopy objectForKeyedSubscript:@"remoteTrigger"];
    v56[6] = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:7];
    [v4 setObject:v28 forKeyedSubscript:@"case_status"];

    v29 = [dictionaryCopy objectForKeyedSubscript:@"caseAttachments"];
    v30 = [DiagnosticCase _arrayObjectRepresentationOfJSONString:v29];
    [v4 setObject:v30 forKeyedSubscript:@"attachments"];

    v31 = [dictionaryCopy objectForKeyedSubscript:@"dpSubmissionState"];
    [v4 setObject:v31 forKeyedSubscript:@"dp_submission"];

    v32 = +[SystemProperties sharedInstance];
    v33 = [dictionaryCopy objectForKeyedSubscript:@"buildVariant"];
    v34 = v33;
    if (v33)
    {
      buildVariant = v33;
    }

    else
    {
      buildVariant = [v32 buildVariant];
    }

    v38 = buildVariant;

    v39 = [dictionaryCopy objectForKeyedSubscript:@"buildVersion"];
    v40 = v39;
    if (v39)
    {
      buildVersion = v39;
    }

    else
    {
      buildVersion = [v32 buildVersion];
    }

    v42 = buildVersion;

    v53[0] = @"product_type";
    productType = [v32 productType];
    v54[0] = productType;
    v53[1] = @"product_name";
    productName = [v32 productName];
    v54[1] = productName;
    v53[2] = @"product_version";
    productVersion = [v32 productVersion];
    v54[2] = productVersion;
    v54[3] = v42;
    v53[3] = @"build_version";
    v53[4] = @"build_variant";
    v54[4] = v38;
    v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:5];
    [v4 setObject:v46 forKeyedSubscript:@"system_properties"];

    objc_autoreleasePoolPop(context);
    v37 = v4;
  }

  else
  {
    v36 = diagcaseLogHandle(v10);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v58 = dictionaryCopy;
      _os_log_impl(&dword_241804000, v36, OS_LOG_TYPE_ERROR, "Missing required key timeStamp (case open time) from case dictionary: %@", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v37 = 0;
  }

  return v37;
}

- (id)_generateCaseSummaryDictionary
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  context = objc_autoreleasePoolPush();
  v4 = MEMORY[0x277CBEAA8];
  [(DiagnosticCase *)self caseOpenedTime];
  v5 = [v4 dateWithTimeIntervalSince1970:?];
  v57 = iso8601date_string_from_NSDate(v5);

  v6 = MEMORY[0x277CBEAA8];
  [(DiagnosticCase *)self caseClosedTime];
  v7 = [v6 dateWithTimeIntervalSince1970:?];
  v56 = iso8601date_string_from_NSDate(v7);

  caseId = [(DiagnosticCase *)self caseId];
  uUIDString = [caseId UUIDString];
  [v3 setObject:uUIDString forKeyedSubscript:@"case_identifier"];

  signature = [(DiagnosticCase *)self signature];
  [v3 setObject:signature forKeyedSubscript:@"signature"];

  events = [(DiagnosticCase *)self events];
  [v3 setObject:events forKeyedSubscript:@"events"];

  v53 = MEMORY[0x277CBEAC0];
  v12 = MEMORY[0x277CCABB0];
  [(DiagnosticCase *)self caseOpenedTime];
  v13 = [v12 numberWithDouble:?];
  v14 = MEMORY[0x277CCABB0];
  [(DiagnosticCase *)self caseClosedTime];
  v15 = [v14 numberWithDouble:?];
  caseDampeningTypeString = [(DiagnosticCase *)self caseDampeningTypeString];
  caseClosureTypeString = [(DiagnosticCase *)self caseClosureTypeString];
  v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[DiagnosticCase isRemoteTrigger](self, "isRemoteTrigger")}];
  v19 = [v53 dictionaryWithObjectsAndKeys:{v13, @"case_opened_timestamp", v57, @"case_opened_time", v15, @"case_closed_timestamp", v56, @"case_closed_time", caseDampeningTypeString, @"dampening_type", caseClosureTypeString, @"closure_type", v18, @"remote_trigger", 0}];
  [v3 setObject:v19 forKeyedSubscript:@"case_status"];

  attachments = [(DiagnosticCase *)self attachments];
  [v3 setObject:attachments forKeyedSubscript:@"attachments"];

  v21 = +[SystemProperties sharedInstance];
  v22 = +[WirelessTechnologyProfile sharedInstance];
  v51 = MEMORY[0x277CBEB38];
  productType = [v21 productType];
  productName = [v21 productName];
  productVersion = [v21 productVersion];
  buildVersion = [v21 buildVersion];
  buildVariant = [v21 buildVariant];
  regulatoryDomainCountry = [v22 regulatoryDomainCountry];
  v54 = v22;
  homeCarrier = [v22 homeCarrier];
  v28 = [v51 dictionaryWithObjectsAndKeys:{productType, @"product_type", productName, @"product_name", productVersion, @"product_version", buildVersion, @"build_version", buildVariant, @"build_variant", regulatoryDomainCountry, @"regulatory_domain_country", homeCarrier, @"home_carrier", 0}];

  serialNumber = [v21 serialNumber];
  v30 = [serialNumber length];

  if (v30)
  {
    serialNumber2 = [v21 serialNumber];
    [v28 setObject:serialNumber2 forKeyedSubscript:@"serial_number"];
  }

  [v3 setObject:v28 forKeyedSubscript:@"system_properties"];
  v32 = +[PrimaryInterfaceUtils sharedInstance];
  v33 = diagcaseLogHandle(v32);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    primaryInterfaceType = [v32 primaryInterfaceType];
    interfaceBecamePrimaryDate = [v32 interfaceBecamePrimaryDate];
    hasPrimaryInterface = [v32 hasPrimaryInterface];
    v37 = "NO";
    *buf = 134218498;
    v59 = primaryInterfaceType;
    if (hasPrimaryInterface)
    {
      v37 = "YES";
    }

    v60 = 2112;
    v61 = interfaceBecamePrimaryDate;
    v62 = 2080;
    v63 = v37;
    _os_log_impl(&dword_241804000, v33, OS_LOG_TYPE_DEBUG, "InterfaceUtils reports type:%ld date:%@ hasPrimary:%s", buf, 0x20u);
  }

  v52 = v28;

  if ([v32 hasPrimaryInterface])
  {
    primaryInterfaceTypeString = [v32 primaryInterfaceTypeString];
    interfaceBecamePrimaryDate2 = [v32 interfaceBecamePrimaryDate];
    v40 = MEMORY[0x277CCABB0];
    [interfaceBecamePrimaryDate2 timeIntervalSince1970];
    v41 = [v40 numberWithDouble:?];
    if (interfaceBecamePrimaryDate2)
    {
      v42 = iso8601date_string_from_NSDate(interfaceBecamePrimaryDate2);
    }

    else
    {
      v42 = 0;
    }

    estimatedInterfaceBecamePrimaryDate = [v32 estimatedInterfaceBecamePrimaryDate];
    v46 = MEMORY[0x277CCABB0];
    [estimatedInterfaceBecamePrimaryDate timeIntervalSince1970];
    v43 = [v46 numberWithDouble:?];
    if (estimatedInterfaceBecamePrimaryDate)
    {
      v44 = iso8601date_string_from_NSDate(estimatedInterfaceBecamePrimaryDate);
    }

    else
    {
      v44 = 0;
    }
  }

  else
  {
    v43 = 0;
    v42 = 0;
    v44 = 0;
    v41 = 0;
    primaryInterfaceTypeString = @"None";
  }

  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{primaryInterfaceTypeString, @"primary_interface_type", v41, @"primary_interface_timestamp", v42, @"primary_interface_time", v43, @"primary_interface_timestamp_estimated", v44, @"primary_interface_time_estimated", 0}];
  [v3 setObject:v47 forKeyedSubscript:@"network_properties"];

  objc_autoreleasePoolPop(context);

  return v3;
}

- (id)_caseSummaryFileName
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setDateFormat:@"yyyy-MM-dd_HH-mm-ss"];
  v4 = MEMORY[0x277CBEAA8];
  [(DiagnosticCase *)self caseOpenedTime];
  v5 = [v4 dateWithTimeIntervalSince1970:?];
  v6 = [v3 stringFromDate:v5];

  if (![v6 length])
  {
    v7 = diagcaseLogHandle(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(DiagnosticCase *)self caseOpenedTime];
      *buf = 134217984;
      v19 = v8;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_ERROR, "formattedDate is nil for case opened time %f", buf, 0xCu);
    }

    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    [(DiagnosticCase *)self caseOpenedTime];
    v11 = [v9 initWithFormat:@"%.3f", v10];

    v6 = v11;
  }

  manager = [(DiagnosticCase *)self manager];
  configManager = [manager configManager];
  logArchivePath = [configManager logArchivePath];
  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"case_summary_%@.json", v6];
  v16 = [logArchivePath stringByAppendingPathComponent:v15];

  return v16;
}

- (void)summarizeCaseReport
{
  v23 = *MEMORY[0x277D85DE8];
  caseStorage = [(DiagnosticCase *)self caseStorage];
  caseDampeningType = [caseStorage caseDampeningType];

  if (caseDampeningType < 1)
  {
    _generateCaseSummaryDictionary = [(DiagnosticCase *)self _generateCaseSummaryDictionary];
    if (!_generateCaseSummaryDictionary)
    {
      caseId = diagcaseLogHandle(0);
      if (os_log_type_enabled(caseId, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_241804000, caseId, OS_LOG_TYPE_ERROR, "Case summary dictionary is nil", buf, 2u);
      }

      goto LABEL_23;
    }

    caseId = [DiagnosticCase _stringRepresentationOfJSONObject:_generateCaseSummaryDictionary prettyPrint:1];
    if ([caseId length])
    {
      _caseSummaryFileName = [(DiagnosticCase *)self _caseSummaryFileName];
      if (_caseSummaryFileName)
      {
        v18 = 0;
        v13 = [caseId writeToFile:_caseSummaryFileName atomically:0 encoding:4 error:&v18];
        v14 = v18;
        v15 = v14;
        if (v13)
        {
          v16 = diagcaseLogHandle([(DiagnosticCase *)self fixupCaseSummaryFile:_caseSummaryFileName]);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v20 = _caseSummaryFileName;
            _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_DEBUG, "Case summary wrote to %@, adding to attachment", buf, 0xCu);
          }

          [(DiagnosticCase *)self _addToAttachments:_caseSummaryFileName];
          [(DiagnosticCase *)self setCaseSummaryFilepath:_caseSummaryFileName];
        }

        else
        {
          v17 = diagcaseLogHandle(v14);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v20 = v15;
            _os_log_impl(&dword_241804000, v17, OS_LOG_TYPE_ERROR, "Writing of case summary failed with error %@", buf, 0xCu);
          }
        }
      }

      else
      {
        v15 = diagcaseLogHandle(0);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_ERROR, "Case summary file name is nil", buf, 2u);
        }
      }

      goto LABEL_22;
    }

    _caseSummaryFileName = diagcaseLogHandle(0);
    if (!os_log_type_enabled(_caseSummaryFileName, OS_LOG_TYPE_ERROR))
    {
LABEL_22:

LABEL_23:
      goto LABEL_24;
    }

    *buf = 138412290;
    v20 = _generateCaseSummaryDictionary;
    v9 = "Pretty case summary is empty (case summary dict = %@)";
    v10 = _caseSummaryFileName;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 12;
LABEL_4:
    _os_log_impl(&dword_241804000, v10, v11, v9, buf, v12);
    goto LABEL_22;
  }

  _generateCaseSummaryDictionary = diagcaseLogHandle(v5);
  if (os_log_type_enabled(_generateCaseSummaryDictionary, OS_LOG_TYPE_INFO))
  {
    caseId = [(DiagnosticCase *)self caseId];
    _caseSummaryFileName = [(DiagnosticCase *)self caseDampeningTypeString];
    *buf = 138543618;
    v20 = caseId;
    v21 = 2112;
    v22 = _caseSummaryFileName;
    v9 = "Skip creating a case summary for %{public}@ (dampening = %@)";
    v10 = _generateCaseSummaryDictionary;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 22;
    goto LABEL_4;
  }

LABEL_24:
}

- (void)fixupCaseSummaryFile:(id)file
{
  v41 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  uTF8String = [fileCopy UTF8String];
  if (uTF8String)
  {
    v5 = uTF8String;
    v6 = +[ABCAdministrator sharedInstance];
    configurationManager = [v6 configurationManager];

    v8 = chown(v5, [configurationManager logArchiveUID], [configurationManager logArchiveGID]);
    if (v8)
    {
      v9 = diagcaseLogHandle(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = getuid();
        v11 = getgid();
        v12 = *__error();
        *buf = 136315906;
        v37 = v5;
        v38 = 1024;
        *v39 = v10;
        *&v39[4] = 1024;
        *&v39[6] = v11;
        LOWORD(v40[0]) = 1024;
        *(v40 + 2) = v12;
        _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_ERROR, "failed to chown for file: %s, uid: %u, gid: %u  %{errno}d", buf, 0x1Eu);
      }
    }

    v13 = listxattr(v5, 0, 0, 1);
    v14 = malloc_type_malloc(v13, 0xD3A248F3uLL);
    if (v14)
    {
      v15 = v14;
      v16 = listxattr(v5, v14, v13, 1);
      v29 = configurationManager;
      v30 = fileCopy;
      if (v16)
      {
        v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v15 length:v16 encoding:4];
        v16 = [v17 componentsSeparatedByString:&stru_28536C928];
      }

      free(v15);
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v18 = v16;
      v19 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v32;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v32 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v31 + 1) + 8 * i);
            if ([v23 length])
            {
              uTF8String2 = [v23 UTF8String];
              if (uTF8String2)
              {
                v25 = uTF8String2;
                v26 = removexattr(v5, uTF8String2, 1);
                if (v26)
                {
                  v27 = diagcaseLogHandle(v26);
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                  {
                    v28 = *__error();
                    *buf = 136315650;
                    v37 = v25;
                    v38 = 2080;
                    *v39 = v5;
                    *&v39[8] = 1024;
                    v40[0] = v28;
                    _os_log_impl(&dword_241804000, v27, OS_LOG_TYPE_ERROR, "failed to removexattr %s for file: %s, %{errno}d", buf, 0x1Cu);
                  }
                }
              }
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v20);
      }

      configurationManager = v29;
      fileCopy = v30;
    }
  }

  else
  {
    configurationManager = diagcaseLogHandle(0);
    if (os_log_type_enabled(configurationManager, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = fileCopy;
      _os_log_impl(&dword_241804000, configurationManager, OS_LOG_TYPE_ERROR, "failed to get UTF8 string for %@", buf, 0xCu);
    }
  }
}

- (void)recordDiagnosticCaseSummary
{
  manager = [(DiagnosticCase *)self manager];
  configManager = [manager configManager];
  caseSummaryEnabled = [configManager caseSummaryEnabled];

  if (caseSummaryEnabled)
  {
    manager2 = [(DiagnosticCase *)self manager];
    [manager2 recordDiagnosticCaseSummaryForCase:self];
  }
}

- (BOOL)sendReports
{
  caseStorage = [(DiagnosticCase *)self caseStorage];
  caseState = [caseStorage caseState];

  if (caseState == 5)
  {
    manager = [(DiagnosticCase *)self manager];
    v6 = [manager sendReportsForCase:self];
  }

  else
  {
    v6 = 1;
  }

  [(DiagnosticCase *)self setCaseState:6];
  return v6;
}

- (BOOL)_parseSignatureIntoCaseStorage:(id)storage
{
  storageCopy = storage;
  if (storageCopy && ([(DiagnosticCase *)self caseStorage], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [storageCopy objectForKeyedSubscript:@"domain"];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        caseStorage = [(DiagnosticCase *)self caseStorage];
        [caseStorage setCaseDomain:v6];
      }
    }

    v8 = [storageCopy objectForKeyedSubscript:@"type"];

    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        caseStorage2 = [(DiagnosticCase *)self caseStorage];
        [caseStorage2 setCaseType:v8];
      }
    }

    v10 = [storageCopy objectForKeyedSubscript:@"subtype"];

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        caseStorage3 = [(DiagnosticCase *)self caseStorage];
        [caseStorage3 setCaseSubtype:v10];
      }
    }

    v12 = [storageCopy objectForKeyedSubscript:@"additional"];

    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        caseStorage4 = [(DiagnosticCase *)self caseStorage];
        [caseStorage4 setCaseSubtypeContext:v12];
      }
    }

    v14 = [storageCopy objectForKeyedSubscript:@"detected"];

    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        caseStorage5 = [(DiagnosticCase *)self caseStorage];
        [caseStorage5 setCaseDetectedProcess:v14];
      }
    }

    v16 = [storageCopy objectForKeyedSubscript:@"effective"];

    if (v16)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        caseStorage6 = [(DiagnosticCase *)self caseStorage];
        [caseStorage6 setCaseEffectiveProcess:v16];
      }
    }

    v18 = [storageCopy objectForKeyedSubscript:@"related"];

    if (v18)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        caseStorage7 = [(DiagnosticCase *)self caseStorage];
        [caseStorage7 setCaseRelatedProcesses:v18];
      }
    }

    v20 = [storageCopy objectForKeyedSubscript:@"threshval"];

    if (v20)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        caseStorage8 = [(DiagnosticCase *)self caseStorage];
        [caseStorage8 setCaseThresholdValues:v20];
      }
    }

    v22 = [storageCopy objectForKeyedSubscript:@"context"];

    if (v22)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        caseStorage9 = [(DiagnosticCase *)self caseStorage];
        [caseStorage9 setCaseContext:v22];
      }
    }

    v24 = [storageCopy objectForKeyedSubscript:@"groupID"];

    if (v24)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        caseStorage10 = [(DiagnosticCase *)self caseStorage];
        [caseStorage10 setCaseGroupID:v24];
      }
    }

    v26 = 1;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (BOOL)_parseCaseStorageIntoSignature:(id)signature
{
  signatureCopy = signature;
  if (signatureCopy && ([(DiagnosticCase *)self caseStorage], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    caseStorage = [(DiagnosticCase *)self caseStorage];
    caseDomain = [caseStorage caseDomain];

    if (caseDomain)
    {
      caseStorage2 = [(DiagnosticCase *)self caseStorage];
      caseDomain2 = [caseStorage2 caseDomain];
      [signatureCopy setObject:caseDomain2 forKeyedSubscript:@"domain"];
    }

    caseStorage3 = [(DiagnosticCase *)self caseStorage];
    caseType = [caseStorage3 caseType];

    if (caseType)
    {
      caseStorage4 = [(DiagnosticCase *)self caseStorage];
      caseType2 = [caseStorage4 caseType];
      [signatureCopy setObject:caseType2 forKeyedSubscript:@"type"];
    }

    caseStorage5 = [(DiagnosticCase *)self caseStorage];
    caseSubtype = [caseStorage5 caseSubtype];

    if (caseSubtype)
    {
      caseStorage6 = [(DiagnosticCase *)self caseStorage];
      caseSubtype2 = [caseStorage6 caseSubtype];
      [signatureCopy setObject:caseSubtype2 forKeyedSubscript:@"subtype"];
    }

    caseStorage7 = [(DiagnosticCase *)self caseStorage];
    caseSubtypeContext = [caseStorage7 caseSubtypeContext];

    if (caseSubtypeContext)
    {
      caseStorage8 = [(DiagnosticCase *)self caseStorage];
      caseSubtypeContext2 = [caseStorage8 caseSubtypeContext];
      [signatureCopy setObject:caseSubtypeContext2 forKeyedSubscript:@"additional"];
    }

    caseStorage9 = [(DiagnosticCase *)self caseStorage];
    caseDetectedProcess = [caseStorage9 caseDetectedProcess];

    if (caseDetectedProcess)
    {
      caseStorage10 = [(DiagnosticCase *)self caseStorage];
      caseDetectedProcess2 = [caseStorage10 caseDetectedProcess];
      [signatureCopy setObject:caseDetectedProcess2 forKeyedSubscript:@"detected"];
    }

    caseStorage11 = [(DiagnosticCase *)self caseStorage];
    caseEffectiveProcess = [caseStorage11 caseEffectiveProcess];

    if (caseEffectiveProcess)
    {
      caseStorage12 = [(DiagnosticCase *)self caseStorage];
      caseEffectiveProcess2 = [caseStorage12 caseEffectiveProcess];
      [signatureCopy setObject:caseEffectiveProcess2 forKeyedSubscript:@"effective"];
    }

    caseStorage13 = [(DiagnosticCase *)self caseStorage];
    caseRelatedProcesses = [caseStorage13 caseRelatedProcesses];

    if (caseRelatedProcesses)
    {
      caseStorage14 = [(DiagnosticCase *)self caseStorage];
      caseRelatedProcesses2 = [caseStorage14 caseRelatedProcesses];
      [signatureCopy setObject:caseRelatedProcesses2 forKeyedSubscript:@"related"];
    }

    caseStorage15 = [(DiagnosticCase *)self caseStorage];
    caseThresholdValues = [caseStorage15 caseThresholdValues];

    if (caseThresholdValues)
    {
      caseStorage16 = [(DiagnosticCase *)self caseStorage];
      caseThresholdValues2 = [caseStorage16 caseThresholdValues];
      [signatureCopy setObject:caseThresholdValues2 forKeyedSubscript:@"threshval"];
    }

    caseStorage17 = [(DiagnosticCase *)self caseStorage];
    caseContext = [caseStorage17 caseContext];

    if (caseContext)
    {
      caseStorage18 = [(DiagnosticCase *)self caseStorage];
      caseContext2 = [caseStorage18 caseContext];
      [signatureCopy setObject:caseContext2 forKeyedSubscript:@"context"];
    }

    caseStorage19 = [(DiagnosticCase *)self caseStorage];
    caseGroupID = [caseStorage19 caseGroupID];

    if (caseGroupID)
    {
      caseStorage20 = [(DiagnosticCase *)self caseStorage];
      caseGroupID2 = [caseStorage20 caseGroupID];
      [signatureCopy setObject:caseGroupID2 forKeyedSubscript:@"groupID"];
    }

    v46 = 1;
  }

  else
  {
    v46 = 0;
  }

  return v46;
}

+ (id)signatureForCaseStorage:(id)storage
{
  storageCopy = storage;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = v4;
  v6 = 0;
  if (storageCopy && v4)
  {
    caseDomain = [storageCopy caseDomain];

    if (caseDomain)
    {
      caseDomain2 = [storageCopy caseDomain];
      v9 = [caseDomain2 copy];
      [v5 setObject:v9 forKeyedSubscript:@"domain"];
    }

    caseType = [storageCopy caseType];

    if (caseType)
    {
      caseType2 = [storageCopy caseType];
      v12 = [caseType2 copy];
      [v5 setObject:v12 forKeyedSubscript:@"type"];
    }

    caseSubtype = [storageCopy caseSubtype];

    if (caseSubtype)
    {
      caseSubtype2 = [storageCopy caseSubtype];
      v15 = [caseSubtype2 copy];
      [v5 setObject:v15 forKeyedSubscript:@"subtype"];
    }

    caseSubtypeContext = [storageCopy caseSubtypeContext];

    if (caseSubtypeContext)
    {
      caseSubtypeContext2 = [storageCopy caseSubtypeContext];
      v18 = [caseSubtypeContext2 copy];
      [v5 setObject:v18 forKeyedSubscript:@"additional"];
    }

    caseDetectedProcess = [storageCopy caseDetectedProcess];

    if (caseDetectedProcess)
    {
      caseDetectedProcess2 = [storageCopy caseDetectedProcess];
      v21 = [caseDetectedProcess2 copy];
      [v5 setObject:v21 forKeyedSubscript:@"detected"];
    }

    caseEffectiveProcess = [storageCopy caseEffectiveProcess];

    if (caseEffectiveProcess)
    {
      caseEffectiveProcess2 = [storageCopy caseEffectiveProcess];
      v24 = [caseEffectiveProcess2 copy];
      [v5 setObject:v24 forKeyedSubscript:@"effective"];
    }

    caseRelatedProcesses = [storageCopy caseRelatedProcesses];

    if (caseRelatedProcesses)
    {
      caseRelatedProcesses2 = [storageCopy caseRelatedProcesses];
      v27 = [caseRelatedProcesses2 copy];
      [v5 setObject:v27 forKeyedSubscript:@"related"];
    }

    caseThresholdValues = [storageCopy caseThresholdValues];

    if (caseThresholdValues)
    {
      caseThresholdValues2 = [storageCopy caseThresholdValues];
      v30 = [caseThresholdValues2 copy];
      [v5 setObject:v30 forKeyedSubscript:@"threshval"];
    }

    caseContext = [storageCopy caseContext];

    if (caseContext)
    {
      caseContext2 = [storageCopy caseContext];
      v33 = [caseContext2 copy];
      [v5 setObject:v33 forKeyedSubscript:@"context"];
    }

    caseGroupID = [storageCopy caseGroupID];

    if (caseGroupID)
    {
      caseGroupID2 = [storageCopy caseGroupID];
      v36 = [caseGroupID2 copy];
      [v5 setObject:v36 forKeyedSubscript:@"groupID"];
    }

    v6 = v5;
  }

  return v6;
}

+ (id)signatureForCaseStorageDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = v4;
  v6 = 0;
  if (dictionaryCopy && v4)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"caseDomain"];

    if (v7)
    {
      v8 = [dictionaryCopy objectForKeyedSubscript:@"caseDomain"];
      v9 = [v8 copy];
      [v5 setObject:v9 forKeyedSubscript:@"domain"];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"caseType"];

    if (v10)
    {
      v11 = [dictionaryCopy objectForKeyedSubscript:@"caseType"];
      v12 = [v11 copy];
      [v5 setObject:v12 forKeyedSubscript:@"type"];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"caseSubtype"];

    if (v13)
    {
      v14 = [dictionaryCopy objectForKeyedSubscript:@"caseSubtype"];
      v15 = [v14 copy];
      [v5 setObject:v15 forKeyedSubscript:@"subtype"];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"caseSubtypeContext"];

    if (v16)
    {
      v17 = [dictionaryCopy objectForKeyedSubscript:@"caseSubtypeContext"];
      v18 = [v17 copy];
      [v5 setObject:v18 forKeyedSubscript:@"additional"];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"caseDetectedProcess"];

    if (v19)
    {
      v20 = [dictionaryCopy objectForKeyedSubscript:@"caseDetectedProcess"];
      v21 = [v20 copy];
      [v5 setObject:v21 forKeyedSubscript:@"detected"];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"caseEffectiveProcess"];

    if (v22)
    {
      v23 = [dictionaryCopy objectForKeyedSubscript:@"caseEffectiveProcess"];
      v24 = [v23 copy];
      [v5 setObject:v24 forKeyedSubscript:@"effective"];
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"caseRelatedProcesses"];

    if (v25)
    {
      v26 = [dictionaryCopy objectForKeyedSubscript:@"caseRelatedProcesses"];
      v27 = [v26 copy];
      [v5 setObject:v27 forKeyedSubscript:@"related"];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"caseThresholdValues"];

    if (v28)
    {
      v29 = [dictionaryCopy objectForKeyedSubscript:@"caseThresholdValues"];
      v30 = [v29 copy];
      [v5 setObject:v30 forKeyedSubscript:@"threshval"];
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"caseContext"];

    if (v31)
    {
      v32 = [dictionaryCopy objectForKeyedSubscript:@"caseContext"];
      v33 = [v32 copy];
      [v5 setObject:v33 forKeyedSubscript:@"context"];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"caseGroupID"];

    if (v34)
    {
      v35 = [dictionaryCopy objectForKeyedSubscript:@"caseGroupID"];
      v36 = [v35 copy];
      [v5 setObject:v36 forKeyedSubscript:@"groupID"];
    }

    v6 = v5;
  }

  return v6;
}

+ (id)descriptionForClosureType:(signed __int16)type
{
  if (type >= 6)
  {
    type = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"ClosureTypeUnknown: %d", type];
  }

  else
  {
    type = off_278CF2110[type];
  }

  return type;
}

+ (id)descriptionForDampeningType:(signed __int16)type
{
  if ((type + 2) >= 0xB)
  {
    type = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"DampeningTypeUnknown: %d", type];
  }

  else
  {
    type = off_278CF2140[(type + 2)];
  }

  return type;
}

- (void)markAttachmentsAsPurgeable:(BOOL)purgeable urgency:(unint64_t)urgency
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = 0x10000;
  if (!purgeable)
  {
    v5 = 0;
  }

  v22 = v5 | urgency | 5;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  attachments = [(DiagnosticCase *)self attachments];
  v8 = [attachments countByEnumeratingWithState:&v18 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(attachments);
        }

        v12 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:*(*(&v18 + 1) + 8 * i)];
        path = [v12 path];
        v14 = [defaultManager fileExistsAtPath:path];

        if (v14)
        {
          v15 = fsctl([v12 fileSystemRepresentation], 0xC0084A44uLL, &v22, 0);
          if (v15)
          {
            v16 = v15;
            v17 = storageLogHandle(v15);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v24 = v12;
              v25 = 1024;
              v26 = v16;
              _os_log_impl(&dword_241804000, v17, OS_LOG_TYPE_ERROR, "Failed to mark ABC file purgeable: %{public}@, %{errno}d", buf, 0x12u);
            }
          }
        }
      }

      v9 = [attachments countByEnumeratingWithState:&v18 objects:v27 count:16];
    }

    while (v9);
  }
}

@end