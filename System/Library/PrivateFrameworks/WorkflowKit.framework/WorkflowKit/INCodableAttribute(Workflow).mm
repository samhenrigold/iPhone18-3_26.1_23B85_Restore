@interface INCodableAttribute(Workflow)
- (id)wf_contentItemClass;
- (id)wf_contentItemForValue:()Workflow;
- (id)wf_updatedParameterDefinition:()Workflow parameterClass:localizer:;
@end

@implementation INCodableAttribute(Workflow)

- (id)wf_contentItemForValue:()Workflow
{
  v4 = a3;
  v5 = [objc_msgSend(self "wf_contentItemClass")];

  return v5;
}

- (id)wf_updatedParameterDefinition:()Workflow parameterClass:localizer:
{
  v60[8] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v41 = a5;
  v42 = [[WFINCodableAttributeParameterName alloc] initWithAttribute:self];
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__26657;
  v50 = __Block_byref_object_dispose__26658;
  v9 = v8;
  v51 = v9;
  v58[0] = @"Class";
  v10 = NSStringFromClass(a4);
  v59[0] = v10;
  v58[1] = @"Key";
  propertyName = [self propertyName];
  v59[1] = propertyName;
  v59[2] = v42;
  v58[2] = @"Label";
  v58[3] = @"IntentSlotName";
  propertyName2 = [self propertyName];
  v59[3] = propertyName2;
  v58[4] = @"AllowsMultipleValues";
  v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(self, "modifier") == 0}];
  v59[4] = v13;
  v59[5] = @"Right";
  v58[5] = @"TextAlignment";
  v58[6] = @"FixedSizeArray";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isFixedSizeArray")}];
  v59[6] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:7];

  if ([self isFixedSizeArray])
  {
    v16 = *MEMORY[0x1E696E548];
    v60[0] = *MEMORY[0x1E696E550];
    v60[1] = v16;
    v17 = *MEMORY[0x1E696E538];
    v60[2] = *MEMORY[0x1E696E540];
    v60[3] = v17;
    v18 = *MEMORY[0x1E696E518];
    v60[4] = *MEMORY[0x1E696E520];
    v60[5] = v18;
    v19 = *MEMORY[0x1E696E528];
    v60[6] = *MEMORY[0x1E696E530];
    v60[7] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:8];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __87__INCodableAttribute_Workflow__wf_updatedParameterDefinition_parameterClass_localizer___block_invoke;
    v45[3] = &unk_1E837E220;
    v45[4] = self;
    v21 = [v20 if_compactMap:v45];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __87__INCodableAttribute_Workflow__wf_updatedParameterDefinition_parameterClass_localizer___block_invoke_2;
    v44[3] = &unk_1E8377820;
    v44[4] = self;
    v22 = [v20 if_objectsPassingTest:v44];
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v22];
    v56 = @"ArraySizesForSizeClass";
    v57 = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v25 = [v15 if_dictionaryByAddingEntriesFromDictionary:v24];

    v15 = v25;
  }

  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __87__INCodableAttribute_Workflow__wf_updatedParameterDefinition_parameterClass_localizer___block_invoke_3;
  v43[3] = &unk_1E837D4A8;
  v43[4] = &v46;
  [v15 enumerateKeysAndObjectsUsingBlock:v43];
  if (([self supportsDynamicEnumeration] & 1) == 0)
  {
    v26 = v47[5];
    v54 = @"Placeholder";
    v27 = [WFINCodableAttributePlaceholder alloc];
    metadata = [self metadata];
    v29 = [(WFINCodableAttributePlaceholder *)v27 initWithMetadata:metadata];
    v55 = v29;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v31 = [v26 definitionByAddingEntriesInDictionary:v30];
    v32 = v47[5];
    v47[5] = v31;
  }

  languageCode = [self languageCode];

  if (languageCode)
  {
    v34 = v47[5];
    v52 = @"LanguageCodeOverride";
    languageCode2 = [self languageCode];
    v53 = languageCode2;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
    v37 = [v34 definitionByAddingEntriesInDictionary:v36];
    v38 = v47[5];
    v47[5] = v37;
  }

  v39 = v47[5];

  _Block_object_dispose(&v46, 8);

  return v39;
}

- (id)wf_contentItemClass
{
  if ([objc_msgSend(self "wf_objectClass")])
  {
    v2 = [objc_msgSend(self "wf_objectClass")];
  }

  else
  {
    mEMORY[0x1E6996D68] = [MEMORY[0x1E6996D68] sharedRegistry];
    v4 = [MEMORY[0x1E6996ED0] typeWithClass:{objc_msgSend(self, "wf_objectClass")}];
    v2 = [mEMORY[0x1E6996D68] contentItemClassForType:v4];
  }

  return v2;
}

@end