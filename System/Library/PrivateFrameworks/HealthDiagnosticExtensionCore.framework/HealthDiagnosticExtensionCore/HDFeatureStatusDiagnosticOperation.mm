@interface HDFeatureStatusDiagnosticOperation
- (void)_reportCountryCodeOverride;
- (void)_reportCountryCodeSource;
- (void)_reportFeatureStatusByFeature;
- (void)_reportFeatureStatusForFeature:(id)feature healthStore:(id)store;
- (void)_reportRegionAvailabilityByFeature;
- (void)_reportRegionAvailabilityForFeature:(id)feature healthStore:(id)store;
- (void)_reportRequirementSatisfactionOverridesByFeature;
- (void)run;
@end

@implementation HDFeatureStatusDiagnosticOperation

- (void)run
{
  [(HDFeatureStatusDiagnosticOperation *)self _reportCountryCodeOverride];
  [(HDFeatureStatusDiagnosticOperation *)self _reportRequirementSatisfactionOverridesByFeature];
  [(HDFeatureStatusDiagnosticOperation *)self _reportFeatureStatusByFeature];
  [(HDFeatureStatusDiagnosticOperation *)self _reportCountryCodeSource];

  [(HDFeatureStatusDiagnosticOperation *)self _reportRegionAvailabilityByFeature];
}

- (void)_reportCountryCodeOverride
{
  v3 = HKRegulatoryDomainEstimateOverrideISOCode();
  if (v3)
  {
    v4 = v3;
    [(HDDiagnosticOperation *)self appendString:@"Country Code Override"];
    [(HDDiagnosticOperation *)self appendStrongSeparator];
    [(HDDiagnosticOperation *)self appendNewline];
    [(HDDiagnosticOperation *)self appendString:v4];
    [(HDDiagnosticOperation *)self appendNewline];
    v3 = v4;
  }
}

- (void)_reportRequirementSatisfactionOverridesByFeature
{
  selfCopy = self;
  v39 = *MEMORY[0x277D85DE8];
  [(HDDiagnosticOperation *)self appendString:@"Requirement Satisfaction Overrides"];
  [(HDDiagnosticOperation *)selfCopy appendStrongSeparator];
  [(HDDiagnosticOperation *)selfCopy appendNewline];
  HKAllFeatureIdentifiers();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v36 = 0u;
  v24 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (!v24)
  {
    goto LABEL_21;
  }

  v3 = 0;
  v23 = *v34;
  v22 = selfCopy;
  do
  {
    for (i = 0; i != v24; ++i)
    {
      if (*v34 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v33 + 1) + 8 * i);
      v6 = [objc_alloc(MEMORY[0x277CCD410]) initWithFeatureIdentifier:v5];
      overriddenRequirementIdentifiers = [v6 overriddenRequirementIdentifiers];
      if ([overriddenRequirementIdentifiers count])
      {
        v26 = i;
        [(HDDiagnosticOperation *)selfCopy appendString:v5];
        [(HDDiagnosticOperation *)selfCopy appendSeparator];
        v8 = [objc_alloc(MEMORY[0x277CCDA90]) initWithColumnTitles:0];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __86__HDFeatureStatusDiagnosticOperation__reportRequirementSatisfactionOverridesByFeature__block_invoke;
        v31[3] = &unk_2796C0EB0;
        v25 = v8;
        v32 = v25;
        v9 = MEMORY[0x25307B760](v31);
        allObjects = [overriddenRequirementIdentifiers allObjects];
        v11 = [allObjects sortedArrayUsingSelector:sel_compare_];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v27 objects:v37 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v28;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v28 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v27 + 1) + 8 * j);
              v18 = [v6 overriddenSatisfactionOfRequirementWithIdentifier:v17];
              if ([v18 BOOLValue])
              {
                v19 = @"YES";
              }

              else
              {
                v19 = @"NO";
              }

              (v9)[2](v9, v17, v19);
            }

            v14 = [v12 countByEnumeratingWithState:&v27 objects:v37 count:16];
          }

          while (v14);
        }

        formattedTable = [v25 formattedTable];
        selfCopy = v22;
        [(HDDiagnosticOperation *)v22 appendString:formattedTable];

        [(HDDiagnosticOperation *)v22 appendNewline];
        v3 = 1;
        i = v26;
      }
    }

    v24 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  }

  while (v24);
  if ((v3 & 1) == 0)
  {
LABEL_21:
    [(HDDiagnosticOperation *)selfCopy appendString:@"<none>"];
    [(HDDiagnosticOperation *)selfCopy appendNewline];
  }
}

void __86__HDFeatureStatusDiagnosticOperation__reportRequirementSatisfactionOverridesByFeature__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = [v5 stringWithFormat:@"%@:", a2];
  v9[0] = v7;
  v9[1] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  [*(a1 + 32) appendRow:v8];
}

