@interface IMAssistantMessageSetAttributeHandler
- (void)handleSetMessageAttribute:(id)attribute completion:(id)completion;
@end

@implementation IMAssistantMessageSetAttributeHandler

- (void)handleSetMessageAttribute:(id)attribute completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  attributeCopy = attribute;
  completionCopy = completion;
  v7 = _IMAssistantCoreGeneralSignpostLogHandle(completionCopy);
  v8 = os_signpost_id_generate(v7);

  v10 = _IMAssistantCoreGeneralSignpostLogHandle(v9);
  v11 = v10;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25479E000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "handleSetMessageAttributeIntent", &unk_2547CAD0B, buf, 2u);
  }

  v12 = IMLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = attributeCopy;
    _os_log_impl(&dword_25479E000, v12, OS_LOG_TYPE_INFO, "Handling SetMessageAttribute intent: %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2547C0A0C;
  block[3] = &unk_279786BA8;
  v18 = completionCopy;
  v19 = v8;
  v17 = attributeCopy;
  v13 = completionCopy;
  v14 = attributeCopy;
  v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
  dispatch_async(MEMORY[0x277D85CD0], v15);
}

@end