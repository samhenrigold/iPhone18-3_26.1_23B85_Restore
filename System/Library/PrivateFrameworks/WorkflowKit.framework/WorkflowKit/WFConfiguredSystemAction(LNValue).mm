@interface WFConfiguredSystemAction(LNValue)
+ (id)systemActionWithLegacyEntity:()LNValue;
+ (id)systemActionWithValue:()LNValue;
- (id)asLNValue;
@end

@implementation WFConfiguredSystemAction(LNValue)

- (id)asLNValue
{
  v45 = *MEMORY[0x1E69E9840];
  identifier = [self identifier];
  v37 = 0;
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v37];
  v4 = v37;
  if (v3)
  {
    v5 = objc_alloc(MEMORY[0x1E69ACA90]);
    [v3 base64EncodedStringWithOptions:0];
    v6 = v35 = v4;
    stringValueType = [MEMORY[0x1E69AC938] stringValueType];
    v8 = [v5 initWithValue:v6 valueType:stringValueType];

    v9 = objc_alloc(MEMORY[0x1E69ACA90]);
    identifier2 = [self identifier];
    stringValueType2 = [MEMORY[0x1E69AC938] stringValueType];
    v34 = [v9 initWithValue:identifier2 valueType:stringValueType2];

    v12 = objc_alloc(MEMORY[0x1E69ACA90]);
    name = [self name];
    stringValueType3 = [MEMORY[0x1E69AC938] stringValueType];
    v15 = [v12 initWithValue:name valueType:stringValueType3];

    v16 = [objc_alloc(MEMORY[0x1E69AC7D8]) initWithTypeIdentifier:@"ConfiguredShortcut" instanceIdentifier:identifier];
    v36 = identifier;
    v17 = objc_alloc(MEMORY[0x1E69AC7D0]);
    v18 = [objc_alloc(MEMORY[0x1E69AC950]) initWithIdentifier:@"identifier" value:v34];
    v38[0] = v18;
    v19 = [objc_alloc(MEMORY[0x1E69AC950]) initWithIdentifier:@"name" value:v15];
    v38[1] = v19;
    v20 = [objc_alloc(MEMORY[0x1E69AC950]) initWithIdentifier:@"encodedSystemAction" value:v8];
    v38[2] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:3];
    v22 = [v17 initWithTransient:1 identifier:v16 properties:v21 managedAccountIdentifier:0];

    v23 = objc_alloc(MEMORY[0x1E69AC7A0]);
    v24 = objc_alloc(MEMORY[0x1E69AC9E0]);
    name2 = [self name];
    name3 = [self name];
    v27 = [v24 initWithKey:name2 defaultValue:name3 table:0 bundleURL:0];
    v28 = [v23 initWithTitle:v27 subtitle:0 image:0];

    v29 = objc_alloc(MEMORY[0x1E69ACA90]);
    v30 = [objc_alloc(MEMORY[0x1E69AC818]) initWithIdentifier:@"ConfiguredShortcut"];
    v31 = [v29 initWithValue:v22 valueType:v30 displayRepresentation:v28];

    v4 = v35;
    identifier = v36;
  }

  else
  {
    v32 = getWFControlMigrationLogObject();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v40 = "[WFConfiguredSystemAction(LNValue) asLNValue]";
      v41 = 2112;
      selfCopy2 = self;
      v43 = 2114;
      v44 = v4;
      _os_log_impl(&dword_1CA256000, v32, OS_LOG_TYPE_ERROR, "%s Could not archive system action: %@ with error: %{public}@", buf, 0x20u);
    }

    v8 = getWFGeneralLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v40 = "[WFConfiguredSystemAction(LNValue) asLNValue]";
      v41 = 2112;
      selfCopy2 = self;
      v43 = 2114;
      v44 = v4;
      _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, "%s Could not archive system action: %@ with error: %{public}@", buf, 0x20u);
    }

    v31 = 0;
  }

  return v31;
}

