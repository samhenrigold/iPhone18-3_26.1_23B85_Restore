@interface WFVariable
- (BOOL)isEqual:(id)equal;
- (NSHashTable)delegates;
- (NSOrderedSet)possibleAggrandizedContentClasses;
- (NSOrderedSet)possibleContentClasses;
- (NSString)description;
- (NSString)nameIncludingPropertyName;
- (NSString)propertyName;
- (NSString)type;
- (WFVariable)initWithDictionary:(id)dictionary variableProvider:(id)provider;
- (id)copyWithZone:(_NSZone *)zone;
- (id)rewrittenWithStrings:(id)strings;
- (id)userVisibleStringsForUseCase:(unint64_t)case;
- (id)variableBySettingAggrandizements:(id)aggrandizements;
- (unint64_t)hash;
- (void)addDelegate:(id)delegate;
- (void)getContentWithContext:(id)context trackContentAttribution:(BOOL)attribution completionHandler:(id)handler;
- (void)getFileRepresentationWithContext:(id)context completionHandler:(id)handler;
- (void)getObjectRepresentationForClass:(Class)class context:(id)context completionHandler:(id)handler;
- (void)removeDelegate:(id)delegate;
- (void)variableUpdated;
- (void)wf_getContentItemsWithContext:(id)context completionHandler:(id)handler;
@end

@implementation WFVariable

- (id)userVisibleStringsForUseCase:(unint64_t)case
{
  selfCopy = self;
  sub_1CA5282F8();

  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  v4 = sub_1CA94C8E8();

  return v4;
}

- (id)rewrittenWithStrings:(id)strings
{
  type metadata accessor for WFUserVisibleString();
  sub_1CA3434EC();
  sub_1CA94C1C8();
  sub_1CA5283C0();

  return self;
}

- (void)wf_getContentItemsWithContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __87__WFVariable_WFVariableStringContent__wf_getContentItemsWithContext_completionHandler___block_invoke;
  v8[3] = &unk_1E837DC20;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(WFVariable *)self getContentWithContext:context completionHandler:v8];
}

void __87__WFVariable_WFVariableStringContent__wf_getContentItemsWithContext_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5, 0);
  }

  else
  {
    v6 = [a2 items];
    v8 = v6;
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
    }

    (*(v3 + 16))(v3, v7, 0);
  }
}

- (NSString)nameIncludingPropertyName
{
  propertyName = [(WFVariable *)self propertyName];
  if (propertyName)
  {
    v4 = MEMORY[0x1E696AEC0];
    name = [(WFVariable *)self name];
    propertyName2 = [(WFVariable *)self propertyName];
    name2 = [v4 stringWithFormat:@"%@ (%@)", name, propertyName2];
  }

  else
  {
    name2 = [(WFVariable *)self name];
  }

  return name2;
}

- (NSString)propertyName
{
  selfCopy = self;
  v42 = *MEMORY[0x1E69E9840];
  possibleContentClasses = [(WFVariable *)self possibleContentClasses];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  aggrandizements = [(WFVariable *)selfCopy aggrandizements];
  v5 = [aggrandizements countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v36;
    v23 = selfCopy;
    v24 = *v36;
    do
    {
      v8 = 0;
      v9 = possibleContentClasses;
      v25 = v6;
      do
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(aggrandizements);
        }

        v10 = *(*(&v35 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = v10;
          propertyName = [v26 propertyName];
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          possibleContentClasses = v9;
          v12 = [possibleContentClasses countByEnumeratingWithState:&v31 objects:v40 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v32;
            while (2)
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v32 != v14)
                {
                  objc_enumerationMutation(possibleContentClasses);
                }

                v16 = [*(*(&v31 + 1) + 8 * i) propertyForName:{propertyName, v23}];
                if (v16)
                {
                  v21 = v16;
                  if ([v26 negativeProperty])
                  {
                    [v21 localizedNegativeName];
                  }

                  else
                  {
                    [v21 localizedName];
                  }
                  dictionaryKey = ;

                  goto LABEL_32;
                }
              }

              v13 = [possibleContentClasses countByEnumeratingWithState:&v31 objects:v40 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

          v7 = v24;
          v6 = v25;
        }

        possibleContentClasses = [v10 processedContentClasses:{v9, v23}];

        ++v8;
        v9 = possibleContentClasses;
      }

      while (v8 != v6);
      v6 = [aggrandizements countByEnumeratingWithState:&v35 objects:v41 count:16];
      selfCopy = v23;
    }

    while (v6);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  aggrandizements = [(WFVariable *)selfCopy aggrandizements];
  dictionaryKey = [aggrandizements countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (dictionaryKey)
  {
    v18 = *v28;
    while (2)
    {
      for (j = 0; j != dictionaryKey; j = j + 1)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(aggrandizements);
        }

        v20 = *(*(&v27 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          dictionaryKey = [v20 dictionaryKey];
          goto LABEL_32;
        }
      }

      dictionaryKey = [aggrandizements countByEnumeratingWithState:&v27 objects:v39 count:16];
      if (dictionaryKey)
      {
        continue;
      }

      break;
    }
  }

LABEL_32:

  return dictionaryKey;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  dictionary = [(WFVariable *)self dictionary];
  variableProvider = [(WFVariable *)self variableProvider];
  v7 = [v4 initWithDictionary:dictionary variableProvider:variableProvider];

  return v7;
}

