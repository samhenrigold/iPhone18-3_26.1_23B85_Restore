@interface WFContentItemFilterAction
- (BOOL)canHandleInputOfContentClasses:(id)classes withSupportedClasses:(id)supportedClasses;
- (BOOL)setParameterState:(id)state forKey:(id)key;
- (WFContentPredicate)contentPredicate;
- (WFContentQuery)query;
- (_WFContentSlice)slice;
- (id)createStateForParameter:(id)parameter fromSerializedRepresentation:(id)representation;
- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state;
- (id)localizedDefaultOutputNameWithContext:(id)context;
- (id)localizedDescriptionInputWithContext:(id)context;
- (id)localizedDescriptionResultWithContext:(id)context;
- (id)localizedDescriptionSummaryWithContext:(id)context;
- (id)localizedKeywordsWithContext:(id)context;
- (id)localizedNameWithContext:(id)context;
- (id)localizedParameterSummaryStringForFilterWithMultipleFilterConditions;
- (id)localizedParameterSummaryStringForFindWithMultipleFilterConditions;
- (id)localizedPluralDescriptionWithContext:(id)context;
- (id)parameterDefinitions;
- (id)parameterStateForKey:(id)key;
- (id)parameterSummary;
- (id)possibleStatesForEnumeration:(id)enumeration;
- (id)sortablePropertyDisplayNames;
- (id)sortablePropertyNames;
- (id)swift_rowForContentPropertyName:(id)name;
- (int64_t)tableTemplateCompoundType;
- (int64_t)tableTemplateRowCount;
- (unint64_t)mode;
- (void)initializeParameters;
- (void)runAsynchronouslyWithInput:(id)input;
- (void)runFilterWithInput:(id)input query:(id)query;
- (void)setTableTemplateCompoundType:(int64_t)type;
- (void)updateCompoundParameterVisibility;
- (void)wasAddedToWorkflow:(id)workflow;
- (void)wasRemovedFromWorkflow:(id)workflow;
@end

@implementation WFContentItemFilterAction

- (int64_t)tableTemplateRowCount
{
  selfCopy = self;
  v3 = WFContentItemFilterAction.tableTemplateRowCount.getter();

  return v3;
}

- (int64_t)tableTemplateCompoundType
{
  selfCopy = self;
  v3 = WFContentItemFilterAction.tableTemplateCompoundType.getter();

  return v3;
}

- (void)setTableTemplateCompoundType:(int64_t)type
{
  selfCopy = self;
  WFContentItemFilterAction.tableTemplateCompoundType.setter(type);
}

- (id)swift_rowForContentPropertyName:(id)name
{
  v4 = sub_1CA94C3A8();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  v9 = WFContentItemFilterAction.row(forContentPropertyName:)(v8);

  return v9;
}

- (WFContentPredicate)contentPredicate
{
  selfCopy = self;
  v3 = WFContentItemFilterAction.contentPredicate.getter();

  return v3;
}

- (BOOL)canHandleInputOfContentClasses:(id)classes withSupportedClasses:(id)supportedClasses
{
  v57 = *MEMORY[0x1E69E9840];
  classesCopy = classes;
  supportedClassesCopy = supportedClasses;
  if ([(WFContentItemFilterAction *)self inputRequired])
  {
    v53.receiver = self;
    v53.super_class = WFContentItemFilterAction;
    v8 = [(WFAction *)&v53 canHandleInputOfContentClasses:classesCopy withSupportedClasses:supportedClassesCopy];
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v9 = supportedClassesCopy;
    v35 = [v9 countByEnumeratingWithState:&v49 objects:v56 count:16];
    if (v35)
    {
      v10 = *v50;
      v39 = supportedClassesCopy;
      v40 = classesCopy;
      v38 = v9;
      v34 = *v50;
      do
      {
        v11 = 0;
        do
        {
          if (*v50 != v10)
          {
            objc_enumerationMutation(v9);
          }

          v36 = v11;
          v12 = *(*(&v49 + 1) + 8 * v11);
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v13 = classesCopy;
          v14 = [v13 countByEnumeratingWithState:&v45 objects:v55 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v46;
            do
            {
              v17 = 0;
              do
              {
                if (*v46 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v45 + 1) + 8 * v17);
                if ([v18 isSubclassOfClass:v12])
                {
                  contentItemClass = [(WFAction *)self contentItemClass];
                  if (contentItemClass != objc_opt_class() || v18 != objc_opt_class() && v18 != objc_opt_class())
                  {
                    if ((v20 = [(WFAction *)self contentItemClass], v21 = objc_opt_class(), v22 = [(WFAction *)self contentItemClass], v22 != objc_opt_class()) && v20 != v21 || v18 != objc_opt_class() && v18 != objc_opt_class())
                    {
LABEL_57:

                      v8 = 1;
                      supportedClassesCopy = v39;
                      classesCopy = v40;
                      goto LABEL_58;
                    }
                  }
                }

                else if (v12 == objc_opt_class() && v18 != objc_opt_class() && v18 != objc_opt_class() && v18 != objc_opt_class() && v18 != objc_opt_class() && v18 != objc_opt_class() && v18 != objc_opt_class() && v18 != objc_opt_class() && v18 != objc_opt_class())
                {
                  contentItemClass2 = [(WFAction *)self contentItemClass];
                  if (contentItemClass2 != objc_opt_class() || v18 != objc_opt_class() && v18 != objc_opt_class())
                  {
                    if ((v24 = [(WFAction *)self contentItemClass], v25 = objc_opt_class(), v26 = [(WFAction *)self contentItemClass], v26 != objc_opt_class()) && v24 != v25 || v18 != objc_opt_class() && v18 != objc_opt_class())
                    {
                      v43 = 0u;
                      v44 = 0u;
                      v41 = 0u;
                      v42 = 0u;
                      obj = [v18 allSupportedTypes];
                      v27 = [obj countByEnumeratingWithState:&v41 objects:v54 count:16];
                      if (v27)
                      {
                        v28 = v27;
                        v29 = *v42;
                        while (2)
                        {
                          for (i = 0; i != v28; ++i)
                          {
                            if (*v42 != v29)
                            {
                              objc_enumerationMutation(obj);
                            }

                            v31 = *(*(&v41 + 1) + 8 * i);
                            objc_opt_class();
                            if (objc_opt_isKindOfClass() & 1) != 0 && ([v31 isDeclared])
                            {

                              goto LABEL_57;
                            }
                          }

                          v28 = [obj countByEnumeratingWithState:&v41 objects:v54 count:16];
                          if (v28)
                          {
                            continue;
                          }

                          break;
                        }
                      }
                    }
                  }
                }

                ++v17;
              }

              while (v17 != v15);
              v32 = [v13 countByEnumeratingWithState:&v45 objects:v55 count:16];
              v15 = v32;
            }

            while (v32);
          }

          v11 = v36 + 1;
          supportedClassesCopy = v39;
          classesCopy = v40;
          v9 = v38;
          v10 = v34;
        }

        while (v36 + 1 != v35);
        v35 = [v38 countByEnumeratingWithState:&v49 objects:v56 count:16];
      }

      while (v35);
    }

    v8 = 0;
  }

