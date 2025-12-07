@interface CalAssistantEventRetrieve
- (void)performWithCompletion:(id)completion;
@end

@implementation CalAssistantEventRetrieve

- (void)performWithCompletion:(id)completion
{
  completionCopy = completion;
  sub_2334B11EC(completionCopy, v5);
  v6 = qword_27DE0DD38;
  if (os_log_type_enabled(qword_27DE0DD38, OS_LOG_TYPE_DEBUG))
  {
    sub_2334B41F8(v6, self);
  }

  v7 = *MEMORY[0x277CEF0D8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0D8], OS_LOG_TYPE_DEBUG))
  {
    sub_2334B42A0(v7, self);
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = MEMORY[0x277CC5A40];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2334B008C;
  v13[3] = &unk_2789D8658;
  v13[4] = self;
  v14 = v8;
  v15 = completionCopy;
  v10 = completionCopy;
  v11 = v8;
  objc_msgSend__ca_performBlock_(v9, v12, v13);
}

@end