- (id)variableBySettingAggrandizements:(id)aggrandizements
{
  aggrandizementsCopy = aggrandizements;
  dictionary = [(WFVariable *)self dictionary];
  v6 = [dictionary mutableCopy];

  v7 = WFVariableDictionaryWithAggrandizements(aggrandizementsCopy);

  allKeys = [v7 allKeys];
  v9 = [allKeys count];

  if (v9)
  {
    [v6 addEntriesFromDictionary:v7];
  }

  else
  {
    [v6 removeObjectForKey:@"Aggrandizements"];
  }

  v10 = objc_alloc(objc_opt_class());
  variableProvider = [(WFVariable *)self variableProvider];
  v12 = [v10 initWithDictionary:v6 variableProvider:variableProvider];

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E69AA8A0]);
  v4 = [v3 combineInteger:1176536074];
  dictionary = [(WFVariable *)self dictionary];
  v6 = [v3 combineContentsOfPropertyListObject:dictionary];

  variableProvider = [(WFVariable *)self variableProvider];
  v8 = [v3 combineInteger:{objc_msgSend(variableProvider, "hash")}];

  v9 = [v3 finalize];
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      dictionary = [(WFVariable *)equalCopy dictionary];
      dictionary2 = [(WFVariable *)self dictionary];
      if ([dictionary isEqual:dictionary2])
      {
        variableProvider = [(WFVariable *)self variableProvider];
        variableProvider2 = [(WFVariable *)equalCopy variableProvider];
        v9 = variableProvider == variableProvider2;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)getFileRepresentationWithContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__WFVariable_getFileRepresentationWithContext_completionHandler___block_invoke;
  v10[3] = &unk_1E837DAB0;
  v11 = contextCopy;
  v12 = handlerCopy;
  v8 = contextCopy;
  v9 = handlerCopy;
  [(WFVariable *)self getContentWithContext:v8 trackContentAttribution:0 completionHandler:v10];
}

void __65__WFVariable_getFileRepresentationWithContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __65__WFVariable_getFileRepresentationWithContext_completionHandler___block_invoke_2;
    v5[3] = &unk_1E837B378;
    v6 = v3;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    [v6 getFileRepresentationAndAttributionSet:v5 forType:0];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __65__WFVariable_getFileRepresentationWithContext_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (v7 && *(a1 + 32))
  {
    [*(a1 + 40) addContentAttributionSet:v7];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)getObjectRepresentationForClass:(Class)class context:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__WFVariable_getObjectRepresentationForClass_context_completionHandler___block_invoke;
  v12[3] = &unk_1E837B350;
  v13 = contextCopy;
  v14 = handlerCopy;
  classCopy = class;
  v10 = contextCopy;
  v11 = handlerCopy;
  [(WFVariable *)self getContentWithContext:v10 trackContentAttribution:0 completionHandler:v12];
}

