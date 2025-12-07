@interface DDMoneyPreviewAction
+ (BOOL)actionAvailableForResult:(__DDResult *)result url:(id)url context:(id)context;
- (id)menuActions;
- (void)performFromView:(id)view;
@end

@implementation DDMoneyPreviewAction

- (void)performFromView:(id)view
{
  v10[1] = *MEMORY[0x277D85DE8];
  v8 = 0;
  v9 = 0.0;
  if (DDResultCurrencyExtraction())
  {
    if (v9 > 0.0 && v8 != 0)
    {
      v4 = +[DDAction clientActionsDelegate];
      if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v5 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v9];
        v10[0] = v8;
        v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
        [v4 handleMoneyActionWithAmount:v5 currencies:v6];
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "No money action delegate set, can't perform the action", v7, 2u);
      }
    }
  }
}

+ (BOOL)actionAvailableForResult:(__DDResult *)result url:(id)url context:(id)context
{
  v11 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = +[DDAction clientActionsDelegate];
  if (!v6 || (objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v7 = [contextCopy objectForKeyedSubscript:@"shouldShowMoneyActionWithAmount"];
  v8 = [v7 isEqualToString:@"YES"];

  if ((v8 & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      DDResultCurrencyExtraction();
    }

    goto LABEL_7;
  }

  v9 = 1;
LABEL_8:

  return v9;
}

- (id)menuActions
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([DDMoneyPreviewAction actionAvailableForResult:self->super.super.super._result url:self->super.super.super._url context:self->super.super.super._context])
  {
    v4 = [(DDAction *)DDMoneyPreviewAction actionWithURL:self->super.super.super._url result:self->super.super.super._result context:self->super.super.super._context];
    [v3 addObject:v4];
  }

  v5 = [DDActionGroup groupWithActions:v3];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = +[DDActionGroup emptyGroup];
  }

  v8 = v7;

  v9 = [DDConversionAction actionAvailableForResult:self->super.super.super._result];
  url = self->super.super.super._url;
  v11 = self->super.super.super._result;
  context = self->super.super.super._context;
  if (v9)
  {
    v13 = [(DDAction *)DDConversionAction actionWithURL:url result:v11 context:context];
    [(DDActionGroup *)v8 appendAction:v13];
    specialCaseActions = [v13 specialCaseActions];
    [(DDActionGroup *)specialCaseActions setInlinedGroup:?];
    [(DDActionGroup *)v8 appendGroup:specialCaseActions];
  }

  else
  {
    v13 = [DDCopyAction actionWithURL:url result:v11 context:context];
    [(DDActionGroup *)v8 appendAction:v13];
  }

  return v8;
}

@end