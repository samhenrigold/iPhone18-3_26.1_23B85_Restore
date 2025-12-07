@interface HMIFeedback
+ (void)submitFeedbackWithCameraProfileUUID:(id)d clipUUID:(id)iD runRemotely:(BOOL)remotely completionHandler:(id)handler;
@end

@implementation HMIFeedback

+ (void)submitFeedbackWithCameraProfileUUID:(id)d clipUUID:(id)iD runRemotely:(BOOL)remotely completionHandler:(id)handler
{
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  if (remotely)
  {
    +[HMITaskService taskServiceClient];
  }

  else
  {
    +[HMITaskService taskService];
  }
  v13 = ;
  v15 = MEMORY[0x277D85DD0];
  v16 = handlerCopy;
  v14 = handlerCopy;
  [v13 submitTaskWithOptions:v15 progressHandler:3221225472 completionHandler:{__90__HMIFeedback_submitFeedbackWithCameraProfileUUID_clipUUID_runRemotely_completionHandler___block_invoke, &unk_278753FB8}];
}

@end