void __72__WFVariable_getObjectRepresentationForClass_context_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __72__WFVariable_getObjectRepresentationForClass_context_completionHandler___block_invoke_2;
    v5[3] = &unk_1E837B328;
    v6 = v3;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    [v6 getObjectRepresentationAndAttributionSet:v5 forClass:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __72__WFVariable_getObjectRepresentationForClass_context_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v12 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v10 && *(a1 + 32))
  {
    [*(a1 + 40) addContentAttributionSet:v10];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)getContentWithContext:(id)context trackContentAttribution:(BOOL)attribution completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__WFVariable_getContentWithContext_trackContentAttribution_completionHandler___block_invoke;
  aBlock[3] = &unk_1E837B300;
  aBlock[4] = self;
  v10 = contextCopy;
  v19 = v10;
  v11 = handlerCopy;
  v20 = v11;
  attributionCopy = attribution;
  v12 = _Block_copy(aBlock);
  v13 = v12;
  if (v10)
  {
    requiredAccessResources = [(WFVariable *)self requiredAccessResources];
    mEMORY[0x1E69E0C70] = [MEMORY[0x1E69E0C70] sharedManager];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __78__WFVariable_getContentWithContext_trackContentAttribution_completionHandler___block_invoke_4;
    v16[3] = &unk_1E837D0D0;
    v17 = v13;
    [mEMORY[0x1E69E0C70] requestSandboxExtensionForRunningActionWithAccessResources:requiredAccessResources completion:v16];
  }

  else
  {
    (*(v12 + 2))(v12);
  }
}

void __78__WFVariable_getContentWithContext_trackContentAttribution_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) variableSource];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__WFVariable_getContentWithContext_trackContentAttribution_completionHandler___block_invoke_2;
  v7[3] = &unk_1E837B2D8;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v4;
  v7[4] = v5;
  v10 = *(a1 + 56);
  v8 = v6;
  [v2 retrieveContentCollectionWithVariableSource:v3 completionHandler:v7];
}

void __78__WFVariable_getContentWithContext_trackContentAttribution_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = __Block_byref_object_copy__49498;
    v17[4] = __Block_byref_object_dispose__49499;
    v18 = v5;
    v8 = [*(a1 + 32) aggrandizements];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __78__WFVariable_getContentWithContext_trackContentAttribution_completionHandler___block_invoke_224;
    v16[3] = &unk_1E837B288;
    v16[4] = v17;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78__WFVariable_getContentWithContext_trackContentAttribution_completionHandler___block_invoke_3;
    v11[3] = &unk_1E837B2B0;
    v14 = v17;
    v15 = *(a1 + 56);
    v12 = *(a1 + 40);
    v13 = *(a1 + 48);
    [v8 if_enumerateAsynchronouslyInSequence:v16 completionHandler:v11];

    _Block_object_dispose(v17, 8);
  }

  else
  {
    v9 = *(a1 + 48);
    if (v6)
    {
      (*(v9 + 16))(v9, 0, v6);
    }

    else
    {
      v10 = objc_opt_new();
      (*(v9 + 16))(v9, v10, 0);
    }
  }
}

void __78__WFVariable_getContentWithContext_trackContentAttribution_completionHandler___block_invoke_224(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = a4;
  v9 = *(a1 + 32);
  v10 = *(*(v9 + 8) + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__WFVariable_getContentWithContext_trackContentAttribution_completionHandler___block_invoke_2_225;
  v12[3] = &unk_1E837B260;
  v14 = v9;
  v15 = a5;
  v13 = v8;
  v11 = v8;
  [a2 applyToContentCollection:v10 completionHandler:v12];
}

void __78__WFVariable_getContentWithContext_trackContentAttribution_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(*(*(a1 + 48) + 8) + 40);
  v11 = v4;
  if (v5)
  {
    if (*(a1 + 56) != 1)
    {
      goto LABEL_6;
    }

    v6 = *(a1 + 32);
    v7 = [v5 attributionSet];
    [v6 addContentAttributionSet:v7];

    v4 = v11;
    v5 = *(*(*(a1 + 48) + 8) + 40);
  }

  if (!(v4 | v5))
  {
    v8 = objc_opt_new();
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

LABEL_6:
  (*(*(a1 + 40) + 16))();
}

void __78__WFVariable_getContentWithContext_trackContentAttribution_completionHandler___block_invoke_2_225(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (!v10 || v5)
  {
    **(a1 + 48) = 1;
    v9 = *(*(a1 + 40) + 8);
    v8 = *(v9 + 40);
    *(v9 + 40) = 0;
  }

  else
  {
    v6 = *(*(a1 + 40) + 8);
    v7 = v10;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  (*(*(a1 + 32) + 16))();
}

- (NSOrderedSet)possibleAggrandizedContentClasses
{
  v16 = *MEMORY[0x1E69E9840];
  possibleContentClasses = [(WFVariable *)self possibleContentClasses];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  aggrandizements = [(WFVariable *)self aggrandizements];
  v5 = [aggrandizements countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      v9 = possibleContentClasses;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(aggrandizements);
        }

        possibleContentClasses = [*(*(&v11 + 1) + 8 * v8) processedContentClasses:v9];

        ++v8;
        v9 = possibleContentClasses;
      }

      while (v6 != v8);
      v6 = [aggrandizements countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return possibleContentClasses;
}

- (NSOrderedSet)possibleContentClasses
{
  v2 = objc_opt_new();

  return v2;
}

- (void)variableUpdated
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  delegates = [(WFVariable *)self delegates];
  v4 = [delegates copy];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) variableDidChange:self];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegates = [(WFVariable *)self delegates];
  [delegates removeObject:delegateCopy];
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegates = [(WFVariable *)self delegates];
  [delegates addObject:delegateCopy];
}

