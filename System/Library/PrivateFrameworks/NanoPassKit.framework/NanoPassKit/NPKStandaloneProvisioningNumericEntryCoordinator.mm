@interface NPKStandaloneProvisioningNumericEntryCoordinator
- (void)_invokeCompletionHandler;
- (void)_showCurrentPasscodePromptOrComplete;
- (void)invalidate;
- (void)requestNumericInputForFields:(id)fields completion:(id)completion;
@end

@implementation NPKStandaloneProvisioningNumericEntryCoordinator

- (void)requestNumericInputForFields:(id)fields completion:(id)completion
{
  objc_storeStrong(&self->_providedFields, fields);
  fieldsCopy = fields;
  completionCopy = completion;
  array = [MEMORY[0x277CBEB18] array];
  completedFields = self->_completedFields;
  self->_completedFields = array;

  v11 = _Block_copy(completionCopy);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v11;

  self->_currentIndex = 0;

  [(NPKStandaloneProvisioningNumericEntryCoordinator *)self _showCurrentPasscodePromptOrComplete];
}

- (void)invalidate
{
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  providedFields = self->_providedFields;
  self->_providedFields = 0;

  completedFields = self->_completedFields;
  self->_completedFields = 0;
}

- (void)_showCurrentPasscodePromptOrComplete
{
  currentIndex = self->_currentIndex;
  v4 = [(NSArray *)self->_providedFields count];
  if (currentIndex >= v4)
  {
    v5 = pk_Payment_log(v4);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v8 = pk_Payment_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Numeric entry complete; invoking completion handler", v9, 2u);
      }
    }

    [(NPKStandaloneProvisioningNumericEntryCoordinator *)self _invokeCompletionHandler];
  }

  else
  {

    [(NPKStandaloneProvisioningNumericEntryCoordinator *)self _invokeCompletionHandler];
  }
}

- (void)_invokeCompletionHandler
{
  v5 = _Block_copy(self->_completionHandler);
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  if (v5)
  {
    v5[2](v5, self->_completedFields);
  }

  providedFields = self->_providedFields;
  self->_providedFields = 0;
}

@end