@interface WFContextualActionRunDescriptor
@end

@implementation WFContextualActionRunDescriptor

void __104__WFContextualActionRunDescriptor_Conversion__createWorkflowWithEnvironment_database_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    (*(*(a1 + 48) + 16))();
    goto LABEL_17;
  }

  v4 = [WFWorkflow alloc];
  v5 = objc_opt_new();
  v6 = *(a1 + 56);
  v22 = 0;
  v7 = [(WFWorkflow *)v4 initWithRecord:v5 reference:0 storageProvider:0 migrateIfNecessary:0 environment:v6 error:&v22];
  v8 = v22;

  v9 = [v3 localizedName];
  [(WFWorkflow *)v7 setName:v9];

  v10 = [*(a1 + 32) identifier];
  if ((objc_msgSend_isEqualToString_(v10) & 1) == 0)
  {
    v11 = [*(a1 + 32) associatedAppBundleIdentifier];
    if (!objc_msgSend_isEqualToString_(v11))
    {
      v20 = [*(a1 + 32) associatedAppBundleIdentifier];
      isEqualToString = objc_msgSend_isEqualToString_(v20);

      if ((isEqualToString & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

LABEL_6:
  v12 = [*(a1 + 32) icon];
  v13 = [v12 systemName];
  v14 = [(WFWorkflow *)v7 icon];
  [v14 setSymbolOverride:v13];

LABEL_7:
  if (v7)
  {
    [(WFWorkflow *)v7 addAction:v3];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(WFWorkflow *)v7 setSource:@"ShortcutSourceAppShortcut"];
    }

    v15 = [*(a1 + 32) outputsFiles];
    [*(a1 + 40) surface];
    v16 = WFContextualActionSurfaceSupportsOutput();
    if (v15 && (v16 & 1) == 0)
    {
      v17 = +[WFActionRegistry sharedRegistry];
      v18 = [v17 createActionWithIdentifier:@"is.workflow.actions.showresult" serializedParameters:0];

      [(WFWorkflow *)v7 addAction:v18];
      [v18 unlockInputParameter];
      [v18 snapInputParameterIfNecessary];
    }

    v19 = *(*(a1 + 48) + 16);
  }

  else
  {
    v19 = *(*(a1 + 48) + 16);
  }

  v19();

LABEL_17:
}

@end