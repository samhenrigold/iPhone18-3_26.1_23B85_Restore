@interface MPAssistantStopPlayback
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantStopPlayback

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(MPAssistantPausePlayback);
  v10 = objc_msgSend_hashedRouteUIDs(self, v6, v7, v8, v9);
  objc_msgSend_setHashedRouteUIDs_(v5, v11, v10, v12, v13);

  v18 = objc_msgSend_refId(self, v14, v15, v16, v17);
  objc_msgSend_setRefId_(v5, v19, v18, v20, v21);

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_233502514;
  v26[3] = &unk_2789DBC10;
  v27 = completionCopy;
  v22 = completionCopy;
  objc_msgSend_performWithCompletion_(v5, v23, v26, v24, v25);
}

@end