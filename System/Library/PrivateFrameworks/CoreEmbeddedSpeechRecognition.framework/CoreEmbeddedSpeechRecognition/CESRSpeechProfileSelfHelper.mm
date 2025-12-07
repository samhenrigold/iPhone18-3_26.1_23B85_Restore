@interface CESRSpeechProfileSelfHelper
+ (id)_cleanupMetricsWithIsIngestionEnabled:(BOOL)enabled numEntitiesContainingEmoji:(unsigned int)emoji numEntitiesContainingSpecialCharacters:(unsigned int)characters numEntitiesCleaned:(unsigned int)cleaned;
+ (id)_extractionMetricsWithIsIngestionEnabled:(BOOL)enabled isExtractionSetupSuccessful:(BOOL)successful numEntitiesExtractionAttempted:(unsigned int)attempted numEntitiesContainingExtractions:(unsigned int)extractions numEntitiesExtracted:(unsigned int)extracted;
- (CESRSpeechProfileSelfHelper)init;
- (void)logASRSpeechProfileUpdateEndedWithTotalNumEntitiesReceived:(unsigned int)received entityCleanupMetrics:(id)metrics entityExtractionMetrics:(id)extractionMetrics;
- (void)logASRSpeechProfileUpdateEndedWithUserDataMetrics:(id)metrics;
- (void)logASRSpeechProfileUpdateFailedWithReason:(int)reason;
- (void)logASRSpeechProfileUpdateStarted;
- (void)wrapAndEmitTopLevelEvent:(id)event;
@end

@implementation CESRSpeechProfileSelfHelper

- (void)wrapAndEmitTopLevelEvent:(id)event
{
  v19 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = objc_alloc_init(MEMORY[0x277D56AC0]);
  v6 = [objc_alloc(MEMORY[0x277D5AC78]) initWithNSUUID:self->_componentId];
  [v5 setSpeechProfileId:v6];
  v7 = objc_alloc_init(MEMORY[0x277D56AB8]);
  [v7 setEventMetadata:v5];
  [v7 setSpeechProfileUpdateContext:eventCopy];
  v8 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
  {
    v12 = v8;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = 136315394;
    v16 = "[CESRSpeechProfileSelfHelper wrapAndEmitTopLevelEvent:]";
    v17 = 2112;
    v18 = v14;
    _os_log_debug_impl(&dword_225EEB000, v12, OS_LOG_TYPE_DEBUG, "%s SELF: Wrapping and logging an event of type %@", &v15, 0x16u);
  }

  mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedAnalytics];
  defaultMessageStream = [mEMORY[0x277D552C0] defaultMessageStream];
  uUID = [MEMORY[0x277CCAD78] UUID];
  [defaultMessageStream emitMessage:v7 isolatedStreamUUID:uUID];
}

- (void)logASRSpeechProfileUpdateFailedWithReason:(int)reason
{
  v3 = *&reason;
  v6 = objc_alloc_init(MEMORY[0x277D56AE8]);
  [v6 setSpeechProfileUpdateFailureReason:v3];
  v5 = objc_alloc_init(MEMORY[0x277D56AD8]);
  [v5 setFailed:v6];
  [(CESRSpeechProfileSelfHelper *)self wrapAndEmitTopLevelEvent:v5];
}

- (void)logASRSpeechProfileUpdateEndedWithUserDataMetrics:(id)metrics
{
  metricsCopy = metrics;
  v7 = +[CESRSpeechProfileSelfHelper _cleanupMetricsWithIsIngestionEnabled:numEntitiesContainingEmoji:numEntitiesContainingSpecialCharacters:numEntitiesCleaned:](CESRSpeechProfileSelfHelper, "_cleanupMetricsWithIsIngestionEnabled:numEntitiesContainingEmoji:numEntitiesContainingSpecialCharacters:numEntitiesCleaned:", [metricsCopy isCleanupIngestionEnabled], objc_msgSend(metricsCopy, "numEntitiesContainingEmoji"), objc_msgSend(metricsCopy, "numEntitiesContainingSpecialCharacters"), objc_msgSend(metricsCopy, "numEntitiesCleaned"));
  v5 = +[CESRSpeechProfileSelfHelper _extractionMetricsWithIsIngestionEnabled:isExtractionSetupSuccessful:numEntitiesExtractionAttempted:numEntitiesContainingExtractions:numEntitiesExtracted:](CESRSpeechProfileSelfHelper, "_extractionMetricsWithIsIngestionEnabled:isExtractionSetupSuccessful:numEntitiesExtractionAttempted:numEntitiesContainingExtractions:numEntitiesExtracted:", [metricsCopy isExtractionIngestionEnabled], objc_msgSend(metricsCopy, "isExtractionSetupSuccessful"), objc_msgSend(metricsCopy, "numEntitiesExtractionAttempted"), objc_msgSend(metricsCopy, "numEntitiesContainingExtractions"), objc_msgSend(metricsCopy, "numEntitiesExtracted"));
  totalNumEntitiesReceived = [metricsCopy totalNumEntitiesReceived];

  [(CESRSpeechProfileSelfHelper *)self logASRSpeechProfileUpdateEndedWithTotalNumEntitiesReceived:totalNumEntitiesReceived entityCleanupMetrics:v7 entityExtractionMetrics:v5];
}

