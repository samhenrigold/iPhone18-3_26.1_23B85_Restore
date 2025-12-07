@interface LNEntityMetadata(Workflow)
- (objc_class)wf_contentItemClassWithQueryMetadata:()Workflow appBundleIdentifier:displayedAppBundleIdentifier:;
@end

@implementation LNEntityMetadata(Workflow)

- (objc_class)wf_contentItemClassWithQueryMetadata:()Workflow appBundleIdentifier:displayedAppBundleIdentifier:
{
  v46[3] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNEntityMetadata+Workflow.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"appBundleIdentifier"}];
  }

  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v46[0] = v13;
  v46[1] = v10;
  identifier = [self identifier];
  v46[2] = identifier;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:3];

  v16 = [v15 componentsJoinedByString:@"_"];
  v17 = NSClassFromString(v16);
  if (v17)
  {
    v18 = v17;
LABEL_5:
    v19 = v18;
    goto LABEL_8;
  }

  os_unfair_lock_lock(&classRegistrationLock_52324);
  ClassPair = objc_allocateClassPair(v12, [(NSString *)v16 cStringUsingEncoding:4], 0);
  if (!ClassPair)
  {
    os_unfair_lock_unlock(&classRegistrationLock_52324);
    v18 = NSClassFromString(v16);
    goto LABEL_5;
  }

  v21 = ClassPair;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __116__LNEntityMetadata_Workflow__wf_contentItemClassWithQueryMetadata_appBundleIdentifier_displayedAppBundleIdentifier___block_invoke;
  aBlock[3] = &__block_descriptor_40_e14_B32__0_8_16_24lu32l8;
  aBlock[4] = v12;
  v35 = v9;
  v22 = _Block_copy(aBlock);
  selfCopy = self;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __116__LNEntityMetadata_Workflow__wf_contentItemClassWithQueryMetadata_appBundleIdentifier_displayedAppBundleIdentifier___block_invoke_2;
  v43[3] = &unk_1E837B948;
  v44 = selfCopy;
  v34 = selfCopy;
  v24 = _Block_copy(v43);
  v22[2](v22, v21, sel_entityMetadata, v24);

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __116__LNEntityMetadata_Workflow__wf_contentItemClassWithQueryMetadata_appBundleIdentifier_displayedAppBundleIdentifier___block_invoke_3;
  v41[3] = &unk_1E837B970;
  v42 = v35;
  v25 = _Block_copy(v41);
  v22[2](v22, v21, sel_queryMetadata, v25);

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __116__LNEntityMetadata_Workflow__wf_contentItemClassWithQueryMetadata_appBundleIdentifier_displayedAppBundleIdentifier___block_invoke_4;
  v39[3] = &unk_1E837B998;
  v26 = v10;
  v40 = v26;
  v27 = _Block_copy(v39);
  v22[2](v22, v21, sel_appBundleIdentifier, v27);

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __116__LNEntityMetadata_Workflow__wf_contentItemClassWithQueryMetadata_appBundleIdentifier_displayedAppBundleIdentifier___block_invoke_5;
  v36[3] = &unk_1E837B9C0;
  v37 = v11;
  v28 = v26;
  v38 = v28;
  v29 = _Block_copy(v36);
  v22[2](v22, v21, sel_displayedAppBundleIdentifier, v29);

  v30 = MEMORY[0x1E69AC800];
  identifier2 = [v34 identifier];
  [v30 wf_addDescriptionMethodsToClass:v21 withEntityType:identifier2 appBundleIdentifier:v28];

  objc_registerClassPair(v21);
  os_unfair_lock_unlock(&classRegistrationLock_52324);
  v19 = v21;

  v9 = v35;
LABEL_8:

  return v19;
}

@end