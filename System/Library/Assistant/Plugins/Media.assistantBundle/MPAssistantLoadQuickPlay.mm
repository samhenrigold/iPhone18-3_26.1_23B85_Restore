@interface MPAssistantLoadQuickPlay
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantLoadQuickPlay

- (void)performWithCompletion:(id)completion
{
  v4 = MEMORY[0x277D47208];
  completionCopy = completion;
  v11 = objc_alloc_init(v4);
  v10 = objc_msgSend_dictionary(v11, v6, v7, v8, v9);
  (*(completion + 2))(completionCopy, v10);
}

@end