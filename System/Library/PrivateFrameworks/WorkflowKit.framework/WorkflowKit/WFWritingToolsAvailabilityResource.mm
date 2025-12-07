@interface WFWritingToolsAvailabilityResource
- (WFWritingToolsAvailabilityResource)initWithDefinition:(id)definition;
- (id)actionsUnavailableError;
- (void)refreshAvailability;
@end

@implementation WFWritingToolsAvailabilityResource

- (id)actionsUnavailableError
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = WFLocalizedString(@"Writing Tools Unavailable");
  v3 = WFLocalizedString(@"Writing Tools are not currently available.");
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A588];
  v9[0] = *MEMORY[0x1E696A578];
  v9[1] = v5;
  v10[0] = v2;
  v10[1] = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v7 = [v4 errorWithDomain:@"WFActionErrorDomain" code:1 userInfo:v6];

  return v7;
}

- (void)refreshAvailability
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v3 = getWTWritingToolsControllerClass_softClass;
  v11 = getWTWritingToolsControllerClass_softClass;
  if (!getWTWritingToolsControllerClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v13 = __getWTWritingToolsControllerClass_block_invoke;
    v14 = &unk_1E837FAC0;
    v15 = &v8;
    __getWTWritingToolsControllerClass_block_invoke(&buf);
    v3 = v9[3];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    if ([objc_opt_class() isAvailable])
    {
      [(WFResource *)self updateAvailability:1 withError:0];
      return;
    }
  }

  else
  {
    v5 = getWFActionsLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[WFWritingToolsAvailabilityResource refreshAvailability]";
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_ERROR, "%s Failed to determine WritingToolsController availability", &buf, 0xCu);
    }
  }

  v6 = getWFActionsLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[WFWritingToolsAvailabilityResource refreshAvailability]";
    _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_DEFAULT, "%s WritingToolsController told us WT is unavailable", &buf, 0xCu);
  }

  actionsUnavailableError = [(WFWritingToolsAvailabilityResource *)self actionsUnavailableError];
  [(WFResource *)self updateAvailability:0 withError:actionsUnavailableError];
}

- (WFWritingToolsAvailabilityResource)initWithDefinition:(id)definition
{
  v7.receiver = self;
  v7.super_class = WFWritingToolsAvailabilityResource;
  v3 = [(WFResource *)&v7 initWithDefinition:definition];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

@end