LABEL_58:

  return v8;
}

- (void)runFilterWithInput:(id)input query:(id)query
{
  queryCopy = query;
  inputCopy = input;
  contentItemClass = [(WFAction *)self contentItemClass];
  contentPermissionRequestor = [(WFAction *)self contentPermissionRequestor];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__WFContentItemFilterAction_runFilterWithInput_query___block_invoke;
  v10[3] = &unk_1E837E750;
  v10[4] = self;
  [inputCopy generateCollectionByEvaluatingQuery:queryCopy forContentItemClass:contentItemClass permissionRequestor:contentPermissionRequestor completionHandler:v10];
}

void __54__WFContentItemFilterAction_runFilterWithInput_query___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setOutput:a2];
  [*(a1 + 32) finishRunningWithError:v6];
}

- (void)runAsynchronouslyWithInput:(id)input
{
  inputCopy = input;
  if ([(WFContentItemFilterAction *)self mode])
  {
    query = [(WFContentItemFilterAction *)self query];
    [(WFContentItemFilterAction *)self runFilterWithInput:inputCopy query:query];
  }

  else
  {
    contentItemClass = [(WFAction *)self contentItemClass];
    query2 = [(WFContentItemFilterAction *)self query];
    contentPermissionRequestor = [(WFAction *)self contentPermissionRequestor];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__WFContentItemFilterAction_runAsynchronouslyWithInput___block_invoke;
    v9[3] = &unk_1E837E728;
    v9[4] = self;
    [(objc_class *)contentItemClass runQuery:query2 withItems:0 permissionRequestor:contentPermissionRequestor completionHandler:v9];
  }
}

void __56__WFContentItemFilterAction_runAsynchronouslyWithInput___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E6996D40];
  v7 = a3;
  v6 = [v5 collectionWithItems:a2];
  [*(a1 + 32) setOutput:v6];

  [*(a1 + 32) finishRunningWithError:v7];
}

- (unint64_t)mode
{
  inputParameterKey = [(WFContentItemFilterAction *)self inputParameterKey];
  v4 = [(WFContentItemFilterAction *)self parameterStateForKey:inputParameterKey];

  if ([(objc_class *)[(WFAction *)self contentItemClass] hasLibrary])
  {
    value = [v4 value];
    isEqualToString = objc_msgSend_isEqualToString_(value);

    v7 = ~isEqualToString & 1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (_WFContentSlice)slice
{
  v3 = *MEMORY[0x1E6997040];
  v4 = *(MEMORY[0x1E6997040] + 8);
  v5 = [(WFAction *)self parameterValueForKey:@"WFContentItemLimitNumber" ofClass:objc_opt_class()];
  integerValue = [v5 integerValue];

  v7 = [(WFAction *)self parameterValueForKey:@"WFContentItemLimitEnabled" ofClass:objc_opt_class()];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    v9 = integerValue;
  }

  else
  {
    v9 = v4;
  }

  if (bOOLValue)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v3;
  }

  result.var1 = v9;
  result.var0 = v10;
  return result;
}

