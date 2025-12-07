@interface LBPluginBitacoraHandler
+ (BOOL)emitPerformTrialTaskEvent:(id)event succeeded:(BOOL)succeeded error:(id)error;
+ (BOOL)emitStopEvent:(id)event succeeded:(BOOL)succeeded error:(id)error;
@end

@implementation LBPluginBitacoraHandler

+ (BOOL)emitPerformTrialTaskEvent:(id)event succeeded:(BOOL)succeeded error:(id)error
{
  succeededCopy = succeeded;
  errorCopy = error;
  eventCopy = event;
  v9 = +[LBFEventManager sharedInstance];
  v10 = [LBFTrialIdentifiers alloc];
  experimentId = [eventCopy experimentId];
  deploymentId = [eventCopy deploymentId];
  treatmentId = [eventCopy treatmentId];

  v14 = [v10 initWithExperimentID:experimentId deploymentID:deploymentId treatmentID:treatmentId];
  v15 = [[LBFLighthouseEvent alloc] initWithPerformTrialTaskStatus:succeededCopy error:errorCopy usePrivateUpload:0];

  v17 = 0;
  LOBYTE(errorCopy) = [v9 addLighthousePluginEvent:v15 identifiers:v14 error:&v17];

  return errorCopy;
}

+ (BOOL)emitStopEvent:(id)event succeeded:(BOOL)succeeded error:(id)error
{
  succeededCopy = succeeded;
  errorCopy = error;
  eventCopy = event;
  v9 = +[LBFEventManager sharedInstance];
  v10 = [LBFTrialIdentifiers alloc];
  experimentId = [eventCopy experimentId];
  deploymentId = [eventCopy deploymentId];
  treatmentId = [eventCopy treatmentId];

  v14 = [v10 initWithExperimentID:experimentId deploymentID:deploymentId treatmentID:treatmentId];
  v15 = [[LBFLighthouseEvent alloc] initWithStop:succeededCopy error:errorCopy];

  v17 = 0;
  LOBYTE(errorCopy) = [v9 addLighthousePluginEvent:v15 identifiers:v14 error:&v17];

  return errorCopy;
}

@end