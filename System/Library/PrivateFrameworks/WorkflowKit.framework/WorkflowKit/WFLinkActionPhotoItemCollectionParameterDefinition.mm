@interface WFLinkActionPhotoItemCollectionParameterDefinition
- (WFLinkActionPhotoItemCollectionParameterDefinition)initWithParameterMetadata:(id)metadata;
- (id)linkValueFromParameterState:(id)state;
- (id)localizedTitleForLinkValue:(id)value;
- (id)parameterDefinitionDictionary;
- (id)parameterStateFromLinkValue:(id)value;
- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler;
@end

@implementation WFLinkActionPhotoItemCollectionParameterDefinition

- (id)parameterStateFromLinkValue:(id)value
{
  v21 = *MEMORY[0x1E69E9840];
  value = [value value];
  if (!value)
  {
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  valueType = [(WFLinkActionParameterDefinition *)self valueType];
  v6 = [valueType objectIsMemberOfType:value];

  if ((v6 & 1) == 0)
  {
    v12 = getWFAppIntentsLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      valueType2 = [(WFLinkActionParameterDefinition *)self valueType];
      v15 = 136315650;
      v16 = "[WFLinkActionPhotoItemCollectionParameterDefinition parameterStateFromLinkValue:]";
      v17 = 2114;
      v18 = value;
      v19 = 2114;
      v20 = valueType2;
    }

    goto LABEL_12;
  }

  v7 = value;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = 0;
  if (isKindOfClass)
  {
    v11 = [(WFVariableSubstitutableParameterState *)[WFPhotoItemCollectionParameterState alloc] initWithValue:v7];
  }

LABEL_13:

  return v11;
}

- (void)getLinkValueFromProcessedParameterValue:(id)value parameterState:(id)state permissionRequestor:(id)requestor runningFromToolKit:(BOOL)kit action:(id)action parameterKey:(id)key completionHandler:(id)handler
{
  valueCopy = value;
  stateCopy = state;
  requestorCopy = requestor;
  actionCopy = action;
  keyCopy = key;
  handlerCopy = handler;
  v21 = valueCopy;
  if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v20 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:v21];
    handlerCopy[2](handlerCopy, v20, 0);
  }

  else
  {

    handlerCopy[2](handlerCopy, 0, 0);
  }
}

- (id)linkValueFromParameterState:(id)state
{
  stateCopy = state;
  if (stateCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = stateCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  value = [v6 value];

  if (value)
  {
    value2 = [v6 value];
    v9 = [(WFLinkActionParameterDefinition *)self linkValueWithValue:value2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)localizedTitleForLinkValue:(id)value
{
  v27 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if (valueCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    items = [valueCopy items];
    firstObject = [items firstObject];

    if (firstObject)
    {
      mEMORY[0x1E6996F50] = [MEMORY[0x1E6996F50] sharedLibrary];
      v18 = 0;
      v7 = [mEMORY[0x1E6996F50] systemPhotoLibraryWithError:&v18];
      v8 = v18;

      if (v7)
      {
        librarySpecificFetchOptions = [v7 librarySpecificFetchOptions];
        v19 = 0;
        v20 = &v19;
        v21 = 0x2050000000;
        v10 = getPHAssetCollectionClass_softClass;
        v22 = getPHAssetCollectionClass_softClass;
        if (!getPHAssetCollectionClass_softClass)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __getPHAssetCollectionClass_block_invoke;
          v25 = &unk_1E837FAC0;
          v26 = &v19;
          __getPHAssetCollectionClass_block_invoke(buf);
          v10 = v20[3];
        }

        v11 = v10;
        _Block_object_dispose(&v19, 8);
        identifier = [firstObject identifier];
        v23 = identifier;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
        v14 = [v10 fetchAssetCollectionsWithLocalIdentifiers:v13 options:librarySpecificFetchOptions];
        firstObject2 = [v14 firstObject];

        localizedTitle = [firstObject2 localizedTitle];
      }

      else
      {
        librarySpecificFetchOptions = getWFGeneralLogObject();
        if (os_log_type_enabled(librarySpecificFetchOptions, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "[WFLinkActionPhotoItemCollectionParameterDefinition localizedTitleForLinkValue:]";
          *&buf[12] = 2112;
          *&buf[14] = v8;
          _os_log_impl(&dword_1CA256000, librarySpecificFetchOptions, OS_LOG_TYPE_ERROR, "%s Unable to get library: %@", buf, 0x16u);
        }

        localizedTitle = 0;
      }
    }

    else
    {
      localizedTitle = 0;
    }
  }

  else
  {

    localizedTitle = 0;
  }

  return localizedTitle;
}

- (id)parameterDefinitionDictionary
{
  v3 = [(WFLinkActionParameterDefinition *)self integerForTypeSpecificMetadataKey:*MEMORY[0x1E69AC608] defaultValue:1];
  v4 = [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:*MEMORY[0x1E69AC600] ofClass:objc_opt_class()];
  v5 = [(WFLinkActionParameterDefinition *)self objectForTypeSpecificMetadataKey:*MEMORY[0x1E69AC5F8] ofClass:objc_opt_class()];
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
  [v6 setValue:v7 forKey:@"PhotoItemCollectionPickerSelectionLimit"];

  [v6 setValue:v4 forKey:@"PhotoItemCollectionPickerMode"];
  [v6 setValue:v5 forKey:@"PhotoItemCollectionPickerFilter"];
  v11.receiver = self;
  v11.super_class = WFLinkActionPhotoItemCollectionParameterDefinition;
  parameterDefinitionDictionary = [(WFLinkActionParameterDefinition *)&v11 parameterDefinitionDictionary];
  v9 = [parameterDefinitionDictionary definitionByAddingEntriesInDictionary:v6];

  return v9;
}

- (WFLinkActionPhotoItemCollectionParameterDefinition)initWithParameterMetadata:(id)metadata
{
  v4 = MEMORY[0x1E69AC720];
  metadataCopy = metadata;
  photoItemCollectionValueType = [v4 photoItemCollectionValueType];
  v9.receiver = self;
  v9.super_class = WFLinkActionPhotoItemCollectionParameterDefinition;
  v7 = [(WFLinkActionParameterDefinition *)&v9 initWithValueType:photoItemCollectionValueType parameterMetadata:metadataCopy];

  return v7;
}

@end