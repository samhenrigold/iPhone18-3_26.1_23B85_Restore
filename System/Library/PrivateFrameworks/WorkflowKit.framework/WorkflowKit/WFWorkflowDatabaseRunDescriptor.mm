@interface WFWorkflowDatabaseRunDescriptor
@end

@implementation WFWorkflowDatabaseRunDescriptor

void __116__WFWorkflowDatabaseRunDescriptor_Conversion__donateRunInteractionWithDatabase_workflowReference_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getWFGeneralLogObject();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [*(a1 + 32) identifier];
      v14 = 136315650;
      v15 = "[WFWorkflowDatabaseRunDescriptor(Conversion) donateRunInteractionWithDatabase:workflowReference:completionHandler:]_block_invoke";
      v16 = 2112;
      v17 = v6;
      v18 = 2114;
      v19 = v3;
      v7 = "%s Failed to donate interaction for %@: %{public}@";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 32;
LABEL_6:
      _os_log_impl(&dword_1CA256000, v8, v9, v7, &v14, v10);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) identifier];
    v14 = 136315394;
    v15 = "[WFWorkflowDatabaseRunDescriptor(Conversion) donateRunInteractionWithDatabase:workflowReference:completionHandler:]_block_invoke";
    v16 = 2112;
    v17 = v6;
    v7 = "%s Successfully donated interaction for %@";
    v8 = v5;
    v9 = OS_LOG_TYPE_DEFAULT;
    v10 = 22;
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v11, v12, v13);
}

@end