- (WFContentQuery)query
{
  v24[5] = *MEMORY[0x1E69E9840];
  v3 = [(WFAction *)self parameterValueForKey:@"WFContentItemSortProperty" ofClass:objc_opt_class()];
  v4 = WFLocalizedContentPropertyPossibleValueMarker(@"Random");
  isEqualToString = objc_msgSend_isEqualToString_(v3);

  if (isEqualToString)
  {
    randomSortDescriptor = [MEMORY[0x1E6996DA0] randomSortDescriptor];
  }

  else
  {
    allProperties = [(objc_class *)[(WFAction *)self contentItemClass] allProperties];
    v8 = [(WFAction *)self parameterValueForKey:@"WFContentItemSortProperty" ofClass:objc_opt_class()];
    v9 = [allProperties objectMatchingKey:@"name" value:v8];

    v10 = WFLocalizedContentPropertyPossibleValueMarker(@"Z to A");
    v24[0] = v10;
    v11 = WFLocalizedContentPropertyPossibleValueMarker(@"Biggest First");
    v24[1] = v11;
    v12 = WFLocalizedContentPropertyPossibleValueMarker(@"Latest First");
    v24[2] = v12;
    v13 = WFLocalizedContentPropertyPossibleValueMarker(@"Longest First");
    v24[3] = v13;
    v14 = WFLocalizedContentPropertyPossibleValueMarker(@"Descending");
    v24[4] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:5];

    v16 = [(WFAction *)self parameterValueForKey:@"WFContentItemSortOrder" ofClass:objc_opt_class()];
    v17 = [v15 containsObject:v16];

    if (v9)
    {
      randomSortDescriptor = [MEMORY[0x1E6996DA0] sortDescriptorWithProperty:v9 ascending:v17 ^ 1u comparator:0];
    }

    else
    {
      randomSortDescriptor = 0;
    }
  }

  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:{randomSortDescriptor, 0}];

  contentPredicate = [(WFContentItemFilterAction *)self contentPredicate];
  v20 = [objc_alloc(MEMORY[0x1E6996D98]) initWithPredicate:contentPredicate];
  [v20 setSortDescriptors:v18];
  slice = [(WFContentItemFilterAction *)self slice];
  [v20 setSlice:{slice, v22}];

  return v20;
}

- (id)enumeration:(id)enumeration localizedLabelForPossibleState:(id)state
{
  value = [state value];
  v5 = WFLocalizedContentPropertyPossibleValue(value);

  return v5;
}

- (id)possibleStatesForEnumeration:(id)enumeration
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = [(WFContentItemFilterAction *)self parameterStateForKey:@"WFContentItemSortProperty"];
  value = [v4 value];

  if (!value)
  {
    v9 = 0;
    goto LABEL_10;
  }

  allProperties = [(objc_class *)[(WFAction *)self contentItemClass] allProperties];
  v7 = [allProperties objectMatchingKey:@"name" value:value];
  if (v7)
  {
    v8 = v7;

LABEL_6:
    v11 = WFLocalizedContentPropertyPossibleValueMarker(@"Ascending");
    v17[0] = v11;
    v12 = WFLocalizedContentPropertyPossibleValueMarker(@"Descending");
    v17[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];

    if (([v8 hasPossibleValues] & 1) == 0)
    {
      propertyClasses = [v8 propertyClasses];
      v15 = [propertyClasses if_flatMap:&__block_literal_global_469_67645];

      v13 = v15;
    }

    v9 = [v13 if_map:&__block_literal_global_477];

    goto LABEL_9;
  }

  allProperties2 = [(objc_class *)[(WFAction *)self contentItemClass] allProperties];
  v8 = [allProperties2 objectMatchingKey:@"displayName" value:value];

  if (v8)
  {
    goto LABEL_6;
  }

  v9 = 0;
LABEL_9:

LABEL_10:

  return v9;
}

WFStringSubstitutableState *__58__WFContentItemFilterAction_possibleStatesForEnumeration___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:v2];

  return v3;
}

