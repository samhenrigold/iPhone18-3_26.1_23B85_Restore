@interface HKFeatureAvailabilityRequirementsEvaluation
+ (id)emptyEvaluation;
+ (id)evaluationOfRequirements:(id)requirements dataSource:(id)source overrides:(id)overrides error:(id *)error;
- (BOOL)areAllRequirementsSatisfied;
- (BOOL)isEqual:(id)equal;
- (BOOL)isRequirementSatisfiedWithIdentifier:(id)identifier;
- (HKFeatureAvailabilityRequirementsEvaluation)initWithCoder:(id)coder;
- (HKFeatureAvailabilityRequirementsEvaluation)initWithRequirementIdentifiersOrderedByPriority:(id)priority satisfactionByRequirementIdentifier:(id)identifier;
- (NSArray)unsatisfiedRequirementIdentifiers;
- (NSString)highestPriorityUnsatisfiedRequirement;
- (NSString)hk_redactedDescription;
- (id)copyUpdatingRequirementForIdentifier:(id)identifier isSatisfied:(BOOL)satisfied;
- (id)objectForKeyedSubscript:(id)subscript;
- (id)unsatisfiedRequirementIdentifiersDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKFeatureAvailabilityRequirementsEvaluation

- (HKFeatureAvailabilityRequirementsEvaluation)initWithRequirementIdentifiersOrderedByPriority:(id)priority satisfactionByRequirementIdentifier:(id)identifier
{
  priorityCopy = priority;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = HKFeatureAvailabilityRequirementsEvaluation;
  v8 = [(HKFeatureAvailabilityRequirementsEvaluation *)&v14 init];
  if (v8)
  {
    v9 = [priorityCopy copy];
    requirementIdentifiersOrderedByPriority = v8->_requirementIdentifiersOrderedByPriority;
    v8->_requirementIdentifiersOrderedByPriority = v9;

    v11 = [identifierCopy copy];
    satisfactionByRequirementIdentifier = v8->_satisfactionByRequirementIdentifier;
    v8->_satisfactionByRequirementIdentifier = v11;
  }

  return v8;
}

+ (id)evaluationOfRequirements:(id)requirements dataSource:(id)source overrides:(id)overrides error:(id *)error
{
  v56 = *MEMORY[0x1E69E9840];
  requirementsCopy = requirements;
  sourceCopy = source;
  overridesCopy = overrides;
  v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(requirementsCopy, "count")}];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v11 = requirementsCopy;
  v12 = [v11 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v48;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v48 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v47 + 1) + 8 * i);
        requirementIdentifier = [objc_opt_class() requirementIdentifier];
        v18 = [overridesCopy overriddenSatisfactionOfRequirementWithIdentifier:requirementIdentifier];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
          v21 = 0;
        }

        else
        {
          v46 = 0;
          v20 = [v16 isSatisfiedWithDataSource:sourceCopy error:&v46];
          v22 = v46;
          v21 = v22;
          if (!v20)
          {
            v28 = MEMORY[0x1E696ABC0];
            if (v22)
            {
              domain = [v22 domain];
              code = [v21 code];
              userInfo = [v21 userInfo];
              v53 = @"HKFeatureAvailabilityRequirementIdentifier";
              v54 = requirementIdentifier;
              v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
              v31 = [userInfo hk_dictionaryByAddingEntriesFromDictionary:v30];
              v32 = v28;
              v33 = domain;
              v34 = [v32 errorWithDomain:domain code:code userInfo:v31];
            }

            else
            {
              v51 = @"HKFeatureAvailabilityRequirementIdentifier";
              v52 = requirementIdentifier;
              v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
              v36 = v28;
              v33 = v35;
              v34 = [v36 hk_error:2000 userInfo:v35];
            }

            v37 = v34;
            v38 = v37;
            if (v37)
            {
              if (error)
              {
                v39 = v37;
                *error = v38;
              }

              else
              {
                _HKLogDroppedError(v37);
              }
            }

            v27 = 0;
            v25 = v11;
            goto LABEL_20;
          }
        }

        [v10 setObject:v20 forKeyedSubscript:requirementIdentifier];
      }

      v13 = [v11 countByEnumeratingWithState:&v47 objects:v55 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v23 = objc_alloc(MEMORY[0x1E695DFB8]);
  v24 = [v11 hk_map:&__block_literal_global_16];
  v25 = [v23 initWithArray:v24];

  v26 = [self alloc];
  requirementIdentifier = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v10];
  v27 = [v26 initWithRequirementIdentifiersOrderedByPriority:v25 satisfactionByRequirementIdentifier:requirementIdentifier];
LABEL_20:

  return v27;
}

uint64_t __99__HKFeatureAvailabilityRequirementsEvaluation_evaluationOfRequirements_dataSource_overrides_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();

  return [v2 requirementIdentifier];
}

+ (id)emptyEvaluation
{
  v2 = [self alloc];
  orderedSet = [MEMORY[0x1E695DFB8] orderedSet];
  v4 = [v2 initWithRequirementIdentifiersOrderedByPriority:orderedSet satisfactionByRequirementIdentifier:MEMORY[0x1E695E0F8]];

  return v4;
}