- (void)logASRSpeechProfileUpdateEndedWithTotalNumEntitiesReceived:(unsigned int)received entityCleanupMetrics:(id)metrics entityExtractionMetrics:(id)extractionMetrics
{
  v6 = *&received;
  v8 = MEMORY[0x277D56AE0];
  extractionMetricsCopy = extractionMetrics;
  metricsCopy = metrics;
  v12 = objc_alloc_init(v8);
  [v12 setTotalNumEntitiesReceived:v6];
  [v12 setEntityCleanupMetrics:metricsCopy];

  [v12 setEntityExtractionMetrics:extractionMetricsCopy];
  v11 = objc_alloc_init(MEMORY[0x277D56AD8]);
  [v11 setEnded:v12];
  [(CESRSpeechProfileSelfHelper *)self wrapAndEmitTopLevelEvent:v11];
}

- (void)logASRSpeechProfileUpdateStarted
{
  v4 = objc_alloc_init(MEMORY[0x277D56AF0]);
  [v4 setExists:1];
  v3 = objc_alloc_init(MEMORY[0x277D56AD8]);
  [v3 setStartedOrChanged:v4];
  [(CESRSpeechProfileSelfHelper *)self wrapAndEmitTopLevelEvent:v3];
}

- (CESRSpeechProfileSelfHelper)init
{
  v6.receiver = self;
  v6.super_class = CESRSpeechProfileSelfHelper;
  v2 = [(CESRSpeechProfileSelfHelper *)&v6 init];
  if (v2)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    componentId = v2->_componentId;
    v2->_componentId = uUID;
  }

  return v2;
}

+ (id)_extractionMetricsWithIsIngestionEnabled:(BOOL)enabled isExtractionSetupSuccessful:(BOOL)successful numEntitiesExtractionAttempted:(unsigned int)attempted numEntitiesContainingExtractions:(unsigned int)extractions numEntitiesExtracted:(unsigned int)extracted
{
  v7 = *&extracted;
  v8 = *&extractions;
  v9 = *&attempted;
  successfulCopy = successful;
  enabledCopy = enabled;
  v12 = objc_alloc_init(MEMORY[0x277D56AD0]);
  [v12 setIsExtractionIngestionEnabled:enabledCopy];
  [v12 setIsExtractionSetupSuccessful:successfulCopy];
  [v12 setNumEntitiesExtractionAttempted:v9];
  [v12 setNumEntitiesContainingExtractions:v8];
  [v12 setNumEntitiesExtracted:v7];

  return v12;
}

+ (id)_cleanupMetricsWithIsIngestionEnabled:(BOOL)enabled numEntitiesContainingEmoji:(unsigned int)emoji numEntitiesContainingSpecialCharacters:(unsigned int)characters numEntitiesCleaned:(unsigned int)cleaned
{
  v6 = *&cleaned;
  v7 = *&characters;
  v8 = *&emoji;
  enabledCopy = enabled;
  v10 = objc_alloc_init(MEMORY[0x277D56AC8]);
  [v10 setIsCleanupIngestionEnabled:enabledCopy];
  [v10 setNumEntitiesContainingEmoji:v8];
  [v10 setNumEntitiesContainingSpecialCharacters:v7];
  [v10 setNumEntitiesCleaned:v6];

  return v10;
}

@end