id __58__WFContentItemFilterAction_possibleStatesForEnumeration___block_invoke(uint64_t a1, void *a2)
{
  v13[2] = *MEMORY[0x1E69E9840];
  if (([a2 isSubclassOfClass:objc_opt_class()] & 1) != 0 || objc_msgSend(a2, "isSubclassOfClass:", objc_opt_class()))
  {
    v3 = WFLocalizedContentPropertyPossibleValueMarker(@"A to Z");
    v13[0] = v3;
    v4 = @"Z to A";
    v5 = v13;
  }

  else if (([a2 isSubclassOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(a2, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || objc_msgSend(a2, "isSubclassOfClass:", objc_opt_class()))
  {
    v3 = WFLocalizedContentPropertyPossibleValueMarker(@"Smallest First");
    v12 = v3;
    v4 = @"Biggest First";
    v5 = &v12;
  }

  else if ([a2 isSubclassOfClass:objc_opt_class()])
  {
    v3 = WFLocalizedContentPropertyPossibleValueMarker(@"Oldest First");
    v11 = v3;
    v4 = @"Latest First";
    v5 = &v11;
  }

  else if ([a2 isSubclassOfClass:objc_opt_class()])
  {
    v3 = WFLocalizedContentPropertyPossibleValueMarker(@"Shortest First");
    v10 = v3;
    v4 = @"Longest First";
    v5 = &v10;
  }

  else
  {
    v3 = WFLocalizedContentPropertyPossibleValueMarker(@"Ascending");
    v9 = v3;
    v4 = @"Descending";
    v5 = &v9;
  }

  v6 = WFLocalizedContentPropertyPossibleValueMarker(v4);
  v5[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];

  return v7;
}

- (id)parameterDefinitions
{
  v123[6] = *MEMORY[0x1E69E9840];
  sortablePropertyNames = [(WFContentItemFilterAction *)self sortablePropertyNames];
  sortablePropertyDisplayNames = [(WFContentItemFilterAction *)self sortablePropertyDisplayNames];
  localizedTypeDescription = [(objc_class *)[(WFAction *)self contentItemClass] localizedTypeDescription];
  localizedPluralTypeDescription = [(objc_class *)[(WFAction *)self contentItemClass] localizedPluralTypeDescription];
  isEqualToString = objc_msgSend_isEqualToString_(localizedTypeDescription);

  v75 = [sortablePropertyNames count] == 0;
  v82 = MEMORY[0x1E695DF70];
  v7 = [WFParameterDefinition alloc];
  v121[0] = @"Class";
  v8 = objc_opt_class();
  v93 = NSStringFromClass(v8);
  v122[0] = v93;
  v122[1] = @"WFContentItemFilter";
  v121[1] = @"Key";
  v121[2] = @"ContentItemClass";
  v92 = NSStringFromClass([(WFAction *)self contentItemClass]);
  v122[2] = v92;
  v121[3] = @"DisallowedVariableTypes";
  disallowedVariableTypesForTableTemplate = [(WFContentItemFilterAction *)self disallowedVariableTypesForTableTemplate];
  v122[3] = disallowedVariableTypesForTableTemplate;
  v90 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v122 forKeys:v121 count:4];
  v89 = [(WFParameterDefinition *)v7 initWithDictionary:?];
  v123[0] = v89;
  v9 = [WFParameterDefinition alloc];
  v119[0] = @"Class";
  v10 = objc_opt_class();
  v88 = NSStringFromClass(v10);
  v120[0] = v88;
  v119[1] = @"Label";
  v87 = WFLocalizedStringResourceWithKey(@"Sort by (ContentItemFilter)", @"Sort by");
  v120[1] = v87;
  v119[2] = @"Description";
  v86 = [[WFContentItemFilterActionParameterDescription alloc] initWithContentItemClass:[(WFAction *)self contentItemClass] field:2];
  v120[2] = v86;
  v119[3] = @"DisallowedVariableTypes";
  v118[0] = @"Ask";
  v118[1] = @"Variable";
  v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:2];
  v120[3] = v85;
  v120[4] = @"WFContentItemSortProperty";
  v119[4] = @"Key";
  v119[5] = @"Placeholder";
  v84 = WFLocalizedStringResourceWithKey(@"None", @"None");
  v120[5] = v84;
  v120[6] = MEMORY[0x1E695E118];
  v119[6] = @"AlwaysShowsButton";
  v119[7] = @"Items";
  WFLocalizedContentPropertyPossibleValueMarker(@"Random");
  v81 = v95 = sortablePropertyNames;
  v80 = [sortablePropertyNames arrayByAddingObject:?];
  v120[7] = v80;
  v119[8] = @"ItemDisplayNames";
  v79 = WFLocalizedContentPropertyPossibleValueMarker(@"Random");
  WFLocalizedContentPropertyPossibleValue(v79);
  v78 = v94 = sortablePropertyDisplayNames;
  v77 = [sortablePropertyDisplayNames arrayByAddingObject:?];
  v120[8] = v77;
  v119[9] = @"Hidden";
  v76 = [MEMORY[0x1E696AD98] numberWithBool:v75];
  v120[9] = v76;
  v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v120 forKeys:v119 count:10];
  v73 = [(WFParameterDefinition *)v9 initWithDictionary:?];
  v123[1] = v73;
  v11 = [WFParameterDefinition alloc];
  v116[0] = @"Class";
  v12 = objc_opt_class();
  v72 = NSStringFromClass(v12);
  v117[0] = v72;
  v116[1] = @"Label";
  v71 = WFLocalizedStringResourceWithKey(@"Order (ContentItemFilter)", @"Order");
  v117[1] = v71;
  v116[2] = @"Description";
  v70 = [[WFContentItemFilterActionParameterDescription alloc] initWithContentItemClass:[(WFAction *)self contentItemClass] field:3];
  v117[2] = v70;
  v116[3] = @"DisallowedVariableTypes";
  v115[0] = @"Ask";
  v115[1] = @"Variable";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:2];
  v116[4] = @"Key";
  v69 = v13;
  v117[3] = v13;
  v117[4] = @"WFContentItemSortOrder";
  v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v117 forKeys:v116 count:5];
  v67 = [(WFParameterDefinition *)v11 initWithDictionary:?];
  v123[2] = v67;
  v14 = [WFParameterDefinition alloc];
  v113[0] = @"Class";
  v15 = objc_opt_class();
  v66 = NSStringFromClass(v15);
  v114[0] = v66;
  v113[1] = @"Label";
  v63 = WFLocalizedStringResourceWithKey(@"Limit (ContentItemFilter)", @"Limit");
  v114[1] = v63;
  v113[2] = @"Description";
  v62 = [[WFContentItemFilterActionParameterDescription alloc] initWithContentItemClass:[(WFAction *)self contentItemClass] field:0];
  v114[2] = v62;
  v114[3] = MEMORY[0x1E695E110];
  v113[3] = @"DefaultValue";
  v113[4] = @"Key";
  v114[4] = @"WFContentItemLimitEnabled";
  v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v114 forKeys:v113 count:5];
  v60 = [(WFParameterDefinition *)v14 initWithDictionary:?];
  v123[3] = v60;
  v16 = [WFParameterDefinition alloc];
  v111[0] = @"Class";
  v17 = objc_opt_class();
  v59 = NSStringFromClass(v17);
  v112[0] = v59;
  v111[1] = @"Label";
  v58 = WFLocalizedStringResourceWithKey(@"Get (ContentItemFilter)", @"Get");
  v112[1] = v58;
  v111[2] = @"Description";
  v57 = [[WFContentItemFilterActionParameterDescription alloc] initWithContentItemClass:[(WFAction *)self contentItemClass] field:1];
  v112[2] = v57;
  v112[3] = @"WFContentItemLimitNumber";
  v111[3] = @"Key";
  v111[4] = @"StepperNoun";
  if (isEqualToString)
  {
    v18 = MEMORY[0x1E696AEC0];
    v19 = @"%d Items";
    v20 = [@"%d Items" stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
    v21 = [v18 stringWithFormat:@"%@ (Pluralization)", v20];

    countDescription = WFLocalizedStringResourceWithKey(v21, @"%d Items");
  }

  else
  {
    countDescription = [(objc_class *)[(WFAction *)self contentItemClass] countDescription];
  }

  v65 = countDescription;
  v112[4] = countDescription;
  v111[5] = @"StepperPrefix";
  v56 = WFLocalizedStringResourceWithKey(@"Get (ContentItemFilter)", @"Get");
  v112[5] = v56;
  v112[6] = &unk_1F4A9AE58;
  v111[6] = @"DefaultValue";
  v111[7] = @"RequiredResources";
  v108[0] = @"WFResourceClass";
  v108[1] = @"WFParameterKey";
  v109[0] = @"WFParameterRelationResource";
  v109[1] = @"WFContentItemLimitEnabled";
  v108[2] = @"WFParameterValue";
  v109[2] = MEMORY[0x1E695E118];
  v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v109 forKeys:v108 count:3];
  v110 = v55;
  v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v110 count:1];
  v112[7] = v54;
  v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v112 forKeys:v111 count:8];
  v52 = [(WFParameterDefinition *)v16 initWithDictionary:v53];
  v123[4] = v52;
  v23 = [WFParameterDefinition alloc];
  v106[0] = @"Class";
  v24 = objc_opt_class();
  v51 = NSStringFromClass(v24);
  v107[0] = v51;
  v107[1] = @"WFCompoundType";
  v106[1] = @"Key";
  v106[2] = @"Items";
  stringValue = [&unk_1F4A9AE70 stringValue];
  v105[0] = stringValue;
  stringValue2 = [&unk_1F4A9AE88 stringValue];
  v105[1] = stringValue2;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:2];
  v107[2] = v48;
  v106[3] = @"ItemDisplayNames";
  v25 = WFLocalizedStringResourceWithKey(@"Any (find/filter)", @"Any");
  v104[0] = v25;
  v26 = WFLocalizedStringResourceWithKey(@"All (find/filter)", @"All");
  v104[1] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v104 count:2];
  v107[3] = v27;
  v106[4] = @"DefaultValue";
  stringValue3 = [&unk_1F4A9AE70 stringValue];
  v107[4] = stringValue3;
  v106[5] = @"DisallowedVariableTypes";
  v29 = +[WFParameter allInsertableVariableTypes];
  allObjects = [v29 allObjects];
  v107[5] = allObjects;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v107 forKeys:v106 count:6];
  v32 = [(WFParameterDefinition *)v23 initWithDictionary:v31];
  v123[5] = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v123 count:6];
  v83 = [v82 arrayWithArray:v33];

  LODWORD(allObjects) = [(objc_class *)[(WFAction *)self contentItemClass] hasLibrary];
  v34 = [WFParameterDefinition alloc];
  if (allObjects)
  {
    v102[0] = @"Class";
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    v103[0] = v36;
    v103[1] = @"WFContentItemInputParameter";
    v102[1] = @"Key";
    v102[2] = @"Label";
    v37 = [[WFContentItemFilterActionParameterDescription alloc] initWithContentItemClass:[(WFAction *)self contentItemClass] field:4];
    v103[2] = v37;
    v102[3] = @"Placeholder";
    v38 = [[WFContentItemFilterActionParameterDescription alloc] initWithContentItemClass:[(WFAction *)self contentItemClass] field:4];
    v103[3] = v38;
    v102[4] = @"Items";
    v101 = @"Library";
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v101 count:1];
    v103[4] = v39;
    v102[5] = @"ItemDisplayNames";
    v40 = WFLocalizedStringResourceWithKey(@"Library (WFContentItemInputParameter)", @"Library");
    v100 = v40;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v100 count:1];
    v103[5] = v41;
    v103[6] = @"Library";
    v102[6] = @"DefaultValue";
    v102[7] = @"DisallowedVariableTypes";
    v99[0] = @"CurrentDate";
    v99[1] = @"Ask";
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:2];
    v103[7] = v42;
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:v102 count:8];
    v44 = [(WFParameterDefinition *)v34 initWithDictionary:v43];
    v45 = v83;
    [v83 addObject:v44];
  }

  else
  {
    v97[0] = @"Class";
    v46 = objc_opt_class();
    v36 = NSStringFromClass(v46);
    v98[0] = v36;
    v98[1] = @"WFContentItemInputParameter";
    v97[1] = @"Key";
    v97[2] = @"Label";
    v37 = [[WFContentItemFilterActionParameterDescription alloc] initWithContentItemClass:[(WFAction *)self contentItemClass] field:4];
    v98[2] = v37;
    v97[3] = @"Placeholder";
    v38 = [[WFContentItemFilterActionParameterDescription alloc] initWithContentItemClass:[(WFAction *)self contentItemClass] field:4];
    v98[3] = v38;
    v97[4] = @"DisallowedVariableTypes";
    v96[0] = @"CurrentDate";
    v96[1] = @"Ask";
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:2];
    v98[4] = v39;
    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:v97 count:5];
    v41 = [(WFParameterDefinition *)v34 initWithDictionary:v40];
    v45 = v83;
    [v83 addObject:v41];
  }

  return v45;
}

