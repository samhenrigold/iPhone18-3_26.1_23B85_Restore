@interface MPAssistantSetState
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantSetState

- (void)performWithCompletion:(id)completion
{
  v4 = MEMORY[0x277D47208];
  completionCopy = completion;
  v6 = [v4 alloc];
  v15 = objc_msgSend_initWithReason_(v6, v7, @"unsupported command", v8, v9);
  v14 = objc_msgSend_dictionary(v15, v10, v11, v12, v13);
  (*(completion + 2))(completionCopy, v14);
}

@end