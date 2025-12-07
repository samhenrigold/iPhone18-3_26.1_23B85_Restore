@interface MPAssistantSetOutputSource
- (void)performWithCompletion:(id)completion;
@end

@implementation MPAssistantSetOutputSource

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  v9 = objc_msgSend__validate(self, v5, v6, v7, v8);
  if (!v9)
  {
    v9 = objc_msgSend__perform(self, v10, v11, v12, v13);
  }

  v15 = v9;
  v14 = objc_msgSend_dictionary(v9, v10, v11, v12, v13);
  completionCopy[2](completionCopy, v14);
}

@end