- (void)_reportFeatureStatusByFeature
{
  v14 = *MEMORY[0x277D85DE8];
  [(HDDiagnosticOperation *)self appendString:@"Feature Status"];
  [(HDDiagnosticOperation *)self appendStrongSeparator];
  [(HDDiagnosticOperation *)self appendNewline];
  v3 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  v4 = HKAllFeatureIdentifiers();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
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

        [(HDFeatureStatusDiagnosticOperation *)self _reportFeatureStatusForFeature:*(*(&v9 + 1) + 8 * v8) healthStore:v3];
        [(HDDiagnosticOperation *)self appendNewline];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_reportFeatureStatusForFeature:(id)feature healthStore:(id)store
{
  featureCopy = feature;
  storeCopy = store;
  [(HDDiagnosticOperation *)self appendString:featureCopy];
  [(HDDiagnosticOperation *)self appendSeparator];
  if ([featureCopy isEqualToString:*MEMORY[0x277CCBFF0]])
  {
    [(HDDiagnosticOperation *)self appendString:@"<redacted>"];
    [(HDDiagnosticOperation *)self appendNewline];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CCD460]) initWithFeatureIdentifier:featureCopy healthStore:storeCopy countryCodeSource:1];
    v14 = 0;
    v9 = [v8 featureStatusWithError:&v14];
    v10 = v14;
    v11 = v10;
    if (v9)
    {
      v12 = [objc_alloc(MEMORY[0x277CCD410]) initWithFeatureIdentifier:featureCopy];
      v13 = HKPrettyPrintedFeatureStatus();
      [(HDDiagnosticOperation *)self appendString:v13];
    }

    else
    {
      [(HDDiagnosticOperation *)self appendFormat:@"Error evaluating feature status for %@: %@", featureCopy, v10];
      [(HDDiagnosticOperation *)self appendNewline];
    }
  }
}

- (void)_reportCountryCodeSource
{
  v20 = *MEMORY[0x277D85DE8];
  [(HDDiagnosticOperation *)self appendString:@"Country Code Information"];
  [(HDDiagnosticOperation *)self appendStrongSeparator];
  [(HDDiagnosticOperation *)self appendNewline];
  v3 = HKPreferredRegulatoryDomainProvider();
  currentEstimate = [v3 currentEstimate];
  [(HDDiagnosticOperation *)self appendString:@"HKRegulatoryDomainEstimate"];
  if (currentEstimate)
  {
    iSOCode = [currentEstimate ISOCode];
    [currentEstimate provenance];
    v6 = NSStringFromHKOnboardingCompletionCountryCodeProvenance();
    [(HDDiagnosticOperation *)self appendFormat:@"%@ (%@)", iSOCode, v6];

    timestamp = [currentEstimate timestamp];
    [(HDDiagnosticOperation *)self appendFormat:@"Retrieved: %@", timestamp];
  }

  else
  {
    [(HDDiagnosticOperation *)self appendString:@"nil"];
  }

  [(HDDiagnosticOperation *)self appendNewline];
  [(HDDiagnosticOperation *)self appendSeparator];
  currentEstimates = [MEMORY[0x277D443A8] currentEstimates];
  [(HDDiagnosticOperation *)self appendString:@"RDEstimate.currentEstimates"];
  [(HDDiagnosticOperation *)self appendNewline];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = currentEstimates;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v15 + 1) + 8 * v13) description];
        [(HDDiagnosticOperation *)self appendString:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  [(HDDiagnosticOperation *)self appendNewline];
}

- (void)_reportRegionAvailabilityByFeature
{
  v14 = *MEMORY[0x277D85DE8];
  [(HDDiagnosticOperation *)self appendString:@"Region Availability"];
  [(HDDiagnosticOperation *)self appendStrongSeparator];
  [(HDDiagnosticOperation *)self appendNewline];
  v3 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  v4 = HKAllFeatureIdentifiers();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
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

        [(HDFeatureStatusDiagnosticOperation *)self _reportRegionAvailabilityForFeature:*(*(&v9 + 1) + 8 * v8) healthStore:v3];
        [(HDDiagnosticOperation *)self appendNewline];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_reportRegionAvailabilityForFeature:(id)feature healthStore:(id)store
{
  featureCopy = feature;
  storeCopy = store;
  [(HDDiagnosticOperation *)self appendString:featureCopy];
  [(HDDiagnosticOperation *)self appendSeparator];
  v8 = [storeCopy featureAvailabilityProvidingForFeatureIdentifier:featureCopy];

  v13 = 0;
  v9 = [v8 regionAvailabilityWithError:&v13];
  v10 = v13;
  v11 = v10;
  if (v9)
  {
    prettyPrintedDescription = [v9 prettyPrintedDescription];
    [(HDDiagnosticOperation *)self appendString:prettyPrintedDescription];
  }

  else
  {
    [(HDDiagnosticOperation *)self appendFormat:@"Error evaluating region availability for %@: %@", featureCopy, v10];
    [(HDDiagnosticOperation *)self appendNewline];
  }
}

@end