- (id)sortablePropertyDisplayNames
{
  allProperties = [(objc_class *)[(WFAction *)self contentItemClass] allProperties];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"sortable = YES"];
  v4 = [allProperties filteredArrayUsingPredicate:v3];
  v5 = [v4 if_map:&__block_literal_global_67799];

  return v5;
}

- (id)sortablePropertyNames
{
  allProperties = [(objc_class *)[(WFAction *)self contentItemClass] allProperties];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"sortable = YES"];
  v4 = [allProperties filteredArrayUsingPredicate:v3];
  v5 = [v4 valueForKey:@"name"];

  return v5;
}

- (BOOL)setParameterState:(id)state forKey:(id)key
{
  v31[5] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  keyCopy = key;
  if (!objc_msgSend_isEqualToString_(keyCopy) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v30.receiver = self;
    v30.super_class = WFContentItemFilterAction;
    if (![(WFAction *)&v30 setParameterState:stateCopy forKey:keyCopy])
    {
      goto LABEL_8;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__WFContentItemFilterAction_setParameterState_forKey___block_invoke;
    block[3] = &unk_1E837FA70;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    value3 = [(WFContentItemFilterAction *)self parameterStateForKey:@"WFContentItemSortOrder"];
    v10 = [(WFContentItemFilterAction *)self parameterStateForKey:@"WFContentItemSortProperty"];
    v11 = [(WFAction *)self parameterForKey:@"WFContentItemSortOrder"];
    v12 = v11;
    if (v10)
    {
      value = [v10 value];
      v14 = WFLocalizedContentPropertyPossibleValueMarker(@"Random");
      [v12 setHidden:objc_msgSend_isEqualToString_(value)];
    }

    else
    {
      [v11 setHidden:1];
    }

    [v12 reloadPossibleStates];
    if (objc_msgSend_isEqualToString_(keyCopy))
    {
      possibleStates = [v12 possibleStates];
      v17 = [possibleStates containsObject:value3];

      if ((v17 & 1) == 0)
      {
        v28 = WFLocalizedContentPropertyPossibleValueMarker(@"Z to A");
        v31[0] = v28;
        v27 = WFLocalizedContentPropertyPossibleValueMarker(@"Biggest First");
        v31[1] = v27;
        v26 = WFLocalizedContentPropertyPossibleValueMarker(@"Latest First");
        v31[2] = v26;
        v18 = WFLocalizedContentPropertyPossibleValueMarker(@"Longest First");
        v31[3] = v18;
        v19 = WFLocalizedContentPropertyPossibleValueMarker(@"Descending");
        v31[4] = v19;
        v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:5];
        value2 = [value3 value];
        v25 = [v20 containsObject:value2];

        possibleStates2 = [v12 possibleStates];
        v23 = [possibleStates2 objectAtIndexedSubscript:v25];
        [(WFContentItemFilterAction *)self setParameterState:v23 forKey:@"WFContentItemSortOrder"];
      }
    }

LABEL_15:
    [(WFContentItemFilterAction *)self updateCompoundParameterVisibility];
    [(WFAction *)self reloadAuxiliaryButton];
    v15 = 1;
    goto LABEL_16;
  }

  value3 = [stateCopy value];
  integerValue = [value3 integerValue];
  if ([(WFContentItemFilterAction *)self tableTemplateCompoundType]!= integerValue)
  {
    [(WFContentItemFilterAction *)self setTableTemplateCompoundType:integerValue];
    goto LABEL_15;
  }

LABEL_8:
  v15 = 0;
LABEL_16:

  return v15;
}

