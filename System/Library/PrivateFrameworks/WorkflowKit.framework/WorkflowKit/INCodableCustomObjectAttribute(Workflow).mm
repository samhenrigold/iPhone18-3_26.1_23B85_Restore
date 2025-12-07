@interface INCodableCustomObjectAttribute(Workflow)
- (id)wf_contentItemClass;
- (id)wf_contentItemForValue:()Workflow;
- (id)wf_parameterClass;
@end

@implementation INCodableCustomObjectAttribute(Workflow)

- (id)wf_contentItemForValue:()Workflow
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      wf_contentItemClass = [self wf_contentItemClass];
      v8 = INObjectWithTypedObject();
      v9 = [wf_contentItemClass itemWithObject:v8];

      goto LABEL_8;
    }

    v10 = getWFGeneralLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v13 = 136315906;
      v14 = "WFEnforceClass";
      v15 = 2114;
      v16 = v6;
      v17 = 2114;
      v18 = objc_opt_class();
      v19 = 2114;
      v20 = v5;
      v11 = v18;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", &v13, 0x2Au);
    }
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (id)wf_contentItemClass
{
  codableDescription = [self codableDescription];
  objectTypeNamespace = [self objectTypeNamespace];
  v4 = [codableDescription wf_contentItemClassForCustomObjectWithNamespace:objectTypeNamespace];

  return v4;
}

- (id)wf_parameterClass
{
  [self modifier];
  v1 = objc_opt_class();

  return v1;
}

@end