- (NSString)highestPriorityUnsatisfiedRequirement
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_requirementIdentifiersOrderedByPriority;
  v4 = [(NSOrderedSet *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [(NSDictionary *)self->_satisfactionByRequirementIdentifier objectForKeyedSubscript:v8, v13];
        bOOLValue = [v9 BOOLValue];

        if (!bOOLValue)
        {
          v11 = v8;
          goto LABEL_11;
        }
      }

      v5 = [(NSOrderedSet *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [(HKFeatureAvailabilityRequirementsEvaluation *)self isRequirementSatisfiedWithIdentifier:subscript];

  return [v3 numberWithBool:v4];
}

- (BOOL)isRequirementSatisfiedWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSDictionary *)self->_satisfactionByRequirementIdentifier objectForKeyedSubscript:identifierCopy];

  if (v5)
  {
    v8 = [(NSDictionary *)self->_satisfactionByRequirementIdentifier objectForKeyedSubscript:identifierCopy];
    bOOLValue = [v8 BOOLValue];
  }

  else
  {
    _HKInitializeLogging(v6, v7);
    v12 = HKLogInfrastructure(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [(HKFeatureAvailabilityRequirementsEvaluation *)identifierCopy isRequirementSatisfiedWithIdentifier:v12];
    }

    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)areAllRequirementsSatisfied
{
  highestPriorityUnsatisfiedRequirement = [(HKFeatureAvailabilityRequirementsEvaluation *)self highestPriorityUnsatisfiedRequirement];
  v3 = highestPriorityUnsatisfiedRequirement == 0;

  return v3;
}

- (NSArray)unsatisfiedRequirementIdentifiers
{
  array = [(NSOrderedSet *)self->_requirementIdentifiersOrderedByPriority array];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__HKFeatureAvailabilityRequirementsEvaluation_unsatisfiedRequirementIdentifiers__block_invoke;
  v6[3] = &unk_1E7379C80;
  v6[4] = self;
  v4 = [array hk_filter:v6];

  return v4;
}

uint64_t __80__HKFeatureAvailabilityRequirementsEvaluation_unsatisfiedRequirementIdentifiers__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:a2];
  v3 = [v2 BOOLValue];

  return v3 ^ 1u;
}

- (id)copyUpdatingRequirementForIdentifier:(id)identifier isSatisfied:(BOOL)satisfied
{
  satisfiedCopy = satisfied;
  satisfactionByRequirementIdentifier = self->_satisfactionByRequirementIdentifier;
  identifierCopy = identifier;
  v8 = [(NSDictionary *)satisfactionByRequirementIdentifier objectForKeyedSubscript:identifierCopy];

  if (!v8)
  {
    _HKInitializeLogging(v9, v10);
    v13 = HKLogInfrastructure(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [HKFeatureAvailabilityRequirementsEvaluation copyUpdatingRequirementForIdentifier:v13 isSatisfied:?];
    }
  }

  v14 = [(NSDictionary *)self->_satisfactionByRequirementIdentifier mutableCopy];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:satisfiedCopy];
  [v14 setObject:v15 forKeyedSubscript:identifierCopy];

  v16 = objc_alloc(objc_opt_class());
  requirementIdentifiersOrderedByPriority = self->_requirementIdentifiersOrderedByPriority;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v14];
  v19 = [v16 initWithRequirementIdentifiersOrderedByPriority:requirementIdentifiersOrderedByPriority satisfactionByRequirementIdentifier:v18];

  return v19;
}

- (id)unsatisfiedRequirementIdentifiersDescription
{
  unsatisfiedRequirementIdentifiers = [(HKFeatureAvailabilityRequirementsEvaluation *)self unsatisfiedRequirementIdentifiers];
  v3 = [unsatisfiedRequirementIdentifiers hk_map:&__block_literal_global_15];
  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

__CFString *__91__HKFeatureAvailabilityRequirementsEvaluation_unsatisfiedRequirementIdentifiersDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (HKFeatureAvailabilityRequirementIdentifierReflectsSensitiveData(v2) && !HKShowSensitiveLogItems())
  {
    v3 = @"<sensitive>";
  }

  else
  {
    v3 = v2;
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if ([(NSOrderedSet *)self->_requirementIdentifiersOrderedByPriority isEqualToOrderedSet:v5[1]])
    {
      v6 = [(NSDictionary *)self->_satisfactionByRequirementIdentifier isEqualToDictionary:v5[2]];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)hk_redactedDescription
{
  v20 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  allKeys = [(NSDictionary *)self->_satisfactionByRequirementIdentifier allKeys];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        [string appendString:v9];
        [string appendString:@" = "];
        if (HKFeatureAvailabilityRequirementIdentifierReflectsSensitiveData(v9))
        {
          [string appendString:@"<sensitive>"];
        }

        else
        {
          v10 = MEMORY[0x1E696AEC0];
          v11 = [(NSDictionary *)self->_satisfactionByRequirementIdentifier objectForKeyedSubscript:v9];
          v12 = [v10 stringWithFormat:@"%@", v11];
          [string appendString:v12];
        }

        [string appendString:@"; "];
      }

      v6 = [allKeys countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p %@>", objc_opt_class(), self, string];

  return v13;
}

- (HKFeatureAvailabilityRequirementsEvaluation)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"requirementIdentifiersOrderedByPriority"];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 hk_typesForDictionaryMapping:v10 to:objc_opt_class()];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"satisfactionByRequirementIdentifier"];

  v13 = [(HKFeatureAvailabilityRequirementsEvaluation *)self initWithRequirementIdentifiersOrderedByPriority:v8 satisfactionByRequirementIdentifier:v12];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  requirementIdentifiersOrderedByPriority = self->_requirementIdentifiersOrderedByPriority;
  coderCopy = coder;
  [coderCopy encodeObject:requirementIdentifiersOrderedByPriority forKey:@"requirementIdentifiersOrderedByPriority"];
  [coderCopy encodeObject:self->_satisfactionByRequirementIdentifier forKey:@"satisfactionByRequirementIdentifier"];
}

- (void)isRequirementSatisfiedWithIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_19197B000, a2, OS_LOG_TYPE_FAULT, "Requesting satisfaction of unknown requirement with identifier %{public}@", &v2, 0xCu);
}

@end