@interface LNEntity
@end

@implementation LNEntity

id __122__LNEntity_WFSerializableContent__valueFromSerializedRepresentation_metadata_variableProvider_parameter_bundleIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 objectForKeyedSubscript:@"identifier"];
  v7 = [*(a1 + 32) properties];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __122__LNEntity_WFSerializableContent__valueFromSerializedRepresentation_metadata_variableProvider_parameter_bundleIdentifier___block_invoke_3;
  v12[3] = &unk_1E837E080;
  v13 = v6;
  v8 = v6;
  v9 = [v7 if_firstObjectPassingTest:v12];

  v10 = [MEMORY[0x1E69AC950] valueFromSerializedRepresentation:v5 metadata:v9 variableProvider:*(a1 + 40) parameter:*(a1 + 48) bundleIdentifier:*(a1 + 56)];

  return v10;
}

uint64_t __122__LNEntity_WFSerializableContent__valueFromSerializedRepresentation_metadata_variableProvider_parameter_bundleIdentifier___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  isEqualToString = objc_msgSend_isEqualToString_(v2);

  return isEqualToString;
}

void __122__LNEntity_WFSerializableContent__valueFromSerializedRepresentation_metadata_variableProvider_parameter_bundleIdentifier___block_invoke(int a1, id a2, void *a3, void *a4, void *a5)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v9 = a2;
  *a4 = a2;
  v17 = a3;
  v18[0] = @"identifier";
  v18[1] = @"value";
  v19[0] = a2;
  v16 = @"value";
  v10 = MEMORY[0x1E695DF20];
  v11 = a3;
  v12 = a2;
  v13 = [v10 dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19[1] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v15 = v14;
  *a5 = v14;
}

@end