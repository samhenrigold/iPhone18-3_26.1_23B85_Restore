@interface SVXServiceCommandHandlerFallback
- (SVXServiceCommandHandlerFallback)initWithResult:(id)result;
- (void)handleCommand:(id)command withContext:(id)context taskTracker:(id)tracker completion:(id)completion;
@end

@implementation SVXServiceCommandHandlerFallback

- (void)handleCommand:(id)command withContext:(id)context taskTracker:(id)tracker completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  contextCopy = context;
  trackerCopy = tracker;
  completionCopy = completion;
  v14 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    v15 = v14;
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = 136315394;
    v19 = "[SVXServiceCommandHandlerFallback handleCommand:withContext:taskTracker:completion:]";
    v20 = 2112;
    v21 = v17;
    _os_log_error_impl(&dword_2695B9000, v15, OS_LOG_TYPE_ERROR, "%s Service command handler is missing for %@. Please file a radar.", &v18, 0x16u);

    if (!completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (completionCopy)
  {
LABEL_3:
    completionCopy[2](completionCopy, self->_result);
  }

LABEL_4:
}

- (SVXServiceCommandHandlerFallback)initWithResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = SVXServiceCommandHandlerFallback;
  v5 = [(SVXServiceCommandHandlerFallback *)&v9 init];
  if (v5)
  {
    v6 = [resultCopy copy];
    v7 = v5->_result;
    v5->_result = v6;
  }

  return v5;
}

@end