- (NSHashTable)delegates
{
  delegates = self->_delegates;
  if (!delegates)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v5 = self->_delegates;
    self->_delegates = weakObjectsHashTable;

    delegates = self->_delegates;
  }

  return delegates;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFVariable;
  v4 = [(WFVariable *)&v8 description];
  nameIncludingPropertyName = [(WFVariable *)self nameIncludingPropertyName];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, nameIncludingPropertyName];

  return v6;
}

- (NSString)type
{
  dictionary = [(WFVariable *)self dictionary];
  v3 = [dictionary objectForKey:@"Type"];

  return v3;
}

- (WFVariable)initWithDictionary:(id)dictionary variableProvider:(id)provider
{
  dictionaryCopy = dictionary;
  providerCopy = provider;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    dictionaryCopy = MEMORY[0x1E695E0F8];
  }

  v8 = [dictionaryCopy objectForKey:@"Type"];
  v9 = objc_opt_class();
  firstObject = WFEnforceClass_1501(v8, v9);

  v11 = objc_opt_class();
  v12 = objc_opt_class();
  if (v11 == v12)
  {
    v14 = WFVariableClassesByType(v12, v13);
    v15 = [v14 objectForKey:firstObject];

    if ([(objc_class *)v15 isSubclassOfClass:objc_opt_class()])
    {
      v16 = [[v15 alloc] initWithDictionary:dictionaryCopy variableProvider:providerCopy];
      if (v16)
      {
        selfCopy = v16;
LABEL_17:

        goto LABEL_18;
      }
    }
  }

  v35.receiver = self;
  v35.super_class = WFVariable;
  v18 = [(WFVariable *)&v35 init];
  if (v18)
  {
    v19 = v18;
    if (!firstObject)
    {
      v20 = objc_opt_class();
      if (v20 == objc_opt_class())
      {
        firstObject = 0;
      }

      else
      {
        v21 = [dictionaryCopy mutableCopy];
        v23 = WFVariableClassesByType(v21, v22);
        v24 = [v23 allKeysForObject:objc_opt_class()];
        firstObject = [v24 firstObject];

        [v21 setValue:firstObject forKey:@"Type"];
        dictionaryCopy = v21;
      }
    }

    v25 = [dictionaryCopy objectForKey:@"Aggrandizements"];
    v26 = objc_opt_class();
    v27 = WFEnforceClass_1501(v25, v26);

    v28 = [v27 if_map:&__block_literal_global_208_49520];
    v29 = [v28 copy];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v19->_aggrandizements, v31);

    v32 = [dictionaryCopy copy];
    dictionary = v19->_dictionary;
    v19->_dictionary = v32;

    self = v19;
    selfCopy = self;
    goto LABEL_17;
  }

  selfCopy = 0;
LABEL_18:

  return selfCopy;
}

WFVariableAggrandizement *__50__WFVariable_initWithDictionary_variableProvider___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WFVariableAggrandizement alloc] initWithDictionary:v2];

  return v3;
}

@end