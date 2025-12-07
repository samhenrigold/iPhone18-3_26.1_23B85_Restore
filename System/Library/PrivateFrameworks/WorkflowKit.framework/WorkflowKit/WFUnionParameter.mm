@interface WFUnionParameter
- (NSArray)subparameters;
- (WFAction)action;
- (WFUnionParameter)initWithDefinition:(id)definition;
- (id)subdefinitionForType:(id)type;
@end

@implementation WFUnionParameter

- (WFAction)action
{
  WeakRetained = objc_loadWeakRetained(&self->_action);

  return WeakRetained;
}

- (NSArray)subparameters
{
  subdefinitions = [(WFUnionParameter *)self subdefinitions];
  v3 = [subdefinitions if_compactMap:&__block_literal_global_8330];

  return v3;
}

- (id)subdefinitionForType:(id)type
{
  typeCopy = type;
  subtypes = [(WFUnionParameter *)self subtypes];
  v6 = [subtypes indexOfObject:typeCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    subdefinitions = [(WFUnionParameter *)self subdefinitions];
    v7 = [subdefinitions objectAtIndex:v6];
  }

  return v7;
}

- (WFUnionParameter)initWithDefinition:(id)definition
{
  v73 = *MEMORY[0x1E69E9840];
  definitionCopy = definition;
  v65.receiver = self;
  v65.super_class = WFUnionParameter;
  v5 = [(WFParameter *)&v65 initWithDefinition:definitionCopy];
  if (!v5)
  {
    goto LABEL_37;
  }

  v51 = definitionCopy;
  v6 = [definitionCopy objectForKey:@"WFUnionTypes"];
  v7 = objc_opt_class();
  v8 = WFEnforceClass_8337(v6, v7);
  subtypes = v5->_subtypes;
  v5->_subtypes = v8;

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v50 = v5;
  v10 = v5->_subtypes;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v61 objects:v72 count:16];
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = v11;
  v13 = *v62;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v62 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v61 + 1) + 8 * i);
      v16 = objc_opt_class();
      v17 = WFEnforceClass_8337(v15, v16);
      v18 = NSClassFromString(v17);
      if (v18)
      {
        if (([(objc_class *)v18 isSubclassOfClass:objc_opt_class()]& 1) != 0)
        {
          goto LABEL_15;
        }

        v19 = getWFGeneralLogObject();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v69 = "[WFUnionParameter initWithDefinition:]";
          v70 = 2114;
          v71 = v17;
          v20 = v19;
          v21 = "%s %{public}@ is not a content item class.";
LABEL_13:
          _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_FAULT, v21, buf, 0x16u);
        }
      }

      else
      {
        v19 = getWFGeneralLogObject();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          v69 = "[WFUnionParameter initWithDefinition:]";
          v70 = 2114;
          v71 = v17;
          v20 = v19;
          v21 = "%s %{public}@ is not a known class name.";
          goto LABEL_13;
        }
      }

LABEL_15:
    }

    v12 = [(NSArray *)v10 countByEnumeratingWithState:&v61 objects:v72 count:16];
  }

  while (v12);
LABEL_17:

  v22 = [definitionCopy objectForKey:@"WFUnionDefinitions"];
  v23 = objc_opt_class();
  v24 = WFEnforceClass_8337(v22, v23);
  subdefinitions = v50->_subdefinitions;
  v50->_subdefinitions = v24;

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v26 = v50->_subdefinitions;
  v27 = [(NSArray *)v26 countByEnumeratingWithState:&v57 objects:v67 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v58;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v58 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v57 + 1) + 8 * j);
        v32 = objc_opt_class();
        v33 = WFEnforceClass_8337(v31, v32);
      }

      v28 = [(NSArray *)v26 countByEnumeratingWithState:&v57 objects:v67 count:16];
    }

    while (v28);
  }

  v52 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v34 = v50->_subdefinitions;
  v35 = [(NSArray *)v34 countByEnumeratingWithState:&v53 objects:v66 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v54;
    do
    {
      for (k = 0; k != v36; ++k)
      {
        if (*v54 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v53 + 1) + 8 * k);
        v40 = [v39 objectForKey:{@"WFLinkActionUnionParameterMemberValueTypeClassName", v50}];
        v41 = objc_opt_class();
        v42 = WFEnforceClass_8337(v40, v41);

        v43 = [v39 objectForKey:@"LinkUnionSubparameterMetadata"];
        v44 = objc_opt_class();
        v45 = WFEnforceClass_8337(v43, v44);

        if (v42)
        {
          v46 = v45 == 0;
        }

        else
        {
          v46 = 1;
        }

        if (!v46)
        {
          [(NSDictionary *)v52 setObject:v45 forKey:v42];
        }
      }

      v36 = [(NSArray *)v34 countByEnumeratingWithState:&v53 objects:v66 count:16];
    }

    while (v36);
  }

  v5 = v50;
  parameterMetadataByType = v50->_parameterMetadataByType;
  v50->_parameterMetadataByType = v52;

  v48 = v50;
  definitionCopy = v51;
LABEL_37:

  return v5;
}

@end