- (id)parameterStateForKey:(id)key
{
  keyCopy = key;
  if (objc_msgSend_isEqualToString_(keyCopy))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[WFContentItemFilterAction tableTemplateCompoundType](self, "tableTemplateCompoundType")}];
    stringValue = [v5 stringValue];

    v7 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:stringValue];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = WFContentItemFilterAction;
    v7 = [(WFAction *)&v9 parameterStateForKey:keyCopy];
  }

  return v7;
}

- (void)wasRemovedFromWorkflow:(id)workflow
{
  v5.receiver = self;
  v5.super_class = WFContentItemFilterAction;
  [(WFAction *)&v5 wasRemovedFromWorkflow:workflow];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__WFContentItemFilterAction_wasRemovedFromWorkflow___block_invoke;
  block[3] = &unk_1E837FA70;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)wasAddedToWorkflow:(id)workflow
{
  v5.receiver = self;
  v5.super_class = WFContentItemFilterAction;
  [(WFAction *)&v5 wasAddedToWorkflow:workflow];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__WFContentItemFilterAction_wasAddedToWorkflow___block_invoke;
  block[3] = &unk_1E837FA70;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)updateCompoundParameterVisibility
{
  v3 = [(WFAction *)self parameterForKey:@"WFCompoundType"];
  [v3 setHidden:{-[WFContentItemFilterAction hasMultipleFilterConditions](self, "hasMultipleFilterConditions") ^ 1}];
}

