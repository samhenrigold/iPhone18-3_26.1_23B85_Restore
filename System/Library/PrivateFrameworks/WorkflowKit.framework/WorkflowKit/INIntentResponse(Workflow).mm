@interface INIntentResponse(Workflow)
- (void)wf_getOutputValueWithCompletionHandler:()Workflow;
@end

@implementation INIntentResponse(Workflow)

- (void)wf_getOutputValueWithCompletionHandler:()Workflow
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"INIntentResponse+Workflow.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  _codableDescription = [self _codableDescription];
  v7 = objc_opt_class();
  v8 = _codableDescription;
  if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = getWFGeneralLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v21 = "WFEnforceClass";
      v22 = 2114;
      v23 = v8;
      v24 = 2114;
      v25 = objc_opt_class();
      v26 = 2114;
      v27 = v7;
      v11 = v25;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
    }

    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  outputAttribute = [v9 outputAttribute];
  v13 = outputAttribute;
  if (outputAttribute)
  {
    propertyName = [outputAttribute propertyName];
    v15 = [self valueForKey:propertyName];

    if (v15)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __69__INIntentResponse_Workflow__wf_getOutputValueWithCompletionHandler___block_invoke;
      v17[3] = &unk_1E837D7E8;
      v19 = v5;
      v18 = v13;
      [v15 wf_transformValueForCodableAttribute:v18 completionHandler:v17];
    }

    else
    {
      (*(v5 + 2))(v5, 0, 0);
    }
  }

  else
  {
    (*(v5 + 2))(v5, 0, 0);
  }
}

@end