@interface UIViewController(SimSetup)
- (uint64_t)isCloudFlow;
- (void)configureNavigationItem;
- (void)dismissSimSetupFlowFromViewController;
- (void)isCloudFlow;
- (void)userDidTapCancel;
@end

@implementation UIViewController(SimSetup)

- (void)configureNavigationItem
{
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)userDidTapCancel
{
  objc_opt_class();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)dismissSimSetupFlowFromViewController
{
  objc_opt_class();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (uint64_t)isCloudFlow
{
  v2 = [self conformsToProtocol:&unk_28758ABD0];
  if ((v2 & 1) == 0)
  {
    selfCopy = _TSLogDomain(v2);
    if (os_log_type_enabled(selfCopy, OS_LOG_TYPE_ERROR))
    {
      [(UIViewController(SimSetup) *)self isCloudFlow];
    }

    goto LABEL_10;
  }

  selfCopy = self;
  delegate = [selfCopy delegate];

  if (!delegate)
  {
    v8 = _TSLogDomain(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(UIViewController(SimSetup) *)v8 isCloudFlow];
    }

LABEL_10:
    isKindOfClass = 0;
    goto LABEL_13;
  }

  delegate2 = [selfCopy delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    delegate3 = [selfCopy delegate];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

LABEL_13:
  return isKindOfClass & 1;
}

- (void)isCloudFlow
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[UIViewController(SimSetup) isCloudFlow]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]delegate not set @%s", &v1, 0xCu);
}

@end