- (void)initializeParameters
{
  v9.receiver = self;
  v9.super_class = WFContentItemFilterAction;
  [(WFAction *)&v9 initializeParameters];
  v3 = [(WFContentItemFilterAction *)self parameterStateForKey:@"WFContentItemSortProperty"];
  v4 = [(WFAction *)self parameterForKey:@"WFContentItemSortOrder"];
  [v4 setDataSource:self];
  if (v3)
  {
    value = [v3 value];
    v6 = WFLocalizedContentPropertyPossibleValueMarker(@"Random");
    [v4 setHidden:objc_msgSend_isEqualToString_(value)];
  }

  else
  {
    [v4 setHidden:1];
  }

  if ([(objc_class *)[(WFAction *)self contentItemClass] hasLibrary])
  {
    inputParameterKey = [(WFContentItemFilterAction *)self inputParameterKey];
    v8 = [(WFAction *)self parameterForKey:inputParameterKey];

    [v8 setContentItemClass:{-[WFAction contentItemClass](self, "contentItemClass")}];
  }

  [(WFContentItemFilterAction *)self updateCompoundParameterVisibility];
}

- (id)localizedDefaultOutputNameWithContext:(id)context
{
  contextCopy = context;
  v5 = [(objc_class *)[(WFAction *)self contentItemClass] localizedPluralFilterDescriptionWithContext:contextCopy];

  return v5;
}

- (id)localizedKeywordsWithContext:(id)context
{
  contextCopy = context;
  v5 = WFLocalizedStringResourceWithKey(@"filter|sort|find|search|library", @"filter|sort|find|search|library");
  v6 = [contextCopy localize:v5];
  v7 = [v6 componentsSeparatedByString:@"|"];

  if ([(objc_class *)[(WFAction *)self contentItemClass] hasLibrary])
  {
    v8 = WFLocalizedStringResourceWithKey(@"get (Find/Filter search keyword)", @"get");
    v9 = [contextCopy localize:v8];
    v10 = [v7 arrayByAddingObject:v9];

    v7 = v10;
  }

  return v7;
}

- (id)localizedDescriptionResultWithContext:(id)context
{
  contextCopy = context;
  v5 = [(WFContentItemFilterAction *)self localizedPluralDescriptionWithContext:contextCopy];
  if ([(WFContentItemFilterAction *)self tableTemplateRowCount]< 2)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = @"WFContentItemFilterAction - Description result";
    v9 = @"The %@ that match the criteria.";
  }

  else
  {
    tableTemplateCompoundType = [(WFContentItemFilterAction *)self tableTemplateCompoundType];
    v7 = MEMORY[0x1E696AEC0];
    if (tableTemplateCompoundType)
    {
      v8 = @"WFContentItemFilterAction - All description result";
      v9 = @"The %@ that match all of the criteria.";
    }

    else
    {
      v8 = @"WFContentItemFilterAction - Any description result";
      v9 = @"The %@ that match any of the criteria.";
    }
  }

  v10 = WFLocalizedStringResourceWithKey(v8, v9);
  v11 = [contextCopy localize:v10];
  v12 = [v7 localizedStringWithFormat:v11, v5];

  return v12;
}

- (id)localizedDescriptionInputWithContext:(id)context
{
  contextCopy = context;
  v5 = [(WFContentItemFilterAction *)self localizedPluralDescriptionWithContext:contextCopy];
  hasLibrary = [(objc_class *)[(WFAction *)self contentItemClass] hasLibrary];
  v7 = MEMORY[0x1E696AEC0];
  if (hasLibrary)
  {
    v8 = @"WFContentItemFilterAction - Library description input";
    v9 = @"If provided, the action will search through the %@ passed as input.";
  }

  else
  {
    v8 = @"WFContentItemFilterAction - Description input";
    v9 = @"The %@ to filter through.";
  }

  v10 = WFLocalizedStringResourceWithKey(v8, v9);
  v11 = [contextCopy localize:v10];

  v12 = [v7 localizedStringWithFormat:v11, v5];

  return v12;
}

- (id)localizedDescriptionSummaryWithContext:(id)context
{
  contextCopy = context;
  v5 = [(WFContentItemFilterAction *)self localizedPluralDescriptionWithContext:contextCopy];
  hasLibrary = [(objc_class *)[(WFAction *)self contentItemClass] hasLibrary];
  v7 = MEMORY[0x1E696AEC0];
  if (hasLibrary)
  {
    v8 = WFLocalizedStringResourceWithKey(@"WFContentItemFilterAction - Library description summary", @"Searches for the %@ in your library that match the given criteria.");
    v9 = [contextCopy localize:v8];
  }

  else
  {
    v8 = WFLocalizedStringResourceWithKey(@"WFContentItemFilterAction - Description summary", @"Given a list of %@, this action returns the %@ that match the given criteria.");
    v9 = [contextCopy localize:v8];

    v12 = v5;
  }

  v10 = [v7 localizedStringWithFormat:v9, v5, v12];

  return v10;
}

