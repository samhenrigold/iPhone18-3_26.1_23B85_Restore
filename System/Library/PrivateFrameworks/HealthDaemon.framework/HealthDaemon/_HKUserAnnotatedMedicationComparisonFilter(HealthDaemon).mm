@interface _HKUserAnnotatedMedicationComparisonFilter(HealthDaemon)
- (id)predicateWithProfile:()HealthDaemon;
@end

@implementation _HKUserAnnotatedMedicationComparisonFilter(HealthDaemon)

- (id)predicateWithProfile:()HealthDaemon
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  daemon = [v4 daemon];
  userDomainConceptEntityRegistry = [daemon userDomainConceptEntityRegistry];
  registeredUserDomainConceptEntityClasses = [userDomainConceptEntityRegistry registeredUserDomainConceptEntityClasses];
  v8 = [registeredUserDomainConceptEntityClasses hk_map:&__block_literal_global_85];

  v9 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v8];
  keyPath = [self keyPath];
  LODWORD(registeredUserDomainConceptEntityClasses) = [keyPath isEqualToString:*MEMORY[0x277CCCE38]];

  if (registeredUserDomainConceptEntityClasses)
  {
    v11 = MEMORY[0x277D10B70];
    if (self)
    {
      v12 = [HDUserDomainConceptManager predicateForElementsOfListType:2];
      value = [self value];
      bOOLValue = [value BOOLValue];

      if (bOOLValue)
      {
        v15 = [MEMORY[0x277D10B20] negatedPredicate:v12];
      }

      else
      {
        v15 = v12;
      }

      truePredicate = v15;
    }

    else
    {
      truePredicate = 0;
    }

    v31 = v11;
  }

  else
  {
    keyPath2 = [self keyPath];
    v17 = [keyPath2 isEqual:*MEMORY[0x277CCCE30]];

    if (!v17)
    {
      v30 = 0;
      goto LABEL_26;
    }

    v35 = MEMORY[0x277D10B70];
    v18 = v4;
    if (self)
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = v18;
      daemon2 = [v18 daemon];
      userDomainConceptEntityRegistry2 = [daemon2 userDomainConceptEntityRegistry];
      registeredUserDomainConceptEntityClasses2 = [userDomainConceptEntityRegistry2 registeredUserDomainConceptEntityClasses];

      v22 = [registeredUserDomainConceptEntityClasses2 countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v37;
        while (2)
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v37 != v24)
            {
              objc_enumerationMutation(registeredUserDomainConceptEntityClasses2);
            }

            v26 = *(*(&v36 + 1) + 8 * i);
            value2 = [self value];
            truePredicate = [v26 predicateForHasSchedule:{objc_msgSend(value2, "BOOLValue")}];

            if (truePredicate)
            {

              goto LABEL_23;
            }
          }

          v23 = [registeredUserDomainConceptEntityClasses2 countByEnumeratingWithState:&v36 objects:v42 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      _HKInitializeLogging();
      v29 = HKLogHealthOntology();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        selfCopy = self;
        _os_log_error_impl(&dword_228986000, v29, OS_LOG_TYPE_ERROR, "%{public}@: Was not able to generate predicate for hasSchedule keypath for User Annotated Medications. Likely the medications plugin is not loaded", buf, 0xCu);
      }

      truePredicate = [MEMORY[0x277D10BA8] truePredicate];
LABEL_23:
      v18 = v34;
      v32 = v35;
    }

    else
    {
      truePredicate = 0;
      v32 = v35;
    }

    v31 = v32;
  }

  v30 = [v31 compoundPredicateWithPredicate:v9 otherPredicate:truePredicate];

LABEL_26:

  return v30;
}

@end