+ (id)systemActionWithLegacyEntity:()LNValue
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  identifier = [v3 identifier];
  typeIdentifier = [identifier typeIdentifier];
  if (typeIdentifier == @"ConfiguredShortcut")
  {
  }

  else
  {
    v6 = typeIdentifier;
    if (!typeIdentifier)
    {

LABEL_10:
      v13 = getWFControlMigrationLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        identifier2 = [v3 identifier];
        typeIdentifier2 = [identifier2 typeIdentifier];
        v23 = 136315394;
        v24 = "+[WFConfiguredSystemAction(LNValue) systemActionWithLegacyEntity:]";
        v25 = 2114;
        v26 = typeIdentifier2;
        _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s Could not create system action from entity because the type identifier is of %{public}@ and not ConfiguredShortcut", &v23, 0x16u);
      }

      instanceIdentifier = getWFGeneralLogObject();
      if (os_log_type_enabled(instanceIdentifier, OS_LOG_TYPE_ERROR))
      {
        identifier3 = [v3 identifier];
        typeIdentifier3 = [identifier3 typeIdentifier];
        v23 = 136315394;
        v24 = "+[WFConfiguredSystemAction(LNValue) systemActionWithLegacyEntity:]";
        v25 = 2114;
        v26 = typeIdentifier3;
        _os_log_impl(&dword_1CA256000, instanceIdentifier, OS_LOG_TYPE_ERROR, "%s Could not create system action from entity because the type identifier is of %{public}@ and not ConfiguredShortcut", &v23, 0x16u);
      }

      v12 = 0;
      goto LABEL_27;
    }

    isEqualToString = objc_msgSend_isEqualToString_(@"ConfiguredShortcut");

    if ((isEqualToString & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  identifier4 = [v3 identifier];
  instanceIdentifier = [identifier4 instanceIdentifier];

  if (instanceIdentifier)
  {
    v10 = +[WFDatabase defaultDatabase];
    v11 = [v10 referenceForWorkflowID:instanceIdentifier includingTombstones:0];
    if (v11)
    {
      v12 = [objc_alloc(MEMORY[0x1E69E0A10]) initWithWorkflow:v11 shortcutsMetadata:0];
    }

    else
    {
      v20 = getWFControlMigrationLogObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v23 = 136315394;
        v24 = "+[WFConfiguredSystemAction(LNValue) systemActionWithLegacyEntity:]";
        v25 = 2112;
        v26 = instanceIdentifier;
        _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_ERROR, "%s Could not create reference for workflowID: %@", &v23, 0x16u);
      }

      v21 = getWFGeneralLogObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v23 = 136315394;
        v24 = "+[WFConfiguredSystemAction(LNValue) systemActionWithLegacyEntity:]";
        v25 = 2112;
        v26 = instanceIdentifier;
        _os_log_impl(&dword_1CA256000, v21, OS_LOG_TYPE_ERROR, "%s Could not create reference for workflowID: %@", &v23, 0x16u);
      }

      v12 = 0;
    }
  }

  else
  {
    v18 = getWFControlMigrationLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = _NSFullMethodName();
      v23 = 136315394;
      v24 = "+[WFConfiguredSystemAction(LNValue) systemActionWithLegacyEntity:]";
      v25 = 2112;
      v26 = v19;
      _os_log_impl(&dword_1CA256000, v18, OS_LOG_TYPE_ERROR, "%s %@ Could not create reference due to missing workflow identifier", &v23, 0x16u);
    }

    v10 = getWFGeneralLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315138;
      v24 = "+[WFConfiguredSystemAction(LNValue) systemActionWithLegacyEntity:]";
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Could not create reference due to missing workflow identifier", &v23, 0xCu);
    }

    v12 = 0;
  }

LABEL_27:

  return v12;
}

+ (id)systemActionWithValue:()LNValue
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  value = [v4 value];
  if (value && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    properties = [value properties];
    v7 = [properties if_firstObjectPassingTest:&__block_literal_global_61561];

    if (v7)
    {
      value2 = [v7 value];
      v8Value = [value2 value];

      if (v8Value && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v8Value options:0];
        v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:0];
        if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {

          v12 = getWFGeneralLogObject();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v17 = 136315138;
            v18 = "+[WFConfiguredSystemAction(LNValue) systemActionWithValue:]";
            _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_ERROR, "%s Could not get system action from data", &v17, 0xCu);
          }

          v11 = 0;
        }
      }

      else
      {

        v8Value = getWFGeneralLogObject();
        if (os_log_type_enabled(v8Value, OS_LOG_TYPE_ERROR))
        {
          v17 = 136315394;
          v18 = "+[WFConfiguredSystemAction(LNValue) systemActionWithValue:]";
          v19 = 2112;
          v20 = v7;
          _os_log_impl(&dword_1CA256000, v8Value, OS_LOG_TYPE_ERROR, "%s Could not create system action from property: %@", &v17, 0x16u);
        }

        v11 = 0;
      }
    }

    else
    {
      v14 = getWFControlMigrationLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v17 = 136315394;
        v18 = "+[WFConfiguredSystemAction(LNValue) systemActionWithValue:]";
        v19 = 2112;
        v20 = v4;
        _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_ERROR, "%s Entity %@ has no encodedSystemAction property, attempting legacy deserialization.", &v17, 0x16u);
      }

      v15 = getWFGeneralLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315394;
        v18 = "+[WFConfiguredSystemAction(LNValue) systemActionWithValue:]";
        v19 = 2112;
        v20 = value;
        _os_log_impl(&dword_1CA256000, v15, OS_LOG_TYPE_DEFAULT, "%s Could not create system action from LNEntity: %@, attempting legacy deserialization", &v17, 0x16u);
      }

      v11 = [self systemActionWithLegacyEntity:value];
    }
  }

  else
  {

    v13 = getWFControlMigrationLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "+[WFConfiguredSystemAction(LNValue) systemActionWithValue:]";
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s Could not create system action from non-entity value: %@", &v17, 0x16u);
    }

    value = getWFGeneralLogObject();
    if (os_log_type_enabled(value, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315394;
      v18 = "+[WFConfiguredSystemAction(LNValue) systemActionWithValue:]";
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_1CA256000, value, OS_LOG_TYPE_ERROR, "%s Could not create system action from value: %@", &v17, 0x16u);
    }

    v11 = 0;
  }

  return v11;
}

@end