- (id)localizedPluralDescriptionWithContext:(id)context
{
  contextCopy = context;
  v5 = [(objc_class *)[(WFAction *)self contentItemClass] localizedPluralFilterDescriptionWithContext:contextCopy];

  if ([(objc_class *)[(WFAction *)self contentItemClass] canLowercaseTypeDescription])
  {
    localizedLowercaseString = [v5 localizedLowercaseString];

    v5 = localizedLowercaseString;
  }

  return v5;
}

- (id)createStateForParameter:(id)parameter fromSerializedRepresentation:(id)representation
{
  parameterCopy = parameter;
  representationCopy = representation;
  v8 = [parameterCopy key];
  isEqualToString = objc_msgSend_isEqualToString_(v8);

  if (isEqualToString)
  {
    v10 = WFLocalizedContentPropertyPossibleValueMarker(representationCopy);

    v14.receiver = self;
    v14.super_class = WFContentItemFilterAction;
    v11 = [(WFAction *)&v14 createStateForParameter:parameterCopy fromSerializedRepresentation:v10];
    representationCopy = v10;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = WFContentItemFilterAction;
    v11 = [(WFAction *)&v13 createStateForParameter:parameterCopy fromSerializedRepresentation:representationCopy];
  }

  return v11;
}

- (id)localizedParameterSummaryStringForFilterWithMultipleFilterConditions
{
  if ([(WFContentItemFilterAction *)self tableTemplateCompoundType])
  {
    v2 = @"FIND_FILTER_TITLE_FORMAT_FILTER_ALL";
  }

  else
  {
    v2 = @"FIND_FILTER_TITLE_FORMAT_FILTER_ANY";
  }

  v3 = WFLocalizedStringResourceWithKey(v2, @"Filter ${WFContentItemInputParameter} where ${WFCompoundType} of the following are true");

  return v3;
}

- (id)localizedParameterSummaryStringForFindWithMultipleFilterConditions
{
  if ([(WFContentItemFilterAction *)self tableTemplateCompoundType])
  {
    v2 = @"FIND_FILTER_TITLE_FORMAT_FIND_ALL";
  }

  else
  {
    v2 = @"FIND_FILTER_TITLE_FORMAT_FIND_ANY";
  }

  v3 = WFLocalizedStringResourceWithKey(v2, @"Find ${WFContentItemInputParameter} where ${WFCompoundType} of the following are true");

  return v3;
}

- (id)parameterSummary
{
  workflow = [(WFAction *)self workflow];
  if (workflow)
  {
    v4 = [(WFContentItemFilterAction *)self tableTemplateRowCount]> 0;
  }

  else
  {
    v4 = 0;
  }

  if ([(objc_class *)[(WFAction *)self contentItemClass] hasLibrary])
  {
    inputParameterKey = [(WFContentItemFilterAction *)self inputParameterKey];
    v6 = [(WFContentItemFilterAction *)self parameterStateForKey:inputParameterKey];

    variable = [v6 variable];

    if (v4)
    {
      if ([(WFContentItemFilterAction *)self hasMultipleFilterConditions])
      {
        if (variable)
        {
          [(WFContentItemFilterAction *)self localizedParameterSummaryStringForFilterWithMultipleFilterConditions];
        }

        else
        {
          [(WFContentItemFilterAction *)self localizedParameterSummaryStringForFindWithMultipleFilterConditions];
        }
      }

      else if (variable)
      {
        [(WFContentItemFilterAction *)self localizedParameterSummaryStringForFilterWithFilterConditions];
      }

      else
      {
        [(WFContentItemFilterAction *)self localizedParameterSummaryStringForFindWithFilterConditions];
      }
    }

    else if (variable)
    {
      [(WFContentItemFilterAction *)self localizedParameterSummaryStringForFilter];
    }

    else
    {
      [(WFContentItemFilterAction *)self localizedParameterSummaryStringForFind];
    }
    v9 = ;
    v10 = v9;
  }

  else
  {
    if (v4)
    {
      if ([(WFContentItemFilterAction *)self hasMultipleFilterConditions])
      {
        [(WFContentItemFilterAction *)self localizedParameterSummaryStringForFilterWithMultipleFilterConditions];
      }

      else
      {
        [(WFContentItemFilterAction *)self localizedParameterSummaryStringForFilterWithFilterConditions];
      }
      localizedParameterSummaryStringForFilter = ;
    }

    else
    {
      localizedParameterSummaryStringForFilter = [(WFContentItemFilterAction *)self localizedParameterSummaryStringForFilter];
    }

    v10 = localizedParameterSummaryStringForFilter;
  }

  v11 = [[WFActionParameterSummary alloc] initWithString:v10];

  return v11;
}

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = WFContentItemFilterAction;
  v5 = [(WFAction *)&v14 localizedNameWithContext:contextCopy];
  workflow = [(WFAction *)self workflow];
  if (workflow)
  {
    v7 = workflow;
    tableTemplateRowCount = [(WFContentItemFilterAction *)self tableTemplateRowCount];

    if (tableTemplateRowCount >= 1)
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = WFLocalizedStringResourceWithKey(@"%@ Where", @"%@ Where");
      v11 = [contextCopy localize:v10];
      v12 = [v9 localizedStringWithFormat:v11, v5];

      v5 = v12;
    }
  }

  return v5;
}

@end